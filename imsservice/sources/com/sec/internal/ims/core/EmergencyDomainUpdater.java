package com.sec.internal.ims.core;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class EmergencyDomainUpdater {
    private final Context context;
    private final String emergencyDomain;
    protected ImsProfile emergencyProfile;
    private final int phoneId;
    private final ISimManager simManager;
    private final String LOG_TAG = EmergencyDomainUpdater.class.getSimpleName();
    private final String PS_DOMAIN = "PS";
    private final String CS_DOMAIN = "CS";
    protected String targetDomain = "PS";

    protected EmergencyDomainUpdater(Context context, int i, ImsProfile imsProfile, ISimManager iSimManager, String str) {
        this.context = context;
        this.phoneId = i;
        this.emergencyProfile = imsProfile;
        this.simManager = iSimManager;
        this.emergencyDomain = str;
    }

    public static void update(Context context, int i, ImsProfile imsProfile, ISimManager iSimManager, String str) {
        new EmergencyDomainUpdater(context, i, imsProfile, iSimManager, str).update();
    }

    protected void update() {
        IMSLog.d(this.LOG_TAG, this.phoneId, "emergencyCallDomain: domainInSettings-" + this.emergencyDomain + ", SIM absent-" + this.simManager.hasNoSim());
        String str = ("PS".equalsIgnoreCase(this.emergencyDomain) || "IMS".equalsIgnoreCase(this.emergencyDomain)) ? "PS" : "CS";
        if (!this.simManager.hasNoSim()) {
            this.targetDomain = getDomain();
        } else {
            this.targetDomain = getDomainWithUiccless();
            if (TextUtils.isEmpty(ImsSharedPrefHelper.getString(this.phoneId, this.context, ImsSharedPrefHelper.GLOBAL_SETTINGS, "originalEmergencyCallDomain", ""))) {
                ImsSharedPrefHelper.save(this.phoneId, this.context, ImsSharedPrefHelper.GLOBAL_SETTINGS, "originalEmergencyCallDomain", this.emergencyDomain);
            }
        }
        if (this.simManager.getDevMno().isAus()) {
            this.targetDomain = "PS";
        } else if (!needUpdate(str)) {
            return;
        }
        doUpdate();
    }

    private boolean needUpdate(String str) {
        if (this.targetDomain.equals(str)) {
            Log.d(this.LOG_TAG, "emergencyCallDomain: already " + this.targetDomain);
            return false;
        }
        if (!this.targetDomain.equals("PS") || this.emergencyProfile != null) {
            return true;
        }
        IMSLog.d(this.LOG_TAG, this.phoneId, "emergencyCallDomain: no E911 profile keep e-domain as CS");
        return false;
    }

    protected void doUpdate() {
        IMSLog.d(this.LOG_TAG, this.phoneId, "update emergency Domain to " + this.targetDomain);
        ContentValues contentValues = new ContentValues();
        contentValues.put(GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, this.targetDomain);
        this.context.getContentResolver().update(UriUtil.buildUri(GlobalSettingsConstants.CONTENT_URI.toString(), this.phoneId), contentValues, null, null);
    }

    protected String getDomain() {
        ImsProfile imsProfile = this.emergencyProfile;
        if ((imsProfile != null && imsProfile.getSimMobility() && needCheckSimMobility()) || DeviceUtil.getGcfMode()) {
            IMSLog.d(this.LOG_TAG, this.phoneId, "getDomain: PS");
            return "PS";
        }
        String string = ImsSharedPrefHelper.getString(this.phoneId, this.context, ImsSharedPrefHelper.GLOBAL_SETTINGS, "originalEmergencyCallDomain", this.emergencyDomain);
        IMSLog.d(this.LOG_TAG, this.phoneId, "getDomain: originalEmergencyCallDomain " + string);
        return string;
    }

    private boolean needCheckSimMobility() {
        Mno simMno = this.simManager.getSimMno();
        return (simMno.isEur() || simMno.isMea() || simMno.isSea() || simMno.isSwa() || simMno.isOce() || simMno.isTw()) ? false : true;
    }

    protected String getDomainWithUiccless() {
        return (isPsDomainWithUicclessRegadlessGlobalSetting() || isPsDomainWithUicclessOnGlobalSetting()) ? "PS" : "CS";
    }

    private boolean isPsDomainWithUicclessRegadlessGlobalSetting() {
        return !needCheckGlobalSetting() || (DeviceUtil.getGcfMode() && (OmcCode.isChinaOmcCode() || OmcCode.isJPNOmcCode())) || OmcCode.isDCMOmcCode() || this.simManager.getNetMno() == Mno.KDDI;
    }

    private boolean needCheckGlobalSetting() {
        Mno fromSalesCode = Mno.fromSalesCode(OmcCode.get());
        Mno simMno = this.simManager.getSimMno();
        IMSLog.d(this.LOG_TAG, this.phoneId, "needCheckGlobalSetting: simMno: " + simMno.getName() + ", salesCodeMno: " + fromSalesCode.getName());
        return fromSalesCode == simMno || fromSalesCode.isChn() || fromSalesCode.isHkMo() || fromSalesCode.isEmeasewaoce() || fromSalesCode.isTw() || DeviceUtil.isTSS2_0();
    }

    private boolean isPsDomainWithUicclessOnGlobalSetting() {
        return "PS".equalsIgnoreCase(ImsRegistry.getString(this.phoneId, GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN_WITHOUT_SIM, "CS"));
    }
}
