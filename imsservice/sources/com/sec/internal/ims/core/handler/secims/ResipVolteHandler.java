package com.sec.internal.ims.core.handler.secims;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.widget.Toast;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.Dialog;
import com.sec.ims.DialogEvent;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.data.MessageContextValues;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallParams;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.CmcInfoEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.QuantumSecurityStatusEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.RrcConnectionEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.UssdEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.handler.VolteHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ComposerData;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.CallSendCmcInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.CallStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ConfCallChanged;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ConfCallChanged_.Participant;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.DTMFDataEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.DedicatedBearerEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.IncomingCall;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ModifyCallData;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.QuantumSecurityStatusEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ReferReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ReferStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RrcConnectionEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RtpLossRateNoti;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.SipMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.TextDataEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.CallResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.GeneralResponse;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.servicemodules.volte2.data.CallSetupData;
import com.sec.internal.ims.servicemodules.volte2.data.ConfCallSetupData;
import com.sec.internal.ims.servicemodules.volte2.data.DtmfInfo;
import com.sec.internal.ims.servicemodules.volte2.data.IncomingCallEvent;
import com.sec.internal.ims.servicemodules.volte2.data.SIPDataEvent;
import com.sec.internal.ims.servicemodules.volte2.data.TextInfo;
import com.sec.internal.ims.servicemodules.volte2.util.DialogXmlParser;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.log.CmcPingTestLogger;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes.dex */
public class ResipVolteHandler extends VolteHandler {
    private static final int ADD_CONF_PARTICIPANT = 0;
    private static final String ALTERNATIVE_SERVICE = "application/3gpp-ims+xml";
    private static final String CMC_INFO_MIME_TYPE = "application/cmc-info+xml";
    private static final String DIALOG_EVENT_MIME_TYPE = "application/dialog-info+xml";
    private static final int EVENT_CALL_STATE_CHANGE = 100;
    private static final int EVENT_CDPN_INFO = 107;
    private static final int EVENT_CMC_INFO = 115;
    private static final int EVENT_CONFERENCE_UPDATE = 102;
    private static final int EVENT_CURRENT_LOCATION_DISCOVERY_DURING_EMERGENCY_CALL = 117;
    private static final int EVENT_DEDICATED_BEARER_EVENT = 110;
    private static final int EVENT_DELAYED_CALL_STATE_CHANGE = 200;
    private static final int EVENT_DIALOG_EVENT_RECEIVED = 105;
    private static final int EVENT_DTMF_INFO = 112;
    private static final int EVENT_END_CALL_RESPONSE = 2;
    private static final int EVENT_HOLD_CALL_RESPONSE = 4;
    private static final int EVENT_INFO_CALL_RESPONSE = 7;
    private static final int EVENT_MAKE_CALL_RESPONSE = 1;
    private static final int EVENT_MERGE_CALL_RESPONSE = 3;
    private static final int EVENT_MODIFY_CALL = 106;
    private static final int EVENT_NEW_INCOMING_CALL = 101;
    private static final int EVENT_PULLING_CALL_RESPONSE = 6;
    private static final int EVENT_QUANTUM_SECURITY_STATUS = 116;
    private static final int EVENT_REFER_RECEIVED = 103;
    private static final int EVENT_REFER_STATUS = 104;
    private static final int EVENT_RESUME_CALL_RESPONSE = 5;
    private static final int EVENT_RRC_CONNECTION = 111;
    private static final int EVENT_RTP_LOSS_RATE_NOTI = 108;
    private static final int EVENT_SIPMSG_INFO = 114;
    private static final int EVENT_TEXT_INFO = 113;
    private static final int EVENT_UPDATE_AUDIO_INTEFACE_RESPONSE = 8;
    private static final String LOCATION_DISCOVERY = "application/vnd.3gpp.current-location-discovery+xml";
    private static final String LOG_IDC_FW_TAG = "[IDC][FW]ResipVolteHandler";
    private static final String LOG_TAG = "ResipVolteHandler";
    private static final int MO_TIMEOUT_MILLIS = 30000;
    private static final int MT_WAKELOCK_TIME = 1000;
    private static final int REMOVE_CONF_PARTICIPANT = 1;
    private static final String URN_SOS = "urn:service:sos";
    private static final String USSD_INDI_BY_MESSAGE_MIME_TYPE = "application/ussd";
    private static final String USSD_MIME_TYPE = "application/vnd.3gpp.ussd+xml";
    private static final String VCS_INFO_MIME_TYPE = "application/text";
    private static final int VCS_SLIDING_END = -3;
    private static final int VCS_SLIDING_INVALID = 0;
    private static final int VCS_SLIDING_PRE = -2;
    private static final int VCS_SLIDING_START = -1;
    private AudioInterfaceHandler mAudioInterfaceHandler;
    private HandlerThread mAudioInterfaceThread;
    private final RegistrantList mAudioPathUpdatedRegistrants;
    protected boolean[] mAutomaticMode;
    private final SparseArray<Call> mCallList;
    private final RegistrantList mCallStateEventRegistrants;
    private final RegistrantList mCdpnInfoRegistrants;
    private final RegistrantList mCmcInfoEventRegistrants;
    private final Context mContext;
    private final RegistrantList mCurrentLocationDiscoveryDuringEmergencyCallRegistrants;
    private final RegistrantList mDedicatedBearerEventRegistrants;
    private final RegistrantList mDialogEventRegistrants;
    private final RegistrantList mDtmfEventRegistrants;
    private final IImsFramework mImsFramework;
    private final RegistrantList mIncomingCallEventRegistrants;
    private boolean[] mOutOfService;
    private final RegistrantList mQuantumSecurityStatusEventRegistrants;
    private final RegistrantList mReferStatusRegistrants;
    private final RegistrantList mRrcConnectionEventRegistrants;
    private final RegistrantList mRtpLossRateNotiRegistrants;
    protected int[] mRttMode;
    private final RegistrantList mSIPMSGNotiRegistrants;
    private StackIF mStackIf;
    private final RegistrantList mTextEventRegistrants;
    protected int[] mTtyMode;
    private final RegistrantList mUssdEventRegistrants;
    private static final String URN_SOS_AMBULANCE = "urn:service:sos.ambulance";
    private static final String URN_SOS_FIRE = "urn:service:sos.fire";
    private static final String URN_SOS_MARINE = "urn:service:sos.marine";
    private static final String URN_SOS_MOUNTAIN = "urn:service:sos.mountain";
    private static final String URN_SOS_POLICE = "urn:service:sos.police";
    private static final Set<String> mMainSosSubserviceSet = new HashSet(Arrays.asList("urn:service:sos", URN_SOS_AMBULANCE, URN_SOS_FIRE, URN_SOS_MARINE, URN_SOS_MOUNTAIN, URN_SOS_POLICE));

    private static class AlternativeService {
        CallStateEvent.ALTERNATIVE_SERVICE mAction = CallStateEvent.ALTERNATIVE_SERVICE.NONE;
        String mReason;
        String mType;
    }

