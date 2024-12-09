package com.sec.internal.ims.core;

import android.content.Context;
import android.text.TextUtils;
import com.sec.ims.extensions.ConnectivityManagerExt;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.Set;

/* loaded from: classes.dex */
public class RegistrationRatDecider {
    private static final String LOG_TAG = "RegistrationRatDecider";
    Context context;
    IRegistrationGovernor governor;
    Mno mno;
    int mobileDataNetworkType;
    NetworkEvent networkEvent;
    Set<Integer> networkSet;
    PdnController pdnController;
    int pdnType;
    int phoneId;
    int preferredPdnType;
    ImsProfile profile;
    RegistrationConstants.RegisterTaskState registerState;
    IVolteServiceModule volteServiceModule;

    public RegistrationRatDecider(Context context, IRegisterTask iRegisterTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule) {
        this.context = context;
        this.phoneId = iRegisterTask.getPhoneId();
        this.governor = iRegisterTask.getGovernor();
        this.profile = iRegisterTask.getProfile();
        this.pdnController = pdnController;
        this.volteServiceModule = iVolteServiceModule;
        this.networkEvent = RegistrationUtils.getNetworkEvent(this.phoneId);
        this.mobileDataNetworkType = pdnController.getNetworkState(this.phoneId).getMobileDataNetworkType();
        this.pdnType = this.profile.getPdnType();
        this.networkSet = this.profile.getNetworkSet();
        this.mno = Mno.fromName(this.profile.getMnoName());
        this.registerState = iRegisterTask.getState();
        this.preferredPdnType = pdnController.translateNetworkBearer(pdnController.getDefaultNetworkBearer());
    }

    static int getDecidedRat(Context context, IRegisterTask iRegisterTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule) {
        return new RegistrationRatDecider(context, iRegisterTask, pdnController, iVolteServiceModule).getDecidedRat();
    }

    public int getDecidedRat() {
        if (this.networkEvent == null) {
            return 0;
        }
        if (this.profile.hasEmergencySupport()) {
            return getEmergencyRegistrationRat();
        }
        return getNormalRegistrationRat();
    }

    public int getEmergencyRegistrationRat() {
        int voWIFIEmergencyCallRat;
        Mno mno = this.mno;
        if (mno == Mno.VZW || mno.isCanada()) {
            if (this.pdnController.isEpdgConnected(this.phoneId)) {
                return 18;
            }
            return (this.mno == Mno.VZW && this.networkEvent.network == 20) ? 20 : 13;
        }
        if (this.mno.isTw()) {
            int i = this.networkEvent.network;
            Set networkSet = this.profile.getNetworkSet();
            IMSLog.i(LOG_TAG, this.phoneId, "current RAT : " + i + " contains network in profile: " + networkSet.contains(Integer.valueOf(i)) + ", hasEmergnecy option: " + this.profile.hasEmergencySupport());
            if (networkSet.contains(Integer.valueOf(i))) {
                return i;
            }
            return 13;
        }
        IVolteServiceModule iVolteServiceModule = this.volteServiceModule;
        if (iVolteServiceModule != null && (voWIFIEmergencyCallRat = iVolteServiceModule.getVoWIFIEmergencyCallRat(this.phoneId)) != -1) {
            return voWIFIEmergencyCallRat;
        }
        if (this.networkEvent.network == 20) {
            return 20;
        }
        if (this.profile.isUicclessEmergency() && this.networkEvent.network == 0) {
            return ImsUtil.getRatInNoSimCase(this.phoneId, this.context);
        }
        return 13;
    }

    private int getNormalRegistrationRat() {
        if (isVowifiAvailalble()) {
            return 18;
        }
        int availableMobileNetwork = getAvailableMobileNetwork();
        String networkTypeName = TelephonyManagerExt.getNetworkTypeName(availableMobileNetwork);
        if (isValidRat(availableMobileNetwork)) {
            IMSLog.i(LOG_TAG, this.phoneId, "findBestNetwork: " + networkTypeName);
            return availableMobileNetwork;
        }
        printFailReason(availableMobileNetwork, networkTypeName);
        return 0;
    }

