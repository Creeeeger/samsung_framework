package com.sec.internal.ims.servicemodules.volte2;

import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class ImsDefaultCall extends CallState {
    ImsDefaultCall(CallStateMachine callStateMachine) {
        super(callStateMachine);
    }

    private boolean isDbrLostIgnoredWhenAudioDbrReestablished() {
        Mno mno = this.mMno;
        return mno == Mno.SWISSCOM || mno == Mno.BITE_LATVIA || mno == Mno.LMT_LATVIA || mno == Mno.TELE2_LATVIA;
    }

    protected void dbrLost_ANYSTATE(Message message) {
        if (message.arg1 == 1) {
            if (this.mMno.isChn() && this.mCsm.mOnErrorDelayed) {
                Log.i(this.LOG_TAG, "[ANYSTATE] Delaying CSFB is InProgress. Ignore DBR lost");
                this.mCsm.mOnErrorDelayed = false;
                return;
            }
            if (this.mSession.getDedicatedBearerState(1) != 3 && isDbrLostIgnoredWhenAudioDbrReestablished()) {
                Log.i(this.LOG_TAG, "[ANYSTATE] Audio dedicated bearer is re-established. Ignore DBR lost");
                return;
            }
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.sipReason = callStateMachine.getSipReasonFromUserReason(11);
            IVolteServiceInterface iVolteServiceInterface = this.mVolteSvcIntf;
            int sessionId = this.mSession.getSessionId();
            CallStateMachine callStateMachine2 = this.mCsm;
            if (iVolteServiceInterface.endCall(sessionId, callStateMachine2.callType, callStateMachine2.sipReason) < 0) {
                this.mCsm.sendMessage(4, 0, -1, new SipError(Id.REQUEST_SIP_DIALOG_OPEN, ""));
                return;
            }
            this.mSession.setEndType(1);
            this.mSession.setEndReason(11);
            if (this.mMno == Mno.KDDI) {
                this.mCsm.errorCode = 2699;
            } else {
                this.mCsm.errorCode = Id.REQUEST_SIP_DIALOG_OPEN;
            }
            CallStateMachine callStateMachine3 = this.mCsm;
            callStateMachine3.transitionTo(callStateMachine3.mEndingCall);
        }
    }

    protected void terminate_ANYSTATE(Message message) {
        IRegistrationGovernor registrationGovernor;
        this.mSession.setEndType(1);
        this.mCsm.callType = this.mSession.getCallProfile().getCallType();
        int i = message.arg1;
        if (i == 19) {
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.errorCode = 4001;
            callStateMachine.notifyOnEnded(4001);
            return;
        }
        if (i == 8) {
            this.mCsm.srvccStarted = false;
            Log.i(this.LOG_TAG, "[ANYSTATE] SRVCC HO Success");
            IMSLog.c(LogClass.VOLTE_SRVCC_SUCCESS_UNHA_TERM, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
        }
        CallStateMachine callStateMachine2 = this.mCsm;
        if (callStateMachine2.srvccStarted) {
            Log.i(this.LOG_TAG, "[ANYSTATE] SRVCC HO ongoing, do not terminate call");
            return;
        }
        callStateMachine2.sipReason = callStateMachine2.getSipReasonFromUserReason(message.arg1);
        if (this.mMno == Mno.TMOUS) {
            int i2 = this.mCsm.errorCode;
            if ((i2 == 503 || i2 == 28) && !ImsCallUtil.isE911Call(this.mSession.mCallProfile.getCallType())) {
                CallStateMachine callStateMachine3 = this.mCsm;
                callStateMachine3.sipReason = callStateMachine3.getSipReasonFromUserReason(28);
                IRegistrationGovernor registrationGovernor2 = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle());
                if (registrationGovernor2 != null) {
                    registrationGovernor2.onSipError("mmtel", SipErrorBase.SIP_INVITE_TIMEOUT);
                }
            } else if (this.mSession.getDRBLost() || this.mCsm.errorCode == 11) {
                Log.i(this.LOG_TAG, "TMOUS, DBR Lost");
                CallStateMachine callStateMachine4 = this.mCsm;
                callStateMachine4.sipReason = callStateMachine4.getSipReasonFromUserReason(11);
            }
        }
        if (message.arg2 == 3) {
            Log.i(this.LOG_TAG, "[ANYSTATE] Local Release");
            this.mSession.setEndType(3);
            CallStateMachine callStateMachine5 = this.mCsm;
            SipReason sipReason = callStateMachine5.sipReason;
            if (sipReason == null) {
                callStateMachine5.sipReason = new SipReason("", 0, "", true, new String[0]);
            } else {
                sipReason.setLocalRelease(true);
            }
        }
        if (this.mMno == Mno.DISH && this.mRegistration != null && !this.mSession.isE911Call() && (registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle())) != null) {
            IRegistrationGovernor.CallEvent callEvent = IRegistrationGovernor.CallEvent.EVENT_CALL_SILENT_REDIAL_END;
            CallStateMachine callStateMachine6 = this.mCsm;
            registrationGovernor.onCallStatus(callEvent, callStateMachine6.sipError, callStateMachine6.callType);
        }
        IVolteServiceInterface iVolteServiceInterface = this.mVolteSvcIntf;
        int sessionId = this.mSession.getSessionId();
        CallStateMachine callStateMachine7 = this.mCsm;
        if (iVolteServiceInterface.endCall(sessionId, callStateMachine7.callType, callStateMachine7.sipReason) < 0) {
            this.mCsm.sendMessage(4, 0, -1, new SipError(230, ""));
        }
    }

    protected void handleBigData_ANYSTATE(Message message) {
        if (this.mCsm.errorCode != 2414 && (this.mMno != Mno.TMOUS || SemSystemProperties.get("ro.boot.hardware", "").contains("qcom") || this.mCsm.errorCode != 503)) {
            this.mCsm.errorCode = ImsCallUtil.convertCallEndReasonToFramework(1, message.arg1);
        }
        Log.i(this.LOG_TAG, "[handleBigData_ANYSTATE] setEndReason: " + message.arg1);
        this.mSession.setEndReason(message.arg1);
        if (message.arg1 < 0) {
            this.mCsm.errorCode = 220;
        }
        CallStateMachine callStateMachine = this.mCsm;
        int i = callStateMachine.errorCode;
        if (i == 1701) {
            callStateMachine.mIsBigDataEndReason = true;
            callStateMachine.errorMessage = "Network disconnected";
            return;
        }
        if (i == 1107) {
            callStateMachine.mIsBigDataEndReason = true;
            callStateMachine.errorMessage = "Network handover";
            return;
        }
        if (i == 2503) {
            callStateMachine.mIsBigDataEndReason = true;
            callStateMachine.errorMessage = "Network disconnected";
            return;
        }
        if (i == 1201) {
            callStateMachine.mIsBigDataEndReason = true;
            callStateMachine.errorMessage = "Qos failure";
        } else if (i == 6007) {
            callStateMachine.mIsBigDataEndReason = true;
            callStateMachine.errorMessage = "pull call by primary";
        } else if (i == 1703) {
            callStateMachine.mIsBigDataEndReason = true;
            callStateMachine.errorMessage = "Network disconnected";
        }
    }

    protected void ended_ANYSTATE(Message message) {
        boolean z;
        Object obj = message.obj;
        if (obj != null && (obj instanceof String)) {
            this.mCsm.errorMessage = (String) obj;
            Log.i(this.LOG_TAG, "[ANYSTATE] ENDED Reason " + this.mCsm.errorMessage);
            Mno mno = this.mMno;
            if (mno == Mno.VZW) {
                z = checkVZWHasEndReason();
            } else if (mno == Mno.ATT) {
                z = checkATTHasEndReason();
            } else if (mno == Mno.MDMN) {
                z = checkMDMNHasEndReason();
            } else if (this.mCsm.getState() == CallConstants.STATE.IncomingCall && isCallForkingReason(this.mCsm.errorMessage)) {
                if ("call completed elsewhere".equalsIgnoreCase(this.mCsm.errorMessage) || this.mCsm.errorMessage.toLowerCase().contains("call completed elsewhere")) {
                    this.mCsm.errorCode = ImSessionEvent.SEND_DELIVERED_NOTIFICATION;
                } else {
                    if ("busy everywhere".equalsIgnoreCase(this.mCsm.errorMessage) || "declined".equalsIgnoreCase(this.mCsm.errorMessage)) {
                        this.mCsm.errorCode = ImSessionEvent.RECEIVE_SLM_MESSAGE;
                    }
                    z = false;
                }
                z = true;
            } else {
                if (this.mMno == Mno.TELSTRA && "RTP Timeout".equalsIgnoreCase(this.mCsm.errorMessage)) {
                    this.mCsm.errorCode = Id.REQUEST_CHATBOT_ANONYMIZE;
                    z = true;
                }
                z = false;
            }
            if ("RTP Timeout".equalsIgnoreCase(this.mCsm.errorMessage) || "RTCP timeout".equalsIgnoreCase(this.mCsm.errorMessage) || "RTP-RTCP Timeout".equalsIgnoreCase(this.mCsm.errorMessage)) {
                CallStateMachine callStateMachine = this.mCsm;
                callStateMachine.mIsBigDataEndReason = true;
                callStateMachine.errorCode = Id.REQUEST_CHATBOT_ANONYMIZE;
            }
            if ("Audio Create Failure".equalsIgnoreCase(this.mCsm.errorMessage)) {
                CallStateMachine callStateMachine2 = this.mCsm;
                callStateMachine2.mIsBigDataEndReason = true;
                callStateMachine2.errorCode = 1007;
            }
            if (z) {
                CallStateMachine callStateMachine3 = this.mCsm;
                callStateMachine3.notifyOnError(callStateMachine3.errorCode, callStateMachine3.errorMessage);
            } else {
                CallStateMachine callStateMachine4 = this.mCsm;
                if (!callStateMachine4.mIsBigDataEndReason) {
                    callStateMachine4.sipReason = new SipReason("SIP", 210, callStateMachine4.errorMessage, new String[0]);
                    CallStateMachine callStateMachine5 = this.mCsm;
                    callStateMachine5.errorCode = 210;
                    callStateMachine5.errorMessage = "";
                }
            }
        }
        this.mCsm.deferMessage(message);
        CallStateMachine callStateMachine6 = this.mCsm;
        callStateMachine6.transitionTo(callStateMachine6.mEndingCall);
    }

    private boolean isCallForkingReason(String str) {
        return "call completed elsewhere".equalsIgnoreCase(str) || "busy everywhere".equalsIgnoreCase(str) || "declined".equalsIgnoreCase(str) || str.toLowerCase().contains("call completed elsewhere");
    }

    private boolean checkVZWHasEndReason() {
        if (this.mCsm.errorMessage.toLowerCase().contains("call completion elsewhere")) {
            this.mCsm.errorCode = 2504;
            return true;
        }
        if (this.mCsm.errorMessage.toLowerCase().contains("another device sent all devices busy response")) {
            this.mCsm.errorCode = 2505;
            return true;
        }
        if (this.mCsm.errorMessage.toLowerCase().contains("call has been pulled by another device")) {
            this.mCsm.errorCode = 2506;
            return true;
        }
        if (!this.mCsm.errorMessage.toLowerCase().contains("deregistered")) {
            return false;
        }
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.mTryingReceived) {
            return false;
        }
        callStateMachine.errorCode = NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_DEVICE_STATUS;
        return true;
    }

    private boolean checkATTHasEndReason() {
        boolean z;
        if ("call completed elsewhere".equalsIgnoreCase(this.mCsm.errorMessage)) {
            this.mCsm.errorCode = ImSessionEvent.SEND_DELIVERED_NOTIFICATION;
            z = true;
        } else {
            z = false;
        }
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null && imsRegistration.getImsProfile().isSoftphoneEnabled()) {
            if ("call has been transferred to another device".equalsIgnoreCase(this.mCsm.errorMessage)) {
                this.mCsm.errorCode = ImSessionEvent.SEND_MESSAGE_DONE;
                return true;
            }
            if ("service not allowed in this location".equalsIgnoreCase(this.mCsm.errorMessage)) {
                this.mCsm.errorCode = ImSessionEvent.ATTACH_FILE;
                return true;
            }
            if ("call completed elsewhere".equalsIgnoreCase(this.mCsm.errorMessage)) {
                this.mCsm.errorCode = ImSessionEvent.SEND_MESSAGE;
                return true;
            }
        }
        return z;
    }

    private boolean checkMDMNHasEndReason() {
        if ("push_to_master".equalsIgnoreCase(this.mCsm.errorMessage)) {
            this.mCsm.errorCode = 4002;
            return true;
        }
        if ("MDMN_PULL_BY_PRIMARY".equalsIgnoreCase(this.mCsm.errorMessage)) {
            this.mCsm.errorCode = 6007;
            return true;
        }
        if (!"MDMN_PULL_BY_SECONDARY".equalsIgnoreCase(this.mCsm.errorMessage)) {
            return false;
        }
        this.mCsm.errorCode = 6008;
        return true;
    }

    protected void error_ANYSTATE(Message message) {
        IRegistrationGovernor registrationGovernor;
        SipError sipError = (SipError) message.obj;
        int i = message.arg1;
        this.mCsm.errorCode = sipError.getCode();
        this.mCsm.errorMessage = sipError.getReason() == null ? "" : sipError.getReason();
        if (this.mMno.isKor() && this.mCsm.errorCode == 1002) {
            Log.e(this.LOG_TAG, "[ANY_STATE] IMSService Restart. error=" + this.mCsm.errorCode);
            IMSLog.c(LogClass.REGI_DO_RECOVERY_ACTION, "recovery from VoLTE module", true);
            SystemWrapper.exit(0);
        } else {
            Log.e(this.LOG_TAG, "[ANY_STATE] Unexpected ErrorCode: " + this.mCsm.errorCode + ": errorMessage " + this.mCsm.errorMessage);
        }
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.errorCode == 403 && "Call switch failed".equalsIgnoreCase(callStateMachine.errorMessage)) {
            this.mCsm.notifyOnError(1109, "Call switch failed");
            return;
        }
        handleUssdError();
        handleGcfModeError();
        Mno mno = this.mMno;
        if ((mno == Mno.STARHUB || mno == Mno.SMARTFREN || mno == Mno.AIS) && this.mCsm.errorCode == 480) {
            Log.i(this.LOG_TAG, "[ANY_STATE] TEMPORARILY_UNAVAILABLE -> REQUEST_TIMEOUT");
            this.mCsm.errorCode = 408;
        }
        handleUSACarrierError();
        if (this.mMno == Mno.DISH && this.mRegistration != null && !this.mSession.isE911Call()) {
            if (SipErrorBase.SipErrorType.ERROR_5XX.equals(this.mCsm.errorCode) && this.mModule.getTotalCallCount(this.mSession.getPhoneId()) == 1 && i == 0) {
                IRegistrationGovernor registrationGovernor2 = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle());
                if (registrationGovernor2 != null && registrationGovernor2.getNumOfPcscfIp() > 1) {
                    i = 4;
                }
            } else if (ImsCallUtil.isClientError(sipError) && (registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle())) != null) {
                IRegistrationGovernor.CallEvent callEvent = IRegistrationGovernor.CallEvent.EVENT_CALL_SILENT_REDIAL_END;
                CallStateMachine callStateMachine2 = this.mCsm;
                registrationGovernor.onCallStatus(callEvent, callStateMachine2.sipError, callStateMachine2.callType);
            }
        }
        if (this.mMno.isOneOf(Mno.KDDI, Mno.GCF, Mno.DISH) && i > 0) {
            this.mCsm.mRetryInprogress = true;
        }
        if (this.mMno.isTmobile()) {
            CallStateMachine callStateMachine3 = this.mCsm;
            if (callStateMachine3.errorCode == 603) {
                callStateMachine3.errorCode = NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE;
            }
        }
        if (this.mMno.isKor()) {
            CallStateMachine callStateMachine4 = this.mCsm;
            int i2 = callStateMachine4.errorCode;
            if (i2 == 499) {
                callStateMachine4.errorCode = 2102;
            } else if (i2 == 709) {
                callStateMachine4.errorCode = 1114;
            }
        }
        if (ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType())) {
            CallStateMachine callStateMachine5 = this.mCsm;
            if (callStateMachine5.errorCode == 403 && "SD_NOT_REGISTERED".equals(callStateMachine5.errorMessage)) {
                this.mCsm.errorCode = 404;
            }
        }
        if (this.mMno.isJpn() && this.mCsm.callType == 7 && SimUtil.getAvailableSimCount() > 1) {
            this.mCsm.notifyOnError(2697, "EMERGENCY PERM FAILURE");
            this.mRegistrationManager.stopEmergencyRegistration(this.mSession.mPhoneId);
        } else {
            CallStateMachine callStateMachine6 = this.mCsm;
            callStateMachine6.notifyOnError(callStateMachine6.errorCode, callStateMachine6.errorMessage, i > 0 ? i : 0);
        }
        CallStateMachine callStateMachine7 = this.mCsm;
        callStateMachine7.transitionTo(callStateMachine7.mEndingCall);
        CallStateMachine callStateMachine8 = this.mCsm;
        callStateMachine8.sendMessage(3, message.arg1, message.arg2, callStateMachine8.errorMessage);
    }

    private void handleUssdError() {
        ImsRegistration imsRegistration;
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.callType == 12 && ImsCallUtil.isCSFBbySIPErrorCode(callStateMachine.errorCode) && this.mMno == Mno.TMOUS) {
            if (this.mSession.getCallProfile().getOriginatingUri() != null && (imsRegistration = this.mRegistration) != null && !imsRegistration.getPreferredImpu().getUri().equals(this.mSession.getCallProfile().getOriginatingUri())) {
                Log.i(this.LOG_TAG, "[ANY_STATE] no CSFB USSD for virtual line.");
                this.mCsm.errorCode = Id.REQUEST_UPDATE_TIME_IN_PLANI;
            } else {
                this.mCsm.errorCode = 403;
            }
        }
    }

    private void handleGcfModeError() {
        if (DeviceUtil.getGcfMode()) {
            CallStateMachine callStateMachine = this.mCsm;
            if (callStateMachine.errorCode == 504) {
                callStateMachine.errorCode = 1000;
            }
        }
    }

    private void setErrorCodeForAtt() {
        CallStateMachine callStateMachine = this.mCsm;
        if (callStateMachine.errorCode == 403 && "Service not allowed in this location".equalsIgnoreCase(callStateMachine.errorMessage)) {
            this.mCsm.errorCode = ImSessionEvent.RECEIVE_MESSAGE;
        } else {
            CallStateMachine callStateMachine2 = this.mCsm;
            if (callStateMachine2.errorCode == 503 && "Emergency calls over WiFi not allowed in this location".equalsIgnoreCase(callStateMachine2.errorMessage)) {
                this.mCsm.errorCode = ImSessionEvent.SEND_SLM_MESSAGE_DONE;
            }
        }
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration == null || !imsRegistration.getImsProfile().isSoftphoneEnabled()) {
            return;
        }
        CallStateMachine callStateMachine3 = this.mCsm;
        if (callStateMachine3.errorCode == 603 && "Secondary device already in use".equalsIgnoreCase(callStateMachine3.errorMessage)) {
            this.mCsm.errorCode = ImSessionEvent.FILE_COMPLETE;
            return;
        }
        CallStateMachine callStateMachine4 = this.mCsm;
        if (callStateMachine4.errorCode == 480 && callStateMachine4.errorMessage.equalsIgnoreCase("You have an active call on another soft phone that must complete before you can use this soft phone")) {
            this.mCsm.errorCode = ImSessionEvent.SEND_SLM_MESSAGE;
            return;
        }
        CallStateMachine callStateMachine5 = this.mCsm;
        if (callStateMachine5.errorCode == 403) {
            if ("Service not allowed in this location".equalsIgnoreCase(callStateMachine5.errorMessage)) {
                this.mCsm.errorCode = ImSessionEvent.ATTACH_FILE;
            } else if ("Simultaneous call limit has already been reached".equalsIgnoreCase(this.mCsm.errorMessage)) {
                this.mCsm.errorCode = ImSessionEvent.SEND_FILE;
            }
        }
    }

    public void handleUSACarrierError() {
        ImsRegistration imsRegistration;
        if (this.mMno == Mno.TMOUS && this.mCsm.errorCode == SipErrorBase.DECLINE.getCode() && this.mSession.getCallProfile().getOriginatingUri() != null && (imsRegistration = this.mRegistration) != null && !imsRegistration.getPreferredImpu().getUri().equals(this.mSession.getCallProfile().getOriginatingUri())) {
            Log.i(this.LOG_TAG, "[ANY_STATE] no CSFB for virtual line.");
            this.mCsm.errorCode = 2413;
        }
        if (this.mMno == Mno.VZW) {
            CallStateMachine callStateMachine = this.mCsm;
            if (callStateMachine.errorCode == 403 && callStateMachine.errorMessage.toLowerCase().contains("simultaneous call limit has already been reached")) {
                this.mCsm.errorCode = 2510;
            }
        }
        if (this.mMno == Mno.ATT) {
            setErrorCodeForAtt();
        }
    }

    protected void ussdIndication_ANYSTATE(Message message) {
        Bundle bundle = (Bundle) message.obj;
        int i = bundle.getInt("status");
        notifyOnUssdIndication(i, bundle.getInt("dcs"), bundle.getByteArray("data"));
        Log.i(this.LOG_TAG, "[ANYSTATE] USSD indi, change status=" + i);
        if (i == 2) {
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mInCall);
            return;
        }
        if (i == 1 && this.mSession.getCallProfile().getDirection() == 1) {
            CallStateMachine callStateMachine2 = this.mCsm;
            callStateMachine2.transitionTo(callStateMachine2.mInCall);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("type", 4);
            bundle2.putString(McsConstants.BundleData.INFO, "");
            this.mCsm.sendMessage(101, bundle2);
            return;
        }
        CallStateMachine callStateMachine3 = this.mCsm;
        callStateMachine3.transitionTo(callStateMachine3.mEndingCall);
        this.mCsm.sendMessage(3);
    }

    protected void update_ANYSTATE(Message message) {
        Bundle bundle = (Bundle) message.obj;
        if (bundle.getParcelable("profile") == null) {
            int i = bundle.getInt("cause");
            if (i == 100) {
                Log.i(this.LOG_TAG, "[ANYSTATE] SRVCC HO STARTED");
                IMSLog.c(LogClass.VOLTE_SRVCC_START_UNHA_UPDA, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
                this.mCsm.srvccStarted = true;
                return;
            }
            if (i == 200) {
                Log.i(this.LOG_TAG, "[ANYSTATE] SRVCC HO SUCCESS");
                IMSLog.c(LogClass.VOLTE_SRVCC_SUCCESS_UNHA_UPDA, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
                this.mCsm.srvccStarted = false;
                return;
            }
            if (i == 487) {
                Log.i(this.LOG_TAG, "[ANYSTATE] SRVCC HO FAILURE OR CANCELED");
                IMSLog.c(LogClass.VOLTE_SRVCC_FAIL_UNHA_UPDA, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
                this.mCsm.srvccStarted = false;
                this.mVolteSvcIntf.sendReInvite(this.mSession.getSessionId(), new SipReason("SIP", i, bundle.getString("reasonText"), new String[0]));
                return;
            }
            return;
        }
        Log.e(this.LOG_TAG, "[ANYSTATE] Profile-related update is possible in InCall state only");
    }

    protected void epdgConnChanged_ANYSTATE(Message message) {
        if (this.mSession.getCallProfile() != null && ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType())) {
            Log.i(this.LOG_TAG, "[ANY_STATE] msg: ON_EPDG_CONNECTION_CHANGED " + message.arg1);
            this.mCsm.stopNetworkStatsOnPorts();
            this.mCsm.startNetworkStatsOnPorts();
        }
        notifyOnEpdgStateChanged();
    }

    private void notifyOnEpdgStateChanged() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            IImsCallSessionEventListener broadcastItem = this.mListeners.getBroadcastItem(i);
            try {
                broadcastItem.onEpdgStateChanged();
                broadcastItem.onCallQualityChanged();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void notifyOnUssdIndication(int i, int i2, byte[] bArr) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i3 = 0; i3 < beginBroadcast; i3++) {
            try {
                this.mListeners.getBroadcastItem(i3).onUssdReceived(i, i2, bArr);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }
}