    private int convertDedicatedBearerState(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 2) {
            return i != 3 ? 0 : 3;
        }
        return 2;
    }

    private int getParticipantStatus(int i) {
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 3) {
            return 3;
        }
        if (i == 4) {
            return 4;
        }
        if (i == 5) {
            return 5;
        }
        return i == 6 ? 6 : 0;
    }

    static class Call {
        boolean isConference;
        int mCallType;
        CountDownLatch mLock;
        CallParams mParam;
        NameAddr mPeer;
        CallResponse mResponse;
        int mSessionId;
        UserAgent mUa;

        public Call(UserAgent userAgent, ImsUri imsUri, String str) {
            this.mLock = null;
            this.mSessionId = -1;
            this.mResponse = null;
            this.isConference = false;
            this.mUa = userAgent;
            this.mPeer = new NameAddr(str, imsUri);
            this.mSessionId = -1;
        }

        public Call(UserAgent userAgent, NameAddr nameAddr) {
            this.mLock = null;
            this.mResponse = null;
            this.isConference = false;
            this.mUa = userAgent;
            this.mPeer = nameAddr;
            this.mSessionId = -1;
        }
    }

    private static class UssdReceived {
        boolean hasErrorCode;
        String mString;
        Type mType;

        enum Type {
            RESPONSE_TO_USER_INIT,
            NET_INIT_REQUEST,
            NET_INIT_NOTIFY
        }

        private UssdReceived() {
            this.hasErrorCode = false;
        }

        int getVolteConstantsUssdStatus() {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type[this.mType.ordinal()];
            int i2 = 1;
            if (i != 1) {
                i2 = 2;
                if (i != 2 && i != 3) {
                    Log.e(ResipVolteHandler.LOG_TAG, "Invalid USSD type! - " + this.mType);
                    return -1;
                }
            }
            return i2;
        }
    }

    /* renamed from: com.sec.internal.ims.core.handler.secims.ResipVolteHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type;

        static {
            int[] iArr = new int[UssdReceived.Type.values().length];
            $SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type = iArr;
            try {
                iArr[UssdReceived.Type.NET_INIT_NOTIFY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type[UssdReceived.Type.NET_INIT_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$handler$secims$ResipVolteHandler$UssdReceived$Type[UssdReceived.Type.RESPONSE_TO_USER_INIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class UssdXmlParser {
        private static UssdXmlParser sInstance;
        XPath mXPath;
        XPathExpression mXPathErrorCode;
        XPathExpression mXPathNiNotify;
        XPathExpression mXPathNiRequest;
        XPathExpression mXPathUssdData;
        XPathExpression mXPathUssdString;

        public static UssdXmlParser getInstance() {
            if (sInstance == null) {
                sInstance = new UssdXmlParser();
            }
            return sInstance;
        }

        private UssdXmlParser() {
            init();
        }

        private void init() {
            XPath newXPath = XPathFactory.newInstance().newXPath();
            this.mXPath = newXPath;
            try {
                this.mXPathUssdData = newXPath.compile("/ussd-data");
                this.mXPathUssdString = this.mXPath.compile("ussd-string");
                this.mXPathErrorCode = this.mXPath.compile("error-code");
                this.mXPathNiRequest = this.mXPath.compile("boolean(anyExt/UnstructuredSS-Request)");
                this.mXPathNiNotify = this.mXPath.compile("boolean(anyExt/UnstructuredSS-Notify)");
            } catch (XPathExpressionException e) {
                Log.e(ResipVolteHandler.LOG_TAG, "XPath compile failed!", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public UssdReceived parseUssdXml(String str) throws XPathExpressionException {
            UssdReceived ussdReceived = new UssdReceived();
            if (str.contains("&")) {
                str = str.replaceAll("(?i)&(?!(#x?[\\d\\w]+;)|(quot;)|(lt;)|(gt;)|(apos;)|(amp;))", "&amp;");
            }
            Node node = (Node) this.mXPathUssdData.evaluate(new InputSource(new StringReader(str)), XPathConstants.NODE);
            String evaluate = this.mXPathErrorCode.evaluate(node);
            String evaluate2 = this.mXPathUssdString.evaluate(node);
            if (!TextUtils.isEmpty(evaluate) && TextUtils.isEmpty(evaluate2)) {
                ussdReceived.mString = "error-code" + evaluate;
                ussdReceived.hasErrorCode = true;
            } else {
                ussdReceived.mString = evaluate2;
            }
            Boolean bool = (Boolean) this.mXPathNiRequest.evaluate(node, XPathConstants.BOOLEAN);
            Boolean bool2 = (Boolean) this.mXPathNiNotify.evaluate(node, XPathConstants.BOOLEAN);
            if (bool.booleanValue()) {
                ussdReceived.mType = UssdReceived.Type.NET_INIT_REQUEST;
            } else if (bool2.booleanValue()) {
                ussdReceived.mType = UssdReceived.Type.NET_INIT_NOTIFY;
            } else {
                ussdReceived.mType = UssdReceived.Type.RESPONSE_TO_USER_INIT;
            }
            return ussdReceived;
        }
    }

    public static class InfoXmlParser {
        private static InfoXmlParser sInstance;
        XPath mXPath;

        public static InfoXmlParser getInstance() {
            if (sInstance == null) {
                sInstance = new InfoXmlParser();
            }
            return sInstance;
        }

        private InfoXmlParser() {
            init();
        }

        private void init() {
            this.mXPath = XPathFactory.newInstance().newXPath();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String parseInfoXml(String str) throws Exception {
            String str2 = "oneShot";
            try {
                NodeList nodeList = (NodeList) this.mXPath.evaluate("//requestForLocationInformation/*", DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(str.replaceAll("(\r\n|\r|\n|\n\r)", "")))), XPathConstants.NODESET);
                int i = 0;
                while (true) {
                    if (i >= nodeList.getLength()) {
                        str2 = MessageContextValues.none;
                        break;
                    }
                    if ("oneShot".equals(nodeList.item(i).getNodeName())) {
                        break;
                    }
                    i++;
                }
                return str2;
            } catch (Exception e) {
                Log.e(ResipVolteHandler.LOG_TAG, "exception" + e);
                return MessageContextValues.none;
            }
        }
    }

    public ResipVolteHandler(Looper looper, Context context, IImsFramework iImsFramework) {
        super(looper);
        this.mCallStateEventRegistrants = new RegistrantList();
        this.mIncomingCallEventRegistrants = new RegistrantList();
        this.mUssdEventRegistrants = new RegistrantList();
        this.mReferStatusRegistrants = new RegistrantList();
        this.mDialogEventRegistrants = new RegistrantList();
        this.mDedicatedBearerEventRegistrants = new RegistrantList();
        this.mRrcConnectionEventRegistrants = new RegistrantList();
        this.mDtmfEventRegistrants = new RegistrantList();
        this.mTextEventRegistrants = new RegistrantList();
        this.mCdpnInfoRegistrants = new RegistrantList();
        this.mRtpLossRateNotiRegistrants = new RegistrantList();
        this.mAudioPathUpdatedRegistrants = new RegistrantList();
        this.mSIPMSGNotiRegistrants = new RegistrantList();
        this.mCmcInfoEventRegistrants = new RegistrantList();
        this.mCurrentLocationDiscoveryDuringEmergencyCallRegistrants = new RegistrantList();
        this.mQuantumSecurityStatusEventRegistrants = new RegistrantList();
        this.mCallList = new SparseArray<>();
        this.mAudioInterfaceThread = null;
        this.mAudioInterfaceHandler = null;
        this.mContext = context;
        this.mImsFramework = iImsFramework;
    }

    @Override // com.sec.internal.ims.core.handler.BaseHandler
    public void init() {
        super.init();
        StackIF stackIF = StackIF.getInstance();
        this.mStackIf = stackIF;
        stackIF.registerNewIncomingCallEvent(this, 101, null);
        this.mStackIf.registerCallStatusEvent(this, 100, null);
        this.mStackIf.registerModifyCallEvent(this, 106, null);
        this.mStackIf.registerConferenceUpdateEvent(this, 102, null);
        this.mStackIf.registerReferReceivedEvent(this, 103, null);
        this.mStackIf.registerReferStatusEvent(this, 104, null);
        this.mStackIf.registerDialogEvent(this, 105, null);
        this.mStackIf.registerCdpnInfoEvent(this, 107, null);
        this.mStackIf.registerDedicatedBearerEvent(this, 110, null);
        this.mStackIf.registerForRrcConnectionEvent(this, 111, null);
        this.mStackIf.registerQuantumSecurityStatusEvent(this, 116, null);
        this.mStackIf.registerRtpLossRateNoti(this, 108, null);
        this.mStackIf.registerDtmfEvent(this, 112, null);
        this.mStackIf.registerTextEvent(this, 113, null);
        this.mStackIf.registerSIPMSGEvent(this, 114, null);
        this.mStackIf.registerCmcInfo(this, 115, null);
        this.mStackIf.registerCurrentLocationDiscoveryDuringEmergencyCallEvent(this, 117, null);
        int size = SimManagerFactory.getAllSimManagers().size();
        int[] iArr = new int[size];
        this.mTtyMode = iArr;
        this.mRttMode = new int[size];
        this.mAutomaticMode = new boolean[size];
        this.mOutOfService = new boolean[size];
        Arrays.fill(iArr, Extensions.TelecomManager.TTY_MODE_OFF);
        Arrays.fill(this.mRttMode, -1);
        Arrays.fill(this.mAutomaticMode, false);
        HandlerThread handlerThread = new HandlerThread("AudioInterfaceThread");
        this.mAudioInterfaceThread = handlerThread;
        handlerThread.start();
        this.mAudioInterfaceHandler = new AudioInterfaceHandler(this.mAudioInterfaceThread.getLooper());
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCallStateEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForCallStateEvent:");
        this.mCallStateEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCallStateEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForCallStateEvent:");
        this.mCallStateEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForIncomingCallEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForCallStateEvent:");
        this.mIncomingCallEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForIncomingCallEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForCallStateEvent:");
        this.mIncomingCallEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForUssdEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForUssdEvent:");
        this.mUssdEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForUssdEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForUssdEvent:");
        this.mUssdEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCurrentLocationDiscoveryDuringEmergencyCallEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForCurrentLocationDiscoveryDuringEmergencyCallEvent:");
        this.mCurrentLocationDiscoveryDuringEmergencyCallRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent:");
        this.mCurrentLocationDiscoveryDuringEmergencyCallRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForReferStatus(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForReferStatus:");
        this.mReferStatusRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForReferStatus(Handler handler) {
        Log.i(LOG_TAG, "unregisterForReferStatus:");
        this.mReferStatusRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDialogEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForDialogEvent:");
        this.mDialogEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDialogEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForDialogEvent:");
        this.mDialogEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCmcInfoEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForCmcInfoEvent:");
        this.mCmcInfoEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCmcInfoEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForCmcInfoEvent:");
        this.mCmcInfoEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCdpnInfoEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForCdpnInfoEvent:");
        this.mCdpnInfoRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDedicatedBearerNotifyEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForDedicatedBearerNotifyEvent:");
        this.mDedicatedBearerEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDedicatedBearerNotifyEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForDedicatedBearerNotifyEvent:");
        this.mDedicatedBearerEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForRrcConnectionEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForRrcConnectionEvent:");
        this.mRrcConnectionEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForRrcConnectionEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForRrcConnectionEvent:");
        this.mRrcConnectionEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerQuantumSecurityStatusEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerQuantumSecurityStatusEvent:");
        this.mQuantumSecurityStatusEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterQuantumSecurityStatusEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterQuantumSecurityStatusEvent:");
        this.mQuantumSecurityStatusEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDtmfEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForDtmfEvent:");
        this.mDtmfEventRegistrants.add(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDtmfEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForDtmfEvent:");
        this.mDtmfEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForTextEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForTextEvent:");
        this.mTextEventRegistrants.add(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForTextEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForTextEvent:");
        this.mTextEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForSIPMSGEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForSIPMSGEvent:");
        this.mSIPMSGNotiRegistrants.add(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForSIPMSGEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForSIPMSGEvent:");
        this.mSIPMSGNotiRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForRtpLossRateNoti(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForRtpLossRateNoti:");
        this.mRtpLossRateNotiRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForRtpLossRateNoti(Handler handler) {
        Log.i(LOG_TAG, "unregisterForRtpLossRateNoti:");
        this.mRtpLossRateNotiRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForAudioPathUpdated(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForAudioPathUpdated:");
        this.mAudioPathUpdatedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCdpnInfoEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForCdpnInfoEvent:");
        this.mCdpnInfoRegistrants.remove(handler);
    }

    private AdditionalContents createUssdContents(int i, String str, int i2) {
        XmlSerializer newSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        try {
            newSerializer.setOutput(stringWriter);
            newSerializer.startDocument("UTF-8", null);
            newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            newSerializer.startTag("", "ussd-data");
            Mno simMno = SimUtil.getSimMno(i);
            if (simMno != Mno.SMART_CAMBODIA) {
                newSerializer.startTag("", CloudMessageProviderContract.VVMAccountInfoColumns.LANGUAGE);
                if (simMno == Mno.HK3) {
                    newSerializer.text("un");
                } else {
                    if (simMno != Mno.H3G_AT && simMno != Mno.TIGO_BOLIVIA) {
                        newSerializer.text("en");
                    }
                    newSerializer.text("undefined");
                }
                newSerializer.endTag("", CloudMessageProviderContract.VVMAccountInfoColumns.LANGUAGE);
            }
            if (i2 == 3) {
                Log.i(LOG_TAG, "createUssdContents: error - \n" + str);
                newSerializer.startTag("", "error-code");
                newSerializer.text(str);
                newSerializer.endTag("", "error-code");
            } else if (i2 == 4) {
                Log.i(LOG_TAG, "createUssdContents: notify response");
                newSerializer.startTag("", "UnstructuredSS-Notify");
                newSerializer.endTag("", "UnstructuredSS-Notify");
            } else {
                Log.i(LOG_TAG, "createUssdContents: dialstring - \n" + str);
                newSerializer.startTag("", "ussd-string");
                newSerializer.text(str);
                newSerializer.endTag("", "ussd-string");
            }
            newSerializer.endTag("", "ussd-data");
            newSerializer.endDocument();
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            Log.e(LOG_TAG, "Failed to createUssdContents()", e);
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(USSD_MIME_TYPE);
        int createString2 = flatBufferBuilder.createString(stringWriter.toString());
        AdditionalContents.startAdditionalContents(flatBufferBuilder);
        AdditionalContents.addMimeType(flatBufferBuilder, createString);
        AdditionalContents.addContents(flatBufferBuilder, createString2);
        flatBufferBuilder.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder));
        AdditionalContents rootAsAdditionalContents = AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder.dataBuffer());
        Log.i(LOG_TAG, "createUssdContents: built contents - \n" + rootAsAdditionalContents.contents());
        return rootAsAdditionalContents;
    }

    private AdditionalContents createCmcInfoContents(int i, int i2, int i3, String str) {
        XmlSerializer newSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        try {
            newSerializer.setOutput(stringWriter);
            newSerializer.startDocument("UTF-8", null);
            newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            newSerializer.startTag("", "cmc-info-data");
            newSerializer.startTag("", "record-event");
            newSerializer.text(Integer.toString(i2));
            newSerializer.endTag("", "record-event");
            newSerializer.startTag("", "extra");
            newSerializer.text(Integer.toString(i3));
            newSerializer.endTag("", "extra");
            newSerializer.startTag("", "external-call-id");
            newSerializer.text(str);
            newSerializer.endTag("", "external-call-id");
            newSerializer.endTag("", "cmc-info-data");
            newSerializer.endDocument();
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            Log.e(LOG_TAG, "Failed to createCmcInfoContents()", e);
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(CMC_INFO_MIME_TYPE);
        int createString2 = flatBufferBuilder.createString(stringWriter.toString());
        AdditionalContents.startAdditionalContents(flatBufferBuilder);
        AdditionalContents.addMimeType(flatBufferBuilder, createString);
        AdditionalContents.addContents(flatBufferBuilder, createString2);
        flatBufferBuilder.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder));
        AdditionalContents rootAsAdditionalContents = AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder.dataBuffer());
        Log.i(LOG_TAG, "createCmcInfoContents: built contents - \n" + rootAsAdditionalContents.contents());
        return rootAsAdditionalContents;
    }

    private AdditionalContents createVcsInfoContents(String str, int i, int i2, int i3, int i4, String str2) {
        String str3 = str;
        Log.i(LOG_TAG, "createVcsInfoContents event " + str3);
        XmlSerializer newSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        try {
            newSerializer.setOutput(stringWriter);
            newSerializer.startDocument("UTF-8", null);
            newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            newSerializer.startTag("", "msml");
            newSerializer.attribute("", "version", "1.1");
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            Log.e(LOG_TAG, "Failed to createVcsInfoContents()", e);
        }
        if (!"touch".equals(str3) && !"slide".equals(str3)) {
            newSerializer.startTag("", "send");
            newSerializer.attribute("", "event", str3);
            newSerializer.endTag("", "send");
            newSerializer.endTag("", "msml");
            newSerializer.endDocument();
            FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
            int createString = flatBufferBuilder.createString(VCS_INFO_MIME_TYPE);
            int createString2 = flatBufferBuilder.createString(stringWriter.toString().replaceAll("'", CmcConstants.E_NUM_STR_QUOTE));
            AdditionalContents.startAdditionalContents(flatBufferBuilder);
            AdditionalContents.addMimeType(flatBufferBuilder, createString);
            AdditionalContents.addContents(flatBufferBuilder, createString2);
            flatBufferBuilder.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder));
            AdditionalContents rootAsAdditionalContents = AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder.dataBuffer());
            Log.i(LOG_TAG, "createVcsInfoContents: built contents - \n" + rootAsAdditionalContents.contents());
            return rootAsAdditionalContents;
        }
        newSerializer.startTag("", "position");
        String str4 = "(" + Integer.toString(i) + ", " + Integer.toString(i2) + ")";
        if ("slide".equals(str3)) {
            str4 = str4 + " (" + Integer.toString(i4) + ", " + str2 + ")";
            str3 = "move";
        }
        newSerializer.attribute("", "digits", str4 + "#");
        newSerializer.attribute("", "dur", Integer.toString(i3));
        newSerializer.startTag("", "positionexit");
        newSerializer.startTag("", "send");
        newSerializer.attribute("", "event", str3);
        newSerializer.endTag("", "send");
        newSerializer.endTag("", "positionexit");
        newSerializer.endTag("", "position");
        newSerializer.endTag("", "msml");
        newSerializer.endDocument();
        FlatBufferBuilder flatBufferBuilder2 = new FlatBufferBuilder(0);
        int createString3 = flatBufferBuilder2.createString(VCS_INFO_MIME_TYPE);
        int createString22 = flatBufferBuilder2.createString(stringWriter.toString().replaceAll("'", CmcConstants.E_NUM_STR_QUOTE));
        AdditionalContents.startAdditionalContents(flatBufferBuilder2);
        AdditionalContents.addMimeType(flatBufferBuilder2, createString3);
        AdditionalContents.addContents(flatBufferBuilder2, createString22);
        flatBufferBuilder2.finish(AdditionalContents.endAdditionalContents(flatBufferBuilder2));
        AdditionalContents rootAsAdditionalContents2 = AdditionalContents.getRootAsAdditionalContents(flatBufferBuilder2.dataBuffer());
        Log.i(LOG_TAG, "createVcsInfoContents: built contents - \n" + rootAsAdditionalContents2.contents());
        return rootAsAdditionalContents2;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int makeCall(int i, CallSetupData callSetupData, HashMap<String, String> hashMap, int i2) {
        UserAgent uaByRegId;
        Log.i(LOG_TAG, "makeCall: regId=" + i + " " + callSetupData + " additionalSipHeaders=" + hashMap);
        ImsUri destinationUri = callSetupData.getDestinationUri();
        int callType = callSetupData.getCallType();
        boolean isEmergency = callSetupData.isEmergency();
        boolean z = callType == 12;
        if (isEmergency && i < 0) {
            Log.i(LOG_TAG, "makeCall: using emergency UA.");
            uaByRegId = getEmergencyUa(i2);
        } else {
            uaByRegId = getUaByRegId(i);
        }
        if (uaByRegId == null) {
            Log.e(LOG_TAG, "makeCall: UserAgent not found.");
            return -1;
        }
        String imsUri = callSetupData.getOriginatingUri() != null ? callSetupData.getOriginatingUri().toString() : null;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Call call = new Call(uaByRegId, destinationUri, callSetupData.getDialingNumber());
        call.mCallType = convertToCallTypeForward(callType);
        CallParams callParams = new CallParams();
        String audioCodec = uaByRegId.getImsProfile().getAudioCodec();
        Mno fromName = Mno.fromName(call.mUa.getImsProfile().getMnoName());
        if (fromName == Mno.RJIL && isOutOfService(i2)) {
            IMSLog.i(LOG_TAG, i2, "Delete TCP socket when out of service");
            setOutOfService(false, i2);
            call.mUa.deleteTcpClientSocket();
        }
        if ((fromName == Mno.KDDI || fromName == Mno.DOCOMO) && audioCodec.contains("EVS")) {
            String evsBandwidthSend = uaByRegId.getImsProfile().getEvsBandwidthSend();
            if (evsBandwidthSend.contains("fb")) {
                callParams.setAudioCodec("EVS-FB");
            } else if (evsBandwidthSend.contains("swb")) {
                callParams.setAudioCodec("EVS-SWB");
            } else if (evsBandwidthSend.contains("wb")) {
                callParams.setAudioCodec("EVS-WB");
            } else if (evsBandwidthSend.contains("nb")) {
                callParams.setAudioCodec("EVS-NB");
            }
        } else if (audioCodec.contains("AMR-WB") || audioCodec.contains("AMRBE-WB")) {
            callParams.setAudioCodec("AMR-WB");
        } else {
            callParams.setAudioCodec("AMR-NB");
        }
        callParams.setCmcEdCallSlot(callSetupData.getCmcEdCallSlot());
        String cli = uaByRegId.getImsProfile().getSupportClir() ? callSetupData.getCli() : null;
        call.mParam = callParams;
        call.mLock = countDownLatch;
        Log.i(LOG_TAG, "makeCall: Do device support 3gpp 24.390 USSI?" + uaByRegId.getImsProfile().getSupport3gppUssi());
        uaByRegId.makeCall(destinationUri.toString(), imsUri, call.mCallType, callSetupData.getLetteringText(), callSetupData.getDialingNumber(), z && uaByRegId.getImsProfile().getSupport3gppUssi() ? createUssdContents(uaByRegId.getPhoneId(), callSetupData.getDialingNumber(), 0) : null, cli, callSetupData.getPEmergencyInfo(), hashMap, callSetupData.getAlertInfo(), callSetupData.getLteEpsOnlyAttached(), callSetupData.getP2p(), callSetupData.getCmcBoundSessionId(), callSetupData.getComposerData(), callSetupData.getReplaceCallId(), callSetupData.getCmcEdCallSlot(), callSetupData.getIdcExtra(), obtainMessage(1, call));
        try {
            if (!countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                Log.e(LOG_TAG, "makeCall: timeout.");
                return -1;
            }
            CallResponse callResponse = call.mResponse;
            if (callResponse != null && callResponse.result() != 0) {
                Log.e(LOG_TAG, "makeCall: call failed. reason " + call.mResponse.reason());
                callSetupData.setCallSetupError(call.mResponse.reason());
                return -1;
            }
            IMSLog.c(LogClass.VOLTE_MAKE_CALL, "MakeCall," + i2 + "," + call.mSessionId);
            if (!Debug.isProductShip() && uaByRegId.getImsProfile().getCmcType() > 0) {
                CmcPingTestLogger.ping(uaByRegId.getImsProfile().getPcscfList());
            }
            return call.mSessionId;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int rejectCall(int i, int i2, SipError sipError) {
        Log.i(LOG_TAG, "rejectCall: sessionId " + i + " callType " + i2 + " error " + sipError);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "rejectCall: session not found.");
            return -1;
        }
        callBySession.mUa.rejectCall(callBySession.mSessionId, sipError);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int deleteTcpSocket(int i, int i2) {
        Log.i(LOG_TAG, "DeleteTcpSocket: sessionId " + i + " callType " + i2);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "DeleteTcpSocket: session not found.");
            return -1;
        }
        callBySession.mUa.deleteTcpClientSocket();
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int endCall(int i, int i2, SipReason sipReason) {
        Log.i(LOG_TAG, "endCall: sessionId " + i + " callType " + i2 + " reason " + sipReason);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "endCall: session not found.");
            return -1;
        }
        Mno fromName = Mno.fromName(callBySession.mUa.getImsProfile().getMnoName());
        if (sipReason != null) {
            Log.i(LOG_TAG, "endCall: reason : " + sipReason.getText());
            if (fromName.isJpn()) {
                if (fromName == Mno.DOCOMO && ("PS BARRING".equals(sipReason.getText()) || "RRC CONNECTION REJECT".equals(sipReason.getText()))) {
                    Log.i(LOG_TAG, "deleteTcpClientSocket()");
                    callBySession.mUa.deleteTcpClientSocket();
                }
                if ((fromName == Mno.KDDI || fromName == Mno.DOCOMO) && "INVITE FLUSH".equals(sipReason.getText())) {
                    Log.i(LOG_TAG, "deleteTcpClientSocket() at INVITE FLUSH");
                    callBySession.mUa.deleteTcpClientSocket();
                }
            } else if (fromName == Mno.CMCC) {
                if ("SRVCC".equals(sipReason.getText())) {
                    Log.i(LOG_TAG, "deleteTcpClientSocket()");
                    callBySession.mUa.deleteTcpClientSocket();
                }
            } else if (fromName == Mno.VZW) {
                if ("RRC CONNECTION REJECT".equals(sipReason.getText())) {
                    Log.i(LOG_TAG, "deleteTcpClientSocket()");
                    callBySession.mUa.deleteTcpClientSocket();
                }
            } else if (fromName.isOrangeGPG() || fromName == Mno.ORANGE_MOLDOVA) {
                if ("SIP response time-out".equals(sipReason.getText())) {
                    Log.i(LOG_TAG, "deleteTcpClientSocket()");
                    callBySession.mUa.deleteTcpClientSocket();
                }
            } else if (fromName == Mno.KDDI || fromName == Mno.FET) {
                if ("SESSIONPROGRESS TIMEOUT".equals(sipReason.getText())) {
                    Log.i(LOG_TAG, "deleteTcpClientSocket()");
                    callBySession.mUa.deleteTcpClientSocket();
                }
            } else if (fromName.isKor() && "INVITE FLUSH".equals(sipReason.getText())) {
                Log.i(LOG_TAG, "deleteTcpClientSocket() at INVITE FLUSH");
                callBySession.mUa.deleteTcpClientSocket();
            }
        }
        callBySession.mUa.endCall(callBySession.mSessionId, sipReason);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int proceedIncomingCall(int i, boolean z, HashMap<String, String> hashMap, String str) {
        Log.i(LOG_TAG, "proceedIncomingCall: sessoinId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "proceedIncomingCall: session not found.");
            return -1;
        }
        IMSLog.c(LogClass.VOLTE_INCOMING_CALL, "IncomingCall," + callBySession.mUa.getPhoneId() + "," + callBySession.mSessionId);
        callBySession.mUa.progressIncomingCall(callBySession.mSessionId, z, hashMap, str);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int answerCallWithCallType(int i, int i2) {
        return answerCall(i, convertToCallTypeForward(i2), "0", null);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int answerCallWithCallType(int i, int i2, String str) {
        return answerCall(i, convertToCallTypeForward(i2), str, null);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int answerCallWithCallType(int i, int i2, String str, String str2) {
        return answerCall(i, convertToCallTypeForward(i2), str, str2);
    }

    private int answerCall(int i, int i2, String str, String str2) {
        Log.i(LOG_TAG, "answerCallWithCallType: sessionId " + i + " callType " + i2 + " cmcCallEstablishTime " + str + " idcExtra " + str2);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "answerCallWithCallType: session not found.");
            dumpCall();
            return -1;
        }
        if (i2 == -1) {
            i2 = callBySession.mCallType;
        }
        callBySession.mUa.answerCall(i, i2, str, str2);
        if (Debug.isProductShip() || callBySession.mUa.getImsProfile().getCmcType() <= 0) {
            return 0;
        }
        CmcPingTestLogger.ping(callBySession.mUa.getImsProfile().getPcscfList());
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendText(int i, String str, int i2) {
        Log.i(LOG_TAG, "sendText:: sessionId: " + i + ", text: " + IMSLog.checker(str) + ", len: " + i2);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendText: session not found.");
            return -1;
        }
        callBySession.mUa.sendText(i, str, i2);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int handleDtmf(int i, int i2, int i3, int i4, Message message) {
        Log.i(LOG_TAG, "handleDtmf: sessionId " + i + " code " + IMSLog.checker(Integer.valueOf(i2)) + " mode " + i3 + " operation " + i4);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendDtmf: session not found.");
            return -1;
        }
        callBySession.mUa.handleDtmf(i, i2, i3, i4, message);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int holdCall(int i) {
        Log.i(LOG_TAG, "holdCall: sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "holdCall: session not found.");
            dumpCall();
            return -1;
        }
        callBySession.mParam.setIndicationFlag(0);
        IMSLog.c(LogClass.VOLTE_HOLD_CALL, "HoldCall," + callBySession.mUa.getPhoneId() + "," + i);
        callBySession.mUa.holdCall(i, obtainMessage(4));
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int resumeCall(int i) {
        Log.i(LOG_TAG, "resumeCall: sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "resumeCall: session not found.");
            dumpCall();
            return -1;
        }
        callBySession.mParam.setIndicationFlag(0);
        IMSLog.c(LogClass.VOLTE_RESUME_CALL, "ResumeCall," + callBySession.mUa.getPhoneId() + "," + i);
        callBySession.mUa.resumeCall(i, obtainMessage(5));
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int startNWayConferenceCall(int i, ConfCallSetupData confCallSetupData) {
        Log.i(LOG_TAG, "startNWayConferenceCall: regId=" + i + " " + confCallSetupData);
        UserAgent uaByRegId = getUaByRegId(i);
        if (uaByRegId == null) {
            Log.e(LOG_TAG, "startNWayConferenceCall: no UserAgent found.");
            return -1;
        }
        if (checkConfererenceCallData(confCallSetupData) == -1) {
            return -1;
        }
        String imsUri = confCallSetupData.getOriginatingUri() != null ? confCallSetupData.getOriginatingUri().toString() : null;
        boolean supportPrematureEnd = confCallSetupData.getSupportPrematureEnd();
        if (confCallSetupData.getParticipants() == null) {
            if (confCallSetupData.getSessionIds().size() < 2) {
                Log.e(LOG_TAG, "startNWayConferenceCall: not enough sessionIds");
                return -1;
            }
            return startNWayConferenceCall(uaByRegId, confCallSetupData.getConferenceUri(), imsUri, confCallSetupData.getSessionIds().get(0).intValue(), confCallSetupData.getSessionIds().get(1).intValue(), confCallSetupData.getCallType(), confCallSetupData.isSubscriptionEnabled(), confCallSetupData.getSubscribeDialogType(), confCallSetupData.getReferUriType(), confCallSetupData.getRemoveReferUriType(), confCallSetupData.getReferUriAsserted(), confCallSetupData.getUseAnonymousUpdate(), supportPrematureEnd, confCallSetupData.getExtraSipHeaders());
        }
        return startNWayConferenceCall(uaByRegId, confCallSetupData.getConferenceUri(), imsUri, confCallSetupData.getParticipants(), confCallSetupData.getCallType(), confCallSetupData.isSubscriptionEnabled(), confCallSetupData.getSubscribeDialogType(), confCallSetupData.getReferUriType(), confCallSetupData.getRemoveReferUriType(), confCallSetupData.getReferUriAsserted(), confCallSetupData.getUseAnonymousUpdate(), supportPrematureEnd);
    }

    private int startNWayConferenceCall(UserAgent userAgent, String str, String str2, int i, int i2, int i3, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, HashMap<String, String> hashMap) {
        Call callBySession = getCallBySession(i);
        Call callBySession2 = getCallBySession(i2);
        if (callBySession == null || callBySession2 == null) {
            return -1;
        }
        Call call = new Call(userAgent, ImsUri.parse(str), "");
        int convertToCallTypeForward = convertToCallTypeForward(i3);
        call.mCallType = convertToCallTypeForward;
        call.isConference = true;
        call.mParam = new CallParams();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        call.mLock = countDownLatch;
        userAgent.mergeCall(i, i2, str, convertToCallTypeForward, str3, str4, str2, str5, str6, str7, str8, z, hashMap, obtainMessage(3, call));
        try {
            if (!countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                Log.e(LOG_TAG, "startNWayConferenceCall: timeout.");
                return -1;
            }
            CallResponse callResponse = call.mResponse;
            if (callResponse != null && callResponse.result() != 0) {
                Log.i(LOG_TAG, "startNWayConferenceCall: call failed. reason " + call.mResponse.reason());
                return -1;
            }
            return call.mSessionId;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    private int startNWayConferenceCall(UserAgent userAgent, String str, String str2, List<String> list, int i, String str3, String str4, String str5, String str6, String str7, String str8, boolean z) {
        Call call = new Call(userAgent, ImsUri.parse(str), "");
        int convertToCallTypeForward = convertToCallTypeForward(i);
        call.mCallType = convertToCallTypeForward;
        call.isConference = true;
        call.mParam = new CallParams();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        call.mLock = countDownLatch;
        userAgent.conference((String[]) list.toArray(new String[list.size()]), str, convertToCallTypeForward, str3, str4, str2, str5, str6, str7, str8, z, obtainMessage(3, call));
        try {
            if (!countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                Log.e(LOG_TAG, "startNWayConferenceCall: timeout.");
                return -1;
            }
            CallResponse callResponse = call.mResponse;
            if (callResponse != null && callResponse.result() != 0) {
                Log.e(LOG_TAG, "startNWayConferenceCall: call failed. reason " + call.mResponse.reason());
                return -1;
            }
            return call.mSessionId;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int addParticipantToNWayConferenceCall(int i, int i2) {
        Log.i(LOG_TAG, "addParticipantToNWayConferenceCall (" + i + ") participantId " + i2);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "No conference session to add a participant");
            return -1;
        }
        callBySession.mUa.updateConfCall(i, 0, i2, "");
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int removeParticipantFromNWayConferenceCall(int i, int i2) {
        Log.i(LOG_TAG, "removeParticipantFromNWayConferenceCall (" + i + ") removeSession " + i2);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "No conference session to add a participant");
            return -1;
        }
        callBySession.mUa.updateConfCall(i, 1, i2, "");
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int addParticipantToNWayConferenceCall(int i, String str) {
        Log.i(LOG_TAG, "addParticipantToNWayConferenceCall (" + i + ") participant " + str);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "No conference session to add a participant");
            return -1;
        }
        callBySession.mUa.updateConfCall(i, 0, -1, str);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int removeParticipantFromNWayConferenceCall(int i, String str) {
        Log.i(LOG_TAG, "removeParticipantFromNWayConferenceCall (" + i + ") participant " + str);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "No conference session to add a participant");
            return -1;
        }
        callBySession.mUa.updateConfCall(i, 1, -1, str);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int modifyCallType(int i, int i2, int i3) {
        Log.i(LOG_TAG, "modifyCallType(): sessionId " + i + ", oldType " + i2 + ", newType " + i3);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "modifyCallType(): session not found.");
            return -1;
        }
        IMSLog.c(LogClass.VOLTE_MODIFY_CALL, "ModifyCall," + callBySession.mUa.getPhoneId() + "," + callBySession.mSessionId + "," + i2 + "," + i3);
        callBySession.mUa.modifyCallType(callBySession.mSessionId, i2, i3);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int replyModifyCallType(int i, int i2, int i3, int i4) {
        return replyModifyCallType(i, i2, i3, i4, "");
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int replyModifyCallType(int i, int i2, int i3, int i4, String str) {
        Log.i(LOG_TAG, "replyModifyCallType(): sessionId " + i + ", reqType " + i4 + ", curType " + i2 + ", repType " + i3 + ", cmcCallTime " + str);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "replyModifyCallType(): session not found.");
            return -1;
        }
        IMSLog.c(LogClass.VOLTE_MODIFY_REPLY, "ReplyModifyCall," + callBySession.mUa.getPhoneId() + "," + callBySession.mSessionId + "," + i4 + "," + i2 + "," + i3);
        callBySession.mUa.replyModifyCallType(callBySession.mSessionId, i2, i3, i4, str);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int replyWithIdc(int i, int i2, int i3, int i4, String str) {
        Log.i(LOG_TAG, "replyWithIdc(): sessionId " + i + ", idcExtra " + str);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "replyWithIdc(): session not found.");
            return -1;
        }
        IMSLog.c(LogClass.VOLTE_MODIFY_REPLY, "replyWithIdc," + callBySession.mUa.getPhoneId() + "," + callBySession.mSessionId + "," + i4 + "," + i2 + "," + i3);
        callBySession.mUa.replyWithIdc(callBySession.mSessionId, i2, i3, i4, str);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int rejectModifyCallType(int i, int i2) {
        Log.i(LOG_TAG, "rejectModifyCallType(): sessionId " + i + ", reason" + i2);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "rejectModifyCallType(): session not found.");
            return -1;
        }
        IMSLog.c(LogClass.VOLTE_MODIFY_REJECT, "RejectModifyCall," + callBySession.mUa.getPhoneId() + "," + callBySession.mSessionId + "," + i2);
        callBySession.mUa.rejectModifyCallType(callBySession.mSessionId, i2);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendReInvite(int i, SipReason sipReason) {
        Log.i(LOG_TAG, "sendReInvite(): sessionId " + i + ", reason " + sipReason);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendReInvite(): session not found.");
            return -1;
        }
        callBySession.mUa.updateCall(callBySession.mSessionId, 0, -1, sipReason, "");
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendReInviteWithIdcExtra(int i, String str) {
        Log.i(LOG_TAG, "sendReInviteWithIdcExtra(): sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendReInviteWithIdcExtra(): session not found.");
            return -1;
        }
        callBySession.mUa.updateWithIdc(callBySession.mSessionId, 2, str);
        return 0;
    }

    private int checkConfererenceCallData(ConfCallSetupData confCallSetupData) {
        if (confCallSetupData.getConferenceUri() == null) {
            Log.e(LOG_TAG, "checkConfererenceCallData: conference server uri is not configured.");
            return -1;
        }
        if (confCallSetupData.isSubscriptionEnabled() == null) {
            Log.e(LOG_TAG, "checkConfererenceCallData: confSubscribe no global xml file");
            return -1;
        }
        if (confCallSetupData.getSubscribeDialogType() == null) {
            Log.e(LOG_TAG, "checkConfererenceCallData: subscribeDialogType no global xml file");
            return -1;
        }
        if (confCallSetupData.getReferUriType() == null) {
            Log.e(LOG_TAG, "checkConfererenceCallData: referUriType no global xml file");
            return -1;
        }
        if (confCallSetupData.getRemoveReferUriType() == null) {
            Log.e(LOG_TAG, "checkConfererenceCallData: removeReferUriType no global xml file");
            return -1;
        }
        if (confCallSetupData.getReferUriAsserted() == null) {
            Log.e(LOG_TAG, "checkConfererenceCallData: referUriAsserted no global xml file");
            return -1;
        }
        if (confCallSetupData.getUseAnonymousUpdate() != null) {
            return 1;
        }
        Log.e(LOG_TAG, "checkConfererenceCallData: useAnonymousUpdate no global xml file");
        return -1;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int addUserForConferenceCall(int i, ConfCallSetupData confCallSetupData, boolean z) {
        Log.i(LOG_TAG, "addUserForConferenceCall: sessionId=" + i + " " + confCallSetupData + " create " + z);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "addUserForConferenceCall: session not found.");
            return -1;
        }
        String imsUri = confCallSetupData.getOriginatingUri() != null ? confCallSetupData.getOriginatingUri().toString() : null;
        if (checkConfererenceCallData(confCallSetupData) == -1) {
            return -1;
        }
        callBySession.mUa.extendToConfCall((String[]) confCallSetupData.getParticipants().toArray(new String[confCallSetupData.getParticipants().size()]), confCallSetupData.getConferenceUri(), convertToCallTypeForward(confCallSetupData.getCallType()), confCallSetupData.isSubscriptionEnabled(), confCallSetupData.getSubscribeDialogType(), i, imsUri, confCallSetupData.getReferUriType(), confCallSetupData.getRemoveReferUriType(), confCallSetupData.getReferUriAsserted(), confCallSetupData.getUseAnonymousUpdate(), confCallSetupData.getSupportPrematureEnd());
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int transferCall(int i, String str) {
        Log.i(LOG_TAG, "transferCall: sessionId " + i + " taruri " + IMSLog.checker(str));
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "transferCall: session not found.");
            return -1;
        }
        callBySession.mUa.transferCall(callBySession.mSessionId, str, 0, null);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int cancelTransferCall(int i) {
        Log.i(LOG_TAG, "cancelTransferCall: sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "cancelTransferCall: session not found.");
            return -1;
        }
        callBySession.mUa.cancelTransferCall(callBySession.mSessionId, null);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int pullingCall(int i, String str, String str2, String str3, Dialog dialog, List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("pullingCall: regId=");
        sb.append(i);
        sb.append(" taruri ");
        sb.append(IMSLog.checker(str));
        sb.append(" msisdn ");
        sb.append(IMSLog.checker(str2));
        sb.append(" targetDialog ");
        sb.append(IMSLog.checker(dialog + ""));
        Log.i(LOG_TAG, sb.toString());
        UserAgent uaByRegId = getUaByRegId(i);
        if (uaByRegId == null) {
            Log.e(LOG_TAG, "pullingCall: UserAgent not found.");
            return -1;
        }
        ImsUri parse = ImsUri.parse(str);
        if (parse == null) {
            Log.e(LOG_TAG, "Pulling Uri is wrong");
            return -1;
        }
        String mnoName = uaByRegId.getImsProfile().getMnoName();
        Log.i(LOG_TAG, "targetDialog.getCallType()= " + dialog.getCallType() + ", mno=" + mnoName + ", " + dialog.isVideoPortZero() + ", " + dialog.isPullAvailable());
        if (mnoName.contains("VZW") && dialog.isVideoPortZero() && dialog.isPullAvailable() && dialog.getCallType() == 1) {
            dialog.setCallType(2);
            Log.i(LOG_TAG, "recover call type= " + dialog.getCallType());
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Call call = new Call(uaByRegId, parse, str2);
        call.mCallType = convertToCallTypeForward(dialog.getCallType());
        CallParams callParams = new CallParams();
        callParams.setAudioCodec("AMR-WB");
        call.mParam = callParams;
        call.mLock = countDownLatch;
        uaByRegId.pullingCall(parse.toString(), parse.toString(), str3, dialog, list, obtainMessage(6, call));
        try {
            if (!countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                Log.e(LOG_TAG, "pullingCall: timeout.");
                return -1;
            }
            CallResponse callResponse = call.mResponse;
            if (callResponse != null && callResponse.result() != 0) {
                Log.i(LOG_TAG, "pullingCall: call failed. reason " + call.mResponse.reason());
                return -1;
            }
            return call.mSessionId;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int publishDialog(int i, String str, String str2, String str3, int i2, boolean z) {
        Log.i(LOG_TAG, "publishDialog: regId=" + i);
        UserAgent uaByRegId = getUaByRegId(i);
        if (uaByRegId == null) {
            Log.e(LOG_TAG, "publishDialog: UserAgent not found.");
            return -1;
        }
        ImsUri parse = ImsUri.parse(str);
        if (parse == null) {
            Log.e(LOG_TAG, "publishUri Uri is wrong");
            return -1;
        }
        uaByRegId.publishDialog(parse.toString(), str2, str3, i2, null, z);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int setTtyMode(int i, int i2, int i3) {
        int[] iArr = this.mTtyMode;
        if (iArr[i] != i3) {
            iArr[i] = i3;
            this.mStackIf.configCall(i, (i3 == Extensions.TelecomManager.TTY_MODE_OFF || i3 == Extensions.TelecomManager.RTT_MODE) ? false : true, this.mRttMode[i] == Extensions.TelecomManager.RTT_MODE, this.mAutomaticMode[i]);
            UserAgent ua = getUa(i, "mmtel");
            if (ua == null) {
                ua = getUa(i, "mmtel-video");
            }
            if (ua != null && ua.getImsProfile().getTtyType() == 4) {
                int i4 = i3 == Extensions.TelecomManager.RTT_MODE ? 3 : 2;
                Log.i(LOG_TAG, "TTY mode " + i3 + " convert to TextMode " + i4);
                this.mStackIf.setTextMode(i, i4);
            }
        }
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setAutomaticMode(int i, boolean z) {
        this.mAutomaticMode[i] = z;
        StackIF stackIF = this.mStackIf;
        int i2 = this.mTtyMode[i];
        stackIF.configCall(i, (i2 == Extensions.TelecomManager.TTY_MODE_OFF || i2 == Extensions.TelecomManager.RTT_MODE) ? false : true, this.mRttMode[i] == Extensions.TelecomManager.RTT_MODE, z);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setOutOfService(boolean z, int i) {
        try {
            IMSLog.i(LOG_TAG, i, "setOutOfService() : " + z);
            this.mOutOfService[i] = z;
        } catch (ArrayIndexOutOfBoundsException unused) {
            IMSLog.e(LOG_TAG, i, "setOutOfService: mOutOfService out of bound");
        }
    }

    private boolean isOutOfService(int i) {
        try {
            IMSLog.i(LOG_TAG, i, "isOutOfService() : " + this.mOutOfService[i]);
            return this.mOutOfService[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            IMSLog.e(LOG_TAG, i, "isOutOfService: mOutOfService out of bound");
            return false;
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setRttMode(int i, int i2) {
        int[] iArr = this.mRttMode;
        if (iArr[i] != i2) {
            iArr[i] = i2;
            StackIF stackIF = this.mStackIf;
            int i3 = this.mTtyMode[i];
            int i4 = 1;
            stackIF.configCall(i, (i3 == Extensions.TelecomManager.TTY_MODE_OFF || i3 == Extensions.TelecomManager.RTT_MODE) ? false : true, i2 == Extensions.TelecomManager.RTT_MODE, this.mAutomaticMode[i]);
            UserAgent ua = getUa(i, "mmtel");
            if (ua == null) {
                ua = getUa(i, "mmtel-video");
            }
            if (ua != null) {
                if (ua.getImsProfile().getTtyType() == 4) {
                    if (i2 != Extensions.TelecomManager.RTT_MODE && i2 != Extensions.TelecomManager.RTT_MODE_OFF) {
                        i4 = 2;
                    }
                    i4 = 3;
                } else if (ua.getImsProfile().getTtyType() == 3) {
                    if (i2 != Extensions.TelecomManager.RTT_MODE) {
                        i4 = 0;
                    }
                    i4 = 3;
                }
                this.mStackIf.setTextMode(i, i4);
                Log.i(LOG_TAG, "RTT mode " + i2 + " convert to TextMode " + i4);
            }
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateAudioInterface(int i, String str) {
        updateAudioInterface(i, str, null);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateAudioInterface(int i, String str, UserAgent userAgent) {
        RegistrantList registrantList;
        AsyncResult asyncResult;
        UserAgent uaByRegId = getUaByRegId(i);
        if (uaByRegId != null) {
            userAgent = uaByRegId;
        } else if (userAgent == null) {
            Log.e(LOG_TAG, "Not Registered Volte Services");
            return;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        userAgent.updateAudioInterface(str, this.mAudioInterfaceHandler.obtainMessage(8, countDownLatch));
        try {
            if (!countDownLatch.await(5000L, TimeUnit.MILLISECONDS)) {
                Log.e(LOG_TAG, "updateAudioInterface: timeout.");
            }
        } catch (InterruptedException unused) {
            if (!"CPVE".equalsIgnoreCase(str) && !"SAE".equalsIgnoreCase(str)) {
                return;
            }
            registrantList = this.mAudioPathUpdatedRegistrants;
            asyncResult = new AsyncResult(Integer.valueOf(userAgent.getPhoneId()), str, null);
        } catch (Throwable th) {
            if ("CPVE".equalsIgnoreCase(str) || "SAE".equalsIgnoreCase(str)) {
                this.mAudioPathUpdatedRegistrants.notifyResult(new AsyncResult(Integer.valueOf(userAgent.getPhoneId()), str, null));
            }
            throw th;
        }
        if ("CPVE".equalsIgnoreCase(str) || "SAE".equalsIgnoreCase(str)) {
            registrantList = this.mAudioPathUpdatedRegistrants;
            asyncResult = new AsyncResult(Integer.valueOf(userAgent.getPhoneId()), str, null);
            registrantList.notifyResult(asyncResult);
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setVideoCrtAudio(int i, boolean z) {
        Log.i(LOG_TAG, "setVideoCrtAudio(): sessionId = " + i + ", on = " + z);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "setVideoCrtAudio(): session not found.");
        } else {
            callBySession.mUa.setVideoCrtAudio(callBySession.mSessionId, z);
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void sendDtmfEvent(int i, String str) {
        Log.i(LOG_TAG, "sendDtmfEvent(): sessionId = " + i + ", dtmfEvent = " + str);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendDtmfEvent(): session not found.");
        } else {
            callBySession.mUa.sendDtmfEvent(callBySession.mSessionId, str);
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendInfo(int i, int i2, String str, int i3) {
        Log.i(LOG_TAG, "sendInfo: " + str);
        Call callBySession = getCallBySession(i);
        int convertToCallTypeForward = convertToCallTypeForward(i2);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendInfo: session not found.");
            return -1;
        }
        UserAgent userAgent = callBySession.mUa;
        userAgent.sendInfo(i, convertToCallTypeForward, i3, createUssdContents(userAgent.getPhoneId(), str, i3), obtainMessage(7));
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendEmergencyLocationPublish(int i) {
        Log.i(LOG_TAG, "sendEmergencyLocationPublish: sessionid=" + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendEmergencyLocationPublish: session not found.");
            return -1;
        }
        callBySession.mUa.sendEmergencyLocationPublish(i, null);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendCmcInfo(int i, Bundle bundle) {
        Log.i(LOG_TAG, "sendCmcInfo");
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendCmcInfo: session not found.");
            return -1;
        }
        int i2 = bundle.getInt("record_event");
        int i3 = bundle.getInt("extra");
        String string = bundle.getString("sip_call_id");
        UserAgent userAgent = callBySession.mUa;
        userAgent.sendCmcInfo(i, createCmcInfoContents(userAgent.getPhoneId(), i2, i3, string));
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendVcsInfo(int i, Bundle bundle) {
        int i2;
        Log.i(LOG_TAG, "sendVcsInfo");
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendVcsInfo: session not found.");
            return -1;
        }
        String string = bundle.getString("com.samsung.telephony.extra.ims.VCS_ACTION");
        int i3 = bundle.getInt("com.samsung.telephony.extra.ims.VCS_X_POS");
        int i4 = bundle.getInt("com.samsung.telephony.extra.ims.VCS_Y_POS");
        int i5 = bundle.getInt("com.samsung.telephony.extra.ims.VCS_DURATION");
        if ("slide".equals(string)) {
            String string2 = bundle.getString("com.samsung.telephony.extra.ims.VCS_SLIDING_STAGE");
            if (TextUtils.isEmpty(string2) || convertSlidingStage(string2) == 0) {
                Log.e(LOG_TAG, "sendVcsInfo: slidingStage is invalid");
                return -1;
            }
            i2 = convertSlidingStage(string2);
        } else {
            i2 = 0;
        }
        String string3 = bundle.getString("com.samsung.telephony.extra.ims.VCS_TIMESTAMP");
        Log.i(LOG_TAG, "sendVcsInfo event:" + string + ", x:" + i3 + ", y:" + i4 + ", duration:" + i5 + ", slidingStage:" + i2 + ", timestamp:" + string3);
        callBySession.mUa.sendVcsInfo(i, createVcsInfoContents(string, i3, i4, i5, i2, string3));
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int convertSlidingStage(String str) {
        char c;
        str.hashCode();
        switch (str.hashCode()) {
            case 100571:
                if (str.equals("end")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 111267:
                if (str.equals("pre")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (str.equals("start")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return -3;
            case 1:
                return -2;
            case 2:
                return -1;
            default:
                Log.e(LOG_TAG, "convertSlidingStage: invalid stage " + str);
                return 0;
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int enableQuantumSecurityService(int i, boolean z) {
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "enableQuantumSecurityService: session not found.");
            return -1;
        }
        callBySession.mUa.enableQuantumSecurityService(i, z);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int setQuantumSecurityInfo(int i, Bundle bundle) {
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "setQuantumSecurityInfo: session not found.");
            return -1;
        }
        callBySession.mUa.setQuantumSecurityInfo(i, bundle.getInt("call_direction"), bundle.getInt("crypto_mode"), bundle.getString("qt_session_id"), bundle.getString("session_key"));
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int startVideoEarlyMedia(int i) {
        Log.i(LOG_TAG, "startVideoEarlyMedia(): sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "startVideoEarlyMedia(): session not found.");
            return -1;
        }
        callBySession.mUa.startVideoEarlyMedia(callBySession.mSessionId);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateScreenOnOff(int i, int i2) {
        this.mStackIf.updateScreenOnOff(i, i2);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateXqEnable(int i, boolean z) {
        this.mStackIf.updateXqEnable(i, z);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int handleCmcCsfb(int i) {
        Log.i(LOG_TAG, "handleCmcCsfb(): sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "handleCmcCsfb(): session not found.");
            return -1;
        }
        callBySession.mUa.handleCmcCsfb(callBySession.mSessionId);
        return 0;
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void replaceSipCallId(int i, String str) {
        Log.i(LOG_TAG, "replaceSipCallId(): sessionId " + i + ", callId " + str);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "replaceSipCallId(): session not found.");
        } else {
            callBySession.mParam.setSipCallId(str);
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void replaceUserAgent(int i, int i2) {
        Call callBySession = getCallBySession(i);
        Call callBySession2 = getCallBySession(i2);
        if (callBySession == null || callBySession2 == null) {
            Log.i(LOG_TAG, "call not found with session id " + i2);
            return;
        }
        callBySession.mUa = callBySession2.mUa;
        Log.i(LOG_TAG, "session(" + i + ") ProfileHandle changed to " + callBySession.mUa.getHandle());
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void clearAllCallInternal(int i) {
        this.mStackIf.clearAllCallInternal(i);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateNrSaModeOnStart(int i) {
        Log.i(LOG_TAG, "updateNrSaModeOnStart: sessionId=" + i);
        this.mStackIf.updateNrSaModeOnStart(i);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateAirplaneMode(boolean z) {
        Log.i(LOG_TAG, "updateAirplaneMode: isOn=" + z);
        this.mStackIf.updateAirplaneMode(z);
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void sendNegotiatedLocalSdp(int i, String str) {
        Log.i(LOG_TAG, "sendNegotiatedLocalSdp(): sessionId " + i);
        Call callBySession = getCallBySession(i);
        if (callBySession == null) {
            Log.e(LOG_TAG, "sendNegotiatedLocalSdp(): session not found.");
        } else {
            callBySession.mUa.sendNegotiatedLocalSdp(i, str);
        }
    }

    private UserAgent getUa(int i, String str) {
        return getUa(i, str, 0);
    }

    protected UserAgent getUa(int i, String str, int i2) {
        IUserAgent[] userAgentByPhoneId = this.mImsFramework.getRegistrationManager().getUserAgentByPhoneId(i, str);
        if (userAgentByPhoneId.length == 0) {
            return null;
        }
        for (IUserAgent iUserAgent : userAgentByPhoneId) {
            if (iUserAgent != null && iUserAgent.getImsProfile().getCmcType() == i2) {
                return (UserAgent) iUserAgent;
            }
        }
        return null;
    }

    protected UserAgent getUaByRegId(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentByRegId(i);
    }

    protected UserAgent getEmergencyUa(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentOnPdn(15, i);
    }

    protected UserAgent getUa(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(i);
    }

    private void notifyUssdEvent(Call call, UssdEvent.USSD_STATE ussd_state, CallStatus callStatus) {
        Log.i(LOG_TAG, "notifyUssdEvent() session: " + call.mSessionId);
        UssdEvent ussdEvent = new UssdEvent();
        ussdEvent.setSessionID(call.mSessionId);
        Mno fromName = Mno.fromName(call.mUa.getImsProfile().getMnoName());
        ussdEvent.setState(ussd_state);
        if (ussd_state == UssdEvent.USSD_STATE.USSD_RESPONSE) {
            ussdEvent.setErrorCode(new SipError((int) callStatus.statusCode(), callStatus.reasonPhrase()));
        } else if (ussd_state == UssdEvent.USSD_STATE.USSD_INDICATION) {
            if (callStatus != null && callStatus.additionalContents() != null) {
                if (USSD_MIME_TYPE.equals(callStatus.additionalContents().mimeType()) && !TextUtils.isEmpty(callStatus.additionalContents().contents())) {
                    try {
                        UssdReceived parseUssdXml = UssdXmlParser.getInstance().parseUssdXml(callStatus.additionalContents().contents());
                        ussdEvent.setData((Object) parseUssdXml.mString.getBytes("UTF-8"));
                        if (callStatus.state() == 11) {
                            ussdEvent.setStatus(3);
                            if (parseUssdXml.hasErrorCode && fromName != Mno.DOCOMO) {
                                Log.i(LOG_TAG, "BYE from NW has <error-code>");
                                ussdEvent.setData((Object) null);
                            }
                        } else {
                            ussdEvent.setStatus(parseUssdXml.getVolteConstantsUssdStatus());
                        }
                        ussdEvent.setDCS(148);
                    } catch (UnsupportedEncodingException | XPathExpressionException e) {
                        Log.e(LOG_TAG, "notifyCallStatus: error parsing USSD xml", e);
                    }
                } else if (USSD_INDI_BY_MESSAGE_MIME_TYPE.equals(callStatus.additionalContents().mimeType())) {
                    int rawContentsLength = callStatus.additionalContents().rawContentsLength();
                    byte[] bArr = new byte[rawContentsLength];
                    for (int i = 0; i < rawContentsLength; i++) {
                        bArr[i] = (byte) callStatus.additionalContents().rawContents(i);
                    }
                    if (rawContentsLength > 1 && bArr[rawContentsLength - 1] == 0) {
                        Log.i(LOG_TAG, "Remove invalid last byte (0x00)");
                        rawContentsLength--;
                    }
                    byte[] bArr2 = new byte[rawContentsLength];
                    System.arraycopy(bArr, 0, bArr2, 0, rawContentsLength);
                    ussdEvent.setData((Object) bArr2);
                    if (callStatus.state() == 11) {
                        ussdEvent.setStatus(3);
                    } else {
                        ussdEvent.setStatus(1);
                    }
                    ussdEvent.setDCS(0);
                }
            }
            if (ussdEvent.getData() == null) {
                ussdEvent.setData((Object) new byte[0]);
                ussdEvent.setStatus(3);
            }
        }
        if (callStatus != null && ImsCallUtil.isCSFBbySIPErrorCode((int) callStatus.statusCode()) && ussd_state != UssdEvent.USSD_STATE.USSD_RESPONSE) {
            UssdEvent ussdEvent2 = new UssdEvent();
            ussdEvent2.setSessionID(call.mSessionId);
            ussdEvent2.setState(UssdEvent.USSD_STATE.USSD_ERROR);
            ussdEvent2.setErrorCode(new SipError((int) callStatus.statusCode(), callStatus.reasonPhrase()));
            this.mUssdEventRegistrants.notifyResult(ussdEvent2);
            return;
        }
        this.mUssdEventRegistrants.notifyResult(ussdEvent);
    }

    private void notifyIncomingCall(Call call, CallStatus callStatus) {
        int i;
        int i2;
        boolean z;
        if (call == null) {
            Log.i(LOG_TAG, "notifyIncomingCall : incoming call instance is null!!");
            return;
        }
        int convertToCallTypeBackward = callStatus != null ? convertToCallTypeBackward(callStatus.callType()) : 1;
        if (callStatus != null) {
            boolean z2 = callStatus.remoteVideoCapa() && getLocalVideoCapa(call);
            i = (int) callStatus.width();
            i2 = (int) callStatus.height();
            Mno fromName = Mno.fromName(call.mUa.getImsProfile().getMnoName());
            if (callStatus.isFocus() && (fromName == Mno.SKT || fromName == Mno.KT || fromName == Mno.LGU || fromName == Mno.KDDI)) {
                call.mParam.setIsFocus("1");
            }
            call.mParam.setVideoOrientation(callStatus.cvoEnabled() ? 0 : -1);
            if ((call.mUa.getUaProfile().getVideoCrbtSupportType() & 2) == 2) {
                call.mParam.setDelayRinging(callStatus.delayRinging());
            }
            z = z2;
        } else {
            i = NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE;
            i2 = 640;
            z = false;
        }
        call.mParam.setVideoWidth(i);
        call.mParam.setVideoHeight(i2);
        IncomingCallEvent incomingCallEvent = new IncomingCallEvent(call.mUa.getImsRegistration(), call.mSessionId, convertToCallTypeBackward, call.mPeer, false, z, "", call.mParam);
        Log.i(LOG_TAG, "notifyIncomingCall() session: " + call.mSessionId + ", callType: " + convertToCallTypeBackward);
        this.mIncomingCallEventRegistrants.notifyResult(incomingCallEvent);
    }

    private boolean getLocalVideoCapa(Call call) {
        ImsRegistration imsRegistration;
        if (call == null || (imsRegistration = call.mUa.getImsRegistration()) == null) {
            return false;
        }
        return imsRegistration.hasService("mmtel-video");
    }

    /* JADX WARN: Removed duplicated region for block: B:215:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x057a  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x05fd A[Catch: XPathExpressionException -> 0x071a, TryCatch #0 {XPathExpressionException -> 0x071a, blocks: (B:231:0x05eb, B:233:0x05fd, B:234:0x0618, B:236:0x061e, B:239:0x0623, B:241:0x0629, B:243:0x062f, B:245:0x0637, B:246:0x064b, B:248:0x0669, B:252:0x0674, B:254:0x067a, B:256:0x0684, B:258:0x068c, B:259:0x06aa, B:261:0x06b6, B:263:0x06bc, B:265:0x06c6, B:266:0x06db, B:268:0x0702, B:270:0x0716, B:271:0x0708, B:273:0x070e, B:275:0x0712), top: B:230:0x05eb }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0618 A[Catch: XPathExpressionException -> 0x071a, TryCatch #0 {XPathExpressionException -> 0x071a, blocks: (B:231:0x05eb, B:233:0x05fd, B:234:0x0618, B:236:0x061e, B:239:0x0623, B:241:0x0629, B:243:0x062f, B:245:0x0637, B:246:0x064b, B:248:0x0669, B:252:0x0674, B:254:0x067a, B:256:0x0684, B:258:0x068c, B:259:0x06aa, B:261:0x06b6, B:263:0x06bc, B:265:0x06c6, B:266:0x06db, B:268:0x0702, B:270:0x0716, B:271:0x0708, B:273:0x070e, B:275:0x0712), top: B:230:0x05eb }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0724  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0731  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0506  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void notifyCallStatus(com.sec.internal.ims.core.handler.secims.ResipVolteHandler.Call r43, com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent.CALL_STATE r44, com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.CallStatus r45, int r46) {
        /*
            Method dump skipped, instructions count: 1849
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipVolteHandler.notifyCallStatus(com.sec.internal.ims.core.handler.secims.ResipVolteHandler$Call, com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent$CALL_STATE, com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.CallStatus, int):void");
    }

    public static class AlternativeServiceXmlParser {
        public static AlternativeService parseXml(String str) throws XPathExpressionException {
            AlternativeService alternativeService = new AlternativeService();
            Log.i(ResipVolteHandler.LOG_TAG, "AlternativeServiceXmlParser parseXml:" + str);
            XPath newXPath = XPathFactory.newInstance().newXPath();
            XPathExpression compile = newXPath.compile("//ims-3gpp/alternative-service");
            XPathExpression compile2 = newXPath.compile("type");
            XPathExpression compile3 = newXPath.compile("reason");
            XPathExpression compile4 = newXPath.compile("action");
            Node node = (Node) compile.evaluate(new InputSource(new StringReader(str)), XPathConstants.NODE);
            if (node == null) {
                Log.i(ResipVolteHandler.LOG_TAG, "parseXml not found Node '/ims-3gpp/alternative-service");
                return alternativeService;
            }
            String evaluate = compile2.evaluate(node);
            String evaluate2 = compile3.evaluate(node);
            String replace = compile4.evaluate(node).replace("\n", "");
            Log.i(ResipVolteHandler.LOG_TAG, "parseXml:" + evaluate + "," + evaluate2 + "," + replace);
            if ("initial-registration".equals(replace)) {
                Log.i(ResipVolteHandler.LOG_TAG, "initial-registration is found");
                alternativeService.mAction = CallStateEvent.ALTERNATIVE_SERVICE.INITIAL_REGISTRATION;
                alternativeService.mType = evaluate;
                alternativeService.mReason = evaluate2;
            } else if ("emergency-registration".equals(replace)) {
                alternativeService.mAction = CallStateEvent.ALTERNATIVE_SERVICE.EMERGENCY_REGISTRATION;
                alternativeService.mType = evaluate;
                alternativeService.mReason = evaluate2;
            } else if ("emergency".equals(evaluate)) {
                alternativeService.mAction = CallStateEvent.ALTERNATIVE_SERVICE.EMERGENCY;
                alternativeService.mType = evaluate;
                alternativeService.mReason = evaluate2;
            }
            return alternativeService;
        }
    }

    public static class CmcInfoXmlParser {
        public static CmcInfoEvent parseXml(String str) throws XPathExpressionException {
            CmcInfoEvent cmcInfoEvent = new CmcInfoEvent();
            Log.i(ResipVolteHandler.LOG_TAG, "CmcInfoXmlParser parseXml:" + str);
            XPath newXPath = XPathFactory.newInstance().newXPath();
            XPathExpression compile = newXPath.compile("//cmc-info-data");
            XPathExpression compile2 = newXPath.compile("record-event");
            XPathExpression compile3 = newXPath.compile("external-call-id");
            Node node = (Node) compile.evaluate(new InputSource(new StringReader(str)), XPathConstants.NODE);
            if (node == null) {
                Log.i(ResipVolteHandler.LOG_TAG, "parseXml not found Node : cmc-info-data");
                return cmcInfoEvent;
            }
            String evaluate = compile2.evaluate(node);
            String evaluate2 = compile3.evaluate(node);
            Log.i(ResipVolteHandler.LOG_TAG, "parseXml: " + evaluate + ", " + evaluate2);
            cmcInfoEvent.setRecordEvent(Integer.parseInt(evaluate));
            cmcInfoEvent.setExternalCallId(evaluate2);
            return cmcInfoEvent;
        }
    }

    private void onMakeCallResponse(AsyncResult asyncResult) {
        Log.i(LOG_TAG, "onMakeCallResponse:");
        CallResponse callResponse = (CallResponse) asyncResult.result;
        int session = callResponse.session();
        int result = callResponse.result();
        int reason = callResponse.reason();
        Call call = (Call) asyncResult.userObj;
        Log.i(LOG_TAG, "onMakeCallResponse: nameAddr=" + IMSLog.checker(call.mPeer + "") + " session=" + session + " success=" + result + " reason=" + reason);
        call.mSessionId = session;
        call.mResponse = callResponse;
        if (callResponse.sipCallId() != null) {
            call.mParam.setSipCallId(callResponse.sipCallId());
        }
        if (result == 1) {
            call.mUa.stopCamera();
        } else {
            addCall(session, call);
        }
        call.mLock.countDown();
    }

    private void onHoldResumeResponse(AsyncResult asyncResult, boolean z) {
        CallResponse callResponse = (CallResponse) asyncResult.result;
        int session = callResponse.session();
        int result = callResponse.result();
        int reason = callResponse.reason();
        StringBuilder sb = new StringBuilder();
        sb.append("onHoldResumeResponse: ");
        sb.append(z ? "hold" : McsConstants.SyncMessageStatus.RESUME);
        sb.append(" session=");
        sb.append(session);
        sb.append(" success=");
        sb.append(result);
        sb.append(" reason=");
        sb.append(reason);
        Log.i(LOG_TAG, sb.toString());
    }

    private void onInfoResponse(AsyncResult asyncResult) {
        UssdEvent ussdEvent = new UssdEvent();
        GeneralResponse generalResponse = (GeneralResponse) asyncResult.result;
        if (generalResponse.result() == 0) {
            ussdEvent.setState(UssdEvent.USSD_STATE.USSD_RESPONSE);
        } else {
            ussdEvent.setState(UssdEvent.USSD_STATE.USSD_ERROR);
        }
        ussdEvent.setErrorCode(new SipError((int) generalResponse.sipError(), generalResponse.errorStr()));
        this.mUssdEventRegistrants.notifyResult(ussdEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateAudioInterfaceResponse(AsyncResult asyncResult) {
        Log.i(LOG_TAG, "onUpdateAudioInterfaceResponse:");
        ((CountDownLatch) asyncResult.userObj).countDown();
    }

    private boolean isSendingCmosInfoNeeded(Mno mno, Call call, CallStatus callStatus, int i) {
        if (mno != Mno.CMCC || !callStatus.touchScreenEnabled() || call.mParam.isIncomingCall() || callStatus.state() != 8) {
            return false;
        }
        int callType = callStatus.callType();
        if ((callType != 2 && callType != 4 && callType != 1) || i == 9 || i == 10 || i == 14) {
            return false;
        }
        Log.i(LOG_TAG, "send CMOS info");
        return true;
    }

    private void onCallStateChange(AsyncResult asyncResult) {
        int i;
        CallStatus callStatus = (CallStatus) asyncResult.result;
        int session = (int) callStatus.session();
        int state = callStatus.state();
        Call callBySession = getCallBySession(session);
        int phoneId = callBySession != null ? callBySession.mUa.getPhoneId() : 0;
        Mno simMno = SimUtil.getSimMno(phoneId);
        Log.i(LOG_TAG, "onCallStateChange() session: " + session + " state: " + callStatus.state() + " calltype : " + callStatus.callType());
        if (simMno == Mno.SKT && callStatus.callType() == 6 && (state == 8 || state == 11 || state == 14 || state == 18)) {
            synchronized (this.mCallList) {
                for (int i2 = 0; i2 < this.mCallList.size(); i2++) {
                    Call call = this.mCallList.get(this.mCallList.keyAt(i2));
                    if (call != null) {
                        Log.i(LOG_TAG, "candidate callType :  " + call.mCallType);
                    }
                    if (call != null && ((i = call.mCallType) == 2 || i == 6)) {
                        Log.i(LOG_TAG, "Find conference call!!");
                        call.mCallType = callStatus.callType();
                        call.isConference = true;
                        call.mParam.setConfSessionId(session);
                        callBySession = call;
                        break;
                    }
                }
            }
        }
        if (callBySession == null) {
            Log.i(LOG_TAG, "onCallStateChange: unknown sessionId " + session);
            if ((simMno == Mno.TELEFONICA_UK || simMno.isTmobile()) && callStatus.statusCode() == 708) {
                Log.i(LOG_TAG, "onCallStateChange: notifyCallStatus if 708");
                CallStateEvent callStateEvent = new CallStateEvent();
                callStateEvent.setErrorCode(new SipError(708));
                this.mCallStateEventRegistrants.notifyResult(callStateEvent);
                return;
            }
            return;
        }
        if (simMno == Mno.LGU && ((callStatus.callType() == 6 || callStatus.callType() == 5) && (state == 8 || state == 11 || state == 14 || state == 18))) {
            callBySession.isConference = true;
        }
        if (callStatus.callType() == 12) {
            if (state == 8) {
                if (callBySession.mParam.isIncomingCall()) {
                    Log.i(LOG_TAG, "USSD indicated from network");
                    notifyUssdEvent(callBySession, UssdEvent.USSD_STATE.USSD_INDICATION, callStatus);
                } else {
                    notifyUssdEvent(callBySession, UssdEvent.USSD_STATE.USSD_RESPONSE, callStatus);
                }
            } else if (state == 11) {
                notifyUssdEvent(callBySession, UssdEvent.USSD_STATE.USSD_INDICATION, callStatus);
                removeCall(session);
                return;
            } else if (state == 17) {
                notifyUssdEvent(callBySession, UssdEvent.USSD_STATE.USSD_INDICATION, callStatus);
            } else if (state == 19) {
                notifyUssdEvent(callBySession, UssdEvent.USSD_STATE.USSD_RESPONSE, callStatus);
            }
        }
        Log.i(LOG_TAG, "audioCodec=" + callStatus.audioCodecName() + " remoteMmtelCapa=" + callStatus.remoteMmtelCapa() + " remoteVideoCapa=" + callStatus.remoteVideoCapa() + " height=" + callStatus.height() + " width=" + callStatus.width() + " isFocus=" + callStatus.isFocus());
        StringBuilder sb = new StringBuilder();
        sb.append(phoneId);
        sb.append(",");
        sb.append(session);
        sb.append(",");
        sb.append(state);
        sb.append(",");
        sb.append(callStatus.callType());
        sb.append(",");
        sb.append(callStatus.audioCodecName());
        sb.append(",");
        sb.append((callStatus.remoteVideoCapa() && getLocalVideoCapa(callBySession)) ? 1 : 0);
        sb.append(",");
        sb.append(callStatus.height());
        sb.append(",");
        sb.append(callStatus.width());
        sb.append(",");
        sb.append(callStatus.isFocus() ? 1 : 0);
        IMSLog.c(LogClass.VOLTE_CHANGE_CALL_STATE, sb.toString());
        Mno fromName = Mno.fromName(callBySession.mUa.getImsProfile().getMnoName());
        String audioCodecName = callStatus.audioCodecName();
        Log.i(LOG_TAG, "onCallStateChange: audioCodec " + audioCodecName);
        int callState = callBySession.mParam.getCallState();
        callBySession.mParam.setCallState(callStatus.state());
        Log.i(LOG_TAG, "onCallStateChange: oldState=  " + callState + ", newState=" + state);
        if (!TextUtils.isEmpty(callStatus.sipCallId())) {
            callBySession.mParam.setSipCallId(callStatus.sipCallId());
        }
        callBySession.mParam.setTouchScreenEnabled(callStatus.touchScreenEnabled());
        callBySession.mParam.setisHDIcon(1);
        if ((fromName == Mno.VZW || fromName == Mno.SINGTEL) && !callStatus.remoteMmtelCapa()) {
            Log.i(LOG_TAG, "disable HD icon by remote doesn't have MMTEL capability");
            callBySession.mParam.setisHDIcon(0);
        }
        if (!TextUtils.isEmpty(audioCodecName)) {
            callBySession.mParam.setAudioCodec(audioCodecName);
        } else if (state == 4 && fromName.isKor()) {
            Log.i(LOG_TAG, "KOR model need to update audio codec as NULL");
            callBySession.mParam.setAudioCodec(audioCodecName);
        }
        if (state == 3) {
            notifyIncomingCall(callBySession, callStatus);
            Log.i(LOG_TAG, "onCallStateChange: Incoming call event");
            return;
        }
        if (state == 10) {
            callBySession.mParam.setIndicationFlag(1);
        }
        CallStateEvent.CALL_STATE convertToVolteState = convertToVolteState(state, (int) callStatus.statusCode());
        if (convertToVolteState == null) {
            Log.i(LOG_TAG, "onCallStateChange: unknown event " + state);
            return;
        }
        synchronized (this.mCallList) {
            callBySession.mCallType = callStatus.callType();
        }
        if (convertToVolteState == CallStateEvent.CALL_STATE.EXTEND_TO_CONFERENCE) {
            Log.i(LOG_TAG, "extend to conference event " + ((int) callStatus.statusCode()));
        }
        notifyCallStatus(callBySession, convertToVolteState, callStatus, -1);
        if (isSendingCmosInfoNeeded(fromName, callBySession, callStatus, callState)) {
            Bundle bundle = new Bundle();
            bundle.putString("com.samsung.telephony.extra.ims.VCS_ACTION", "ack:g.3gpp.cmos");
            sendVcsInfo(session, bundle);
        }
        if (state == 11) {
            if (callBySession.isConference && (((int) callStatus.statusCode()) == 800 || (((int) callStatus.statusCode()) == 606 && !fromName.isChn()))) {
                Log.i(LOG_TAG, "conference call error received; don't remove session yet.");
                return;
            }
            if (callBySession.isConference && fromName == Mno.SKT && ((int) callStatus.statusCode()) == 0) {
                Log.i(LOG_TAG, "conference call is ended; clear all call List");
                synchronized (this.mCallList) {
                    this.mCallList.clear();
                }
            } else {
                if ((callBySession.isConference && ((int) callStatus.statusCode()) == 486) || "LTE Retry in UAC Barred".equals(callStatus.reasonPhrase())) {
                    return;
                }
                removeCall(session);
            }
        }
    }

    private void onModifyCall(AsyncResult asyncResult) {
        ModifyCallData modifyCallData = (ModifyCallData) asyncResult.result;
        int session = (int) modifyCallData.session();
        int oldType = (int) modifyCallData.oldType();
        int newType = (int) modifyCallData.newType();
        boolean isSdToSdPull = modifyCallData.isSdToSdPull();
        Call callBySession = getCallBySession(session);
        if (callBySession == null) {
            Log.i(LOG_TAG, "onModifyCall: unknown sessionId " + session);
            return;
        }
        if (!TextUtils.isEmpty(modifyCallData.idcExtra())) {
            Log.i(LOG_IDC_FW_TAG, "onModifyCall() Transaction Handling");
            onModifyIdcSession(modifyCallData);
            return;
        }
        Mno fromName = Mno.fromName(callBySession.mUa.getImsProfile().getMnoName());
        Log.i(LOG_TAG, "onModifyCall() session: " + session + ", oldCallType: " + oldType + ", newCallType: " + newType + ", isSdToSdPull: " + isSdToSdPull);
        if (ImsCallUtil.isUpgradeCall(oldType, newType) && ((this.mTtyMode[callBySession.mUa.getPhoneId()] != Extensions.TelecomManager.TTY_MODE_OFF && this.mTtyMode[callBySession.mUa.getPhoneId()] != Extensions.TelecomManager.RTT_MODE) || getCall(9) != null)) {
            Log.i(LOG_TAG, "Rejecting modify request since TTY call(" + this.mTtyMode[callBySession.mUa.getPhoneId()] + ") exists");
            rejectModifyCallType(session, Id.REQUEST_UPDATE_TIME_IN_PLANI);
            return;
        }
        if (fromName == Mno.ATT && oldType == 1 && newType == 3) {
            Log.i(LOG_TAG, "onModifyCall: ATT - RX upgrade to videoshare with recvonly -> automatically reject with audio only 200 OK");
            replyModifyCallType(session, oldType, oldType, newType);
            return;
        }
        if (fromName == Mno.RJIL && ImsCallUtil.isOneWayVideoCall(newType)) {
            Log.i(LOG_TAG, "onModifyCall: RJIL - network does not support 1-way videoreject with 603");
            rejectModifyCallType(session, Id.REQUEST_UPDATE_TIME_IN_PLANI);
            return;
        }
        callBySession.mCallType = convertToCallTypeBackward(newType);
        CallStateEvent callStateEvent = new CallStateEvent();
        callStateEvent.setState(CallStateEvent.CALL_STATE.MODIFY_REQUESTED);
        callStateEvent.setCallType(newType);
        callStateEvent.setSessionID(session);
        callStateEvent.setIsSdToSdPull(isSdToSdPull);
        callStateEvent.setParams(callBySession.mParam);
        this.mCallStateEventRegistrants.notifyResult(callStateEvent);
    }

    private void onModifyIdcSession(ModifyCallData modifyCallData) {
        Log.i(LOG_IDC_FW_TAG, "onModifyIdcSession()");
        int session = (int) modifyCallData.session();
        String idcExtra = modifyCallData.idcExtra();
        CallStateEvent callStateEvent = new CallStateEvent();
        callStateEvent.setState(CallStateEvent.CALL_STATE.MODIFY_REQUESTED);
        callStateEvent.setSessionID(session);
        callStateEvent.setIdcExtra(idcExtra);
        this.mCallStateEventRegistrants.notifyResult(callStateEvent);
    }

    private void onNewIncomingCall(AsyncResult asyncResult) {
        IncomingCall incomingCall = (IncomingCall) asyncResult.result;
        UserAgent ua = getUa((int) incomingCall.handle());
        if (ua == null) {
            Log.i(LOG_TAG, "onNewIncomingCall: UserAgent not found.");
            return;
        }
        Log.i(LOG_TAG, "acquire wakelock for MT call by 1 sec");
        ((PowerManager) this.mContext.getSystemService("power")).newWakeLock(1, "ImsService").acquire(1000L);
        Call call = new Call(ua, new NameAddr(incomingCall.displayName(), incomingCall.peeruri() != null ? ImsUri.parse(incomingCall.peeruri()) : null));
        call.mSessionId = (int) incomingCall.session();
        call.mCallType = incomingCall.callType();
        if (Mno.fromName(call.mUa.getImsProfile().getMnoName()) == Mno.RJIL && isOutOfService(call.mUa.getPhoneId())) {
            IMSLog.i(LOG_TAG, call.mUa.getPhoneId(), "Delete TCP socket when out of service");
            setOutOfService(false, call.mUa.getPhoneId());
            call.mUa.deleteTcpClientSocket();
        }
        CallParams callParams = new CallParams();
        callParams.setAsIncomingCall();
        if (incomingCall.referredBy() != null) {
            callParams.setReferredBy(incomingCall.referredBy());
        }
        if (incomingCall.sipCallId() != null) {
            callParams.setSipCallId(incomingCall.sipCallId());
        }
        if (incomingCall.rawSipmsg() != null) {
            callParams.setSipInviteMsg(incomingCall.rawSipmsg());
        }
        if (incomingCall.terminatingId() != null) {
            callParams.setTerminatingId(ImsUri.parse(incomingCall.terminatingId()));
        }
        if (incomingCall.numberPlus() != null) {
            callParams.setNumberPlus(incomingCall.numberPlus());
        }
        if (incomingCall.replaces() != null) {
            callParams.setReplaces(incomingCall.replaces());
        }
        if (incomingCall.photoRing() != null) {
            callParams.setPhotoRing(incomingCall.photoRing());
        }
        if (incomingCall.alertInfo() != null) {
            callParams.setAlertInfo(incomingCall.alertInfo());
        }
        if (incomingCall.historyInfo() != null) {
            callParams.setHistoryInfo(incomingCall.historyInfo());
        }
        if (incomingCall.verstat() != null) {
            callParams.setVerstat(incomingCall.verstat());
        }
        if (incomingCall.organization() != null) {
            callParams.setOrganization(incomingCall.organization());
        }
        if (incomingCall.cmcDeviceId() != null) {
            callParams.setCmcDeviceId(incomingCall.cmcDeviceId());
        }
        if (incomingCall.composerData() != null) {
            Log.i(LOG_TAG, "onNewIncomingCall: has composer data");
            ComposerData composerData = incomingCall.composerData();
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(composerData.subject())) {
                bundle.putString("subject", composerData.subject());
            }
            if (!TextUtils.isEmpty(composerData.image())) {
                bundle.putString(CallConstants.ComposerData.IMAGE, composerData.image());
            }
            if (!TextUtils.isEmpty(composerData.callReason())) {
                bundle.putString(CallConstants.ComposerData.CALL_REASON, composerData.callReason());
            }
            if (!TextUtils.isEmpty(composerData.latitude())) {
                bundle.putString(CallConstants.ComposerData.LATITUDE, composerData.latitude());
            }
            if (!TextUtils.isEmpty(composerData.longitude())) {
                bundle.putString(CallConstants.ComposerData.LONGITUDE, composerData.longitude());
            }
            if (!TextUtils.isEmpty(composerData.radius())) {
                bundle.putString(CallConstants.ComposerData.RADIUS, composerData.radius());
            }
            bundle.putBoolean("importance", composerData.importance());
            callParams.setComposerData(bundle);
        }
        String idcExtra = incomingCall.idcExtra() != null ? incomingCall.idcExtra() : "";
        callParams.setHasDiversion(incomingCall.hasDiversion());
        callParams.setCmcEdCallSlot((int) incomingCall.cmcEdCallSlot());
        call.mParam = callParams;
        addCall(call.mSessionId, call);
        StringBuilder sb = new StringBuilder();
        sb.append("onNewIncomingCall: sessionId ");
        sb.append(call.mSessionId);
        sb.append(" peer ");
        sb.append(IMSLog.checker(call.mPeer + ""));
        Log.i(LOG_TAG, sb.toString());
        IncomingCallEvent incomingCallEvent = new IncomingCallEvent(ua.getImsRegistration(), call.mSessionId, convertToCallTypeForward(call.mCallType), call.mPeer, true, false, idcExtra, call.mParam);
        Log.i(LOG_TAG, "notifyIncomingCall() pre Alerting session: " + call.mSessionId + ", callType: " + call.mCallType);
        this.mIncomingCallEventRegistrants.notifyResult(incomingCallEvent);
    }

    private void onDedicatedBearerEventReceived(AsyncResult asyncResult) {
        Log.i(LOG_TAG, "onDedicatedBearerEventReceived:");
        DedicatedBearerEvent dedicatedBearerEvent = (DedicatedBearerEvent) asyncResult.result;
        this.mDedicatedBearerEventRegistrants.notifyResult(new com.sec.internal.ims.servicemodules.volte2.data.DedicatedBearerEvent(convertDedicatedBearerState(dedicatedBearerEvent.bearerState()), (int) dedicatedBearerEvent.qci(), (int) dedicatedBearerEvent.session()));
    }

    private void onRtpLossRateNoti(AsyncResult asyncResult) {
        Log.i(LOG_TAG, "onRtpLossRateNoti:");
        RtpLossRateNoti rtpLossRateNoti = (RtpLossRateNoti) asyncResult.result;
        this.mRtpLossRateNotiRegistrants.notifyResult(new com.sec.internal.constants.ims.servicemodules.volte2.RtpLossRateNoti((int) rtpLossRateNoti.interval(), (int) rtpLossRateNoti.lossrate(), rtpLossRateNoti.jitter(), (int) rtpLossRateNoti.notification()));
    }

    private void onRrcConnectionEventReceived(AsyncResult asyncResult) {
        Log.i(LOG_TAG, "onRrcConnectionEventReceived:");
        RrcConnectionEvent rrcConnectionEvent = (RrcConnectionEvent) asyncResult.result;
        if (rrcConnectionEvent.event() == 1) {
            this.mRrcConnectionEventRegistrants.notifyResult(new com.sec.internal.constants.ims.servicemodules.volte2.RrcConnectionEvent(RrcConnectionEvent.RrcEvent.REJECTED));
        } else if (rrcConnectionEvent.event() == 2) {
            this.mRrcConnectionEventRegistrants.notifyResult(new com.sec.internal.constants.ims.servicemodules.volte2.RrcConnectionEvent(RrcConnectionEvent.RrcEvent.TIMER_EXPIRED));
        }
    }

    private void onQuantumSecurityStatusEventReceived(AsyncResult asyncResult) {
        String str;
        QuantumSecurityStatusEvent quantumSecurityStatusEvent = (QuantumSecurityStatusEvent) asyncResult.result;
        if (quantumSecurityStatusEvent.event() == 1) {
            this.mQuantumSecurityStatusEventRegistrants.notifyResult(new com.sec.internal.constants.ims.servicemodules.volte2.QuantumSecurityStatusEvent((int) quantumSecurityStatusEvent.session(), QuantumSecurityStatusEvent.QuantumEvent.FALLBACK_TO_NORMAL_CALL, quantumSecurityStatusEvent.qtSessionId()));
        } else if (quantumSecurityStatusEvent.event() == 2) {
            this.mQuantumSecurityStatusEventRegistrants.notifyResult(new com.sec.internal.constants.ims.servicemodules.volte2.QuantumSecurityStatusEvent((int) quantumSecurityStatusEvent.session(), QuantumSecurityStatusEvent.QuantumEvent.SUCCESS, quantumSecurityStatusEvent.qtSessionId()));
        } else if (quantumSecurityStatusEvent.event() == 3) {
            this.mQuantumSecurityStatusEventRegistrants.notifyResult(new com.sec.internal.constants.ims.servicemodules.volte2.QuantumSecurityStatusEvent((int) quantumSecurityStatusEvent.session(), QuantumSecurityStatusEvent.QuantumEvent.NOTIFY_SESSION_ID, quantumSecurityStatusEvent.qtSessionId()));
        } else {
            Log.i(LOG_TAG, "unsupported event: " + quantumSecurityStatusEvent.event());
        }
        if (SemSystemProperties.get("ro.build.type", "user").equals("user")) {
            return;
        }
        if (quantumSecurityStatusEvent.event() == 2) {
            str = "Encryption SUCCESS noti received!!!";
        } else if (quantumSecurityStatusEvent.event() == 1) {
            str = "Fallback to NORMAL CALL noti received!!!";
        } else {
            str = quantumSecurityStatusEvent.event() == 3 ? "NOTIFY_SESSION_ID CALL noti received!!!" : "Unknown noti received!!!";
        }
        Toast.makeText(this.mContext, str, 1).show();
    }

    private void onConferenceUpdate(AsyncResult asyncResult) {
        CallStateEvent.CALL_STATE call_state;
        UserAgent userAgent;
        ConfCallChanged confCallChanged = (ConfCallChanged) asyncResult.result;
        Log.i(LOG_TAG, "onConferenceUpdate: session " + confCallChanged.session() + " event " + confCallChanged.event());
        Call callBySession = getCallBySession((int) confCallChanged.session());
        int i = 0;
        if (SimUtil.getSimMno((callBySession == null || (userAgent = callBySession.mUa) == null) ? 0 : userAgent.getPhoneId()) == Mno.SKT) {
            synchronized (this.mCallList) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.mCallList.size()) {
                        break;
                    }
                    Call call = this.mCallList.get(this.mCallList.keyAt(i2));
                    if (call != null) {
                        Log.i(LOG_TAG, "tempCall.mCallType :  " + call.mCallType);
                    }
                    if (call != null && call.mCallType == 6) {
                        Log.i(LOG_TAG, "Find confcall!!");
                        callBySession = call;
                        break;
                    }
                    i2++;
                }
            }
        }
        if (callBySession == null) {
            Log.i(LOG_TAG, "onConferenceUpdate: session not found.");
            return;
        }
        int i3 = callBySession.mSessionId;
        int event = confCallChanged.event();
        CallStateEvent callStateEvent = new CallStateEvent();
        callStateEvent.setCallType(convertToCallTypeBackward(callBySession.mCallType));
        callStateEvent.setSessionID(i3);
        callStateEvent.setParams(callBySession.mParam);
        callStateEvent.setConference(callBySession.isConference);
        if (event == 0) {
            call_state = CallStateEvent.CALL_STATE.CONFERENCE_ADDED;
            ArrayList<Participant> arrayList = new ArrayList();
            while (i < confCallChanged.participantsLength()) {
                arrayList.add(confCallChanged.participants(i));
                i++;
            }
            for (Participant participant : arrayList) {
                Log.i(LOG_TAG, "onConferenceUpdate: " + IMSLog.checker(participant.uri()) + " added.  partid " + participant.participantid());
                int participantStatus = getParticipantStatus(participant.status());
                int sessionId = (int) participant.sessionId();
                callStateEvent.addUpdatedParticipantsList(participant.uri(), (int) participant.participantid(), sessionId, participantStatus);
                if (participantStatus == 2) {
                    Log.i(LOG_TAG, "Session (" + sessionId + ") join to conference");
                    CallStateEvent callStateEvent2 = new CallStateEvent(CallStateEvent.CALL_STATE.CONFERENCE_ADDED);
                    callStateEvent2.setSessionID(sessionId);
                    this.mCallStateEventRegistrants.notifyResult(callStateEvent2);
                }
            }
        } else if (event == 1) {
            call_state = CallStateEvent.CALL_STATE.CONFERENCE_REMOVED;
            ArrayList<Participant> arrayList2 = new ArrayList();
            while (i < confCallChanged.participantsLength()) {
                arrayList2.add(confCallChanged.participants(i));
                i++;
            }
            for (Participant participant2 : arrayList2) {
                Log.i(LOG_TAG, "onConferenceUpdate: " + IMSLog.checker(participant2.uri()) + " removed.");
                callStateEvent.addUpdatedParticipantsList(participant2.uri(), (int) participant2.participantid(), (int) participant2.sessionId(), getParticipantStatus(participant2.status()));
            }
        } else if (event == 2) {
            Log.i(LOG_TAG, "onConferenceUpdate: CONF_PARTICIPANT_UPDATED");
            call_state = CallStateEvent.CALL_STATE.CONFERENCE_PARTICIPANTS_UPDATED;
            ArrayList<Participant> arrayList3 = new ArrayList();
            while (i < confCallChanged.participantsLength()) {
                arrayList3.add(confCallChanged.participants(i));
                i++;
            }
            for (Participant participant3 : arrayList3) {
                callStateEvent.setPeerAddr(new NameAddr("", ImsUri.parse(participant3.uri())));
                callStateEvent.addUpdatedParticipantsList(participant3.uri(), (int) participant3.participantid(), (int) participant3.sessionId(), getParticipantStatus(participant3.status()));
                Log.i(LOG_TAG, "onConferenceUpdate: " + IMSLog.checker(participant3.uri()) + " update id . " + participant3.participantid());
            }
        } else {
            Log.i(LOG_TAG, "onConferenceUpdate: unknown event. ignore.");
            return;
        }
        callStateEvent.setState(call_state);
        this.mCallStateEventRegistrants.notifyResult(callStateEvent);
    }

    private void onReferReceived(AsyncResult asyncResult) {
        ReferReceived referReceived = (ReferReceived) asyncResult.result;
        UserAgent ua = getUa((int) referReceived.handle());
        if (ua == null) {
            Log.e(LOG_TAG, "onReferReceived: unknown handle " + referReceived.handle());
            return;
        }
        ua.acceptCallTranfer((int) referReceived.session(), true, 0, null);
    }

    private void onReferStatus(AsyncResult asyncResult) {
        ReferStatus referStatus = (ReferStatus) asyncResult.result;
        Log.i(LOG_TAG, "onReferStatus: session " + referStatus.session() + " respCode " + referStatus.statusCode());
        this.mReferStatusRegistrants.notifyResult(new com.sec.internal.ims.servicemodules.volte2.data.ReferStatus((int) referStatus.session(), (int) referStatus.statusCode()));
    }

    private void onDialogEventReceived(AsyncResult asyncResult) {
        UserAgent userAgent;
        String str;
        DialogEvent parseDialogInfoXml;
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.DialogEvent dialogEvent = (com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.DialogEvent) asyncResult.result;
        String str2 = "";
        if (dialogEvent != null) {
            AdditionalContents additionalContents = dialogEvent.additionalContents();
            String mimeType = (additionalContents == null || additionalContents.mimeType() == null) ? "" : additionalContents.mimeType();
            if (additionalContents != null && additionalContents.contents() != null) {
                str2 = additionalContents.contents();
            }
            userAgent = getUa((int) dialogEvent.handle());
            str = str2;
            str2 = mimeType;
        } else {
            userAgent = null;
            str = "";
        }
        if (userAgent == null) {
            Log.e(LOG_TAG, "ignore dialog event UA is null");
            return;
        }
        ImsRegistration imsRegistration = userAgent.getImsRegistration();
        if (imsRegistration == null) {
            Log.e(LOG_TAG, "ignore dialog event without registration");
            return;
        }
        Log.i(LOG_TAG, "onDialogEventReceived: has AdditionalContents of type " + str2 + " (" + str.length() + " bytes)");
        if (!str2.equals(DIALOG_EVENT_MIME_TYPE)) {
            Log.e(LOG_TAG, "onDialogEventReceived: contentType mismatch!");
            return;
        }
        try {
            if (userAgent.getImsProfile().getCmcType() != 2 && userAgent.getImsProfile().getCmcType() != 4 && userAgent.getImsProfile().getCmcType() != 8) {
                parseDialogInfoXml = DialogXmlParser.getInstance().parseDialogInfoXml(str);
                parseDialogInfoXml.setRegId(imsRegistration.getHandle());
                parseDialogInfoXml.setPhoneId(imsRegistration.getPhoneId());
                this.mDialogEventRegistrants.notifyResult(parseDialogInfoXml);
            }
            parseDialogInfoXml = DialogXmlParser.getInstance().parseDialogInfoXml(str, userAgent.getImsProfile().getCmcType());
            parseDialogInfoXml.setRegId(imsRegistration.getHandle());
            parseDialogInfoXml.setPhoneId(imsRegistration.getPhoneId());
            this.mDialogEventRegistrants.notifyResult(parseDialogInfoXml);
        } catch (XPathExpressionException e) {
            Log.e(LOG_TAG, "failed to parse dialog xml!", e);
        }
    }

    private void onCdpnInfoReceived(AsyncResult asyncResult) {
        this.mCdpnInfoRegistrants.notifyResult((String) asyncResult.result);
    }

    private void onDtmfInfo(AsyncResult asyncResult) {
        DTMFDataEvent dTMFDataEvent = (DTMFDataEvent) asyncResult.result;
        this.mDtmfEventRegistrants.notifyResult(new DtmfInfo((int) dTMFDataEvent.event(), (int) dTMFDataEvent.volume(), (int) dTMFDataEvent.duration(), (int) dTMFDataEvent.endbit()));
    }

    private void onTextInfo(AsyncResult asyncResult) {
        TextDataEvent textDataEvent = (TextDataEvent) asyncResult.result;
        this.mTextEventRegistrants.notifyResult(new TextInfo(0, textDataEvent.text(), (int) textDataEvent.len()));
    }

    private void onCmcInfoReceived(AsyncResult asyncResult) {
        UserAgent userAgent;
        String str;
        CallSendCmcInfo callSendCmcInfo = (CallSendCmcInfo) asyncResult.result;
        String str2 = "";
        if (callSendCmcInfo != null) {
            AdditionalContents additionalContents = callSendCmcInfo.additionalContents();
            String mimeType = (additionalContents == null || additionalContents.mimeType() == null) ? "" : additionalContents.mimeType();
            if (additionalContents != null && additionalContents.contents() != null) {
                str2 = additionalContents.contents();
            }
            userAgent = getUa((int) callSendCmcInfo.handle());
            str = str2;
            str2 = mimeType;
        } else {
            userAgent = null;
            str = "";
        }
        if (userAgent == null) {
            Log.e(LOG_TAG, "ignore CmcInfo event UA is null");
            return;
        }
        if (userAgent.getImsRegistration() == null) {
            Log.e(LOG_TAG, "ignore CmcInfo event without registration");
            return;
        }
        Log.i(LOG_TAG, "onCmcInfoReceived: has AdditionalContents of type " + str2 + " (" + str.length() + " bytes)");
        if (!str2.equals(CMC_INFO_MIME_TYPE)) {
            Log.e(LOG_TAG, "onCmcInfoReceived: contentType mismatch!");
            return;
        }
        try {
            if (userAgent.getImsProfile().getCmcType() == 2) {
                this.mCmcInfoEventRegistrants.notifyResult(CmcInfoXmlParser.parseXml(str));
            }
        } catch (XPathExpressionException e) {
            Log.e(LOG_TAG, "failed to parse cmc info xml!", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onCurrentLocationDiscoveryDuringEmergencyCall(com.sec.internal.helper.AsyncResult r5) {
        /*
            r4 = this;
            java.lang.Object r5 = r5.result
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.CurrentLocationDiscoveryDuringEmergencyCall r5 = (com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.CurrentLocationDiscoveryDuringEmergencyCall) r5
            java.lang.String r0 = "ResipVolteHandler"
            if (r5 != 0) goto Le
            java.lang.String r4 = "onCurrentLocationDiscoveryDuringEmergencyCall() result is null"
            android.util.Log.d(r0, r4)
            return
        Le:
            int r1 = r5.sessionId()
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents r2 = r5.additionalContents()
            if (r2 == 0) goto L4d
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents r2 = r5.additionalContents()
            java.lang.String r2 = r2.mimeType()
            java.lang.String r3 = "application/vnd.3gpp.current-location-discovery+xml"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L4d
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents r2 = r5.additionalContents()
            java.lang.String r2 = r2.contents()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L4d
            com.sec.internal.ims.core.handler.secims.ResipVolteHandler$InfoXmlParser r2 = com.sec.internal.ims.core.handler.secims.ResipVolteHandler.InfoXmlParser.getInstance()     // Catch: java.lang.Exception -> L47
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.AdditionalContents r5 = r5.additionalContents()     // Catch: java.lang.Exception -> L47
            java.lang.String r5 = r5.contents()     // Catch: java.lang.Exception -> L47
            java.lang.String r5 = com.sec.internal.ims.core.handler.secims.ResipVolteHandler.InfoXmlParser.m631$$Nest$mparseInfoXml(r2, r5)     // Catch: java.lang.Exception -> L47
            goto L4f
        L47:
            r5 = move-exception
            java.lang.String r2 = "onCurrentLocationDiscoveryDuringEmergencyCall: error parsing INFO xml"
            android.util.Log.e(r0, r2, r5)
        L4d:
            java.lang.String r5 = "none"
        L4f:
            java.lang.String r2 = "oneShot"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L75
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r2 = "onCurrentLocationDiscoveryDuringEmergencyCall() session: "
            r5.append(r2)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r0, r5)
            com.sec.internal.helper.RegistrantList r4 = r4.mCurrentLocationDiscoveryDuringEmergencyCallRegistrants
            java.lang.Integer r5 = java.lang.Integer.valueOf(r1)
            r4.notifyResult(r5)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipVolteHandler.onCurrentLocationDiscoveryDuringEmergencyCall(com.sec.internal.helper.AsyncResult):void");
    }

    private CallStateEvent.CALL_STATE convertToVolteState(int i, int i2) {
        if (i == 1) {
            return CallStateEvent.CALL_STATE.TRYING;
        }
        if (i == 2) {
            return CallStateEvent.CALL_STATE.CALLING;
        }
        if (i == 4) {
            return CallStateEvent.CALL_STATE.RINGING_BACK;
        }
        if (i == 5) {
            return CallStateEvent.CALL_STATE.FORWARDED;
        }
        if (i != 18) {
            switch (i) {
                case 8:
                    return CallStateEvent.CALL_STATE.ESTABLISHED;
                case 9:
                    return CallStateEvent.CALL_STATE.HELD_LOCAL;
                case 10:
                    return CallStateEvent.CALL_STATE.HELD_REMOTE;
                case 11:
                    if (i2 != 0) {
                        return CallStateEvent.CALL_STATE.ERROR;
                    }
                    return CallStateEvent.CALL_STATE.ENDED;
                case 12:
                    return CallStateEvent.CALL_STATE.EARLY_MEDIA_START;
                case 13:
                    return CallStateEvent.CALL_STATE.HELD_BOTH;
                case 14:
                    if (i2 != 0 && i2 != 1122) {
                        return CallStateEvent.CALL_STATE.ERROR;
                    }
                    return CallStateEvent.CALL_STATE.MODIFIED;
                case 15:
                    return CallStateEvent.CALL_STATE.SESSIONPROGRESS;
                case 16:
                    return CallStateEvent.CALL_STATE.REFRESHFAIL;
                default:
                    Log.e(LOG_TAG, "convertToVolteState: unknown Call state " + i);
                    return null;
            }
        }
        return CallStateEvent.CALL_STATE.EXTEND_TO_CONFERENCE;
    }

    private int convertToCallTypeForward(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 1;
            case 14:
                return 14;
            case 15:
                return 15;
            case 16:
            case 17:
            default:
                Log.e(LOG_TAG, "convertToCallType:: unknown call type " + i);
                return 1;
            case 18:
                return 18;
            case 19:
                return 19;
        }
    }

    private int convertToCallTypeBackward(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
            case 16:
            case 17:
            default:
                Log.e(LOG_TAG, "convertToCallType: unknown call type " + i);
                return 1;
            case 14:
                return 14;
            case 15:
                return 15;
            case 18:
                return 18;
            case 19:
                return 19;
        }
    }

    private void addCall(int i, Call call) {
        synchronized (this.mCallList) {
            Log.i(LOG_TAG, "Add Call " + i);
            this.mCallList.append(i, call);
        }
    }

    private void removeCall(int i) {
        synchronized (this.mCallList) {
            Log.i(LOG_TAG, "Remove Call " + i);
            this.mCallList.remove(i);
        }
    }

    private Call getCallBySession(int i) {
        synchronized (this.mCallList) {
            for (int i2 = 0; i2 < this.mCallList.size(); i2++) {
                Call call = this.mCallList.get(this.mCallList.keyAt(i2));
                if (call != null && call.mSessionId == i) {
                    return call;
                }
            }
            return null;
        }
    }

    private Call getCall(int i) {
        synchronized (this.mCallList) {
            for (int i2 = 0; i2 < this.mCallList.size(); i2++) {
                Call call = this.mCallList.get(this.mCallList.keyAt(i2));
                if (call != null && call.mCallType == i) {
                    return call;
                }
            }
            return null;
        }
    }

    private void dumpCall() {
        synchronized (this.mCallList) {
            Log.i(LOG_TAG, "Call List Size : " + this.mCallList.size());
            for (int i = 0; i < this.mCallList.size(); i++) {
                Call call = this.mCallList.get(this.mCallList.keyAt(i));
                if (call != null) {
                    Log.i(LOG_TAG, "Session Id : " + call.mSessionId + " in the list");
                }
            }
        }
    }

    private boolean IsModifiableNeedToBeIgnored(Call call, CallStateEvent.CALL_STATE call_state, Mno mno) {
        synchronized (this.mCallList) {
            int phoneId = call.mUa.getPhoneId();
            int i = 0;
            for (int i2 = 0; i2 < this.mCallList.size(); i2++) {
                Call call2 = this.mCallList.get(this.mCallList.keyAt(i2));
                if (call2 != null && call2.mUa.getUaProfile() != null && call2.mUa.getUaProfile().getCmcProfile().getCmcType() == 0 && call2.mUa.getPhoneId() == phoneId) {
                    i++;
                }
            }
            if ((call_state != CallStateEvent.CALL_STATE.HELD_LOCAL && call_state != CallStateEvent.CALL_STATE.HELD_REMOTE && call_state != CallStateEvent.CALL_STATE.HELD_BOTH && i <= 1) || (!mno.isChn() && !mno.isHkMo() && !mno.isKor() && !mno.isJpn())) {
                return false;
            }
            return true;
        }
    }

    @Override // com.sec.internal.ims.core.handler.VolteHandler, android.os.Handler
    public void handleMessage(Message message) {
        Log.i(LOG_TAG, "handleMessage: evt " + message.what);
        int i = message.what;
        if (i != 1) {
            if (i == 200) {
                this.mCallStateEventRegistrants.notifyResult(message.obj);
                return;
            }
            if (i != 3) {
                if (i == 4) {
                    onHoldResumeResponse((AsyncResult) message.obj, true);
                    return;
                }
                if (i == 5) {
                    onHoldResumeResponse((AsyncResult) message.obj, false);
                    return;
                }
                if (i != 6) {
                    if (i != 7) {
                        switch (i) {
                            case 100:
                                onCallStateChange((AsyncResult) message.obj);
                                break;
                            case 101:
                                onNewIncomingCall((AsyncResult) message.obj);
                                break;
                            case 102:
                                onConferenceUpdate((AsyncResult) message.obj);
                                break;
                            case 103:
                                onReferReceived((AsyncResult) message.obj);
                                break;
                            case 104:
                                onReferStatus((AsyncResult) message.obj);
                                break;
                            case 105:
                                onDialogEventReceived((AsyncResult) message.obj);
                                break;
                            case 106:
                                onModifyCall((AsyncResult) message.obj);
                                break;
                            case 107:
                                onCdpnInfoReceived((AsyncResult) message.obj);
                                break;
                            case 108:
                                onRtpLossRateNoti((AsyncResult) message.obj);
                                break;
                            default:
                                switch (i) {
                                    case 110:
                                        onDedicatedBearerEventReceived((AsyncResult) message.obj);
                                        break;
                                    case 111:
                                        onRrcConnectionEventReceived((AsyncResult) message.obj);
                                        break;
                                    case 112:
                                        onDtmfInfo((AsyncResult) message.obj);
                                        break;
                                    case 113:
                                        onTextInfo((AsyncResult) message.obj);
                                        break;
                                    case 114:
                                        sendSIPMSGInfo((Notify) ((AsyncResult) message.obj).result);
                                        break;
                                    case 115:
                                        onCmcInfoReceived((AsyncResult) message.obj);
                                        break;
                                    case 116:
                                        onQuantumSecurityStatusEventReceived((AsyncResult) message.obj);
                                        break;
                                    case 117:
                                        onCurrentLocationDiscoveryDuringEmergencyCall((AsyncResult) message.obj);
                                        break;
                                }
                        }
                    }
                    onInfoResponse((AsyncResult) message.obj);
                    return;
                }
            }
        }
        onMakeCallResponse((AsyncResult) message.obj);
    }

    private void sendSIPMSGInfo(Notify notify) {
        SipMessage sipMessage = (SipMessage) notify.noti(new SipMessage());
        String sipMessage2 = sipMessage.sipMessage();
        if (TextUtils.isEmpty(sipMessage2)) {
            return;
        }
        this.mSIPMSGNotiRegistrants.notifyResult(new SIPDataEvent(sipMessage2, sipMessage.direction() == 0));
    }

    private class AudioInterfaceHandler extends Handler {
        public AudioInterfaceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.i(ResipVolteHandler.LOG_TAG, "Event " + message.what);
            if (message.what == 8) {
                ResipVolteHandler.this.onUpdateAudioInterfaceResponse((AsyncResult) message.obj);
            } else {
                Log.e(ResipVolteHandler.LOG_TAG, "Invalid event");
            }
        }
    }
}