    public boolean isVowifiAvailalble() {
        Mno mno;
        int i = this.pdnType;
        if ((i == -1 || i == 1) && this.networkSet.contains(18) && !this.profile.getServiceSet(18).isEmpty() && this.pdnController.isWifiConnected() && needWifiNetwork() && (!ConfigUtil.isRcsOnly(this.profile) || (((mno = this.mno) != Mno.TMOBILE && mno != Mno.H3G) || this.preferredPdnType == 1))) {
            IMSLog.i(LOG_TAG, this.phoneId, "findBestNetwork: WIFI");
            return true;
        }
        if (this.pdnType == ConnectivityManagerExt.TYPE_WIFI_P2P) {
            IMSLog.i(LOG_TAG, this.phoneId, "findBestNetwork: WIFI-P2P (Wifi-Direct or Mobile-HotSpot connected)");
            return true;
        }
        if (!this.pdnController.isEpdgConnected(this.phoneId) || !this.pdnController.isWifiConnected() || isCctOrChaVowifiCoditionNotMet()) {
            return false;
        }
        IMSLog.i(LOG_TAG, this.phoneId, "findBestNetwork: WIFI (ePDG connected)");
        return true;
    }

    public boolean needWifiNetwork() {
        if (this.mno.isKor()) {
            return this.governor.isMobilePreferredForRcs() ? !NetworkUtil.isMobileDataOn(this.context) || !NetworkUtil.isMobileDataPressed(this.context) || ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.context, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON || this.networkEvent.outOfService || this.governor.hasNetworkFailure() : this.preferredPdnType == 1;
        }
        return true;
    }

    private boolean isValidRat(int i) {
        if (this.networkSet.contains(Integer.valueOf(i)) && !this.profile.getServiceSet(Integer.valueOf(i)).isEmpty() && this.pdnController.isNetworkAvailable(i, this.pdnType, this.phoneId)) {
            NetworkEvent networkEvent = this.networkEvent;
            if (!networkEvent.outOfService && (!networkEvent.isDataRoaming || this.governor.allowRoaming() || this.networkEvent.network == 18)) {
                return true;
            }
        }
        return false;
    }

    public int getAvailableMobileNetwork() {
        int blurNetworkType;
        int i = this.networkEvent.network;
        if (i == 18 && needToGetMobileDataRat() && (blurNetworkType = NetworkEvent.blurNetworkType(this.mobileDataNetworkType)) != 0) {
            i = blurNetworkType;
        }
        IMSLog.i(LOG_TAG, this.phoneId, "getAvailableMobileNetwork: network=" + this.networkEvent.network + " mobileDataType=" + this.mobileDataNetworkType + " => rat=" + i);
        return i;
    }

    private boolean needToGetMobileDataRat() {
        return !this.profile.isEpdgSupported() || isCctOrChaVowifiCoditionNotMet() || isImsRegisteredOnMobileRat();
    }

    private boolean isImsRegisteredOnMobileRat() {
        return this.pdnType == 11 && !this.pdnController.isEpdgConnected(this.phoneId) && this.registerState == RegistrationConstants.RegisterTaskState.REGISTERED;
    }

    private boolean isCctOrChaVowifiCoditionNotMet() {
        if (SimUtil.isCCT(this.phoneId) || SimUtil.isCHA(this.phoneId)) {
            return !VowifiConfig.isEnabled(this.context, this.phoneId) || (VowifiConfig.getRoamPrefMode(this.context, 0, this.phoneId) == 0 && this.networkEvent.isDataRoaming);
        }
        return false;
    }

    private void printFailReason(int i, String str) {
        StringBuilder sb = new StringBuilder();
        if (this.profile.getServiceSet(Integer.valueOf(i)).isEmpty()) {
            sb.append(" - serviceSet empty");
        }
        if (!this.pdnController.isNetworkAvailable(i, this.pdnType, this.phoneId)) {
            sb.append(" - NetworkAvailable: false");
        }
        if (this.networkEvent.outOfService) {
            sb.append(" - OOS: true");
        }
        if (this.networkEvent.isDataRoaming && !this.governor.allowRoaming() && this.networkEvent.network != 18) {
            sb.append("- Roaming not allowed");
        }
        if (TextUtils.isEmpty(sb.toString())) {
            sb.append(" - networkSet empty");
        }
        IMSLog.i(LOG_TAG, this.phoneId, "Not found best network in " + str + ((Object) sb));
    }
}
