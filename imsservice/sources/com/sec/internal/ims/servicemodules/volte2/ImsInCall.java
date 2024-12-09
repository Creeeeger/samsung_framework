package com.sec.internal.ims.servicemodules.volte2;

import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.sec.epdg.EpdgManager;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.CmcInfoEvent;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.State;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.imsdc.IdcImsCallSessionData;
import com.sec.internal.ims.mdmi.MdmiServiceModule;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.servicemodules.volte2.data.ConfCallSetupData;
import com.sec.internal.ims.servicemodules.volte2.idc.IdcExtra;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ImsInCall extends CallState {
    ImsInCall(CallStateMachine callStateMachine) {
        super(callStateMachine);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        this.mCsm.resetCallTypeAndErrorFlags();
        enter_InCall();
        if (!ImsCallUtil.isRttCall(this.mSession.getCallProfile().getCallType()) && this.mSession.getDedicatedBearerState(99) != 3) {
            Log.i(this.LOG_TAG, "[InCall] mRttBearerState initialzed to BEARER_STATE_CLOSED");
            this.mSession.setDedicatedBearerState(99, 3);
        }
        if (checkVideo_InCall()) {
            return;
        }
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.mPreAlerting = false;
        callStateMachine.mIsWPSCall = false;
        callStateMachine.mCameraUsedAtOtherApp = false;
        this.mSession.setIsEstablished(true);
        StringBuilder sb = new StringBuilder();
        CallStateMachine callStateMachine2 = this.mCsm;
        sb.append(callStateMachine2.mCallTypeHistory);
        sb.append(",");
        sb.append(this.mSession.getCallProfile().getCallType());
        callStateMachine2.mCallTypeHistory = sb.toString();
        Log.i(this.LOG_TAG, "Enter [InCall]");
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        Log.i(this.LOG_TAG, "[InCall] processMessage " + message.what);
        switch (message.what) {
            case 1:
            case 3:
            case 4:
            case 93:
            case 94:
            case 100:
            case 400:
                break;
            case 13:
                locAcq_InCall(message);
                return true;
            case 16:
                this.mVolteSvcIntf.sendEmergencyLocationPublish(this.mSession.getSessionId());
                return true;
            case 25:
                checkVideoDBR_InCall();
                return true;
            case 41:
                established_InCall();
                return true;
            case 51:
                hold_InCall();
                return true;
            case 52:
                return update_InCall(message);
            case 55:
                return switchRequest_InCall(message);
            case 56:
                Bundle bundle = (Bundle) message.obj;
                this.mVolteSvcIntf.handleDtmf(this.mSession.getSessionId(), bundle.getInt("code"), bundle.getInt("mode"), bundle.getInt("operation"), (Message) bundle.getParcelable("result"));
                return true;
            case 59:
                this.mCsm.transferCall((String) message.obj);
                return true;
            case 60:
                cancelTransfer_InCall();
                return true;
            case 62:
                this.mCsm.handleRemoteHeld(true);
                return true;
            case 64:
                this.mCsm.sendRTTtext(message);
                return true;
            case 71:
                Log.i(this.LOG_TAG, "[InCall] already in InCall");
                this.mCsm.notifyOnResumed(true);
                return true;
            case 73:
                extendToConference(Arrays.asList((String[]) message.obj));
                return true;
            case 74:
                extendToConf_InCall(message);
                return true;
            case 75:
                referStatus_InCall(message);
                return true;
            case 80:
                holdVideo_InCall();
                return true;
            case 81:
                resumeVideo_InCall();
                return true;
            case 82:
                Log.i(this.LOG_TAG, "[InCall] Video held.");
                this.mCsm.notifyOnModified(this.mSession.getCallProfile().getCallType());
                return true;
            case 83:
                Log.i(this.LOG_TAG, "[InCall] Video resumed.");
                this.mCsm.notifyOnModified(this.mSession.getCallProfile().getCallType());
                CallStateMachine callStateMachine = this.mCsm;
                callStateMachine.transitionTo(callStateMachine.mInCall);
                return true;
            case 86:
                Log.i(this.LOG_TAG, "[InCall] Receive CMC DTMF EVENT.");
                this.mCsm.notifyCmcDtmfEvent(message.arg1);
                return true;
            case 87:
                Log.i(this.LOG_TAG, "[InCall] Receive CMC INFO EVENT.");
                notifyCmcInfoEvent((CmcInfoEvent) message.obj);
                return true;
            case 91:
                modified_InCall(message);
                return true;
            case 101:
                sendInfo_InCall(message);
                return true;
            case 151:
                sendReInvite_Idc((IdcExtra) message.obj);
                return true;
            case 152:
                end_Idc((IdcExtra) message.obj);
                return true;
            case 154:
                return idcSwitchRequest_InCall(message);
            case 205:
            case 206:
                videoRTPTImer_InCall();
                return true;
            case 207:
                camStartFailed_InCall();
                return true;
            case 209:
            case 210:
                rttDBRLost_InCall();
                return true;
            case 302:
                return handleUpdate(this.mSession.mModifyRequestedProfile);
            case 500:
                locAcqTimeout_InCall(message);
                return true;
            case 501:
                locAcqSuccess_InCall(message);
                return true;
            case 502:
                reInvite_InCall();
                return true;
            case 600:
                enter();
                return true;
            case 700:
                notifyRecordState(message.arg1);
                return true;
            case 5000:
                int dbrLost_InCall = dbrLost_InCall(message);
                if (dbrLost_InCall != -1) {
                    return dbrLost_InCall == 1;
                }
                break;
            case CallStateMachine.DELAYED_EPSFB_CHECK_TIMING /* 5001 */:
                Log.i(this.LOG_TAG, "DELAYED_EPSFB_CHECK_TIMING");
                NetworkEvent network = this.mModule.getNetwork(this.mSession.mPhoneId);
                if (network != null && network.network != 20 && !this.mSession.isEpdgCall()) {
                    this.mSession.mEpsFallback = true;
                }
                this.mRegistrationManager.updateEpsFbInImsCall(this.mSession.getPhoneId());
                return true;
            default:
                Log.e(this.LOG_TAG, "[" + getName() + "] msg:" + message.what + " ignored !!!");
                return true;
        }
        if (this.mCsm.mIsMdmiEnabled && ImsCallUtil.isE911Call(this.mSession.getCallProfile().getCallType())) {
            this.mCsm.mMdmiE911Listener.notifySipMsg(MdmiServiceModule.msgType.SIP_BYE, 0L);
        }
        return false;
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void exit() {
        this.mCsm.setPreviousState(this);
    }

    private void enter_InCall() {
        if (this.mCsm.hasMessages(303)) {
            this.mCsm.removeMessages(303);
        }
        KeepAliveSender keepAliveSender = this.mSession.mKaSender;
        if (keepAliveSender != null) {
            keepAliveSender.stop();
        }
        handleCallEstablished();
        handleCMCPublishDialog();
        handleEPSFB();
    }

    private void handleEPSFB() {
        ImsCallSession imsCallSession = this.mSession;
        if (!imsCallSession.mIsNrSaMode || imsCallSession.isEpdgCall()) {
            return;
        }
        NetworkEvent network = this.mModule.getNetwork(this.mSession.mPhoneId);
        if (network != null && network.network != 20) {
            this.mSession.mEpsFallback = true;
        }
        if (this.mMno == Mno.VODAFONE_AUSTRALIA && !this.mSession.mEpsFallback) {
            this.mCsm.sendMessageDelayed(CallStateMachine.DELAYED_EPSFB_CHECK_TIMING, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
        } else {
            this.mRegistrationManager.updateEpsFbInImsCall(this.mSession.getPhoneId());
        }
    }

    private void handleCMCPublishDialog() {
        State previousState = this.mCsm.getPreviousState();
        CallStateMachine callStateMachine = this.mCsm;
        if ((previousState == callStateMachine.mModifyRequested || callStateMachine.getPreviousState() == this.mCsm.mModifyingCall) && this.mSession.getCallProfile().getCallType() == 1) {
            this.mCsm.sendCmcPublishDialog();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
    
        if (r5.mSession.getCallProfile().isPullCall() != true) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleCallEstablished() {
        /*
            Method dump skipped, instructions count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsInCall.handleCallEstablished():void");
    }

    private boolean handleUpdate(CallProfile callProfile) {
        boolean z = false;
        if (callProfile == null) {
            return false;
        }
        if (this.mCsm.isChangedCallType(callProfile) && this.mCsm.modifyCallType(callProfile, true)) {
            z = true;
        }
        if (z) {
            this.mSession.mModifyRequestedProfile = callProfile;
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mModifyingCall);
        } else {
            this.mSession.mModifyRequestedProfile = null;
        }
        return true;
    }

    private void handleSetVideoQuality() {
        if (this.mMno == Mno.RJIL) {
            if ("HD720" == this.mSession.getCallProfile().getMediaProfile().getVideoSize() || "HD720LAND" == this.mSession.getCallProfile().getMediaProfile().getVideoSize()) {
                this.mSession.getCallProfile().getMediaProfile().setVideoQuality(16);
                return;
            }
            if ("VGA" == this.mSession.getCallProfile().getMediaProfile().getVideoSize() || "VGALAND" == this.mSession.getCallProfile().getMediaProfile().getVideoSize()) {
                this.mSession.getCallProfile().getMediaProfile().setVideoQuality(15);
            } else if ("QVGA" == this.mSession.getCallProfile().getMediaProfile().getVideoSize() || "QVGALAND" == this.mSession.getCallProfile().getMediaProfile().getVideoSize()) {
                this.mSession.getCallProfile().getMediaProfile().setVideoQuality(13);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x005d, code lost:
    
        if (r3.getPreviousState() != r8.mCsm.mAlertingCall) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean checkVideo_InCall() {
        /*
            Method dump skipped, instructions count: 313
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsInCall.checkVideo_InCall():boolean");
    }

    protected boolean downgradeVideoToVoiceRequest() {
        if (this.mSession.getCallProfile().getCallType() != 2 && this.mSession.getCallProfile().getCallType() != 3) {
            return false;
        }
        Log.i(this.LOG_TAG, "[InCall] downgradeVideoToVoiceRequest() trigger downgrade");
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(1);
        this.mSession.mModifyRequestedProfile = callProfile;
        return this.mCsm.modifyCallType(callProfile, true);
    }

    private void hold_InCall() {
        if (this.mRegistration == null || this.mModule.isProhibited(this.mSession.getPhoneId())) {
            this.mCsm.notifyOnError(NSDSNamespaces.NSDSResponseCode.ERROR_SERVER_ERROR, "Call hold failed");
        } else if (this.mVolteSvcIntf.holdCall(this.mSession.getSessionId()) < 0) {
            this.mCsm.sendMessage(4, 0, -1, new SipError(1006, "remote exception"));
        } else {
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mHoldingCall);
        }
    }

    private void established_InCall() {
        if (this.mMno != Mno.STARHUB) {
            this.mCsm.handleRemoteHeld(false);
        }
    }

    private boolean update_InCall(Message message) {
        if (this.mModule.isProhibited(this.mSession.getPhoneId())) {
            this.mCsm.notifyOnError(1109, "Call switch failed");
            return true;
        }
        return handleUpdate((CallProfile) ((Bundle) message.obj).getParcelable("profile"));
    }

    private void videoRTPTImer_InCall() {
        Log.i(this.LOG_TAG, "[InCall] Downgrade Video Quality due to Poor Video Quality/RTP Timeout");
        IMSLog.c(LogClass.VOLTE_VIDEO_RTP_TIMEOUT, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
        this.mCsm.mVideoRTPtimeout = true;
        if (handleVideoDowngradeRequest()) {
            this.mSession.notifyCallDowngraded();
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mModifyingCall);
        }
    }

    private void rttDBRLost_InCall() {
        Log.i(this.LOG_TAG, "[InCall] Downgrade voice call due to Rtt DBR Timeout/Lost");
        if (handleRttDowngradeRequest()) {
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mModifyingCall);
        }
    }

    protected boolean handleRttDowngradeRequest() {
        EpdgManager epdgManager;
        Log.i(this.LOG_TAG, "[InCall] handleRttDowngradeRequest: " + this.mCsm.getCurrentState().getName());
        this.mSession.setRttDedicatedBearerTimeoutMessage(null);
        IRegistrationManager iRegistrationManager = this.mRegistrationManager;
        if (iRegistrationManager != null && iRegistrationManager.isVoWiFiSupported(this.mSession.getPhoneId()) && (epdgManager = this.mModule.getEpdgManager()) != null && epdgManager.isDuringHandoverForIMS()) {
            Log.i(this.LOG_TAG, "handleRttDowngradeRequest: ignore RTT Dedicated Bearer Lost due to EPDG for mno:" + this.mMno);
            this.mSession.stopRttDedicatedBearerTimer();
            this.mSession.setDedicatedBearerState(99, 3);
            return false;
        }
        if (!ImsCallUtil.isRttCall(this.mSession.getCallProfile().getCallType()) || this.mCsm.mRemoteHeld) {
            return false;
        }
        Log.i(this.LOG_TAG, "handleRttDowngradeRequest: trigger downgrade");
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(1);
        this.mSession.mModifyRequestedProfile = callProfile;
        return this.mCsm.modifyCallType(callProfile, true);
    }

    private boolean switchRequest_InCall(Message message) {
        this.mSession.mModifyRequestedProfile = new CallProfile();
        this.mSession.mModifyRequestedProfile.setCallType(message.arg1);
        this.mSession.mModifyRequestedProfile.getMediaProfile().setVideoQuality(this.mSession.getCallProfile().getMediaProfile().getVideoQuality());
        if (this.mModule.hasRingingCall()) {
            Log.i(this.LOG_TAG, "[InCall] Rejecting switch request - send 603 to remote party has Incoming call on other session");
            if (this.mCsm.rejectModifyCallType(Id.REQUEST_UPDATE_TIME_IN_PLANI) >= 0) {
                return true;
            }
            this.mCsm.sendMessage(4, 0, -1, new SipError(1006, ""));
            return false;
        }
        int determineCamera = this.mCsm.determineCamera(this.mSession.mModifyRequestedProfile.getCallType(), true);
        if (!this.mSession.getUsingCamera() && determineCamera >= 0) {
            this.mSession.startCamera(determineCamera);
        }
        if (!ImsCallUtil.isTtyCall(this.mSession.mModifyRequestedProfile.getCallType()) && !ImsCallUtil.isRttCall(this.mSession.getCallProfile().getCallType()) && !ImsCallUtil.isRttCall(this.mSession.mModifyRequestedProfile.getCallType())) {
            this.mMediaController.receiveSessionModifyRequest(this.mSession.getSessionId(), this.mSession.mModifyRequestedProfile);
        }
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.transitionTo(callStateMachine.mModifyRequested);
        if (this.mSession.mModifyRequestedProfile.getCallType() == 9) {
            this.mCsm.sendMessage(22, this.mSession.mModifyRequestedProfile);
        } else if (ImsCallUtil.isRttCall(this.mSession.mModifyRequestedProfile.getCallType()) || ImsCallUtil.isRttCall(this.mSession.getCallProfile().getCallType())) {
            this.mModule.onSendRttSessionModifyRequest(this.mSession.getCallId(), ImsCallUtil.isRttCall(this.mSession.mModifyRequestedProfile.getCallType()));
        } else {
            notifyOnSessionUpdateRequested(message.arg1, (byte[]) message.obj);
        }
        return true;
    }

    private void holdVideo_InCall() {
        if (ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) && this.mMno == Mno.VZW) {
            if (this.mCsm.isDeferedVideoResume) {
                Log.i(this.LOG_TAG, "[InCall] video resume defered. ignore video hold");
                this.mCsm.isDeferedVideoResume = false;
            } else {
                this.mMediaController.holdVideo(this.mSession.getSessionId());
                CallStateMachine callStateMachine = this.mCsm;
                callStateMachine.transitionTo(callStateMachine.mHoldingVideo);
            }
        }
    }

    private void resumeVideo_InCall() {
        if (this.mMno == Mno.VZW && ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType())) {
            this.mCsm.isDeferedVideoResume = false;
            this.mMediaController.resumeVideo(this.mSession.getSessionId());
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mResumingVideo);
        }
    }

    private void extendToConference(List<String> list) {
        ArrayList arrayList = new ArrayList();
        int callType = this.mSession.getCallProfile().getCallType();
        for (int i = 0; i < list.size(); i++) {
            if (this.mMno != Mno.LGU || list.get(i) == null || !list.get(i).equals(this.mSession.getCallProfile().getDialingNumber())) {
                arrayList.add(this.mSession.buildUri(list.get(i), null, callType).toString());
            }
        }
        if (this.mRegistration != null && arrayList.size() > 0) {
            ImsProfile imsProfile = this.mRegistration.getImsProfile();
            ConfCallSetupData confCallSetupData = new ConfCallSetupData(this.mSession.getConferenceUri(imsProfile), arrayList, callType);
            confCallSetupData.enableSubscription(this.mSession.getConfSubscribeEnabled(imsProfile));
            confCallSetupData.setSubscribeDialogType(this.mSession.getConfSubscribeDialogType(imsProfile));
            confCallSetupData.setReferUriType(this.mSession.getConfReferUriType(imsProfile));
            confCallSetupData.setRemoveReferUriType(this.mSession.getConfRemoveReferUriType(imsProfile));
            confCallSetupData.setReferUriAsserted(this.mSession.getConfReferUriAsserted(imsProfile));
            confCallSetupData.setOriginatingUri(this.mSession.getOriginatingUri());
            confCallSetupData.setUseAnonymousUpdate(this.mSession.getConfUseAnonymousUpdate(imsProfile));
            confCallSetupData.setSupportPrematureEnd(this.mSession.getConfSupportPrematureEnd(imsProfile));
            int addUserForConferenceCall = this.mVolteSvcIntf.addUserForConferenceCall(this.mSession.getSessionId(), confCallSetupData, true);
            Log.i(this.LOG_TAG, "[InCall] extendToConference() returned session id " + addUserForConferenceCall);
            if (addUserForConferenceCall < 0) {
                this.mCsm.sendMessage(4, 0, -1, new SipError(1002, "stack return -1"));
                return;
            }
            return;
        }
        this.mCsm.sendMessage(4, 0, -1, new SipError(1005, "Not enough participant."));
    }

    private void extendToConf_InCall(Message message) {
        int callType = this.mSession.getCallProfile().getCallType();
        if (callType != message.arg2) {
            Log.i(this.LOG_TAG, "[InCall] callType " + callType + " to callType " + message.arg2);
            this.mSession.getCallProfile().setCallType(message.arg2);
            this.mSession.getCallProfile().setConferenceCall(2);
        }
        this.mCsm.notifyOnModified(message.arg2);
    }

    private void cancelTransfer_InCall() {
        if (this.mCsm.mTransferRequested) {
            Log.i(this.LOG_TAG, "[InCall] cancel call transfer");
            this.mCsm.notifyOnError(1119, "cancel call transfer");
            if (this.mVolteSvcIntf.cancelTransferCall(this.mSession.getSessionId()) < 0) {
                this.mCsm.notifyOnError(1121, "cancel call transfer fail", 0);
            }
            this.mCsm.notifyOnError(1120, "cancel call transfer success", 0);
            this.mCsm.mTransferRequested = false;
            return;
        }
        Log.e(this.LOG_TAG, "[InCall] call transfer is not requested, so ignore cancel transfer");
        this.mCsm.notifyOnError(1121, "cancel call transfer fail", 0);
    }

    private void referStatus_InCall(Message message) {
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.mTransferRequested) {
            if (message.arg1 == 200) {
                callStateMachine.notifyOnError(1118, "call transfer success (" + message.arg1 + ")");
            } else {
                callStateMachine.notifyOnError(1119, "call transfer failed (" + message.arg1 + ")");
            }
            CallStateMachine callStateMachine2 = this.mCsm;
            callStateMachine2.mHoldBeforeTransfer = false;
            callStateMachine2.mTransferRequested = false;
        }
    }

    private void modified_InCall(Message message) {
        int i = message.arg1;
        int i2 = message.arg2;
        Log.i(this.LOG_TAG, "[InCall] modifiedCallType " + i + ", orgCallType " + i2);
        if (i != i2 && (ImsCallUtil.isRttCall(i) || ImsCallUtil.isRttCall(i2))) {
            this.mModule.onSendRttSessionModifyResponse(this.mSession.getCallId(), !ImsCallUtil.isRttCall(i2) && ImsCallUtil.isRttCall(i), true);
        }
        String isFocus = this.mSession.getCallProfile().getIsFocus();
        Mno mno = Mno.ZAIN_KSA;
        Mno mno2 = this.mMno;
        if ((mno == mno2 || Mno.AIRTEL == mno2 || Mno.MTN_SOUTHAFRICA == mno2) && "1".equals(isFocus)) {
            this.mCsm.notifyOnResumed(false);
        } else {
            this.mCsm.notifyOnModified(i);
            if (!ImsCallUtil.isTtyCall(i)) {
                CallProfile callProfile = new CallProfile();
                callProfile.setCallType(i);
                callProfile.getMediaProfile().setVideoQuality(this.mSession.getCallProfile().getMediaProfile().getVideoQuality());
                IImsMediaController iImsMediaController = this.mMediaController;
                int sessionId = this.mSession.getSessionId();
                ImsCallSession imsCallSession = this.mSession;
                CallProfile callProfile2 = imsCallSession.mModifyRequestedProfile;
                if (callProfile2 == null) {
                    callProfile2 = imsCallSession.getCallProfile();
                }
                iImsMediaController.receiveSessionModifyResponse(sessionId, 200, callProfile2, callProfile);
            }
        }
        this.mCsm.isStartedCamera(this.mSession.getCallProfile().getCallType(), false);
    }

    private int dbrLost_InCall(Message message) {
        if (message.arg1 == 2) {
            Mno mno = this.mMno;
            if (mno == Mno.CTC || mno == Mno.CU || mno == Mno.CTCMO) {
                if (mno == Mno.CU && this.mSession.getDedicatedBearerState(2) != 3 && this.mSession.getCallProfile().getCallType() == 4) {
                    return -1;
                }
                Log.i(this.LOG_TAG, "[InCall] Downgrade Call due to Video Dedicated Bearer lost");
                if (handleVideoDowngradeRequest()) {
                    this.mSession.notifyCallDowngraded();
                    CallStateMachine callStateMachine = this.mCsm;
                    callStateMachine.transitionTo(callStateMachine.mModifyingCall);
                    return 1;
                }
            } else {
                CallProfile callProfile = this.mSession.getCallProfile();
                callProfile.setCallType(1);
                return handleUpdate(callProfile) ? 1 : 0;
            }
        }
        return -1;
    }

    private void camStartFailed_InCall() {
        Mno mno = this.mMno;
        if (mno == Mno.DOCOMO || mno.isKor()) {
            return;
        }
        if (downgradeVideoToVoiceRequest()) {
            Log.i(this.LOG_TAG, "[InCall] Downgrade Call due to StartCamera failed");
            IMSLog.c(LogClass.VOLTE_START_CAMERA_FAIL, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
            this.mSession.notifyCallDowngraded();
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mModifyingCall);
        }
        this.mCsm.mIsStartCameraSuccess = true;
    }

    private void reInvite_InCall() {
        this.mCsm.callType = this.mSession.getCallProfile().getCallType();
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.mReinvite = true;
        if ((!ImsCallUtil.isVideoCall(callStateMachine.callType) || this.mMno != Mno.ATT) && !this.mCsm.mRemoteHeld) {
            Log.i(this.LOG_TAG, "[InCall] send H/O Re-INVITE");
            this.mVolteSvcIntf.sendReInvite(this.mSession.getSessionId(), new SipReason("SIP", 0, "", new String[0]));
        } else {
            Log.i(this.LOG_TAG, "[InCall] calltype=" + this.mCsm.callType + ", ignore re-INVITE");
        }
    }

    private void sendInfo_InCall(Message message) {
        Log.i(this.LOG_TAG, "[InCall] sendInfo");
        this.mCsm.callType = this.mSession.getCallProfile().getCallType();
        Bundle bundle = (Bundle) message.obj;
        String string = bundle.getString(McsConstants.BundleData.INFO);
        int i = bundle.getInt("type");
        Log.i(this.LOG_TAG, "info callType= %d" + this.mCsm.callType + ", request=%s" + string + ", ussdType=%d" + i);
        this.mVolteSvcIntf.sendInfo(this.mSession.getSessionId(), this.mCsm.callType, string, i);
    }

    private void checkVideoDBR_InCall() {
        if (this.mSession.getDedicatedBearerState(2) == 3 && this.mSession.getDedicatedBearerState(8) == 3) {
            Log.i(this.LOG_TAG, "[InCall] Downgrade Call due to Video DBR is not opened");
            if (handleVideoDowngradeRequest()) {
                this.mSession.notifyCallDowngraded();
                CallStateMachine callStateMachine = this.mCsm;
                callStateMachine.transitionTo(callStateMachine.mModifyingCall);
            }
        }
    }

    private boolean handleVideoDowngradeRequest() {
        Log.i(this.LOG_TAG, "[InCall] handleVideoDowngradeRequest: " + this.mCsm.getCurrentState().getName());
        if ((this.mSession.getCallProfile().getCallType() != 2 && this.mSession.getCallProfile().getCallType() != 4) || this.mCsm.mRemoteHeld) {
            return false;
        }
        Log.i(this.LOG_TAG, "handleVideoDowngradeRequest: trigger downgrade");
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(1);
        return this.mCsm.modifyCallType(callProfile, true);
    }

    private void notifyOnSessionUpdateRequested(int i, byte[] bArr) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onSessionUpdateRequested(i, bArr);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyCmcInfoEvent(CmcInfoEvent cmcInfoEvent) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyCmcDtmfEvent: " + cmcInfoEvent.getExternalCallId() + ", recordEvent : " + cmcInfoEvent.getRecordEvent());
        for (int i = 0; i < beginBroadcast; i++) {
            IImsCallSessionEventListener broadcastItem = this.mListeners.getBroadcastItem(i);
            try {
                this.mSession.mCallProfile.setCmcRecordEvent(cmcInfoEvent.getRecordEvent());
                broadcastItem.onProfileUpdated(this.mSession.mCallProfile.getMediaProfile(), this.mSession.mCallProfile.getMediaProfile());
                this.mSession.mCallProfile.setCmcRecordEvent(-1);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void notifyRecordState(int i) {
        Log.i(this.LOG_TAG, "[InCall] notifyRecordState: " + i);
        this.mSession.mCallProfile.setRecordState(i);
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onProfileUpdated(this.mSession.mCallProfile.getMediaProfile(), this.mSession.mCallProfile.getMediaProfile());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void locAcq_InCall(Message message) {
        Log.i(this.LOG_TAG, "[InCall] Request Location Acquiring");
        IGeolocationController geolocationController = ImsRegistry.getGeolocationController();
        if (geolocationController != null) {
            this.mCsm.mRequestLocation = geolocationController.startGeolocationUpdate(this.mSession.getPhoneId(), true);
            int locationAcquireTime = getLocationAcquireTime(this.mSession.getPhoneId());
            IMSLog.c(LogClass.VOLTE_GET_GEOLOCATION, this.mSession.getPhoneId() + "," + this.mSession.getSessionId() + "," + (this.mCsm.mRequestLocation ? 1 : 0) + "," + locationAcquireTime);
            CallStateMachine callStateMachine = this.mCsm;
            if (callStateMachine.mRequestLocation) {
                callStateMachine.sendMessageDelayed(500, locationAcquireTime);
                this.mCsm.isLocationAcquiringTriggered = true;
            }
        }
    }

    private int getLocationAcquireTime(int i) {
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile == null) {
            Log.i(this.LOG_TAG, "[ReadyToCall] imsProfile is null, use default");
            return ImsCallUtil.DEFAULT_LOCATION_ACQUIRE_TIME;
        }
        return imsProfile.getLocationAcquireFailIncall();
    }

    private void locAcqSuccess_InCall(Message message) {
        if (this.mCsm.isLocationAcquiringTriggered) {
            Log.i(this.LOG_TAG, "[InCall] Location Acquiring Success -> Send PUBLISH");
            if (ImsRegistry.getGeolocationController() != null) {
                this.mCsm.removeMessages(500);
                this.mCsm.isLocationAcquiringTriggered = false;
            }
            IMSLog.c(LogClass.VOLTE_GEOLOCATION_SUCCESS, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
            this.mCsm.sendMessage(16);
        }
    }

    private void locAcqTimeout_InCall(Message message) {
        if (this.mCsm.isLocationAcquiringTriggered) {
            Log.i(this.LOG_TAG, "[InCall] Location Acquiring Timeout & Get Last known Location -> Start PUBLISH");
            this.mCsm.isLocationAcquiringTriggered = false;
            IGeolocationController geolocationController = ImsRegistry.getGeolocationController();
            if (geolocationController != null) {
                geolocationController.updateGeolocationFromLastKnown(this.mSession.getPhoneId());
            }
            IMSLog.c(LogClass.VOLTE_GEOLOCATION_FAIL, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
            this.mCsm.sendMessage(16);
        }
    }

    private void sendReInvite_Idc(IdcExtra idcExtra) {
        Log.i(this.LOG_IDC_FW_TAG, "send IDC-ADC Offer ReInvite");
        if (this.mSession.getIdcData() == null) {
            Log.i(this.LOG_IDC_FW_TAG, "fail because mSession.getIdcData() null");
        } else if (this.mCsm.modifyIdcRequest(idcExtra)) {
            this.mSession.getIdcData().transitState(IdcImsCallSessionData.State.MODIFYING);
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mModifyingCall);
        }
    }

    private void end_Idc(IdcExtra idcExtra) {
        Log.i(this.LOG_IDC_FW_TAG, "send IDC-ADC end ReInvite");
        if (this.mSession.getIdcData() == null) {
            Log.i(this.LOG_IDC_FW_TAG, "fail because mSession.getIdcData() null");
        } else if (this.mCsm.modifyIdcRequest(idcExtra)) {
            this.mSession.getIdcData().transitState(IdcImsCallSessionData.State.MODIFYING);
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mModifyingCall);
        }
    }

    private boolean idcSwitchRequest_InCall(Message message) {
        if (this.mSession.getIdcData() == null) {
            return false;
        }
        this.mModule.hasRingingCall();
        this.mModule.getIdcServiceHelper().receiveSdpOffer(this.mSession.getSessionId(), (IdcExtra) message.obj);
        this.mSession.getIdcData().transitState(IdcImsCallSessionData.State.MODIFY_REQUESTED);
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.transitionTo(callStateMachine.mModifyRequested);
        return true;
    }
}
