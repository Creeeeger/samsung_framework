package com.sec.internal.ims.servicemodules.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.feature.ImsFeature;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.sms.ISmsServiceEventListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.RrcConnectionEvent;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ImsGateConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.util.IMessagingAppInfoListener;
import com.sec.internal.ims.util.MessagingAppInfoReceiver;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule;
import com.sec.internal.log.IMSLog;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

/* loaded from: classes.dex */
public class SmsServiceModule extends ServiceModuleBase implements ISmsServiceModule, IMessagingAppInfoListener {
    private static final String ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL = "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL";
    private static final String ALTERNATIVE_SERVICE = "application/3gpp-ims+xml";
    private static final String ASVC_INITIAL_REGISTRATION = "initial-registration";
    private static final String ASVC_RESTORATION = "restoration";
    protected static final int EMERGENCY_GEOLOCATION_UPDATED = 10;
    protected static final int EMERGENCY_REGISTER_DONE_EVENT = 5;
    protected static final int EMERGENCY_REGISTER_FAIL_EVENT = 6;
    protected static final int EMERGENCY_REGISTER_START_EVENT = 4;
    private static final String LOG_TAG;
    private static final int MAX_RETRANS_COUNT_ON_RP_ERR = 1;
    public static final String NAME;
    private static final int NOTI_503_OUTAGE = 777;
    private static final int NOTI_DEREGISTERED = 999;
    public static final int NOTI_INTERNAL_ADDR_ERR = 10001;
    public static final int NOTI_INTERNAL_BASE = 10000;
    public static final int NOTI_INTERNAL_EMERGENCY_REGI_FAIL = 10002;
    public static final int NOTI_INTERNAL_END = 11000;
    public static final int NOTI_INTERNAL_LIMITED_REGI = 10004;
    public static final int NOTI_INTERNAL_NO_RP_ACK = 10003;
    private static final int NOTI_SUBMIT_REPORT_TIMEOUT = 801;
    protected static final int RESET_EMERGENCY_GEOLOCATION_STATE = 8;
    private static final int RETRANS_ON_RP_ERROR_TIMEOUT = 3;
    protected static final int RRC_CONNECTION_EVENT = 2;
    protected static final int SCBM_TIMEOUT_EVENT = 7;
    protected static final int SEND_SMS_EVENT = 3;
    private static final int SIP_R_CAUSE_200_OK = 200;
    private static final int SIP_R_CAUSE_LIMITED = 404;
    private static final int SIP_R_CAUSE_TEMP_ERROR = 480;
    protected static final int SMS_EVENT = 1;
    private static final int STATE_TIMEOUT = 1;
    private static final int SUBMIT_REPORT_TIMEOUT = 2;
    protected static final int TIMEOUT_EMERGENCY_GEOLOCATION_UPDATE = 9;
    private static final int TIMER_EMERGENCY_REGISTER_FAIL = 10000;
    private static final int TIMER_RESET_EMERGENCY_GEOLOCATION = 1000;
    private static final int TIMER_STATE = 180000;
    protected static int TIMER_SUBMIT_REPORT = 0;
    private static final int TIMER_SUBMIT_REPORT_SPR = 10000;
    private static final int TIMER_VZW_SCBM = 300000;
    private static final int VZW_E911_FALSE = 0;
    private static final int VZW_E911_REREGI = 2;
    private static final int VZW_E911_TRUE = 1;
    private int MAX_RETRANS_COUNT;
    private int MAX_RETRANS_COUNT_SPR;
    private int m3GPP2SendingMsgId;
    private final BroadcastReceiver mBroadcastReceiver;
    private String[] mCallState;
    Context mContext;
    private ArrayList<SmsEvent> mEmergencyGeolocationPendingQueue;
    private EmergencyGeolocationState mEmergencyGeolocationState;
    private ArrayList<LinkedList<SmsEvent>> mEmergencyPendingQueue;
    private boolean[] mEmergencyRegiProcessiong;
    private final ISmsServiceInterface mImsService;
    private boolean[] mIsDeregisterTimerRunning;
    private boolean[] mIsDeregistering;
    private boolean mIsGeolocationResetTimerStarted;
    private boolean[] mIsInScbm;
    private boolean mIsRetryIfNoSubmitReport;
    private String mLastMOContentType;
    ConcurrentHashMap<Integer, RemoteCallbackList<ISmsServiceEventListener>> mListeners;
    private int mMaxPhoneCount;
    private MessagingAppInfoReceiver mMessagingAppInfoReceiver;
    private ConcurrentHashMap<Integer, SmsEvent> mPendingQueue;
    private int mRetransCount;
    private SmsLogger mSmsLogger;
    private boolean mStorageAvailable;
    private final TelephonyManager mTelephonyManager;
    private Handler mTimeoutHandler;

    private static class AlternativeService {
        String mAction;
        String mType;
    }

    enum EmergencyGeolocationState {
        NONE,
        UPDATING,
        UPDATED,
        TIMEOUT
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
    }

    public void sendSMSResponse(boolean z, int i) {
    }

    static {
        String simpleName = SmsServiceModule.class.getSimpleName();
        NAME = simpleName;
        LOG_TAG = simpleName;
        TIMER_SUBMIT_REPORT = 40000;
    }

    public static class AlternativeServiceXmlParser {
        public static AlternativeService parseXml(String str) throws XPathExpressionException {
            AlternativeService alternativeService = new AlternativeService();
            Log.d(SmsServiceModule.LOG_TAG, "AlternativeServiceXmlParser parseXml:" + str);
            XPath newXPath = XPathFactory.newInstance().newXPath();
            XPathExpression compile = newXPath.compile("/ims-3gpp/alternative-service");
            XPathExpression compile2 = newXPath.compile("type");
            XPathExpression compile3 = newXPath.compile("reason");
            XPathExpression compile4 = newXPath.compile("action");
            Node node = (Node) compile.evaluate(new InputSource(new StringReader(str)), XPathConstants.NODE);
            if (node == null) {
                return alternativeService;
            }
            String evaluate = compile2.evaluate(node);
            String evaluate2 = compile3.evaluate(node);
            String evaluate3 = compile4.evaluate(node);
            String trim = evaluate.trim();
            String trim2 = evaluate2.trim();
            String trim3 = evaluate3.trim();
            Log.d(SmsServiceModule.LOG_TAG, "parseXml:" + trim + "," + trim2 + "," + trim3);
            alternativeService.mType = trim;
            alternativeService.mAction = trim3;
            return alternativeService;
        }
    }

