package com.sec.internal.ims.servicemodules.volte2;

import android.content.ContentValues;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.constants.ims.SipReasonBmc;
import com.sec.internal.constants.ims.SipReasonKor;
import com.sec.internal.constants.ims.SipReasonOptus;
import com.sec.internal.constants.ims.SipReasonOrange;
import com.sec.internal.constants.ims.SipReasonRjil;
import com.sec.internal.constants.ims.SipReasonTmoUs;
import com.sec.internal.constants.ims.SipReasonUscc;
import com.sec.internal.constants.ims.SipReasonVzw;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.IState;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.ImsGateConfig;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.mdmi.MdmiE911Listener;
import com.sec.internal.ims.mdmi.MdmiServiceModule;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.volte2.idc.IdcExtra;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class CallStateMachine extends StateMachine {
    public static final int ACCEPT = 22;
    public static final int ADD_PARTICIPANT = 53;
    public static final int CANCEL_TRANSFER = 60;
    public static final int CHECK_VIDEO_DBR = 25;
    public static final int DELAYED_CAMSTART = 24;
    public static final int DELAYED_EPSFB_CHECK_TIMING = 5001;
    public static final int EMERGENCY_INVITE = 14;
    public static final int EMERGENCY_LOCATION_PUBLISH = 16;
    public static final int EXTENDS_CONFERENCE = 73;
    protected static final boolean FEATURE_FAST_ACCEPT = false;
    public static final int FORCE_NOTIFY_CURRENT_CODEC = 100;
    public static final int HANDLE_DTMF = 56;
    public static final int HOLD = 51;
    public static final int HOLD_VIDEO = 80;
    public static final int IDC_ACCEPT = 150;
    public static final int IDC_END = 152;
    public static final int IDC_REINVITE = 151;
    public static final int INCOMING = 21;
    public static final int INFO = 101;
    public static final int LOCATION_ACQUIRING = 13;
    public static final int MERGE = 72;
    public static final int NOTIFY_ERROR = 26;
    public static final int ON_100_TRYING_TIMEOUT = 208;
    public static final int ON_ACCEPT_TIMEOUT = 212;
    public static final int ON_ADS_CHANGED = 900;
    public static final int ON_BUSY = 42;
    public static final int ON_CALLING = 33;
    public static final int ON_CAMERA_START_FAILED = 207;
    public static final int ON_CMC_DTMF_EVENT = 86;
    public static final int ON_CMC_INFO_EVENT = 87;
    public static final int ON_DEDICATED_BEARER_LOST = 5000;
    public static final int ON_DUMMY_DNS_TIMER_EXPIRED = 305;
    public static final int ON_E911_INVITE_TILL_180_TIMER_FAIL = 307;
    public static final int ON_E911_PERM_FAIL = 308;
    public static final int ON_EARLYMEDIA = 32;
    public static final int ON_ENDED = 3;
    public static final int ON_EPDG_CONNECTION_CHANGED = 400;
    public static final int ON_EPDN_SETUP_FAIL = 306;
    public static final int ON_EPSFB_RESULT = 1000;
    public static final int ON_ERROR = 4;
    public static final int ON_ESTABLISHED = 41;
    public static final int ON_EXTEND_TO_CONFERENCE = 74;
    public static final int ON_FORCE_ESTABLISHED = 600;
    public static final int ON_FORWARDED = 36;
    public static final int ON_HELD_BOTH = 63;
    public static final int ON_HELD_LOCAL = 61;
    public static final int ON_HELD_REMOTE = 62;
    public static final int ON_IDC_ERROR = 155;
    public static final int ON_IDC_MODIFIED = 153;
    public static final int ON_IDC_SWITCH_REQUEST = 154;
    public static final int ON_LOCATION_ACQUIRING_SUCCESS = 501;
    public static final int ON_LOCATION_ACQUIRING_TIMEOUT = 500;
    public static final int ON_LTE_911_FAIL = 303;
    public static final int ON_LTE_911_FAIL_AFTER_DELAY = 304;
    public static final int ON_MODIFIED = 91;
    public static final int ON_NETWORK_ATTACH_FAIL = 309;
    public static final int ON_NEXT_PCSCF_CHANGED = 402;
    public static final int ON_OUTGOING_CALL_REG_TIMEOUT = 211;
    public static final int ON_POOR_VIDEO_TIMER_EXPIRED = 205;
    public static final int ON_RECORD_EVENT = 700;
    public static final int ON_REFER_STATUS = 75;
    public static final int ON_REINVITE_TIMER_EXPIRED = 302;
    public static final int ON_RESUME_CALL_RETRY_TIMEOUT = 202;
    public static final int ON_RINGINGBACK = 34;
    public static final int ON_RING_TIMEOUT = 204;
    public static final int ON_RRC_RELEASED = 401;
    public static final int ON_RTT_DEDICATED_BEARER_LOST = 210;
    public static final int ON_RTT_DEDICATED_BEARER_TIMER_EXPIRED = 209;
    public static final int ON_SESSIONPROGRESS = 35;
    public static final int ON_SESSIONPROGRESS_TIMEOUT = 203;
    public static final int ON_SWITCH_REQUEST = 55;
    public static final int ON_TIMER_VZW_EXPIRED = 301;
    public static final int ON_TRYING = 31;
    public static final int ON_USSD_INDICATION = 94;
    public static final int ON_USSD_RESPONSE = 93;
    public static final int ON_VCID_EVENT = 800;
    public static final int ON_VIDEO_HELD = 82;
    public static final int ON_VIDEO_HOLD_FAILED = 84;
    public static final int ON_VIDEO_RESUMED = 83;
    public static final int ON_VIDEO_RESUME_FAILED = 85;
    public static final int ON_VIDEO_RTP_RTCP_TIMEOUT = 206;
    public static final int PULLING = 12;
    public static final int REJECT = 23;
    public static final int REMOVE_PARTICIPANT = 54;
    public static final int RESUME = 71;
    public static final int RESUME_VIDEO = 81;
    public static final int RE_INVITE = 502;
    public static final int SEND_TEXT = 64;
    public static final int SET_CALL_PROFILE = 15;
    public static final int START = 11;
    public static final int TERMINATE = 1;
    public static final int TERMINATED = 2;
    protected static final int TMO_MT_GUARD_TIMEOUT = 3000;
    public static final int TRANSFER_REQUEST = 59;
    public static final int UPDATE = 52;
    protected static final int VZW_TTY_REINVITE_TIMEOUT = 2000;
    private String LOG_IDC_FW_TAG;
    private String LOG_TAG;
    int callType;
    int errorCode;
    String errorMessage;
    boolean isDeferedVideoResume;
    boolean isLocationAcquiringTriggered;
    boolean isRequestTtyFull;
    int lazerErrorCode;
    String lazerErrorMessage;
    protected ImsAlertingCall mAlertingCall;
    protected long mCallEndTime;
    protected boolean mCallInitEPDG;
    protected long mCallInitTime;
    protected long mCallRingingTime;
    protected long mCallTerminateTime;
    protected String mCallTypeHistory;
    protected boolean mCameraUsedAtOtherApp;
    protected long mCmcCallEstablishTime;
    protected boolean mConfCallAdded;
    protected Context mContext;
    protected ImsDefaultCall mDefaultCall;
    protected ImsEndingCall mEndingCall;
    protected ImsHeldCall mHeldCall;
    protected CallProfile mHeldProfile;
    protected boolean mHoldBeforeTransfer;
    protected ImsHoldingCall mHoldingCall;
    protected CallProfile mHoldingProfile;
    protected ImsHoldingVideo mHoldingVideo;
    protected ImsInCall mInCall;
    protected ImsIncomingCall mIncomingCall;
    protected boolean mIsBigDataEndReason;
    protected boolean mIsCheckVideoDBR;
    protected boolean mIsCmcHandover;
    protected boolean mIsMdmiEnabled;
    protected boolean mIsPendingCall;
    protected boolean mIsSentMobileCareEvt;
    protected boolean mIsStartCameraSuccess;
    protected boolean mIsWPSCall;
    protected RemoteCallbackList<IImsCallSessionEventListener> mListeners;
    private int mLocalVideoRtcpPort;
    private int mLocalVideoRtpPort;
    protected MdmiE911Listener mMdmiE911Listener;
    protected MdmiServiceModule mMdmiModule;
    protected IImsMediaController mMediaController;
    protected Mno mMno;
    protected ImsModifyRequested mModifyRequested;
    protected ImsModifyingCall mModifyingCall;
    protected CallProfile mModifyingProfile;
    protected IVolteServiceModuleInternal mModule;
    protected boolean mNeedToLateEndedNotify;
    protected boolean mNeedToWaitEndcall;
    protected NetworkStatsOnPortHandler mNetworkStatsOnPortHandler;
    protected HandlerThread mNetworkStatsOnPortThread;
    protected boolean mOnErrorDelayed;
    protected ImsOutgoingCall mOutgoingCall;
    protected boolean mPreAlerting;
    protected State mPrevState;
    protected ImsReadyToCall mReadyToCall;
    protected ImsRegistration mRegistration;
    protected IRegistrationManager mRegistrationManager;
    protected boolean mReinvite;
    protected boolean mRemoteHeld;
    private int mRemoteVideoRtcpPort;
    private int mRemoteVideoRtpPort;
    boolean mRequestLocation;
    protected ImsResumingCall mResumingCall;
    protected ImsResumingVideo mResumingVideo;
    protected Message mRetriggerTimeoutMessage;
    protected boolean mRetryInprogress;
    protected Message mRingTimeoutMessage;
    protected String mSIPFlowInfo;
    protected ImsCallSession mSession;
    protected ITelephonyManager mTelephonyManager;
    protected CallStateMachine mThisSm;
    protected boolean mTransferRequested;
    boolean mTryingReceived;
    protected boolean mUserAnswered;
    protected ImsVideoHeld mVideoHeld;
    protected boolean mVideoRTPtimeout;
    protected IVolteServiceInterface mVolteSvcIntf;
    boolean quit;
    SipError sipError;
    SipReason sipReason;
    boolean srvccStarted;

    protected CallStateMachine(Context context, ImsCallSession imsCallSession, ImsRegistration imsRegistration, IVolteServiceModuleInternal iVolteServiceModuleInternal, Mno mno, IVolteServiceInterface iVolteServiceInterface, RemoteCallbackList<IImsCallSessionEventListener> remoteCallbackList, IRegistrationManager iRegistrationManager, IImsMediaController iImsMediaController, String str, Looper looper) {
        super(str, looper);
        this.LOG_TAG = "CallStateMachine";
        this.LOG_IDC_FW_TAG = "[IDC][FW]" + this.LOG_TAG;
        this.mReadyToCall = null;
        this.mIncomingCall = null;
        this.mOutgoingCall = null;
        this.mAlertingCall = null;
        this.mInCall = null;
        this.mHoldingCall = null;
        this.mHeldCall = null;
        this.mResumingCall = null;
        this.mModifyingCall = null;
        this.mModifyRequested = null;
        this.mHoldingVideo = null;
        this.mVideoHeld = null;
        this.mResumingVideo = null;
        this.mEndingCall = null;
        this.mDefaultCall = null;
        this.callType = 0;
        this.errorCode = -1;
        this.lazerErrorCode = -1;
        this.errorMessage = "";
        this.lazerErrorMessage = "";
        this.sipError = null;
        this.sipReason = null;
        this.srvccStarted = false;
        this.mHeldProfile = null;
        this.mHoldingProfile = null;
        this.mModifyingProfile = null;
        this.mTryingReceived = false;
        this.isDeferedVideoResume = false;
        this.isRequestTtyFull = false;
        this.isLocationAcquiringTriggered = false;
        this.quit = false;
        this.mRequestLocation = false;
        this.mIsStartCameraSuccess = true;
        this.mIsSentMobileCareEvt = false;
        this.mIsPendingCall = false;
        this.mUserAnswered = false;
        this.mCameraUsedAtOtherApp = false;
        this.mIsWPSCall = false;
        this.mNeedToWaitEndcall = false;
        this.mOnErrorDelayed = false;
        this.mIsCheckVideoDBR = false;
        this.mIsBigDataEndReason = false;
        this.mNeedToLateEndedNotify = false;
        this.mCallTypeHistory = "";
        this.mRemoteHeld = false;
        this.mHoldBeforeTransfer = false;
        this.mTransferRequested = false;
        this.mRetryInprogress = false;
        this.mConfCallAdded = false;
        this.mPreAlerting = false;
        this.mReinvite = false;
        this.mRingTimeoutMessage = null;
        this.mRetriggerTimeoutMessage = null;
        this.mSIPFlowInfo = "";
        this.mVideoRTPtimeout = false;
        this.mCallInitTime = 0L;
        this.mCallRingingTime = 0L;
        this.mCallTerminateTime = 0L;
        this.mCallEndTime = 0L;
        this.mCallInitEPDG = false;
        this.mCmcCallEstablishTime = 0L;
        this.mIsCmcHandover = false;
        this.mMdmiModule = null;
        this.mMdmiE911Listener = null;
        this.mIsMdmiEnabled = false;
        this.mLocalVideoRtpPort = 0;
        this.mLocalVideoRtcpPort = 0;
        this.mRemoteVideoRtpPort = 0;
        this.mRemoteVideoRtcpPort = 0;
        this.mSession = null;
        this.mRegistration = null;
        this.mModule = null;
        char c = Mno.MVNO_DELIMITER;
        this.mNetworkStatsOnPortThread = null;
        this.mNetworkStatsOnPortHandler = null;
        this.mThisSm = this;
        this.mSession = imsCallSession;
        this.mRegistration = imsRegistration;
        this.mModule = iVolteServiceModuleInternal;
        this.mContext = context;
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mRegistrationManager = iRegistrationManager;
        this.mMediaController = iImsMediaController;
        this.mListeners = remoteCallbackList;
        this.mMno = mno;
        this.mReadyToCall = new ImsReadyToCall(this);
        this.mIncomingCall = new ImsIncomingCall(this);
        this.mOutgoingCall = new ImsOutgoingCall(this);
        this.mAlertingCall = new ImsAlertingCall(this);
        this.mInCall = new ImsInCall(this);
        this.mHoldingCall = new ImsHoldingCall(this);
        this.mHeldCall = new ImsHeldCall(this);
        this.mResumingCall = new ImsResumingCall(this);
        this.mModifyingCall = new ImsModifyingCall(this);
        this.mModifyRequested = new ImsModifyRequested(this);
        this.mHoldingVideo = new ImsHoldingVideo(this);
        this.mVideoHeld = new ImsVideoHeld(this);
        this.mResumingVideo = new ImsResumingVideo(this);
        this.mEndingCall = new ImsEndingCall(this);
        this.mDefaultCall = new ImsDefaultCall(this);
    }

    protected void init() {
        addState(this.mReadyToCall);
        addState(this.mIncomingCall);
        addState(this.mOutgoingCall);
        addState(this.mAlertingCall);
        addState(this.mInCall);
        addState(this.mHoldingCall);
        addState(this.mHeldCall);
        addState(this.mResumingCall);
        addState(this.mModifyingCall);
        addState(this.mModifyRequested);
        addState(this.mEndingCall);
        addState(this.mHoldingVideo, this.mInCall);
        addState(this.mVideoHeld, this.mInCall);
        addState(this.mResumingVideo, this.mInCall);
        setInitialState(this.mReadyToCall);
        HandlerThread handlerThread = new HandlerThread("NetworkStat");
        this.mNetworkStatsOnPortThread = handlerThread;
        handlerThread.start();
        this.mNetworkStatsOnPortHandler = new NetworkStatsOnPortHandler(this.mSession.getPhoneId(), this.mMno, this.mNetworkStatsOnPortThread.getLooper());
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(this.mContext);
        this.mCallTypeHistory = "" + this.mSession.getCallProfile().getCallType();
        this.mCallInitEPDG = this.mSession.isEpdgCall();
        boolean isMdmiEnabled = this.mModule.isMdmiEnabled(this.mSession.getPhoneId());
        this.mIsMdmiEnabled = isMdmiEnabled;
        if (isMdmiEnabled) {
            MdmiServiceModule mdmiServiceModule = (MdmiServiceModule) ImsRegistry.getServiceModuleManager().getServiceModuleHandler(MdmiServiceModule.class.getSimpleName());
            this.mMdmiModule = mdmiServiceModule;
            this.mMdmiE911Listener = mdmiServiceModule.getMdmiListener();
        }
        if (this.mMno == Mno.TMOUS && this.mSession.mCallProfile.isMTCall()) {
            Log.i(this.LOG_TAG, "start TMO_MT_GUARD_TIMEOUT for incoming call");
            this.mThisSm.sendMessageDelayed(3000, 7000L);
        }
    }

    protected void resetCallTypeAndErrorFlags() {
        this.callType = 0;
        this.errorCode = -1;
        this.errorMessage = "";
    }

    protected void onRegistrationDone(ImsRegistration imsRegistration) {
        this.mRegistration = imsRegistration;
        this.mReadyToCall.mRegistration = imsRegistration;
        this.mIncomingCall.mRegistration = imsRegistration;
        this.mOutgoingCall.mRegistration = imsRegistration;
        this.mAlertingCall.mRegistration = imsRegistration;
        this.mInCall.mRegistration = imsRegistration;
        this.mHoldingCall.mRegistration = imsRegistration;
        this.mHeldCall.mRegistration = imsRegistration;
        this.mResumingCall.mRegistration = imsRegistration;
        this.mModifyingCall.mRegistration = imsRegistration;
        this.mModifyRequested.mRegistration = imsRegistration;
        this.mHoldingVideo.mRegistration = imsRegistration;
        this.mVideoHeld.mRegistration = imsRegistration;
        this.mResumingVideo.mRegistration = imsRegistration;
        this.mEndingCall.mRegistration = imsRegistration;
    }

    protected boolean isStartedCamera(int i, boolean z) {
        int determineCamera = determineCamera(i, z);
        if (determineCamera < 0) {
            return false;
        }
        this.mSession.startCamera(determineCamera);
        return true;
    }

    protected int determineCamera(int i, boolean z) {
        int i2 = 1;
        if (i != 2 && i != 8 && i != 19) {
            if (i == 6) {
                if (!this.mModule.getSessionByCallType(2).isEmpty()) {
                    i2 = 2;
                }
            } else if (i == 3) {
                if (this.mMno == Mno.VZW) {
                    i2 = 0;
                }
            } else {
                Mno mno = this.mMno;
                if (mno == Mno.CU || mno == Mno.VZW || !z || i != 4) {
                    i2 = -1;
                }
            }
        }
        if (i2 >= 0 && this.mSession.mLastUsedCamera >= 0) {
            Log.i(this.LOG_TAG, "Using mSession.mLastUsedCamera: " + this.mSession.mLastUsedCamera);
            i2 = this.mSession.mLastUsedCamera;
        }
        Log.i(this.LOG_TAG, "determineCamera calltype: " + i + ", isForSwitchRcved: " + z + ", camera: " + i2);
        return i2;
    }

    protected void sendRTTtext(Message message) {
        Bundle bundle = (Bundle) message.obj;
        String string = bundle.getString("text");
        int i = bundle.getInt("len");
        Log.i(this.LOG_TAG, "text=" + IMSLog.checker(string) + ", len=" + i);
        this.mVolteSvcIntf.sendText(this.mSession.getSessionId(), string, i);
    }

    @Override // com.sec.internal.helper.StateMachine
    protected void unhandledMessage(Message message) {
        Log.i(this.LOG_TAG, "[ANY_STATE] unhandledMessage " + message.what);
        int i = message.what;
        if (i == 1) {
            this.mDefaultCall.terminate_ANYSTATE(message);
            this.mDefaultCall.handleBigData_ANYSTATE(message);
            transitionTo(this.mEndingCall);
            return;
        }
        if (i == 52) {
            this.mDefaultCall.update_ANYSTATE(message);
            return;
        }
        if (i == 100) {
            forceNotifyCurrentCodec();
            return;
        }
        if (i != 303) {
            if (i == 400) {
                this.mDefaultCall.epdgConnChanged_ANYSTATE(message);
                return;
            }
            if (i == 600) {
                IState currentState = getCurrentState();
                ImsInCall imsInCall = this.mInCall;
                if (currentState == imsInCall) {
                    imsInCall.enter();
                    return;
                } else {
                    transitionTo(imsInCall);
                    return;
                }
            }
            if (i == 5000) {
                this.mDefaultCall.dbrLost_ANYSTATE(message);
                return;
            }
            if (i == 3) {
                this.mDefaultCall.ended_ANYSTATE(message);
                return;
            }
            if (i != 4) {
                if (i == 93) {
                    notifyOnUssdResponse(message.arg1);
                    return;
                }
                if (i == 94) {
                    this.mDefaultCall.ussdIndication_ANYSTATE(message);
                    return;
                }
                switch (i) {
                    case 306:
                    case 307:
                        break;
                    case 308:
                        break;
                    default:
                        Log.e(this.LOG_TAG, "[ANY_STATE] msg:" + message.what + " ignored !!!");
                        break;
                }
                return;
            }
            this.mDefaultCall.error_ANYSTATE(message);
            return;
        }
        this.mThisSm.sendMessage(4, 0, -1, new SipError(Id.REQUEST_VSH_STOP_SESSION, "Tlte_911fail"));
    }

    @Override // com.sec.internal.helper.StateMachine
    protected void onHalting() {
        StateMachine.LogRec logRec;
        synchronized (this.mThisSm) {
            this.mThisSm.notifyAll();
        }
        Log.e(this.LOG_TAG, "Unexpected ACTION on STATE");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.mThisSm.getLogRecCount() && (logRec = this.mThisSm.getLogRec(i)) != null; i++) {
            sb.append(logRec.toString());
            sb.append("\n");
        }
        Log.i(this.LOG_TAG, sb.toString());
    }

    @Override // com.sec.internal.helper.StateMachine
    protected void onQuitting() {
        StateMachine.LogRec logRec;
        this.quit = true;
        synchronized (this.mThisSm) {
            this.mThisSm.notifyAll();
            this.mVolteSvcIntf.unregisterForCallStateEvent(this.mSession.mVolteStackEventHandler);
            this.mVolteSvcIntf.unregisterForUssdEvent(this.mSession.mUssdStackEventHandler);
            this.mVolteSvcIntf.unregisterForReferStatus(this.mSession.mVolteStackEventHandler);
            this.mVolteSvcIntf.unregisterForRrcConnectionEvent(this.mSession.mVolteStackEventHandler);
            this.mVolteSvcIntf.unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent(this.mSession.mVolteStackEventHandler);
        }
        Log.e(this.LOG_TAG, "CallState Terminated");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.mThisSm.getLogRecCount() && (logRec = this.mThisSm.getLogRec(i)) != null; i++) {
            sb.append(logRec.toString());
            sb.append("\n");
        }
        Log.i(this.LOG_TAG, sb.toString());
        try {
            if (this.mNetworkStatsOnPortThread != null) {
                if (!"robolectric".equals(Build.FINGERPRINT)) {
                    this.mNetworkStatsOnPortThread.quitSafely();
                    this.mNetworkStatsOnPortThread.join();
                }
                this.mNetworkStatsOnPortThread = null;
                this.mNetworkStatsOnPortHandler = null;
            }
        } catch (InterruptedException unused) {
        }
    }

    public CallConstants.STATE getState() {
        if (this.quit) {
            return CallConstants.STATE.EndedCall;
        }
        IState currentState = getCurrentState();
        if (currentState == this.mReadyToCall) {
            return CallConstants.STATE.ReadyToCall;
        }
        if (currentState == this.mIncomingCall) {
            return CallConstants.STATE.IncomingCall;
        }
        if (currentState == this.mOutgoingCall) {
            return CallConstants.STATE.OutGoingCall;
        }
        if (currentState == this.mAlertingCall) {
            return CallConstants.STATE.AlertingCall;
        }
        if (currentState == this.mInCall) {
            return CallConstants.STATE.InCall;
        }
        if (currentState == this.mHoldingCall) {
            return CallConstants.STATE.HoldingCall;
        }
        if (currentState == this.mHeldCall) {
            return CallConstants.STATE.HeldCall;
        }
        if (currentState == this.mResumingCall) {
            return CallConstants.STATE.ResumingCall;
        }
        if (currentState == this.mModifyingCall) {
            return CallConstants.STATE.ModifyingCall;
        }
        if (currentState == this.mHoldingVideo) {
            return CallConstants.STATE.HoldingVideo;
        }
        if (currentState == this.mVideoHeld) {
            return CallConstants.STATE.VideoHeld;
        }
        if (currentState == this.mResumingVideo) {
            return CallConstants.STATE.ResumingVideo;
        }
        if (currentState == this.mEndingCall) {
            return CallConstants.STATE.EndingCall;
        }
        if (currentState == this.mModifyRequested) {
            return CallConstants.STATE.ModifyRequested;
        }
        return CallConstants.STATE.Idle;
    }

    public CallConstants.STATE getStateByName(String str) {
        if (TextUtils.isEmpty(str)) {
            return CallConstants.STATE.ReadyToCall;
        }
        if (str.contains("ReadyToCall")) {
            return CallConstants.STATE.ReadyToCall;
        }
        if (str.contains("IncomingCall")) {
            return CallConstants.STATE.IncomingCall;
        }
        if (str.contains("OutgoingCall")) {
            return CallConstants.STATE.OutGoingCall;
        }
        if (str.contains("AlertingCall")) {
            return CallConstants.STATE.AlertingCall;
        }
        if (str.contains("InCall")) {
            return CallConstants.STATE.InCall;
        }
        if (str.contains("HoldingCall")) {
            return CallConstants.STATE.HoldingCall;
        }
        if (str.contains("HeldCall")) {
            return CallConstants.STATE.HeldCall;
        }
        if (str.contains("ResumingCall")) {
            return CallConstants.STATE.ResumingCall;
        }
        if (str.contains("ModifyingCall")) {
            return CallConstants.STATE.ModifyingCall;
        }
        if (str.contains("HoldingVideo")) {
            return CallConstants.STATE.HoldingVideo;
        }
        if (str.contains("VideoHeld")) {
            return CallConstants.STATE.VideoHeld;
        }
        if (str.contains("ResumingVideo")) {
            return CallConstants.STATE.ResumingVideo;
        }
        if (str.contains("EndingCall")) {
            return CallConstants.STATE.EndingCall;
        }
        if (str.contains("ModifyRequested")) {
            return CallConstants.STATE.ModifyRequested;
        }
        return CallConstants.STATE.Idle;
    }

    protected boolean modifyIdcRequest(IdcExtra idcExtra) {
        Log.i(this.LOG_TAG, "modifyIdcRequest");
        return this.mVolteSvcIntf.sendReInviteWithIdcExtra(this.mSession.getSessionId(), idcExtra.encode()) == 0;
    }

    protected boolean modifyIdcReply(IdcExtra idcExtra) {
        Log.i(this.LOG_IDC_FW_TAG, "modifyIdcReply");
        int callType = this.mSession.getCallProfile().getCallType();
        return this.mVolteSvcIntf.replyWithIdc(this.mSession.getSessionId(), callType, callType, callType, idcExtra.encode()) == 0;
    }

    protected boolean modifyCallType(CallProfile callProfile, boolean z) {
        int replyModifyCallType;
        int callType = this.mSession.getCallProfile().getCallType();
        int callType2 = callProfile.getCallType();
        if (z) {
            Log.i(this.LOG_TAG, "modifyCallType(" + z + ") curCallType: " + callType + ", updateCallType: " + callType2);
            if (!this.mModule.getSessionByState(this.mSession.getPhoneId(), CallConstants.STATE.IncomingCall).isEmpty()) {
                notifyOnError(1109, "Call switch failed");
                return false;
            }
            if (callType == 9 && ImsCallUtil.isVideoCall(callType2)) {
                this.mMediaController.receiveSessionModifyResponse(this.mSession.getSessionId(), 1109, callProfile, this.mSession.getCallProfile());
                return false;
            }
            if (callType == 3 && callType2 == 4) {
                notifyOnError(1109, "Call switch failed");
                return false;
            }
            if (callType2 == 9 || ImsCallUtil.isRttCall(callType2)) {
                this.isRequestTtyFull = true;
            }
            replyModifyCallType = this.mVolteSvcIntf.modifyCallType(this.mSession.getSessionId(), callType, callType2);
            int determineCamera = determineCamera(callType2, false);
            if (determineCamera >= 0) {
                this.mSession.startCamera(determineCamera);
            } else {
                ImsCallSession imsCallSession = this.mSession;
                imsCallSession.mPrevUsedCamera = imsCallSession.mLastUsedCamera;
            }
        } else {
            int callType3 = this.mSession.mModifyRequestedProfile.getCallType();
            Log.i(this.LOG_TAG, "modifyCallType(" + z + ") reqCallType: " + callType3 + ", curCallType: " + callType + ", updateCallType: " + callType2);
            replyModifyCallType = this.mVolteSvcIntf.replyModifyCallType(this.mSession.getSessionId(), callType, callType2, callType3);
        }
        return replyModifyCallType == 0;
    }

    protected int rejectModifyCallType(int i) {
        Mno mno;
        Mno mno2 = this.mMno;
        if (mno2 == Mno.ATT || mno2 == Mno.TMOUS || mno2 == Mno.DISH || mno2.isChn() || (mno = this.mMno) == Mno.CMHK || mno == Mno.VODAFONE_CZ || mno == Mno.TELSTRA || mno == Mno.ETISALAT_EG) {
            int callType = this.mSession.getCallProfile().getCallType();
            CallProfile callProfile = this.mSession.mModifyRequestedProfile;
            if (callProfile == null) {
                Log.i(this.LOG_TAG, "ignoreModifyCallType(): mSession.mModifyRequestedProfile == null");
                return this.mVolteSvcIntf.rejectModifyCallType(this.mSession.getSessionId(), i);
            }
            int callType2 = callProfile.getCallType();
            Log.i(this.LOG_TAG, "ignoreModifyCallType() reqCallType: " + callType2 + ", curCallType: " + callType);
            if (ImsCallUtil.isUpgradeCall(callType, callType2)) {
                return this.mVolteSvcIntf.replyModifyCallType(this.mSession.getSessionId(), callType, callType, callType2);
            }
        }
        Log.i(this.LOG_TAG, "rejectModifyCallType() reason : " + i);
        return this.mVolteSvcIntf.rejectModifyCallType(this.mSession.getSessionId(), i);
    }

    protected void transferCall(String str) {
        ImsCallSession imsCallSession = this.mSession;
        ImsUri buildUri = imsCallSession.buildUri(str, null, imsCallSession.getCallProfile().getCallType());
        if (buildUri == null) {
            Log.e(this.LOG_TAG, "uri is null");
            notifyOnError(1119, "call transfer failed");
            if (this.mHoldBeforeTransfer) {
                this.mThisSm.sendMessage(71);
                return;
            }
            return;
        }
        this.mVolteSvcIntf.transferCall(this.mSession.getSessionId(), buildUri.toString());
        this.mTransferRequested = true;
        ContentValues contentValues = new ContentValues();
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null && imsRegistration.getImsProfile().isSoftphoneEnabled()) {
            Log.i(this.LOG_TAG, "transferCall for Softphone");
            contentValues.put(DiagnosisConstants.DRPT_KEY_MULTIDEVICE_TOTAL_COUNT, (Integer) 1);
            contentValues.put(DiagnosisConstants.DRPT_KEY_MULTIDEVICE_SOFTPHONE_COUNT, (Integer) 1);
        }
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 1);
        ImsLogAgentUtil.storeLogToAgent(this.mSession.getPhoneId(), this.mContext, "DRPT", contentValues);
    }

    protected boolean isChangedCallType(CallProfile callProfile) {
        return this.mSession.getCallProfile().getCallType() != callProfile.getCallType();
    }

    protected void notifyOnEstablished() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onEstablished(this.mSession.getCallProfile().getCallType());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnEarlyMediaStarted(int i) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onEarlyMediaStarted(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnRingingBack() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onRingingBack();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnCallForwarded() {
        if (this.mSession.getCallProfile().getDirection() == 1) {
            Log.i(this.LOG_TAG, "Do nothing");
        } else {
            Mno mno = this.mMno;
            if (mno != Mno.TMOUS && mno != Mno.DISH) {
                this.mSession.getCallProfile().setHistoryInfo("");
                if (this.mSession.isQuantumEncryptionServiceAvailable()) {
                    this.mSession.getCallProfile().getQuantumSecurityInfo().setEncryptStatus(0);
                }
            }
        }
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onForwarded();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnEnded(int i) {
        int phoneId = this.mSession.getPhoneId();
        Log.i(this.LOG_TAG, "notifyOnEnded: " + i + ", errorCode:" + this.errorCode);
        CallProfile callProfile = this.mSession.getCallProfile();
        callProfile.setHasCSFBError(this.mModule.isCsfbErrorCode(phoneId, callProfile, new SipError(i)));
        if ((this.mModule.getCmcServiceHelper().getSessionByCmcType(1) != null || this.mModule.getCmcServiceHelper().getSessionByCmcType(3) != null || this.mModule.getCmcServiceHelper().getSessionByCmcType(7) != null || this.mModule.getCmcServiceHelper().getSessionByCmcType(5) != null) && this.mSession.getCmcType() == 0 && callProfile.hasCSFBError()) {
            int cmcBoundSessionId = callProfile.getCmcBoundSessionId();
            Log.i(this.LOG_TAG, "boundSessionId : " + cmcBoundSessionId);
            if (cmcBoundSessionId > 0) {
                this.mVolteSvcIntf.handleCmcCsfb(cmcBoundSessionId);
            }
        }
        Mno mno = this.mMno;
        if ((mno == Mno.VZW || mno == Mno.ATT || mno == Mno.TMOUS || mno == Mno.DISH) && ImsRegistry.getPdnController().isPendedEPDGWeakSignal(phoneId) && this.mSession.getCallProfile().getRadioTech() == 18) {
            ImsRegistry.getPdnController().setPendedEPDGWeakSignal(phoneId, false);
            i = 1703;
        } else if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) && ImsCallUtil.isRttEmergencyCall(this.mSession.getCallProfile().getCallType()) && this.errorCode == 2414) {
            i = 2414;
        }
        int beginBroadcast = this.mListeners.beginBroadcast();
        if (beginBroadcast == 0) {
            this.mNeedToLateEndedNotify = true;
        } else {
            this.mNeedToLateEndedNotify = false;
        }
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onEnded(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
        if (!this.mIsSentMobileCareEvt) {
            this.mModule.sendMobileCareEvent(phoneId, this.callType, i, null);
            this.mIsSentMobileCareEvt = true;
        }
        if (this.mModule.isSupportImsDataChannel(phoneId)) {
            this.mSession.mModule.getIdcServiceHelper().notifyCallEnded(phoneId, this.mSession.getSessionId());
        }
        this.lazerErrorCode = i;
    }

    protected void notifyOnIdcError(int i) {
        Log.i(this.LOG_IDC_FW_TAG, "notifyOnIdcError: " + i);
    }

    protected void notifyOnError(int i, String str) {
        notifyOnError(i, str, 10);
    }

    protected void notifyOnError(int i, String str, int i2) {
        int phoneId = this.mSession.getPhoneId();
        Log.i(this.LOG_TAG, "notifyOnError: " + i);
        handleSetCSFBError(phoneId, i, str, i2);
        Mno mno = this.mMno;
        if ((mno == Mno.VZW || mno == Mno.ATT || mno == Mno.TMOUS || mno == Mno.DISH) && ImsRegistry.getPdnController().isPendedEPDGWeakSignal(phoneId) && this.mSession.getCallProfile().getNetworkType() == 18) {
            ImsRegistry.getPdnController().setPendedEPDGWeakSignal(phoneId, false);
            i = 1703;
        } else if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) && ImsCallUtil.isRttEmergencyCall(this.mSession.getCallProfile().getCallType()) && (getState() == CallConstants.STATE.ReadyToCall || getState() == CallConstants.STATE.OutGoingCall)) {
            i = 2414;
            str = "RTT E911 Call Fail";
        }
        ImsCallSession imsCallSession = this.mSession;
        CallProfile callProfile = imsCallSession.mModifyRequestedProfile;
        if (callProfile == null) {
            callProfile = imsCallSession.getCallProfile();
        }
        if (getState() == CallConstants.STATE.HeldCall) {
            CallProfile callProfile2 = this.mHeldProfile;
            if (callProfile2 == null) {
                callProfile2 = this.mSession.getCallProfile();
            }
            callProfile = callProfile2;
        }
        if (i == 1110 || i == 1109) {
            handleSwitchFail(callProfile, i);
        } else {
            int beginBroadcast = this.mListeners.beginBroadcast();
            for (int i3 = 0; i3 < beginBroadcast; i3++) {
                try {
                    this.mListeners.getBroadcastItem(i3).onError(i, str, i2);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mListeners.finishBroadcast();
        }
        if (!this.mIsSentMobileCareEvt) {
            this.mModule.sendMobileCareEvent(this.mSession.getPhoneId(), this.callType, i, str);
            this.mIsSentMobileCareEvt = true;
        }
        this.lazerErrorCode = i;
        this.lazerErrorMessage = str;
    }

    protected void notifyCmcDtmfEvent(int i) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyCmcDtmfEvent: " + i);
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            IImsCallSessionEventListener broadcastItem = this.mListeners.getBroadcastItem(i2);
            try {
                this.mSession.mCallProfile.setCmcDtmfKey(i);
                broadcastItem.onProfileUpdated(this.mSession.mCallProfile.getMediaProfile(), this.mSession.mCallProfile.getMediaProfile());
                this.mSession.mCallProfile.setCmcDtmfKey(-1);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void handleSetCSFBError(int i, int i2, String str, int i3) {
        if (this.mSession.getCmcType() != 0) {
            this.mSession.getCallProfile().setHasCSFBError(false);
        } else if (this.mIsWPSCall && (this.mMno != Mno.VZW || i2 != 403)) {
            this.mSession.getCallProfile().setHasCSFBError(true);
        } else {
            this.mSession.getCallProfile().setHasCSFBError(this.mModule.isCsfbErrorCode(i, this.mSession.getCallProfile(), new SipError(i2, str)));
        }
        if (this.mMno == Mno.USCC && i2 == 408) {
            if (getState() == CallConstants.STATE.AlertingCall || getState() == CallConstants.STATE.EndingCall) {
                this.mSession.getCallProfile().setHasCSFBError(false);
                Log.i(this.LOG_TAG, "USCC - Do not perform CSFB when 408 is received after User is alerted");
            }
        }
    }

    private void handleSwitchFail(CallProfile callProfile, int i) {
        CallProfile callProfile2;
        if (ImsCallUtil.isVideoCall(callProfile.getCallType()) || ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) || ((callProfile2 = this.mModifyingProfile) != null && ImsCallUtil.isVideoCall(callProfile2.getCallType()))) {
            this.mMediaController.receiveSessionModifyResponse(this.mSession.getSessionId(), i, callProfile, this.mSession.getCallProfile());
            return;
        }
        if (ImsCallUtil.isRttCall(callProfile.getCallType()) && !ImsCallUtil.isRttCall(this.mSession.getCallProfile().getCallType())) {
            this.mModule.onSendRttSessionModifyResponse(this.mSession.getCallId(), true, false);
            return;
        }
        if (!ImsCallUtil.isRttCall(callProfile.getCallType()) && ImsCallUtil.isRttCall(this.mSession.getCallProfile().getCallType())) {
            this.mModule.onSendRttSessionModifyResponse(this.mSession.getCallId(), false, false);
            return;
        }
        if (this.mMno.isEur() && (this.mHoldingProfile != null || this.mHeldProfile != null)) {
            Log.i(this.LOG_TAG, "Notify switch call fail during Holding call");
            this.mMediaController.receiveSessionModifyResponse(this.mSession.getSessionId(), i, callProfile, this.mSession.getCallProfile());
        } else if (this.mMno == Mno.RJIL && callProfile.getCallType() == this.mSession.getCallProfile().getCallType()) {
            Log.i(this.LOG_TAG, "Race condition - Call type is same as Requested call type");
            this.mMediaController.receiveSessionModifyResponse(this.mSession.getSessionId(), i, callProfile, this.mSession.getCallProfile());
        }
    }

    protected void notifyOnHeld(boolean z) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyOnHeld local=" + z + "; localholdtone" + this.mSession.mLocalHoldTone);
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onHeld(z, this.mSession.mLocalHoldTone);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnResumed(boolean z) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyOnResumed: local=" + z);
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mListeners.getBroadcastItem(i).onResumed(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyConfParticipantOnHeld(int i, boolean z) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyConfParticipantOnHeld: sessionId=" + i);
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onConfParticipantHeld(i, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyConfParticipanOnResumed(int i, boolean z) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyConfParticipanOnResumed: sessionId=" + i);
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onConfParticipantResumed(i, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnModified(int i) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        Log.i(this.LOG_TAG, "notifyOnModified callType=" + i);
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onSwitched(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void notifyOnUssdResponse(int i) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onUssdResponse(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void forceNotifyCurrentCodec() {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            IImsCallSessionEventListener broadcastItem = this.mListeners.getBroadcastItem(i);
            NetworkEvent network = this.mModule.getNetwork();
            if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) && !NetworkUtil.isMobileDataOn(this.mContext) && network.network != 18) {
                this.mSession.getCallProfile().setRemoteVideoCapa(false);
            }
            try {
                broadcastItem.onProfileUpdated(this.mSession.getCallProfile().getMediaProfile(), this.mSession.mCallProfile.getMediaProfile());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    protected void handleRemoteHeld(boolean z) {
        ImsCallSession imsCallSession = this.mSession;
        boolean z2 = imsCallSession.mOldLocalHoldTone != imsCallSession.mLocalHoldTone;
        if (this.mRemoteHeld == z && (!z || !z2)) {
            String str = this.LOG_TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("handleRemoteHeld: remote already ");
            sb.append(z ? "held" : "resumed");
            Log.i(str, sb.toString());
            return;
        }
        this.mRemoteHeld = z;
        if (z) {
            notifyOnHeld(false);
        } else {
            notifyOnResumed(false);
        }
    }

    public void setPreviousState(State state) {
        this.mPrevState = state;
    }

    protected State getPreviousState() {
        return this.mPrevState;
    }

    protected void setRetryInprogress(boolean z) {
        this.mRetryInprogress = z;
    }

    protected void startRingTimer(long j) {
        Log.i(this.LOG_TAG, "startRingTimer: millis " + j);
        stopRingTimer();
        if (j > 0) {
            Message obtainMessage = this.mThisSm.obtainMessage(204);
            this.mRingTimeoutMessage = obtainMessage;
            this.mSession.mAm.sendMessageDelayed(obtainMessage, j);
        }
    }

    protected void stopRingTimer() {
        if (this.mRingTimeoutMessage == null) {
            return;
        }
        Log.i(this.LOG_TAG, "stopRingTimer");
        this.mSession.mAm.removeMessage(this.mRingTimeoutMessage);
        this.mRingTimeoutMessage = null;
    }

    protected String calculateCmcCallTime(ImsCallSession imsCallSession, String str) {
        long cmcCallEstablishTime;
        if (imsCallSession != null) {
            cmcCallEstablishTime = imsCallSession.getCmcCallEstablishTime();
            Log.i(this.LOG_TAG, "PS callEstablishTime : " + cmcCallEstablishTime);
        } else {
            cmcCallEstablishTime = this.mModule.getCmcServiceHelper().getCmcCallEstablishTime(str);
            Log.i(this.LOG_TAG, "CS callEstablishTime : " + cmcCallEstablishTime);
        }
        long j = 0;
        if (cmcCallEstablishTime > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long j2 = currentTimeMillis - cmcCallEstablishTime;
            Log.i(this.LOG_TAG, "callEstablishTime : " + cmcCallEstablishTime + ", currentTime : " + currentTimeMillis + ", cmcCallTime : " + j2);
            j = j2;
        }
        return Long.toString(j);
    }

    protected SipReason getSipReasonFromUserReason(int i) {
        Log.i(this.LOG_TAG, "getSipReasonFromUserReason: reason " + i);
        if (i == 8) {
            return new SipReason("SIP", 0, "SRVCC", new String[0]);
        }
        if (i == 25) {
            return new SipReason("SIP", 0, "INVITE FLUSH", new String[0]);
        }
        if (i == 13) {
            return new SipReason("", 0, "PS BARRING", true, new String[0]);
        }
        if (i == 20) {
            return new SipReason("", 6007, "MDMN_PULL_BY_PRIMARY", new String[0]);
        }
        if (i == 11) {
            Mno mno = this.mMno;
            if (mno == Mno.TELSTRA) {
                return new SipReason("SIP", 0, "DEDICATED BEARER LOST", true, new String[0]);
            }
            if (!mno.isOneOf(Mno.TMOUS, Mno.ORANGE_MOLDOVA) && !this.mMno.isOrangeGPG()) {
                if (this.mMno == Mno.ATT) {
                    return new SipReason("SIP", 200, "DEDICATED BEARER LOST", new String[0]);
                }
                return new SipReason("SIP", 0, "DEDICATED BEARER LOST", new String[0]);
            }
        } else {
            if (i == 14) {
                if (this.mMno == Mno.RJIL) {
                    return new SipReason("SIP", 0, "DEREGISTERED", true, new String[0]);
                }
                return new SipReason("", 0, "", true, new String[0]);
            }
            if (i == 23) {
                Mno mno2 = this.mMno;
                if (mno2 == Mno.VZW || mno2 == Mno.DOCOMO) {
                    return new SipReason("", 0, "RRC CONNECTION REJECT", true, new String[0]);
                }
            } else if (i == 17) {
                Mno mno3 = this.mMno;
                if (mno3 == Mno.FET) {
                    return new SipReason("", 0, "SESSIONPROGRESS TIMEOUT", true, new String[0]);
                }
                if (mno3 == Mno.DISH) {
                    return new SipReason("RELEASE_CAUSE", 6, "Call Setup Time-out", true, new String[0]);
                }
            } else if (this.mMno == Mno.GENERIC_IR92 && i == 5) {
                return new SipReason("SIP", 200, "User Triggered", false, new String[0]);
            }
        }
        return getSipReasonMno().getFromUserReason(i);
    }

    protected SipReason getSipReasonMno() {
        Mno mno;
        if (this.mMno.isKor()) {
            return new SipReasonKor();
        }
        Mno mno2 = this.mMno;
        if (mno2 == Mno.VZW) {
            return new SipReasonVzw();
        }
        if (mno2 == Mno.BELL) {
            return new SipReasonBmc();
        }
        if (mno2 == Mno.USCC) {
            return new SipReasonUscc();
        }
        if (mno2 == Mno.RJIL || mno2 == Mno.TELEFONICA_UK || mno2 == Mno.EE) {
            return new SipReasonRjil();
        }
        if (mno2 == Mno.OPTUS) {
            return new SipReasonOptus();
        }
        if (mno2 == Mno.TMOUS) {
            return new SipReasonTmoUs();
        }
        if (mno2.isOrangeGPG() || (mno = this.mMno) == Mno.ORANGE_MOLDOVA || mno == Mno.ETISALAT_UAE) {
            return new SipReasonOrange();
        }
        return new SipReason();
    }

    protected void setVideoRtpPort(int i, int i2, int i3, int i4) {
        this.mLocalVideoRtpPort = i;
        this.mLocalVideoRtcpPort = i2;
        this.mRemoteVideoRtpPort = i3;
        this.mRemoteVideoRtcpPort = i4;
    }

    protected void startNetworkStatsOnPorts() {
        Log.i(this.LOG_TAG, "startNetworkStatsOnPorts");
        NetworkStatsOnPortHandler networkStatsOnPortHandler = this.mNetworkStatsOnPortHandler;
        if (networkStatsOnPortHandler != null) {
            networkStatsOnPortHandler.setVideoPort(this.mLocalVideoRtpPort, this.mRemoteVideoRtpPort, this.mLocalVideoRtcpPort, this.mRemoteVideoRtcpPort);
            if (this.mRegistration != null) {
                this.mNetworkStatsOnPortHandler.setInterface(ImsRegistry.getPdnController().getIntfNameByNetType(this.mRegistration.getNetwork()));
            }
            NetworkStatsOnPortHandler networkStatsOnPortHandler2 = this.mNetworkStatsOnPortHandler;
            networkStatsOnPortHandler2.sendMessage(networkStatsOnPortHandler2.obtainMessage(1));
        }
    }

    protected void stopNetworkStatsOnPorts() {
        Log.i(this.LOG_TAG, "stopNetworkStatsOnPorts");
        if (this.mNetworkStatsOnPortHandler != null) {
            requestCallDataUsage();
            NetworkStatsOnPortHandler networkStatsOnPortHandler = this.mNetworkStatsOnPortHandler;
            networkStatsOnPortHandler.sendMessage(networkStatsOnPortHandler.obtainMessage(2));
        }
    }

    protected void requestCallDataUsage() {
        Log.i(this.LOG_TAG, "requestCallDataUsage");
        this.mMediaController.onChangeCallDataUsage(this.mSession.getSessionId(), getNetworkStatsVideoCall());
    }

    protected long getNetworkStatsVideoCall() {
        Log.i(this.LOG_TAG, "getNetworkStatsVideoCall");
        NetworkStatsOnPortHandler networkStatsOnPortHandler = this.mNetworkStatsOnPortHandler;
        if (networkStatsOnPortHandler != null) {
            return networkStatsOnPortHandler.getNetworkStatsVideoCall();
        }
        return 0L;
    }

    protected void startRetriggerTimer(long j) {
        Log.i(this.LOG_TAG, "startRetriggerTimer: millis " + j);
        stopRetriggerTimer();
        Message obtainMessage = this.mThisSm.obtainMessage(202);
        this.mRetriggerTimeoutMessage = obtainMessage;
        this.mSession.mAm.sendMessageDelayed(obtainMessage, j);
    }

    protected void stopRetriggerTimer() {
        if (this.mRetriggerTimeoutMessage == null) {
            return;
        }
        Log.i(this.LOG_TAG, "stopRetriggerTimer");
        this.mSession.mAm.removeMessage(this.mRetriggerTimeoutMessage);
        this.mRetriggerTimeoutMessage = null;
    }

    public void onReceiveSIPMSG(String str, boolean z) {
        String str2;
        int i;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String[] split = str.split("\r\n");
        if (split.length > 1) {
            int i2 = 0;
            if (split[0].length() > 11) {
                if (split[0].startsWith("SIP")) {
                    str2 = split[0];
                    i2 = 8;
                    i = 10;
                } else {
                    str2 = split[0];
                    i = 2;
                }
                String substring = str2.substring(i2, i);
                if (z) {
                    this.mSIPFlowInfo += "s" + substring;
                    return;
                }
                this.mSIPFlowInfo += "r" + substring;
                return;
            }
        }
        Log.d(this.LOG_TAG, "onReceiveSIPMSG : No front Char");
    }

    public void setPendingCall(boolean z) {
        this.mIsPendingCall = z;
    }

    public void setStartCameraState(boolean z) {
        this.mIsStartCameraSuccess = z;
    }

    public boolean needToLogForATTGate(int i) {
        return this.mMno == Mno.ATT && ImsGateConfig.isGateEnabled() && ImsCallUtil.isVideoCall(i);
    }

    public void sendCmcPublishDialog() {
        if (this.mSession.getCmcType() == 0 && this.mModule.getCmcServiceHelper().isCmcRegExist(this.mSession.getPhoneId())) {
            int i = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 5 : 3;
            for (int i2 = 1; i2 <= i; i2 += 2) {
                if (this.mModule.getCmcServiceHelper().getSessionByCmcType(i2) == null) {
                    this.mModule.getCmcServiceHelper().sendPublishDialogInternal(this.mSession.getPhoneId(), i2);
                }
            }
        }
    }

    public boolean handleSPRoutgoingError(Message message) {
        if (this.mMno != Mno.SPRINT || this.mRegistration == null) {
            return true;
        }
        SipError sipError = (SipError) message.obj;
        int code = sipError.getCode();
        if (code == 486 || code == 487 || code == 408) {
            return false;
        }
        IRegistrationGovernor registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(this.mRegistration.getHandle());
        if (registrationGovernor == null) {
            return true;
        }
        String str = ImsCallUtil.isVideoCall(this.mSession.getCallProfile().getCallType()) ? "mmtel-video" : "mmtel";
        if (code >= 400 && code <= 699) {
            Log.i(this.LOG_TAG, "4xx,5xx,6xx error. trigger cs fallback");
            registrationGovernor.onSipError(str, new SipError(code));
            sipError.setCode(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_DEVICE_STATUS);
        }
        if (code != 709) {
            return true;
        }
        Log.i(this.LOG_TAG, "709 error. trigger cs fallback");
        registrationGovernor.onSipError(str, new SipError(code));
        sipError.setCode(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_DEVICE_STATUS);
        return true;
    }

    protected void onCallModified(CallProfile callProfile) {
        int videoQuality;
        int callType = callProfile.getCallType();
        ImsCallSession imsCallSession = this.mSession;
        CallProfile callProfile2 = imsCallSession.mModifyRequestedProfile;
        if (callProfile2 == null) {
            videoQuality = imsCallSession.getCallProfile().getMediaProfile().getVideoQuality();
        } else {
            videoQuality = callProfile2.getMediaProfile().getVideoQuality();
        }
        callProfile.getMediaProfile().setVideoQuality(videoQuality);
        notifyOnModified(callType);
        if (ImsCallUtil.isVideoCall(callType)) {
            startNetworkStatsOnPorts();
        } else {
            stopNetworkStatsOnPorts();
        }
        if (ImsCallUtil.isTtyCall(callType) || ImsCallUtil.isRttCall(callType)) {
            return;
        }
        IImsMediaController iImsMediaController = this.mMediaController;
        int sessionId = this.mSession.getSessionId();
        ImsCallSession imsCallSession2 = this.mSession;
        CallProfile callProfile3 = imsCallSession2.mModifyRequestedProfile;
        if (callProfile3 == null) {
            callProfile3 = imsCallSession2.getCallProfile();
        }
        iImsMediaController.receiveSessionModifyResponse(sessionId, 200, callProfile3, callProfile);
    }

    public void setLogTag(int i) {
        this.LOG_TAG = IMSLog.appendSessionIdToLogTag(this.LOG_TAG, i);
        this.mReadyToCall.setLogTag(i);
        this.mIncomingCall.setLogTag(i);
        this.mOutgoingCall.setLogTag(i);
        this.mAlertingCall.setLogTag(i);
        this.mInCall.setLogTag(i);
        this.mHoldingCall.setLogTag(i);
        this.mHeldCall.setLogTag(i);
        this.mResumingCall.setLogTag(i);
        this.mModifyingCall.setLogTag(i);
        this.mModifyRequested.setLogTag(i);
        this.mHoldingVideo.setLogTag(i);
        this.mVideoHeld.setLogTag(i);
        this.mResumingVideo.setLogTag(i);
        this.mEndingCall.setLogTag(i);
        this.mDefaultCall.setLogTag(i);
    }

    public void setPreAlerting() {
        this.mPreAlerting = true;
    }

    public boolean getPreAlerting() {
        return this.mPreAlerting;
    }

    public boolean needToLateEndedNotify() {
        return this.mNeedToLateEndedNotify;
    }

    public boolean getPendingCall() {
        return this.mIsPendingCall;
    }
}
