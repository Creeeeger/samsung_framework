package com.sec.internal.ims.servicemodules.volte2;

import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.os.EmcBsIndication;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.UssdEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.core.imsdc.IdcImsCallSessionData;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.volte2.data.ReferStatus;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;

/* loaded from: classes.dex */
public class ImsCallSessionEventHandler {
    private static final int DISH_POOR_VIDEO_TIMEOUT = 10000;
    private static final int TMO_POOR_VIDEO_TIMEOUT = 20000;
    private PreciseAlarmManager mAm;
    private CallProfile mCallProfile;
    private IImsMediaController mMediaController;
    private Mno mMno;
    private IVolteServiceModuleInternal mModule;
    private Message mPoorVideoTimeoutMessage;
    private ImsRegistration mRegistration;
    private IRegistrationManager mRegistrationManager;
    private ImsCallSession mSession;
    private IVolteServiceInterface mVolteSvcIntf;
    private CallStateMachine smCallStateMachine;
    private String LOG_TAG = "ImsCallSessionEventHandler";
    private String LOG_IDC_FW_TAG = "[IDC][FW]" + this.LOG_TAG;

    public ImsCallSessionEventHandler(ImsCallSession imsCallSession, IVolteServiceModuleInternal iVolteServiceModuleInternal, ImsRegistration imsRegistration, IRegistrationManager iRegistrationManager, Mno mno, PreciseAlarmManager preciseAlarmManager, CallStateMachine callStateMachine, CallProfile callProfile, IVolteServiceInterface iVolteServiceInterface, IImsMediaController iImsMediaController) {
        this.mSession = null;
        this.mModule = null;
        this.mRegistration = null;
        this.mRegistrationManager = null;
        char c = Mno.MVNO_DELIMITER;
        this.mPoorVideoTimeoutMessage = null;
        this.mSession = imsCallSession;
        this.mModule = iVolteServiceModuleInternal;
        this.mRegistration = imsRegistration;
        this.mRegistrationManager = iRegistrationManager;
        this.mMno = mno;
        this.mAm = preciseAlarmManager;
        this.smCallStateMachine = callStateMachine;
        this.mCallProfile = callProfile;
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mMediaController = iImsMediaController;
    }

