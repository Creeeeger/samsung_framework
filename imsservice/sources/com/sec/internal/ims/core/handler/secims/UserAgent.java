package com.sec.internal.ims.core.handler.secims;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.Dialog;
import com.sec.ims.ImsRegistration;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.constants.ims.cmstore.CmsJsonConstants;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RegInfoChanged;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RegInfoChanged_.Contact;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.GeneralResponse;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.servicemodules.volte2.idc.IdcExtra;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class UserAgent extends StateMachine implements IUserAgent {
    private static final String ECC_IWLAN = "IWLAN";
    private static final int EVENT_ACCEPT_CALL_TRANSFER = 21;
    public static final int EVENT_AKA_CHALLENGE_TIME_OUT = 46;
    private static final int EVENT_CREATE_UA = 1;
    private static final int EVENT_DELAYED_DEREGISTERED = 800;
    private static final int EVENT_DELETE_UA = 4;
    private static final int EVENT_DEREGISTERED = 12;
    private static final int EVENT_DEREGISTERED_TIMEOUT = 13;
    private static final int EVENT_DEREGISTER_COMPLETE = 11;
    private static final int EVENT_DISCONNECTED = 100;
    private static final int EVENT_EMERGENCY_REGISTRATION_FAILED = 900;
    private static final int EVENT_ENABLE_QUANTUM_SECURITY_SERVICE = 115;
    private static final int EVENT_RECOVER_REGISESSION = 9000;
    private static final int EVENT_REGISTERED = 8;
    private static final int EVENT_REGISTER_REQUESTED = 7;
    private static final int EVENT_REG_INFO_NOTIFY = 101;
    private static final int EVENT_REQUEST_ANSWER_CALL = 16;
    private static final int EVENT_REQUEST_CANCEL_TRANSFER_CALL = 45;
    private static final int EVENT_REQUEST_DELETE_TCP_CLIENT_SOCKET = 49;
    private static final int EVENT_REQUEST_DEREGISTER = 10;
    private static final int EVENT_REQUEST_DEREGISTER_INTERNAL = 43;
    private static final int EVENT_REQUEST_EMERGENCY_LOCATION_PUBLISH = 65;
    private static final int EVENT_REQUEST_END_CALL = 15;
    private static final int EVENT_REQUEST_EXTEND_TO_CONFERENCE = 107;
    private static final int EVENT_REQUEST_HANDLE_CMC_CSFB = 55;
    private static final int EVENT_REQUEST_HANDLE_DTMF = 23;
    private static final int EVENT_REQUEST_HOLD_CALL = 17;
    private static final int EVENT_REQUEST_HOLD_VIDEO = 26;
    private static final int EVENT_REQUEST_MAKE_CALL = 14;
    private static final int EVENT_REQUEST_MAKE_CONF_CALL = 36;
    private static final int EVENT_REQUEST_MERGE_CALL = 19;
    private static final int EVENT_REQUEST_MODIFY_CALL_TYPE = 104;
    private static final int EVENT_REQUEST_MODIFY_VIDEO_QUALITY = 111;
    private static final int EVENT_REQUEST_NETWORK_SUSPENDED = 38;
    private static final int EVENT_REQUEST_PROGRESS_INCOMING_CALL = 25;
    private static final int EVENT_REQUEST_PUBLISH = 41;
    private static final int EVENT_REQUEST_PUBLISH_DIALOG = 47;
    private static final int EVENT_REQUEST_PULLING_CALL = 29;
    private static final int EVENT_REQUEST_REGISTER = 6;
    private static final int EVENT_REQUEST_REJECT_CALL = 22;
    private static final int EVENT_REQUEST_REJECT_MODIFY_CALL_TYPE = 106;
    private static final int EVENT_REQUEST_REPLY_MODIFY_CALL_TYPE = 105;
    private static final int EVENT_REQUEST_REPLY_WITH_IDC = 62;
    private static final int EVENT_REQUEST_RESUME_CALL = 18;
    private static final int EVENT_REQUEST_RESUME_VIDEO = 27;
    private static final int EVENT_REQUEST_SEND_CMC_INFO = 59;
    private static final int EVENT_REQUEST_SEND_INFO = 48;
    private static final int EVENT_REQUEST_SEND_NEGOTIATED_LOCAL_SDP = 64;
    private static final int EVENT_REQUEST_SEND_TEXT = 51;
    private static final int EVENT_REQUEST_SEND_VCS_INFO = 61;
    private static final int EVENT_REQUEST_START_CAMERA = 28;
    private static final int EVENT_REQUEST_START_CMC_RECORD = 58;
    private static final int EVENT_REQUEST_START_RECORD = 56;
    private static final int EVENT_REQUEST_START_VIDEO_EARLYMEDIA = 54;
    private static final int EVENT_REQUEST_STOP_CAMERA = 30;
    private static final int EVENT_REQUEST_STOP_RECORD = 57;
    private static final int EVENT_REQUEST_TRANSFER_CALL = 20;
    private static final int EVENT_REQUEST_UNPUBLISH = 42;
    private static final int EVENT_REQUEST_UPDATE_CALL = 37;
    private static final int EVENT_REQUEST_UPDATE_CALLWAITING_STATUS = 39;
    private static final int EVENT_REQUEST_UPDATE_WITH_IDC = 63;
    private static final int EVENT_RETRY_UA_CREATE = 3;
    private static final int EVENT_SEND_AUTH_RESPONSE = 9;
    private static final int EVENT_SEND_DTMF_EVENT = 113;
    private static final int EVENT_SEND_MEDIA_EVENT = 1001;
    private static final int EVENT_SEND_REQUEST = 1000;
    private static final int EVENT_SEND_SMS = 31;
    private static final int EVENT_SEND_SMS_RESPONSE = 33;
    private static final int EVENT_SEND_SMS_RP_ACK_RESPONSE = 32;
    private static final int EVENT_SET_QUANTUM_SECURITY_INFO = 114;
    private static final int EVENT_SET_VIDEO_CRT_AUDIO = 112;
    private static final int EVENT_SET_VOWIFI_5GSA_MODE = 60;
    private static final int EVENT_START_LOCAL_RINGBACKTONE = 109;
    private static final int EVENT_STOP_LOCAL_RINGBACKTONE = 110;
    private static final int EVENT_UA_CREATED = 2;
    private static final int EVENT_UA_DELETED = 5;
    private static final int EVENT_UPDATE_AUDIO_INTERFACE = 108;
    private static final int EVENT_UPDATE_CMC_HOTSPOT_STATE = 66;
    private static final int EVENT_UPDATE_CONF_CALL = 35;
    private static final int EVENT_UPDATE_GEOLOCATION = 44;
    private static final int EVENT_UPDATE_PANI = 34;
    private static final int EVENT_UPDATE_PANI_RESPONSE = 2000;
    private static final int EVENT_UPDATE_RAT = 50;
    private static final int EVENT_UPDATE_ROUTE_TABLE = 102;
    private static final int EVENT_UPDATE_TIME_IN_PLANI = 52;
    private static final int EVENT_UPDATE_VCE_CONFIG = 40;
    private static final String LOG_TAG = "UserAgent";
    private static final String PERMISSION = "com.sec.imsservice.PERMISSION";
    private static final String PROPERTY_ECC_PATH = "ril.subtype";
    protected static final char[] hexArray = "0123456789ABCDEF".toCharArray();
    Context mContext;
    private final State mDefaultState;
    private final State mDeregisteringState;
    private UserAgentState mDestState;
    private List<NameAddr> mDeviceList;
    private int mEcmpMode;
    private final State mEmergencyState;
    private boolean mEpdgOverCellularData;
    private boolean mEpdgStatus;
    private SipError mError;
    private int mHandle;
    private List<NameAddr> mImpuList;
    private final IImsFramework mImsFramework;
    private ImsProfile mImsProfile;
    private final State mInitialState;
    private UaEventListener mListener;
    private Network mNetwork;
    private Set<String> mNotifyServiceList;
    private boolean mPcscfGoneDeregi;
    private int mPdn;
    private IPdnController mPdnController;
    private int mPhoneId;
    private final State mProhibitedState;
    private final State mReRegisteringState;
    private final State mReadyState;
    private String mRegisterSipResponse;
    private final State mRegisteredState;
    private final State mRegisteringState;
    private ImsRegistration mRegistration;
    private long mRetryAfterMs;
    private ISimManager mSimManager;
    private IStackIF mStackIf;
    private boolean mSuspendStatus;
    ITelephonyManager mTelephonyManager;
    private final State mTerminatingState;
    private List<String> mThirdPartyFeatureTags;
    private UaProfile mUaProfile;

    public interface UaEventListener {
        void onContactActivated(UserAgent userAgent, int i);

        void onCreated(UserAgent userAgent);

        void onDeregistered(UserAgent userAgent, SipError sipError, long j, boolean z, boolean z2);

        void onNotifyNullProfile(UserAgent userAgent);

        void onRefreshRegNotification(int i);

        void onRegEventContactUriNotification(int i, List<ImsUri> list, int i2, String str, String str2);

        void onRegistered(UserAgent userAgent);

        void onRegistrationError(UserAgent userAgent, SipError sipError, long j);

        void onSubscribeError(UserAgent userAgent, SipError sipError);

        void onUpdatePani(UserAgent userAgent);
    }

    public enum UserAgentState {
        DEFAULT,
        INITIAL,
        READY,
        REGISTERING,
        REGISTERED,
        REREGISTERING,
        DEREGISTERING,
        TERMINATING,
        EMERGENCY,
        PROHIBITTED
    }

    public UserAgent(Context context, Handler handler, IStackIF iStackIF, ITelephonyManager iTelephonyManager, IPdnController iPdnController, ISimManager iSimManager, IImsFramework iImsFramework) {
        super("UserAgent - ", handler);
        this.mHandle = -1;
        this.mImsProfile = null;
        this.mUaProfile = null;
        this.mRegistration = null;
        this.mPcscfGoneDeregi = false;
        this.mImpuList = Collections.synchronizedList(new ArrayList());
        this.mDeviceList = new ArrayList();
        this.mContext = null;
        this.mTelephonyManager = null;
        this.mPdnController = null;
        this.mSimManager = null;
        this.mListener = null;
        this.mStackIf = null;
        this.mRegisterSipResponse = null;
        this.mEcmpMode = 0;
        this.mEpdgStatus = false;
        this.mEpdgOverCellularData = false;
        this.mSuspendStatus = false;
        this.mNotifyServiceList = new HashSet();
        this.mThirdPartyFeatureTags = null;
        this.mNetwork = null;
        this.mDestState = UserAgentState.INITIAL;
        this.mPhoneId = 0;
        this.mDefaultState = new DefaultState();
        this.mInitialState = new InitialState();
        this.mReadyState = new ReadyState();
        this.mRegisteringState = new RegisteringState();
        this.mRegisteredState = new RegisteredState();
        this.mReRegisteringState = new ReRegisteringState();
        this.mDeregisteringState = new DeregisteringState();
        this.mTerminatingState = new TerminatingState();
        this.mEmergencyState = new EmergencyState();
        this.mProhibitedState = new ProhibitedState();
        this.mSimManager = iSimManager;
        this.mImsFramework = iImsFramework;
        this.mPhoneId = iSimManager.getSimSlotIndex();
        initState();
        this.mContext = context;
        this.mStackIf = iStackIF;
        this.mTelephonyManager = iTelephonyManager;
        this.mPdnController = iPdnController;
    }

    public UserAgent(Handler handler, IImsFramework iImsFramework) {
        super("UserAgent - ", handler);
        this.mHandle = -1;
        this.mImsProfile = null;
        this.mUaProfile = null;
        this.mRegistration = null;
        this.mPcscfGoneDeregi = false;
        this.mImpuList = Collections.synchronizedList(new ArrayList());
        this.mDeviceList = new ArrayList();
        this.mContext = null;
        this.mTelephonyManager = null;
        this.mPdnController = null;
        this.mSimManager = null;
        this.mListener = null;
        this.mStackIf = null;
        this.mRegisterSipResponse = null;
        this.mEcmpMode = 0;
        this.mEpdgStatus = false;
        this.mEpdgOverCellularData = false;
        this.mSuspendStatus = false;
        this.mNotifyServiceList = new HashSet();
        this.mThirdPartyFeatureTags = null;
        this.mNetwork = null;
        this.mDestState = UserAgentState.INITIAL;
        this.mPhoneId = 0;
        this.mDefaultState = new DefaultState();
        this.mInitialState = new InitialState();
        this.mReadyState = new ReadyState();
        this.mRegisteringState = new RegisteringState();
        this.mRegisteredState = new RegisteredState();
        this.mReRegisteringState = new ReRegisteringState();
        this.mDeregisteringState = new DeregisteringState();
        this.mTerminatingState = new TerminatingState();
        this.mEmergencyState = new EmergencyState();
        this.mProhibitedState = new ProhibitedState();
        this.mImsFramework = iImsFramework;
    }

    public void setImsProfile(ImsProfile imsProfile) {
        this.mImsProfile = imsProfile;
    }

    public void setUaProfile(UaProfile uaProfile) {
        this.mUaProfile = uaProfile;
    }

    public void setPdn(int i) {
        this.mPdn = i;
    }

    public int getPdn() {
        return this.mPdn;
    }

    public void setNetwork(Network network) {
        this.mNetwork = network;
    }

    public IPdnController getPdnController() {
        return this.mPdnController;
    }

    public boolean isRegistered(boolean z) {
        return getCurrentState().equals(this.mRegisteredState) || (z && getCurrentState().equals(this.mReRegisteringState));
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public String getStateName() {
        return getCurrentState().getName();
    }

    public void registerListener(UaEventListener uaEventListener) {
        this.mListener = uaEventListener;
    }

    public void unRegisterListener() {
        this.mListener = null;
    }

    public void setThirdPartyFeatureTags(List<String> list) {
        this.mThirdPartyFeatureTags = list;
    }

    public int create() {
        Log.i("UserAgent[" + this.mPhoneId + "]", "create:");
        sendMessage(1);
        return 0;
    }

    public int register() {
        Log.i("UserAgent[" + this.mPhoneId + "]", "register:");
        if (this.mImsProfile.hasEmergencySupport()) {
            if (DeviceUtil.isApAssistedMode()) {
                this.mEpdgStatus = this.mPdnController.isEmergencyEpdgConnected(this.mPhoneId);
            } else {
                String str = SemSystemProperties.get(PROPERTY_ECC_PATH, "");
                Log.i("UserAgent[" + this.mPhoneId + "]", "eccPath : " + str);
                this.mEpdgStatus = str.equalsIgnoreCase(ECC_IWLAN);
            }
        } else {
            updateEpdgStatus();
        }
        if (SimUtil.isDualIMS() && Mno.fromName(this.mImsProfile.getMnoName()).isChn() && SemSystemProperties.get("ro.boot.hardware", "").contains("qcom")) {
            sendMessageDelayed(6, 10L);
            return 0;
        }
        sendMessage(6);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEpdgStatus() {
        boolean isEpdgConnected = this.mPdnController.isEpdgConnected(this.mPhoneId);
        this.mEpdgStatus = isEpdgConnected;
        if (isEpdgConnected) {
            this.mEpdgOverCellularData = this.mPdnController.getEpdgPhysicalInterface(this.mPhoneId) == 2;
        } else {
            this.mEpdgOverCellularData = false;
        }
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null) {
            imsRegistration.setEpdgStatus(this.mEpdgStatus);
            this.mRegistration.setEpdgOverCellularData(this.mEpdgOverCellularData);
        }
    }

    public void deregisterInternal(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "deregisterInternal: local=" + z);
        sendMessageDelayed(43, z ? 1 : 0, -1, 500L);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void deregisterLocal() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "deregisterLocal:");
        sendMessage(13);
    }

    public void suspended(boolean z) {
        this.mSuspendStatus = z;
        sendMessage(38, z ? 1 : 0, -1);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public boolean getSuspendState() {
        return this.mSuspendStatus;
    }

    public void deleteTcpClientSocket() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "deleteTcpClientSocket:");
        sendMessage(49);
    }

    public void updateAudioInterface(String str, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateAudioInterface: mode =" + str);
        Bundle bundle = new Bundle();
        bundle.putString("mode", str);
        bundle.putParcelable("result", message);
        sendMessage(108, bundle);
    }

    public void setVideoCrtAudio(int i, boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "setVideoCrtAudio: sessionId = " + i + ", on = " + z);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putBoolean("vcrtAudioOn", z);
        sendMessage(112, bundle);
    }

    public void sendDtmfEvent(int i, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendDtmfEvent: sessionId = " + i + ", dtmfEvent = " + str);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putString("dtmfEvent", str);
        sendMessage(113, bundle);
    }

    public void sendRequestToStack(ResipStackRequest resipStackRequest) {
        sendMessage(1000, resipStackRequest);
    }

    public void makeCall(String str, String str2, int i, String str3, String str4, AdditionalContents additionalContents, String str5, String str6, HashMap<String, String> hashMap, String str7, boolean z, List<String> list, int i2, Bundle bundle, String str8, int i3, String str9, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "makeCall: destUri=" + IMSLog.checker(str) + ", type=" + i + " origUri=" + IMSLog.checker(str2));
        Bundle bundle2 = new Bundle();
        bundle2.putString("destUri", str);
        bundle2.putString("origUri", str2);
        bundle2.putParcelable("result", message);
        bundle2.putInt("type", i);
        if (additionalContents != null) {
            bundle2.putString("additionalContentsContents", additionalContents.contents());
            bundle2.putString("additionalContentsMime", additionalContents.mimeType());
        }
        bundle2.putString("cli", str5);
        bundle2.putString("dispName", str3);
        bundle2.putString("alertInfo", str7);
        bundle2.putString("dialedNumber", str4);
        bundle2.putString("pEmergencyInfo", str6);
        bundle2.putBoolean("isLteEpsOnlyAttached", z);
        if (hashMap != null) {
            bundle2.putSerializable("additionalSipHeaders", hashMap);
        }
        if (list != null) {
            bundle2.putStringArrayList("p2p", new ArrayList<>(list));
        }
        bundle2.putInt("cmcBoundSessionId", i2);
        if (bundle != null && !bundle.isEmpty()) {
            bundle2.putBundle(CallConstants.ComposerData.TAG, bundle);
        }
        bundle2.putString("replaceCallId", str8);
        bundle2.putInt("cmcEdCallSlot", i3);
        bundle2.putString("idcExtra", str9);
        sendMessage(14, bundle2);
    }

    public void rejectCall(int i, SipError sipError) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "rejectCall: sessionId " + i);
        sendMessage(22, i, -1, sipError);
    }

    public void progressIncomingCall(int i, boolean z, HashMap<String, String> hashMap, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "progressIncomingCall: sessionId " + i + " isBlocked " + z);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        if (hashMap != null) {
            bundle.putSerializable("headers", hashMap);
        }
        bundle.putString("idcExtra", str);
        bundle.putBoolean("isBlocked", z);
        sendMessage(25, bundle);
    }

    public void endCall(int i, SipReason sipReason) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "endCall: sessionId " + i);
        sendMessage(15, i, -1, sipReason);
    }

    public void answerCall(int i, int i2, String str, String str2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "answerCall: sessionId " + i + " callType " + i2 + " cmcCallEstablishTime " + str + " idcExtra " + str2);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("callType", i2);
        bundle.putString("cmcCallTime", str);
        bundle.putString("idcExtra", str2);
        sendMessage(16, bundle);
    }

    public void handleDtmf(int i, int i2, int i3, int i4, Message message) {
        Log.i("UserAgent[" + this.mPhoneId + "]", "handleDtmf: sessionId " + i + " mode " + i3 + " operation " + i4);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("code", i2);
        bundle.putInt("mode", i3);
        bundle.putInt("operation", i4);
        bundle.putParcelable("result", message);
        sendMessage(23, bundle);
    }

    public void sendText(int i, String str, int i2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendText:: sessionId: " + i + ", text: " + IMSLog.checker(str) + ", len: " + i2);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putString("text", str);
        bundle.putInt("len", i2);
        sendMessage(51, bundle);
    }

    public void holdCall(int i, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "holdCall: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putParcelable("result", message);
        sendMessage(17, bundle);
    }

    public void resumeCall(int i, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "resumeCall: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putParcelable("result", message);
        sendMessage(18, bundle);
    }

    public void holdVideo(int i, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "holdVideo: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putParcelable("result", message);
        sendMessage(26, bundle);
    }

    public void resumeVideo(int i, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "resumeVideo: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putParcelable("result", message);
        sendMessage(27, bundle);
    }

    public void startCamera(int i, int i2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "startCamera: sessionId: " + i + ", cameraId: " + i2);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("cameraId", i2);
        sendMessage(28, bundle);
    }

    public void stopCamera() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "stopCamera");
        sendMessage(30);
    }

    public void mergeCall(int i, int i2, String str, int i3, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, HashMap<String, String> hashMap, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "mergeCall: ");
        Bundle bundle = new Bundle();
        bundle.putInt("session1", i);
        bundle.putInt("session2", i2);
        bundle.putString("confuri", str);
        bundle.putInt("calltype", i3);
        bundle.putString("eventSubscribe", str2);
        bundle.putString("dialogType", str3);
        bundle.putString("origUri", str4);
        bundle.putString("referUriType", str5);
        bundle.putString("removeReferUriType", str6);
        bundle.putString("referUriAsserted", str7);
        bundle.putString("useAnonymousUpdate", str8);
        bundle.putBoolean("supportPrematureEnd", z);
        if (hashMap != null) {
            bundle.putSerializable("extraHeaders", hashMap);
        }
        bundle.putParcelable("result", message);
        sendMessage(19, bundle);
    }

    public void conference(String[] strArr, String str, int i, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, Message message) {
        Bundle bundle = new Bundle();
        bundle.putString("confuri", str);
        bundle.putInt("calltype", i);
        bundle.putString("eventSubscribe", str2);
        bundle.putString("dialogType", str3);
        bundle.putStringArray(CmsJsonConstants.PARTICIPANTS, strArr);
        bundle.putString("origUri", str4);
        bundle.putString("referUriType", str5);
        bundle.putString("removeReferUriType", str6);
        bundle.putString("referUriAsserted", str7);
        bundle.putString("useAnonymousUpdate", str8);
        bundle.putBoolean("supportPrematureEnd", z);
        bundle.putParcelable("result", message);
        sendMessage(36, bundle);
    }

    public void extendToConfCall(String[] strArr, String str, int i, String str2, String str3, int i2, String str4, String str5, String str6, String str7, String str8, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("confuri", str);
        bundle.putInt("calltype", i);
        bundle.putString("eventSubscribe", str2);
        bundle.putString("dialogType", str3);
        bundle.putStringArray(CmsJsonConstants.PARTICIPANTS, strArr);
        bundle.putInt("sessId", i2);
        bundle.putString("origUri", str4);
        bundle.putString("referUriType", str5);
        bundle.putString("removeReferUriType", str6);
        bundle.putString("referUriAsserted", str7);
        bundle.putString("useAnonymousUpdate", str8);
        bundle.putBoolean("supportPrematureEnd", z);
        sendMessage(107, bundle);
    }

    public void updateConfCall(int i, int i2, int i3, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateConfCall  ConfSession " + i + " cmd " + i2 + " participantId " + i3);
        Bundle bundle = new Bundle();
        bundle.putInt("confsession", i);
        bundle.putInt("updateCmd", i2);
        bundle.putInt("participantId", i3);
        bundle.putString("participant", str);
        sendMessage(35, bundle);
    }

    public void transferCall(int i, String str, int i2, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "transferCall: sessionId " + i + " targetUri " + IMSLog.checker(str) + " replacingSessionId " + i2);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putString("targetUri", str);
        if (i2 > 0) {
            bundle.putInt("replacingSessionId", i2);
        }
        bundle.putParcelable("result", message);
        sendMessage(20, bundle);
    }

    public void cancelTransferCall(int i, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "cancelTransferCall: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putParcelable("result", message);
        sendMessage(45, bundle);
    }

    public void pullingCall(String str, String str2, String str3, Dialog dialog, List<String> list, Message message) {
        int i = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("pullingCall: pullingUri=");
        sb.append(IMSLog.checker(str));
        sb.append(", targetUri=");
        sb.append(IMSLog.checker(str2));
        sb.append(", origUri=");
        sb.append(IMSLog.checker(str3));
        sb.append(", targetDialog=");
        sb.append(IMSLog.checker(dialog + ""));
        IMSLog.i(LOG_TAG, i, sb.toString());
        Bundle bundle = new Bundle();
        bundle.putString("pullingUri", str);
        bundle.putString("targetUri", str2);
        bundle.putString("origUri", str3);
        bundle.putParcelable("targetDialog", dialog);
        if (list != null) {
            bundle.putStringArrayList("p2p", new ArrayList<>(list));
        }
        bundle.putParcelable("result", message);
        sendMessage(29, bundle);
    }

    public void publishDialog(String str, String str2, String str3, int i, Message message, boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "publishDialog: origUri=" + IMSLog.checker(str) + ", dispName=" + IMSLog.checker(str2) + ", expires=" + i + "");
        Bundle bundle = new Bundle();
        bundle.putString("origUri", str);
        bundle.putString("dispName", str2);
        bundle.putString("body", str3);
        bundle.putInt("expires", i);
        bundle.putParcelable("result", message);
        if (z) {
            sendMessageDelayed(47, bundle, 500L);
        } else {
            sendMessage(47, bundle);
        }
    }

    public void acceptCallTranfer(int i, boolean z, int i2, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "acceptCallTransfer: session " + i + " accepted " + z + " status " + i2 + " reason " + str);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putBoolean("accepted", z);
        if (i2 > 0) {
            bundle.putInt("status", i2);
            bundle.putString("reason", str);
        }
        sendMessage(21, bundle);
    }

    public void startRecord(int i, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "startRecord: sessionId " + i + " filePath " + str);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putString("filePath", str);
        sendMessage(56, bundle);
    }

    public void stopRecord(int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "stopRecord: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        sendMessage(57, bundle);
    }

    public void startCmcRecord(int i, int i2, int i3, long j, int i4, String str, int i5, int i6, int i7, int i8, int i9, long j2, String str2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "startCmcRecord: sessionId " + i + " filePath " + str);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("audioSource", i2);
        bundle.putInt("outputFormat", i3);
        bundle.putLong("maxFileSize", j);
        bundle.putInt("maxDuration", i4);
        bundle.putString("outputPath", str);
        bundle.putInt("audioEncodingBR", i5);
        bundle.putInt("audioChannels", i6);
        bundle.putInt("audioSamplingR", i7);
        bundle.putInt("audioEncoder", i8);
        bundle.putInt("durationInterval", i9);
        bundle.putLong("fileSizeInterval", j2);
        bundle.putString("author", str2);
        sendMessage(58, bundle);
    }

    public void sendSms(String str, String str2, String str3, byte[] bArr, boolean z, String str4, boolean z2, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendSms: scaUri " + IMSLog.checker(str) + " localUri " + IMSLog.checker(str2) + " contentType " + str3 + " isDeleveryReport " + z + " callId " + str4);
        Bundle bundle = new Bundle();
        bundle.putString("sca", str);
        bundle.putString("localuri", str2);
        bundle.putString("contentType", str3);
        bundle.putByteArray("pdu", bArr);
        bundle.putBoolean("isDeliveryReport", z);
        bundle.putParcelable("result", message);
        bundle.putString("callId", str4);
        bundle.putBoolean("isEmergency", z2);
        sendMessage(31, bundle);
    }

    public void sendSmsRpAckResponse(String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendSmsRpAckResponse: callId " + str);
        sendMessage(32, str);
    }

    public void sendSmsResponse(String str, int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendSmsResponse: callId " + str);
        sendMessage(33, i, 0, str);
    }

    public void modifyCallType(int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("oldType", i2);
        bundle.putInt("newType", i3);
        sendMessage(104, bundle);
    }

    public void replyModifyCallType(int i, int i2, int i3, int i4, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("reqType", i4);
        bundle.putInt("curType", i2);
        bundle.putInt("repType", i3);
        bundle.putString("cmcCallTime", str);
        sendMessage(105, bundle);
    }

    public void replyWithIdc(int i, int i2, int i3, int i4, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("reqType", i4);
        bundle.putInt("curType", i2);
        bundle.putInt("repType", i3);
        bundle.putString("idcExtra", str);
        sendMessage(62, bundle);
    }

    public void rejectModifyCallType(int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("reason", i2);
        sendMessage(106, bundle);
    }

    public void updateWithIdc(int i, int i2, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateWithIdc(): sessionId " + i + ", action " + i2);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("action", i2);
        bundle.putString("idcExtra", str);
        sendMessage(63, bundle);
    }

    public void updateCall(int i, int i2, int i3, SipReason sipReason, String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateCall(): sessionId " + i + ", action " + i2);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("action", i2);
        bundle.putInt("codecType", i3);
        bundle.putInt("cause", sipReason.getCause());
        bundle.putString("reasonText", sipReason.getText());
        bundle.putString("idcExtra", str);
        sendMessage(37, bundle);
    }

    public void sendInfo(int i, int i2, int i3, AdditionalContents additionalContents, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendInfo: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("calltype", i2);
        bundle.putInt("ussdtype", i3);
        bundle.putParcelable("result", message);
        if (additionalContents != null) {
            bundle.putString("additionalContentsContents", additionalContents.contents());
            bundle.putString("additionalContentsMime", additionalContents.mimeType());
        }
        sendMessage(48, bundle);
    }

    public void sendEmergencyLocationPublish(int i, Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendEmergencyLocationPublish: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putParcelable("result", message);
        sendMessage(65, bundle);
    }

    public void sendCmcInfo(int i, AdditionalContents additionalContents) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendCmcInfo: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        if (additionalContents != null) {
            bundle.putString("additionalContentsContents", additionalContents.contents());
            bundle.putString("additionalContentsMime", additionalContents.mimeType());
        }
        sendMessage(59, bundle);
    }

    public void sendVcsInfo(int i, AdditionalContents additionalContents) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendVcsInfo: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        if (additionalContents != null) {
            bundle.putString("additionalContentsContents", additionalContents.contents());
            bundle.putString("additionalContentsMime", additionalContents.mimeType());
        }
        sendMessage(61, bundle);
    }

    public void enableQuantumSecurityService(int i, boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "enableQuantumSecurityService: sessionId " + i + " enable " + z);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putBoolean("enable", z);
        sendMessage(115, bundle);
    }

    public void setQuantumSecurityInfo(int i, int i2, int i3, String str, String str2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "setQuantumSecurityInfo: sessionId " + i + " callDirection " + i2 + " cryptoMode " + i3 + " qtSessionId " + IMSLog.checker(str) + " sessionKey " + IMSLog.checker(str2));
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putInt("callDirection", i2);
        bundle.putInt("cryptoMode", i3);
        bundle.putString("qtSessionId", str);
        bundle.putString("sessionKey", str2);
        sendMessage(114, bundle);
    }

    public void startVideoEarlyMedia(int i) {
        Log.i(LOG_TAG, "startVideoEarlyMedia: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        sendMessage(54, bundle);
    }

    public void handleCmcCsfb(int i) {
        Log.i(LOG_TAG, "handleCmcCsfb: sessionId " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        sendMessage(55, bundle);
    }

    public void updateCallwaitingStatus() {
        if (this.mImsFramework.getBoolean(this.mPhoneId, GlobalSettingsConstants.SS.CALLWAITING_BY_NETWORK, false)) {
            return;
        }
        sendMessage(39);
    }

    public void requestPublish(PresenceInfo presenceInfo, Message message) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("presenceInfo", presenceInfo);
        bundle.putParcelable("result", message);
        sendMessage(41, bundle);
    }

    public void requestUnpublish() {
        sendMessage(42);
    }

    public void sendMediaEvent(int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(SoftphoneNamespaces.SoftphoneCallHandling.TARGET, i);
        bundle.putInt("event", i2);
        bundle.putInt("eventType", i3);
        sendMessage(1001, bundle);
    }

    public void sendNegotiatedLocalSdp(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("sessionId", i);
        bundle.putString(IdcExtra.Key.SDP, str);
        sendMessage(64, bundle);
    }

    private void initState() {
        addState(this.mDefaultState);
        addState(this.mInitialState, this.mDefaultState);
        addState(this.mReadyState, this.mDefaultState);
        addState(this.mRegisteringState, this.mReadyState);
        addState(this.mRegisteredState, this.mReadyState);
        addState(this.mReRegisteringState, this.mRegisteredState);
        addState(this.mDeregisteringState, this.mReadyState);
        addState(this.mTerminatingState, this.mReadyState);
        addState(this.mProhibitedState, this.mDefaultState);
        addState(this.mEmergencyState, this.mReadyState);
        setInitialState(this.mInitialState);
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDestState(UserAgentState userAgentState) {
        Log.i("UserAgent[" + this.mPhoneId + "]", "setDestState to : " + userAgentState);
        this.mDestState = userAgentState;
        if (userAgentState == UserAgentState.DEFAULT) {
            transitionTo(this.mDefaultState);
            return;
        }
        if (userAgentState == UserAgentState.READY) {
            transitionTo(this.mReadyState);
            return;
        }
        if (userAgentState == UserAgentState.INITIAL) {
            transitionTo(this.mInitialState);
            return;
        }
        if (userAgentState == UserAgentState.REGISTERING) {
            transitionTo(this.mRegisteringState);
            return;
        }
        if (userAgentState == UserAgentState.REGISTERED) {
            transitionTo(this.mRegisteredState);
            return;
        }
        if (userAgentState == UserAgentState.REREGISTERING) {
            transitionTo(this.mReRegisteringState);
            return;
        }
        if (userAgentState == UserAgentState.DEREGISTERING) {
            transitionTo(this.mDeregisteringState);
            return;
        }
        if (userAgentState == UserAgentState.TERMINATING) {
            transitionTo(this.mTerminatingState);
            return;
        }
        if (userAgentState == UserAgentState.EMERGENCY) {
            transitionTo(this.mEmergencyState);
            return;
        }
        if (userAgentState == UserAgentState.PROHIBITTED) {
            transitionTo(this.mProhibitedState);
            return;
        }
        Log.e(LOG_TAG, "Unexpected State : " + userAgentState);
        transitionTo(this.mDefaultState);
    }

    private class DefaultState extends State {
        private DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(UserAgent.LOG_TAG, UserAgent.this.getCurrentState().getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 13) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " EVENT_DEREGISTERED_TIMEOUT");
                if (UserAgent.this.mListener == null) {
                    return true;
                }
                UserAgent.this.mListener.onDeregistered(UserAgent.this, SipErrorBase.OK, 0L, true, false);
                return true;
            }
            if (i == 41) {
                Message message2 = (Message) ((Bundle) message.obj).getParcelable("result");
                FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
                GeneralResponse.startGeneralResponse(flatBufferBuilder);
                GeneralResponse.addHandle(flatBufferBuilder, UserAgent.this.mHandle);
                GeneralResponse.addResult(flatBufferBuilder, 1);
                flatBufferBuilder.finish(GeneralResponse.endGeneralResponse(flatBufferBuilder));
                AsyncResult.forMessage(message2, GeneralResponse.getRootAsGeneralResponse(flatBufferBuilder.dataBuffer()), null);
                message2.sendToTarget();
                return true;
            }
            Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "Unexpected event " + message.what + ". current state is " + UserAgent.this.getCurrentState().getName());
            return false;
        }
    }

    private class InitialState extends State {
        private InitialState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(UserAgent.LOG_TAG, UserAgent.this.getCurrentState().getName() + " enter.");
            UserAgent.this.mHandle = -1;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                UserAgent.this.mStackIf.createUA(UserAgent.this.mUaProfile, UserAgent.this.obtainMessage(2));
                return true;
            }
            if (i != 2) {
                if (i == 3) {
                    IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "retry UA creation...");
                    UserAgent.this.create();
                    return true;
                }
                if (i == 4) {
                    UserAgent.this.deferMessage(message);
                    return true;
                }
                if (i == 5) {
                    UserAgent.this.mStackIf.deleteUA(UserAgent.this.mHandle, UserAgent.this.obtainMessage(5));
                    UserAgent.this.setDestState(UserAgentState.TERMINATING);
                    return true;
                }
                if (i == 10) {
                    IMSLog.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "Event " + message.what + " received in  " + UserAgent.this.getCurrentState().getName() + " This shouldn't be handled here - defer");
                    UserAgent.this.deferMessage(message);
                    return true;
                }
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "Unexpected event " + message.what + ". current state is " + UserAgent.this.getCurrentState().getName());
                return false;
            }
            AsyncResult asyncResult = (AsyncResult) message.obj;
            GeneralResponse generalResponse = (GeneralResponse) asyncResult.result;
            if (asyncResult.exception == null && generalResponse != null) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "UA created. handle " + generalResponse.handle() + " result " + generalResponse.result() + " reason " + generalResponse.reason());
                if (generalResponse.result() == 0) {
                    UserAgent.this.mHandle = (int) generalResponse.handle();
                    if (UserAgent.this.mImsProfile.isUicclessEmergency()) {
                        IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "No need for emergency registration. Move to EmergencyState.");
                        UserAgent userAgent = UserAgent.this;
                        userAgent.transitionTo(userAgent.mEmergencyState);
                    } else {
                        UserAgent userAgent2 = UserAgent.this;
                        userAgent2.transitionTo(userAgent2.mReadyState);
                    }
                    UserAgent.this.mStackIf.registerUaListener(UserAgent.this.mHandle, UserAgent.this.new EventListener());
                    if (UserAgent.this.mListener != null) {
                        UserAgent.this.mListener.onCreated(UserAgent.this);
                    }
                    return true;
                }
                if (generalResponse.reason() == 6) {
                    IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "create() failed. notify with null agent");
                    if (UserAgent.this.mListener != null) {
                        UserAgent.this.mListener.onCreated(null);
                    }
                    return true;
                }
            }
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "create() failed. retry 3 seconds later ");
            UserAgent.this.sendMessageDelayed(3, RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
            return true;
        }
    }

    private class ReadyState extends State {
        private ReadyState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, UserAgent.this.getCurrentState().getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "UserAgent is already created.");
                return true;
            }
            if (i == 12) {
                UserAgent.this.setDestState(UserAgentState.READY);
                return true;
            }
            if (i == 15) {
                UserAgent.this.mStackIf.endCall(UserAgent.this.mHandle, message.arg1, (SipReason) message.obj, null);
                return true;
            }
            if (i == 34) {
                List<String> list = (List) message.obj;
                if (UserAgent.this.mImsProfile != null && Mno.fromName(UserAgent.this.mImsProfile.getMnoName()).isKor()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("real_pani", list.get(0));
                    ImsSharedPrefHelper.put(UserAgent.this.mPhoneId, UserAgent.this.mContext, ImsSharedPrefHelper.DEBUG_CONFIG, contentValues);
                    String string = ImsSharedPrefHelper.getString(UserAgent.this.mPhoneId, UserAgent.this.mContext, ImsSharedPrefHelper.DEBUG_CONFIG, "fake_pani", "");
                    if (!TextUtils.isEmpty(string)) {
                        list.set(0, string);
                    }
                }
                UserAgent.this.mStackIf.updatePani(UserAgent.this.mHandle, list, UserAgent.this.obtainMessage(2000));
                return true;
            }
            if (i == 44) {
                UserAgent.this.mStackIf.updateGeolocation(UserAgent.this.mHandle, (LocationInfo) message.obj);
                return true;
            }
            if (i == 50) {
                UserAgent.this.mStackIf.updateRat(UserAgent.this.mHandle, message.arg1);
                return true;
            }
            if (i == 52) {
                UserAgent.this.mStackIf.updateTimeInPlani(UserAgent.this.mHandle, ((Long) message.obj).longValue());
                return true;
            }
            if (i != 60) {
                if (i != 100) {
                    if (i == 108) {
                        Bundle bundle = (Bundle) message.obj;
                        UserAgent.this.mStackIf.updateAudioInterface(UserAgent.this.mHandle, bundle.getString("mode"), (Message) bundle.getParcelable("result"));
                        return true;
                    }
                    if (i == 4) {
                        UserAgent.this.mStackIf.deleteUA(UserAgent.this.mHandle, UserAgent.this.obtainMessage(5));
                        UserAgent.this.setDestState(UserAgentState.TERMINATING);
                        return true;
                    }
                    if (i != 5) {
                        if (i == 6) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.addAll(UserAgent.this.mUaProfile.getServiceList());
                            UserAgent.this.mStackIf.register(UserAgent.this.mHandle, UserAgent.this.mUaProfile.getPcscfIp(), UserAgent.this.mUaProfile.getPcscfPort(), UserAgent.this.mUaProfile.getRegExpires(), arrayList, UserAgent.this.mUaProfile.getLinkedImpuList(), UserAgent.this.mUaProfile.getOwnCapabilities(), UserAgent.this.mThirdPartyFeatureTags, UserAgent.this.mUaProfile.getCmcProfile().getAccessToken(), UserAgent.this.mUaProfile.getCmcProfile().getAuthServerUrl(), UserAgent.this.mUaProfile.getSingleRegiEnabled(), UserAgent.this.mUaProfile.getImMsgTech(), UserAgent.this.mUaProfile.getIsAddMmtelCallComposerTag(), UserAgent.this.obtainMessage(7));
                            UserAgent.this.setDestState(UserAgentState.REGISTERING);
                            return true;
                        }
                        if (i == 9) {
                            UserAgent.this.mStackIf.sendAuthResponse(UserAgent.this.mHandle, message.arg1, (String) message.obj);
                            return true;
                        }
                        if (i != 10) {
                            return false;
                        }
                        IMSLog.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "Event " + message.what + " received in  " + UserAgent.this.getCurrentState().getName() + " This shouldn't be handled here - defer");
                        UserAgent.this.deferMessage(message);
                        return true;
                    }
                }
                UserAgent.this.setDestState(UserAgentState.INITIAL);
                return true;
            }
            UserAgent.this.mStackIf.setVowifi5gsaMode(UserAgent.this.mHandle, message.arg1);
            return true;
        }
    }

    private class RegisteringState extends State {
        private RegisteringState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(UserAgent.LOG_TAG, UserAgent.this.getCurrentState().getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 4) {
                UserAgent.this.mStackIf.deleteUA(UserAgent.this.mHandle, UserAgent.this.obtainMessage(5));
                UserAgent.this.setDestState(UserAgentState.TERMINATING);
                return true;
            }
            if (i == 10) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " EVENT_REQUEST_DEREGISTER");
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " Defer EVENT_REQUEST_DEREGISTER");
                UserAgent.this.setDestState(UserAgentState.DEREGISTERING);
                return true;
            }
            if (i == 38) {
                UserAgent.this.mStackIf.networkSuspended(UserAgent.this.mHandle, message.arg1 == 1);
                return true;
            }
            if (i == 41) {
                UserAgent.this.deferMessage(message);
                return true;
            }
            if (i == 43) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + "EVENT_REQUEST_DEREGISTER_INTERNAL");
                UserAgent.this.mStackIf.deregister(UserAgent.this.mHandle, message.arg1 == 1, UserAgent.this.obtainMessage(11));
                UserAgent.this.setDestState(UserAgentState.DEREGISTERING);
                return true;
            }
            if (i == 46) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_AKA_CHALLENGE_TIME_OUT");
                if (UserAgent.this.mListener == null) {
                    return true;
                }
                UserAgent.this.mListener.onRegistrationError(UserAgent.this, SipErrorBase.OK, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                return true;
            }
            if (i == 900) {
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "[Registering] emergency registration failed. move on to emergency state.");
                UserAgent.this.setDestState(UserAgentState.EMERGENCY);
                return true;
            }
            if (i == 2000) {
                GeneralResponse generalResponse = (GeneralResponse) ((AsyncResult) message.obj).result;
                if (!Mno.fromName(UserAgent.this.mImsProfile.getMnoName()).isKor() || generalResponse.result() != 1 || generalResponse.reason() != 4) {
                    return true;
                }
                IMSLog.c(LogClass.REGI_DO_RECOVERY_ACTION, "imsprofile is null. recover it", true);
                UserAgent.this.mListener.onNotifyNullProfile(UserAgent.this);
                return true;
            }
            if (i == 7) {
                if (((AsyncResult) message.obj).exception == null) {
                    return true;
                }
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "register() failed. retry in 3 seconds.");
                UserAgent.this.sendMessageDelayed(6, RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
                UserAgent.this.setDestState(UserAgentState.READY);
                return true;
            }
            if (i == 8) {
                UserAgent.this.setDestState(UserAgentState.REGISTERED);
                return true;
            }
            if (i == 12) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " Defer event " + message.what);
                UserAgent.this.deferMessage(message);
                return true;
            }
            if (i != 13) {
                return false;
            }
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " EVENT_DELETE_UA");
            if (UserAgent.this.mListener == null) {
                return true;
            }
            UserAgent.this.mListener.onRegistrationError(UserAgent.this, SipErrorBase.OK, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
            return true;
        }
    }

    private class RegisteredState extends State {
        private RegisteredState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " enter.");
            onRegistered();
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            if (UserAgent.this.mDestState == UserAgentState.REGISTERED) {
                return;
            }
            if (UserAgent.this.mDestState != UserAgentState.DEREGISTERING && UserAgent.this.mDestState != UserAgentState.TERMINATING && UserAgent.this.mListener != null) {
                if (UserAgent.this.mError == null) {
                    Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "exit: Unknown error.");
                    UserAgent.this.mError = SipErrorBase.UNKNOWN_LOCAL_ERROR;
                }
                Log.d(UserAgent.LOG_TAG, "[" + UserAgent.this.mPhoneId + "] UA.RegisteredState.exit() mPcscfGoneDeregi = " + UserAgent.this.mPcscfGoneDeregi);
                UaEventListener uaEventListener = UserAgent.this.mListener;
                UserAgent userAgent = UserAgent.this;
                uaEventListener.onDeregistered(userAgent, userAgent.mError, UserAgent.this.mRetryAfterMs, false, UserAgent.this.mPcscfGoneDeregi);
                UserAgent.this.mPcscfGoneDeregi = false;
            }
            if (UserAgent.this.mDestState != UserAgentState.REREGISTERING) {
                UserAgent.this.mRegistration = null;
            }
            UserAgent.this.mError = null;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            boolean z;
            AdditionalContents additionalContents;
            int i = message.what;
            if (i != 4) {
                if (i != 6) {
                    if (i == 101) {
                        onRegInfoNotify((RegInfoChanged) message.obj);
                    } else if (i != 102) {
                        switch (i) {
                            case 6:
                                break;
                            case 8:
                                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " reRegistered.");
                                onRegistered();
                                break;
                            case 10:
                                UserAgent.this.mStackIf.deregister(UserAgent.this.mHandle, message.arg1 == 1, UserAgent.this.obtainMessage(11));
                                UserAgent.this.setDestState(UserAgentState.DEREGISTERING);
                                break;
                            case 14:
                                Bundle bundle = (Bundle) message.obj;
                                String string = bundle.getString("additionalContentsContents");
                                String string2 = bundle.getString("additionalContentsMime");
                                if (string == null || string2 == null) {
                                    additionalContents = null;
                                } else {
                                    FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
                                    int createString = flatBufferBuilder.createString(string);
                                    int createString2 = flatBufferBuilder.createString(string2);
                                    AdditionalContents.startAdditionalContents(flatBufferBuilder);
                                    AdditionalContents.addMimeType(flatBufferBuilder, createString2);
                                    AdditionalContents.addContents(flatBufferBuilder, createString);
                                    flatBufferBuilder.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder));
                                    additionalContents = AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder.dataBuffer());
                                }
                                UserAgent.this.mStackIf.makeCall(UserAgent.this.mHandle, bundle.getString("destUri"), bundle.getString("origUri"), bundle.getInt("type"), bundle.getString("dispName"), bundle.getString("dialedNumber"), null, -1, additionalContents, bundle.getString("cli"), bundle.getString("pEmergencyInfo"), (HashMap) bundle.getSerializable("additionalSipHeaders"), bundle.getString("alertInfo"), bundle.getBoolean("isLteEpsOnlyAttached"), bundle.getStringArrayList("p2p"), bundle.getInt("cmcBoundSessionId"), bundle.getBundle(CallConstants.ComposerData.TAG), bundle.getString("replaceCallId"), bundle.getInt("cmcEdCallSlot"), bundle.getString("idcExtra"), (Message) bundle.getParcelable("result"));
                                break;
                            case 15:
                                UserAgent.this.mStackIf.endCall(UserAgent.this.mHandle, message.arg1, (SipReason) message.obj, null);
                                break;
                            case 16:
                                Bundle bundle2 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.answerCall(UserAgent.this.mHandle, bundle2.getInt("sessionId"), bundle2.getInt("callType"), bundle2.getString("cmcCallTime"), bundle2.getString("idcExtra"));
                                break;
                            case 17:
                                Bundle bundle3 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.holdCall(UserAgent.this.mHandle, bundle3.getInt("sessionId"), (Message) bundle3.getParcelable("result"));
                                break;
                            case 18:
                                Bundle bundle4 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.resumeCall(UserAgent.this.mHandle, bundle4.getInt("sessionId"), (Message) bundle4.getParcelable("result"));
                                break;
                            case 19:
                                Bundle bundle5 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.mergeCall(UserAgent.this.mHandle, bundle5.getInt("session1"), bundle5.getInt("session2"), bundle5.getString("confuri"), bundle5.getInt("calltype"), bundle5.getString("eventSubscribe"), bundle5.getString("dialogType"), bundle5.getString("origUri"), bundle5.getString("referUriType"), bundle5.getString("removeReferUriType"), bundle5.getString("referUriAsserted"), bundle5.getString("useAnonymousUpdate"), bundle5.getBoolean("supportPrematureEnd"), (HashMap) bundle5.getSerializable("extraHeaders"), (Message) bundle5.getParcelable("result"));
                                break;
                            case 20:
                                Bundle bundle6 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.transferCall(UserAgent.this.mHandle, bundle6.getInt("sessionId"), bundle6.getString("targetUri"), bundle6.getInt("replacingSessionId"), (Message) bundle6.getParcelable("result"));
                                break;
                            case 21:
                                Bundle bundle7 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.acceptCallTransfer(UserAgent.this.mHandle, bundle7.getInt("sessionId"), bundle7.getBoolean("accepted"), bundle7.getInt("status"), bundle7.getString("reason"), null);
                                break;
                            case 22:
                                UserAgent.this.mStackIf.rejectCall(UserAgent.this.mHandle, message.arg1, (SipError) message.obj, null);
                                break;
                            case 23:
                                Bundle bundle8 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.handleDtmf(UserAgent.this.mHandle, bundle8.getInt("sessionId"), bundle8.getInt("code"), bundle8.getInt("mode"), bundle8.getInt("operation"), (Message) bundle8.getParcelable("result"));
                                break;
                            case 45:
                                Bundle bundle9 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.cancelTransferCall(UserAgent.this.mHandle, bundle9.getInt("sessionId"), (Message) bundle9.getParcelable("result"));
                                break;
                            case 51:
                                Bundle bundle10 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.sendText(UserAgent.this.mHandle, bundle10.getInt("sessionId"), bundle10.getString("text"), bundle10.getInt("len"));
                                break;
                            case 1000:
                                UserAgent.this.mStackIf.send((ResipStackRequest) message.obj);
                                break;
                            case 1001:
                                Bundle bundle11 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.sendMediaEvent(UserAgent.this.mHandle, bundle11.getInt(SoftphoneNamespaces.SoftphoneCallHandling.TARGET), bundle11.getInt("event"), bundle11.getInt("eventType"));
                                break;
                            case 2000:
                                GeneralResponse generalResponse = (GeneralResponse) ((AsyncResult) message.obj).result;
                                if (Mno.fromName(UserAgent.this.mImsProfile.getMnoName()).isKor()) {
                                    if (generalResponse.result() != 1 || generalResponse.reason() != 4) {
                                        z = true;
                                        break;
                                    } else {
                                        IMSLog.c(LogClass.REGI_DO_RECOVERY_ACTION, "imsprofile is null. recover it", true);
                                        UserAgent.this.mListener.onNotifyNullProfile(UserAgent.this);
                                        break;
                                    }
                                }
                                break;
                            case UserAgent.EVENT_RECOVER_REGISESSION /* 9000 */:
                                UserAgent.this.mListener.onNotifyNullProfile(UserAgent.this);
                                break;
                            default:
                                switch (i) {
                                    case 25:
                                        Bundle bundle12 = (Bundle) message.obj;
                                        UserAgent.this.mStackIf.progressIncomingCall(UserAgent.this.mHandle, bundle12.getInt("sessionId"), bundle12.getBoolean("isBlocked"), (HashMap) bundle12.getSerializable("headers"), bundle12.getString("idcExtra"), null);
                                        break;
                                    case 26:
                                        Bundle bundle13 = (Bundle) message.obj;
                                        UserAgent.this.mStackIf.holdVideo(UserAgent.this.mHandle, bundle13.getInt("sessionId"), (Message) bundle13.getParcelable("result"));
                                        break;
                                    case 27:
                                        Bundle bundle14 = (Bundle) message.obj;
                                        UserAgent.this.mStackIf.resumeVideo(UserAgent.this.mHandle, bundle14.getInt("sessionId"), (Message) bundle14.getParcelable("result"));
                                        break;
                                    case 28:
                                        Bundle bundle15 = (Bundle) message.obj;
                                        UserAgent.this.mStackIf.startCamera(UserAgent.this.mHandle, bundle15.getInt("sessionId"), bundle15.getInt("cameraId"));
                                        break;
                                    case 29:
                                        Bundle bundle16 = (Bundle) message.obj;
                                        UserAgent.this.mStackIf.pullingCall(UserAgent.this.mHandle, bundle16.getString("pullingUri"), bundle16.getString("targetUri"), bundle16.getString("origUri"), (Dialog) bundle16.getParcelable("targetDialog"), bundle16.getStringArrayList("p2p"), (Message) bundle16.getParcelable("result"));
                                        break;
                                    case 30:
                                        UserAgent.this.mStackIf.stopCamera(UserAgent.this.mHandle);
                                        break;
                                    case 31:
                                        sendSms((Bundle) message.obj);
                                        break;
                                    case 32:
                                        UserAgent.this.mStackIf.sendSmsRpAckResponse(UserAgent.this.mHandle, (String) message.obj);
                                        break;
                                    case 33:
                                        UserAgent.this.mStackIf.sendSmsResponse(UserAgent.this.mHandle, (String) message.obj, message.arg1);
                                        break;
                                    default:
                                        switch (i) {
                                            case 35:
                                                Bundle bundle17 = (Bundle) message.obj;
                                                UserAgent.this.mStackIf.updateConfCall(UserAgent.this.mHandle, bundle17.getInt("confsession"), bundle17.getInt("updateCmd"), bundle17.getInt("participantId"), bundle17.getString("participant"));
                                                break;
                                            case 36:
                                                Bundle bundle18 = (Bundle) message.obj;
                                                UserAgent.this.mStackIf.conference(UserAgent.this.mHandle, bundle18.getString("confuri"), bundle18.getInt("calltype"), bundle18.getString("eventSubscribe"), bundle18.getString("dialogType"), bundle18.getStringArray(CmsJsonConstants.PARTICIPANTS), bundle18.getString("origUri"), bundle18.getString("referUriType"), bundle18.getString("removeReferUriType"), bundle18.getString("referUriAsserted"), bundle18.getString("useAnonymousUpdate"), bundle18.getBoolean("supportPrematureEnd"), (Message) bundle18.getParcelable("result"));
                                                break;
                                            case 37:
                                                Bundle bundle19 = (Bundle) message.obj;
                                                UserAgent.this.mStackIf.updateCall(bundle19.getInt("sessionId"), bundle19.getInt("action"), bundle19.getInt("codecType"), bundle19.getInt("cause"), bundle19.getString("reasonText"));
                                                break;
                                            case 38:
                                                UserAgent.this.mStackIf.networkSuspended(UserAgent.this.mHandle, message.arg1 == 1);
                                                break;
                                            default:
                                                switch (i) {
                                                    case 40:
                                                        UserAgent.this.mStackIf.updateVceConfig(UserAgent.this.mHandle, ((Boolean) message.obj).booleanValue());
                                                        break;
                                                    case 41:
                                                        Bundle bundle20 = (Bundle) message.obj;
                                                        UserAgent.this.mStackIf.requestPublish(UserAgent.this.mHandle, (PresenceInfo) bundle20.getParcelable("presenceInfo"), (Message) bundle20.getParcelable("result"));
                                                        break;
                                                    case 42:
                                                        UserAgent.this.mStackIf.requestUnpublish(UserAgent.this.mHandle);
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 47:
                                                                Bundle bundle21 = (Bundle) message.obj;
                                                                UserAgent.this.mStackIf.publishDialog(UserAgent.this.mHandle, bundle21.getString("origUri"), bundle21.getString("dispName"), bundle21.getString("body"), bundle21.getInt("expires"), (Message) bundle21.getParcelable("result"));
                                                                break;
                                                            case 48:
                                                                Bundle bundle22 = (Bundle) message.obj;
                                                                String string3 = bundle22.getString("additionalContentsContents");
                                                                String string4 = bundle22.getString("additionalContentsMime");
                                                                FlatBufferBuilder flatBufferBuilder2 = new FlatBufferBuilder(0);
                                                                int createString3 = flatBufferBuilder2.createString(string3);
                                                                int createString4 = flatBufferBuilder2.createString(string4);
                                                                AdditionalContents.startAdditionalContents(flatBufferBuilder2);
                                                                AdditionalContents.addMimeType(flatBufferBuilder2, createString4);
                                                                AdditionalContents.addContents(flatBufferBuilder2, createString3);
                                                                flatBufferBuilder2.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder2));
                                                                UserAgent.this.mStackIf.sendInfo(UserAgent.this.mHandle, bundle22.getInt("sessionId"), bundle22.getInt("calltype"), bundle22.getInt("ussdtype"), AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder2.dataBuffer()), (Message) bundle22.getParcelable("result"));
                                                                break;
                                                            case 49:
                                                                UserAgent.this.mStackIf.deleteTcpClientSocket(UserAgent.this.mHandle);
                                                                break;
                                                            default:
                                                                switch (i) {
                                                                    case 54:
                                                                        UserAgent.this.mStackIf.startVideoEarlyMedia(UserAgent.this.mHandle, ((Bundle) message.obj).getInt("sessionId"));
                                                                        break;
                                                                    case 55:
                                                                        UserAgent.this.mStackIf.handleCmcCsfb(UserAgent.this.mHandle, ((Bundle) message.obj).getInt("sessionId"));
                                                                        break;
                                                                    case 56:
                                                                        Bundle bundle23 = (Bundle) message.obj;
                                                                        UserAgent.this.mStackIf.startRecord(UserAgent.this.mHandle, bundle23.getInt("sessionId"), bundle23.getString("filePath"));
                                                                        break;
                                                                    case 57:
                                                                        UserAgent.this.mStackIf.stopRecord(UserAgent.this.mHandle, ((Bundle) message.obj).getInt("sessionId"));
                                                                        break;
                                                                    case 58:
                                                                        Bundle bundle24 = (Bundle) message.obj;
                                                                        UserAgent.this.mStackIf.startCmcRecord(UserAgent.this.mHandle, bundle24.getInt("sessionId"), bundle24.getInt("audioSource"), bundle24.getInt("outputFormat"), bundle24.getLong("maxFileSize"), bundle24.getInt("maxDuration"), bundle24.getString("outputPath"), bundle24.getInt("audioEncodingBR"), bundle24.getInt("audioChannels"), bundle24.getInt("audioSamplingR"), bundle24.getInt("audioEncoder"), bundle24.getInt("durationInterval"), bundle24.getLong("fileSizeInterval"), bundle24.getString("author"));
                                                                        break;
                                                                    case 59:
                                                                        Bundle bundle25 = (Bundle) message.obj;
                                                                        String string5 = bundle25.getString("additionalContentsContents");
                                                                        String string6 = bundle25.getString("additionalContentsMime");
                                                                        FlatBufferBuilder flatBufferBuilder3 = new FlatBufferBuilder(0);
                                                                        int createString5 = flatBufferBuilder3.createString(string5);
                                                                        int createString6 = flatBufferBuilder3.createString(string6);
                                                                        AdditionalContents.startAdditionalContents(flatBufferBuilder3);
                                                                        AdditionalContents.addMimeType(flatBufferBuilder3, createString6);
                                                                        AdditionalContents.addContents(flatBufferBuilder3, createString5);
                                                                        flatBufferBuilder3.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder3));
                                                                        UserAgent.this.mStackIf.sendCmcInfo(UserAgent.this.mHandle, bundle25.getInt("sessionId"), AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder3.dataBuffer()));
                                                                        break;
                                                                    default:
                                                                        switch (i) {
                                                                            case 61:
                                                                                Bundle bundle26 = (Bundle) message.obj;
                                                                                String string7 = bundle26.getString("additionalContentsContents");
                                                                                String string8 = bundle26.getString("additionalContentsMime");
                                                                                FlatBufferBuilder flatBufferBuilder4 = new FlatBufferBuilder(0);
                                                                                int createString7 = flatBufferBuilder4.createString(string7);
                                                                                int createString8 = flatBufferBuilder4.createString(string8);
                                                                                AdditionalContents.startAdditionalContents(flatBufferBuilder4);
                                                                                AdditionalContents.addMimeType(flatBufferBuilder4, createString8);
                                                                                AdditionalContents.addContents(flatBufferBuilder4, createString7);
                                                                                flatBufferBuilder4.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder4));
                                                                                UserAgent.this.mStackIf.sendVcsInfo(UserAgent.this.mHandle, bundle26.getInt("sessionId"), AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder4.dataBuffer()));
                                                                                break;
                                                                            case 62:
                                                                                Bundle bundle27 = (Bundle) message.obj;
                                                                                UserAgent.this.mStackIf.replyWithIdc(bundle27.getInt("sessionId"), bundle27.getInt("reqType"), bundle27.getInt("curType"), bundle27.getInt("repType"), bundle27.getString("idcExtra"));
                                                                                break;
                                                                            case 63:
                                                                                Bundle bundle28 = (Bundle) message.obj;
                                                                                UserAgent.this.mStackIf.updateWithIdc(bundle28.getInt("sessionId"), bundle28.getInt("action"), bundle28.getString("idcExtra"));
                                                                                break;
                                                                            case 64:
                                                                                Bundle bundle29 = (Bundle) message.obj;
                                                                                UserAgent.this.mStackIf.sendNegotiatedLocalSdp(bundle29.getInt("sessionId"), bundle29.getString(IdcExtra.Key.SDP));
                                                                                break;
                                                                            case 65:
                                                                                UserAgent.this.mStackIf.sendEmergencyLocationPublish(((Bundle) message.obj).getInt("sessionId"));
                                                                                break;
                                                                            case 66:
                                                                                UserAgent.this.mStackIf.updateCmcHotspotState(UserAgent.this.mHandle, Arrays.asList(((Bundle) message.obj).getStringArray("hotspotAddresses")));
                                                                                break;
                                                                            default:
                                                                                switch (i) {
                                                                                    case 104:
                                                                                        Bundle bundle30 = (Bundle) message.obj;
                                                                                        UserAgent.this.mStackIf.modifyCallType(bundle30.getInt("sessionId"), bundle30.getInt("oldType"), bundle30.getInt("newType"));
                                                                                        break;
                                                                                    case 105:
                                                                                        Bundle bundle31 = (Bundle) message.obj;
                                                                                        UserAgent.this.mStackIf.replyModifyCallType(bundle31.getInt("sessionId"), bundle31.getInt("reqType"), bundle31.getInt("curType"), bundle31.getInt("repType"), bundle31.getString("cmcCallTime"));
                                                                                        break;
                                                                                    case 106:
                                                                                        Bundle bundle32 = (Bundle) message.obj;
                                                                                        UserAgent.this.mStackIf.rejectModifyCallType(bundle32.getInt("sessionId"), bundle32.getInt("reason"));
                                                                                        break;
                                                                                    case 107:
                                                                                        Bundle bundle33 = (Bundle) message.obj;
                                                                                        UserAgent.this.mStackIf.extendToConfCall(UserAgent.this.mHandle, bundle33.getString("confuri"), bundle33.getInt("calltype"), bundle33.getString("eventSubscribe"), bundle33.getString("dialogType"), bundle33.getStringArray(CmsJsonConstants.PARTICIPANTS), bundle33.getInt("sessId"), bundle33.getString("origUri"), bundle33.getString("referUriType"), bundle33.getString("removeReferUriType"), bundle33.getString("referUriAsserted"), bundle33.getString("useAnonymousUpdate"), bundle33.getBoolean("supportPrematureEnd"));
                                                                                        break;
                                                                                    default:
                                                                                        switch (i) {
                                                                                            case 109:
                                                                                                Bundle bundle34 = (Bundle) message.obj;
                                                                                                UserAgent.this.mStackIf.startLocalRingBackTone(UserAgent.this.mHandle, bundle34.getInt("streamType"), bundle34.getInt("volume"), bundle34.getInt("toneType"), (Message) bundle34.getParcelable("result"));
                                                                                                break;
                                                                                            case 110:
                                                                                                UserAgent.this.mStackIf.stopLocalRingBackTone(UserAgent.this.mHandle);
                                                                                                break;
                                                                                            case 111:
                                                                                                Bundle bundle35 = (Bundle) message.obj;
                                                                                                UserAgent.this.mStackIf.modifyVideoQuality(bundle35.getInt("sessionId"), bundle35.getInt("oldQual"), bundle35.getInt("newQual"));
                                                                                                break;
                                                                                            case 112:
                                                                                                Bundle bundle36 = (Bundle) message.obj;
                                                                                                UserAgent.this.mStackIf.setVideoCrtAudio(UserAgent.this.mHandle, bundle36.getInt("sessionId"), bundle36.getBoolean("vcrtAudioOn"));
                                                                                                break;
                                                                                            case 113:
                                                                                                Bundle bundle37 = (Bundle) message.obj;
                                                                                                UserAgent.this.mStackIf.sendDtmfEvent(UserAgent.this.mHandle, bundle37.getInt("sessionId"), bundle37.getString("dtmfEvent"));
                                                                                                break;
                                                                                            case 114:
                                                                                                Bundle bundle38 = (Bundle) message.obj;
                                                                                                UserAgent.this.mStackIf.setQuantumSecurityInfo(bundle38.getInt("sessionId"), bundle38.getInt("callDirection"), bundle38.getInt("cryptoMode"), bundle38.getString("qtSessionId"), bundle38.getString("sessionKey"));
                                                                                                break;
                                                                                            case 115:
                                                                                                Bundle bundle39 = (Bundle) message.obj;
                                                                                                UserAgent.this.mStackIf.enableQuantumSecurityService(bundle39.getInt("sessionId"), bundle39.getBoolean("enable"));
                                                                                                break;
                                                                                            default:
                                                                                                return false;
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                    } else {
                        int i2 = message.arg1;
                        if (i2 != -1) {
                            UserAgent.this.updateRouteTable(i2, (String) message.obj);
                        }
                    }
                    z = true;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(UserAgent.this.mUaProfile.getServiceList());
                UserAgent.this.mStackIf.register(UserAgent.this.mHandle, UserAgent.this.mUaProfile.getPcscfIp(), UserAgent.this.mUaProfile.getPcscfPort(), UserAgent.this.mUaProfile.getRegExpires(), arrayList, UserAgent.this.mUaProfile.getLinkedImpuList(), UserAgent.this.mUaProfile.getOwnCapabilities(), UserAgent.this.mThirdPartyFeatureTags, UserAgent.this.mUaProfile.getCmcProfile().getAccessToken(), UserAgent.this.mUaProfile.getCmcProfile().getAuthServerUrl(), UserAgent.this.mUaProfile.getSingleRegiEnabled(), UserAgent.this.mUaProfile.getImMsgTech(), UserAgent.this.mUaProfile.getIsAddMmtelCallComposerTag(), null);
                UserAgent.this.setDestState(UserAgentState.REREGISTERING);
                z = true;
            } else {
                z = true;
                UserAgent.this.mStackIf.deregister(UserAgent.this.mHandle, true, UserAgent.this.obtainMessage(11));
                UserAgent.this.setDestState(UserAgentState.DEREGISTERING);
            }
            return z;
        }

        private void onRegistered() {
            UserAgent.this.updateEpdgStatus();
            UserAgent userAgent = UserAgent.this;
            userAgent.mRegistration = userAgent.buildImsRegistration();
            UserAgent.this.mStackIf.setPreferredImpu(UserAgent.this.mHandle, UserAgent.this.mRegistration.getPreferredImpu().getUri().toString());
            if (UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onRegistered(UserAgent.this);
            }
        }

        private void onRegInfoNotify(RegInfoChanged regInfoChanged) {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "onRegInfoNotify:");
            if (UserAgent.this.mRegistration == null) {
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "onRegInfoNotify: unexpected RegInfoNotify. mHandle " + UserAgent.this.mHandle);
                return;
            }
            int contactsLength = regInfoChanged.contactsLength();
            Contact[] contactArr = new Contact[contactsLength];
            for (int i = 0; i < contactsLength; i++) {
                contactArr[i] = regInfoChanged.contacts(i);
            }
            for (int i2 = 0; i2 < contactsLength; i2++) {
                Contact contact = contactArr[i2];
                NameAddr nameAddr = new NameAddr(contact.displayName(), ImsUri.parse(contact.uri()));
                Log.i(UserAgent.LOG_TAG, "onRegInfoNotify: " + nameAddr + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + contact.state());
                if (contact.state() == 1) {
                    UserAgent.this.addImpu(nameAddr);
                    UserAgent.this.addDevice(nameAddr);
                } else if (contact.state() == 2) {
                    UserAgent.this.removeImpu(nameAddr.getUri());
                    UserAgent.this.removeDevice(nameAddr.getUri());
                }
            }
            UserAgent userAgent = UserAgent.this;
            userAgent.mRegistration = userAgent.buildImsRegistration();
            if (UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onRegistered(UserAgent.this);
            }
        }

        private void sendSms(Bundle bundle) {
            String string = bundle.getString("sca");
            String string2 = bundle.getString("localuri");
            String bytesToHex = UserAgent.bytesToHex(bundle.getByteArray("pdu"));
            String string3 = bundle.getString("contentType");
            if (string3 == null) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "sendSms: null contentType. ");
                return;
            }
            String[] split = string3.split("/");
            if (split.length < 2) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "sendSms: invalid contentType. " + string3);
                return;
            }
            UserAgent.this.mStackIf.sendSms(UserAgent.this.mHandle, string, string2, bytesToHex, split[0], split[1], bundle.getString("callId"), bundle.getBoolean("isEmergency"), (Message) bundle.getParcelable("result"));
        }
    }

    private class ReRegisteringState extends State {
        private ReRegisteringState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 8) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_REGISTERD");
                UserAgent.this.setDestState(UserAgentState.REGISTERED);
                return true;
            }
            if (i == 10) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_REQUEST_DEREGISTER");
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " Defer EVENT_REQUEST_DEREGISTER");
                UserAgent.this.deferMessage(message);
                return true;
            }
            if (i == 13) {
                Log.i(UserAgent.LOG_TAG, getName() + " EVENT_DEREGISTERED_TIMEOUT");
                if (UserAgent.this.mListener != null) {
                    UserAgent.this.mListener.onDeregistered(UserAgent.this, SipErrorBase.OK, 0L, true, false);
                }
                UserAgent.this.setDestState(UserAgentState.DEREGISTERING);
                return true;
            }
            if (i != 31) {
                if (i == 2000) {
                    GeneralResponse generalResponse = (GeneralResponse) ((AsyncResult) message.obj).result;
                    if (!Mno.fromName(UserAgent.this.mImsProfile.getMnoName()).isKor() || generalResponse.result() != 1 || generalResponse.reason() != 4) {
                        return true;
                    }
                    IMSLog.c(LogClass.REGI_DO_RECOVERY_ACTION, "imsprofile is null. recover it", true);
                    UserAgent.this.mListener.onNotifyNullProfile(UserAgent.this);
                    return true;
                }
                if (i != 41 && i != 42) {
                    return false;
                }
            }
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " Defer event " + message.what);
            UserAgent.this.deferMessage(message);
            return true;
        }
    }

    private class DeregisteringState extends State {
        private DeregisteringState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 4) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_DELETE_UA");
                UserAgent.this.mStackIf.deleteUA(UserAgent.this.mHandle, UserAgent.this.obtainMessage(5));
                UserAgent.this.setDestState(UserAgentState.TERMINATING);
            } else if (i == 800) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_DELAYED_DEREGISTERED");
                if (UserAgent.this.mListener != null) {
                    UserAgent.this.mListener.onDeregistered(UserAgent.this, SipErrorBase.OK, 0L, true, false);
                }
                UserAgent.this.sendMessage(4);
            } else {
                switch (i) {
                    case 10:
                        IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_REQUEST_DEREGISTER");
                        Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " UA is already being deregisted.");
                        break;
                    case 11:
                        IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_DEREGISTER_COMPELETE");
                        break;
                    case 12:
                        IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_DEREGISTERED");
                        if (UserAgent.this.mUaProfile != null && (UserAgent.this.mUaProfile.getPdn().equals(DeviceConfigManager.IMS) || UserAgent.this.getImsProfile().getCmcType() != 0)) {
                            Mno mno = UserAgent.this.mUaProfile.getMno();
                            int i2 = (mno == Mno.MAGTICOM_GE || mno == Mno.MEGAFON_RUSSIA || mno == Mno.VODAFONE || mno == Mno.CTC || mno == Mno.CTCMO) ? 1000 : 600;
                            if (mno == Mno.KDDI) {
                                i2 = 200;
                            }
                            UserAgent userAgent = UserAgent.this;
                            userAgent.sendMessageDelayed(userAgent.obtainMessage(800), i2);
                            break;
                        } else {
                            if (UserAgent.this.mListener != null) {
                                UserAgent.this.mListener.onDeregistered(UserAgent.this, SipErrorBase.OK, 0L, true, false);
                            }
                            UserAgent.this.sendMessage(4);
                            break;
                        }
                        break;
                    case 13:
                        IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_DEREGISTERED_TIMEOUT");
                        if (UserAgent.this.mListener != null) {
                            UserAgent.this.mListener.onDeregistered(UserAgent.this, SipErrorBase.OK, 0L, true, false);
                            break;
                        }
                        break;
                    default:
                        return false;
                }
            }
            return true;
        }
    }

    private class TerminatingState extends State {
        private TerminatingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 4) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_DELETE_UA");
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " UA is already being deleted.");
            } else if (i == 5) {
                if (UserAgent.this.mHandle != -1) {
                    UserAgent.this.mStackIf.unRegisterUaListener(UserAgent.this.mHandle);
                }
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " EVENT_UA_DELETED");
                UserAgent.this.setDestState(UserAgentState.INITIAL);
            } else if (i == 10) {
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " EVENT_REQUEST_DEREGISTER");
                IMSLog.e(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " UA is already being deregisted.");
            } else {
                if (i != 11) {
                    return false;
                }
                Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", getName() + " EVENT_DEREGISTERED");
            }
            return true;
        }
    }

    private class EmergencyState extends State {
        private EmergencyState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            if (i == 6) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "register is not required for emergency call.");
            } else if (i == 10) {
                IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "deregister is not required for emergency call. delete UA.");
                UserAgent.this.sendMessage(4);
            } else if (i == 23) {
                Bundle bundle = (Bundle) message.obj;
                UserAgent.this.mStackIf.handleDtmf(UserAgent.this.mHandle, bundle.getInt("sessionId"), bundle.getInt("code"), bundle.getInt("mode"), bundle.getInt("operation"), (Message) bundle.getParcelable("result"));
            } else if (i == 37) {
                Bundle bundle2 = (Bundle) message.obj;
                UserAgent.this.mStackIf.updateCall(bundle2.getInt("sessionId"), bundle2.getInt("action"), bundle2.getInt("codecType"), bundle2.getInt("cause"), bundle2.getString("reasonText"));
            } else if (i == 51) {
                Bundle bundle3 = (Bundle) message.obj;
                UserAgent.this.mStackIf.sendText(UserAgent.this.mHandle, bundle3.getInt("sessionId"), bundle3.getString("text"), bundle3.getInt("len"));
            } else if (i == 102) {
                int i2 = message.arg1;
                if (i2 != -1) {
                    UserAgent.this.updateRouteTable(i2, (String) message.obj);
                }
            } else if (i == 1001) {
                Bundle bundle4 = (Bundle) message.obj;
                UserAgent.this.mStackIf.sendMediaEvent(UserAgent.this.mHandle, bundle4.getInt(SoftphoneNamespaces.SoftphoneCallHandling.TARGET), bundle4.getInt("event"), bundle4.getInt("eventType"));
            } else if (i == 14) {
                Bundle bundle5 = (Bundle) message.obj;
                UserAgent.this.mStackIf.makeCall(UserAgent.this.mHandle, bundle5.getString("destUri"), bundle5.getString("origUri"), bundle5.getInt("type"), bundle5.getString("dispName"), bundle5.getString("dialedNumber"), UserAgent.this.mUaProfile.getPcscfIp(), UserAgent.this.mUaProfile.getPcscfPort(), null, null, bundle5.getString("PEmergencyInfo"), null, bundle5.getString("alertInfo"), bundle5.getBoolean("isLteEpsOnlyAttached"), bundle5.getStringArrayList("p2p"), bundle5.getInt("cmcBoundSessionId"), bundle5.getBundle(CallConstants.ComposerData.TAG), bundle5.getString("replaceCallId"), bundle5.getInt("cmcEdCallSlot"), bundle5.getString("idcExtra"), (Message) bundle5.getParcelable("result"));
            } else if (i == 15) {
                UserAgent.this.mStackIf.endCall(UserAgent.this.mHandle, message.arg1, (SipReason) message.obj, null);
            } else if (i == 109) {
                Bundle bundle6 = (Bundle) message.obj;
                UserAgent.this.mStackIf.startLocalRingBackTone(UserAgent.this.mHandle, bundle6.getInt("streamType"), bundle6.getInt("volume"), bundle6.getInt("toneType"), (Message) bundle6.getParcelable("result"));
            } else if (i == 110) {
                UserAgent.this.mStackIf.stopLocalRingBackTone(UserAgent.this.mHandle);
            } else {
                switch (i) {
                    case 62:
                        Bundle bundle7 = (Bundle) message.obj;
                        UserAgent.this.mStackIf.replyWithIdc(bundle7.getInt("sessionId"), bundle7.getInt("reqType"), bundle7.getInt("curType"), bundle7.getInt("repType"), bundle7.getString("idcExtra"));
                        break;
                    case 63:
                        Bundle bundle8 = (Bundle) message.obj;
                        UserAgent.this.mStackIf.updateWithIdc(bundle8.getInt("sessionId"), bundle8.getInt("action"), bundle8.getString("idcExtra"));
                        break;
                    case 64:
                        Bundle bundle9 = (Bundle) message.obj;
                        UserAgent.this.mStackIf.sendNegotiatedLocalSdp(bundle9.getInt("sessionId"), bundle9.getString(IdcExtra.Key.SDP));
                        break;
                    default:
                        switch (i) {
                            case 104:
                                Bundle bundle10 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.modifyCallType(bundle10.getInt("sessionId"), bundle10.getInt("oldType"), bundle10.getInt("newType"));
                                break;
                            case 105:
                                Bundle bundle11 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.replyModifyCallType(bundle11.getInt("sessionId"), bundle11.getInt("reqType"), bundle11.getInt("curType"), bundle11.getInt("repType"), bundle11.getString("cmcCallTime"));
                                break;
                            case 106:
                                Bundle bundle12 = (Bundle) message.obj;
                                UserAgent.this.mStackIf.rejectModifyCallType(bundle12.getInt("sessionId"), bundle12.getInt("reason"));
                                break;
                            default:
                                return false;
                        }
                }
            }
            return true;
        }
    }

    private class ProhibitedState extends State {
        private ProhibitedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            IMSLog.e(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "Unexpected event " + message.what + ". current state is " + UserAgent.this.getCurrentState().getName());
            return false;
        }
    }

    public class EventListener extends StackEventListener {
        public EventListener() {
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onISIMAuthRequested(int i, String str, int i2) {
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "onISIMAuthRequested: handle " + i + " nonce " + str + " tid " + i2);
            if (i != UserAgent.this.mHandle) {
                IMSLog.e(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "onISIMAuthRequested: handle mismatch. mHandle " + UserAgent.this.mHandle + " handle " + i + " tid " + i2);
                return;
            }
            Message obtainMessage = UserAgent.this.obtainMessage(9, i2);
            if (UserAgent.this.mSimManager.hasVsim()) {
                UserAgent.this.mSimManager.requestSoftphoneAuthentication(str, UserAgent.this.mImsProfile.getImpi(), obtainMessage, UserAgent.this.mImsProfile.getId());
            } else {
                UserAgent.this.mSimManager.requestIsimAuthentication(str, obtainMessage);
            }
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onRegistered(int i, List<String> list, List<String> list2, SipError sipError, long j, int i2, String str) {
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "onRegistered: handle=" + i + " error=" + sipError + " ecmpMode=" + i2 + " serviceList=" + list);
            if (UserAgent.this.hasMessages(UserAgent.EVENT_RECOVER_REGISESSION)) {
                UserAgent.this.removeMessages(UserAgent.EVENT_RECOVER_REGISESSION);
            }
            if (i != UserAgent.this.mHandle) {
                return;
            }
            int i3 = 0;
            if (Mno.fromName(UserAgent.this.mImsProfile.getMnoName()) == Mno.TMOUS && SipErrorBase.OK.equals(sipError) && list2.isEmpty()) {
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "onRegistered: Empty IRS. deregister.");
                UserAgent.this.deregisterInternal(false);
                if (UserAgent.this.mListener != null) {
                    UserAgent.this.mListener.onRegistrationError(UserAgent.this, SipErrorBase.MISSING_P_ASSOCIATED_URI, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                    return;
                }
                return;
            }
            UserAgent.this.mRegisterSipResponse = str;
            synchronized (UserAgent.this.mImpuList) {
                UserAgent.this.mImpuList.clear();
                Iterator<String> it = list2.iterator();
                while (it.hasNext()) {
                    ImsUri parse = ImsUri.parse(it.next());
                    if (parse != null) {
                        UserAgent.this.mImpuList.add(new NameAddr(parse));
                    }
                }
            }
            UserAgent.this.mEcmpMode = i2;
            UserAgent.this.mError = sipError;
            try {
                i3 = Integer.parseInt(ImsSharedPrefHelper.getString(UserAgent.this.mPhoneId, UserAgent.this.mContext, ImsSharedPrefHelper.DEBUG_CONFIG, "fake_reg_response", ""));
            } catch (NumberFormatException unused) {
            }
            if (i3 != 0) {
                if (Mno.fromName(UserAgent.this.mImsProfile.getMnoName()).isKor()) {
                    Log.i(UserAgent.LOG_TAG, "!!!sip response is replaced to fake : " + i3);
                    if (i3 == 403) {
                        UserAgent.this.mError = SipErrorBase.FORBIDDEN;
                    } else {
                        UserAgent.this.mError = new SipError(i3, "");
                    }
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("fake_reg_response", "");
                    ImsSharedPrefHelper.put(UserAgent.this.mPhoneId, UserAgent.this.mContext, ImsSharedPrefHelper.DEBUG_CONFIG, contentValues);
                }
            }
            if (SipErrorBase.OK.equals(UserAgent.this.mError) || SipErrorBase.OK_SMC.equals(UserAgent.this.mError)) {
                UserAgent.this.mNotifyServiceList.addAll(list);
                if (Mno.fromName(UserAgent.this.mImsProfile.getMnoName()).isKor() && j > 0) {
                    UserAgent.this.sendMessageDelayed(UserAgent.EVENT_RECOVER_REGISESSION, j + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
                }
                UserAgent.this.sendMessage(8);
                return;
            }
            if (UserAgent.this.mListener != null) {
                UaEventListener uaEventListener = UserAgent.this.mListener;
                UserAgent userAgent = UserAgent.this;
                uaEventListener.onRegistrationError(userAgent, userAgent.mError, j);
            }
            if (UserAgent.this.mImsProfile.hasEmergencySupport()) {
                UserAgent.this.sendMessage(900);
            }
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onDeregistered(int i, SipError sipError, long j, boolean z) {
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "onDeregistered: handle " + i + " error " + sipError + " retryAfter " + j + " pcscfGoneDeregi" + z);
            if (UserAgent.this.hasMessages(UserAgent.EVENT_RECOVER_REGISESSION)) {
                UserAgent.this.removeMessages(UserAgent.EVENT_RECOVER_REGISESSION);
            }
            if (i != UserAgent.this.mHandle) {
                return;
            }
            UserAgent.this.mError = sipError;
            UserAgent.this.mRetryAfterMs = j;
            UserAgent.this.mPcscfGoneDeregi = z;
            UserAgent.this.sendMessage(12);
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onSubscribed(int i, SipError sipError) {
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "onSubscribed: handle " + i + " error " + sipError);
            if (i == UserAgent.this.mHandle && UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onSubscribeError(UserAgent.this, sipError);
            }
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onRegInfoNotification(int i, RegInfoChanged regInfoChanged) {
            if (i != UserAgent.this.mHandle) {
                return;
            }
            UserAgent.this.sendMessage(101, regInfoChanged);
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onUpdateRouteTableRequested(int i, int i2, String str) {
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "onUpdateRouteTableRequested:");
            if (i != UserAgent.this.mHandle) {
                Log.e("UserAgent[" + UserAgent.this.mPhoneId + "]", "onUpdateRouteTableRequested: handle mismatch. mHandle " + UserAgent.this.mHandle + " handle " + i);
                return;
            }
            UserAgent userAgent = UserAgent.this;
            userAgent.sendMessage(userAgent.obtainMessage(102, i2, 0, str));
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onRegImpuNotification(int i, String str) {
            Log.i("UserAgent[" + UserAgent.this.mPhoneId + "]", "onRegImpuNotification: handle(" + i + ")");
            if (i != UserAgent.this.mHandle) {
                return;
            }
            int simSlotIndex = UserAgent.this.mSimManager.getSimSlotIndex();
            Intent intent = new Intent("com.sec.imsservice.REGISTERED_IMPU");
            intent.putExtra("phoneid", simSlotIndex);
            intent.putExtra("impu", str);
            UserAgent.this.mContext.sendBroadcast(intent, UserAgent.PERMISSION);
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onUpdatePani() {
            if (UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onUpdatePani(UserAgent.this);
            }
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onRefreshRegNotification(int i) {
            if (UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onRefreshRegNotification(i);
            }
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onContactActivated(int i) {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "onContactActivated: handle(" + i + ")");
            if (UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onContactActivated(UserAgent.this, i);
            }
        }

        @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
        public void onRegEventContactUriNotification(int i, List<String> list, int i2, String str, String str2) {
            IMSLog.i(UserAgent.LOG_TAG, UserAgent.this.mPhoneId, "onRegEventContactUri: handle(" + i + ")");
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ImsUri.parse(it.next()));
            }
            if (UserAgent.this.mListener != null) {
                UserAgent.this.mListener.onRegEventContactUriNotification(i, arrayList, i2, str, str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRouteTable(int i, String str) {
        Log.i("UserAgent[" + this.mPhoneId + "]", "UpdateRouteTable: op " + i + " address " + str);
        if (i == 0) {
            this.mPdnController.requestRouteToHostAddress(this.mPdn, str);
        } else {
            if (i != 1) {
                return;
            }
            this.mPdnController.removeRouteToHostAddress(this.mPdn, str);
        }
    }

    public static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = hexArray;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    private String extractDomain(UaProfile uaProfile, String str) {
        String domain = uaProfile.getDomain();
        if (uaProfile.getMno() == Mno.CMCC || uaProfile.getMno() == Mno.CU) {
            Log.i("UserAgent[" + this.mPhoneId + "]", "extractDomain:  don't use phone-context as domain.");
            return domain;
        }
        if (TextUtils.isEmpty(str) || !uaProfile.getImpu().contains(str)) {
            return domain;
        }
        for (NameAddr nameAddr : this.mImpuList) {
            if (!TextUtils.isEmpty(nameAddr.getUri().getPhoneContext())) {
                Log.i("UserAgent[" + this.mPhoneId + "]", "extractDomain: For IMSI-based registration, use phone-context as domain.");
                return nameAddr.getUri().getPhoneContext();
            }
        }
        return domain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addImpu(NameAddr nameAddr) {
        synchronized (this.mImpuList) {
            boolean z = true;
            for (NameAddr nameAddr2 : this.mImpuList) {
                if (nameAddr.getUri().equals(nameAddr2.getUri()) && TextUtils.equals(nameAddr.getUri().getParam("gr"), nameAddr2.getUri().getParam("gr"))) {
                    nameAddr2.setDisplayName(nameAddr.getDisplayName());
                    z = false;
                }
            }
            if (z) {
                this.mImpuList.add(nameAddr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeImpu(ImsUri imsUri) {
        Iterator<NameAddr> it = this.mImpuList.iterator();
        while (it.hasNext()) {
            NameAddr next = it.next();
            if (next.getUri().equals(imsUri) && TextUtils.equals(next.getUri().getParam("gr"), imsUri.getParam("gr"))) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDevice(NameAddr nameAddr) {
        boolean z = true;
        for (NameAddr nameAddr2 : this.mDeviceList) {
            if (nameAddr.getUri().equals(nameAddr2.getUri()) && TextUtils.equals(nameAddr.getUri().getParam("gr"), nameAddr2.getUri().getParam("gr"))) {
                nameAddr2.setDisplayName(nameAddr.getDisplayName());
                z = false;
            }
        }
        if (z) {
            this.mDeviceList.add(nameAddr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeDevice(ImsUri imsUri) {
        Iterator<NameAddr> it = this.mDeviceList.iterator();
        while (it.hasNext()) {
            NameAddr next = it.next();
            if (next.getUri().equals(imsUri) && TextUtils.equals(next.getUri().getParam("gr"), imsUri.getParam("gr"))) {
                it.remove();
            }
        }
    }

    private NameAddr getFirstImpuByUriType(final ImsUri.UriType uriType) {
        return this.mImpuList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.handler.secims.UserAgent$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getFirstImpuByUriType$0;
                lambda$getFirstImpuByUriType$0 = UserAgent.lambda$getFirstImpuByUriType$0(uriType, (NameAddr) obj);
                return lambda$getFirstImpuByUriType$0;
            }
        }).findFirst().orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getFirstImpuByUriType$0(ImsUri.UriType uriType, NameAddr nameAddr) {
        return nameAddr.getUri().getUriType() == uriType;
    }

    private NameAddr getPreferredImpu(Set<String> set) {
        Mno mno = this.mUaProfile.getMno();
        NameAddr nameAddr = null;
        if (mno == Mno.VZW) {
            String impi = this.mUaProfile.getImpi();
            ImsUri parse = ImsUri.parse(this.mUaProfile.getImpu());
            int indexOf = impi.indexOf(64);
            if (indexOf > 0 && parse != null) {
                String substring = impi.substring(0, indexOf);
                String user = parse.getUser();
                if (!TextUtils.isEmpty(user) && !user.contains(substring)) {
                    nameAddr = new NameAddr("", parse);
                }
            }
        } else if (mno == Mno.ATT || this.mImsProfile.isSipUriOnly()) {
            nameAddr = getFirstImpuByUriType(ImsUri.UriType.SIP_URI);
        } else if (mno.isKor() || mno == Mno.RJIL) {
            nameAddr = getFirstImpuByUriType(ImsUri.UriType.TEL_URI);
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getPreferredImpu: " + IMSLog.checker(nameAddr));
        if (nameAddr != null) {
            return nameAddr;
        }
        if (this.mImpuList.isEmpty()) {
            return new NameAddr("", this.mUaProfile.getImpu());
        }
        if (Arrays.asList(ImsProfile.getRcsServiceList()).containsAll(set)) {
            nameAddr = getFirstImpuByUriType(ImsUri.UriType.TEL_URI);
        }
        return (nameAddr != null || this.mImpuList.isEmpty()) ? nameAddr : this.mImpuList.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsRegistration buildImsRegistration() {
        int subscriptionId = this.mSimManager.getSubscriptionId();
        String extractDomain = extractDomain(this.mUaProfile, this.mTelephonyManager.getSubscriberId(subscriptionId));
        Set<String> registeredServicesFromNotifyServiceList = getRegisteredServicesFromNotifyServiceList();
        this.mNotifyServiceList.clear();
        return ImsRegistration.getBuilder().setHandle(this.mHandle).setImsProfile(new ImsProfile(this.mImsProfile)).setServices(registeredServicesFromNotifyServiceList).setPrivateUserId(this.mUaProfile.getImpi()).setPublicUserId(this.mImpuList).setRegisteredPublicUserId(ImsUri.parse(this.mUaProfile.getImpu())).setPreferredPublicUserId(getPreferredImpu(registeredServicesFromNotifyServiceList)).setDomain(extractDomain).setPcscf(this.mUaProfile.getPcscfIp()).setEpdgStatus(this.mEpdgStatus).setEpdgOverCellularData(this.mEpdgOverCellularData).setPdnType(this.mPdn).setUuid(this.mUaProfile.getUuid()).setInstanceId(this.mUaProfile.getInstanceId()).setEcmpStatus(this.mEcmpMode).setDeviceList(this.mDeviceList).setRegisterSipResponse(this.mRegisterSipResponse).setNetwork(this.mNetwork).setPAssociatedUri2nd((OmcCode.isKOROmcCode() && this.mSimManager.getSimMno() == Mno.LGU && registeredServicesFromNotifyServiceList.contains("mmtel") && getImsProfile().getCmcType() == 0) ? getPAssociatedUri2nd(registeredServicesFromNotifyServiceList, this.mImpuList) : "").setSubscriptionId(subscriptionId).setPhoneId(this.mSimManager.getSimSlotIndex()).build();
    }

    private Set<String> getRegisteredServicesFromNotifyServiceList() {
        HashSet hashSet = new HashSet();
        if (hasOnlyDataChannelInNotifyService()) {
            hashSet.addAll(this.mUaProfile.getServiceList());
        } else if (this.mNotifyServiceList.size() == 0) {
            hashSet.addAll(this.mUaProfile.getServiceList());
            hashSet.remove("datachannel");
        } else {
            hashSet.addAll(this.mNotifyServiceList);
        }
        return hashSet;
    }

    private boolean hasOnlyDataChannelInNotifyService() {
        return this.mNotifyServiceList.size() == 1 && this.mNotifyServiceList.contains("datachannel");
    }

    private String getPAssociatedUri2nd(Set<String> set, List<NameAddr> list) {
        String extractPAssociatedUri2nd = extractPAssociatedUri2nd(list);
        Log.i("UserAgent[" + this.mPhoneId + "]", "getPAssociatedUri2nd() : " + IMSLog.checker(extractPAssociatedUri2nd));
        return extractPAssociatedUri2nd;
    }

    private String extractPAssociatedUri2nd(List<NameAddr> list) {
        String line1Number = this.mSimManager.getLine1Number();
        if (line1Number != null) {
            line1Number = line1Number.replace("+82", "0");
        }
        Log.i("UserAgent[" + this.mPhoneId + "]", "extractPAssociatedUri2nd");
        Iterator<NameAddr> it = list.iterator();
        String str = null;
        while (it.hasNext()) {
            ImsUri uri = it.next().getUri();
            if (uri != null) {
                Log.i("UserAgent[" + this.mPhoneId + "]", "extractPAssociatedUri2nd  uri");
                if (uri.getUriType() == ImsUri.UriType.SIP_URI && uri.toString() != null) {
                    Log.i("UserAgent[" + this.mPhoneId + "]", "extractPAssociatedUri2nd: uri=" + IMSLog.checker(uri.toString()));
                    String onlyNumberFromURI = getOnlyNumberFromURI(uri.toString());
                    if (line1Number != null && onlyNumberFromURI != null && !onlyNumberFromURI.equals(line1Number)) {
                        str = onlyNumberFromURI;
                    }
                }
            }
        }
        return str;
    }

    private String getOnlyNumberFromURI(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("tel:", "tel:");
        linkedHashMap.put("sip:", "sip:");
        linkedHashMap.put("*31#", "[*]31#");
        linkedHashMap.put("#31#", "#31#");
        Log.i("UserAgent[" + this.mPhoneId + "]", "getOnlyNumberFromURI");
        String str2 = str;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (str.contains((CharSequence) entry.getKey())) {
                str2 = str.split((String) entry.getValue())[1];
            }
        }
        String[] strArr = {"@", ";"};
        for (int i = 0; i < 2; i++) {
            String str3 = strArr[i];
            if (str2.contains(str3)) {
                str2 = str2.split(str3)[0];
            }
        }
        return str2;
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public SipError getErrorCode() {
        return this.mError;
    }

    public UaProfile getUaProfile() {
        return this.mUaProfile;
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public boolean isRegistering() {
        return getCurrentState().equals(this.mRegisteringState) || getCurrentState().equals(this.mReRegisteringState);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void updateVceConfig(boolean z) {
        sendMessage(40, Boolean.valueOf(z));
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void updateGeolocation(LocationInfo locationInfo) {
        sendMessage(44, locationInfo);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public ImsProfile getImsProfile() {
        return this.mImsProfile;
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public int getPhoneId() {
        return this.mPhoneId;
    }

    public void updateTimeInPlani(long j) {
        sendMessage(52, Long.valueOf(j));
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void updateRat(int i) {
        sendMessage(50, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void setVowifi5gsaMode(int i) {
        sendMessage(60, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void updateCmcHotspotState(List<String> list) {
        Bundle bundle = new Bundle();
        bundle.putStringArray("hotspotAddresses", (String[]) list.toArray(new String[0]));
        sendMessage(66, bundle);
    }

    public void deregister(boolean z, boolean z2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "deregister: local=" + z + ", needDelay=" + z2);
        if (z2) {
            sendMessageDelayed(10, z ? 1 : 0, -1, 500L);
        } else {
            sendMessage(10, z ? 1 : 0);
        }
    }

    public int getHandle() {
        return this.mHandle;
    }

    public void updatePani(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        IMSLog.i(LOG_TAG, this.mPhoneId, "updatePani");
        IMSLog.s(LOG_TAG, this.mPhoneId, "updatePani: pani=" + str + ", updatePani: lastPani=" + str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        arrayList.add(str);
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
        }
        sendMessage(34, arrayList);
    }

    public void terminate() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "terminate:");
        sendMessage(4);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public void notifyE911RegistrationFailed() {
        sendMessage(900);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public ImsRegistration getImsRegistration() {
        return this.mRegistration;
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public boolean isDeregistring() {
        return getCurrentState().equals(this.mDeregisteringState);
    }

    @Override // com.sec.internal.interfaces.ims.core.IUserAgent
    public Network getNetwork() {
        return this.mNetwork;
    }
}