    public SmsServiceModule(Looper looper, Context context, ISmsServiceInterface iSmsServiceInterface) {
        super(looper);
        this.mSmsLogger = SmsLogger.getInstance();
        this.MAX_RETRANS_COUNT = 3;
        this.MAX_RETRANS_COUNT_SPR = 2;
        this.mListeners = new ConcurrentHashMap<>();
        this.mMessagingAppInfoReceiver = null;
        this.mIsRetryIfNoSubmitReport = false;
        this.mPendingQueue = new ConcurrentHashMap<>();
        this.mTimeoutHandler = null;
        this.m3GPP2SendingMsgId = -1;
        this.mLastMOContentType = null;
        this.mRetransCount = 0;
        this.mStorageAvailable = true;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.sms.SmsServiceModule.1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                char c;
                TelecomManager telecomManager;
                String action = intent.getAction();
                action.hashCode();
                switch (action.hashCode()) {
                    case -1926447105:
                        if (action.equals(ImsConstants.Intents.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED)) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1664867553:
                        if (action.equals("com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1326089125:
                        if (action.equals("android.intent.action.PHONE_STATE")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1262364259:
                        if (action.equals(ImsConstants.Intents.ACTION_DEVICE_STORAGE_NOT_FULL)) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 2038466647:
                        if (action.equals(ImsConstants.Intents.ACTION_DEVICE_STORAGE_FULL)) {
                            c = 4;
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
                    case 1:
                        int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                        if (intExtra >= SmsServiceModule.this.mMaxPhoneCount) {
                            intExtra = 0;
                        }
                        boolean booleanExtra = intent.getBooleanExtra("android.telephony.extra.PHONE_IN_ECM_STATE", false);
                        Log.d(SmsServiceModule.LOG_TAG, "mBroadcastReceiver.onReceive: " + action + ", ecmState: " + booleanExtra + ", phoneId: " + intExtra);
                        if (booleanExtra && SmsServiceModule.this.mIsInScbm[intExtra]) {
                            SmsServiceModule.this.mIsInScbm[intExtra] = false;
                            PreciseAlarmManager.getInstance(SmsServiceModule.this.mContext).removeMessage(SmsServiceModule.this.obtainMessage(7, Integer.valueOf(intExtra)));
                            SmsUtil.broadcastSCBMState(SmsServiceModule.this.mContext, false, intExtra);
                            break;
                        }
                        break;
                    case 2:
                        int intExtra2 = intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1);
                        String stringExtra = intent.getStringExtra("state");
                        if (intExtra2 == -1) {
                            if (stringExtra == null) {
                                stringExtra = PhoneConstants.State.IDLE.toString();
                            }
                            Log.d(SmsServiceModule.LOG_TAG, "mBroadcastReceiver.onReceive: " + action + ", newCallState: " + stringExtra);
                            if (SmsServiceModule.this.mIsInScbm[0] && PhoneConstants.State.OFFHOOK.toString().equals(stringExtra) && !PhoneConstants.State.OFFHOOK.toString().equals(SmsServiceModule.this.mCallState[0]) && (telecomManager = (TelecomManager) SmsServiceModule.this.mContext.getSystemService("telecom")) != null && telecomManager.isInEmergencyCall()) {
                                SmsServiceModule.this.mIsInScbm[0] = false;
                                PreciseAlarmManager.getInstance(SmsServiceModule.this.mContext).removeMessage(SmsServiceModule.this.obtainMessage(7, 0));
                                SmsUtil.broadcastSCBMState(SmsServiceModule.this.mContext, false, 0);
                                Log.d(SmsServiceModule.LOG_TAG, "SCBM timer was removed by E911 Call");
                            }
                            SmsServiceModule.this.mCallState[0] = stringExtra;
                            break;
                        }
                        break;
                    case 3:
                        SmsServiceModule.this.mStorageAvailable = true;
                        SmsServiceModule.this.mSmsLogger.logAndAdd(SmsServiceModule.LOG_TAG, "mBroadcastReceiver.onReceive: " + action);
                        break;
                    case 4:
                        SmsServiceModule.this.mStorageAvailable = false;
                        SmsServiceModule.this.mSmsLogger.logAndAdd(SmsServiceModule.LOG_TAG, "mBroadcastReceiver.onReceive: " + action);
                        break;
                }
            }
        };
        this.mMaxPhoneCount = 1;
        this.mIsGeolocationResetTimerStarted = false;
        this.mEmergencyGeolocationState = EmergencyGeolocationState.NONE;
        int phoneCount = SimUtil.getPhoneCount();
        this.mMaxPhoneCount = phoneCount;
        this.mEmergencyRegiProcessiong = new boolean[phoneCount];
        this.mIsInScbm = new boolean[phoneCount];
        this.mEmergencyPendingQueue = new ArrayList<>();
        this.mEmergencyGeolocationPendingQueue = new ArrayList<>();
        int i = this.mMaxPhoneCount;
        this.mCallState = new String[i];
        this.mIsDeregisterTimerRunning = new boolean[i];
        this.mIsDeregistering = new boolean[i];
        for (int i2 = 0; i2 < this.mMaxPhoneCount; i2++) {
            this.mEmergencyRegiProcessiong[i2] = false;
            this.mIsInScbm[i2] = false;
            this.mEmergencyPendingQueue.add(new LinkedList<>());
            this.mCallState[i2] = PhoneConstants.State.IDLE.toString();
            this.mIsDeregisterTimerRunning[i2] = false;
            this.mIsDeregistering[i2] = false;
        }
        this.mContext = context;
        this.mImsService = iSmsServiceInterface;
        this.mTelephonyManager = (TelephonyManager) context.getSystemService(com.sec.internal.constants.ims.os.PhoneConstants.PHONE_KEY);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_DEVICE_STORAGE_FULL);
        intentFilter.addAction(ImsConstants.Intents.ACTION_DEVICE_STORAGE_NOT_FULL);
        intentFilter.addAction(ImsConstants.Intents.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED);
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        this.mContext.registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String getName() {
        return getClass().getSimpleName();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"smsip"};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        super.start();
        this.mImsService.registerForSMSEvent(this, 1, null);
        this.mImsService.registerForRrcConnectionEvent(this, 2, null);
        if (this.mMessagingAppInfoReceiver == null) {
            MessagingAppInfoReceiver messagingAppInfoReceiver = new MessagingAppInfoReceiver(this.mContext, this);
            this.mMessagingAppInfoReceiver = messagingAppInfoReceiver;
            messagingAppInfoReceiver.registerReceiver();
        }
        this.mTimeoutHandler = new Handler(getLooper()) { // from class: com.sec.internal.ims.servicemodules.sms.SmsServiceModule.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Log.e(SmsServiceModule.LOG_TAG, "message timeout - what : " + message.what + ", obj : " + message.obj + ", mRetransCount :" + SmsServiceModule.this.mRetransCount);
                SmsLogger smsLogger = SmsServiceModule.this.mSmsLogger;
                StringBuilder sb = new StringBuilder();
                sb.append(SmsServiceModule.LOG_TAG);
                sb.append("_TIMEOUT");
                smsLogger.add(sb.toString(), "message timeout - what : " + message.what + ", obj : " + message.obj);
                SmsEvent smsEvent = (SmsEvent) message.obj;
                if (smsEvent == null) {
                    Log.e(SmsServiceModule.LOG_TAG, "the pending message doesn't exist");
                    return;
                }
                int phoneId = smsEvent.getImsRegistration() != null ? smsEvent.getImsRegistration().getPhoneId() : 0;
                SmsServiceModule.this.mPendingQueue.remove(Integer.valueOf(smsEvent.getMessageID()));
                Mno simMno = SimUtil.getSimMno(phoneId);
                if (simMno.isOrangeGPG() || simMno.isTmobile()) {
                    SmsServiceModule.this.MAX_RETRANS_COUNT = 1;
                }
                int messageID = smsEvent.getMessageID();
                if (smsEvent.getContentType().equals(GsmSmsUtil.CONTENT_TYPE_3GPP)) {
                    messageID = smsEvent.getTpMr();
                }
                int i = messageID;
                Log.d(SmsServiceModule.LOG_TAG, "msgId = " + smsEvent.getMessageID() + " tpMR = " + smsEvent.getTpMr());
                int i2 = message.what;
                if (i2 == 1) {
                    if (smsEvent.getState() == 102) {
                        int i3 = phoneId;
                        SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(SmsServiceModule.this.mContext, i3, DiagnosisConstants.RCSM_ORST_REGI, 0, "FF", true);
                        SmsServiceModule.this.onReceiveSMSAckInternal(i3, i, 10003, smsEvent.getContentType(), null, -1);
                        return;
                    }
                    return;
                }
                if (i2 == 2) {
                    if ((simMno == Mno.DOCOMO || simMno.isOrangeGPG() || simMno.isTmobile()) && SmsServiceModule.this.mRetransCount >= SmsServiceModule.this.MAX_RETRANS_COUNT) {
                        if (simMno.isOrangeGPG() || simMno.isTmobile()) {
                            int i4 = phoneId;
                            SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(SmsServiceModule.this.mContext, i4, DiagnosisConstants.RCSM_ORST_REGI, 404, null, true);
                            SmsServiceModule.this.onReceiveSMSAckInternal(i4, i, 404, smsEvent.getContentType(), null, SmsServiceModule.this.mRetransCount);
                            return;
                        }
                        SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(SmsServiceModule.this.mContext, phoneId, DiagnosisConstants.RCSM_ORST_REGI, 408, null, true);
                        return;
                    }
                    if (simMno.isSprint() && SmsServiceModule.this.mRetransCount >= SmsServiceModule.this.MAX_RETRANS_COUNT_SPR) {
                        int i5 = phoneId;
                        SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(SmsServiceModule.this.mContext, i5, DiagnosisConstants.RCSM_ORST_REGI, 801, null, true);
                        SmsServiceModule.this.onReceiveSMSAckInternal(i5, i, 801, smsEvent.getContentType(), null, -1);
                        return;
                    }
                    SmsServiceModule.this.retryToSendMessage(phoneId, smsEvent);
                    return;
                }
                if (i2 == 3 && SmsServiceModule.this.mRetransCount < 1) {
                    SmsServiceModule.this.retryToSendMessage(phoneId, smsEvent);
                }
            }
        };
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.d(LOG_TAG, "onConfigured:");
        this.mEnabledFeatures[i] = 0;
        if (SimUtil.getSimMno(i).isOrangeGPG()) {
            TIMER_SUBMIT_REPORT = Id.NOTIFY_MISC_BASE_ID;
        } else {
            TIMER_SUBMIT_REPORT = 40000;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onSimReady(int i) {
        SmsUtil.broadcastDcnNumber(this.mContext, i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        super.onRegistered(imsRegistration);
        int phoneId = imsRegistration.getPhoneId();
        this.mIsDeregistering[phoneId] = false;
        Log.i(LOG_TAG, "Registered to SMS service. " + imsRegistration);
        updateCapabilities(phoneId);
        this.mImsService.setMsgAppInfoToSipUa(phoneId, this.mMessagingAppInfoReceiver.mMsgAppVersion);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        Log.i(LOG_TAG, "Deregistered from SMS service. reason " + i);
        this.mIsDeregistering[imsRegistration.getPhoneId()] = false;
        updateCapabilities(imsRegistration.getPhoneId());
        if (SimUtil.getSimMno(imsRegistration.getPhoneId()) == Mno.BSNL && this.mLastMOContentType != null) {
            fallbackForSpecificReason(NOTI_DEREGISTERED);
        }
        super.onDeregistered(imsRegistration, i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        Log.i(LOG_TAG, "handleMessage() - what : " + message.what);
        switch (message.what) {
            case 1:
                handleSmsEvent((SmsEvent) ((AsyncResult) message.obj).result);
                break;
            case 2:
                handleRRCConnection((RrcConnectionEvent) ((AsyncResult) message.obj).result);
                break;
            case 3:
                SmsEvent smsEvent = (SmsEvent) message.obj;
                sendSMSOverIMS(smsEvent.getEventType(), smsEvent.getData(), smsEvent.getSmscAddr(), smsEvent.getContentType(), smsEvent.getMessageID(), false);
                break;
            case 4:
                SmsEvent smsEvent2 = (SmsEvent) message.obj;
                ImsRegistry.getRegistrationManager().startEmergencyRegistration(smsEvent2.getEventType(), obtainMessage(5, smsEvent2));
                break;
            case 5:
                handleEmergencyRegisterDone((SmsEvent) message.obj);
                break;
            case 6:
                handleEmergencyRegisterFail((SmsEvent) message.obj);
                break;
            case 7:
                int intValue = ((Integer) message.obj).intValue();
                this.mIsInScbm[intValue] = false;
                PreciseAlarmManager.getInstance(this.mContext).removeMessage(obtainMessage(7, Integer.valueOf(intValue)));
                ImsRegistry.getRegistrationManager().stopEmergencyRegistration(intValue);
                SmsUtil.broadcastSCBMState(this.mContext, false, intValue);
                break;
            case 8:
                this.mIsGeolocationResetTimerStarted = false;
                this.mEmergencyGeolocationState = EmergencyGeolocationState.NONE;
                break;
            case 9:
                int intValue2 = ((Integer) message.obj).intValue();
                this.mEmergencyGeolocationState = EmergencyGeolocationState.TIMEOUT;
                IGeolocationController geolocationController = ImsRegistry.getGeolocationController();
                if (geolocationController != null && !geolocationController.updateGeolocationFromLastKnown(intValue2)) {
                    sendPendingEmergencySmsWithGeolocation();
                }
                if (!this.mIsGeolocationResetTimerStarted) {
                    this.mIsGeolocationResetTimerStarted = true;
                    sendMessageDelayed(obtainMessage(8), 1000L);
                    break;
                }
                break;
            case 10:
                if (this.mEmergencyGeolocationState == EmergencyGeolocationState.UPDATING) {
                    this.mEmergencyGeolocationState = EmergencyGeolocationState.UPDATED;
                    removeMessages(9);
                }
                sendPendingEmergencySmsWithGeolocation();
                if (!this.mIsGeolocationResetTimerStarted) {
                    this.mIsGeolocationResetTimerStarted = true;
                    sendMessageDelayed(obtainMessage(8), 1000L);
                    break;
                }
                break;
        }
    }

    private void handleSmsEvent(SmsEvent smsEvent) {
        Log.i(LOG_TAG, "handleSmsEvent coming " + smsEvent.toString());
        int eventType = smsEvent.getEventType();
        if (eventType == 11) {
            onReceiveOtherInfo(smsEvent);
        } else if (eventType == 12) {
            onReceiveNotiInfo(smsEvent);
        } else {
            onReceiveSmsMessage(smsEvent);
        }
    }

    private void handleRRCConnection(RrcConnectionEvent rrcConnectionEvent) {
        Log.d(LOG_TAG, "rrcEvent.getEvent() : " + rrcConnectionEvent.getEvent());
        if (SimManagerFactory.getSimManager().getSimMno() != Mno.VZW) {
            return;
        }
        if ((rrcConnectionEvent.getEvent() == RrcConnectionEvent.RrcEvent.REJECTED || rrcConnectionEvent.getEvent() == RrcConnectionEvent.RrcEvent.TIMER_EXPIRED) && this.mLastMOContentType != null) {
            fallbackForSpecificReason(800);
        }
    }

    private void onReceiveSmsMessage(SmsEvent smsEvent) {
        int i;
        String contentType = smsEvent.getContentType();
        int i2 = GsmSmsUtil.get3gppRPError(smsEvent.getContentType(), smsEvent.getData());
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = smsEvent.getPhoneId();
        if (imsRegistration != null) {
            phoneId = imsRegistration.getPhoneId();
            i = imsRegistration.getSubscriptionId();
        } else {
            i = -1;
        }
        int i3 = phoneId;
        int i4 = i;
        Log.i(LOG_TAG, "onReceiveSmsMessage: errorCode=" + i2);
        if (i2 <= 0 && !GsmSmsUtil.isAck(contentType, smsEvent.getData())) {
            onReceiveIncomingSms(smsEvent, contentType, i3, i4, imsRegistration);
        } else {
            onReceiveAck(smsEvent, contentType, i3, i4, imsRegistration, i2);
        }
    }

    private void onReceiveIncomingSms(SmsEvent smsEvent, String str, int i, int i2, ImsRegistration imsRegistration) {
        boolean z;
        String subscriberId = TelephonyManagerExt.getSubscriberId(this.mTelephonyManager, i2);
        boolean z2 = false;
        if (SimUtil.getSimMno(i) == Mno.VZW && imsRegistration != null) {
            if (TextUtils.isEmpty(subscriberId) || !imsRegistration.isImsiBased(subscriberId)) {
                z = false;
            } else {
                Log.d(LOG_TAG, "onReceiveIncomingSms: isLimitedRegi = true");
                z = true;
            }
            if (this.mIsInScbm[i]) {
                if (str.equals(GsmSmsUtil.CONTENT_TYPE_3GPP) && smsEvent.getData() != null && GsmSmsUtil.is911FromPdu(GsmSmsUtil.get3gppTpduFromPdu(smsEvent.getData()))) {
                    z2 = true;
                }
                if (imsRegistration.getImsProfile().hasEmergencySupport() || z2) {
                    PreciseAlarmManager.getInstance(this.mContext).removeMessage(obtainMessage(7, Integer.valueOf(i)));
                    PreciseAlarmManager.getInstance(this.mContext).sendMessageDelayed(obtainMessage(7, Integer.valueOf(i)), 300000L);
                }
            }
            z2 = z;
        }
        if (str.equals(GsmSmsUtil.CONTENT_TYPE_3GPP)) {
            if (z2 && smsEvent.getData() != null && !GsmSmsUtil.isAdminMsg(GsmSmsUtil.get3gppTpduFromPdu(smsEvent.getData()))) {
                this.mImsService.sendSMSResponse(i, smsEvent.getCallID(), 404);
                return;
            }
            onReceive3GPPIncomingSms(smsEvent);
        } else if (str.equals(CdmaSmsUtil.CONTENT_TYPE_3GPP2)) {
            if (z2 && smsEvent.getData() != null && !CdmaSmsUtil.isAdminMsg(smsEvent.getData())) {
                this.mImsService.sendSMSResponse(i, smsEvent.getCallID(), 404);
                return;
            } else {
                if (!this.mStorageAvailable) {
                    this.mSmsLogger.logAndAdd(LOG_TAG, "incoming sms but mStorageAvailable = false");
                    this.mImsService.sendSMSResponse(i, smsEvent.getCallID(), 480);
                    onReceive3GPP2IncomingSms(smsEvent);
                    return;
                }
                onReceive3GPP2IncomingSms(smsEvent);
            }
        } else {
            SmsUtil.sendSmotInfoToHQM(this.mContext, i, "1", "SSM_onReceiveIncomingSms_noContentType", true);
        }
        this.mImsService.sendSMSResponse(i, smsEvent.getCallID(), 200);
    }

    private void onReceive3GPPIncomingSms(SmsEvent smsEvent) {
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : 0;
        if (smsEvent.getData() == null || smsEvent.getCallID() == null || smsEvent.getSmscAddr() == null) {
            SmsUtil.sendSmotInfoToHQM(this.mContext, phoneId, "1", "SSM_onReceive3GPPIncomingSms_WrongFormat", true);
            return;
        }
        byte[] bArr = GsmSmsUtil.get3gppTpduFromPdu(smsEvent.getData());
        if (bArr == null) {
            Log.e(LOG_TAG, "incoming tpdu is null. send RP Error report" + smsEvent.getCallID() + "] SmscAddr [" + smsEvent.getSmscAddr() + "]");
            SmsUtil.sendSmotInfoToHQM(this.mContext, phoneId, "1", "SSM_onReceive3GPPIncomingSms_tPduNull", true);
            String trimSipAddr = GsmSmsUtil.trimSipAddr(smsEvent.getSmscAddr());
            byte[] makeRPErrorPdu = GsmSmsUtil.makeRPErrorPdu(smsEvent.getData());
            if (makeRPErrorPdu == null) {
                SmsUtil.sendSmotInfoToHQM(this.mContext, phoneId, "1", "SSM_onReceive3GPPIncomingSms_deliverPduNull", true);
                return;
            } else {
                this.mLastMOContentType = GsmSmsUtil.CONTENT_TYPE_3GPP;
                this.mImsService.sendMessage(trimSipAddr, SmsUtil.getLocalUri(imsRegistration), GsmSmsUtil.CONTENT_TYPE_3GPP, makeRPErrorPdu, true, smsEvent.getCallID(), 0, smsEvent.getImsRegistration() != null ? smsEvent.getImsRegistration().getHandle() : 0, false);
                return;
            }
        }
        if (smsEvent.getData().length <= 1) {
            SmsUtil.sendSmotInfoToHQM(this.mContext, phoneId, "1", "SSM_onReceive3GPPIncomingSms_DataError", true);
            return;
        }
        SmsEvent smsEvent2 = new SmsEvent();
        smsEvent2.setContentType(smsEvent.getContentType());
        smsEvent2.setRpRef(smsEvent.getData()[1] & 255);
        smsEvent2.setSmscAddr(GsmSmsUtil.trimSipAddr(GsmSmsUtil.removeDisplayName(smsEvent.getSmscAddr())));
        smsEvent2.setMessageID(smsEvent.getMessageID() & 255);
        smsEvent2.setCallID(smsEvent.getCallID());
        smsEvent2.setData(bArr);
        if (smsEvent2.getRpRef() != -1 && smsEvent2.getSmscAddr() != null) {
            if (GsmSmsUtil.isStatusReport(bArr)) {
                smsEvent2.setMessageID(SmsUtil.getNewMsgId() & 255);
                smsEvent2.setState(104);
                Handler handler = this.mTimeoutHandler;
                if (handler != null) {
                    handler.sendMessageDelayed(handler.obtainMessage(1, smsEvent2), 180000L);
                }
            } else {
                smsEvent2.setMessageID(SmsUtil.getNewMsgId() & 255);
                smsEvent2.setState(103);
                byte[] tPPidDcsFromPdu = GsmSmsUtil.getTPPidDcsFromPdu(bArr);
                if (tPPidDcsFromPdu != null) {
                    smsEvent2.setTpPid(tPPidDcsFromPdu[0]);
                    smsEvent2.setTpDcs(tPPidDcsFromPdu[1]);
                    Log.i(LOG_TAG, "Incoming SMS new setMessageID : " + smsEvent2.getMessageID() + " TpPid : " + smsEvent2.getTpPid() + " TpDcs : " + smsEvent2.getTpDcs());
                }
                Handler handler2 = this.mTimeoutHandler;
                if (handler2 != null) {
                    handler2.sendMessageDelayed(handler2.obtainMessage(1, smsEvent2), 180000L);
                }
            }
            this.mPendingQueue.put(Integer.valueOf(smsEvent2.getMessageID()), smsEvent2);
        }
        SmsLogger smsLogger = this.mSmsLogger;
        String str = LOG_TAG;
        smsLogger.logAndAdd(str, "onReceive3GPPIncomingSms: " + smsEvent2);
        Log.i(str + '/' + phoneId, "onReceive3GPPIncomingSms");
        IMSLog.c(LogClass.SMS_RECEIVE_MSG_3GPP, phoneId + "," + smsEvent2.toKeyDump());
        SmsUtil.storeMtSmsInfoOfDrcsToImsLogAgent(this.mContext, phoneId);
        if (this.mListeners.containsKey(Integer.valueOf(phoneId))) {
            RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(phoneId));
            try {
                if (remoteCallbackList != null) {
                    try {
                        int beginBroadcast = remoteCallbackList.beginBroadcast();
                        while (beginBroadcast > 0) {
                            int i = beginBroadcast - 1;
                            try {
                                remoteCallbackList.getBroadcastItem(i).onReceiveIncomingSMS(smsEvent2.getMessageID(), smsEvent2.getContentType(), smsEvent2.getData());
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                            beginBroadcast = i;
                        }
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                    }
                }
            } finally {
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    private void onReceive3GPP2IncomingSms(SmsEvent smsEvent) {
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : 0;
        if (smsEvent.getData() == null) {
            SmsUtil.sendSmotInfoToHQM(this.mContext, phoneId, "1", "SSM_onReceive3GPP2IncomingSms_WrongFormat", true);
            return;
        }
        if (!CdmaSmsUtil.isValid3GPP2PDU(smsEvent.getData())) {
            SmsUtil.sendSmotInfoToHQM(this.mContext, phoneId, "1", "SSM_onReceive3GPP2IncomingSms_InvalidPdu", true);
            return;
        }
        SmsLogger smsLogger = this.mSmsLogger;
        String str = LOG_TAG;
        smsLogger.logAndAdd(str, "onReceive3GPP2IncomingSms: " + smsEvent);
        Log.i(str + '/' + phoneId, "onReceive3GPP2IncomingSms");
        IMSLog.c(LogClass.SMS_RECEIVE_MSG_3GPP2, phoneId + "," + smsEvent.toKeyDump());
        SmsUtil.storeMtSmsInfoOfDrcsToImsLogAgent(this.mContext, phoneId);
        if (this.mListeners.containsKey(Integer.valueOf(phoneId))) {
            RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(phoneId));
            try {
                if (remoteCallbackList != null) {
                    try {
                        int beginBroadcast = remoteCallbackList.beginBroadcast();
                        while (beginBroadcast > 0) {
                            beginBroadcast--;
                            try {
                                remoteCallbackList.getBroadcastItem(beginBroadcast).onReceiveIncomingSMS(smsEvent.getMessageID(), smsEvent.getContentType(), smsEvent.getData());
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                        }
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                    }
                }
            } finally {
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    private void onReceiveAck(SmsEvent smsEvent, String str, int i, int i2, ImsRegistration imsRegistration, int i3) {
        boolean onReceive3GPP2SmsAck;
        int i4;
        boolean onReceive3GPPSmsAck;
        int messageIdByCallId;
        if (imsRegistration == null && smsEvent.getReasonCode() == 408) {
            this.m3GPP2SendingMsgId = -1;
            SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, i, DiagnosisConstants.RCSM_ORST_REGI, 408, null, false);
            return;
        }
        String callID = smsEvent.getCallID();
        if (smsEvent.getData() == null) {
            i4 = (callID == null || (messageIdByCallId = SmsUtil.getMessageIdByCallId(this.mPendingQueue, callID)) <= -1) ? -1 : this.mPendingQueue.get(Integer.valueOf(messageIdByCallId)).getTpMr();
            onReceive3GPP2SmsAck = onReceiveSipResponse(smsEvent);
        } else {
            if (str.equals(GsmSmsUtil.CONTENT_TYPE_3GPP)) {
                if (SimUtil.getSimMno(i) == Mno.KT && GsmSmsUtil.isRPErrorForRetransmission(i3)) {
                    SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, i, "2", 0, String.format("%02X", Byte.valueOf((byte) i3)), true);
                    onReceive3GPPSmsAck = onReceive3GPPSmsRpError(smsEvent);
                } else {
                    onReceive3GPPSmsAck = onReceive3GPPSmsAck(smsEvent);
                }
                onReceive3GPP2SmsAck = onReceive3GPPSmsAck;
            } else {
                onReceive3GPP2SmsAck = str.equals(CdmaSmsUtil.CONTENT_TYPE_3GPP2) ? onReceive3GPP2SmsAck(smsEvent) : false;
            }
            i4 = -1;
        }
        if (onReceive3GPP2SmsAck) {
            return;
        }
        if (i3 > 0) {
            smsEvent.setReasonCode(GsmSmsUtil.getRilRPErrCode(i3));
            smsEvent.setData(GsmSmsUtil.get3gppTpduFromPdu(smsEvent.getData()));
            if (ImsGateConfig.isGateEnabled()) {
                IMSLog.g("GATE", "<GATE-M>SMS_GENERIC_FAILURE</GATE-M>");
            }
        }
        Log.i(LOG_TAG + '/' + i, "onReceiveAck");
        if (smsEvent.getTpMr() != 0) {
            i4 = smsEvent.getTpMr();
        }
        broadcastOnReceiveSMSAck(i, i4, smsEvent.getReasonCode(), smsEvent.getContentType(), smsEvent.getData(), smsEvent.getRetryAfter());
        this.m3GPP2SendingMsgId = -1;
    }

    private boolean onReceiveSipResponse(SmsEvent smsEvent) {
        String callID = smsEvent.getCallID();
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = smsEvent.getPhoneId();
        if (imsRegistration != null) {
            phoneId = imsRegistration.getPhoneId();
        }
        int i = phoneId;
        Mno simMno = SimUtil.getSimMno(i);
        if (!simMno.isEur() && smsEvent.getReasonCode() == 708) {
            smsEvent.setReasonCode(408);
        }
        SmsLogger smsLogger = this.mSmsLogger;
        String str = LOG_TAG;
        smsLogger.logAndAdd(str, "onReceiveSipResponse: " + smsEvent);
        IMSLog.c(LogClass.SMS_RECEIVE_SIP_RESPONSE, i + "," + smsEvent.toKeyDump());
        int messageIdByCallId = callID != null ? SmsUtil.getMessageIdByCallId(this.mPendingQueue, smsEvent.getCallID()) : -1;
        if (messageIdByCallId >= 0) {
            SmsEvent remove = this.mPendingQueue.remove(Integer.valueOf(messageIdByCallId));
            int state = remove.getState();
            if (state == 101) {
                return handleMOReceivingCallID(smsEvent, remove, imsRegistration, i, simMno);
            }
            if (state != 106) {
                return false;
            }
            handleMTReceivingDeliverReportAck(smsEvent, remove, imsRegistration, i);
            return true;
        }
        if (smsEvent.getData() != null) {
            return false;
        }
        Log.i(str + '/' + i, "onReceiveSipResponse");
        int reasonCode = smsEvent.getReasonCode();
        String reason = smsEvent.getReason();
        SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, i, "1", reasonCode, null, true);
        if (simMno == Mno.VZW && reasonCode == 503 && !TextUtils.isEmpty(reason) && reason.contains("Outage")) {
            reasonCode = NOTI_503_OUTAGE;
        }
        int i2 = reasonCode;
        int i3 = this.m3GPP2SendingMsgId;
        if (i3 < 0) {
            i3 = smsEvent.getMessageID();
        }
        this.m3GPP2SendingMsgId = -1;
        broadcastOnReceiveSMSAck(i, i3, i2, CdmaSmsUtil.CONTENT_TYPE_3GPP2, null, -1);
        if (smsEvent.getReasonCode() < 300 || imsRegistration == null) {
            return true;
        }
        SmsUtil.onSipError(imsRegistration, smsEvent.getReasonCode(), smsEvent.getReason());
        return true;
    }

    private boolean onReceive3GPPSmsRpError(SmsEvent smsEvent) {
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : 0;
        if (smsEvent.getData() != null) {
            SmsEvent remove = smsEvent.getData().length > 0 ? this.mPendingQueue.remove(Integer.valueOf(SmsUtil.getMessageIdByPdu(this.mPendingQueue, smsEvent.getData()))) : null;
            if (remove == null) {
                Log.e(LOG_TAG, "unexpected RP-ERROR");
                return false;
            }
            SmsLogger smsLogger = this.mSmsLogger;
            String str = LOG_TAG;
            smsLogger.logAndAdd(str, "onReceive3GPPSmsRpError: " + remove);
            IMSLog.c(LogClass.SMS_RECEIVE_3GPP_RP_ERR, phoneId + "," + remove.toKeyDump());
            Handler handler = this.mTimeoutHandler;
            if (handler != null) {
                handler.removeMessages(1, remove);
                if (this.mIsRetryIfNoSubmitReport) {
                    this.mTimeoutHandler.removeMessages(2, remove);
                }
            }
            if (this.mRetransCount < 1) {
                Log.i(str, "retry to send message on RP-ERROR");
                Handler handler2 = this.mTimeoutHandler;
                if (handler2 != null) {
                    handler2.sendMessage(handler2.obtainMessage(3, remove));
                }
                this.mPendingQueue.put(Integer.valueOf(remove.getMessageID()), remove);
                return true;
            }
        }
        return false;
    }

    private boolean onReceive3GPPSmsAck(SmsEvent smsEvent) {
        SmsEvent smsEvent2;
        int i;
        String str = Build.TYPE;
        if (("eng".equals(str) || "userdebug".equals(str)) && ConfigConstants.VALUE.INFO_COMPLETED.equals(SemSystemProperties.get("ro.product_ship", CloudMessageProviderContract.JsonData.TRUE)) && CloudMessageProviderContract.JsonData.TRUE.equals(SemSystemProperties.get("ril.ims.smstest.ignoreack", ConfigConstants.VALUE.INFO_COMPLETED))) {
            Log.i(LOG_TAG, "Ignore ack for test");
            SemSystemProperties.set("ril.ims.smstest.ignoreack", ConfigConstants.VALUE.INFO_COMPLETED);
            return true;
        }
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : 0;
        if (smsEvent.getData() != null) {
            if (smsEvent.getData().length > 0) {
                i = SmsUtil.getMessageIdByPdu(this.mPendingQueue, smsEvent.getData());
                smsEvent2 = this.mPendingQueue.remove(Integer.valueOf(i));
            } else {
                smsEvent2 = null;
                i = -1;
            }
            SmsEvent smsEvent3 = smsEvent2;
            if (smsEvent3 == null) {
                this.mSmsLogger.logAndAdd(LOG_TAG, "unexpected SUBMIT report - pendingMessage is null");
                return false;
            }
            int state = smsEvent3.getState();
            if (state < 100 || state > 102) {
                this.mSmsLogger.logAndAdd(LOG_TAG, "unexpected SUBMIT report - pendingState is " + state);
                this.mPendingQueue.put(Integer.valueOf(i), smsEvent3);
            } else {
                Handler handler = this.mTimeoutHandler;
                if (handler != null) {
                    handler.removeMessages(1, smsEvent3);
                    if (this.mIsRetryIfNoSubmitReport) {
                        this.mTimeoutHandler.removeMessages(2, smsEvent3);
                    }
                }
                smsEvent3.setData(GsmSmsUtil.get3gppTpduFromPdu(smsEvent.getData()));
                smsEvent3.setContentType(smsEvent.getContentType());
                smsEvent3.setRetryAfter(smsEvent.getRetryAfter());
                int i2 = GsmSmsUtil.get3gppRPError(smsEvent.getContentType(), smsEvent.getData());
                if (i2 > 0) {
                    SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, phoneId, "2", 0, String.format("%02X", Byte.valueOf((byte) i2)), true);
                    smsEvent3.setReasonCode(GsmSmsUtil.getRilRPErrCode(i2));
                } else {
                    SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, phoneId, "0", 0, "00", true);
                    smsEvent3.setReasonCode(0);
                }
                SmsLogger smsLogger = this.mSmsLogger;
                String str2 = LOG_TAG;
                smsLogger.logAndAdd(str2, "onReceive3GPPSmsAck: " + smsEvent3);
                IMSLog.c(LogClass.SMS_RECEIVE_3GPP_ACK, phoneId + "," + smsEvent3.toKeyDump());
                if (GsmSmsUtil.isAck(smsEvent.getContentType(), smsEvent.getData())) {
                    synchronized (this.mListeners) {
                        Log.i(str2 + '/' + phoneId, "onReceive3GPPSmsAck");
                        broadcastOnReceiveSMSAck(phoneId, smsEvent3.getTpMr(), smsEvent3.getReasonCode(), smsEvent3.getContentType(), smsEvent3.getData(), smsEvent3.getRetryAfter());
                    }
                    return true;
                }
                if (smsEvent.getTpMr() == 0) {
                    smsEvent.setTpMr(smsEvent3.getTpMr());
                }
            }
        }
        return false;
    }

    private boolean onReceive3GPP2SmsAck(SmsEvent smsEvent) {
        int reasonCode = smsEvent.getReasonCode();
        if (reasonCode == 100) {
            return true;
        }
        ImsRegistration imsRegistration = smsEvent.getImsRegistration();
        int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : 0;
        int i = this.m3GPP2SendingMsgId;
        if (i < 0) {
            i = smsEvent.getMessageID();
        }
        SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, phoneId, "1", reasonCode, null, true);
        Log.i(LOG_TAG + '/' + phoneId, "onReceive3GPP2SmsAck");
        broadcastOnReceiveSMSAck(phoneId, i, reasonCode, smsEvent.getContentType(), smsEvent.getData(), smsEvent.getRetryAfter());
        return true;
    }

    private void onReceiveNotiInfo(SmsEvent smsEvent) {
        int messageID = smsEvent.getMessageID();
        if (messageID < 0) {
            return;
        }
        SmsEvent remove = this.mPendingQueue.remove(Integer.valueOf(messageID));
        if (remove != null) {
            int state = remove.getState();
            if (state == 100) {
                remove.setState(101);
                remove.setCallID(smsEvent.getCallID());
                this.mPendingQueue.put(Integer.valueOf(messageID), remove);
                return;
            } else {
                if (state != 105) {
                    return;
                }
                remove.setState(106);
                remove.setCallID(smsEvent.getCallID());
                this.mPendingQueue.put(Integer.valueOf(messageID), remove);
                return;
            }
        }
        Log.e(LOG_TAG, "no pending message");
    }

    private void onReceiveOtherInfo(SmsEvent smsEvent) {
        int messageID = smsEvent.getMessageID();
        String contentType = smsEvent.getContentType();
        if (messageID >= 0 && smsEvent.getReasonCode() == NOTI_DEREGISTERED) {
            String str = LOG_TAG;
            Log.e(str, "cannot send message as NOTI_DEREGISTERED");
            ImsRegistration imsRegistration = smsEvent.getImsRegistration();
            int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : 0;
            if (contentType.equals(GsmSmsUtil.CONTENT_TYPE_3GPP)) {
                SmsEvent remove = this.mPendingQueue.remove(Integer.valueOf(messageID));
                if (remove == null) {
                    Log.e(str, "no pending message");
                    return;
                }
                Log.d(str, "remove pending message");
                remove.setReasonCode(NOTI_DEREGISTERED);
                remove.setRetryAfter(-1);
                this.m3GPP2SendingMsgId = messageID;
                messageID = remove.getTpMr();
            }
            SmsUtil.sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(this.mContext, phoneId, "1", NOTI_DEREGISTERED, null, false);
            Log.i(str + '/' + phoneId, "onReceiveOtherInfo");
            broadcastOnReceiveSMSAck(phoneId, messageID, NOTI_DEREGISTERED, contentType, null, -1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d0, code lost:
    
        if (com.sec.internal.ims.servicemodules.sms.SmsServiceModule.ASVC_INITIAL_REGISTRATION.equals(r0.mAction) != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f5, code lost:
    
        if (r16.getReasonCode() == 408) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0127, code lost:
    
        if (com.sec.internal.ims.servicemodules.sms.SmsServiceModule.ASVC_INITIAL_REGISTRATION.equals(r0.mAction) != false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean handleMOReceivingCallID(com.sec.internal.ims.servicemodules.sms.SmsEvent r16, com.sec.internal.ims.servicemodules.sms.SmsEvent r17, com.sec.ims.ImsRegistration r18, int r19, com.sec.internal.constants.Mno r20) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.sms.SmsServiceModule.handleMOReceivingCallID(com.sec.internal.ims.servicemodules.sms.SmsEvent, com.sec.internal.ims.servicemodules.sms.SmsEvent, com.sec.ims.ImsRegistration, int, com.sec.internal.constants.Mno):boolean");
    }

    private void handleMTReceivingDeliverReportAck(SmsEvent smsEvent, SmsEvent smsEvent2, ImsRegistration imsRegistration, int i) {
        Handler handler = this.mTimeoutHandler;
        if (handler != null) {
            handler.removeMessages(1, smsEvent2);
        }
        if (smsEvent.getReasonCode() >= 300 && imsRegistration != null) {
            if (smsEvent.getRetryAfter() > 0) {
                this.mPendingQueue.put(Integer.valueOf(smsEvent2.getMessageID()), smsEvent2);
                Handler handler2 = this.mTimeoutHandler;
                if (handler2 != null) {
                    handler2.sendMessageDelayed(handler2.obtainMessage(1, smsEvent2), 180000L);
                }
            }
            SmsUtil.onSipError(imsRegistration, smsEvent.getReasonCode(), smsEvent.getReason());
        }
        Log.i(LOG_TAG + '/' + i, "onReceiveSipResponse");
        if (this.mListeners.containsKey(Integer.valueOf(i))) {
            RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(i));
            try {
                if (remoteCallbackList != null) {
                    try {
                        int beginBroadcast = remoteCallbackList.beginBroadcast();
                        while (beginBroadcast > 0) {
                            beginBroadcast--;
                            try {
                                remoteCallbackList.getBroadcastItem(beginBroadcast).onReceiveSMSDeliveryReportAck(smsEvent2.getMessageID(), smsEvent.getReasonCode(), smsEvent.getRetryAfter());
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                        }
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                    }
                }
            } finally {
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    private void sendPendingEmergencySms(int i) {
        Log.d(LOG_TAG, "sendPendingEmergencySms");
        LinkedList<SmsEvent> linkedList = this.mEmergencyPendingQueue.get(i);
        this.mEmergencyPendingQueue.set(i, new LinkedList<>());
        while (!linkedList.isEmpty()) {
            sendMessage(obtainMessage(3, linkedList.remove()));
        }
    }

    private void sendPendingEmergencySmsWithGeolocation() {
        Log.d(LOG_TAG, "sendPendingEmergencySmsWithGeolocation : " + this.mEmergencyGeolocationState.toString());
        while (!this.mEmergencyGeolocationPendingQueue.isEmpty()) {
            sendMessage(obtainMessage(3, this.mEmergencyGeolocationPendingQueue.remove(0)));
        }
    }

    private void failPendingEmergencySms(int i) {
        Log.d(LOG_TAG, "failPendingEmergencySms");
        LinkedList<SmsEvent> linkedList = this.mEmergencyPendingQueue.get(i);
        this.mEmergencyPendingQueue.set(i, new LinkedList<>());
        while (!linkedList.isEmpty()) {
            SmsEvent remove = linkedList.remove();
            onReceiveSMSAckInternal(i, remove.getMessageID(), 10002, remove.getContentType(), null, -1);
        }
    }

    private void handleEmergencyRegisterDone(SmsEvent smsEvent) {
        String str = LOG_TAG;
        Log.d(str, "handleEmergencyRegisterDone");
        int eventType = smsEvent.getEventType();
        if (this.mEmergencyRegiProcessiong[eventType]) {
            removeMessages(6, smsEvent);
            if (getImsRegistration(eventType, true) != null) {
                this.mEmergencyRegiProcessiong[eventType] = false;
                sendPendingEmergencySms(eventType);
            } else {
                Log.d(str, "handleEmergencyRegisterDone: Emergency Regi failed.");
                sendMessage(obtainMessage(6, smsEvent));
            }
        }
    }

    private void handleEmergencyRegisterFail(SmsEvent smsEvent) {
        Log.d(LOG_TAG, "handleEmergencyRegisterFail");
        int eventType = smsEvent.getEventType();
        boolean[] zArr = this.mEmergencyRegiProcessiong;
        if (zArr[eventType]) {
            zArr[eventType] = false;
            failPendingEmergencySms(eventType);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public void registerForSMSStateChange(int i, ISmsServiceEventListener iSmsServiceEventListener) {
        StringBuilder sb = new StringBuilder();
        String str = LOG_TAG;
        sb.append(str);
        sb.append(i);
        Log.i(sb.toString(), "registerForSMSStateChange[" + i + "]");
        if (!this.mListeners.containsKey(Integer.valueOf(i))) {
            this.mListeners.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(i));
        if (remoteCallbackList != null) {
            Log.i(str + i, "registerForSMSStateChange register");
            remoteCallbackList.register(iSmsServiceEventListener);
        }
    }

    public void deRegisterForSMSStateChange(int i, ISmsServiceEventListener iSmsServiceEventListener) {
        RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList;
        Log.i(LOG_TAG + i, "deRegisterForSMSStateChange[" + i + "]");
        if (!this.mListeners.containsKey(Integer.valueOf(i)) || (remoteCallbackList = this.mListeners.get(Integer.valueOf(i))) == null) {
            return;
        }
        remoteCallbackList.unregister(iSmsServiceEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public void handleEventDefaultAppChanged() {
        Log.d(LOG_TAG, "handleEventDefaultAppChanged");
        for (int i = 0; i < this.mTelephonyManager.getPhoneCount(); i++) {
            if (isRegistered(i)) {
                this.mMessagingAppInfoReceiver.registerReceiver();
                Log.i(LOG_TAG, "onChange[" + i + "] : MessageApplication is changed. MsgApp = " + this.mMessagingAppInfoReceiver.mDefaultMsgApp + ", Version = " + this.mMessagingAppInfoReceiver.mMsgAppVersion);
                this.mImsService.setMsgAppInfoToSipUa(i, this.mMessagingAppInfoReceiver.mMsgAppVersion);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0177 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0178  */
    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void sendSMSOverIMS(int r33, byte[] r34, java.lang.String r35, java.lang.String r36, int r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 753
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.sms.SmsServiceModule.sendSMSOverIMS(int, byte[], java.lang.String, java.lang.String, int, boolean):void");
    }

    private SmsEvent make3gppSMS(SmsEvent smsEvent, byte[] bArr, String str, Mno mno, int i, int i2, String str2, ImsRegistration imsRegistration, boolean z) {
        smsEvent.setRpRef(SmsUtil.getIncreasedRPRef());
        String scaForRpDa = GsmSmsUtil.getScaForRpDa(z, bArr, str, mno);
        if ("noSCA".equals(scaForRpDa)) {
            SmsUtil.sendSmotInfoToHQM(this.mContext, i, "0", "SSM_sendSMSOverIMS_emptySCA", true);
            onReceiveSMSAckInternal(i, i2, 10001, str2, null, -1);
            return null;
        }
        String sca = GsmSmsUtil.getSca(scaForRpDa, str, mno, imsRegistration);
        if (!z) {
            if (mno != Mno.VZW) {
                scaForRpDa = sca;
            }
            smsEvent.setData(GsmSmsUtil.get3gppPduFromTpdu(bArr, smsEvent.getRpRef(), GsmSmsUtil.removeSipPrefix(scaForRpDa), ""));
        } else {
            smsEvent.setData(GsmSmsUtil.getRpSMMAPdu(smsEvent.getRpRef()));
        }
        String scaFromPsismscPSI = GsmSmsUtil.getScaFromPsismscPSI(this.mContext, sca, mno, this.mTelephonyManager, i, imsRegistration);
        if (mno == Mno.LGU && "noPSI".equals(scaFromPsismscPSI)) {
            SmsUtil.sendSmotInfoToHQM(this.mContext, i, "0", "SSM_sendSMSOverIMS_LguNoPSI", true);
            return null;
        }
        if (mno == Mno.DOCOMO || mno.isOrangeGPG() || mno.isSprint() || mno.isTmobile()) {
            this.mIsRetryIfNoSubmitReport = true;
        }
        smsEvent.setSmscAddr(SmsUtil.getNetworkPreferredUri(imsRegistration, scaFromPsismscPSI, mno == Mno.ATT || mno == Mno.VZW || mno == Mno.CU));
        if (!z) {
            smsEvent.setMessageID(SmsUtil.getNewMsgId() & 255);
            smsEvent.setTpMr(GsmSmsUtil.getTPMRFromPdu(bArr));
        } else {
            smsEvent.setMessageID(i2);
            smsEvent.setTpMr(i2);
        }
        if (this.mPendingQueue.containsKey(Integer.valueOf(smsEvent.getMessageID()))) {
            Log.e(LOG_TAG, "send message already pending");
        } else {
            smsEvent.setState(100);
            Handler handler = this.mTimeoutHandler;
            if (handler != null) {
                handler.sendMessageDelayed(handler.obtainMessage(1, smsEvent), 180000L);
            }
            this.mPendingQueue.put(Integer.valueOf(smsEvent.getMessageID()), smsEvent);
        }
        return smsEvent;
    }

    private SmsEvent make3gpp2SMS(SmsEvent smsEvent, byte[] bArr, String str, Mno mno, int i, int i2, String str2, ImsRegistration imsRegistration) {
        ImsRegistration imsRegistration2;
        boolean z;
        try {
            if (mno == Mno.VZW) {
                imsRegistration2 = imsRegistration;
                z = true;
            } else {
                imsRegistration2 = imsRegistration;
                z = false;
            }
            smsEvent.setSmscAddr(SmsUtil.getNetworkPreferredUri(imsRegistration2, str, z));
            smsEvent.setData(bArr);
            if (mno == Mno.VZW && bArr.length > 256) {
                SmsUtil.sendSmotInfoToHQM(this.mContext, i, "0", "SSM_sendSMSOverIMS_overSize", true);
                return null;
            }
            smsEvent.setMessageID(i2);
            this.m3GPP2SendingMsgId = i2;
            return smsEvent;
        } catch (NullPointerException e) {
            e.printStackTrace();
            SmsUtil.sendSmotInfoToHQM(this.mContext, i, "0", "SSM_sendSMSOverIMS_AddrErr", false);
            onReceiveSMSAckInternal(i, i2, 10001, str2, null, -1);
            return null;
        }
    }

    private boolean vzwSendSmsLimitedRegi(int i, int i2, int i3, String str, ImsRegistration imsRegistration) {
        String subscriberId = TelephonyManagerExt.getSubscriberId(this.mTelephonyManager, i);
        if (imsRegistration == null || TextUtils.isEmpty(subscriberId) || !imsRegistration.isImsiBased(subscriberId)) {
            return false;
        }
        Log.d(LOG_TAG, "Limited Regi Mode, fallback to 1xRTT");
        onReceiveSMSAckInternal(i2, i3, 10004, str, null, -1);
        return true;
    }

    private int vzwSendSmsE911(String str, int i, int i2, byte[] bArr, SmsEvent smsEvent, ImsRegistration imsRegistration) {
        if (!isEmergencyNumber(str) || SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) < 29) {
            return 0;
        }
        String str2 = LOG_TAG;
        Log.d(str2, "sendSMSOverIMS: isVzwE911 = true, mEmergencyRegiProcessiong = " + this.mEmergencyRegiProcessiong[i]);
        if (imsRegistration != null) {
            Log.d(str2, "sendSMSOverIMS: regInfo = eRegInfo");
            return 1;
        }
        smsEvent.setEventType(i);
        smsEvent.setMessageID(i2);
        smsEvent.setData(bArr);
        smsEvent.setSmscAddr(str);
        this.mEmergencyPendingQueue.get(i).add(smsEvent);
        boolean[] zArr = this.mEmergencyRegiProcessiong;
        if (zArr[i]) {
            return 2;
        }
        zArr[i] = true;
        sendMessage(obtainMessage(4, smsEvent));
        sendMessageDelayed(obtainMessage(6, smsEvent), 10000L);
        return 2;
    }

    private boolean isEmergencyNumber(String str) {
        return "911".equals(str) || "9339".equals(str) || "922".equals(str);
    }

    private String vzwSendSmsDestAddr(String str) {
        if (str == null || str.length() != 14 || !str.startsWith("0111") || !GsmSmsUtil.isNanp(str.substring(4))) {
            return str;
        }
        Log.i(LOG_TAG, "6.5.2b is applied");
        return str.substring(3);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onDeregistering(ImsRegistration imsRegistration) {
        Log.i(LOG_TAG, "onDeregistering");
        super.onDeregistering(imsRegistration);
        this.mIsDeregistering[imsRegistration.getPhoneId()] = true;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public void sendDeliverReport(final int i, byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            return;
        }
        final int i2 = bArr[2] & 255;
        SmsEvent remove = this.mPendingQueue.remove(Integer.valueOf(i2));
        if (remove != null) {
            Handler handler = this.mTimeoutHandler;
            if (handler != null) {
                handler.removeMessages(1, remove);
            }
            ImsRegistration imsRegistration = getImsRegistration(i);
            if (imsRegistration == null || imsRegistration.getPreferredImpu() == null || this.mIsDeregistering[i]) {
                String str = LOG_TAG;
                Log.e(str, "sendDeliverReport() called. but not registered IMS");
                Log.i(str + '/' + i, "sendDeliverReport: msgId = " + i2);
                post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.sms.SmsServiceModule$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SmsServiceModule.this.lambda$sendDeliverReport$0(i, i2);
                    }
                });
                return;
            }
            if (remove.getRpRef() == -1 || remove.getCallID() == null || remove.getSmscAddr() == null) {
                Log.e(LOG_TAG, "sendDeliverReport wrong format");
                return;
            }
            int tpPid = remove.getTpPid();
            int tpDcs = remove.getTpDcs();
            if ((tpPid & 63) == 63 && (tpDcs & 2) == 2) {
                Log.i(LOG_TAG, "sendDeliverReport() set TP-PID and TP-DCS");
            } else {
                Log.i(LOG_TAG, "sendDeliverReport() do not set TP-PID and TP-DCS");
                tpPid = 0;
                tpDcs = 0;
            }
            remove.setData(GsmSmsUtil.getDeliverReportFromPdu(i, remove.getRpRef(), bArr, tpPid, tpDcs));
            remove.setState(105);
            remove.setImsRegistration(imsRegistration);
            remove.setLocalUri(SmsUtil.getLocalUri(imsRegistration));
            Handler handler2 = this.mTimeoutHandler;
            if (handler2 != null) {
                handler2.sendMessageDelayed(handler2.obtainMessage(1, remove), 180000L);
            }
            this.mPendingQueue.put(Integer.valueOf(i2), remove);
            this.mSmsLogger.logAndAdd(LOG_TAG, "sendDeliverReport: " + remove);
            IMSLog.c(LogClass.SMS_SEND_DELIVER_REPROT, i + "," + remove.toKeyDump());
            this.mImsService.sendMessage(remove.getSmscAddr(), remove.getLocalUri(), remove.getContentType(), remove.getData(), false, remove.getCallID(), i2, remove.getImsRegistration().getHandle(), false);
            this.mLastMOContentType = remove.getContentType();
            return;
        }
        Log.e(LOG_TAG, "sendDeliverReport no incoming Message to send DeliverReport!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendDeliverReport$0(int i, int i2) {
        if (this.mListeners.containsKey(Integer.valueOf(i))) {
            RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(i));
            try {
                if (remoteCallbackList != null) {
                    try {
                        int beginBroadcast = remoteCallbackList.beginBroadcast();
                        while (beginBroadcast > 0) {
                            beginBroadcast--;
                            try {
                                remoteCallbackList.getBroadcastItem(beginBroadcast).onReceiveSMSDeliveryReportAck(i2, NOTI_DEREGISTERED, -1);
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                        }
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                    }
                }
            } finally {
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public boolean getSmsFallback(int i) {
        boolean z = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.ENABLE_DEFAULT_SMS_FALLBACK, false);
        IMSLog.i(LOG_TAG, i, "getSmsFallback: " + z);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRegistered(int i) {
        return getImsRegistration(i) != null;
    }

    @Override // com.sec.internal.ims.util.IMessagingAppInfoListener
    public void onMessagingAppPackageReplaced() {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.sms.SmsServiceModule.3
            @Override // java.lang.Runnable
            public void run() {
                if (SmsServiceModule.this.mMessagingAppInfoReceiver != null) {
                    Log.i(SmsServiceModule.LOG_TAG, "onMessagingAppPackageReplaced: " + SmsServiceModule.this.mMessagingAppInfoReceiver.mMsgAppVersion);
                    for (int i = 0; i < SmsServiceModule.this.mTelephonyManager.getPhoneCount(); i++) {
                        if (SmsServiceModule.this.isRegistered(i)) {
                            SmsServiceModule.this.mImsService.setMsgAppInfoToSipUa(i, SmsServiceModule.this.mMessagingAppInfoReceiver.mMsgAppVersion);
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryToSendMessage(int i, SmsEvent smsEvent) {
        String str = LOG_TAG;
        Log.i(str, "retry to send message");
        if (!isRegistered(i)) {
            smsEvent.setReasonCode(NOTI_DEREGISTERED);
            smsEvent.setRetryAfter(-1);
            onReceiveSmsMessage(smsEvent);
            return;
        }
        byte[] data = smsEvent.getData();
        if (data == null) {
            smsEvent.setReasonCode(10001);
            smsEvent.setRetryAfter(-1);
            onReceiveSmsMessage(smsEvent);
            Log.e(str, "Aborting, reason: null pdu obtained via SmsEvent.getData() call");
            return;
        }
        GsmSmsUtil.set3gppTPRD(data);
        Log.i(str, smsEvent.toString());
        this.mImsService.sendMessage(smsEvent.getSmscAddr(), smsEvent.getLocalUri(), smsEvent.getContentType(), data, false, null, smsEvent.getMessageID(), smsEvent.getImsRegistration() != null ? smsEvent.getImsRegistration().getHandle() : 0, smsEvent.isEmergency());
        smsEvent.setState(100);
        Handler handler = this.mTimeoutHandler;
        if (handler != null) {
            handler.sendMessageDelayed(handler.obtainMessage(1, smsEvent), 180000L);
        }
        this.mPendingQueue.put(Integer.valueOf(smsEvent.getMessageID()), smsEvent);
        this.mRetransCount++;
    }

    private void fallbackForSpecificReason(int i) {
        int i2;
        if (this.mLastMOContentType.equals(GsmSmsUtil.CONTENT_TYPE_3GPP)) {
            Iterator<Integer> it = this.mPendingQueue.keySet().iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                if (intValue >= 0) {
                    SmsEvent remove = this.mPendingQueue.remove(Integer.valueOf(intValue));
                    if (remove == null) {
                        return;
                    }
                    remove.setReasonCode(i);
                    if (remove.getData() != null) {
                        Log.i(LOG_TAG, "Fallback 3gpp message with reason " + i);
                        Handler handler = this.mTimeoutHandler;
                        if (handler != null && handler.hasMessages(1, Integer.valueOf(intValue))) {
                            this.mTimeoutHandler.removeMessages(1, Integer.valueOf(intValue));
                        }
                        Handler handler2 = this.mTimeoutHandler;
                        if (handler2 != null && this.mIsRetryIfNoSubmitReport && handler2.hasMessages(2, Integer.valueOf(intValue))) {
                            this.mTimeoutHandler.removeMessages(2, Integer.valueOf(intValue));
                        }
                        ImsRegistration imsRegistration = remove.getImsRegistration();
                        broadcastOnReceiveSMSAck(imsRegistration != null ? imsRegistration.getPhoneId() : 0, remove.getTpMr(), remove.getReasonCode(), remove.getContentType(), GsmSmsUtil.get3gppTpduFromPdu(remove.getData()), remove.getRetryAfter());
                    }
                }
            }
            return;
        }
        if (!this.mLastMOContentType.equals(CdmaSmsUtil.CONTENT_TYPE_3GPP2) || (i2 = this.m3GPP2SendingMsgId) == -1) {
            return;
        }
        this.m3GPP2SendingMsgId = -1;
        Log.i(LOG_TAG, "Fallback 3gpp2 message with reason " + i);
        broadcastOnReceiveSMSAck(0, i2, 800, CdmaSmsUtil.CONTENT_TYPE_3GPP2, null, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReceiveSMSAckInternal(int i, int i2, int i3, String str, byte[] bArr, int i4) {
        Log.i(LOG_TAG + '/' + i, "onReceiveSMSAckInternal: " + i3);
        broadcastOnReceiveSMSAck(i, i2, i3, str, bArr, i4);
    }

    private synchronized void broadcastOnReceiveSMSAck(int i, int i2, int i3, String str, byte[] bArr, int i4) {
        Log.d(LOG_TAG + '/' + i, "broadcastOnReceiveSMSAck: " + i3);
        if (this.mListeners.containsKey(Integer.valueOf(i))) {
            RemoteCallbackList<ISmsServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(i));
            try {
                if (remoteCallbackList != null) {
                    try {
                        int beginBroadcast = remoteCallbackList.beginBroadcast();
                        while (beginBroadcast > 0) {
                            beginBroadcast--;
                            try {
                                remoteCallbackList.getBroadcastItem(beginBroadcast).onReceiveSMSAck(i2, i3, str, bArr, i4);
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                        }
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                    }
                }
            } finally {
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    public boolean isSmsOverIpEnabled(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        String str = LOG_TAG;
        Log.i(str, "regInfo: " + imsRegistration);
        if (imsRegistration == null || !isRunning()) {
            Log.i(str, "disallow sms Service");
            return false;
        }
        if (imsRegistration.hasService("smsip")) {
            if (SimUtil.getSimMno(i) != Mno.ORANGE && SimUtil.getSimMno(i) != Mno.ORANGE_POLAND) {
                if (imsRegistration.getImsProfile().getDisallowReregi()) {
                    if (SmsUtil.isServiceAvailable(this.mTelephonyManager, i, true)) {
                        return true;
                    }
                } else if (this.mIsDeregisterTimerRunning[i]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public boolean isVolteSupported(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            return false;
        }
        Log.d(LOG_TAG, "IsVolteSupported= " + imsRegistration.hasService("mmtel"));
        return imsRegistration.hasService("mmtel");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void updateCapabilities(int i) {
        getServiceModuleManager().updateCapabilities(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsFeature.Capabilities queryCapabilityStatus(int i) {
        ImsFeature.Capabilities capabilities = new ImsFeature.Capabilities();
        if (isSmsOverIpEnabled(i)) {
            Log.i(LOG_TAG, "Sms Service queryCapabilityStatus[" + i + "]: addCapabilities CAPABILITY_TYPE_SMS");
            capabilities.addCapabilities(8);
        } else {
            Log.i(LOG_TAG, "Sms Service queryCapabilityStatus[" + i + "]: removeCapabilities CAPABILITY_TYPE_SMS");
            capabilities.removeCapabilities(8);
        }
        return capabilities;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public void setDelayedDeregisterTimerRunning(int i, boolean z) {
        this.mIsDeregisterTimerRunning[i] = z;
        updateCapabilities(i);
    }

    public ConcurrentHashMap<Integer, SmsEvent> getPendingQueue() {
        return this.mPendingQueue;
    }

    /* renamed from: com.sec.internal.ims.servicemodules.sms.SmsServiceModule$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState;

        static {
            int[] iArr = new int[EmergencyGeolocationState.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState = iArr;
            try {
                iArr[EmergencyGeolocationState.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState[EmergencyGeolocationState.UPDATING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState[EmergencyGeolocationState.UPDATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState[EmergencyGeolocationState.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0026, code lost:
    
        if (r1 != 2) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean handleEmergencySmsWithGeolocation(int r5, byte[] r6, java.lang.String r7, int r8, com.sec.internal.ims.servicemodules.sms.SmsEvent r9) {
        /*
            r4 = this;
            java.lang.String r0 = com.sec.internal.ims.servicemodules.sms.SmsServiceModule.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "handleEmergencySmsWithGeolocation: mEmergencyGeolocationState="
            r1.append(r2)
            com.sec.internal.ims.servicemodules.sms.SmsServiceModule$EmergencyGeolocationState r2 = r4.mEmergencyGeolocationState
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.i(r0, r1)
            int[] r1 = com.sec.internal.ims.servicemodules.sms.SmsServiceModule.AnonymousClass4.$SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState
            com.sec.internal.ims.servicemodules.sms.SmsServiceModule$EmergencyGeolocationState r2 = r4.mEmergencyGeolocationState
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L29
            r0 = 2
            if (r1 == r0) goto L5e
            goto L3f
        L29:
            com.sec.internal.interfaces.ims.core.IGeolocationController r1 = com.sec.internal.ims.registry.ImsRegistry.getGeolocationController()
            if (r1 == 0) goto L40
            java.lang.String r3 = "handleEmergencySmsWithGeolocation: Start geolocation update for emergency SMS"
            android.util.Log.i(r0, r3)
            boolean r1 = r1.startGeolocationUpdate(r5, r2)
            if (r1 != 0) goto L40
            java.lang.String r4 = "handleEmergencySmsWithGeolocation: Geolocation update request failed. Send SMS without geolocation update"
            android.util.Log.i(r0, r4)
        L3f:
            return r2
        L40:
            com.sec.internal.ims.servicemodules.sms.SmsServiceModule$EmergencyGeolocationState r0 = com.sec.internal.ims.servicemodules.sms.SmsServiceModule.EmergencyGeolocationState.UPDATING
            r4.mEmergencyGeolocationState = r0
            com.sec.ims.ImsRegistration r0 = r9.getImsRegistration()
            r1 = 9
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)
            android.os.Message r1 = r4.obtainMessage(r1, r2)
            com.sec.ims.settings.ImsProfile r0 = r0.getImsProfile()
            int r0 = r0.getLocationAcquireFailSMS()
            long r2 = (long) r0
            r4.sendMessageDelayed(r1, r2)
        L5e:
            r9.setEventType(r5)
            r9.setMessageID(r8)
            r9.setData(r6)
            r9.setSmscAddr(r7)
            java.util.ArrayList<com.sec.internal.ims.servicemodules.sms.SmsEvent> r4 = r4.mEmergencyGeolocationPendingQueue
            r4.add(r9)
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.sms.SmsServiceModule.handleEmergencySmsWithGeolocation(int, byte[], java.lang.String, int, com.sec.internal.ims.servicemodules.sms.SmsEvent):boolean");
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule
    public void onUpdateGeolocation() {
        if (this.mEmergencyGeolocationPendingQueue.isEmpty()) {
            return;
        }
        Log.i(LOG_TAG, "onUpdateGeolocation");
        sendEmptyMessage(10);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(str);
        IMSLog.dump(str, "mIncommingMagId : " + SmsUtil.getIncommingMagId());
        IMSLog.dump(str, "mRPMsgRef : " + SmsUtil.getRPMsgRef());
        IMSLog.dump(str, "m3GPP2SendingMsgId : " + this.m3GPP2SendingMsgId);
        IMSLog.dump(str, "mLastMOContentType : " + this.mLastMOContentType);
        IMSLog.dump(str, "mRetransCount : " + this.mRetransCount);
        IMSLog.dump(str, "mStorageAvailable : " + this.mStorageAvailable);
        IMSLog.dump(str, "mPendingQueue :");
        IMSLog.increaseIndent(str);
        for (Map.Entry<Integer, SmsEvent> entry : this.mPendingQueue.entrySet()) {
            IMSLog.dump(LOG_TAG, "key : " + entry.getKey() + ", value : " + entry.getValue());
        }
        this.mSmsLogger.dump();
        String str2 = LOG_TAG;
        IMSLog.decreaseIndent(str2);
        IMSLog.decreaseIndent(str2);
    }
}