    protected void onImsCallEventHandler(CallStateEvent callStateEvent) {
        if (callStateEvent.getSessionID() != this.mSession.getSessionId()) {
        }
        Log.i(this.LOG_TAG, "onImsCallEventHandler, " + callStateEvent);
        ImsCallEventHandler imsCallEventHandler = new ImsCallEventHandler(callStateEvent);
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[callStateEvent.getState().ordinal()]) {
            case 1:
                imsCallEventHandler.handleRingingBack();
                break;
            case 2:
                imsCallEventHandler.handleCalling();
                break;
            case 3:
                this.smCallStateMachine.sendMessage(31);
                break;
            case 4:
                imsCallEventHandler.handleEstablished();
                break;
            case 5:
                imsCallEventHandler.handleRefreshFail();
                break;
            case 6:
                if (!this.mMno.isChn() || this.mSession.getCallState() != CallConstants.STATE.IncomingCall) {
                    this.smCallStateMachine.mConfCallAdded = true;
                    break;
                }
                break;
            case 7:
                imsCallEventHandler.handleModified();
                break;
            case 8:
                imsCallEventHandler.handleHeldLocal();
                break;
            case 9:
                imsCallEventHandler.handleHeldRemote();
                break;
            case 10:
                imsCallEventHandler.handleHeldBoth();
                break;
            case 11:
                imsCallEventHandler.handleEnded();
                break;
            case 12:
                imsCallEventHandler.handleModifyRequested();
                break;
            case 13:
                imsCallEventHandler.handleEarlyMediaStart();
                break;
            case 14:
                imsCallEventHandler.handleError();
                break;
            case 15:
                this.mSession.updateCallProfile(callStateEvent.getParams());
                this.smCallStateMachine.sendMessage(35);
                break;
            case 16:
                this.mSession.updateCallProfile(callStateEvent.getParams());
                this.smCallStateMachine.sendMessage(36);
                break;
            case 17:
                imsCallEventHandler.handleExtendToConference();
                break;
        }
    }

    protected void onReferStatus(AsyncResult asyncResult) {
        ImsCallSession imsCallSession = (ImsCallSession) asyncResult.userObj;
        ReferStatus referStatus = (ReferStatus) asyncResult.result;
        if (imsCallSession.mSessionId != referStatus.mSessionId) {
            return;
        }
        Log.i(this.LOG_TAG, "onReferStatus: respCode=" + referStatus.mRespCode);
        int i = referStatus.mRespCode;
        if (i < 200) {
            return;
        }
        this.smCallStateMachine.sendMessage(75, i, -1);
    }

    protected void onCurrentLocationDiscoveryDuringEmergencyCall(int i, AsyncResult asyncResult) {
        int intValue = ((Integer) asyncResult.result).intValue();
        if (i != intValue) {
            Log.i(this.LOG_TAG, "onCurrentLocationDiscoveryDuringEmergencyCall : session is different. sessionId=" + i + ", infoSessionId=" + intValue);
            return;
        }
        this.smCallStateMachine.removeMessages(13);
        if (this.smCallStateMachine.getState() == CallConstants.STATE.InCall) {
            this.smCallStateMachine.sendMessage(13);
        }
    }

    protected void onImsMediaEvent(IMSMediaEvent iMSMediaEvent) {
        int callType = this.mCallProfile.getCallType();
        if (iMSMediaEvent.getSessionID() == this.mSession.getSessionId() || (this.mMno == Mno.SKT && callType == 6)) {
            Log.i(this.LOG_TAG, "onImsMediaEvent: " + iMSMediaEvent.getState() + " phoneId: " + iMSMediaEvent.getPhoneId());
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[iMSMediaEvent.getState().ordinal()];
            if (i == 1) {
                onVideoHeld();
            } else if (i == 2) {
                onVideoResumed();
            } else {
                switch (i) {
                    case 5:
                        onVideoRtpTimeout(true);
                        break;
                    case 6:
                        onVideoRtpTimeout(false);
                        break;
                    case 7:
                        onVideoQuality(false);
                        break;
                    case 8:
                    case 9:
                    case 10:
                        onVideoQuality(true);
                        break;
                    case 11:
                        this.smCallStateMachine.sendMessage(84);
                        break;
                    case 12:
                        this.smCallStateMachine.sendMessage(85);
                        break;
                    case 13:
                        this.smCallStateMachine.sendMessage(207);
                        break;
                    case 14:
                        this.smCallStateMachine.sendMessage(700, 1);
                        break;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        this.smCallStateMachine.sendMessage(700, 0);
                        break;
                    case 19:
                        if (this.mCallProfile.getRecordState() == 1) {
                            this.smCallStateMachine.sendMessage(700, 0);
                            this.mMediaController.stopRecord();
                            break;
                        }
                        break;
                }
            }
            if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_HELD || iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_RESUMED || iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_AVAILABLE) {
                this.mModule.notifyImsCallEventForVideo(this.mSession, iMSMediaEvent);
            }
        }
    }

    private void onVideoHeld() {
        this.mCallProfile.getMediaProfile().setVideoPause(true);
        this.smCallStateMachine.sendMessage(82);
        if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
            stopPoorVideoTimer();
        }
    }

    private class ImsCallEventHandler {
        final CallStateEvent mEvent;

        private ImsCallEventHandler(CallStateEvent callStateEvent) {
            this.mEvent = callStateEvent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleRingingBack() {
            ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
            if ((ImsCallSessionEventHandler.this.mSession.getVideoCrbtSupportType() & 1) == 1) {
                if (this.mEvent.getParams().getVideoCrbtType() == 0) {
                    ImsCallSessionEventHandler.this.mCallProfile.setVideoCRBT(false);
                    ImsCallSessionEventHandler.this.mCallProfile.setDtmfEvent("");
                }
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "isVideoCRBT : " + ImsCallSessionEventHandler.this.mCallProfile.isVideoCRBT());
            }
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(34);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleCalling() {
            ImsCallSession sessionBySipCallId;
            ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(33);
            if (ImsCallSessionEventHandler.this.mCallProfile.getReplaceSipCallId() == null || (sessionBySipCallId = ImsCallSessionEventHandler.this.mModule.getSessionBySipCallId(ImsCallSessionEventHandler.this.mCallProfile.getReplaceSipCallId())) == null) {
                return;
            }
            Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "replace UserAgent. replaceSessionId " + sessionBySipCallId.getSessionId() + " newSessionId " + ImsCallSessionEventHandler.this.mSession.mSessionId);
            ImsCallSessionEventHandler.this.mVolteSvcIntf.replaceUserAgent(sessionBySipCallId.getSessionId(), ImsCallSessionEventHandler.this.mSession.mSessionId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleEstablished() {
            String audioCodecType = ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().getAudioCodec().toString();
            boolean z = this.mEvent.getParams().getAudioRxTrackId() != ImsCallSessionEventHandler.this.mCallProfile.getAudioRxTrackId();
            ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
            if (ImsCallSessionEventHandler.this.mRegistration != null && ImsCallSessionEventHandler.this.mRegistration.getImsProfile() != null && ImsCallSessionEventHandler.this.mRegistration.getImsProfile().getNotifyCodecOnEstablished() && !audioCodecType.equals(ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().getAudioCodec().toString()) && ImsCallSessionEventHandler.this.mSession.getCallState() == CallConstants.STATE.InCall) {
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "forceNotifyCurrentCodec, Codec =" + this.mEvent.getParams().getAudioCodec() + ", HdIcon: " + ImsCallSessionEventHandler.this.mCallProfile.getHDIcon());
                ImsCallSessionEventHandler.this.mSession.forceNotifyCurrentCodec();
            }
            if (z && ImsCallSessionEventHandler.this.mSession.getCallState() == CallConstants.STATE.InCall) {
                ImsCallSessionEventHandler.this.mSession.forceNotifyCurrentCodec();
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "notified audiorxtrackid");
            }
            if (ImsCallUtil.isVideoCall(ImsCallSessionEventHandler.this.mCallProfile.getCallType()) && !ImsCallUtil.isVideoCall(this.mEvent.getCallType())) {
                ImsCallSessionEventHandler.this.mCallProfile.setDowngradedVideoCall(true);
                ImsCallSessionEventHandler.this.mCallProfile.setDowngradedAtEstablish(true);
                ImsCallSessionEventHandler.this.mSession.setUserCameraOff(false);
                int notifyCallDowngraded = (ImsCallSessionEventHandler.this.mRegistration == null || ImsCallSessionEventHandler.this.mRegistration.getImsProfile() == null) ? 0 : ImsCallSessionEventHandler.this.mRegistration.getImsProfile().getNotifyCallDowngraded();
                if ((ImsCallSessionEventHandler.this.mMno.isChn() || notifyCallDowngraded == 1 || ((ImsCallSessionEventHandler.this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) || notifyCallDowngraded == 2) && !this.mEvent.getRemoteVideoCapa())) && ImsCallSessionEventHandler.this.mCallProfile.isMOCall()) {
                    ImsCallSessionEventHandler.this.mSession.notifyCallDowngraded();
                }
            }
            if (ImsCallSessionEventHandler.this.mRegistration != null && ImsCallSessionEventHandler.this.mRegistration.getImsProfile().isSoftphoneEnabled() && ImsCallSessionEventHandler.this.mCallProfile.getCallType() == 13) {
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "ATT Softphone : not change FROM  callType = " + ImsCallSessionEventHandler.this.mCallProfile.getCallType() + "TO  calltype =" + this.mEvent.getCallType());
            } else {
                ImsCallSessionEventHandler.this.mCallProfile.setCallType(this.mEvent.getCallType());
                if (ImsCallUtil.isRttCall(this.mEvent.getCallType())) {
                    ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().setRttMode(1);
                } else {
                    ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().setRttMode(0);
                }
            }
            if (ImsCallUtil.isCmcPrimaryType(ImsCallSessionEventHandler.this.mSession.getCmcType()) && !TextUtils.isEmpty(this.mEvent.getCmcDeviceId())) {
                ImsCallSessionEventHandler.this.mCallProfile.setCmcDeviceId(this.mEvent.getCmcDeviceId());
            }
            if (ImsCallUtil.isCmcSecondaryType(ImsCallSessionEventHandler.this.mSession.getCmcType()) && !TextUtils.isEmpty(this.mEvent.getCmcCallTime())) {
                ImsCallSessionEventHandler.this.mCallProfile.setCmcCallTime(this.mEvent.getCmcCallTime());
            }
            ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            ImsCallSessionEventHandler.this.smCallStateMachine.setVideoRtpPort(this.mEvent.getParams().getLocalVideoRTPPort(), this.mEvent.getParams().getLocalVideoRTCPPort(), this.mEvent.getParams().getRemoteVideoRTPPort(), this.mEvent.getParams().getRemoteVideoRTCPPort());
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(41, this.mEvent.getParams().getIndicationFlag());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleRefreshFail() {
            IRegistrationGovernor registrationGovernor;
            SipError errorCode = this.mEvent.getErrorCode();
            Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "REFRESHFAIL " + errorCode.toString());
            if (ImsCallSessionEventHandler.this.mRegistration == null || (registrationGovernor = ImsCallSessionEventHandler.this.mRegistrationManager.getRegistrationGovernor(ImsCallSessionEventHandler.this.mRegistration.getHandle())) == null) {
                return;
            }
            registrationGovernor.onSipError("mmtel", errorCode);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleModified() {
            if (ImsCallSessionEventHandler.this.mSession.getIdcData() != null && (ImsCallSessionEventHandler.this.mSession.getIdcData().getCurrentState() == IdcImsCallSessionData.State.MODIFYING || ImsCallSessionEventHandler.this.mSession.getIdcData().getCurrentState() == IdcImsCallSessionData.State.MODIFY_REQUESTED)) {
                Log.i(ImsCallSessionEventHandler.this.LOG_IDC_FW_TAG, "Transaction Handling");
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(153, this.mEvent.getIdcExtra());
                return;
            }
            ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
            if (ImsCallSessionEventHandler.this.mSession.mModifyRequestedProfile != null) {
                if (this.mEvent.getErrorCode() == null || this.mEvent.getErrorCode().equals(SipErrorBase.OK)) {
                    Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "Change calltype from " + this.mEvent.getCallType() + " to " + ImsCallSessionEventHandler.this.mSession.mModifyRequestedProfile.getCallType());
                    this.mEvent.setCallType(ImsCallSessionEventHandler.this.mSession.mModifyRequestedProfile.getCallType());
                }
            } else {
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "unexpected ImsCallEvent");
            }
            ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            if (ImsCallUtil.isVideoCall(ImsCallSessionEventHandler.this.mCallProfile.getCallType()) && !ImsCallUtil.isVideoCall(this.mEvent.getCallType())) {
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "Call is downgrade");
                ImsCallSessionEventHandler.this.mSession.stopCamera();
                ImsCallSessionEventHandler.this.mCallProfile.setDowngradedVideoCall(true);
                ImsCallSessionEventHandler.this.mSession.setUserCameraOff(false);
            } else if (!ImsCallUtil.isVideoCall(ImsCallSessionEventHandler.this.mCallProfile.getCallType()) && ImsCallUtil.isVideoCall(this.mEvent.getCallType())) {
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "Call is upgrade");
                ImsCallSessionEventHandler.this.mCallProfile.setDowngradedVideoCall(false);
            }
            ImsCallSessionEventHandler.this.mCallProfile.setDowngradedAtEstablish(false);
            int callType = ImsCallSessionEventHandler.this.mCallProfile.getCallType();
            ImsCallSessionEventHandler.this.mCallProfile.setCallType(this.mEvent.getCallType());
            ImsCallSessionEventHandler.this.smCallStateMachine.setVideoRtpPort(this.mEvent.getParams().getLocalVideoRTPPort(), this.mEvent.getParams().getLocalVideoRTCPPort(), this.mEvent.getParams().getRemoteVideoRTPPort(), this.mEvent.getParams().getRemoteVideoRTCPPort());
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(91, this.mEvent.getCallType(), callType);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleHeldLocal() {
            String audioCodecType = ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().getAudioCodec().toString();
            ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
            if (ImsCallSessionEventHandler.this.mMno.isChn() || ImsCallSessionEventHandler.this.mMno.isHkMo() || ImsCallSessionEventHandler.this.mMno.isKor() || ImsCallSessionEventHandler.this.mMno.isJpn() || ImsCallSessionEventHandler.this.mMno == Mno.RJIL || ImsCallSessionEventHandler.this.mMno == Mno.TELSTRA) {
                ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            }
            if ((ImsCallSessionEventHandler.this.mMno == Mno.DOCOMO || ImsCallSessionEventHandler.this.mMno == Mno.TWM) && !audioCodecType.equals(ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().getAudioCodec().toString())) {
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "forceNotifyCurrentCodec, Codec =" + this.mEvent.getParams().getAudioCodec() + ", HdIcon: " + ImsCallSessionEventHandler.this.mCallProfile.getHDIcon());
                ImsCallSessionEventHandler.this.mSession.forceNotifyCurrentCodec();
            }
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(61);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleHeldRemote() {
            if (ImsCallSessionEventHandler.this.mMno.isChn() || ImsCallSessionEventHandler.this.mMno.isHkMo() || ImsCallSessionEventHandler.this.mMno.isKor() || ImsCallSessionEventHandler.this.mMno.isJpn() || ImsCallSessionEventHandler.this.mMno == Mno.ATT || ImsCallSessionEventHandler.this.mMno == Mno.RJIL || ImsCallSessionEventHandler.this.mMno == Mno.TELSTRA) {
                ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            }
            if (ImsCallSessionEventHandler.this.mMno == Mno.MOVISTAR_PERU || ImsCallSessionEventHandler.this.mMno == Mno.TWM) {
                String audioCodecType = ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().getAudioCodec().toString();
                ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
                if (!audioCodecType.equals(ImsCallSessionEventHandler.this.mCallProfile.getMediaProfile().getAudioCodec().toString())) {
                    Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "forceNotifyCurrentCodec, Codec =" + this.mEvent.getParams().getAudioCodec() + ", HdIcon: " + ImsCallSessionEventHandler.this.mCallProfile.getHDIcon());
                    ImsCallSessionEventHandler.this.mSession.forceNotifyCurrentCodec();
                }
            }
            ImsCallSessionEventHandler.this.mSession.mOldLocalHoldTone = ImsCallSessionEventHandler.this.mSession.mLocalHoldTone;
            ImsCallSessionEventHandler.this.mSession.mLocalHoldTone = this.mEvent.getParams().getLocalHoldTone();
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(62);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleHeldBoth() {
            if (ImsCallSessionEventHandler.this.mMno.isChn() || ImsCallSessionEventHandler.this.mMno.isHkMo() || ImsCallSessionEventHandler.this.mMno.isKor() || ImsCallSessionEventHandler.this.mMno.isJpn() || ImsCallSessionEventHandler.this.mMno == Mno.RJIL || ImsCallSessionEventHandler.this.mMno == Mno.TELSTRA) {
                ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            }
            ImsCallSessionEventHandler.this.mSession.mOldLocalHoldTone = ImsCallSessionEventHandler.this.mSession.mLocalHoldTone;
            ImsCallSessionEventHandler.this.mSession.mLocalHoldTone = this.mEvent.getParams().getLocalHoldTone();
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(63);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleEnded() {
            int videoCrbtSupportType = ImsCallSessionEventHandler.this.mSession.getVideoCrbtSupportType();
            if ((videoCrbtSupportType & 1) == 1 || (videoCrbtSupportType & 2) == 2) {
                ImsCallSessionEventHandler.this.mCallProfile.setVideoCRBT(false);
                ImsCallSessionEventHandler.this.mCallProfile.setDtmfEvent("");
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "isVideoCRBT : " + ImsCallSessionEventHandler.this.mCallProfile.isVideoCRBT());
            }
            SipError errorCode = this.mEvent.getErrorCode();
            if (errorCode == null) {
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(3);
                return;
            }
            if (ImsCallUtil.isCmcSecondaryType(ImsCallSessionEventHandler.this.mSession.getCmcType()) && "MDMN_PULL_BY_PRIMARY".equals(errorCode.getReason())) {
                ImsCallSessionEventHandler.this.mCallProfile.setCmcDeviceId(ImsRegistry.getCmcAccountManager().getCurrentLineOwnerDeviceId());
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(3, errorCode.getCode(), 6007, errorCode.getReason());
            } else {
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(3, errorCode.getCode(), -1, errorCode.getReason());
            }
            if (ImsCallUtil.isCmcSecondaryType(ImsCallSessionEventHandler.this.mSession.getCmcType()) && "MDMN_PULL_BY_SECONDARY".equals(errorCode.getReason())) {
                ImsCallSessionEventHandler.this.mCallProfile.setCmcDeviceId(this.mEvent.getCmcDeviceId());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleModifyRequested() {
            int callType = this.mEvent.getCallType();
            boolean isSdToSdPull = this.mEvent.getIsSdToSdPull();
            if (!this.mEvent.getIdcExtra().isEmpty()) {
                Log.i(ImsCallSessionEventHandler.this.LOG_IDC_FW_TAG, "Transaction Handling");
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(154, this.mEvent.getIdcExtra());
                return;
            }
            if (!ImsCallSessionEventHandler.this.mCallProfile.hasRemoteVideoCapa() && ImsCallSessionEventHandler.this.mModule.isCallServiceAvailable(ImsCallSessionEventHandler.this.mSession.mPhoneId, "mmtel-video") && ImsCallUtil.isVideoCall(callType)) {
                ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(true);
                ImsCallSessionEventHandler.this.mSession.forceNotifyCurrentCodec();
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessageDelayed(55, callType, 0, null, 100L);
            } else if (ImsCallUtil.isCmcPrimaryType(ImsCallSessionEventHandler.this.mSession.getCmcType()) && isSdToSdPull) {
                modifyCallTypeForPull();
            } else {
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(55, callType, 0, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleEarlyMediaStart() {
            boolean z;
            ImsCallSessionEventHandler.this.mSession.updateCallProfile(this.mEvent.getParams());
            String dtmfEvent = this.mEvent.getParams().getDtmfEvent();
            ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            if (this.mEvent.getParams().getVideoCrbtType() > 0) {
                z = true;
                ImsCallSessionEventHandler.this.mCallProfile.setVideoCrbtValid(true);
            } else {
                z = false;
            }
            ImsCallSessionEventHandler.this.mCallProfile.setVideoCRBT(z);
            ImsCallSessionEventHandler.this.mCallProfile.setDtmfEvent(dtmfEvent);
            Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "isVideoCRBT : " + ImsCallSessionEventHandler.this.mCallProfile.isVideoCRBT() + ", dtmfEvent : " + dtmfEvent);
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(32, this.mEvent.getErrorCode().getCode());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleError() {
            IRegistrationGovernor.CallEvent callEvent;
            IRegistrationGovernor registrationGovernor;
            if (ImsCallSessionEventHandler.this.mSession.getIdcData() != null && ImsCallSessionEventHandler.this.mSession.getIdcData().getCurrentState() == IdcImsCallSessionData.State.MODIFYING) {
                Log.i(ImsCallSessionEventHandler.this.LOG_IDC_FW_TAG, "Transaction Handling");
                ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(155, this.mEvent.getIdcExtra());
                return;
            }
            SipError errorCode = this.mEvent.getErrorCode();
            int retryAfter = this.mEvent.getRetryAfter();
            if (this.mEvent.getAlternativeService() == CallStateEvent.ALTERNATIVE_SERVICE.INITIAL_REGISTRATION) {
                callEvent = IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_INITIAL_REGI;
            } else if (this.mEvent.getAlternativeService() == CallStateEvent.ALTERNATIVE_SERVICE.EMERGENCY_REGISTRATION) {
                callEvent = IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI;
            } else {
                callEvent = this.mEvent.getAlternativeService() == CallStateEvent.ALTERNATIVE_SERVICE.EMERGENCY ? IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_EMERGENCY : null;
            }
            int videoCrbtSupportType = ImsCallSessionEventHandler.this.mSession.getVideoCrbtSupportType();
            if ((videoCrbtSupportType & 1) == 1 || (videoCrbtSupportType & 2) == 2) {
                ImsCallSessionEventHandler.this.mCallProfile.setVideoCRBT(false);
                ImsCallSessionEventHandler.this.mCallProfile.setDtmfEvent("");
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "isVideoCRBT : " + ImsCallSessionEventHandler.this.mCallProfile.isVideoCRBT());
            }
            if (ImsCallSessionEventHandler.this.mRegistration != null && (registrationGovernor = ImsCallSessionEventHandler.this.mRegistrationManager.getRegistrationGovernor(ImsCallSessionEventHandler.this.mRegistration.getHandle())) != null) {
                errorCode = callEvent != null ? handleErrorOnCallEvent(errorCode, callEvent, registrationGovernor) : handleErrorOnNullEvent(errorCode, registrationGovernor, retryAfter);
            }
            handleErrorOnNullRegistration(errorCode, callEvent);
            if (ImsCallUtil.isCmcPrimaryType(ImsCallSessionEventHandler.this.mSession.getCmcType()) && this.mEvent.getCmcDeviceId() != null && !this.mEvent.getCmcDeviceId().isEmpty()) {
                ImsCallSessionEventHandler.this.mCallProfile.setCmcDeviceId(this.mEvent.getCmcDeviceId());
            }
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(4, retryAfter, -1, errorCode);
        }

        private SipError handleErrorOnCallEvent(SipError sipError, IRegistrationGovernor.CallEvent callEvent, IRegistrationGovernor iRegistrationGovernor) {
            if (ImsCallSessionEventHandler.this.mMno == Mno.CMCC) {
                iRegistrationGovernor.onCallStatus(callEvent, sipError, ImsCallSessionEventHandler.this.mCallProfile.getCallType());
                SipError sipError2 = SipErrorBase.ALTERNATIVE_SERVICE;
                if (!sipError2.equals(sipError)) {
                    return sipError;
                }
                String alternativeServiceType = this.mEvent.getAlternativeServiceType();
                String alternativeServiceReason = this.mEvent.getAlternativeServiceReason();
                String alternativeServiceUrn = this.mEvent.getAlternativeServiceUrn();
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "handleErrorOnCallEvent: type : " + alternativeServiceType + ", reason : " + alternativeServiceReason + ", serviceUrn : " + alternativeServiceUrn);
                String str = ImsCallSessionEventHandler.this.LOG_TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("handleErrorOnCallEvent: phoenId : ");
                sb.append(ImsCallSessionEventHandler.this.mSession.mPhoneId);
                sb.append(", callEvent : ");
                sb.append(callEvent);
                Log.i(str, sb.toString());
                if (ImsRegistry.getPdnController().getEmcBsIndication(ImsCallSessionEventHandler.this.mSession.mPhoneId) == EmcBsIndication.SUPPORTED && callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI) {
                    SipError sipError3 = SipErrorBase.ALTERNATIVE_SERVICE_EMERGENCY;
                    if (TextUtils.isEmpty(alternativeServiceUrn)) {
                        sipError3.setReason(ImsCallUtil.ECC_SERVICE_URN_DEFAULT);
                        return sipError3;
                    }
                    sipError3.setReason(alternativeServiceUrn);
                    return sipError3;
                }
                if (TextUtils.isEmpty(alternativeServiceUrn)) {
                    sipError2.setReason("");
                    return sipError2;
                }
                if (ImsCallUtil.convertUrnToEccCat(alternativeServiceUrn) == 254) {
                    sipError2.setReason(alternativeServiceUrn);
                    return sipError2;
                }
                SipError sipError4 = SipErrorBase.ALTERNATIVE_SERVICE_EMERGENCY_CSFB;
                sipError4.setReason(alternativeServiceUrn);
                return sipError4;
            }
            iRegistrationGovernor.onCallStatus(callEvent, sipError, ImsCallSessionEventHandler.this.mCallProfile.getCallType());
            return ImsCallUtil.onConvertSipErrorReason(this.mEvent, ImsCallSessionEventHandler.this.mMno);
        }

        private SipError handleErrorOnNullEvent(SipError sipError, IRegistrationGovernor iRegistrationGovernor, int i) {
            if (ImsCallSessionEventHandler.this.mMno == Mno.CMCC) {
                return iRegistrationGovernor.onSipError("mmtel", sipError);
            }
            if ((ImsCallSessionEventHandler.this.smCallStateMachine.mReinvite || ImsCallSessionEventHandler.this.smCallStateMachine.mConfCallAdded) && ImsCallSessionEventHandler.this.mMno == Mno.KDDI) {
                Log.e(ImsCallSessionEventHandler.this.LOG_TAG, "Don't send Register for reINVITE's transaction timeout");
                return sipError;
            }
            if (ImsCallSessionEventHandler.this.mMno == Mno.USCC && ((ImsCallSessionEventHandler.this.mSession.getCallState() == CallConstants.STATE.AlertingCall || ImsCallSessionEventHandler.this.mSession.getCallState() == CallConstants.STATE.EndingCall) && sipError.getCode() == 408)) {
                Log.e(ImsCallSessionEventHandler.this.LOG_TAG, "USCC - Don't re-REGISTER for 408 if it is received after 180");
                return sipError;
            }
            if (ImsCallSessionEventHandler.this.mMno == Mno.SPRINT && ImsCallSessionEventHandler.this.mSession.getCallState() == CallConstants.STATE.ModifyingCall) {
                Log.e(ImsCallSessionEventHandler.this.LOG_TAG, "Don't deregister for Re-Invite failures");
                return sipError;
            }
            if (ImsCallSessionEventHandler.this.mMno.isTmobile() && sipError.getCode() == 503 && ImsCallSessionEventHandler.this.mRegistration != null && ImsCallSessionEventHandler.this.mRegistration.getImsProfile() != null && i > 0 && i * 1000 < ImsCallSessionEventHandler.this.mRegistration.getImsProfile().getTimerB()) {
                Log.e(ImsCallSessionEventHandler.this.LOG_TAG, "TMobile EUR - 503 error, retryAfter is smaller then TimerB, UE continues using current P-CSCF address");
                return sipError;
            }
            return iRegistrationGovernor.onSipError("mmtel", sipError);
        }

        private void handleErrorOnNullRegistration(SipError sipError, IRegistrationGovernor.CallEvent callEvent) {
            int retryAfter = this.mEvent.getRetryAfter();
            if (ImsCallSessionEventHandler.this.mMno == Mno.CMCC) {
                return;
            }
            if (ImsCallSessionEventHandler.this.mMno == Mno.KDDI && retryAfter > 0) {
                Log.e(ImsCallSessionEventHandler.this.LOG_TAG, "KDDI : INVITE retry should happen after " + retryAfter + " seconds");
                ImsCallSessionEventHandler.this.smCallStateMachine.setRetryInprogress(true);
            }
            if (callEvent == null || DeviceUtil.getGcfMode()) {
                return;
            }
            handleErrorSetCodeReason(sipError, callEvent);
        }

        private void handleErrorSetCodeReason(SipError sipError, IRegistrationGovernor.CallEvent callEvent) {
            if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI) {
                if (ImsCallSessionEventHandler.this.mMno == Mno.STARHUB || ImsCallSessionEventHandler.this.mMno == Mno.CU) {
                    sipError.setCode(380);
                } else if (ImsCallSessionEventHandler.this.mMno == Mno.SPRINT && this.mEvent.getAlternativeServiceReason().equals("VoIP emergency not available!")) {
                    sipError.setCode(382);
                } else {
                    sipError.setCode(381);
                }
                if (ImsCallSessionEventHandler.this.mMno == Mno.DOCOMO || ImsCallSessionEventHandler.this.mMno == Mno.KDDI || ImsCallSessionEventHandler.this.mMno.isEur() || ImsCallSessionEventHandler.this.mMno == Mno.MOBILEONE) {
                    Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "need to carry service urn info for e911");
                    sipError.setReason(this.mEvent.getAlternativeServiceUrn());
                } else {
                    sipError.setReason("");
                }
                Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "convert error " + sipError.getCode() + " " + sipError.getReason());
                return;
            }
            if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_EMERGENCY) {
                if ((ImsCallSessionEventHandler.this.mRegistration == null || !ImsCallSessionEventHandler.this.mRegistration.getImsProfile().getEcallCsfbWithoutActionTag() || TextUtils.isEmpty(this.mEvent.getAlternativeServiceUrn())) ? false : true) {
                    sipError.setCode(381);
                    sipError.setReason(this.mEvent.getAlternativeServiceUrn());
                    Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "convert error " + sipError.getCode() + " " + sipError.getReason());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleExtendToConference() {
            SipError errorCode = this.mEvent.getErrorCode();
            if (ImsCallSessionEventHandler.this.mMno.isKor()) {
                ImsCallSessionEventHandler.this.mCallProfile.setRemoteVideoCapa(this.mEvent.getRemoteVideoCapa());
            }
            ImsCallSessionEventHandler.this.smCallStateMachine.sendMessage(74, errorCode.getCode(), this.mEvent.getCallType());
        }

        private void modifyCallTypeForPull() {
            Log.i(ImsCallSessionEventHandler.this.LOG_TAG, "modifyCallType for SD to SD pull");
            int callType = ImsCallSessionEventHandler.this.mCallProfile.getCallType();
            int cmcBoundSessionId = ImsCallSessionEventHandler.this.mCallProfile.getCmcBoundSessionId();
            ImsCallSessionEventHandler.this.mVolteSvcIntf.replyModifyCallType(ImsCallSessionEventHandler.this.mSession.getSessionId(), callType, callType, callType, ImsCallSessionEventHandler.this.smCallStateMachine.calculateCmcCallTime(cmcBoundSessionId > 0 ? ImsCallSessionEventHandler.this.mModule.getSession(cmcBoundSessionId) : null, null));
        }
    }

    private void onVideoResumed() {
        this.mCallProfile.getMediaProfile().setVideoPause(false);
        this.smCallStateMachine.sendMessage(83);
    }

    private void onVideoRtpTimeout(boolean z) {
        if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH, Mno.ATT, Mno.DIGI, Mno.RJIL)) {
            this.smCallStateMachine.sendMessage(206);
        }
        if (this.mMno.isOneOf(Mno.CTC, Mno.CTCMO) && z) {
            this.smCallStateMachine.sendMessage(206);
        }
    }

    private void onVideoQuality(boolean z) {
        if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
            if (z) {
                stopPoorVideoTimer();
            } else if (this.mMno == Mno.TMOUS) {
                startPoorVideoTimer(20000L);
            } else {
                startPoorVideoTimer(10000L);
            }
        }
    }

    private void startPoorVideoTimer(long j) {
        Log.i(this.LOG_TAG, "startPoorVideoTimer: " + j);
        stopPoorVideoTimer();
        Message obtainMessage = this.smCallStateMachine.obtainMessage(205);
        this.mPoorVideoTimeoutMessage = obtainMessage;
        this.mAm.sendMessageDelayed(obtainMessage, j);
    }

    private void stopPoorVideoTimer() {
        if (this.mPoorVideoTimeoutMessage == null) {
            return;
        }
        Log.i(this.LOG_TAG, "stopPoorVidoeTimer");
        this.mAm.removeMessage(this.mPoorVideoTimeoutMessage);
        this.mPoorVideoTimeoutMessage = null;
    }

    protected void onUssdEvent(UssdEvent ussdEvent) {
        if (ussdEvent.getSessionID() != this.mSession.getSessionId()) {
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$UssdEvent$USSD_STATE[ussdEvent.getState().ordinal()];
        if (i == 1) {
            this.smCallStateMachine.sendMessage(93, ussdEvent.getErrorCode());
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            this.smCallStateMachine.sendMessage(4, -1, -1, ussdEvent.getErrorCode());
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("status", ussdEvent.getStatus());
        bundle.putInt("dcs", ussdEvent.getDCS());
        bundle.putByteArray("data", ussdEvent.getData());
        this.smCallStateMachine.sendMessage(94, bundle);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionEventHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$UssdEvent$USSD_STATE;

        static {
            int[] iArr = new int[UssdEvent.USSD_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$UssdEvent$USSD_STATE = iArr;
            try {
                iArr[UssdEvent.USSD_STATE.USSD_RESPONSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$UssdEvent$USSD_STATE[UssdEvent.USSD_STATE.USSD_INDICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$UssdEvent$USSD_STATE[UssdEvent.USSD_STATE.USSD_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[IMSMediaEvent.MEDIA_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE = iArr2;
            try {
                iArr2[IMSMediaEvent.MEDIA_STATE.VIDEO_HELD.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_RESUMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_FIRST_FRAME_READY.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_AVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_RTP_TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_RTCP_TIMEOUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_VERYPOOR_QUALITY.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_FAIR_QUALITY.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_GOOD_QUALITY.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_POOR_QUALITY.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_HOLD_FAILED.ordinal()] = 11;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_RESUME_FAILED.ordinal()] = 12;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_START_FAIL.ordinal()] = 13;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_START_SUCCESS.ordinal()] = 14;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE.ordinal()] = 15;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE_NO_SPACE.ordinal()] = 16;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_STOP_SUCCESS.ordinal()] = 17;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_STOP_FAILURE.ordinal()] = 18;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_STOP_NO_SPACE.ordinal()] = 19;
            } catch (NoSuchFieldError unused22) {
            }
            int[] iArr3 = new int[CallStateEvent.CALL_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE = iArr3;
            try {
                iArr3[CallStateEvent.CALL_STATE.RINGING_BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CALLING.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.TRYING.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ESTABLISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.REFRESHFAIL.ordinal()] = 5;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_ADDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.MODIFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_LOCAL.ordinal()] = 8;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_REMOTE.ordinal()] = 9;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_BOTH.ordinal()] = 10;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ENDED.ordinal()] = 11;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.MODIFY_REQUESTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.EARLY_MEDIA_START.ordinal()] = 13;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ERROR.ordinal()] = 14;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.SESSIONPROGRESS.ordinal()] = 15;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.FORWARDED.ordinal()] = 16;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.EXTEND_TO_CONFERENCE.ordinal()] = 17;
            } catch (NoSuchFieldError unused39) {
            }
        }
    }
}
