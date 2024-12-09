package com.sec.internal.ims.core.cmc;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SemSystemProperties;
import android.telephony.PhoneNumberUtils;
import android.telephony.emergency.EmergencyNumber;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.ImsProfileLoader;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.cmc.CmcInfo;
import com.sec.internal.ims.core.cmc.CmcInfoUpdateResult;
import com.sec.internal.ims.core.cmc.CmcRegiConfigBuilder;
import com.sec.internal.ims.core.cmc.CmcSAManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.imsphone.cmc.ICmcConnectivityController;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISequentialInitializable;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class CmcAccountManager implements ICmcAccountManager, CmcSAManager.CmcSAEventListener, ISequentialInitializable {
    private static final int EVENT_CMC_DEVICE_CHANGED = 5;
    private static final int EVENT_CMC_NW_PREF_CHANGED = 6;
    private static final int EVENT_HOTSPOT_STATE_CHANGED = 9;
    private static final int EVENT_SA_REQUEST = 1;
    private static final int EVENT_SA_REQUEST_EXPIRED = 7;
    private static final int EVENT_SA_REQUEST_FAILED = 8;
    private static final int EVENT_SA_UPDATE = 2;
    private static final int EVENT_START_CMC_REGISTRATION = 3;
    private static final int EVENT_STOP_CMC_REGISTRATION = 4;
    private static final String LOG_TAG = "CmcAccountManager";
    private static boolean mIsCmcServiceInstalled = true;
    private CmcSettingManagerWrapper mCmcSetting;
    private Context mContext;
    private SimpleEventLog mEventLog;
    private final InternalHandler mHandler;
    private CmcHotspotManager mHotspotManager;
    private int mPhoneCount;
    private IRegistrationManager mRm;
    private CmcSAManager mSaService;
    private Map<Integer, ImsProfile> mProfileMap = new HashMap();
    private CmcInfo mCmcInfo = new CmcInfo();
    private String mSaUrl = "";
    private String mSaToken = "";
    private Map<Integer, List<String>> mEmergencyNumberMap = new ConcurrentHashMap();
    private List<String> mRegiEventNotifyHostInfo = new ArrayList();
    private boolean mIsCmcProfileAdded = false;
    private CmcInfoUpdateResult mCmcInfoUpdatedResult = new CmcInfoUpdateResult();
    private int mSARequestRetryCount = 0;
    private int mSABindRetryCount = 0;
    private boolean mIsHotspotUpdatePendingDuringRegistering = false;
    private boolean mIsHotspotStateUpdateDelay = false;

    private enum DeviceType {
        PD,
        SD;

        static boolean isPD(String str) {
            return PD.name().equalsIgnoreCase(str);
        }

        static boolean isSD(String str) {
            return SD.name().equalsIgnoreCase(str);
        }
    }

    public CmcAccountManager(Context context, Looper looper) {
        Log.i(LOG_TAG, "CmcAccountManager create");
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 100);
        this.mPhoneCount = SimUtil.getPhoneCount();
        this.mCmcSetting = CmcSettingManagerFactory.createCmcSettingManager(this.mContext, this);
        this.mSaService = new CmcSAManager(this.mContext, this, this);
        this.mHandler = new InternalHandler(looper);
        this.mHotspotManager = new CmcHotspotManager(this.mContext);
        mIsCmcServiceInstalled = isCmcServiceInstalled();
        initCmcFromPref();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        this.mRm = ImsRegistry.getRegistrationManager();
        this.mCmcSetting.init();
        makeProfileMap();
        if (mIsCmcServiceInstalled && DeviceUtil.isWifiOnlyModel()) {
            Log.i(LOG_TAG, "initSequentially: start cmc registration for wifi only model");
            startDelayedCmcRegistration(5);
        }
    }

    private void makeProfileMap() {
        ImsProfile imsProfile;
        for (int i = 0; i < this.mPhoneCount; i++) {
            Iterator it = ImsProfileLoader.getProfileListWithMnoName(this.mContext, "MDMN", i).iterator();
            while (true) {
                if (it.hasNext()) {
                    imsProfile = (ImsProfile) it.next();
                    if (CmcConstants.Profile.DEFAULT_NAME.equalsIgnoreCase(imsProfile.getName())) {
                        break;
                    }
                } else {
                    imsProfile = null;
                    break;
                }
            }
            if (imsProfile == null) {
                Log.i(LOG_TAG, "makeProfileMap: No pre-defined profile slot: " + i);
            } else {
                Log.i(LOG_TAG, "makeProfileMap: CMC profile found slot: " + i);
                if (isSecondaryDevice()) {
                    int[] iArr = {6, 5, 12, 14};
                    HashSet hashSet = new HashSet();
                    hashSet.add("mmtel");
                    for (int i2 = 0; i2 < 4; i2++) {
                        int i3 = iArr[i2];
                        imsProfile.setServiceSet(i3, hashSet);
                        imsProfile.setNetworkEnabled(i3, true);
                    }
                }
                this.mProfileMap.put(Integer.valueOf(i), imsProfile);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void startCmcRegistration() {
        this.mHandler.sendEmptyMessage(3);
    }

    private void startDelayedCmcRegistration(int i) {
        this.mHandler.sendEmptyMessageDelayed(3, i * 1000);
    }

    private void stopCmcRegistration() {
        this.mHandler.sendEmptyMessage(4);
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void notifyCmcDeviceChanged() {
        if (this.mHandler.hasMessages(5)) {
            return;
        }
        this.mHandler.sendEmptyMessage(5);
    }

    public void notifyCmcNwPrefChanged() {
        if (this.mHandler.hasMessages(6)) {
            this.mHandler.removeMessages(6);
        }
        this.mHandler.sendEmptyMessageDelayed(6, 600L);
    }

    protected void onCmcDeviceChanged() {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            IMSLog.e(LOG_TAG, "onCmcDeviceChanged: RegistrationManagerBase is null");
            return;
        }
        for (int i = 0; i < this.mPhoneCount; i++) {
            IRegisterTask cmcRegisterTask = getCmcRegisterTask(i);
            if (cmcRegisterTask != null && cmcRegisterTask.getState() == RegistrationConstants.RegisterTaskState.DEREGISTERING) {
                IMSLog.i(LOG_TAG, i, "onCmcDeviceChanged: deregistering");
                return;
            }
        }
        int cmcPhoneId = getCmcPhoneId();
        IRegisterTask cmcRegisterTask2 = getCmcRegisterTask(cmcPhoneId);
        if (cmcRegisterTask2 != null) {
            updateCmcProfile();
            if (!isCmcRegistrationRequired()) {
                IMSLog.i(LOG_TAG, cmcPhoneId, "onCmcDeviceChanged: stopCmcRegistration");
                stopCmcRegistration();
                return;
            }
            if (this.mCmcInfoUpdatedResult.isNotUpdated()) {
                IMSLog.i(LOG_TAG, cmcPhoneId, "onCmcDeviceChanged: Not updated");
                return;
            }
            this.mRm.releaseThrottleByCmc(cmcRegisterTask2);
            int i2 = (DeviceType.isPD(this.mCmcInfo.mDeviceType) && this.mCmcInfoUpdatedResult.isUpdated()) ? this.mCmcInfo.mLineSlotIndex : cmcPhoneId;
            if (cmcRegisterTask2.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING)) {
                if (needDeregiOnDeviceChange(cmcRegisterTask2)) {
                    triggerDeregister(cmcRegisterTask2, "CMC profile updated", 29, i2 != cmcPhoneId);
                }
            } else if (cmcRegisterTask2.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED)) {
                this.mEventLog.logAndAdd("onCmcDeviceChanged: stopPdn slot[" + cmcPhoneId + "]");
                registrationManager.stopPdnConnectivity(cmcRegisterTask2.getPdnType(), cmcRegisterTask2);
                cmcRegisterTask2.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            IVolteServiceModule volteServiceModule = ImsRegistry.getServiceModuleManager().getVolteServiceModule();
            if (volteServiceModule != null) {
                Log.i(LOG_TAG, "onCmcDeviceChanged: update lineId and deviceId for p2p");
                volteServiceModule.getCmcServiceHelper().setP2pServiceInfo(CmcConstants.URN_PREFIX + this.mCmcInfo.mDeviceId, this.mCmcInfo.mLineId);
            }
            registrationManager.requestTryRegsiter(i2, 500L);
            return;
        }
        IMSLog.i(LOG_TAG, cmcPhoneId, "onCmcDeviceChanged: startCmcRegistration");
        startCmcRegistration();
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void onSimRefresh(int i) {
        this.mEventLog.logAndAdd("onSimRefresh(" + i + ")");
        if (this.mIsCmcProfileAdded) {
            if (getCmcRegisterTask(i) != null) {
                IMSLog.i(LOG_TAG, "onSimRefresh: RegisterTask is already in the slot [" + i + "]");
                return;
            }
            registerProfile(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStartCmcRegistration() {
        if (!mIsCmcServiceInstalled) {
            this.mEventLog.logAndAdd("onStartCmcRegistration: Cmc service not installed");
            return;
        }
        if (this.mIsCmcProfileAdded) {
            IMSLog.i(LOG_TAG, "onStartCmcRegistration: Cmc Profile is already added");
            return;
        }
        if (!isCmcRegistrationRequired()) {
            IMSLog.i(LOG_TAG, "onStartCmcRegistration: CMC registration is not required");
            return;
        }
        IVolteServiceModule volteServiceModule = ImsRegistry.getServiceModuleManager().getVolteServiceModule();
        if (volteServiceModule != null && !volteServiceModule.isRunning()) {
            Log.i(LOG_TAG, "Start VoLteService");
            volteServiceModule.start();
        }
        updateCmcProfile();
        if (this.mCmcInfoUpdatedResult.isFailed()) {
            IMSLog.i(LOG_TAG, "onStartCmcRegistration: updateCmcProfile failed");
            return;
        }
        for (int i = 0; i < this.mPhoneCount; i++) {
            if (getCmcRegisterTask(i) != null) {
                IMSLog.i(LOG_TAG, i, "onStartCmcRegistration: manual deregister is ongoing");
                return;
            }
        }
        this.mEventLog.logAndAdd("onStartCmcRegistration: registerProfile CMC: same WiFi: " + isSupportSameWiFiOnly() + ", ecall: " + isEmergencyCallSupported());
        for (int i2 = 0; i2 < this.mPhoneCount; i2++) {
            registerProfile(i2);
        }
        this.mIsCmcProfileAdded = true;
        if (isCmcSupportedOnHotspot()) {
            IMSLog.i(LOG_TAG, "onStartCmcRegistration: registerHotspotStateChangeEvent");
            this.mHotspotManager.registerHotspotStateChangeEvent(this.mHandler, 9, null);
        }
        if (volteServiceModule != null) {
            Log.i(LOG_TAG, "onStartCmcRegistration: update lineId and deviceId for p2p");
            volteServiceModule.getCmcServiceHelper().setP2pServiceInfo(CmcConstants.URN_PREFIX + this.mCmcInfo.mDeviceId, this.mCmcInfo.mLineId);
        }
    }

    private boolean isCmcRegistrationRequired() {
        if (!isCmcActivated()) {
            IMSLog.i(LOG_TAG, "isCmcRegistrationRequired: CMC not activated");
            return false;
        }
        if (hasCallForkingService()) {
            return true;
        }
        IMSLog.i(LOG_TAG, "isCmcRegistrationRequired: CMC Call forking disabled");
        return false;
    }

    private void registerProfile(int i) {
        if (isReadyRegisterP2p()) {
            IMSLog.i(LOG_TAG, "registerProfile: ready to D2D register");
            ICmcConnectivityController iCmcConnectivityController = ImsRegistry.getICmcConnectivityController();
            CmcInfo cmcInfo = this.mCmcInfo;
            iCmcConnectivityController.startRegi(cmcInfo.mDeviceId, cmcInfo.mLineOwnerDeviceId);
            return;
        }
        IMSLog.i(LOG_TAG, "registerProfile(" + i + ")");
        ImsProfile profile = getProfile(i);
        if (profile != null) {
            ImsRegistry.getRegistrationManager().registerProfile(profile, i);
        }
    }

    private boolean isReadyRegisterP2p() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(CmcConstants.SERVICE_PACKAGE_NAME, 128)) != null && (bundle = applicationInfo.metaData) != null) {
                return bundle.getBoolean("d2d_trial", false);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(LOG_TAG, e.toString());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStopCmcRegistration() {
        if (!this.mIsCmcProfileAdded) {
            IMSLog.i(LOG_TAG, "onStopCmcRegistration: no profile added");
            return;
        }
        for (int i = 0; i < this.mPhoneCount; i++) {
            if (getCmcRegisterTask(i) == null) {
                IMSLog.i(LOG_TAG, i, "onStopCmcRegistration: manual register is ongoing");
                return;
            }
        }
        this.mEventLog.logAndAdd("onStopCmcRegistration: deregisterProfile: activation[" + isCmcActivated() + "] isSD[" + isSecondaryDevice() + "] hasCallForking[" + hasCallForkingService() + "]");
        if (isReadyRegisterP2p() && !isSdHasCallForkingService()) {
            ImsRegistry.getICmcConnectivityController().stopRegi();
            this.mIsCmcProfileAdded = false;
            return;
        }
        for (int i2 = 0; i2 < this.mPhoneCount; i2++) {
            ImsProfile profile = getProfile(i2);
            if (profile != null) {
                ImsRegistry.getRegistrationManager().deregisterProfile(profile.getId(), i2);
            }
        }
        this.mIsCmcProfileAdded = false;
        if (isCmcSupportedOnHotspot()) {
            IMSLog.d(LOG_TAG, "onStopCmcRegistration: unRegisterHotspotStateChangeEvent");
            this.mHotspotManager.unregisterHotspotStateChangeEvent(this.mHandler);
        }
    }

    public void setPcscfList() {
        int i;
        List<String> list = this.mCmcInfo.mPcscfAddrList;
        if (list == null || list.isEmpty()) {
            Log.e(LOG_TAG, "setPcscfList: PcscfAddrList is empty");
            return;
        }
        if (this.mProfileMap.isEmpty()) {
            Log.e(LOG_TAG, "setPcscfList: mProfileMap is empty");
            return;
        }
        List<String> list2 = this.mCmcInfo.mPcscfAddrList;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int i2 = 8000;
        for (String str : list2) {
            if (str.lastIndexOf(":") > 0) {
                i = Integer.valueOf(str.substring(str.lastIndexOf(":") + 1)).intValue();
                str = str.substring(0, str.lastIndexOf(":"));
            } else {
                i = 8000;
            }
            sb.append("(pcscf = ");
            sb.append(str);
            sb.append(" / port = ");
            sb.append(i);
            sb.append(")");
            arrayList.add(str);
            i2 = i;
        }
        Log.i(LOG_TAG, "pcscfList size[" + arrayList.size() + "] : " + ((Object) sb));
        for (ImsProfile imsProfile : this.mProfileMap.values()) {
            imsProfile.setPcscfList(arrayList);
            imsProfile.setSipPort(i2);
        }
    }

    private void initProfile() {
        String str;
        String str2;
        Log.i(LOG_TAG, "initProfile: build ImsProfile for CMC");
        String str3 = this.mCmcInfo.mLineImpu;
        String str4 = CmcConstants.URN_PREFIX + this.mCmcInfo.mDeviceId;
        String str5 = CmcConstants.URN_PREFIX + this.mCmcInfo.mLineOwnerDeviceId;
        String str6 = DeviceType.isPD(this.mCmcInfo.mDeviceType) ? CmcConstants.Profile.PD_NAME : CmcConstants.Profile.SD_NAME;
        String substring = str3.contains("sip:") ? str3.substring(str3.lastIndexOf(":") + 1) : str3;
        if (substring.indexOf("@") > 0) {
            str2 = substring.substring(0, substring.indexOf("@"));
            str = substring.substring(substring.lastIndexOf("@") + 1);
            Log.i(LOG_TAG, "initProfile: password = " + str2 + " / domain = " + str);
        } else {
            str = "";
            str2 = substring;
        }
        for (ImsProfile imsProfile : this.mProfileMap.values()) {
            imsProfile.setName(str6);
            imsProfile.setSipPort(8000);
            imsProfile.setPassword(str2);
            imsProfile.setDomain(str);
            imsProfile.setVceConfigEnabled(true);
            imsProfile.setDuid(str4);
            imsProfile.setAccessToken(this.mCmcInfo.mAccessToken);
            imsProfile.setPriDeviceIdWithURN(str5);
            imsProfile.setDisplayName(this.mCmcInfo.mDeviceId);
            imsProfile.setImpi(substring);
            imsProfile.setImpuList(str3);
            ArrayList arrayList = new ArrayList();
            arrayList.add(str3);
            imsProfile.setExtImpuList(arrayList);
        }
    }

    private ImsProfile getProfile(int i) {
        ImsProfile imsProfile = this.mProfileMap.get(Integer.valueOf(i));
        if (imsProfile == null) {
            Log.e(LOG_TAG, "mProfile is null");
            return null;
        }
        Log.i(LOG_TAG, "mProfile = " + imsProfile);
        return imsProfile;
    }

    private String getCmcRelayType() {
        return isSupportSameWiFiOnly() ? "priv-p2p" : "";
    }

    private void updateCmcProfile() {
        CmcInfo cmcInfo = this.mCmcInfo;
        this.mCmcInfo = getCmcInfo();
        this.mCmcInfoUpdatedResult.clearChangedCmcInfoList();
        if (!isCmcInfoValid(this.mCmcInfo)) {
            this.mEventLog.logAndAdd("updateCmcProfile: Invalid CmcInfo: " + this.mCmcInfoUpdatedResult.getProfileUpdateReason());
            this.mCmcInfoUpdatedResult.setProfileUpdatedResult(CmcInfoUpdateResult.ProfileUpdateResult.FAILED);
            return;
        }
        if (isCmcInfoEqual(cmcInfo, this.mCmcInfo)) {
            Log.i(LOG_TAG, "updateCmcProfile: Same CmcInfo");
            this.mCmcInfoUpdatedResult.setProfileUpdatedResult(CmcInfoUpdateResult.ProfileUpdateResult.NOT_UPDATED);
            return;
        }
        initProfile();
        setPcscfList();
        this.mEventLog.logAndAdd("updateCmcProfile: Update CmcInfo: Line[" + this.mCmcInfo.mLineSlotIndex + "] " + this.mCmcInfoUpdatedResult.getProfileUpdateReason());
        this.mCmcInfoUpdatedResult.setProfileUpdatedResult(CmcInfoUpdateResult.ProfileUpdateResult.UPDATED);
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isCmcProfileAdded() {
        return this.mIsCmcProfileAdded;
    }

    private boolean isCmcInfoValid(CmcInfo cmcInfo) {
        String str;
        if (cmcInfo != null) {
            CmcInfo.CmcInfoType[] values = CmcInfo.CmcInfoType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    str = "";
                    break;
                }
                CmcInfo.CmcInfoType cmcInfoType = values[i];
                if (!cmcInfo.checkValid(cmcInfoType)) {
                    str = cmcInfoType.name() + " empty";
                    break;
                }
                i++;
            }
        } else {
            str = "OwnDeviceInfo null";
        }
        if (!str.isEmpty()) {
            Log.i(LOG_TAG, "isCmcInfoValid: fail - " + str);
            this.mCmcInfoUpdatedResult.setProfileUpdateReason(str);
            return false;
        }
        IMSLog.s(LOG_TAG, "isCmcInfoValid: true " + cmcInfo.toString());
        return true;
    }

    private boolean isCmcInfoEqual(CmcInfo cmcInfo, CmcInfo cmcInfo2) {
        if (cmcInfo == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        for (CmcInfo.CmcInfoType cmcInfoType : CmcInfo.CmcInfoType.values()) {
            if (!cmcInfo.compare(cmcInfoType, cmcInfo2)) {
                sb.append(cmcInfoType.name());
                if (cmcInfoType.isDumpPrintAvailable()) {
                    sb.append("[" + cmcInfo2.getValue(cmcInfoType) + "]");
                }
                sb.append(", ");
                this.mCmcInfoUpdatedResult.addChangedCmcInfo(cmcInfoType);
            }
        }
        if (sb.toString().isEmpty()) {
            return true;
        }
        if (this.mCmcInfoUpdatedResult.isFailed()) {
            sb.delete(0, sb.length());
            sb.append("New valid CmcInfo ");
        }
        Log.i(LOG_TAG, "isCmcInfoEqual: false - " + sb.toString());
        this.mCmcInfoUpdatedResult.setProfileUpdateReason(sb.toString());
        return false;
    }

    private CmcInfo getCmcInfo() {
        CmcInfo cmcInfo = new CmcInfo();
        cmcInfo.mOobe = this.mCmcSetting.getCmcSupported();
        cmcInfo.mActivation = this.mCmcSetting.getOwnCmcActivation();
        cmcInfo.mDeviceType = this.mCmcSetting.getDeviceType();
        cmcInfo.mDeviceId = this.mCmcSetting.getDeviceId();
        cmcInfo.mAccessToken = getAccessTokenFromCmcPref();
        cmcInfo.mLineId = this.mCmcSetting.getLineId();
        cmcInfo.mLineOwnerDeviceId = getPrimaryDeviceId();
        cmcInfo.mLineImpu = getImpuFromLineId();
        cmcInfo.mPcscfAddrList = this.mCmcSetting.getPcscfAddressList();
        cmcInfo.mSaServerUrl = this.mSaUrl;
        cmcInfo.mLineSlotIndex = getLineSlotId();
        cmcInfo.mHasSd = hasSecondaryDevice();
        cmcInfo.mNetworkPref = this.mCmcSetting.getPreferredNetwork();
        cmcInfo.mCallforkingEnabled = isCallAllowedSdByPd(cmcInfo.mDeviceId);
        cmcInfo.mIsEmergencyCallSupported = this.mCmcSetting.isEmergencyCallSupported();
        cmcInfo.mIsSameWiFiOnly = this.mCmcSetting.isSameWifiNetworkOnly();
        cmcInfo.mIsDualCmc = this.mCmcSetting.isDualCmc();
        IMSLog.s(LOG_TAG, "getCmcInfo: LineId: " + cmcInfo.mLineId + ", PcscfAddrList: " + cmcInfo.mPcscfAddrList);
        return cmcInfo;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isCmcActivated() {
        return this.mCmcSetting.getOwnCmcActivation();
    }

    private boolean hasCallForkingService() {
        return isSecondaryDevice() ? isSdHasCallForkingService() : isPdHasCallForkingService();
    }

    private boolean isPdHasCallForkingService() {
        if (getCmcCallActivation(getPrimaryDeviceId())) {
            return true;
        }
        this.mEventLog.logAndAdd("isPdHasCallForkingService: PD CmcCallActivation false");
        return false;
    }

    private boolean isSdHasCallForkingService() {
        String deviceId = this.mCmcSetting.getDeviceId();
        if (deviceId == null) {
            this.mEventLog.logAndAdd("isSdHasCallForkingService: deviceId is null");
            return false;
        }
        if (!isCallAllowedSdByPd(deviceId)) {
            this.mEventLog.logAndAdd("isSdHasCallForkingService: isCallAllowedSdByPd false");
            return false;
        }
        if (!getCmcCallActivation(deviceId)) {
            this.mEventLog.logAndAdd("isSdHasCallForkingService: Device CmcCallActivation false");
            return false;
        }
        if (isPdHasCallForkingService()) {
            return true;
        }
        this.mEventLog.logAndAdd("isSdHasCallForkingService: PD CmcCallActivation false");
        return false;
    }

    private boolean isCallAllowedSdByPd(String str) {
        return this.mCmcSetting.isCallAllowedSdByPd(str);
    }

    private boolean getCmcCallActivation(String str) {
        return this.mCmcSetting.getCmcCallActivation(str);
    }

    private String getImpuFromLineId() {
        String lineImpu = this.mCmcSetting.getLineImpu();
        IMSLog.s(LOG_TAG, "getImpuFromLineId: " + lineImpu);
        return lineImpu == null ? "" : lineImpu;
    }

    private String getPrimaryDeviceId() {
        String str;
        List<String> deviceIdList = this.mCmcSetting.getDeviceIdList();
        if (deviceIdList != null && !deviceIdList.isEmpty()) {
            Iterator<String> it = deviceIdList.iterator();
            while (it.hasNext()) {
                str = it.next();
                String deviceTypeWithDeviceId = this.mCmcSetting.getDeviceTypeWithDeviceId(str);
                if (!TextUtils.isEmpty(deviceTypeWithDeviceId) && DeviceType.isPD(deviceTypeWithDeviceId)) {
                    break;
                }
            }
        }
        str = "";
        IMSLog.s(LOG_TAG, "getPrimaryDeviceId: " + str);
        return str;
    }

    private int getLineSlotId() {
        List<Integer> selectedSimSlotsOnPd = this.mCmcSetting.getSelectedSimSlotsOnPd();
        Log.i(LOG_TAG, "getLineSlotId: selectedSimSlotOnPd: " + selectedSimSlotsOnPd);
        int i = 0;
        if (selectedSimSlotsOnPd != null && selectedSimSlotsOnPd.size() == 1) {
            i = selectedSimSlotsOnPd.get(0).intValue();
        }
        Log.i(LOG_TAG, "getLineSlotId: lineSlotId: " + i);
        return i;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public int getCurrentLineSlotIndex() {
        return this.mCmcInfo.mLineSlotIndex;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public String getCurrentLineOwnerDeviceId() {
        return this.mCmcInfo.mLineOwnerDeviceId;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean hasSecondaryDevice() {
        String deviceType = this.mCmcSetting.getDeviceType();
        List<String> deviceIdList = this.mCmcSetting.getDeviceIdList();
        if (!DeviceType.isPD(deviceType) || deviceIdList == null || deviceIdList.size() > 1) {
            return true;
        }
        Log.i(LOG_TAG, "hasSecondaryDevice : no SD with current PD");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isWifiOnly() {
        return this.mCmcInfo.mNetworkPref == 1;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void startSAService(boolean z) {
        if (this.mHandler.hasMessages(1)) {
            return;
        }
        this.mEventLog.logAndAdd("startSAService: request SA, isLocal: " + z);
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(1, Boolean.valueOf(z)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSAServiceInternal(boolean z) {
        resetSARetryCount();
        this.mSaService.connectToSamsungAccountService(z);
    }

    public void onChangedSamsungAccountInfo(String str) {
        if (!isCmcProfileAdded()) {
            IMSLog.i(LOG_TAG, "onChangedSamsungAccountInfo: CmcProfile is not added state");
            return;
        }
        if (!this.mSaService.isSAServiceIdle()) {
            IMSLog.i(LOG_TAG, "onChangedSamsungAccountInfo: SA service not IDLE state");
            return;
        }
        if (!isRegisterTaskAllowedToStartSA()) {
            IMSLog.i(LOG_TAG, "onChangedSamsungAccountInfo: CmcTask is not allowed for start SA");
        } else if (TextUtils.isEmpty(str) || str.equals(getAccessTokenFromCmcPref())) {
            IMSLog.i(LOG_TAG, "onChangedSamsungAccountInfo: AccessToken is empty or same with the previous one");
        } else {
            this.mEventLog.logAndAdd("onChangedSamsungAccountInfo: startSAService");
            startSAService(true);
        }
    }

    private boolean isRegisterTaskAllowedToStartSA() {
        IRegisterTask cmcRegisterTask = getCmcRegisterTask(getCmcPhoneId());
        if (cmcRegisterTask == null) {
            return false;
        }
        return cmcRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.IDLE) || (cmcRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTED) && isSABindRetryOver());
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isCmcEnabled() {
        if (!mIsCmcServiceInstalled) {
            IMSLog.i(LOG_TAG, "isCmcEnabled: Not installed ");
            return false;
        }
        boolean isCmcActivated = isCmcActivated();
        IMSLog.i(LOG_TAG, "isCmcEnabled: CmcActivated: " + isCmcActivated);
        return isCmcActivated;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isSecondaryDevice() {
        CmcSettingManagerWrapper cmcSettingManagerWrapper = this.mCmcSetting;
        if (cmcSettingManagerWrapper == null) {
            IMSLog.e(LOG_TAG, "isSecondaryDevice : cmcsetting is null");
            return false;
        }
        if (DeviceType.isSD(cmcSettingManagerWrapper.getDeviceType())) {
            IMSLog.i(LOG_TAG, "isSecondaryDevice: by cmcsetting");
            return true;
        }
        if (!DeviceType.isSD(SemSystemProperties.get(CmcConstants.SystemProperties.CMC_DEVICE_TYPE_PROP, ""))) {
            return false;
        }
        IMSLog.i(LOG_TAG, "isSecondaryDevice: by prop");
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public List<String> getRegiEventNotifyHostInfo() {
        return this.mRegiEventNotifyHostInfo;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void setRegiEventNotifyHostInfo(List<String> list) {
        this.mRegiEventNotifyHostInfo = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSaUpdated() {
        IMSLog.i(LOG_TAG, "onSaUpdated: ");
        updateCmcPref();
        if (this.mHandler.hasMessages(2)) {
            return;
        }
        if (!this.mIsCmcProfileAdded) {
            startCmcRegistration();
        } else {
            IMSLog.i(LOG_TAG, "onSaUpdated: notifyCmcDeviceChanged with access token");
            notifyCmcDeviceChanged();
        }
    }

    private SharedPreferences getSharedPreference() {
        return ImsSharedPrefHelper.getSharedPref(ImsConstants.Phone.SLOT_1, this.mContext, CmcConstants.SA.ACCOUNT_SP, 0, false);
    }

    private String getSharedPrefString(String str, String str2) {
        SharedPreferences sharedPreference = getSharedPreference();
        return sharedPreference == null ? str2 : sharedPreference.getString(str, str2);
    }

    private void initCmcFromPref() {
        this.mSaToken = getSharedPrefString(CmcConstants.SA.TOKEN_SP, CmcConstants.SA.TOKEN_DEFAULT);
        this.mSaUrl = getSharedPrefString(CmcConstants.SA.URL_SP, CmcConstants.SA.URL_DEFAULT);
        IMSLog.i(LOG_TAG, "initCmcFromPref: ");
    }

    private void updateCmcPref() {
        SharedPreferences sharedPreference = getSharedPreference();
        if (sharedPreference == null) {
            IMSLog.e(LOG_TAG, "updateCmcPref: sp is null");
            return;
        }
        SharedPreferences.Editor edit = sharedPreference.edit();
        edit.putString(CmcConstants.SA.TOKEN_SP, this.mSaToken);
        edit.putString(CmcConstants.SA.URL_SP, this.mSaUrl);
        edit.apply();
        IMSLog.s(LOG_TAG, "updateCmcPref: token: " + this.mSaToken + ", SaUrl: " + this.mSaUrl);
    }

    public String getAccessTokenFromCmcPref() {
        String sharedPrefString = getSharedPrefString(CmcConstants.SA.TOKEN_SP, CmcConstants.SA.TOKEN_DEFAULT);
        IMSLog.s(LOG_TAG, "getAccessTokenFromCmcPref: token: " + sharedPrefString);
        return sharedPrefString;
    }

    private int getCmcPhoneId() {
        return (this.mCmcInfo.mLineSlotIndex == -1 || isSecondaryDevice()) ? SimUtil.getActiveDataPhoneId() : this.mCmcInfo.mLineSlotIndex;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public IRegisterTask getCmcRegisterTask(int i) {
        List<IRegisterTask> pendingRegistration = ImsRegistry.getRegistrationManager().getPendingRegistration(i);
        if (pendingRegistration == null) {
            IMSLog.e(LOG_TAG, i, "getCmcRegisterTask: rtl is null");
            return null;
        }
        for (IRegisterTask iRegisterTask : pendingRegistration) {
            if (isCmcProfile(iRegisterTask.getProfile())) {
                return iRegisterTask;
            }
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isProfileUpdateFailed() {
        return this.mCmcInfoUpdatedResult.isFailed();
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public Bundle getCmcRegiConfigForUserAgent() {
        return new CmcRegiConfigBuilder().setData(CmcRegiConfigBuilder.CmcRegiConfig.SA_SERVER_URL, this.mCmcInfo.mSaServerUrl).setData(CmcRegiConfigBuilder.CmcRegiConfig.RELAY_TYPE, getCmcRelayType()).setData(CmcRegiConfigBuilder.CmcRegiConfig.EMERGENCY_CALL_NUMBERS, getEmergencyCallNumberString()).setData(CmcRegiConfigBuilder.CmcRegiConfig.SUPPORT_DUAL_SIM_CMC, Boolean.valueOf(isSupportDualSimCMC())).setData(CmcRegiConfigBuilder.CmcRegiConfig.HOTSPOT_ADDRESSES, isCmcSupportedOnHotspot() ? this.mHotspotManager.getHotspotAddressesWithSubnetPrefix() : Collections.EMPTY_LIST).buildBundle();
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isSupportSameWiFiOnly() {
        if ("1".equals(SemSystemProperties.get("persist.cmc.enable_cmc30", ""))) {
            return true;
        }
        return this.mCmcSetting.isSameWifiNetworkOnly();
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isSupportDualSimCMC() {
        if ("1".equals(SemSystemProperties.get("persist.cmc.enable_dualsim_cmc", ""))) {
            return true;
        }
        IMSLog.i(LOG_TAG, "isSupportDualSimCMC: " + this.mCmcInfo.mIsDualCmc);
        return this.mCmcInfo.mIsDualCmc;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isEmergencyCallSupported() {
        if ("1".equals(SemSystemProperties.get("persist.cmc.enable_cmc30", ""))) {
            return true;
        }
        return this.mCmcSetting.isEmergencyCallSupported();
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void setEmergencyNumbers(String str) {
        if (TextUtils.isEmpty(str)) {
            IMSLog.i(LOG_TAG, "setEmergencyNumbers: no numbers");
            return;
        }
        this.mEmergencyNumberMap.clear();
        String replace = str.replace(CmcConstants.E_NUM_STR_QUOTE, "");
        if (replace.contains(CmcConstants.E_NUM_SLOT_SPLIT)) {
            List asList = Arrays.asList(replace.split(CmcConstants.E_NUM_SLOT_SPLIT));
            int[] iArr = {ImsConstants.Phone.SLOT_1, ImsConstants.Phone.SLOT_2};
            for (int i = 0; i < 2; i++) {
                int i2 = iArr[i];
                this.mEmergencyNumberMap.put(Integer.valueOf(i2), Arrays.asList((asList.size() > i2 ? (String) asList.get(i2) : "").split("\\,")));
            }
        } else {
            this.mEmergencyNumberMap.put(Integer.valueOf(this.mCmcInfo.mLineSlotIndex), Arrays.asList(replace.split("\\,")));
        }
        IMSLog.i(LOG_TAG, "setEmergencyNumbers: " + IMSLog.checker(this.mEmergencyNumberMap));
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isEmergencyNumber(String str, int i) {
        boolean isEmergencyNumberInternal = isEmergencyNumberInternal(str, i, true);
        IMSLog.i(LOG_TAG, "isEmergencyNumber: " + isEmergencyNumberInternal + ", number: " + IMSLog.checker(str));
        return isEmergencyNumberInternal;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isPotentialEmergencyNumber(String str, int i) {
        boolean isEmergencyNumberInternal = isEmergencyNumberInternal(str, i, false);
        IMSLog.i(LOG_TAG, "isPotentialEmergencyNumber: " + isEmergencyNumberInternal + ", number: " + IMSLog.checker(str));
        return isEmergencyNumberInternal;
    }

    private boolean isEmergencyNumberInternal(String str, int i, boolean z) {
        if (!isSupportDualSimCMC()) {
            i = this.mCmcInfo.mLineSlotIndex;
        }
        if (str != null && this.mEmergencyNumberMap.get(Integer.valueOf(i)) != null && !this.mEmergencyNumberMap.get(Integer.valueOf(i)).isEmpty()) {
            IMSLog.i(LOG_TAG, "isEmergencyNumberInternal: current emergencyNumbers: " + IMSLog.checker(this.mEmergencyNumberMap.get(Integer.valueOf(i))));
            String stripSeparators = PhoneNumberUtils.stripSeparators(str);
            for (String str2 : this.mEmergencyNumberMap.get(Integer.valueOf(i))) {
                if (z) {
                    if (str2.equals(stripSeparators)) {
                        return true;
                    }
                } else if (stripSeparators.startsWith(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private String getEmergencyCallNumberString() {
        String emergencyCallNumberString;
        if (isSupportDualSimCMC()) {
            emergencyCallNumberString = getEmergencyCallNumberString(ImsConstants.Phone.SLOT_1) + CmcConstants.E_NUM_SLOT_SPLIT + getEmergencyCallNumberString(ImsConstants.Phone.SLOT_2);
        } else {
            emergencyCallNumberString = getEmergencyCallNumberString(this.mCmcInfo.mLineSlotIndex);
        }
        if (emergencyCallNumberString.isEmpty() || CmcConstants.E_NUM_SLOT_SPLIT.equals(emergencyCallNumberString)) {
            return "";
        }
        return CmcConstants.E_NUM_STR_QUOTE + emergencyCallNumberString + CmcConstants.E_NUM_STR_QUOTE;
    }

    private String getEmergencyCallNumberString(int i) {
        if (isSecondaryDevice()) {
            return "";
        }
        Map<Integer, List<EmergencyNumber>> emergencyNumberList = TelephonyManagerWrapper.getInstance(this.mContext).getEmergencyNumberList();
        if (emergencyNumberList == null || emergencyNumberList.isEmpty()) {
            IMSLog.i(LOG_TAG, "getEmergencyCallNumberString: ecall list map empty");
            return "";
        }
        List<EmergencyNumber> list = emergencyNumberList.get(Integer.valueOf(SimUtil.getSubId(i)));
        if (list == null || list.isEmpty()) {
            IMSLog.i(LOG_TAG, "getEmergencyCallNumberString: ecall list empty");
            return "";
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<EmergencyNumber> it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next().getNumber());
        }
        String join = linkedHashSet.size() > 0 ? String.join(",", linkedHashSet) : "";
        IMSLog.i(LOG_TAG, "getEmergencyCallNumberString: slot(" + i + ") ecall numbers result: " + IMSLog.checker(join));
        return join;
    }

    private boolean isCmcProfile(ImsProfile imsProfile) {
        int cmcType = imsProfile.getCmcType();
        return (cmcType == 0 || cmcType == 7 || cmcType == 8) ? false : true;
    }

    private boolean isCmcServiceInstalled() {
        try {
            this.mContext.getPackageManager().getApplicationInfo(CmcConstants.SERVICE_PACKAGE_NAME, 128);
            this.mEventLog.logAndAdd("isCmcServiceInstalled: true");
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            this.mEventLog.logAndAdd("isCmcServiceInstalled: false");
            return false;
        }
    }

    private boolean needDeregiOnDeviceChange(IRegisterTask iRegisterTask) {
        if (this.mCmcInfoUpdatedResult.getChangedCmcInfoList().size() == 1) {
            if (this.mCmcInfoUpdatedResult.getChangedCmcInfoList().contains(CmcInfo.CmcInfoType.NETWORK_PREF) && iRegisterTask.getRegistrationRat() == 18) {
                IMSLog.i(LOG_TAG, "needDeregiOnDeviceChange: false with WiFi");
                return false;
            }
            if ((this.mCmcInfoUpdatedResult.getChangedCmcInfoList().contains(CmcInfo.CmcInfoType.ACCESS_TOKEN) || this.mCmcInfoUpdatedResult.getChangedCmcInfoList().contains(CmcInfo.CmcInfoType.PCSCF_ADDR_LIST)) && TelephonyManagerWrapper.getInstance(this.mContext).getCallState(iRegisterTask.getPhoneId()) != 0) {
                IMSLog.i(LOG_TAG, "needDeregiOnDeviceChange: false: access token or pcscf update in call state");
                iRegisterTask.setHasPendingDeregister(true);
                return false;
            }
        }
        return true;
    }

    private class InternalHandler extends Handler {
        public InternalHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.i(CmcAccountManager.LOG_TAG, "handleMessage: " + message.what);
            switch (message.what) {
                case 1:
                    CmcAccountManager.this.startSAServiceInternal(((Boolean) message.obj).booleanValue());
                    break;
                case 2:
                    CmcAccountManager.this.onSaUpdated();
                    break;
                case 3:
                    CmcAccountManager.this.onStartCmcRegistration();
                    break;
                case 4:
                    CmcAccountManager.this.onStopCmcRegistration();
                    break;
                case 5:
                case 6:
                    CmcAccountManager.this.onCmcDeviceChanged();
                    break;
                case 7:
                    CmcAccountManager.this.handleSARequestFailed(CmcSAManager.SAErrorReason.REQUEST_TIMER_EXPIRED.setDescription(""));
                    break;
                case 8:
                    CmcAccountManager.this.handleSARequestFailed((CmcSAManager.SAErrorReason) message.obj);
                    break;
                case 9:
                    CmcAccountManager.this.onHotspotStateChanged();
                    break;
            }
        }
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSAManager.CmcSAEventListener
    public void onSAServiceBindResult(boolean z, boolean z2) {
        if (z) {
            this.mEventLog.logAndAdd("onSAServiceBindResult: success");
            this.mSABindRetryCount = 0;
            return;
        }
        int i = this.mSABindRetryCount;
        if (i < 5) {
            this.mSABindRetryCount = i + 1;
            this.mEventLog.logAndAdd("onSAServiceBindResult: retry (" + this.mSABindRetryCount + "/5) after 30secs");
            InternalHandler internalHandler = this.mHandler;
            internalHandler.sendMessageDelayed(internalHandler.obtainMessage(1, Boolean.valueOf(z2)), 30000L);
            return;
        }
        this.mEventLog.logAndAdd("onSAServiceBindResult: retry over");
        this.mSABindRetryCount = 0;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSAManager.CmcSAEventListener
    public void onSARequested() {
        this.mEventLog.logAndAdd("onSARequested: expire 31 secs");
        this.mHandler.sendEmptyMessageDelayed(7, 31000L);
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSAManager.CmcSAEventListener
    public void onSAUpdated(String str, String str2) {
        this.mEventLog.logAndAdd("onSAUpdated");
        this.mHandler.removeMessages(7);
        this.mHandler.removeMessages(8);
        this.mSaService.disconnectToSamsungAccountService();
        if (this.mSaToken.equals(str) && this.mSaService.isLocalCachedAccessTokenRequestState()) {
            Log.i(LOG_TAG, "Same updated token with the previous one. Set force update");
            this.mCmcInfoUpdatedResult.setForceUpdate();
        }
        this.mSaToken = str;
        this.mSaUrl = str2;
        IMSLog.s(LOG_TAG, "onSAUpdated: Url: " + this.mSaUrl + " token: " + this.mSaToken);
        this.mHandler.sendEmptyMessage(2);
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSAManager.CmcSAEventListener
    public void onSARequestFailed(CmcSAManager.SAErrorReason sAErrorReason) {
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(8, sAErrorReason));
    }

    public void handleSARequestFailed(CmcSAManager.SAErrorReason sAErrorReason) {
        this.mHandler.removeMessages(7);
        int i = this.mSARequestRetryCount + 1;
        this.mSARequestRetryCount = i;
        if (i > 3) {
            IMSLog.i(LOG_TAG, "handleSARequestFailed: ignore fail: " + sAErrorReason.description());
            return;
        }
        this.mEventLog.logAndAdd("handleSARequestFailed: " + sAErrorReason.description() + ", retry(" + this.mSARequestRetryCount + "/3)");
        if (sAErrorReason == CmcSAManager.SAErrorReason.NOT_LOGGED_IN || sAErrorReason == CmcSAManager.SAErrorReason.RESIGN_REQUIRED || sAErrorReason == CmcSAManager.SAErrorReason.OTHERS) {
            IMSLog.i(LOG_TAG, "handleSARequestFailed: stop requesting");
            this.mSARequestRetryCount = 3;
        } else if (sAErrorReason == CmcSAManager.SAErrorReason.NETWORK_UNAVAILABLE) {
            IRegisterTask cmcRegisterTask = getCmcRegisterTask(getCmcPhoneId());
            if (cmcRegisterTask != null && cmcRegisterTask.getGovernor().isThrottled()) {
                IMSLog.i(LOG_TAG, "handleSARequestFailed: release throttle");
                this.mRm.releaseThrottleByCmc(cmcRegisterTask);
            }
            this.mSARequestRetryCount = 3;
        } else if (this.mSARequestRetryCount < 3) {
            this.mSaService.tryGetAccessToken();
        } else {
            IMSLog.i(LOG_TAG, "handleSARequestFailed: max count");
        }
        if (isSABindRetryOver()) {
            this.mSaService.disconnectToSamsungAccountService();
        }
    }

    private void resetSARetryCount() {
        this.mSARequestRetryCount = 0;
    }

    private boolean isSABindRetryOver() {
        return this.mSARequestRetryCount >= 3;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void onRegistrationDone(IRegisterTask iRegisterTask) {
        notifyCmcDeviceChanged();
        if (this.mIsHotspotUpdatePendingDuringRegistering) {
            this.mHandler.sendEmptyMessage(9);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public void onDeregistrationDone(IRegisterTask iRegisterTask) {
        notifyCmcDeviceChanged();
        this.mIsHotspotUpdatePendingDuringRegistering = false;
        this.mIsHotspotStateUpdateDelay = false;
    }

    private void triggerDeregister(IRegisterTask iRegisterTask, String str, int i, boolean z) {
        iRegisterTask.setReason(str);
        iRegisterTask.setDeregiReason(i);
        this.mEventLog.logAndAdd("triggerDeregister: deregister slot[" + iRegisterTask.getPhoneId() + "] reason[" + str + "] isLocal[" + z + "]");
        ImsRegistry.getRegistrationManager().deregister(iRegisterTask, z, false, str);
    }

    private List<IRegisterTask> getCmcRegisterTaskList() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mPhoneCount; i++) {
            IRegisterTask cmcRegisterTask = getCmcRegisterTask(i);
            if (cmcRegisterTask != null) {
                arrayList.add(cmcRegisterTask);
            }
        }
        return arrayList;
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isCmcSupportedOnHotspot() {
        return "1".equals(SemSystemProperties.get("persist.cmc.support_hotspot", ""));
    }

    @Override // com.sec.internal.interfaces.ims.core.ICmcAccountManager
    public boolean isHotspotEnabled() {
        return this.mHotspotManager.isHotspotEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHotspotStateChanged() {
        boolean isHotspotEnabled = isHotspotEnabled();
        IMSLog.i(LOG_TAG, "onHotspotStateChanged: isHotspotEnabled: " + isHotspotEnabled);
        this.mIsHotspotUpdatePendingDuringRegistering = false;
        this.mHandler.removeMessages(9);
        List<IRegisterTask> cmcRegisterTaskList = getCmcRegisterTaskList();
        if (cmcRegisterTaskList.isEmpty()) {
            IMSLog.e(LOG_TAG, "onHotspotStateChanged: Empty CMC RegisterTask");
            return;
        }
        IRegisterTask orElse = cmcRegisterTaskList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.cmc.CmcAccountManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onHotspotStateChanged$0;
                lambda$onHotspotStateChanged$0 = CmcAccountManager.lambda$onHotspotStateChanged$0((IRegisterTask) obj);
                return lambda$onHotspotStateChanged$0;
            }
        }).findFirst().orElse(null);
        if (orElse == null) {
            if (isHotspotEnabled) {
                IMSLog.i(LOG_TAG, "onHotspotStateChanged: Try register CMC when hotspot enabled");
                final IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
                cmcRegisterTaskList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.cmc.CmcAccountManager$$ExternalSyntheticLambda1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$onHotspotStateChanged$1;
                        lambda$onHotspotStateChanged$1 = CmcAccountManager.lambda$onHotspotStateChanged$1((IRegisterTask) obj);
                        return lambda$onHotspotStateChanged$1;
                    }
                }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.cmc.CmcAccountManager$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        CmcAccountManager.lambda$onHotspotStateChanged$2(IRegistrationManager.this, (IRegisterTask) obj);
                    }
                });
                return;
            }
            return;
        }
        if (orElse.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING)) {
            IMSLog.i(LOG_TAG, orElse.getPhoneId(), "onHotspotStateChanged: Pending to update hotspot state");
            this.mIsHotspotUpdatePendingDuringRegistering = true;
        } else if (orElse.getRegistrationRat() == 18) {
            IMSLog.i(LOG_TAG, orElse.getPhoneId(), "onHotspotStateChanged: Update hotspot state");
            updateHotspotStateToStack(orElse, isHotspotEnabled);
        } else {
            if (isHotspotEnabled) {
                return;
            }
            IMSLog.i(LOG_TAG, orElse.getPhoneId(), "onHotspotStateChanged: Deregister CMC on hotspot disabled");
            triggerDeregister(orElse, "CMC Hotspot disabled", 4, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onHotspotStateChanged$0(IRegisterTask iRegisterTask) {
        return iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onHotspotStateChanged$1(IRegisterTask iRegisterTask) {
        return iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onHotspotStateChanged$2(IRegistrationManager iRegistrationManager, IRegisterTask iRegisterTask) {
        iRegistrationManager.requestTryRegsiter(iRegisterTask.getPhoneId(), 0L);
    }

    private void updateHotspotStateToStack(IRegisterTask iRegisterTask, boolean z) {
        List<String> hotspotAddressesWithSubnetPrefix = z ? this.mHotspotManager.getHotspotAddressesWithSubnetPrefix() : Collections.EMPTY_LIST;
        if (z && hotspotAddressesWithSubnetPrefix.isEmpty()) {
            if (!this.mIsHotspotStateUpdateDelay) {
                this.mIsHotspotStateUpdateDelay = true;
                this.mHandler.sendEmptyMessageDelayed(9, 500L);
                IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "updateHotspotStateToStack: Delay hotspot state update");
            }
            IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "updateHotspotStateToStack: Hotspot ip is not updated in hotspot enabled state");
            return;
        }
        this.mIsHotspotStateUpdateDelay = false;
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "updateHotspotStateToStack:  isHotspotEnabled: " + z + ", hotspotAddresses: " + IMSLog.checker(hotspotAddressesWithSubnetPrefix));
        iRegisterTask.getUserAgent().updateCmcHotspotState(hotspotAddressesWithSubnetPrefix);
    }

    public void dump() {
        this.mEventLog.dump();
    }
}
