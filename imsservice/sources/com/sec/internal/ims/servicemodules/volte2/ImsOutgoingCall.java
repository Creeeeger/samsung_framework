package com.sec.internal.ims.servicemodules.volte2;

import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.os.SystemClock;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.mdmi.MdmiServiceModule;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class ImsOutgoingCall extends CallState {
    ImsOutgoingCall(CallStateMachine callStateMachine) {
        super(callStateMachine);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        Mno mno;
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.errorCode = -1;
        callStateMachine.errorMessage = "";
        callStateMachine.mTryingReceived = false;
        callStateMachine.callType = this.mSession.getCallProfile().getCallType();
        startTimer_OutgoingCall();
        start100Timer_OutgoingCall();
        Log.i(this.LOG_TAG, "Enter [OutgoingCall]");
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration == null || imsRegistration.getImsProfile() == null) {
            return;
        }
        if ((this.mRegistration.getImsProfile().getUsePrecondition() != 0) && ((mno = this.mMno) == Mno.ATT || mno.isOneOf(Mno.TMOUS, Mno.DISH))) {
            return;
        }
        CallStateMachine callStateMachine2 = this.mCsm;
        int determineCamera = callStateMachine2.determineCamera(callStateMachine2.callType, false);
        if (determineCamera >= 0) {
            this.mSession.startCamera(determineCamera);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0186, code lost:
    
        if (dbrLost_OutgoingCall(r6) != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x017f, code lost:
    
        if (terminate_OutgoingCall(r6) != false) goto L70;
     */
    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean processMessage(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsOutgoingCall.processMessage(android.os.Message):boolean");
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void exit() {
        this.mCsm.removeMessages(203);
        this.mCsm.removeMessages(208);
        this.mCsm.removeMessages(301);
        this.mCsm.setPreviousState(this);
    }

    private void startTimer_OutgoingCall() {
        String dialingNumber = this.mSession.getCallProfile().getDialingNumber();
        if (isNeedToStartVZWTimer()) {
            Log.i(this.LOG_TAG, "[OutgoingCall] start Timer_VZW " + getTimerVzw() + " msec.");
            this.mCsm.sendMessageDelayed(301, (long) getTimerVzw());
            return;
        }
        Mno mno = this.mMno;
        if (mno == Mno.KDDI && this.mCsm.callType != 12) {
            Log.i(this.LOG_TAG, "[OutgoingCall] Start Session Progress Timer (10 sec) + (300ms) to avoid conflict with Timer B");
            this.mCsm.sendMessageDelayed(203, 10300L);
            return;
        }
        if (mno == Mno.ELISA_EE && this.mCsm.callType != 12) {
            Log.i(this.LOG_TAG, "[OutgoingCall] Start Session Progress Timer (15 sec).");
            this.mCsm.sendMessageDelayed(203, 15000L);
            return;
        }
        if (mno == Mno.ATT) {
            handleStartATTTimer(dialingNumber);
            return;
        }
        if ((mno == Mno.EE || mno == Mno.EE_ESN || mno == Mno.BTOP) && this.mCsm.callType != 12) {
            Log.i(this.LOG_TAG, "[OutgoingCall] Start EE-UK Session Progress Timer (20 sec).");
            this.mCsm.sendMessageDelayed(203, 19500L);
        } else if (ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType())) {
            Log.i(this.LOG_TAG, "[OutgoingCall] Start Session Progress Timer for SD (12 sec).");
            this.mCsm.sendMessageDelayed(203, 12000L);
        } else {
            if (this.mMno != Mno.DISH || this.mSession.isE911Call()) {
                return;
            }
            Log.i(this.LOG_TAG, "[OutgoingCall] Start Session Progress TimerB");
            this.mCsm.sendMessageDelayed(203, this.mRegistration.getImsProfile().getTimerB());
        }
    }

    private int getTimerVzw() {
        return DmConfigHelper.readInt(this.mContext, "timer_vzw", 6, this.mSession.getPhoneId()).intValue() * 1000;
    }

    private void start100Timer_OutgoingCall() {
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration == null || imsRegistration.getImsProfile() == null || this.mRegistration.getImsProfile().get100tryingTimer() <= 0 || this.mCsm.callType == 12) {
            return;
        }
        int i = this.mRegistration.getImsProfile().get100tryingTimer();
        if (!ImsCallUtil.isE911Call(this.mCsm.callType)) {
            if (this.mMno == Mno.USCC && this.mModule.getSessionCount(this.mSession.getPhoneId()) == 1) {
                Log.i(this.LOG_TAG, "[OutgoingCall] USCC G30 Timer (12 sec)");
                this.mCsm.sendMessageDelayed(208, 12000L);
                return;
            }
            if (this.mMno == Mno.SFR && !this.mSession.isEpdgCall()) {
                Log.i(this.LOG_TAG, "[OutgoingCall] Skip 100 Trying Timer ()");
                return;
            }
            Log.i(this.LOG_TAG, "[OutgoingCall] Start 100 Trying Timer (" + i + " msec).");
            this.mCsm.sendMessageDelayed(208, (long) i);
            return;
        }
        if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
            Log.i(this.LOG_TAG, "[OutgoingCall] Start 100 Trying Timer (5000 msec).");
            this.mCsm.sendMessageDelayed(208, 5000L);
        }
    }

    private void tyring_OutgoingCall() {
        ImsRegistration imsRegistration;
        KeepAliveSender keepAliveSender;
        this.mCsm.mTryingReceived = true;
        notifyOnTrying();
        if (!this.mMno.isChn() && !this.mMno.isOneOf(Mno.VIVA_BAHRAIN, Mno.ETISALAT_UAE) && (keepAliveSender = this.mSession.mKaSender) != null) {
            keepAliveSender.start();
        }
        this.mCsm.removeMessages(208);
        this.mCsm.removeMessages(301);
        Mno mno = this.mMno;
        if (mno == Mno.VZW || mno == Mno.RJIL) {
            this.mCsm.sendMessageDelayed(203, 180000L);
        }
        Mno mno2 = this.mMno;
        if ((mno2 != Mno.CTC && mno2 != Mno.CTCMO) || (imsRegistration = this.mRegistration) == null || imsRegistration.getImsProfile() == null) {
            return;
        }
        this.mCsm.sendMessageDelayed(203, this.mRegistration.getImsProfile().getTimerB());
    }

    private void earlymedia_OutgoingCall(Message message) {
        Mno mno;
        int ringbackTimer;
        Log.i(this.LOG_TAG, "mSession.getCallProfile().isVideoCRBT: " + this.mSession.getCallProfile().isVideoCRBT());
        if (this.mRegistration != null && this.mSession.getCallProfile().isVideoCRBT()) {
            this.mVolteSvcIntf.startVideoEarlyMedia(this.mSession.getSessionId());
        }
        if (this.mRegistration != null && (((mno = this.mMno) == Mno.RAKUTEN_JAPAN || (mno == Mno.USCC && ImsCallUtil.isE911Call(this.mCsm.callType))) && (ringbackTimer = this.mRegistration.getImsProfile().getRingbackTimer()) > 0)) {
            Log.i(this.LOG_TAG, "E911 startRingTimer:" + ringbackTimer);
            this.mCsm.startRingTimer(((long) ringbackTimer) * 1000);
        }
        this.mCsm.notifyOnEarlyMediaStarted(message.arg1);
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.transitionTo(callStateMachine.mAlertingCall);
    }

    private void ringingBack_OutgoingCall() {
        int ringbackTimer;
        this.mCsm.notifyOnRingingBack();
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.transitionTo(callStateMachine.mAlertingCall);
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null && (ringbackTimer = imsRegistration.getImsProfile().getRingbackTimer()) > 0) {
            this.mCsm.startRingTimer(ringbackTimer * 1000);
        }
        this.mCsm.mCallRingingTime = SystemClock.elapsedRealtime();
    }

    private void sessionProgress_OutgoingCall() {
        this.mCsm.removeMessages(203);
        this.mCsm.removeMessages(208);
        this.mCsm.removeMessages(301);
        KeepAliveSender keepAliveSender = this.mSession.mKaSender;
        if (keepAliveSender != null && this.mMno != Mno.VZW) {
            keepAliveSender.stop();
        }
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.isStartedCamera(callStateMachine.callType, false);
        if (this.mMno == Mno.CMCC) {
            int beginBroadcast = this.mListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mListeners.getBroadcastItem(i).onSessionProgress(this.mSession.getCallProfile().getAudioEarlyMediaDir());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mListeners.finishBroadcast();
        }
    }

    private boolean terminate_OutgoingCall(Message message) {
        CallStateMachine callStateMachine = this.mCsm;
        if (!callStateMachine.mTryingReceived && message.arg1 == 4 && !callStateMachine.srvccStarted) {
            Log.i(this.LOG_TAG, "Network Handover on dialing (before get 100 TRYING)");
            if (this.mMno == Mno.VZW && ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType())) {
                this.mCsm.notifyOnEnded(1107);
            } else {
                this.mCsm.notifyOnEnded(1117);
            }
        }
        boolean z = this.mCsm.mTryingReceived;
        if (!z && (message.arg1 == 14 || message.arg2 == 3)) {
            Log.i(this.LOG_TAG, "Deregistered. notify error 1701 for CSFB");
            this.mCsm.notifyOnError(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_DEVICE_STATUS, "deregistered");
            CallStateMachine callStateMachine2 = this.mCsm;
            callStateMachine2.transitionTo(callStateMachine2.mEndingCall);
            return true;
        }
        if (!z && message.arg1 == 13) {
            Log.i(this.LOG_TAG, "PS Barred. notify error call barred by network!");
            this.mCsm.notifyOnError(2801, "ps Barred");
            CallStateMachine callStateMachine3 = this.mCsm;
            callStateMachine3.transitionTo(callStateMachine3.mEndingCall);
        }
        if (message.arg1 == 23) {
            Log.i(this.LOG_TAG, "RRC Reject. notify error rrc reject by network!");
            this.mCsm.notifyOnError(2801, "rrc reject");
            CallStateMachine callStateMachine4 = this.mCsm;
            callStateMachine4.transitionTo(callStateMachine4.mEndingCall);
        }
        if (this.mMno == Mno.VZW && message.arg1 == 28) {
            Log.i(this.LOG_TAG, "INVITE SIP Timeout!");
            this.mCsm.notifyOnError(NSDSNamespaces.NSDSDefinedResponseCode.LOCATIONANDTC_UPDATE_SUCCESS_CODE, "timer vzw expired");
            CallStateMachine callStateMachine5 = this.mCsm;
            callStateMachine5.transitionTo(callStateMachine5.mEndingCall);
        }
        Mno mno = this.mMno;
        if ((mno != Mno.KDDI && mno != Mno.DOCOMO) || message.arg1 != 25) {
            return false;
        }
        Log.i(this.LOG_TAG, "on terminate out of service.");
        this.mCsm.notifyOnError(1114, "CALL_INVITE_TIMEOUT");
        CallStateMachine callStateMachine6 = this.mCsm;
        callStateMachine6.transitionTo(callStateMachine6.mEndingCall);
        return true;
    }

    private boolean dbrLost_OutgoingCall(Message message) {
        Mno mno = this.mMno;
        if ((mno != Mno.PLAY && mno != Mno.CTM) || message.what != 5000 || this.mSession.getDedicatedBearerState(message.arg1) == 3) {
            return false;
        }
        Log.i(this.LOG_TAG, "dedicated bearer was re-established, the call is not terminated");
        return true;
    }

    private boolean endOrFail_OutgoingCall(Message message) {
        ImsRegistration imsRegistration;
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.mIsMdmiEnabled && ImsCallUtil.isE911Call(callStateMachine.callType)) {
            this.mCsm.mMdmiE911Listener.notifySipMsg(MdmiServiceModule.msgType.SIP_CANCEL, 0L);
        }
        if ((this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) || this.mMno == Mno.SPRINT) && message.what == 100) {
            Log.i(this.LOG_TAG, "[OutgoingCall] Skip FORCE_NOTIFY_CURRENT_CODEC");
            return true;
        }
        if (this.mCsm.mNeedToWaitEndcall) {
            Log.i(this.LOG_TAG, "[OutgoingCall] need to Wait Endcall");
            this.mCsm.mNeedToWaitEndcall = false;
            return true;
        }
        Log.i(this.LOG_TAG, "[OutgoingCall] endOrFail_OutgoingCall, what=" + message.what + ", getIsLteRetrying=" + this.mCsm.mModule.getIsLteRetrying(this.mSession.getPhoneId()) + ",mSession.getErrorMessage()=" + this.mSession.getErrorMessage());
        if (this.mMno != Mno.VZW || message.what != 1 || !this.mCsm.mModule.getIsLteRetrying(this.mSession.getPhoneId()) || (imsRegistration = this.mRegistration) == null || imsRegistration.getRegiRat() != 20 || this.mCsm.sipReason == null || !"TIMER VZW EXPIRED".equals(this.mSession.getErrorMessage())) {
            return false;
        }
        Log.i(this.LOG_TAG, "[OutgoingCall] timerVZWExpired_OutgoingCall ==> Deregister on NR");
        IRegistrationGovernor registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle());
        if (registrationGovernor != null) {
            registrationGovernor.onSipError(ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) ? "mmtel-video" : "mmtel", new SipError(1125));
        }
        return true;
    }

    private boolean error_OutgoingCall(Message message) {
        Log.e(this.LOG_TAG, "[OutgoingCall] on error.");
        if (!this.mCsm.handleSPRoutgoingError(message)) {
            return false;
        }
        SipError sipError = (SipError) message.obj;
        if ("LTE Retry in UAC Barred".equals(sipError.getReason())) {
            Log.e(this.LOG_TAG, "[OutgoingCall] skip error by UAC.");
            this.mCsm.notifyOnError(sipError.getCode(), sipError.getReason());
            return true;
        }
        Mno mno = this.mMno;
        if ((mno == Mno.KDDI || mno == Mno.DOCOMO) && ((SipError) message.obj).getCode() == 709) {
            Log.i(this.LOG_TAG, "on error 709.");
            this.mCsm.sendMessage(1, 25);
            return true;
        }
        if (this.mMno == Mno.BELL) {
            SipError sipError2 = (SipError) message.obj;
            boolean isCsfbErrorCode = this.mModule.isCsfbErrorCode(this.mSession.getPhoneId(), this.mSession.getCallProfile(), new SipError(sipError2.getCode(), sipError2.getReason() == null ? "" : sipError2.getReason()));
            Log.e(this.LOG_TAG, "On error delayed for 300ms, needDelayed : " + isCsfbErrorCode + " ,mOnErrorDelayed : " + this.mCsm.mOnErrorDelayed);
            CallStateMachine callStateMachine = this.mCsm;
            if (!callStateMachine.mOnErrorDelayed && isCsfbErrorCode) {
                callStateMachine.mOnErrorDelayed = true;
                callStateMachine.sendMessageDelayed(Message.obtain(message), 300L);
                return true;
            }
            callStateMachine.mOnErrorDelayed = false;
        }
        CallStateMachine callStateMachine2 = this.mCsm;
        if (callStateMachine2.mIsWPSCall) {
            callStateMachine2.sendMessageDelayed(26, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
            this.mModule.releaseSessionByState(this.mSession.getPhoneId(), CallConstants.STATE.HeldCall);
            return true;
        }
        if (this.mMno == Mno.CMCC) {
            Log.i(this.LOG_TAG, "[OutgoingCall] check delay!");
            SipError sipError3 = (SipError) message.obj;
            int code = sipError3.getCode();
            boolean z = (code == 380 || code == 382) && this.mModule.isCsfbErrorCode(this.mSession.getPhoneId(), this.mSession.getCallProfile(), new SipError(code, sipError3.getReason() != null ? sipError3.getReason() : ""));
            Log.i(this.LOG_TAG, "needEndHeldCall : " + z + ", mOnErrorDelayed : " + this.mCsm.mOnErrorDelayed);
            if (!this.mSession.getCallProfile().isConferenceCall() && z && !this.mCsm.mOnErrorDelayed) {
                for (ImsCallSession imsCallSession : this.mModule.getSessionList(this.mSession.getPhoneId())) {
                    Log.i(this.LOG_TAG, "phoneId[" + this.mSession.getPhoneId() + "] session Id : " + imsCallSession.getSessionId() + ", state : " + imsCallSession.getCallState());
                    if (imsCallSession.getSessionId() != this.mSession.getSessionId() && imsCallSession.getCallState() == CallConstants.STATE.HeldCall) {
                        this.mCsm.sipReason = new SipReason("SIP", 0, "User triggered", true, new String[0]);
                        this.mVolteSvcIntf.endCall(imsCallSession.getSessionId(), imsCallSession.getCallProfile().getCallType(), this.mCsm.sipReason);
                        this.mCsm.mOnErrorDelayed = true;
                    }
                }
                if (this.mCsm.mOnErrorDelayed) {
                    Log.i(this.LOG_TAG, "error notify delayed!");
                    this.mCsm.sendMessageDelayed(Message.obtain(message), 200L);
                    return true;
                }
            }
        }
        return false;
    }

    private void sessionProgressTimeout_OutgoingCall() {
        ImsRegistration imsRegistration;
        IRegistrationGovernor registrationGovernor;
        Log.i(this.LOG_TAG, "[OutgoingCall] SessionProgress Timeout - Call Terminate/CSFB");
        Mno mno = this.mMno;
        if (mno == Mno.VZW || mno == Mno.CTC || mno == Mno.CTCMO) {
            CallStateMachine callStateMachine = this.mCsm;
            SipError sipError = SipErrorBase.REQUEST_TIMEOUT;
            callStateMachine.notifyOnError(sipError.getCode(), sipError.getReason(), 0);
        } else if (mno == Mno.KDDI && this.mModule.getSessionCount(this.mSession.getPhoneId()) > 1) {
            this.mCsm.errorCode = 503;
        } else if (ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType())) {
            this.mCsm.notifyOnError(NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE, "REJECT_REASON_PD_UNREACHABLE", 0);
        } else {
            CallStateMachine callStateMachine2 = this.mCsm;
            if (callStateMachine2.mIsWPSCall) {
                callStateMachine2.mNeedToWaitEndcall = true;
                Log.i(this.LOG_TAG, "[OutgoingCall] CANCEL now CSFB after 2s");
                CallStateMachine callStateMachine3 = this.mCsm;
                callStateMachine3.sipReason = callStateMachine3.getSipReasonFromUserReason(17);
                IVolteServiceInterface iVolteServiceInterface = this.mVolteSvcIntf;
                int sessionId = this.mSession.getSessionId();
                CallStateMachine callStateMachine4 = this.mCsm;
                iVolteServiceInterface.endCall(sessionId, callStateMachine4.callType, callStateMachine4.sipReason);
                this.mCsm.sendMessageDelayed(26, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                this.mModule.releaseSessionByState(this.mSession.getPhoneId(), CallConstants.STATE.HeldCall);
                return;
            }
            callStateMachine2.notifyOnError(503, "Session Progress Timeout", 0);
            if (this.mMno == Mno.EE && !ImsCallUtil.isE911Call(this.mSession.mCallProfile.getCallType()) && (imsRegistration = this.mRegistration) != null && (registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(imsRegistration.getHandle())) != null) {
                registrationGovernor.onSipError("mmtel", SipErrorBase.SIP_INVITE_TIMEOUT);
            }
        }
        this.mCsm.sendMessage(1, 17);
    }

    private void tryingTimeout_OutgoingCall() {
        if (this.mMno == Mno.TMOUS) {
            Log.i(this.LOG_TAG, "[OutgoingCall] TMOUS, 100 Trying Timeout");
            if (!ImsCallUtil.isE911Call(this.mSession.mCallProfile.getCallType())) {
                this.mCsm.errorCode = 28;
                return;
            } else if (!SemSystemProperties.get("ro.boot.hardware", "").contains("qcom")) {
                this.mCsm.errorCode = 503;
            }
        }
        Log.i(this.LOG_TAG, "[OutgoingCall] 100 Trying Timeout - Call Terminate/CSFB");
        if (this.mMno.isTmobile()) {
            this.mCsm.notifyOnError(380, "100 Trying Timeout", 0);
        } else {
            this.mCsm.notifyOnError(503, "100 Trying Timeout", 0);
        }
        if (this.mMno.isChn()) {
            Log.i(this.LOG_TAG, "Force to change END_REASON to terminate client socket with RST");
            this.mCsm.sendMessage(1, 8);
        } else {
            this.mCsm.sendMessage(1, 17);
        }
        if (this.mMno != Mno.USCC || this.mRegistration == null) {
            return;
        }
        Log.i(this.LOG_TAG, "[OutgoingCall] USCC 12 sec 100 Trying Timer expired.");
        IRegistrationGovernor registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle());
        if (registrationGovernor != null) {
            registrationGovernor.onSipError(ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) ? "mmtel-video" : "mmtel", new SipError(503));
        }
    }

    private void epsFallbackResult_OutgoingCall(Message message) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "epsFallbackResult_OutgoingCall: " + message.arg1);
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onRetryingVoLteOrCsCall(message.arg1);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void timerVZWExpired_OutgoingCall() {
        Log.i(this.LOG_TAG, "[OutgoingCall] TimerVzw expired.");
        if (ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON) {
            Log.i(this.LOG_TAG, "[OutgoingCall] But AirplainModeOn, cannot fallback to 1x");
            this.mCsm.sendMessage(1, NSDSNamespaces.NSDSDefinedResponseCode.LOCATIONANDTC_UPDATE_SUCCESS_CODE, 0, "Timer_VZW expired");
            return;
        }
        this.mCsm.sipReason = new SipReason("", 0, "TIMER VZW EXPIRED", true, new String[0]);
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null) {
            if (imsRegistration.getImsProfile().getNeedVoLteRetryInNr() && this.mRegistration.getRegiRat() == 20 && !this.mModule.isRoaming(this.mSession.getPhoneId())) {
                SecImsNotifier.getInstance().onTriggerEpsFallback(this.mSession.getPhoneId(), 2);
                return;
            } else {
                IRegistrationGovernor registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle());
                if (registrationGovernor != null) {
                    registrationGovernor.onSipError(ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) ? "mmtel-video" : "mmtel", new SipError(NSDSNamespaces.NSDSDefinedResponseCode.LOCATIONANDTC_UPDATE_SUCCESS_CODE));
                }
            }
        }
        this.mCsm.sendMessage(4, 0, -1, new SipError(NSDSNamespaces.NSDSDefinedResponseCode.LOCATIONANDTC_UPDATE_SUCCESS_CODE, "Timer_VZW expired"));
        this.mVolteSvcIntf.endCall(this.mSession.getSessionId(), this.mSession.getCallProfile().getCallType(), this.mCsm.sipReason);
    }

    private void rrcReleased_OutgoingCall() {
        IRegistrationGovernor registrationGovernor;
        Log.i(this.LOG_TAG, "[OutgoingCall] RRC connection released.");
        if (this.mMno == Mno.VZW && (this.mTelephonyManager.isNetworkRoaming() || ImsUtil.isCdmalessEnabled(this.mContext, this.mSession.getPhoneId()))) {
            Log.i(this.LOG_TAG, "Socket close with NO_LINGER in case RRC Non-Depriorization Reject in MO case");
            this.mCsm.sendMessage(1, 23);
        } else {
            this.mCsm.sendMessage(4, 0, -1, new SipError(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_SVC_INST_ID, "RRC connection released"));
        }
        if (this.mMno == Mno.DOCOMO) {
            this.mVolteSvcIntf.deleteTcpSocket(this.mSession.getSessionId(), this.mSession.getCallProfile().getCallType());
        }
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration == null || (registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(imsRegistration.getHandle())) == null) {
            return;
        }
        registrationGovernor.onSipError(ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) ? "mmtel-video" : "mmtel", new SipError(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_SVC_INST_ID));
    }

    private void update_OutgoingCall(Message message) {
        Bundle bundle = (Bundle) message.obj;
        CallProfile parcelable = bundle.getParcelable("profile");
        Log.i(this.LOG_TAG, "Received srvcc H/O event");
        int srvccVersion = this.mModule.getSrvccVersion(this.mSession.getPhoneId());
        if (parcelable != null || srvccVersion == 0) {
            return;
        }
        if (srvccVersion >= 10 || DeviceUtil.getGcfMode()) {
            Log.i(this.LOG_TAG, "MO bsrvcc support");
            this.mVolteSvcIntf.sendReInvite(this.mSession.getSessionId(), new SipReason("SIP", bundle.getInt("cause"), bundle.getString("reasonText"), new String[0]));
        }
    }

    private boolean isNeedToStartVZWTimer() {
        return this.mMno == Mno.VZW && !ImsCallUtil.isVideoCall(this.mCsm.callType) && !ImsRegistry.getPdnController().isEpdgConnected(this.mSession.getPhoneId()) && this.mModule.getSessionCount(this.mSession.getPhoneId()) == 1;
    }

    private void handleStartATTTimer(String str) {
        ImsRegistration imsRegistration;
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.needToLogForATTGate(callStateMachine.callType)) {
            IMSLog.g("GATE", "<GATE-M>MO_VIDEO_CALL</GATE-M>");
        } else {
            if (!ImsCallUtil.isE911Call(this.mCsm.callType) || (imsRegistration = this.mRegistration) == null || imsRegistration.getImsProfile() == null || !this.mRegistration.getImsProfile().isSoftphoneEnabled()) {
                return;
            }
            this.mCsm.sendMessageDelayed(203, 12000L);
        }
    }

    private void notifyOnCalling() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onCalling();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void notifyOnTrying() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onTrying();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }
}
