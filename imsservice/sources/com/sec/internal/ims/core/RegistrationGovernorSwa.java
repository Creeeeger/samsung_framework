package com.sec.internal.ims.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorSwa;
import com.sec.internal.constants.ims.core.PdnFailReason;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.SemTelephonyAdapter;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class RegistrationGovernorSwa extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnSwa";
    ScheduledExecutorService mVolteOffExecutor;

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkRoamingStatus(int i) {
        return true;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isLocationInfoLoaded(int i) {
        return true;
    }

    public RegistrationGovernorSwa(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        this.mVolteOffExecutor = Executors.newSingleThreadScheduledExecutor();
        this.mHandlePcscfOnAlternativeCall = true;
        this.mNeedToCheckSrvcc = true;
        this.mNeedToCheckLocationSetting = false;
        int i = this.mPhoneId;
        SemTelephonyAdapter.sendVolteState(i, getVoiceTechType(i) == 0);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkCallStatus() {
        int phoneId = this.mTask.getPhoneId();
        if (!this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) || this.mRegMan.getTelephonyCallStatus(phoneId) == 0 || this.mTask.isEpdgHandoverInProgress()) {
            return true;
        }
        Mno mno = this.mMno;
        if (mno != Mno.AIRTEL && mno != Mno.BSNL && isSrvccCase()) {
            IMSLog.i(LOG_TAG, phoneId, "isReadyToRegister: SRVCC case");
            return true;
        }
        IMSLog.i(LOG_TAG, phoneId, "isReadyToRegister: call state is not idle");
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void releaseThrottle(int i) {
        if (i == 1) {
            this.mIsPermanentStopped = false;
            this.mIsPermanentPdnFailed = false;
            this.mNonVoLTESimByPdnFail = false;
        } else if (i == 4) {
            this.mIsPermanentStopped = false;
            this.mIsPermanentPdnFailed = false;
            this.mCurImpu = 0;
            this.mNonVoLTESimByPdnFail = false;
        } else if (i == 11) {
            this.mIsPermanentStopped = false;
            this.mIsPermanentPdnFailed = false;
            this.mNonVoLTESimByPdnFail = false;
        }
        if (this.mIsPermanentStopped && this.mIsPermanentPdnFailed) {
            return;
        }
        Log.i("RegiGvnSwa[" + this.mTask.getPhoneId() + "]", "releaseThrottle: case by " + i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        if (isImsDisabled()) {
            return new HashSet();
        }
        Set<String> hashSet = new HashSet<>();
        HashSet hashSet2 = new HashSet(set);
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "volte", this.mPhoneId) == 1) {
            Set<String> servicesByImsSwitch = servicesByImsSwitch(ImsProfile.getVoLteServiceList());
            if (!servicesByImsSwitch.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_IMS_SWITCH_OFF.getCode());
            }
            hashSet.addAll(servicesByReadSwitch((String[]) servicesByImsSwitch.toArray(new String[servicesByImsSwitch.size()])));
            if (servicesByImsSwitch.contains("mmtel") && !hashSet.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_DM_OFF.getCode());
            }
        }
        if (this.mConfigModule.isValidAcsVersion(this.mPhoneId)) {
            Set<String> servicesByImsSwitch2 = servicesByImsSwitch(ImsProfile.getRcsServiceList());
            hashSet.addAll(servicesByReadSwitch((String[]) servicesByImsSwitch2.toArray(new String[servicesByImsSwitch2.size()])));
        }
        if (hashSet.isEmpty()) {
            return hashSet;
        }
        if ((i == 13 || i == 20) && this.mTask.getProfile().getPdnType() == 11) {
            hashSet = applyVoPsPolicy(hashSet);
            if (hashSet.isEmpty()) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.VOPS_OFF.getCode());
                return hashSet;
            }
        }
        if (this.mRegMan.getNetworkEvent(this.mPhoneId).isDataRoaming && this.mTask.getProfile().getPdnType() == 11 && !this.mTask.getProfile().isAllowedOnRoaming() && i != 18) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "filterEnabledCoreService: Roaming not support.");
            return new HashSet();
        }
        if (this.mTask.getProfile().getPdnType() == 11) {
            hashSet = applyMmtelUserSettings(hashSet, i);
        }
        if (!hashSet2.isEmpty()) {
            hashSet2.retainAll(hashSet);
        }
        if (!(ImsConstants.SystemSettings.getVideoCallType(this.mContext, -1, this.mPhoneId) == 0) && this.mTask.getProfile().getPdnType() == 11) {
            removeService(hashSet2, "mmtel-video", "VideoSetting off");
        }
        return hashSet2;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnRequestFailed(PdnFailReason pdnFailReason, int i) {
        boolean z;
        super.onPdnRequestFailed(pdnFailReason, i);
        if (!NetworkUtil.is3gppPsVoiceNetwork(this.mRegMan.getCurrentNetworkByPhoneId(this.mPhoneId))) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "onPdnRequestFailed ignore in non LTE/NR");
            return;
        }
        String matchedPdnFailReasonFromGlobalSettings = getMatchedPdnFailReasonFromGlobalSettings(pdnFailReason);
        if (TextUtils.isEmpty(matchedPdnFailReasonFromGlobalSettings)) {
            z = false;
        } else {
            setRetryTimeOnPdnFail(matchedPdnFailReasonFromGlobalSettings.indexOf(":") != -1 ? Long.parseLong(matchedPdnFailReasonFromGlobalSettings.substring(matchedPdnFailReasonFromGlobalSettings.indexOf(":") + 1, matchedPdnFailReasonFromGlobalSettings.length())) : -1L);
            z = true;
        }
        if (z) {
            this.mRegMan.notifyImsNotAvailable(this.mTask, true, true);
            this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            this.mIsPermanentStopped = true;
            return;
        }
        onPdnFailCounterInNr();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        Log.e(LOG_TAG, "onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " mIsPermanentStopped " + this.mIsPermanentStopped);
        if (j < 0) {
            j = 0;
        }
        if (SipErrorSwa.AKA_CHANLENGE_TIMEOUT.equals(sipError)) {
            Log.e(LOG_TAG, "onRegistrationError: Permanently prohibited.");
            this.mTask.setDeregiReason(71);
            this.mIsPermanentStopped = true;
            resetPcscfList();
            this.mRegMan.deregister(this.mTask, true, false, "Aka challenge timeout");
            this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            this.mRegMan.getEventLog().logAndAdd("onRegistrationError : " + sipError + ", fail count : " + this.mFailureCounter);
            return;
        }
        super.onRegistrationError(sipError, j, z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected void handleForbiddenError(long j) {
        super.handleForbiddenError(j);
        if (this.mIsPermanentStopped && this.mTask.getProfile().getPdnType() == 11) {
            this.mRegMan.notifyImsNotAvailable(this.mTask, true, true);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void startTimsTimer(String str) {
        if (this.mTask.getPdnType() != 11) {
            Log.i(LOG_TAG, "If not IMS PDN, no need to start TimsTimer");
            return;
        }
        Log.i(LOG_TAG, "startTimsTimer : " + this.mTask.getProfile().getName() + "(" + this.mTask.getState() + ") Pdn(" + this.mTask.getPdnType() + "," + this.mPdnController.isConnected(this.mTask.getPdnType(), this.mTask) + ")");
        long j = 120000;
        if (!RegistrationConstants.REASON_IMS_PDN_REQUEST.equals(str)) {
            if (this.mTimEshtablishTimeout != null && RegistrationConstants.REASON_IMS_PDN_REQUEST.equals(this.mTimEshtablishTimeoutReason)) {
                stopTimsTimer(RegistrationConstants.REASON_IMS_PDN_REQUEST);
            }
            if (!CollectionUtils.isNullOrEmpty(this.mPcscfIpList)) {
                j = this.mPcscfIpList.size() * this.mTask.getProfile().getTimerF();
            }
        }
        startTimsEstablishTimer(this.mTask, j, str);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void stopTimsTimer(String str) {
        stopTimsEstablishTimer(this.mTask, str);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        super.onRegistrationDone();
        stopTimsTimer(RegistrationConstants.REASON_REGISTERED);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onVolteSettingChanged() {
        if (this.mTask.isRcsOnly()) {
            IMSLog.e(LOG_TAG, this.mPhoneId, this.mTask, "onVolteSettingChanged: Ignore");
            return;
        }
        boolean z = getVoiceTechType(this.mPhoneId) == 0;
        IMSLog.i(LOG_TAG, this.mPhoneId, this.mTask, "onVolteSettingChanged: " + z);
        if (z) {
            Optional.ofNullable(this.mDelayedVolteOffFuture).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorSwa$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$onVolteSettingChanged$0;
                    lambda$onVolteSettingChanged$0 = RegistrationGovernorSwa.lambda$onVolteSettingChanged$0((ScheduledFuture) obj);
                    return lambda$onVolteSettingChanged$0;
                }
            }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorSwa$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((ScheduledFuture) obj).cancel(false);
                }
            });
            SemTelephonyAdapter.sendVolteState(this.mPhoneId, true);
            return;
        }
        long deregistrationTimeout = IRegistrationManager.getDeregistrationTimeout(this.mTask.getProfile(), this.mTask.getRegistrationRat()) * 2;
        IMSLog.i(LOG_TAG, this.mPhoneId, this.mTask, "onVolteSettingChanged: Pending sendVolteState in " + deregistrationTimeout + "msec");
        this.mDelayedVolteOffFuture = this.mVolteOffExecutor.schedule(new Runnable() { // from class: com.sec.internal.ims.core.RegistrationGovernorSwa$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RegistrationGovernorSwa.this.lambda$onVolteSettingChanged$2();
            }
        }, deregistrationTimeout, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onVolteSettingChanged$0(ScheduledFuture scheduledFuture) {
        return !scheduledFuture.isDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onVolteSettingChanged$2() {
        SemTelephonyAdapter.sendVolteState(this.mPhoneId, false);
    }
}
