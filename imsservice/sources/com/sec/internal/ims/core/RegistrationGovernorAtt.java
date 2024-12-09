package com.sec.internal.ims.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.core.PdnFailReason;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class RegistrationGovernorAtt extends RegistrationGovernorBase {
    protected static final long DEFAULT_TIMS_TIMER_MS = 300000;
    private static final String LOG_TAG = "RegiGvnAtt";
    protected boolean mIsIpmeDisabledBySipForbidden;

    public RegistrationGovernorAtt(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        this.mIsIpmeDisabledBySipForbidden = false;
        ImsConstants.SystemSettings.setVoiceCallType(context, 0, registerTask.getPhoneId());
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationTerminated(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationTerminated: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j);
        this.mFailureCounter = 0;
        this.mCurPcscfIpIdx = 0;
        startRetryTimer(1000L);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd(this.mPhoneId, "onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " mIsPermanentStopped " + this.mIsPermanentStopped);
        if (SipErrorBase.EMPTY_PCSCF.equals(sipError)) {
            resetRetry();
            handlePcscfError();
            return;
        }
        if (j < 0) {
            j = 0;
        }
        if (this.mTask.getProfile().hasEmergencySupport() && SipErrorBase.SIP_TIMEOUT.equals(sipError) && this.mTask.getProfile().getE911RegiTime() > 0) {
            this.mFailureCounter++;
            this.mCurPcscfIpIdx++;
            handleTimeOutEmerRegiError();
            return;
        }
        if (SipErrorBase.USE_PROXY.equals(sipError)) {
            int i = this.mCurPcscfIpIdx;
            Log.i(LOG_TAG, "usedPcscf : " + i);
            this.mCurPcscfIpIdx = i > 0 ? 0 : 1;
        } else if (!z) {
            this.mCurPcscfIpIdx++;
        }
        if (this.mCurPcscfIpIdx >= this.mNumOfPcscfIp) {
            this.mFailureCounter++;
            this.mCurPcscfIpIdx = 0;
            if (j == 0) {
                j = getWaitTime();
            }
        }
        if (j > 0) {
            startRetryTimer(j);
        } else {
            this.mRegHandler.sendTryRegister(this.mPhoneId, 1000L);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        super.onRegistrationDone();
        stopTimsEstablishTimer(this.mTask, RegistrationConstants.REASON_REGISTERED);
        if (this.mIsIpmeDisabledBySipForbidden) {
            this.mIsIpmeDisabledBySipForbidden = false;
            Log.i(LOG_TAG, "onRegistrationDone: reset IPME after forbidden");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0238  */
    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Set<java.lang.String> filterService(java.util.Set<java.lang.String> r17, int r18) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationGovernorAtt.filterService(java.util.Set, int):java.util.Set");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$filterService$0(List list, String str) {
        return !list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filterService$1(Set set, String str) {
        removeService(set, str, "Disable from ACS.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$filterService$2(List list, String str) {
        return !list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filterService$3(Set set, String str) {
        removeService(set, str, "Disable from singleregi");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$filterService$4(List list, String str) {
        return !list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filterService$5(Set set, String str) {
        removeService(set, str, "Disable from ACS.");
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        Log.i(LOG_TAG, "onSipError: service=" + str + " error=" + sipError);
        this.mIsValid = this.mNumOfPcscfIp > 0;
        if ("mmtel".equals(str)) {
            if (SipErrorBase.SIP_INVITE_TIMEOUT.equals(sipError) || SipErrorBase.SIP_TIMEOUT.equals(sipError) || SipErrorBase.FORBIDDEN.equals(sipError) || SipErrorBase.SERVER_TIMEOUT.equals(sipError)) {
                this.mTask.setDeregiReason(43);
                this.mRegMan.deregister(this.mTask, true, this.mIsValid, "Sip Error[MMTEL]. DeRegister..");
            }
        } else if (("im".equals(str) || "ft".equals(str)) && ((ImsUtil.isSingleRegiAppConnected(this.mPhoneId) && sipError.getCode() == 403) || (SipErrorBase.FORBIDDEN_SERVICE_NOT_AUTHORISED.equals(sipError) && ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, this.mPhoneId) == 1))) {
            Log.i(LOG_TAG, "onSipError: [IPME] try re-register after forbidden");
            this.mIsIpmeDisabledBySipForbidden = true;
            this.mRegMan.updateChatService(this.mPhoneId, 1);
        }
        return sipError;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean allowRoaming() {
        return this.mTask.getProfile().isAllowedOnRoaming() && getVoiceTechType() == 0;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkCallStatus() {
        int registrationRat = this.mTask.getRegistrationRat();
        if (this.mRegMan.getTelephonyCallStatus(this.mPhoneId) == 0) {
            return true;
        }
        return (registrationRat == 10 || registrationRat == 3) && !SlotBasedConfig.getInstance(this.mPhoneId).getTTYMode();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        return checkEmergencyStatus() || (checkCallStatus() && checkRegiStatus());
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void releaseThrottle(int i) {
        if (i == 0) {
            this.mIsPermanentStopped = false;
        } else if (i == 1 || i == 9) {
            this.mIsPermanentStopped = false;
            this.mFailureCounter = 0;
            this.mRegiAt = 0L;
            stopRetryTimer();
        }
        if (this.mIsPermanentStopped) {
            return;
        }
        Log.i(LOG_TAG, "releaseThrottle: case by " + i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnRequestFailed(PdnFailReason pdnFailReason, int i) {
        super.onPdnRequestFailed(pdnFailReason, i);
        if (!isMatchedPdnFailReason(pdnFailReason) || this.mTask.getRegistrationRat() == 18) {
            return;
        }
        if (!DeviceUtil.isApAssistedMode() || i == 1) {
            Log.i(LOG_TAG, "send ImsNotAvailable");
            this.mIsPermanentStopped = pdnFailReason != PdnFailReason.PDN_MAX_TIMEOUT;
            this.mRegMan.notifyImsNotAvailable(this.mTask, true);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void updatePcscfIpList(List<String> list) {
        if (list == null) {
            Log.e(LOG_TAG, "updatePcscfIpList: null P-CSCF list!");
            return;
        }
        int size = list.size();
        this.mNumOfPcscfIp = size;
        this.mPcscfIpList = list;
        this.mCurPcscfIpIdx = 0;
        this.mIsValid = size > 0;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isLocationInfoLoaded(int i) {
        if (i != 18 || this.mTask.getProfile().getSupportedGeolocationPhase() < 2 || !this.mRegMan.isVoWiFiSupported(this.mPhoneId)) {
            return true;
        }
        IMSLog.e(LOG_TAG, this.mPhoneId, "update geo location");
        Optional.ofNullable(ImsRegistry.getGeolocationController()).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorAtt$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationGovernorAtt.this.lambda$isLocationInfoLoaded$6((IGeolocationController) obj);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isLocationInfoLoaded$6(IGeolocationController iGeolocationController) {
        iGeolocationController.startGeolocationUpdate(this.mPhoneId, false);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnConnecting(int i) {
        toggleTimsTimerByPdnTransport(i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void startTimsTimer(String str) {
        startTimsEstablishTimer(this.mTask, DEFAULT_TIMS_TIMER_MS, str);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void stopTimsTimer(String str) {
        stopTimsEstablishTimer(this.mTask, str);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public String getUpdateRegiPendingReason(int i, NetworkEvent networkEvent, boolean z, boolean z2) {
        String updateRegiPendingReason = super.getUpdateRegiPendingReason(i, networkEvent, z, z2);
        return (z2 || z || !TextUtils.isEmpty(updateRegiPendingReason) || !this.mRegHandler.hasMessages(139, Integer.valueOf(this.mPhoneId))) ? updateRegiPendingReason : "Ignore by postponed update registration event by dma change";
    }
}
