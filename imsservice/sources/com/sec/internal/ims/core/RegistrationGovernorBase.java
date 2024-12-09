package com.sec.internal.ims.core;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.sec.ims.extensions.SemEmergencyConstantsExt;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.core.PdnFailReason;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.core.SimConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DelayedMessage;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.CellIdentityWrapper;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.helper.os.SystemUtil;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.SemTelephonyAdapter;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class RegistrationGovernorBase extends RegistrationGovernor {
    protected static final long DEFAULT_TIMS_ESTABLISH_TIMER_MS = 120000;
    protected static final int DELAY_RESTORE_SETTING_TIMER = 1000;
    private static final String LOG_TAG = "RegiGvnBase";
    protected IConfigModule mConfigModule;
    protected Context mContext;
    protected ScheduledFuture<?> mDelayedVolteOffFuture;
    protected final boolean mIsVoLteMenuRemoved;
    protected Mno mMno;
    protected BroadcastReceiver mPackageDataClearedIntentReceiver;
    protected PdnController mPdnController;
    protected RegistrationManagerHandler mRegHandler;
    protected RegistrationManagerInternal mRegMan;
    protected String mSamsungMsgPackage;
    protected RegisterTask mTask;
    protected ITelephonyManager mTelephonyManager;
    protected final BroadcastReceiver mUpsmEventReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.i(RegistrationGovernorBase.LOG_TAG, "Received UpsmEvent: " + intent.getAction() + " extra: " + intent.getExtras());
            RegistrationGovernorBase.this.onUltraPowerSavingModeChanged();
        }
    };
    protected IVolteServiceModule mVsm;

    public RegistrationGovernorBase(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        this.mVsm = null;
        this.mTelephonyManager = null;
        this.mSamsungMsgPackage = "";
        this.mContext = context;
        this.mRegMan = registrationManagerInternal;
        this.mPdnController = pdnController;
        this.mTask = registerTask;
        this.mPhoneId = registerTask.getPhoneId();
        final ImsProfile profile = registerTask.getProfile();
        this.mMno = Mno.fromName(profile.getMnoName());
        this.mRegBaseTimeMs = profile.getRegRetryBaseTime() * 1000;
        this.mRegMaxTimeMs = profile.getRegRetryMaxTime() * 1000;
        this.mTelephonyManager = iTelephonyManager;
        this.mVsm = iVolteServiceModule;
        this.mConfigModule = iConfigModule;
        if (this.mRegMan != null) {
            this.mRegHandler = registrationManagerInternal.getRegistrationManagerHandler();
        }
        this.mSamsungMsgPackage = PackageUtils.getMsgAppPkgName(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        intentFilter.addDataScheme("package");
        this.mPackageDataClearedIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                Uri data = intent.getData();
                IMSLog.s(RegistrationGovernorBase.LOG_TAG, RegistrationGovernorBase.this.mPhoneId, "onReceive:" + intent.getAction() + " mTask:" + profile.getName() + "(" + RegistrationGovernorBase.this.mTask.getState() + ")");
                if (!"android.intent.action.PACKAGE_DATA_CLEARED".equals(action) || data == null) {
                    return;
                }
                RegistrationGovernorBase.this.onPackageDataCleared(data);
            }
        };
        this.mIsVoLteMenuRemoved = DeviceUtil.removeVolteMenuWithSimMobility(this.mPhoneId);
        this.mContext.registerReceiver(this.mPackageDataClearedIntentReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void clear() {
        this.mContext.unregisterReceiver(this.mPackageDataClearedIntentReceiver);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPackageDataCleared(Uri uri) {
        this.mRegMan.getEventLog().logAndAdd("onReceive: ACTION_PACKAGE_DATA_CLEARED is received");
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        IMSLog.s(LOG_TAG, this.mPhoneId, "Intent received is packageName: " + schemeSpecificPart + ", mSamsungMsgPackage: " + this.mSamsungMsgPackage);
        if (TextUtils.isEmpty(schemeSpecificPart) || TextUtils.isEmpty(this.mSamsungMsgPackage) || !TextUtils.equals(schemeSpecificPart, this.mSamsungMsgPackage)) {
            return;
        }
        String acsServerType = ConfigUtil.getAcsServerType(this.mTask.getPhoneId());
        if (((this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING || this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) && this.mMno == Mno.ATT) || this.mMno == Mno.VZW || (this.mTask.isRcsOnly() && ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(acsServerType))) {
            new Handler().postDelayed(new Runnable() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationGovernorBase.this.lambda$onPackageDataCleared$0();
                }
            }, 1000L);
            return;
        }
        if (this.mMno.isKor() && this.mTask.isRcsOnly()) {
            setBotAgreementToFile(0);
            this.mRegHandler.notifyChatbotAgreementChanged(this.mTask.getPhoneId());
            DmConfigHelper.setImsUserSetting(this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, this.mTask.getPhoneId()), this.mTask.getPhoneId());
            return;
        }
        if (this.mTask.isRcsOnly() && ConfigUtil.isRcsChn(this.mMno)) {
            int phoneCount = SimUtil.getPhoneCount();
            IMSLog.s(LOG_TAG, this.mPhoneId, "Turn off RCS for block data connection alert. phoneCount: " + phoneCount);
            if (phoneCount == 1) {
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 0, this.mTask.getPhoneId());
            } else if (phoneCount == 2) {
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 0, 0);
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 0, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPackageDataCleared$0() {
        Context context = this.mContext;
        ImsConstants.SystemSettings.setRcsUserSetting(context, DmConfigHelper.getImsUserSetting(context, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), this.mTask.getPhoneId()), this.mTask.getPhoneId());
    }

    protected void setBotAgreementToFile(int i) {
        IMSLog.s(LOG_TAG, this.mPhoneId, "setBotAgreementToFile : " + i);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        String str = "IMSI_";
        if (simManagerFromSimSlot != null) {
            str = "IMSI_" + simManagerFromSimSlot.getImsi();
        }
        ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, "bot_agreement_from_app", str, i == 1 ? "1" : "0");
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationTerminated(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationTerminated: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j);
        this.mFailureCounter = 0;
        this.mCurPcscfIpIdx = 0;
        if (j < 0) {
            j = 0;
        }
        if (SipErrorBase.NOTIFY_TERMINATED_DEACTIVATED.equals(sipError)) {
            j = 1000;
        } else if (SipErrorBase.NOTIFY_TERMINATED_REJECTED.equals(sipError)) {
            j = 128000;
        }
        this.mThrottleReason = 0;
        startRetryTimer(j);
    }

    protected void handleForbiddenError(long j) {
        String regRetryPcscfPolicyOn403 = this.mTask.getProfile().getRegRetryPcscfPolicyOn403();
        if (RegistrationGovernor.RETRY_TO_NEXT_PCSCF.equals(regRetryPcscfPolicyOn403)) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "onRegistrationError: Retry to next PCSCF address in case 403 Forbidden");
            return;
        }
        if (RegistrationGovernor.RETRY_TO_SAME_PCSCF.equals(regRetryPcscfPolicyOn403)) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "onRegistrationError: Retry to same PCSCF address in case 403 Forbidden");
            this.mCurPcscfIpIdx--;
            return;
        }
        Log.e(LOG_TAG, "onRegistrationError: Permanently prohibited.");
        this.mIsPermanentStopped = true;
        if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED) {
            this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            resetPcscfList();
        }
    }

    protected void handleTimeoutError(long j) {
        if (this.mCurPcscfIpIdx == this.mNumOfPcscfIp && this.mTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED) {
            this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            resetPcscfList();
        }
    }

    protected void handlePcscfError() {
        this.mTask.setKeepPdn(false);
        startRetryTimer(getWaitTime());
        this.mThrottleReason = 0;
    }

    protected void handleRetryTimer(long j) {
        if (this.mCurPcscfIpIdx >= this.mNumOfPcscfIp) {
            this.mCurPcscfIpIdx = 0;
        }
        if (j == 0) {
            j = getWaitTime();
        }
        startRetryTimer(j);
        this.mThrottleReason = 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " mIsPermanentStopped " + this.mIsPermanentStopped);
        if (j < 0) {
            j = 0;
        }
        this.mFailureCounter++;
        this.mCurPcscfIpIdx++;
        if (SipErrorBase.EMPTY_PCSCF.equals(sipError)) {
            handlePcscfError();
            return;
        }
        if (this.mTask.getProfile().hasEmergencySupport() && SipErrorBase.SIP_TIMEOUT.equals(sipError) && this.mTask.getProfile().getE911RegiTime() > 0) {
            handleTimeOutEmerRegiError();
            return;
        }
        if (SipErrorBase.isImsForbiddenError(sipError)) {
            handleForbiddenError(j);
            if (this.mIsPermanentStopped) {
                return;
            }
        } else if (SipErrorBase.SIP_TIMEOUT.equals(sipError)) {
            handleTimeoutError(j);
        } else if (SipErrorBase.SERVICE_UNAVAILABLE.equals(sipError) && j != 0 && j < this.mTask.getProfile().getTimerF()) {
            this.mCurPcscfIpIdx--;
        }
        handleRetryTimer(j);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        IMSLog.s(LOG_TAG, this.mPhoneId, "onRegistrationDone: state " + this.mTask.getState());
        this.mFailureCounter = 0;
        this.mRegiAt = 0L;
        this.mThrottleReason = 0;
        stopRetryTimer();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onTimsTimerExpired() {
        stopTimsEstablishTimer(this.mTask, RegistrationConstants.REASON_TIMS_EXPIRED);
        this.mTask.setNotAvailableReason(1);
        this.mRegMan.notifyImsNotAvailable(this.mTask, true);
    }

    protected void removeCurrentPcscfAndInitialRegister(boolean z) {
        String currentPcscfIp = getCurrentPcscfIp();
        this.mPcscfIpList.remove(currentPcscfIp);
        this.mNumOfPcscfIp--;
        updatePcscfIpList(this.mPcscfIpList, z);
        IMSLog.s(LOG_TAG, this.mPhoneId, "removeCurrentPcscfAndInitialRegister(): curPcscfIp " + currentPcscfIp + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mCurPcscfIpIndex " + this.mCurPcscfIpIdx + " mPcscfIpList " + this.mPcscfIpList);
    }

    protected void handleAlternativeCallState() {
        if (this.mHandlePcscfOnAlternativeCall) {
            int i = this.mCurPcscfIpIdx + 1;
            this.mCurPcscfIpIdx = i;
            if (i >= this.mNumOfPcscfIp) {
                this.mCurPcscfIpIdx = 0;
            }
        }
        this.mTask.setDeregiReason(7);
        this.mRegMan.deregister(this.mTask, true, true, "call state changed");
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onCallStatus(IRegistrationGovernor.CallEvent callEvent, SipError sipError, int i) {
        Log.i(LOG_TAG, "onCallStatus: event=" + callEvent + " error=" + sipError);
        if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ESTABLISHED) {
            this.mHasVoLteCall = true;
        } else if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_LAST_CALL_END) {
            this.mHasVoLteCall = false;
        } else if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_INITIAL_REGI) {
            handleAlternativeCallState();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        Log.i(LOG_TAG, "onSipError: service=" + str + " error=" + sipError);
        if ("mmtel".equals(str) && (SipErrorBase.SIP_INVITE_TIMEOUT.equals(sipError) || SipErrorBase.SIP_TIMEOUT.equals(sipError))) {
            removeCurrentPcscfAndInitialRegister(true);
        }
        return sipError;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getFailureType() {
        if (this.mDiscardCurrentNetwork) {
            return 32;
        }
        return this.mIsPermanentStopped ? 33 : 16;
    }

    protected void removeService(Set<String> set, String str, String str2) {
        if (set.remove(str)) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "remove service: " + str + "(" + str2 + ")");
            this.mTask.addFilteredReason(str, str2);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> applyDataSimPolicyForCrossSim(Set<String> set, int i) {
        if (set.isEmpty()) {
            return set;
        }
        Set<String> blockedServicesForCrossSim = SlotBasedConfig.getInstance(i == 0 ? 1 : 0).getBlockedServicesForCrossSim();
        if (blockedServicesForCrossSim.contains("all")) {
            set.clear();
        } else if (!blockedServicesForCrossSim.isEmpty()) {
            set.removeAll(blockedServicesForCrossSim);
        }
        return set;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> applyCrossSimPolicy(Set<String> set, int i) {
        Set<String> hashSet = new HashSet<>(set);
        if (TelephonyManagerExt.getNetworkClass(this.mRegMan.getNetworkEvent(i == 0 ? 1 : 0).network) == 1) {
            HashSet hashSet2 = new HashSet();
            hashSet2.add("smsip");
            hashSet.retainAll(hashSet2);
            return hashSet;
        }
        return applyDataSimPolicyForCrossSim(hashSet, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> applyPsDataOffExempt(Set<String> set, int i) {
        if (set == null) {
            return new HashSet();
        }
        if (i != 18 && !NetworkUtil.isMobileDataOn(this.mContext)) {
            if (!this.mTask.getProfile().isMmtelVoiceExempt()) {
                removeService(set, "mmtel", "MMTEL Voice PS Data Off Exempt");
            }
            if (!this.mTask.getProfile().isMmtelVoiceExempt() || !this.mTask.getProfile().isMmtelVideoExempt()) {
                removeService(set, "mmtel-video", "MMTEL Video PS Data Off Exempt");
            }
            if (!this.mTask.getProfile().isSmsIpExempt()) {
                removeService(set, "smsip", "SMS over IP PS Data Off Exempt");
            }
        }
        return set;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        Set<String> hashSet = new HashSet<>();
        final HashSet hashSet2 = new HashSet(set);
        int i2 = 0;
        boolean z = DmConfigHelper.getImsSwitchValue(this.mContext, "volte", this.mPhoneId) == 1;
        boolean z2 = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mPhoneId) == 1;
        if (isImsDisabled()) {
            return new HashSet();
        }
        if ((this.mTask.getProfile().getPdnType() == -1 || this.mTask.getProfile().getPdnType() == 0) && !NetworkUtil.isMobileDataOn(this.mContext) && i != 18) {
            Log.i(LOG_TAG, "filterService: Mobile data off");
            return new HashSet();
        }
        if (z) {
            Set<String> servicesByImsSwitch = servicesByImsSwitch(ImsProfile.getVoLteServiceList());
            if (!servicesByImsSwitch.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_IMS_SWITCH_OFF.getCode());
            }
            hashSet.addAll(servicesByReadSwitch((String[]) servicesByImsSwitch.toArray(new String[0])));
            if (servicesByImsSwitch.contains("mmtel") && !hashSet.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_DM_OFF.getCode());
            }
        }
        if (this.mConfigModule.isValidAcsVersion(this.mPhoneId)) {
            hashSet.addAll(servicesByReadSwitch((String[]) servicesByImsSwitch(ImsProfile.getRcsServiceList()).toArray(new String[0])));
        }
        if (NetworkUtil.is3gppPsVoiceNetwork(i) && this.mTask.getProfile().getPdnType() == 11) {
            hashSet = applyVoPsPolicy(hashSet);
            if (hashSet.isEmpty()) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.VOPS_OFF.getCode());
                return hashSet;
            }
        }
        if (!isVideoCallEnabled()) {
            removeService(hashSet2, "mmtel-video", "Videocall disabled.");
        }
        if (this.mMno.isUSA() && !ImsUtil.isDualVideoCallAllowed(this.mPhoneId)) {
            removeService(hashSet2, "mmtel-video", "Non-DDS operator SIM");
        }
        if (this.mRegMan.getNetworkEvent(this.mPhoneId).isDataRoaming && this.mTask.getProfile().getPdnType() == 11 && i != 18 && allowRoaming() && this.mTask.getProfile().getMediaTypeRestrictionPolicy().equalsIgnoreCase("Voice_Only")) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Support Voice Only when roaming. just filtering mmtel-video.");
            removeService(hashSet2, "mmtel-video", "voice only when roaming");
        }
        if (!z2) {
            if (ImsUtil.isSingleRegiAppConnected(this.mPhoneId)) {
                final List<String> sipDelegateServiceList = SecImsNotifier.getInstance().getSipDelegateServiceList(this.mPhoneId);
                Arrays.stream(ImsProfile.getRcsServiceList()).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$filterService$1;
                        lambda$filterService$1 = RegistrationGovernorBase.lambda$filterService$1(sipDelegateServiceList, (String) obj);
                        return lambda$filterService$1;
                    }
                }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RegistrationGovernorBase.this.lambda$filterService$2(hashSet2, (String) obj);
                    }
                });
            } else if (this.mTask.isRcsOnly()) {
                String[] rcsServiceList = ImsProfile.getRcsServiceList();
                int length = rcsServiceList.length;
                while (i2 < length) {
                    removeService(hashSet2, rcsServiceList[i2], "DefaultAppInUse is false");
                    i2++;
                }
            } else {
                String[] chatServiceList = ImsProfile.getChatServiceList();
                int length2 = chatServiceList.length;
                while (i2 < length2) {
                    removeService(hashSet2, chatServiceList[i2], "DefaultAppInUse is false");
                    i2++;
                }
            }
        }
        if (this.mTask.getProfile().getPdnType() == 11) {
            hashSet = applyPsDataOffExempt(hashSet, i);
        }
        if (!hashSet2.isEmpty()) {
            hashSet2.retainAll(hashSet);
        }
        return hashSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$filterService$1(List list, String str) {
        return !list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filterService$2(Set set, String str) {
        removeService(set, str, "Disable from singleregi");
    }

    protected boolean isImsDisabled() {
        boolean z = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.IMS, this.mPhoneId) != 1;
        if (z) {
            Log.i(LOG_TAG, "filterService: IMS is disabled.");
            this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.MAIN_SWITCHES_OFF.getCode());
        }
        return z;
    }

    protected Set<String> servicesByImsSwitch(String[] strArr) {
        HashSet hashSet = new HashSet();
        ContentValues imsSwitchValue = DmConfigHelper.getImsSwitchValue(this.mContext, strArr, this.mPhoneId);
        for (String str : strArr) {
            if (imsSwitchValue.getAsInteger(str) != null && imsSwitchValue.getAsInteger(str).intValue() == 1) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    protected Set<String> servicesByReadSwitch(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            if (DmConfigHelper.readSwitch(this.mContext, str, true, this.mPhoneId)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    protected Set<String> applyVoPsPolicy(Set<String> set) {
        if (set == null) {
            return new HashSet();
        }
        if (this.mRegMan.getNetworkEvent(this.mPhoneId).voiceOverPs == VoPsIndication.NOT_SUPPORTED) {
            if (this.mTask.getProfile().getSmsoipUsagePolicy().equalsIgnoreCase("Irrespective_of_voice")) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "SMSoIP can be used even if VoPS not supported. just filtering mmtel, mmtel-video.");
                removeService(set, "mmtel-video", "VoPS Off");
                removeService(set, "mmtel", "VoPS Off");
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "by VoPS policy: remove all service");
                return new HashSet();
            }
        }
        return set;
    }

    protected List<String> addIpv6Addr(List<String> list, List<String> list2, LinkPropertiesWrapper linkPropertiesWrapper) {
        if (linkPropertiesWrapper.hasGlobalIPv6Address() || linkPropertiesWrapper.hasIPv6DefaultRoute()) {
            addIpv6Addr(list, list2);
        }
        return list2;
    }

    private void addIpv6Addr(List<String> list, List<String> list2) {
        for (String str : list) {
            if (NetworkUtil.isIPv6Address(str)) {
                list2.add(str);
            }
        }
    }

    protected List<String> addIpv4Addr(List<String> list, List<String> list2, LinkPropertiesWrapper linkPropertiesWrapper) {
        if (list2.isEmpty() && linkPropertiesWrapper.hasIPv4Address()) {
            Log.i(LOG_TAG, "ipv4 address found");
            addIpv4Addr(list, list2);
        }
        return list2;
    }

    private void addIpv4Addr(List<String> list, List<String> list2) {
        for (String str : list) {
            if (NetworkUtil.isIPv4Address(str)) {
                list2.add(str);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public List<String> checkValidPcscfIp(List<String> list) {
        ArrayList arrayList = new ArrayList();
        LinkPropertiesWrapper linkProperties = this.mPdnController.getLinkProperties(this.mTask);
        if (list == null || list.isEmpty() || linkProperties == null) {
            return arrayList;
        }
        List<String> addIpv4Addr = addIpv4Addr(list, addIpv6Addr(list, arrayList, linkProperties), linkProperties);
        Log.i(LOG_TAG, "ValidPcscfIp: " + addIpv4Addr);
        return addIpv4Addr;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public List<String> checkValidPcscfIpForPcscfRestoration(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            addIpv6Addr(list, arrayList);
            if (arrayList.isEmpty()) {
                addIpv4Addr(list, arrayList);
            }
            Log.i(LOG_TAG, "ValidPcscfIp: " + arrayList);
        }
        return arrayList;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void updatePcscfIpList(List<String> list) {
        updatePcscfIpList(list, false);
    }

    protected void updatePcscfIpList(List<String> list, boolean z) {
        if (list == null) {
            Log.e(LOG_TAG, "updatePcscfIpList: null P-CSCF list!");
            return;
        }
        String currentPcscfIp = getCurrentPcscfIp();
        int size = list.size();
        this.mNumOfPcscfIp = size;
        this.mPcscfIpList = list;
        this.mIsValid = size > 0;
        int indexOf = list.indexOf(currentPcscfIp);
        if (indexOf >= 0) {
            RegisterTask registerTask = this.mTask;
            RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERING;
            RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.REGISTERED;
            if (registerTask.isOneOf(registerTaskState, registerTaskState2)) {
                Log.i(LOG_TAG, "updatePcscfIpList: keeping " + currentPcscfIp + " as current forceInitialRegi=" + z + " mMoveToNextPcscfAfterTimerB=" + this.mMoveToNextPcscfAfterTimerB);
                this.mCurPcscfIpIdx = indexOf;
                if (z) {
                    if (this.mMno.isKor()) {
                        if (this.mMoveToNextPcscfAfterTimerB) {
                            this.mFailureCounter = 0;
                            this.mCurImpu = 0;
                            this.mRegiAt = 0L;
                            this.mThrottleReason = 0;
                        } else {
                            resetRetry();
                        }
                        this.mMoveToNextPcscfAfterTimerB = false;
                    }
                    if (this.mTask.isOneOf(registerTaskState, registerTaskState2)) {
                        this.mTask.setDeregiReason(8);
                        this.mRegMan.deregister(this.mTask, true, this.mIsValid, "pcscf updated");
                        return;
                    }
                    return;
                }
                if (this.mMno == Mno.VZW) {
                    this.mRegMan.sendReRegister(this.mTask);
                    return;
                }
                return;
            }
        }
        Log.i(LOG_TAG, "updatePcscfIpList: whole new set of PCSCFs (" + this.mTask.getState() + ")");
        if (this.mMno.isTmobile() || this.mMno.isOrangeGPG()) {
            this.mCurPcscfIpIdx = 0;
            this.mCurImpu = 0;
            this.mRegiAt = 0L;
            this.mThrottleReason = 0;
        } else {
            resetRetry();
        }
        if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
            this.mTask.setDeregiReason(8);
            this.mRegMan.deregister(this.mTask, true, this.mIsValid, "pcscf updated");
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public String getCurrentPcscfIp() {
        if (CollectionUtils.isNullOrEmpty(this.mPcscfIpList)) {
            Log.e(LOG_TAG, "getNextPcscf: empty P-CSCF list.");
            return "";
        }
        List<String> list = this.mPcscfIpList;
        String str = list.get(this.mCurPcscfIpIdx % list.size());
        Log.i(LOG_TAG, "getCurrentPcscfIp: " + str);
        return str;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetRetry() {
        Log.i(LOG_TAG, "resetRetry()");
        this.mFailureCounter = 0;
        this.mCurPcscfIpIdx = 0;
        this.mCurImpu = 0;
        this.mRegiAt = 0L;
        this.mThrottleReason = 0;
        resetIPSecAllow();
    }

    protected long getWaitTime() {
        long pow = this.mRegBaseTimeMs * ((long) Math.pow(2.0d, this.mFailureCounter - 1));
        if (pow < 0) {
            return this.mRegMaxTimeMs;
        }
        return Math.min(this.mRegMaxTimeMs, pow);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public long getNextRetryMillis() {
        if (this.mIsPermanentStopped || this.mIsPermanentPdnFailed) {
            return -1L;
        }
        return Math.max(0L, this.mRegiAt - SystemClock.elapsedRealtime());
    }

    protected void startTimsEstablishTimer(RegisterTask registerTask, long j, String str) {
        if (registerTask.getProfile().hasEmergencySupport()) {
            Log.i(LOG_TAG, "Emergecy Task doens't required Tims timer.");
            return;
        }
        if (registerTask.isRcsOnly() && registerTask.getMno().isKor()) {
            if (this.mTimEshtablishTimeoutRCS != null) {
                Log.i(LOG_TAG, "TimsRCS is running. don't need to start new timer.");
                return;
            }
            Log.i(LOG_TAG, "start TimsRCS timer; millis = " + j + ", reason = [" + str + "]");
            this.mTimEshtablishTimeoutRCS = this.mRegHandler.startTimsEshtablishTimer(registerTask, j);
            return;
        }
        if (this.mTimEshtablishTimeout != null) {
            Log.i(LOG_TAG, "Tims is running. don't need to start new timer.");
            return;
        }
        Log.i(LOG_TAG, "startTimsEstablishTimer: millis = " + j + ", reason = [" + str + "]");
        this.mTimEshtablishTimeoutReason = str;
        this.mTimEshtablishTimeout = this.mRegHandler.startTimsEshtablishTimer(registerTask, j);
    }

    protected void stopTimsEstablishTimer(RegisterTask registerTask, String str) {
        if (registerTask.isRcsOnly() && registerTask.getMno().isKor()) {
            Log.i(LOG_TAG, "stop TimsRCS timer by " + str);
            DelayedMessage delayedMessage = this.mTimEshtablishTimeoutRCS;
            if (delayedMessage != null) {
                this.mRegHandler.stopTimer(delayedMessage);
                this.mTimEshtablishTimeoutRCS = null;
                return;
            }
            return;
        }
        Log.i(LOG_TAG, "stop Tims timer by " + str);
        DelayedMessage delayedMessage2 = this.mTimEshtablishTimeout;
        if (delayedMessage2 != null) {
            this.mRegHandler.stopTimer(delayedMessage2);
            this.mTimEshtablishTimeout = null;
            this.mTimEshtablishTimeoutReason = null;
        }
    }

    protected void toggleTimsTimerByPdnTransport(int i) {
        if (i == 1) {
            IMSLog.i(LOG_TAG, this.mPhoneId, this.mTask, "onPdnConnecting: IMS PDN connecting on cellular. Start TIMS timer");
            startTimsTimer(RegistrationConstants.REASON_IMS_PDN_REQUEST);
        } else if (i == 2) {
            IMSLog.i(LOG_TAG, this.mPhoneId, this.mTask, "onPdnConnecting: IMS PDN connecting on ePDG. Stop TIMS timer");
            stopTimsTimer(RegistrationConstants.REASON_EPDG_CONNECTING);
        }
    }

    protected void startRetryTimer(long j) {
        this.mRegiAt = SystemClock.elapsedRealtime() + j;
        stopRetryTimer();
        Log.i(LOG_TAG, "startRetryTimer: millis " + j);
        this.mRetryTimeout = this.mRegHandler.startRegistrationTimer(this.mTask, j);
    }

    protected void stopRetryTimer() {
        if (this.mRetryTimeout == null) {
            return;
        }
        Log.i(LOG_TAG, "stopRetryTimer; what = " + this.mRetryTimeout.what);
        this.mRegHandler.stopTimer(this.mRetryTimeout);
        this.mRetryTimeout = null;
    }

    protected boolean checkRoamingStatus(int i) {
        if (i == 18 || !this.mTelephonyManager.isNetworkRoaming(SimUtil.getSubId(this.mPhoneId)) || allowRoaming()) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: roaming is not allowed.");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.ROAMING_NOT_SUPPORTED.getCode());
        return false;
    }

    protected boolean checkCallStatus() {
        if (!this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) || this.mRegMan.getTelephonyCallStatus(this.mPhoneId) == 0) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: call state is not idle");
        return false;
    }

    protected boolean checkEmergencyStatus() {
        return this.mTask.getProfile().hasEmergencySupport() && this.mTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERING;
    }

    protected boolean checkRegiStatus() {
        RegistrationConstants.RegisterTaskState state = this.mTask.getState();
        boolean isUpdateRegistering = this.mTask.isUpdateRegistering();
        Log.i(LOG_TAG, "checkRegiStatus: getState()=" + state + " mIsUpdateRegistering=" + isUpdateRegistering);
        return (state == RegistrationConstants.RegisterTaskState.REGISTERING || isUpdateRegistering) ? false : true;
    }

    protected boolean checkNetworkEvent(int i) {
        if (!this.mRegHandler.hasNetworModeChangeEvent() || !this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) || this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: networkModeChangeTimer Running.");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.ONGOING_NW_MODE_CHANGE.getCode());
        return false;
    }

    protected boolean checkWFCsettings(int i) {
        if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONFIGURED) && i == 18 && this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) && this.mPdnController.getEpdgPhysicalInterface(this.mPhoneId) == 1) {
            int wifiStatus = DeviceUtil.getWifiStatus(this.mContext, 0);
            boolean isEnabled = VowifiConfig.isEnabled(this.mContext, this.mPhoneId);
            if (wifiStatus == 0 || !isEnabled) {
                Log.i("RegiGvnBase[" + this.mPhoneId + "]", "VoWiFi menu is not enabled or WIFI is not enabled");
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF.getCode());
                return false;
            }
        }
        return true;
    }

    protected boolean checkDelayedStopPdnEvent() {
        if (!this.mRegHandler.hasDelayedStopPdnEvent() || !this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS)) {
            return true;
        }
        Log.i(LOG_TAG, "stopPdn would be called soon. Skip IMS registration");
        return false;
    }

    protected boolean checkMdmnProfile() {
        return this.mTask.getProfile().isSamsungMdmnEnabled();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        if (checkEmergencyStatus() || checkMdmnProfile()) {
            return true;
        }
        return checkRegiStatus() && checkEpdgEvent(i) && checkCallStatus() && checkRoamingStatus(i) && checkVolteSetting(i) && checkNetworkEvent(i) && checkDelayedStopPdnEvent() && checkRcsEvent(i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkVolteSetting(int i) {
        if (this.mTask.isRcsOnly() || i == 18 || getVoiceTechType(this.mPhoneId) == 0) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: volte disabled");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF.getCode());
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void releaseThrottle(int i) {
        if (i == 1 || i == 7) {
            this.mIsPermanentStopped = false;
        } else if (i == 4) {
            this.mIsPermanentStopped = false;
            this.mCurImpu = 0;
        }
        if (this.mIsPermanentStopped) {
            return;
        }
        Log.i(LOG_TAG, "releaseThrottle: case by " + i);
    }

    protected int getVoiceTechType() {
        int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, 0, this.mPhoneId);
        StringBuilder sb = new StringBuilder();
        sb.append("getVoiceTechType: ");
        sb.append(voiceCallType == 0 ? "VOLTE" : "CS");
        Log.i(LOG_TAG, sb.toString());
        return voiceCallType;
    }

    protected int getVoiceTechType(int i) {
        int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, 0, i);
        StringBuilder sb = new StringBuilder();
        sb.append("getVoiceTechType: ");
        sb.append(voiceCallType == 0 ? "VOLTE" : "CS");
        Log.i(LOG_TAG, sb.toString());
        return voiceCallType;
    }

    protected boolean isVideoCallEnabled() {
        int videoCallType = ImsConstants.SystemSettings.getVideoCallType(this.mContext, -1, this.mPhoneId);
        StringBuilder sb = new StringBuilder();
        sb.append("isVideoCallEnabled: ");
        sb.append(videoCallType == 0 ? "Enable" : "Disable");
        Log.i(LOG_TAG, sb.toString());
        return videoCallType == 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean allowRoaming() {
        if (this.mTask.getProfile().hasEmergencySupport()) {
            Log.i(LOG_TAG, "allowRoaming: Emergency profile. Return true.");
            return true;
        }
        return this.mTask.getProfile().isAllowedOnRoaming();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isLocationInfoLoaded(int i) {
        ImsProfile profile = this.mTask.getProfile();
        if (profile.getSupportedGeolocationPhase() == 0 || i != 18 || profile.hasEmergencySupport()) {
            return true;
        }
        IGeolocationController geolocationController = ImsRegistry.getGeolocationController();
        if (geolocationController != null) {
            if (this.mNeedToCheckLocationSetting && !geolocationController.isLocationServiceEnabled()) {
                Log.i(LOG_TAG, "locationService is disabled");
                return false;
            }
            if (geolocationController.isCountryCodeLoaded(this.mPhoneId)) {
                return true;
            }
            geolocationController.startGeolocationUpdate(this.mPhoneId, false);
        }
        return profile.isAllowedRegiWhenLocationUnavailable();
    }

    protected boolean isDeregisterWithRATNeeded() {
        int currentNetworkByPhoneId = this.mRegMan.getCurrentNetworkByPhoneId(this.mPhoneId);
        boolean z = (NetworkUtil.is3gppPsVoiceNetwork(currentNetworkByPhoneId) || currentNetworkByPhoneId == 18) ? false : true;
        Log.i(LOG_TAG, "isDeregisterWithRATNeeded [" + z + "]");
        return z;
    }

    protected boolean isDeregisterWithVoPSNeeded() {
        boolean is3gppPsVoiceNetwork = this.mRegMan.getNetworkEvent(this.mPhoneId).voiceOverPs == VoPsIndication.NOT_SUPPORTED ? NetworkUtil.is3gppPsVoiceNetwork(this.mRegMan.getCurrentNetworkByPhoneId(this.mPhoneId)) : false;
        Log.i(LOG_TAG, "isDeregisterWithVoPSNeeded [" + is3gppPsVoiceNetwork + "]");
        return is3gppPsVoiceNetwork;
    }

    protected void setDelayedDeregisterTimerRunning(boolean z) {
        Log.i(LOG_TAG, "setDelayedDeregisterTimerRunning [" + z + "]");
        this.mDelayedDeregisterTimerRunning = z;
        this.mRegMan.setDelayedDeregisterTimerRunning(this.mTask, z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void runDelayedDeregister() {
        if (isDelayedDeregisterTimerRunning()) {
            Log.i(LOG_TAG, "runDelayedDeregister : delete DelayedDeregisterTimer. mState [" + this.mTask.getState() + "]");
            setDelayedDeregisterTimerRunning(false);
            if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                this.mRegMan.addPendingUpdateRegistration(this.mTask, 0);
                return;
            }
            if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED) {
                if (isDeregisterWithVoPSNeeded() || isDeregisterWithRATNeeded()) {
                    this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
                    return;
                } else {
                    this.mRegHandler.sendTryRegister(this.mTask.getPhoneId());
                    return;
                }
            }
            this.mRegHandler.sendTryRegister(this.mTask.getPhoneId());
        }
    }

    protected boolean isDelayedDeregisterTimerRunningWithCallStatus() {
        if (this.mRegMan.getTelephonyCallStatus(this.mPhoneId) == 0 && getCallStatus() != 0 && (isDeregisterWithVoPSNeeded() || isDeregisterWithRATNeeded() || this.mRegMan.getNetworkEvent(this.mPhoneId).outOfService)) {
            Log.i("RegiGvnBase[" + this.mPhoneId + "]", "isDelayedDeregisterTimerRunning: Timer will start soon. return true.");
            return true;
        }
        Log.i("RegiGvnBase[" + this.mPhoneId + "]", "isDelayedDeregisterTimerRunning [" + this.mDelayedDeregisterTimerRunning + "]");
        return this.mDelayedDeregisterTimerRunning;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onTelephonyCallStatusChanged(int i) {
        setCallStatus(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnRequestFailed(PdnFailReason pdnFailReason, int i) {
        this.mHasPdnFailure = true;
    }

    public String toString() {
        return "RegiGvnBase [mMno=" + this.mMno + ", mFailureCounter=" + this.mFailureCounter + ", mIsPermanentStopped=" + this.mIsPermanentStopped + ", mCurPcscfIpIdx=" + this.mCurPcscfIpIdx + ", mNumOfPcscfIp=" + this.mNumOfPcscfIp + ", mCurImpu=" + this.mCurImpu + ", mPcscfIpList=" + this.mPcscfIpList + ", mIsValid=" + this.mIsValid + ", mIPsecAllow=" + this.mIPsecAllow + ", mMoveToNextPcscfAfterTimerB=" + this.mMoveToNextPcscfAfterTimerB + ", mRegiAt=" + this.mRegiAt + ", mHasVoLteCall=" + this.mHasVoLteCall + ", mRegBaseTimeMs=" + this.mRegBaseTimeMs + ", mRegMaxTimeMs=" + this.mRegMaxTimeMs + "]";
    }

    public boolean isWiFiSettingOn() {
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        if (wifiManager == null) {
            return false;
        }
        boolean isWifiEnabled = wifiManager.isWifiEnabled();
        Log.i(LOG_TAG, "WifiManager.isWifiEnabled() : " + isWifiEnabled);
        return isWifiEnabled;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isSrvccCase() {
        int i = this.mRegMan.getNetworkEvent(this.mPhoneId).network;
        return this.mNeedToCheckSrvcc && this.mTask.getRegistrationRat() == 13 && (TelephonyManagerExt.getNetworkClass(i) == 1 || TelephonyManagerExt.getNetworkClass(i) == 2);
    }

    public boolean isEcEnabled(int i) {
        return RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_POST_CALL_AUTH, i)).booleanValue() || RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_SHARED_SKETCH_AUTH, i)).booleanValue() || RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_SHARED_MAP_AUTH, i)).booleanValue();
    }

    protected Set<String> applyImsSwitch(Set<String> set, int i) {
        if (set == null) {
            return new HashSet();
        }
        ISimManager simManager = this.mRegMan.getSimManager(this.mPhoneId);
        if (simManager == null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "applyImsSwitch: sm is null!! retrun empty set");
            return new HashSet();
        }
        boolean isLabSimCard = simManager.isLabSimCard();
        if (!"GCF".equalsIgnoreCase(OmcCode.get()) && !isLabSimCard && this.mTask.getProfile().getPdnType() == 11) {
            ContentValues mnoInfo = simManager.getMnoInfo();
            boolean booleanValue = CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, false);
            boolean booleanValue2 = CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false);
            boolean booleanValue3 = CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, false);
            boolean booleanValue4 = CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, false);
            if (!booleanValue && i != 18) {
                removeService(set, "mmtel", "VoLTE MPS false");
                removeService(set, "mmtel-video", "VoLTE MPS false");
                removeService(set, "smsip", "VoLTE MPS false");
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_MPS_DISABLED.getCode());
            }
            if (!booleanValue2 && i == 18) {
                removeService(set, "mmtel", "Vowifi MPS false");
                removeService(set, "mmtel-video", "Vowifi MPS false");
                removeService(set, "smsip", "Vowifi MPS false");
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_MPS_DISABLED.getCode());
            }
            if (!booleanValue3) {
                removeService(set, "smsip", "SMSIP MPS false");
            }
            if (!booleanValue4) {
                removeService(set, "mmtel-video", "Enable ViLTE MPS false");
            }
        }
        return set;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isNoNextPcscf() {
        boolean z = this.mCurPcscfIpIdx + 1 >= this.mNumOfPcscfIp;
        IMSLog.i(LOG_TAG, "isNoNextPcscf = " + z);
        return z;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getNumOfPcscfIp() {
        return this.mNumOfPcscfIp;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void increasePcscfIdx() {
        int i = this.mNumOfPcscfIp;
        if (i > 0) {
            this.mCurPcscfIpIdx = (this.mCurPcscfIpIdx + 1) % i;
        }
        IMSLog.i(LOG_TAG, this.mTask.getPhoneId(), "increasePcscfIdx: now [" + this.mCurPcscfIpIdx + "]");
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isMatchedPdnFailReason(PdnFailReason pdnFailReason) {
        return !TextUtils.isEmpty(getMatchedPdnFailReasonFromGlobalSettings(pdnFailReason));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public String getMatchedPdnFailReasonFromGlobalSettings(final PdnFailReason pdnFailReason) {
        String[] stringArray = ImsRegistry.getStringArray(this.mTask.getPhoneId(), GlobalSettingsConstants.Registration.PDN_FAIL_REASON_LIST, new String[0]);
        IMSLog.i(LOG_TAG, "getMatchedPdnFailReason: reasons: " + Arrays.toString(stringArray));
        return (String) Arrays.stream(stringArray).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getMatchedPdnFailReasonFromGlobalSettings$3;
                lambda$getMatchedPdnFailReasonFromGlobalSettings$3 = RegistrationGovernorBase.lambda$getMatchedPdnFailReasonFromGlobalSettings$3((String) obj);
                return lambda$getMatchedPdnFailReasonFromGlobalSettings$3;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getMatchedPdnFailReasonFromGlobalSettings$4;
                lambda$getMatchedPdnFailReasonFromGlobalSettings$4 = RegistrationGovernorBase.lambda$getMatchedPdnFailReasonFromGlobalSettings$4((String) obj);
                return lambda$getMatchedPdnFailReasonFromGlobalSettings$4;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getMatchedPdnFailReasonFromGlobalSettings$5;
                lambda$getMatchedPdnFailReasonFromGlobalSettings$5 = RegistrationGovernorBase.lambda$getMatchedPdnFailReasonFromGlobalSettings$5(PdnFailReason.this, (String) obj);
                return lambda$getMatchedPdnFailReasonFromGlobalSettings$5;
            }
        }).findAny().orElse("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getMatchedPdnFailReasonFromGlobalSettings$3(String str) {
        return str.toUpperCase(Locale.US);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getMatchedPdnFailReasonFromGlobalSettings$4(String str) {
        return str.replace(CmcConstants.E_NUM_STR_QUOTE, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getMatchedPdnFailReasonFromGlobalSettings$5(PdnFailReason pdnFailReason, String str) {
        return str.contains(pdnFailReason.name());
    }

    protected void sendRawRequestToTelephony(Context context, byte[] bArr) {
        this.mTelephonyManager.sendRawRequestToTelephony(context, bArr);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public RegistrationConstants.RegisterTaskState getState() {
        return this.mTask.getState();
    }

    protected void setUpsmEventReceiver() {
        Log.i(LOG_TAG, "setUpsmEventReceiver.");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_STATE_CHANGED");
        intentFilter.addAction(SemEmergencyConstantsExt.EMERGENCY_CHECK_ABNORMAL_STATE);
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER");
        this.mContext.registerReceiver(this.mUpsmEventReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void unRegisterIntentReceiver() {
        Log.i(LOG_TAG, "Un-register Intent receiver(s)");
        try {
            this.mContext.unregisterReceiver(this.mUpsmEventReceiver);
            this.mContext.unregisterReceiver(this.mPackageDataClearedIntentReceiver);
        } catch (IllegalArgumentException unused) {
            Log.e(LOG_TAG, "unRegisterIntentReceiver: Receiver not registered!");
        }
    }

    protected int onUltraPowerSavingModeChanged() {
        SemEmergencyManager semEmergencyManager = SemEmergencyManager.getInstance(this.mContext);
        if (semEmergencyManager == null) {
            Log.e(LOG_TAG, "onUltraPowerSavingModeChanged: SemEmergencyManager is null!");
            return -1;
        }
        boolean isEmergencyMode = SemEmergencyManager.isEmergencyMode(this.mContext);
        boolean checkUltraPowerSavingMode = SystemUtil.checkUltraPowerSavingMode(semEmergencyManager);
        Log.i(LOG_TAG, "onUltraPowerSavingModeChanged: emergency=" + isEmergencyMode + ", UPSM=" + checkUltraPowerSavingMode);
        if (isEmergencyMode && checkUltraPowerSavingMode) {
            if (this.mUpsmEnabled) {
                Log.i(LOG_TAG, "EM is already enabled, so skip.");
            } else {
                Log.i(LOG_TAG, "EM is enabled");
                this.mUpsmEnabled = true;
                if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING)) {
                    return 0;
                }
            }
        } else if (this.mUpsmEnabled) {
            Log.i(LOG_TAG, "EM is disabled");
            this.mUpsmEnabled = false;
            if (isThrottled()) {
                releaseThrottle(0);
            }
            return 1;
        }
        return -1;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean checkEmergencyInProgress() {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(this.mPhoneId);
        if (pendingRegistrationInternal == null) {
            return false;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getProfile().hasEmergencySupport() && next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.DEREGISTERING)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToDualRegister(boolean z) {
        if (!SimConstants.DSDS_DI.equals(SimUtil.getConfigDualIMS()) && !z) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : true - Non DSDS_DI");
            return true;
        }
        int oppositeSimSlot = SimUtil.getOppositeSimSlot(this.mPhoneId);
        if (isW2lInProgress(oppositeSimSlot)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : false, other slot is re-registering for W2L handover");
            return false;
        }
        if ((isRegistering(oppositeSimSlot) && checkOwnStateIfNeeded()) || ((isImsPdnConnecting(oppositeSimSlot) && isOwnSlotNotConnected()) || isInCall(oppositeSimSlot))) {
            return isReadyToDualRegisterOnOtherSlotBusy(oppositeSimSlot, z);
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : true");
        return true;
    }

    private boolean isW2lInProgress(int i) {
        return (this.mRegMan.getNetworkEvent(i).isEpdgConnected ^ true) && Optional.ofNullable(RegistrationUtils.getPendingRegistrationInternal(i)).flatMap(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda17
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Optional lambda$isW2lInProgress$7;
                lambda$isW2lInProgress$7 = RegistrationGovernorBase.lambda$isW2lInProgress$7((SlotBasedConfig.RegisterTaskList) obj);
                return lambda$isW2lInProgress$7;
            }
        }).isPresent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Optional lambda$isW2lInProgress$7(SlotBasedConfig.RegisterTaskList registerTaskList) {
        return registerTaskList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isW2lInProgress$6;
                lambda$isW2lInProgress$6 = RegistrationGovernorBase.lambda$isW2lInProgress$6((RegisterTask) obj);
                return lambda$isW2lInProgress$6;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda9
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((RegisterTask) obj).isEpdgHandoverInProgress();
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda10
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((RegisterTask) obj).isUpdateRegistering();
            }
        }).findAny();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isW2lInProgress$6(RegisterTask registerTask) {
        return registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED);
    }

    private boolean isInCall(int i) {
        int callState = this.mTelephonyManager.getCallState(i);
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister: slot " + i + "'s call state: " + callState);
        return callState != 0;
    }

    private boolean isRegistering(final int i) {
        return ((Boolean) Optional.ofNullable(RegistrationUtils.getPendingRegistrationInternal(i)).flatMap(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda21
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Optional lambda$isRegistering$9;
                lambda$isRegistering$9 = RegistrationGovernorBase.lambda$isRegistering$9((SlotBasedConfig.RegisterTaskList) obj);
                return lambda$isRegistering$9;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda22
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isRegistering$10;
                lambda$isRegistering$10 = RegistrationGovernorBase.this.lambda$isRegistering$10(i, (RegisterTask) obj);
                return lambda$isRegistering$10;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Optional lambda$isRegistering$9(SlotBasedConfig.RegisterTaskList registerTaskList) {
        return registerTaskList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda20
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isRegistering$8;
                lambda$isRegistering$8 = RegistrationGovernorBase.lambda$isRegistering$8((RegisterTask) obj);
                return lambda$isRegistering$8;
            }
        }).findAny();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isRegistering$8(RegisterTask registerTask) {
        return registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.DEREGISTERING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$isRegistering$10(int i, RegisterTask registerTask) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister: slot " + i + " is registering");
        return Boolean.TRUE;
    }

    private boolean checkOwnStateIfNeeded() {
        Mno mno = this.mTask.getMno();
        if (!mno.isIndia() && !mno.isVietnam()) {
            return true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : Own slot is REGISTERING or CONNECTED and other slot is REGISTERING");
        return this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.DEREGISTERING, RegistrationConstants.RegisterTaskState.CONNECTED);
    }

    private boolean isImsPdnConnecting(int i) {
        return isInServiceOnCellular(i) && hasImsConnectingTask(i);
    }

    private boolean isInServiceOnCellular(int i) {
        NetworkEvent networkEvent = this.mRegMan.getNetworkEvent(i);
        return (networkEvent.outOfService || networkEvent.network == 18) ? false : true;
    }

    private boolean hasImsConnectingTask(final int i) {
        return ((Boolean) Optional.ofNullable(RegistrationUtils.getPendingRegistrationInternal(i)).flatMap(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda15
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Optional lambda$hasImsConnectingTask$14;
                lambda$hasImsConnectingTask$14 = RegistrationGovernorBase.lambda$hasImsConnectingTask$14((SlotBasedConfig.RegisterTaskList) obj);
                return lambda$hasImsConnectingTask$14;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda16
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$hasImsConnectingTask$15;
                lambda$hasImsConnectingTask$15 = RegistrationGovernorBase.this.lambda$hasImsConnectingTask$15(i, (RegisterTask) obj);
                return lambda$hasImsConnectingTask$15;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Optional lambda$hasImsConnectingTask$14(SlotBasedConfig.RegisterTaskList registerTaskList) {
        return registerTaskList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasImsConnectingTask$11;
                lambda$hasImsConnectingTask$11 = RegistrationGovernorBase.lambda$hasImsConnectingTask$11((RegisterTask) obj);
                return lambda$hasImsConnectingTask$11;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasImsConnectingTask$12;
                lambda$hasImsConnectingTask$12 = RegistrationGovernorBase.lambda$hasImsConnectingTask$12((RegisterTask) obj);
                return lambda$hasImsConnectingTask$12;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasImsConnectingTask$13;
                lambda$hasImsConnectingTask$13 = RegistrationGovernorBase.lambda$hasImsConnectingTask$13((RegisterTask) obj);
                return lambda$hasImsConnectingTask$13;
            }
        }).findAny();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasImsConnectingTask$11(RegisterTask registerTask) {
        return registerTask.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasImsConnectingTask$12(RegisterTask registerTask) {
        return registerTask.getPdnType() == 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasImsConnectingTask$13(RegisterTask registerTask) {
        return !registerTask.getGovernor().hasPdnFailure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$hasImsConnectingTask$15(int i, RegisterTask registerTask) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister: slot " + i + " is connecting");
        return Boolean.TRUE;
    }

    private boolean isOwnSlotNotConnected() {
        return this.mTask.getProfile().getPdnType() == 11 && this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTING);
    }

    private boolean isReadyToDualRegisterOnOtherSlotBusy(int i, boolean z) {
        int subId = SimUtil.getSubId(i);
        if (this.mPdnController.isEpdgConnected(i) && this.mTelephonyManager.getDataNetworkType(subId) == 18) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : true - other slot is EPDG Call or Registering");
            return true;
        }
        if (this.mTask.getProfile().hasEmergencySupport()) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : true - The slot will make E911 call");
            return true;
        }
        if (RegistrationRatDecider.getDecidedRat(this.mContext, this.mTask, this.mPdnController, this.mVsm) == 18 && !z) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : true - This slot is going to register VoWifi");
            return true;
        }
        if (this.mTask.isRcsOnly()) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : true - This slot is going to register RCS only profile");
            return true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToDualRegister : false");
        return false;
    }

    protected Set<String> applyMmtelUserSettings(Set<String> set, int i) {
        if (set == null) {
            return new HashSet();
        }
        if (getVoiceTechType() == 0 || this.mTask.getRegistrationRat() == 18) {
            return set;
        }
        Log.i(LOG_TAG, "by VoLTE OFF, remove all service, RAT :" + this.mTask.getRegistrationRat());
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF.getCode());
        return new HashSet();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public String getUpdateRegiPendingReason(int i, NetworkEvent networkEvent, boolean z, boolean z2) {
        int pdnType = this.mTask.getProfile().getPdnType();
        boolean z3 = pdnType == 11;
        if (!z2 && !isReadyToRegister(i)) {
            return "Governor is not ready";
        }
        if (!z2 && z3 && isCellIdentityUnavailable(networkEvent.network)) {
            return "CellInfo is not yet updated";
        }
        if (!isSrvccCase() && this.mTask.isSuspended()) {
            return "suspended and not SRVCC";
        }
        if (networkEvent.outOfService) {
            if (z3 || pdnType == 15) {
                return "OOS";
            }
            if (!this.mPdnController.isWifiConnected()) {
                return "OOS and WiFi is not connected";
            }
        } else if (z2 && this.mTask.mIsUpdateRegistering) {
            return "Immediate update registration triggered but it's under update registering";
        }
        return "";
    }

    protected boolean isCellIdentityUnavailable(int i) {
        if (i == 18) {
            return false;
        }
        CellIdentityWrapper currentCellIdentity = this.mPdnController.getCurrentCellIdentity(this.mPhoneId, i);
        IMSLog.i(LOG_TAG, this.mPhoneId, "isCellIdentityUnavailable: rat " + i + " -> " + currentCellIdentity);
        return currentCellIdentity == CellIdentityWrapper.DEFAULT;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean determineDeRegistration(int i, int i2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "isNeedToDeRegistration:");
        boolean z = this.mTelephonyManager.getCallState() != 0;
        if (i == 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isNeedToDeRegistration: no IMS service for network " + i2 + ". Deregister.");
            this.mTask.setReason("no IMS service for network : " + i2);
            this.mTask.setDeregiReason(4);
            this.mRegMan.tryDeregisterInternal(this.mTask, false, false);
            return true;
        }
        if (RegistrationUtils.supportCsTty(this.mTask) && SlotBasedConfig.getInstance(this.mPhoneId).getTTYMode() && !z) {
            this.mTask.setReason("TTY enabled");
            this.mTask.setDeregiReason(75);
            this.mRegMan.tryDeregisterInternal(this.mTask, false, false);
            return true;
        }
        if (!ConfigUtil.isRcsEur(this.mMno) || !this.mTask.isRcsOnly() || this.mTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERED || i != 18 || this.mTask.getRegistrationRat() == 18) {
            return false;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "determineDeRegistration:  WiFi is connected.");
        this.mTask.setDeregiReason(4);
        this.mRegMan.tryDeregisterInternal(this.mTask, true, false);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean updateGeolocation(java.lang.String r7) {
        /*
            r6 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            r1 = 0
            if (r0 != 0) goto L27
            java.lang.String r0 = r6.mCountry
            boolean r0 = r7.equalsIgnoreCase(r0)
            if (r0 != 0) goto L27
            com.sec.internal.ims.core.RegisterTask r0 = r6.mTask
            com.sec.ims.settings.ImsProfile r0 = r0.getProfile()
            int r0 = r0.getSupportedGeolocationPhase()
            r2 = 1
            if (r0 < r2) goto L27
            boolean r0 = r6.isThrottled()
            if (r0 == 0) goto L28
            r0 = 6
            r6.releaseThrottle(r0)
            goto L28
        L27:
            r2 = r1
        L28:
            com.sec.internal.ims.core.RegisterTask r0 = r6.mTask
            int r0 = r0.getPhoneId()
            com.sec.internal.ims.core.RegistrationManagerInternal r3 = r6.mRegMan
            com.sec.internal.constants.ims.os.NetworkEvent r3 = r3.getNetworkEvent(r0)
            boolean r4 = android.text.TextUtils.isEmpty(r7)
            if (r4 != 0) goto L42
            java.lang.String r4 = r6.mCountry
            boolean r4 = r7.equalsIgnoreCase(r4)
            if (r4 == 0) goto L50
        L42:
            boolean r4 = android.text.TextUtils.isEmpty(r7)
            if (r4 == 0) goto L92
            java.lang.String r4 = r6.mCountry
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L92
        L50:
            com.sec.internal.ims.core.RegisterTask r4 = r6.mTask
            com.sec.ims.settings.ImsProfile r4 = r4.getProfile()
            int r4 = r4.getPdnType()
            r5 = 11
            if (r4 != r5) goto L90
            com.sec.internal.ims.core.RegisterTask r4 = r6.mTask
            com.sec.internal.constants.ims.core.RegistrationConstants$RegisterTaskState r4 = r4.getState()
            com.sec.internal.constants.ims.core.RegistrationConstants$RegisterTaskState r5 = com.sec.internal.constants.ims.core.RegistrationConstants.RegisterTaskState.REGISTERED
            if (r4 != r5) goto L90
            com.sec.internal.ims.core.RegisterTask r4 = r6.mTask
            boolean r4 = r4.mIsUpdateRegistering
            if (r4 != 0) goto L90
            boolean r3 = r3.isEpdgConnected
            if (r3 == 0) goto L90
            java.lang.String r3 = "RegiGvnBase"
            java.lang.String r4 = "updateRegistration as Country Code change"
            com.sec.internal.log.IMSLog.i(r3, r0, r4)
            com.sec.internal.ims.core.RegistrationManagerInternal r3 = r6.mRegMan
            r3.updatePani(r0)
            com.sec.internal.ims.core.RegisterTask r0 = r6.mTask
            java.lang.String r3 = "update location"
            r0.setReason(r3)
            com.sec.internal.ims.core.RegistrationManagerInternal r0 = r6.mRegMan
            com.sec.internal.ims.core.RegisterTask r3 = r6.mTask
            com.sec.internal.constants.ims.core.RegistrationConstants$UpdateRegiReason r4 = com.sec.internal.constants.ims.core.RegistrationConstants.UpdateRegiReason.GEOLOCATION_CHANGED_FORCED
            r0.updateRegistration(r3, r4, r1)
        L90:
            r6.mCountry = r7
        L92:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationGovernorBase.updateGeolocation(java.lang.String):boolean");
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public RegisterTask onManualDeregister(boolean z) {
        int phoneId = this.mTask.getPhoneId();
        ImsProfile profile = this.mTask.getProfile();
        boolean z2 = true;
        if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
            boolean hasEmergencySupport = profile.hasEmergencySupport();
            IMSLog.i(LOG_TAG, phoneId, "onManualDeregister: emergency: " + hasEmergencySupport + ", explicit dereg: " + z);
            this.mTask.setReason("manual deregi");
            this.mTask.setDeregiReason(22);
            RegistrationManagerInternal registrationManagerInternal = this.mRegMan;
            RegisterTask registerTask = this.mTask;
            if (z && !hasEmergencySupport) {
                z2 = false;
            }
            registrationManagerInternal.tryDeregisterInternal(registerTask, z2, false);
            return null;
        }
        RegisterTask registerTask2 = this.mTask;
        RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.CONNECTING;
        RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.CONNECTED;
        if (registerTask2.isOneOf(registerTaskState, registerTaskState2)) {
            IMSLog.i(LOG_TAG, phoneId, "onManualDeregister: disconnecting PDN network " + this.mTask.getPdnType());
            this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            if (profile.hasEmergencySupport() || RegistrationUtils.isCmcProfile(profile)) {
                return this.mTask;
            }
            return null;
        }
        if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.EMERGENCY) || (this.mTask.getState() == RegistrationConstants.RegisterTaskState.DEREGISTERING && this.mTask.getUserAgent() == null)) {
            IMSLog.i(LOG_TAG, phoneId, "onManualDeregister: disconnect Emergency PDN.");
            this.mTask.setReason("manual deregi(EPDN)");
            this.mTask.setDeregiReason(30);
            RegistrationConstants.RegisterTaskState state = this.mTask.getState();
            RegistrationConstants.RegisterTaskState registerTaskState3 = RegistrationConstants.RegisterTaskState.DEREGISTERING;
            if (state != registerTaskState3) {
                this.mRegMan.tryDeregisterInternal(this.mTask, true, false);
            }
            this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            if (this.mTask.getState() == registerTaskState3) {
                if (this.mTask.needKeepEmergencyTask()) {
                    this.mTask.keepEmergencyTask(false);
                    return null;
                }
                if (RegistrationUtils.isCmcProfile(this.mTask.getProfile())) {
                    return null;
                }
                return this.mTask;
            }
            return this.mTask;
        }
        if (!this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONFIGURING, RegistrationConstants.RegisterTaskState.CONFIGURED, registerTaskState2) || !SlotBasedConfig.getInstance(phoneId).getExtendedProfiles().containsKey(Integer.valueOf(profile.getId()))) {
            return null;
        }
        this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
        return this.mTask;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean hasEmergencyTaskInPriority(List<? extends IRegisterTask> list) {
        return (this.mMno.isCanada() || this.mMno.isOneOf(Mno.OPTUS, Mno.TELSTRA, Mno.TELIA_NORWAY, Mno.EE, Mno.EE_ESN, Mno.CTC, Mno.CTCMO, Mno.CHT)) && list.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda11
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasEmergencyTaskInPriority$16;
                lambda$hasEmergencyTaskInPriority$16 = RegistrationGovernorBase.lambda$hasEmergencyTaskInPriority$16((IRegisterTask) obj);
                return lambda$hasEmergencyTaskInPriority$16;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda12
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IRegisterTask) obj).getProfile();
            }
        }).anyMatch(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda13
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ImsProfile) obj).hasEmergencySupport();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasEmergencyTaskInPriority$16(IRegisterTask iRegisterTask) {
        return iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.REGISTERING);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean needPendingPdnConnected() {
        ImsProfile profile = this.mTask.getProfile();
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(this.mPhoneId);
        if (pendingRegistrationInternal == null || profile.hasEmergencySupport() || !hasEmergencyTaskInPriority(pendingRegistrationInternal)) {
            return false;
        }
        RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(22, this.mTask), 500L);
        Log.i(LOG_TAG, "onPdnConnected: delay " + profile.getName() + " due to priority of Emergency.");
        return true;
    }

    protected void updateVolteState() {
        String matchedSalesCode = this.mMno.getMatchedSalesCode(OmcCode.getNWCode(this.mPhoneId));
        if (("ACG".equals(matchedSalesCode) || "LRA".equals(matchedSalesCode)) && SimUtil.isDualIMS()) {
            int voiceTechType = getVoiceTechType(this.mPhoneId);
            IMSLog.i(LOG_TAG, this.mPhoneId, "updateVolteState for ACG/LRA DSDS : voiceTech : " + voiceTechType);
            SemTelephonyAdapter.sendVolteState(this.mPhoneId, voiceTechType == 0);
        }
    }

    protected void handleTimeOutEmerRegiError() {
        boolean isPdnConnected = this.mRegMan.isPdnConnected(this.mTask.getProfile(), this.mPhoneId);
        if (getFailureCount() >= getNumOfEmerPcscfIp() || !isPdnConnected) {
            IUserAgent userAgent = this.mTask.getUserAgent();
            if (userAgent != null) {
                userAgent.notifyE911RegistrationFailed();
            }
            if (isPdnConnected) {
                return;
            }
            RegistrationUtils.sendEmergencyRegistrationFailed(this.mTask);
            resetRetry();
            return;
        }
        this.mRegHandler.requestTryEmergencyRegister(this.mTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkUnProcessedVoLTEState$17(ScheduledFuture scheduledFuture) {
        return !scheduledFuture.isDone();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void checkUnProcessedVoLTEState() {
        Optional.ofNullable(this.mDelayedVolteOffFuture).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda18
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkUnProcessedVoLTEState$17;
                lambda$checkUnProcessedVoLTEState$17 = RegistrationGovernorBase.lambda$checkUnProcessedVoLTEState$17((ScheduledFuture) obj);
                return lambda$checkUnProcessedVoLTEState$17;
            }
        }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorBase$$ExternalSyntheticLambda19
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationGovernorBase.this.lambda$checkUnProcessedVoLTEState$18((ScheduledFuture) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUnProcessedVoLTEState$18(ScheduledFuture scheduledFuture) {
        IMSLog.i(LOG_TAG, this.mPhoneId, this.mTask, "checkUnProcessedVoLTEState: Send pending VoLTE state now");
        scheduledFuture.cancel(false);
        SemTelephonyAdapter.sendVolteState(this.mPhoneId, false);
    }

    protected void onPdnFailCounterInNr() {
        if (this.mRegMan.getCurrentNetworkByPhoneId(this.mPhoneId) == 20 && this.mTask.getPdnType() == 11) {
            int i = this.mPdnRejectCounter + 1;
            this.mPdnRejectCounter = i;
            if (i >= 3) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "notifyImsNotAvailable");
                this.mRegMan.notifyImsNotAvailable(this.mTask, true);
                this.mPdnRejectCounter = 0;
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getNumOfEmerPcscfIp() {
        return this.mNumOfPcscfIp;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onAdsChanged(int i) {
        updateVolteState();
        if (this.mMno.isUSA()) {
            this.mRegMan.updateRegistration(this.mTask, RegistrationConstants.UpdateRegiReason.ADS_CHANGED);
        }
    }

    protected void forceTurnOnVoLte() {
        if (ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, this.mPhoneId) != 0) {
            Log.i(LOG_TAG, "forceTurnOnVoLte : voicecall_type is not 0, force enable");
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, 0, this.mPhoneId);
        }
    }

    protected void forceTurnOnVoLteWhenMenuRemoved() {
        if (this.mIsVoLteMenuRemoved) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "forceTurnOnVoLteWhenMenuRemoved: ");
            forceTurnOnVoLte();
        }
    }
}
