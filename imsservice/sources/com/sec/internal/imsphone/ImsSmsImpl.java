package com.sec.internal.imsphone;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.stub.ImsSmsImplBase;
import android.util.Log;
import com.android.internal.telephony.TelephonyFeatures;
import com.android.internal.telephony.uicc.IccUtils;
import com.sec.ims.sms.ISmsServiceEventListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.servicemodules.sms.SmsMessage;
import com.sec.internal.constants.ims.servicemodules.sms.SmsResponse;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ServiceStateWrapper;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.sms.SmsLogger;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule;
import com.sec.internal.log.IMSLog;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentSkipListMap;

/* loaded from: classes.dex */
public final class ImsSmsImpl extends ImsSmsImplBase {
    private static final String ACTION_TEST_PDU_IMS = "com.sec.internal.google.ImsSmsImpl.PduTest";
    private static final int CDMA_NETWORK_TYPE = 1;
    private static final String CONTENT_TYPE_3GPP = "application/vnd.3gpp.sms";
    private static final String CONTENT_TYPE_3GPP2 = "application/vnd.3gpp2.sms";
    private static final int EVENT_SMS_DELIVER_REPORT_RETRY = 4;
    private static final int EVENT_SMS_NO_RESPONSE_TIMEOUT = 2;
    private static final int EVENT_SMS_RETRY = 1;
    private static final int EVENT_SMS_SEND_DELAYED_MESSAGE = 3;
    private static final int GSM_NETWORK_TYPE = 2;
    private static final String IMS_CALL_PERMISSION = "android.permission.ACCESS_IMS_CALL_SERVICE";
    private static final String LOG_TAG_HEAD = "ImsSmsImpl";
    private static final String MAP_KEY_CONTENT_TYPE = "contentType";
    private static final String MAP_KEY_DEST_ADDR = "destAddr";
    private static final String MAP_KEY_MESSAGE_ID = "messageId";
    private static final String MAP_KEY_PDU = "pdu";
    private static final String MAP_KEY_RETRY_COUNT = "retryCount";
    private static final String MAP_KEY_STATUS_REPORT = "statusReport";
    private static final String MAP_KEY_TOKEN = "token";
    private static final int MAX_SEND_RETRIES_1 = 1;
    private static final int MAX_SEND_RETRIES_2 = 2;
    private static final int MAX_SEND_RETRIES_4 = 4;
    private static final int PDU_TYPE_RECEIVED_CDMA_SMS = 1;
    private static final int PDU_TYPE_RECEIVED_GSM_SMS = 0;
    private static final int RIL_CODE_RP_ERROR = 32768;
    private static final int RIL_CODE_RP_ERROR_END = 33023;
    private static final int RP_CAUSE_CONGESTION = 42;
    private static final int RP_CAUSE_DESTINATION_OUT_OF_ORDER = 27;
    private static final int RP_CAUSE_MEMORY_CAP_EXCEEDED = 22;
    private static final int RP_CAUSE_NETWORK_OUT_OF_ORDER = 38;
    private static final int RP_CAUSE_NONE_ERROR = 0;
    private static final int RP_CAUSE_NOT_COMPATIBLE_PROTOCOL = 98;
    private static final int RP_CAUSE_PROTOCOL_ERROR = 111;
    private static final int RP_CAUSE_REQUESTED_FACILITY_NOT_IMPLEMENTED = 69;
    private static final int RP_CAUSE_RESOURCES_UNAVAILABLE = 47;
    private static final int RP_CAUSE_SMS_TRANSFER_REJECTED = 21;
    private static final int RP_CAUSE_TEMPORARY_FAILURE = 41;
    private static final int RP_CAUSE_UNIDENTIFIED_SUBSCRIBER = 28;
    private static final int RP_CAUSE_UNKNOWN_SUBSCRIBER = 30;
    private static final int SEND_RETRY_DELAY = 30000;
    private static final int TIMER_STATE = 130000;
    private static final int TIMER_STATE_FOR_O2C = 30000;
    private static final int TP_CAUSE_INVALID_SME_ADDRESS = 195;
    private static final int TP_CAUSE_SM_REJECTED_OR_DUPLICATE = 197;
    private String LOG_TAG;
    private Context mContext;
    private int mCurrentNetworkType;
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private int mLastRetryCount;
    private int mPhoneId;
    private LastSentDeliveryAck mSentDeliveryAck;
    private ISmsServiceModule mSmsServiceModule;
    private String mSmsc;
    private int mTpmr;
    private SmsEventListener mSmsEventListener = new SmsEventListener();
    private Map<Integer, Integer> mStatusMsgIds = new HashMap();
    private Map<Integer, ImsSmsTracker> mImsSmsTrackers = new ConcurrentSkipListMap();
    private final ArrayList<ImsSmsTracker> mDeliveryPendingList = new ArrayList<>();
    private SmsLogger mSmsLogger = SmsLogger.getInstance();
    protected BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.imsphone.ImsSmsImpl.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(ImsSmsImpl.ACTION_TEST_PDU_IMS)) {
                int intExtra = intent.getIntExtra("phoneId", 0);
                int intExtra2 = intent.getIntExtra("type", -1);
                String stringExtra = intent.getStringExtra("hexString");
                Log.d(ImsSmsImpl.this.LOG_TAG, "mIntentReceiver.onReceive: phoneId = " + intExtra + ", pduType = " + intExtra2 + ", pduHexString = " + stringExtra);
                if (ImsSmsImpl.this.mPhoneId != intExtra) {
                    return;
                }
                byte[] hexStringToBytes = IccUtils.hexStringToBytes(stringExtra);
                if (hexStringToBytes == null) {
                    Log.e(ImsSmsImpl.this.LOG_TAG, "mIntentReceiver.onReceive: pdu is null");
                    return;
                }
                String str = SmsMessage.FORMAT_3GPP;
                if (intExtra2 == 0) {
                    Log.d(ImsSmsImpl.this.LOG_TAG, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_GSM_SMS_IMS");
                } else if (intExtra2 == 1) {
                    Log.d(ImsSmsImpl.this.LOG_TAG, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_CDMA_SMS_IMS");
                    str = SmsMessage.FORMAT_3GPP2;
                } else {
                    Log.d(ImsSmsImpl.this.LOG_TAG, "mIntentReceiver.onReceive: unsupported pduType");
                }
                ImsSmsImpl.this.onSmsPduTestReceived(255, str, hexStringToBytes);
            }
        }
    };

    private int resultToCause(int i) {
        if (i == 1) {
            return 0;
        }
        if (i != 3) {
            return i != 4 ? 41 : 111;
        }
        return 22;
    }

    public ImsSmsImpl(int i) {
        this.LOG_TAG = "";
        this.mPhoneId = 0;
        StringBuilder sb = new StringBuilder();
        sb.append(LOG_TAG_HEAD);
        sb.append(i != 0 ? "2" : "");
        this.LOG_TAG = sb.toString();
        this.mPhoneId = i;
        this.mTpmr = -1;
        this.mContext = ImsRegistry.getContext();
        ISmsServiceModule smsServiceModule = ImsRegistry.getServiceModuleManager().getSmsServiceModule();
        this.mSmsServiceModule = smsServiceModule;
        if (smsServiceModule != null) {
            registerSmsEventListener();
        }
        if (!TelephonyFeatures.SHIP_BUILD) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(ACTION_TEST_PDU_IMS);
            Log.d(this.LOG_TAG, "register for intent action=com.sec.internal.google.ImsSmsImpl.PduTest");
            this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
        }
        HandlerThread handlerThread = new HandlerThread(LOG_TAG_HEAD);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.sec.internal.imsphone.ImsSmsImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Log.d(ImsSmsImpl.this.LOG_TAG, "handleMessage: event " + message.what);
                int i2 = message.what;
                if (i2 == 1) {
                    ImsSmsImpl.this.handleSmsRetry((ImsSmsTracker) message.obj);
                    return;
                }
                if (i2 == 2) {
                    ImsSmsImpl.this.handleNoResponseTimeout((ImsSmsTracker) message.obj);
                } else if (i2 == 3) {
                    ImsSmsImpl.this.handleSendDelayedMessage();
                } else {
                    if (i2 != 4) {
                        return;
                    }
                    ImsSmsImpl.this.handleRetryDeliveryReportAck((LastSentDeliveryAck) message.obj);
                }
            }
        };
    }

    public void sendSms(int i, int i2, String str, String str2, boolean z, byte[] bArr) {
        Object obj;
        String str3;
        int i3;
        int i4;
        byte[] bArr2;
        String str4;
        int i5;
        boolean z2;
        HashMap<String, Object> imsSmsTrackerMap;
        int i6;
        boolean z3;
        SmsMessage smsMessage = new SmsMessage();
        int i7 = this.mLastRetryCount;
        String str5 = SmsMessage.FORMAT_3GPP.equals(str) ? "application/vnd.3gpp.sms" : "application/vnd.3gpp2.sms";
        try {
            if (SmsMessage.FORMAT_3GPP.equals(str)) {
                this.mCurrentNetworkType = 2;
                byte[] hexStringToBytes = IccUtils.hexStringToBytes(str2);
                byte[] bArr3 = new byte[hexStringToBytes.length + bArr.length];
                System.arraycopy(hexStringToBytes, 0, bArr3, 0, hexStringToBytes.length);
                System.arraycopy(bArr, 0, bArr3, hexStringToBytes.length, bArr.length);
                smsMessage.parseSubmitPdu(bArr3, str);
                String destinationAddress = smsMessage.getDestinationAddress();
                boolean statusReportRequested = smsMessage.getStatusReportRequested();
                if (isTPRDset(bArr3)) {
                    this.mTpmr = getTPMR(bArr3) & 255;
                } else {
                    setTPMRintoTPDU(bArr3, this.mPhoneId);
                }
                str4 = destinationAddress;
                z2 = statusReportRequested;
                i5 = this.mTpmr;
                bArr2 = bArr3;
            } else if (SmsMessage.FORMAT_3GPP2.equals(str)) {
                this.mCurrentNetworkType = 1;
                smsMessage.parseSubmitPdu(bArr, str);
                i5 = smsMessage.getMsgID();
                byte[] tpdu = smsMessage.getTpdu();
                String destinationAddress2 = smsMessage.getDestinationAddress();
                z2 = smsMessage.getStatusReportRequested();
                bArr2 = tpdu;
                str4 = destinationAddress2;
            } else {
                bArr2 = null;
                str4 = null;
                i5 = 0;
                z2 = false;
            }
            imsSmsTrackerMap = getImsSmsTrackerMap(i, i5, str4, bArr2, str5, i7, z2);
            i6 = this.mPhoneId;
            z3 = false;
            obj = SmsMessage.FORMAT_3GPP;
            str3 = str;
            i3 = i2;
            i4 = i;
        } catch (RuntimeException e) {
            e = e;
            obj = SmsMessage.FORMAT_3GPP;
            str3 = str;
            i3 = i2;
            i4 = i;
        }
        try {
            ImsSmsTracker imsSmsTracker = new ImsSmsTracker(i6, imsSmsTrackerMap, i, i7, i5, bArr2, str4, str5, z2, z3);
            if (!this.mImsSmsTrackers.containsKey(Integer.valueOf(i))) {
                this.mImsSmsTrackers.put(Integer.valueOf(i), imsSmsTracker);
            }
            sendSmsOverIms(imsSmsTracker, false);
        } catch (RuntimeException e2) {
            e = e2;
            Log.e(this.LOG_TAG, "Can not send sms: " + e.getMessage());
            if (str3.equals(obj)) {
                onSendSmsResultError(i, i2, 2, 1, 2);
                this.mSmsLogger.logAndAdd(this.LOG_TAG, "onSendSmsResult token = " + i4 + " messageId = " + i3);
            } else {
                onSendSmsResultIncludeErrClass(i, i2, 2, 1, 31, 2);
                this.mSmsLogger.logAndAdd(this.LOG_TAG, "onSendSmsResponse token = " + i4 + " messageId = " + i3);
            }
            this.mImsSmsTrackers.remove(Integer.valueOf(i));
        }
    }

    public void acknowledgeSms(int i, int i2, int i3) {
        byte[] bArr = new byte[4];
        if (this.mCurrentNetworkType == 2) {
            int i4 = 0;
            if (i3 == 1) {
                bArr[0] = 0;
                bArr[1] = 0;
                bArr[2] = (byte) i;
                bArr[3] = 0;
            } else {
                int resultToCause = resultToCause(i3);
                bArr[0] = (byte) resultToCause;
                bArr[1] = (byte) 128;
                bArr[2] = (byte) i;
                bArr[3] = 0;
                i4 = resultToCause;
            }
            this.mSmsServiceModule.sendDeliverReport(this.mPhoneId, bArr);
            if (this.mSentDeliveryAck != null) {
                this.mSentDeliveryAck = null;
            }
            this.mSentDeliveryAck = new LastSentDeliveryAck(bArr, i4, 2);
            this.mSmsLogger.logAndAdd(this.LOG_TAG, "> SMS_ACK : messageRef = " + i);
        }
    }

    public void onMemoryAvailable(int i) {
        ImsSmsTracker imsSmsTracker = new ImsSmsTracker(this.mPhoneId, getImsSmsTrackerMap(i, MNO.TIGO_NICARAGUA, this.mSmsc, null, "application/vnd.3gpp.sms", 0, false), i, 0, MNO.TIGO_NICARAGUA, null, this.mSmsc, "application/vnd.3gpp.sms", false, false);
        if (!this.mImsSmsTrackers.containsKey(Integer.valueOf(i))) {
            this.mImsSmsTrackers.put(Integer.valueOf(i), imsSmsTracker);
        }
        try {
            this.mSmsServiceModule.sendSMSOverIMS(this.mPhoneId, null, this.mSmsc, "application/vnd.3gpp.sms", MNO.TIGO_NICARAGUA, true);
            Log.i(this.LOG_TAG, "onMemoryAvailable");
        } catch (RuntimeException e) {
            Log.e(this.LOG_TAG, "Can not send onMemoryAvailable: " + e.getMessage());
            onMemoryAvailableResult(i, 2, 2);
            this.mSmsLogger.logAndAdd(this.LOG_TAG, "onMemoryAvailableResult token = " + i);
            this.mImsSmsTrackers.remove(Integer.valueOf(i));
        }
    }

    public void acknowledgeSmsReport(int i, int i2, int i3) {
        int intValue = this.mStatusMsgIds.remove(Integer.valueOf(i2)).intValue();
        Log.i(this.LOG_TAG, "acknowledgeSmsReport messageRef = " + i2 + ", statusMsgId = " + intValue);
        acknowledgeSms(intValue, intValue, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0054 A[Catch: all -> 0x0073, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:3:0x0004, B:7:0x0054, B:24:0x004f, B:27:0x004c, B:17:0x003a, B:19:0x0040, B:23:0x0047), top: B:2:0x0004, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getSmsFormat() {
        /*
            r9 = this;
            long r0 = android.os.Binder.clearCallingIdentity()
            android.content.Context r2 = r9.mContext     // Catch: java.lang.Throwable -> L73
            android.content.ContentResolver r3 = r2.getContentResolver()     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"
            android.net.Uri r2 = android.net.Uri.parse(r2)     // Catch: java.lang.Throwable -> L73
            android.net.Uri$Builder r2 = r2.buildUpon()     // Catch: java.lang.Throwable -> L73
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r4.<init>()     // Catch: java.lang.Throwable -> L73
            java.lang.String r5 = "simslot"
            r4.append(r5)     // Catch: java.lang.Throwable -> L73
            int r5 = r9.mPhoneId     // Catch: java.lang.Throwable -> L73
            r4.append(r5)     // Catch: java.lang.Throwable -> L73
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L73
            android.net.Uri$Builder r2 = r2.fragment(r4)     // Catch: java.lang.Throwable -> L73
            android.net.Uri r4 = r2.build()     // Catch: java.lang.Throwable -> L73
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L73
            if (r2 == 0) goto L50
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L50
            r3 = 1
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L46
            goto L52
        L46:
            r9 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L4b
            goto L4f
        L4b:
            r2 = move-exception
            r9.addSuppressed(r2)     // Catch: java.lang.Throwable -> L73
        L4f:
            throw r9     // Catch: java.lang.Throwable -> L73
        L50:
            java.lang.String r3 = "3GPP"
        L52:
            if (r2 == 0) goto L57
            r2.close()     // Catch: java.lang.Throwable -> L73
        L57:
            android.os.Binder.restoreCallingIdentity(r0)
            java.lang.String r0 = "3GPP2"
            boolean r0 = r0.equals(r3)
            java.lang.String r1 = "3gpp"
            if (r0 == 0) goto L72
            android.content.Context r0 = r9.mContext
            int r9 = r9.mPhoneId
            boolean r9 = com.sec.internal.ims.util.ImsUtil.isCdmalessEnabled(r0, r9)
            if (r9 == 0) goto L6f
            return r1
        L6f:
            java.lang.String r9 = "3gpp2"
            return r9
        L72:
            return r1
        L73:
            r9 = move-exception
            android.os.Binder.restoreCallingIdentity(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.ImsSmsImpl.getSmsFormat():java.lang.String");
    }

    public void onReady() {
        updateTPMR(this.mPhoneId);
    }

    public void setRetryCount(int i, int i2) {
        this.mLastRetryCount = i2;
    }

    public void setSmsc(String str) {
        this.mSmsc = str;
    }

    public void acknowledgeSms(int i, int i2, int i3, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 4];
        if (this.mCurrentNetworkType == 2) {
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            bArr2[2] = (byte) i;
            bArr2[3] = (byte) bArr.length;
            System.arraycopy(bArr, 0, bArr2, 4, bArr.length);
            this.mSmsServiceModule.sendDeliverReport(this.mPhoneId, bArr2);
            this.mSmsLogger.logAndAdd(this.LOG_TAG, "> SMS_ACK_WITH_PDU : messageRef = " + i);
        }
    }

    private void registerSmsEventListener() {
        ISmsServiceModule iSmsServiceModule = this.mSmsServiceModule;
        if (iSmsServiceModule != null) {
            iSmsServiceModule.registerForSMSStateChange(this.mPhoneId, this.mSmsEventListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSendDelayedMessage() {
        if (this.mImsSmsTrackers.size() > 0) {
            Iterator<Map.Entry<Integer, ImsSmsTracker>> it = this.mImsSmsTrackers.entrySet().iterator();
            if (it.hasNext()) {
                int token = it.next().getValue().getToken();
                ImsSmsTracker remove = this.mImsSmsTrackers.remove(Integer.valueOf(token));
                if (remove == null || remove.mSentComplete) {
                    return;
                }
                this.mImsSmsTrackers.put(Integer.valueOf(token), remove);
                sendSmsOverIms(remove, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0067, code lost:
    
        if (com.sec.internal.helper.SimUtil.getSimMno(r9.mPhoneId) == com.sec.internal.constants.Mno.TELEFONICA_CZ) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleSmsRetry(com.sec.internal.imsphone.ImsSmsImpl.ImsSmsTracker r10) {
        /*
            r9 = this;
            int r0 = r10.mToken
            r1 = 0
            r10.mSentComplete = r1
            r2 = 30000(0x7530, double:1.4822E-319)
            r4 = 130000(0x1fbd0, double:6.42285E-319)
            r6 = 2
            java.util.Map<java.lang.Integer, com.sec.internal.imsphone.ImsSmsImpl$ImsSmsTracker> r7 = r9.mImsSmsTrackers     // Catch: java.lang.Throwable -> L54
            java.lang.Integer r8 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L54
            boolean r7 = r7.containsKey(r8)     // Catch: java.lang.Throwable -> L54
            if (r7 != 0) goto L20
            java.util.Map<java.lang.Integer, com.sec.internal.imsphone.ImsSmsImpl$ImsSmsTracker> r7 = r9.mImsSmsTrackers     // Catch: java.lang.Throwable -> L54
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L54
            r7.put(r0, r10)     // Catch: java.lang.Throwable -> L54
        L20:
            java.lang.String r0 = r10.mContentType     // Catch: java.lang.Throwable -> L54
            java.lang.String r7 = "application/vnd.3gpp.sms"
            boolean r0 = r0.equals(r7)     // Catch: java.lang.Throwable -> L54
            if (r0 == 0) goto L2f
            byte[] r0 = r10.mPdu     // Catch: java.lang.Throwable -> L54
            r9.setTPRDintoTPDU(r0)     // Catch: java.lang.Throwable -> L54
        L2f:
            r9.sendSmsOverIms(r10, r1)     // Catch: java.lang.Throwable -> L54
            android.os.Handler r0 = r9.mHandler
            if (r0 == 0) goto L6a
            int r0 = r9.mPhoneId
            com.sec.internal.constants.Mno r0 = com.sec.internal.helper.SimUtil.getSimMno(r0)
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.TELEFONICA_CZ
            if (r0 != r1) goto L4a
        L40:
            android.os.Handler r9 = r9.mHandler
            android.os.Message r10 = r9.obtainMessage(r6, r10)
            r9.sendMessageDelayed(r10, r2)
            goto L6a
        L4a:
            android.os.Handler r9 = r9.mHandler
            android.os.Message r10 = r9.obtainMessage(r6, r10)
            r9.sendMessageDelayed(r10, r4)
            goto L6a
        L54:
            java.lang.String r0 = r9.LOG_TAG     // Catch: java.lang.Throwable -> L6b
            java.lang.String r1 = "exception during sms retry"
            android.util.Log.e(r0, r1)     // Catch: java.lang.Throwable -> L6b
            android.os.Handler r0 = r9.mHandler
            if (r0 == 0) goto L6a
            int r0 = r9.mPhoneId
            com.sec.internal.constants.Mno r0 = com.sec.internal.helper.SimUtil.getSimMno(r0)
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.TELEFONICA_CZ
            if (r0 != r1) goto L4a
            goto L40
        L6a:
            return
        L6b:
            r0 = move-exception
            android.os.Handler r1 = r9.mHandler
            if (r1 == 0) goto L8d
            int r1 = r9.mPhoneId
            com.sec.internal.constants.Mno r1 = com.sec.internal.helper.SimUtil.getSimMno(r1)
            com.sec.internal.constants.Mno r7 = com.sec.internal.constants.Mno.TELEFONICA_CZ
            if (r1 != r7) goto L84
            android.os.Handler r9 = r9.mHandler
            android.os.Message r10 = r9.obtainMessage(r6, r10)
            r9.sendMessageDelayed(r10, r2)
            goto L8d
        L84:
            android.os.Handler r9 = r9.mHandler
            android.os.Message r10 = r9.obtainMessage(r6, r10)
            r9.sendMessageDelayed(r10, r4)
        L8d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.ImsSmsImpl.handleSmsRetry(com.sec.internal.imsphone.ImsSmsImpl$ImsSmsTracker):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNoResponseTimeout(ImsSmsTracker imsSmsTracker) {
        int i = imsSmsTracker.mToken;
        int i2 = imsSmsTracker.mMessageId;
        if (this.mImsSmsTrackers.containsKey(Integer.valueOf(i))) {
            int i3 = canFallbackForTimeout() ? 4 : 2;
            if ("application/vnd.3gpp.sms".equals(imsSmsTracker.mContentType)) {
                onSendSmsResultError(i, i2, i3, 1, -1);
                this.mSmsLogger.logAndAdd(this.LOG_TAG, "handleNoResponseTimeout: onSendSmsResult token = " + i + " messageId = " + i2 + " reason = timeOut");
            } else {
                onSendSmsResultIncludeErrClass(i, i2, i3, 1, 31, 2);
                this.mSmsLogger.logAndAdd(this.LOG_TAG, "handleNoResponseTimeout: onSendSmsResponse token = " + i + " messageId = " + i2 + " reason = timeOut");
            }
            this.mImsSmsTrackers.remove(Integer.valueOf(i));
            if (this.mHandler == null || this.mImsSmsTrackers.size() <= 0) {
                return;
            }
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(3));
            Log.d(this.LOG_TAG, "handleNoResponseTimeout : send next delayed message.");
        }
    }

    public void handleRetryDeliveryReportAck(LastSentDeliveryAck lastSentDeliveryAck) {
        if (lastSentDeliveryAck == null) {
            Log.e(this.LOG_TAG, "sentDeliveryAck is null");
        } else if (lastSentDeliveryAck.mNetworkType == 2) {
            this.mSmsServiceModule.sendDeliverReport(this.mPhoneId, lastSentDeliveryAck.mPdu);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStatusReport(int i, int i2, String str, byte[] bArr) {
        boolean z;
        Log.d(this.LOG_TAG, "handleStatusReport messageRef = " + i + " mDeliveryPendingList.size() = " + this.mDeliveryPendingList.size());
        int size = this.mDeliveryPendingList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                z = false;
                break;
            }
            ImsSmsTracker imsSmsTracker = this.mDeliveryPendingList.get(i3);
            if (imsSmsTracker.mMessageId == i) {
                this.mStatusMsgIds.put(Integer.valueOf(i), Integer.valueOf(i2));
                onSmsStatusReportReceived(imsSmsTracker.mToken, str, bArr);
                this.mDeliveryPendingList.remove(i3);
                z = true;
                break;
            }
            i3++;
        }
        if (z) {
            return;
        }
        Log.d(this.LOG_TAG, "statusReport is not matched. But, the messageId is forcibly saved.");
        this.mStatusMsgIds.put(Integer.valueOf(i), Integer.valueOf(i2));
        onSmsStatusReportReceived(0, str, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTokenByMessageId(int i) {
        Iterator<Map.Entry<Integer, ImsSmsTracker>> it = this.mImsSmsTrackers.entrySet().iterator();
        while (it.hasNext()) {
            ImsSmsTracker value = it.next().getValue();
            if (i == value.getMessageId()) {
                return value.getToken();
            }
        }
        return -1;
    }

    private void sendSmsOverIms(ImsSmsTracker imsSmsTracker, boolean z) {
        boolean z2;
        HashMap<String, Object> data = imsSmsTracker.getData();
        byte[] bArr = (byte[]) data.get(MAP_KEY_PDU);
        String str = (String) data.get(MAP_KEY_DEST_ADDR);
        String str2 = (String) data.get(MAP_KEY_CONTENT_TYPE);
        int intValue = ((Integer) data.get("messageId")).intValue();
        boolean z3 = true;
        if (z || this.mImsSmsTrackers.size() > 1) {
            z2 = false;
        } else {
            this.mSmsServiceModule.sendSMSOverIMS(imsSmsTracker.mPhoneId, bArr, str, str2, intValue, false);
            z2 = true;
        }
        if (z) {
            this.mSmsServiceModule.sendSMSOverIMS(imsSmsTracker.mPhoneId, bArr, str, str2, intValue, false);
        } else {
            z3 = z2;
        }
        this.mSmsLogger.logAndAdd(this.LOG_TAG, "> SEND_SMS : token = " + imsSmsTracker.mToken + " " + imsSmsTracker.mContentType + " destAddr = " + IMSLog.checker(str) + " messageId = " + intValue + " statusReportRequested = " + imsSmsTracker.mStatusReportRequested + " smsSent = " + z3);
        if (!TelephonyFeatures.SHIP_BUILD) {
            Log.d(this.LOG_TAG, "pdu = " + IccUtils.bytesToHexString(bArr));
        }
        if (this.mHandler == null || !z3) {
            return;
        }
        if (SimUtil.getSimMno(this.mPhoneId) == Mno.TELEFONICA_CZ) {
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(2, imsSmsTracker), 30000L);
        } else {
            Handler handler2 = this.mHandler;
            handler2.sendMessageDelayed(handler2.obtainMessage(2, imsSmsTracker), 130000L);
        }
    }

    private void setTPMRintoTPDU(byte[] bArr, int i) {
        byte b;
        int i2;
        if (bArr == null || bArr.length <= 0 || (b = bArr[0]) <= 0 || bArr.length <= (i2 = b + 2) || (bArr[b + 1] & 1) != 1) {
            return;
        }
        if (this.mTpmr == -1) {
            updateTPMR(i);
        }
        int i3 = this.mTpmr & 255;
        this.mTpmr = i3;
        if (i3 >= 255) {
            this.mTpmr = 0;
        } else {
            this.mTpmr = i3 + 1;
        }
        setTelephonyProperty(i, "persist.radio.tpmr_sms", String.valueOf(this.mTpmr));
        bArr[i2] = (byte) this.mTpmr;
        Log.d(this.LOG_TAG, "setTPMRintoTPDU mTpmr : " + this.mTpmr);
    }

    public void updateTPMR(int i) {
        String telephonyProperty = TelephonyManager.getTelephonyProperty(i, "persist.radio.tpmr_sms", "0");
        if (telephonyProperty == null || telephonyProperty.isEmpty()) {
            this.mTpmr = 0;
        } else {
            this.mTpmr = Integer.parseInt(telephonyProperty) & 255;
        }
    }

    private void setTelephonyProperty(int i, String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer("");
        String str3 = SystemProperties.get(str);
        if (str2 == null) {
            str2 = "";
        }
        String replace = str2.replace(',', ' ');
        String[] split = str3 != null ? str3.split(",") : null;
        if (SubscriptionManager.isValidPhoneId(i)) {
            int i2 = 0;
            while (i2 < i) {
                stringBuffer.append((split == null || i2 >= split.length) ? "" : split[i2]);
                stringBuffer.append(",");
                i2++;
            }
            stringBuffer.append(replace);
            if (split != null) {
                for (int i3 = i + 1; i3 < split.length; i3++) {
                    stringBuffer.append(",");
                    stringBuffer.append(split[i3]);
                }
            }
            String stringBuffer2 = stringBuffer.toString();
            int length = stringBuffer2.length();
            try {
                length = stringBuffer2.getBytes("utf-8").length;
            } catch (UnsupportedEncodingException unused) {
                Log.e(this.LOG_TAG, "setTelephonyProperty: utf-8 not supported");
            }
            if (length > 91) {
                Log.e(this.LOG_TAG, "setTelephonyProperty: property too long phoneId=" + i + " property=" + str + " value: " + replace + " propVal=" + stringBuffer2);
                return;
            }
            SystemProperties.set(str, stringBuffer2);
        }
    }

    private void setTPRDintoTPDU(byte[] bArr) {
        byte b;
        int i;
        if (bArr == null || bArr.length <= 0 || (b = bArr[0]) <= 0 || bArr.length <= (i = b + 1)) {
            return;
        }
        byte b2 = bArr[i];
        if ((b2 & 1) != 1) {
            return;
        }
        bArr[i] = (byte) (b2 | 4);
    }

    private boolean isTPRDset(byte[] bArr) {
        int i;
        if (bArr != null && bArr.length > 0) {
            byte b = bArr[0];
            if (b > 0 && bArr.length > (i = b + 1)) {
                byte b2 = bArr[i];
                if ((b2 & 1) == 1) {
                    return (b2 & 4) == 4;
                }
            }
            Log.e(this.LOG_TAG, "isTPRDset() sca is wrong: return false");
        }
        return false;
    }

    private byte getTPMR(byte[] bArr) {
        byte b;
        int i;
        if (bArr == null || bArr.length <= 0 || (b = bArr[0]) <= 0 || bArr.length <= (i = b + 2) || (bArr[b + 1] & 1) != 1) {
            return (byte) 0;
        }
        return bArr[i];
    }

    private boolean getSmsFallback() {
        ISmsServiceModule iSmsServiceModule = this.mSmsServiceModule;
        if (iSmsServiceModule == null) {
            return false;
        }
        return iSmsServiceModule.getSmsFallback(this.mPhoneId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReceiveSMSSuccssAcknowledgment(int i, int i2, int i3, int i4, int i5, SmsResponse smsResponse) {
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        Log.d(this.LOG_TAG, "onReceiveSMSAck: mno = " + simMno.getName() + " messageId = " + i3 + " reasonCode = " + i4 + " retryAfter = " + i5);
        boolean z = smsResponse.getContentType() == 1;
        ImsSmsTracker remove = this.mImsSmsTrackers.remove(Integer.valueOf(i2));
        if (remove != null) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.removeMessages(2, remove);
            }
            remove.mSentComplete = true;
            if (remove.mStatusReportRequested && !simMno.isKor()) {
                this.mDeliveryPendingList.add(remove);
            }
            if (this.mHandler != null && this.mImsSmsTrackers.size() > 0) {
                Handler handler2 = this.mHandler;
                handler2.sendMessage(handler2.obtainMessage(3));
            }
        }
        smsResponse.setMessageRef(i3);
        if (10000 < i4 && i4 < 11000) {
            handleInternalError(i2, i3, i4, smsResponse, z);
        } else if (32768 < i4 && i4 < RIL_CODE_RP_ERROR_END) {
            handleRPError(simMno, i2, i3, i4, smsResponse, remove, i);
        } else {
            handleAck(simMno, i2, i3, i4, smsResponse, remove, z, i5);
        }
    }

    private void handleAck(Mno mno, int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker, boolean z, int i4) {
        if (mno == Mno.VZW) {
            handleVzwAck(i, i2, i3, smsResponse, imsSmsTracker, z);
            return;
        }
        if (mno == Mno.SPRINT) {
            handleSprAck(i, i2, i3, smsResponse);
            return;
        }
        if (mno == Mno.BELL) {
            handleBellAck(i, i2, i3, smsResponse);
            return;
        }
        if (mno == Mno.UPC_CH) {
            handleUpcChAck(i, i2, i3, smsResponse);
            return;
        }
        if (mno == Mno.CTC) {
            handleCTCAck(i, i2, i3, smsResponse, imsSmsTracker);
            return;
        }
        if (mno == Mno.SWISSCOM) {
            handleSwisscomAck(i, i2, i3, smsResponse, imsSmsTracker);
            return;
        }
        if (mno == Mno.DOCOMO) {
            handleDocomoAck(i, i2, i3, smsResponse, imsSmsTracker, i4);
            return;
        }
        if (mno == Mno.SOFTBANK) {
            handleSbmAck(i, i2, i3, smsResponse);
            return;
        }
        if (mno.isOneOf(Mno.KDDI, Mno.RAKUTEN_JAPAN)) {
            handleKddiRakutenAck(i, i2, i3, smsResponse, imsSmsTracker, i4);
            return;
        }
        if (mno.isOrangeGPG()) {
            handleOrangeAck(i, i2, i3, smsResponse);
            return;
        }
        if (mno.isOneOf(Mno.CMCC, Mno.CU, Mno.CMHK)) {
            handleCmccCuCmhkAck(i, i2, i3, smsResponse);
            return;
        }
        if (i3 != 0 && getSmsFallback()) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
            return;
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleInternalError(int i, int i2, int i3, SmsResponse smsResponse, boolean z) {
        int i4 = 4;
        if (i3 != 10001) {
            if (i3 != 10002) {
                if (i3 == 10004) {
                    smsResponse.setErrorClass(0);
                    smsResponse.setErrorCause(19);
                } else if (z) {
                    smsResponse.setErrorClass(3);
                    smsResponse.setErrorCause(107);
                } else {
                    smsResponse.setErrorClass(0);
                    smsResponse.setErrorCause(9);
                }
            } else if (z) {
                smsResponse.setErrorClass(9);
            } else {
                smsResponse.setErrorClass(0);
                smsResponse.setErrorCause(19);
            }
            handleResult(i, i2, i3, i4, smsResponse);
        }
        if (z) {
            smsResponse.setErrorClass(3);
            smsResponse.setErrorCause(105);
        } else {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(4);
        }
        i4 = 2;
        handleResult(i, i2, i3, i4, smsResponse);
    }

    private void handleRPError(Mno mno, int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker, int i4) {
        int i5;
        byte[] tpdu = smsResponse.getTpdu();
        int i6 = tpdu.length > 3 ? tpdu[3] & 255 : 0;
        int i7 = i3 - 32768;
        int i8 = 4;
        if (mno.isOrangeGPG() && (i7 == 41 || i7 == 42)) {
            if (imsSmsTracker == null) {
                Log.d(this.LOG_TAG, "imsSmsTracker is null");
            } else {
                int i9 = imsSmsTracker.mRetryCount;
                if (i9 < 1) {
                    imsSmsTracker.mRetryCount = i9 + 1;
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, imsSmsTracker), 30000L);
                    return;
                }
            }
            TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
            int[] subId = SubscriptionManager.getSubId(i4);
            int i10 = subId != null ? subId[0] : -1;
            if (telephonyManager.isNetworkRoaming(i10) && telephonyManager.getDataNetworkType(i10) == 18) {
                Log.d(this.LOG_TAG, "orange, RP# " + i7 + ", isRoaming is true and DataNetworkType is IWLAN, so CS fallback does not done");
                i8 = 1;
            } else {
                smsResponse.setErrorClass(0);
                smsResponse.setErrorCause(19);
                Log.d(this.LOG_TAG, "orange, set errorcause as fallbackIMS due to RP# " + i7);
            }
        } else {
            i5 = 2;
            if (!isErrorForSpecificCarrier(mno, i6, i7)) {
                if (mno == Mno.DOCOMO && i7 == 21 && i6 == 197) {
                    smsResponse.setErrorClass(0);
                    Log.d(this.LOG_TAG, "Forced success for NTT");
                    i5 = 1;
                } else if (getSmsFallback()) {
                    smsResponse.setErrorClass(0);
                    smsResponse.setErrorCause(19);
                } else if (i7 == 42 || i7 == 111 || i7 == 47 || i7 == 27 || i7 == 41 || i7 == 98) {
                    i5 = 3;
                }
            }
            Log.i(this.LOG_TAG, "handleRPError: rpCause= " + i7 + ", tpCause= " + i6 + ", status= " + i5);
            handleResult(i, i2, i3, i5, smsResponse);
        }
        i5 = i8;
        Log.i(this.LOG_TAG, "handleRPError: rpCause= " + i7 + ", tpCause= " + i6 + ", status= " + i5);
        handleResult(i, i2, i3, i5, smsResponse);
    }

    private boolean isErrorForSpecificCarrier(Mno mno, int i, int i2) {
        return mno == Mno.BELL ? i == 195 || i2 == 111 || i2 == 30 || i2 == 28 : mno == Mno.KT ? i2 == 41 || i2 == 42 || i2 == 47 || i2 == 98 || i2 == 111 : mno == Mno.SMARTFREN ? i2 == 111 : mno == Mno.SPARK && i2 == 69;
    }

    private void handleVzwAck(int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker, boolean z) {
        if (i3 < 400 || i3 > 599 || imsSmsTracker == null) {
            if (i3 != 777 && i3 != 800) {
                handleResult(i, i2, i3, 1, smsResponse);
                return;
            }
            if (z) {
                smsResponse.setErrorClass(9);
                handleResult(i, i2, i3, 2, smsResponse);
                return;
            } else {
                smsResponse.setErrorClass(0);
                smsResponse.setErrorCause(19);
                handleResult(i, i2, i3, 4, smsResponse);
                return;
            }
        }
        Log.d(this.LOG_TAG, "imsSmsTracker.mRetryCount =  " + imsSmsTracker.mRetryCount);
        int i4 = imsSmsTracker.mRetryCount;
        if (i4 < 1) {
            imsSmsTracker.mRetryCount = i4 + 1;
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, imsSmsTracker), 30000L);
        } else if (z) {
            smsResponse.setErrorClass(9);
            handleResult(i, i2, i3, 2, smsResponse);
        } else {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
        }
    }

    private void handleKddiRakutenAck(int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker, int i4) {
        if (i4 == -1) {
            if (i3 != 0) {
                if (SimUtil.getSimMno(this.mPhoneId) == Mno.RAKUTEN_JAPAN && (i3 == 408 || i3 == 488)) {
                    smsResponse.setErrorClass(0);
                    smsResponse.setErrorCause(19);
                    handleResult(i, i2, i3, 4, smsResponse);
                    return;
                } else {
                    smsResponse.setErrorClass(9);
                    handleResult(i, i2, i3, 2, smsResponse);
                    return;
                }
            }
            handleResult(i, i2, i3, 1, smsResponse);
            return;
        }
        if (i3 != 403 && i3 != 404 && i3 != 408 && i3 != 500 && i3 != 503 && i3 != 504 && i3 >= 100 && i3 <= 699 && imsSmsTracker != null) {
            int i5 = imsSmsTracker.mRetryCount;
            if (i5 < 4) {
                imsSmsTracker.mRetryCount = i5 + 1;
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, imsSmsTracker), i4 * 1000);
                return;
            } else {
                smsResponse.setErrorClass(9);
                handleResult(i, i2, i3, 2, smsResponse);
                return;
            }
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleDocomoAck(int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker, int i4) {
        int i5;
        if (i3 == 504 && i4 == -1) {
            i5 = 5;
        } else {
            if (i3 == 999) {
                Log.e(this.LOG_TAG, "Waiting SMS resend timer. 999 error ignore!");
                return;
            }
            i5 = i4;
        }
        if ((i3 == 408 || i3 == 504) && i5 != -1 && imsSmsTracker != null) {
            int i6 = imsSmsTracker.mRetryCount;
            if (i6 < 1) {
                imsSmsTracker.mRetryCount = i6 + 1;
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, imsSmsTracker), i5 * 1000);
                return;
            } else {
                smsResponse.setErrorClass(9);
                handleResult(i, i2, i3, 2, smsResponse);
                return;
            }
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleSbmAck(int i, int i2, int i3, SmsResponse smsResponse) {
        if (i3 == 0) {
            handleResult(i, i2, i3, 1, smsResponse);
            return;
        }
        if (i3 == 415) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
        } else {
            smsResponse.setErrorClass(9);
            handleResult(i, i2, i3, 2, smsResponse);
        }
    }

    private void handleSprAck(int i, int i2, int i3, SmsResponse smsResponse) {
        if (i3 >= 400 && i3 <= 699) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
            return;
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleBellAck(int i, int i2, int i3, SmsResponse smsResponse) {
        if (i3 == 500 || i3 == 503 || i3 == 504 || i3 == 408) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
            return;
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleOrangeAck(int i, int i2, int i3, SmsResponse smsResponse) {
        if (i3 == 403 || i3 == 408 || ((i3 >= 500 && i3 < 600) || i3 == 708)) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
            return;
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleUpcChAck(int i, int i2, int i3, SmsResponse smsResponse) {
        if (i3 == 408 || i3 == 480 || i3 == 503) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
            return;
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleCmccCuCmhkAck(int i, int i2, int i3, SmsResponse smsResponse) {
        if (i3 > 0 && i3 < 32768) {
            smsResponse.setErrorClass(0);
            smsResponse.setErrorCause(19);
            handleResult(i, i2, i3, 4, smsResponse);
            return;
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleCTCAck(int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker) {
        int i4;
        if (i3 == 503 && imsSmsTracker != null && (i4 = imsSmsTracker.mRetryCount) < 1) {
            imsSmsTracker.mRetryCount = i4 + 1;
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, imsSmsTracker), 30000L);
        } else {
            handleResult(i, i2, i3, 1, smsResponse);
        }
    }

    private void handleSwisscomAck(int i, int i2, int i3, SmsResponse smsResponse, ImsSmsTracker imsSmsTracker) {
        if ((i3 == 400 || i3 == 403 || i3 == 404 || i3 == 488 || (i3 >= 500 && i3 < 600)) && imsSmsTracker != null) {
            int i4 = imsSmsTracker.mRetryCount;
            if (i4 < 2) {
                imsSmsTracker.mRetryCount = i4 + 1;
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, imsSmsTracker), 30000L);
                return;
            } else {
                smsResponse.setErrorClass(0);
                smsResponse.setErrorCause(19);
                handleResult(i, i2, i3, 4, smsResponse);
                return;
            }
        }
        handleResult(i, i2, i3, 1, smsResponse);
    }

    private void handleResult(int i, int i2, int i3, int i4, SmsResponse smsResponse) {
        if (smsResponse.getContentType() == 1) {
            handleCdmaResult(i, i2, i3, smsResponse);
        } else {
            handleGsmResult(i, i2, i3, i4, smsResponse);
        }
    }

    private void handleCdmaResult(int i, int i2, int i3, SmsResponse smsResponse) {
        int errorCause = smsResponse.getErrorCause();
        int errorClass = smsResponse.getErrorClass();
        int reasonCode = smsResponse.getReasonCode();
        if (errorClass != 0) {
            if (errorClass == 9) {
                Log.d(this.LOG_TAG, "Ims failed. Retry to send over 1x");
                if (canFallback(1)) {
                    onSendSmsResultIncludeErrClass(i, i2, 4, reasonCode, errorCause, errorClass);
                } else {
                    onSendSmsResultIncludeErrClass(i, i2, 2, reasonCode, errorCause, errorClass);
                }
            } else if (errorClass == 2) {
                onSendSmsResultIncludeErrClass(i, i2, 3, reasonCode, errorCause, errorClass);
            } else if (errorClass == 3) {
                onSendSmsResultIncludeErrClass(i, i2, 2, reasonCode, errorCause, errorClass);
            } else {
                onSendSmsResultIncludeErrClass(i, i2, 2, reasonCode, errorCause, errorClass);
            }
        } else if (i3 == 10004) {
            onSendSmsResultIncludeErrClass(i, i2, 4, 0, errorCause, errorClass);
        } else {
            onSendSmsResultIncludeErrClass(i, i2, 1, 0, errorCause, errorClass);
        }
        this.mSmsLogger.logAndAdd(this.LOG_TAG, "< SEND_SMS_CDMA : token = " + i + " messageId = " + i2 + " reasonCode = " + i3 + " errorCause = " + errorCause + " errorClass = " + errorClass);
    }

    private void handleGsmResult(int i, int i2, int i3, int i4, SmsResponse smsResponse) {
        if (i2 == 257) {
            if (i4 != 1) {
                if (i4 == 3) {
                    onMemoryAvailableResult(i, 3, 2);
                } else {
                    onMemoryAvailableResult(i, 2, 2);
                }
            } else if (smsResponse.getErrorClass() == 0) {
                onMemoryAvailableResult(i, 1, 1);
            } else {
                onMemoryAvailableResult(i, 2, 2);
            }
            this.mSmsLogger.logAndAdd(this.LOG_TAG, "onMemoryAvailableResult token = " + i);
            return;
        }
        int reasonCode = smsResponse.getReasonCode();
        if (i4 != 1) {
            if (i4 == 3) {
                onSendSmsResultError(i, i2, 3, reasonCode, 2);
            } else if (i4 == 4) {
                if (canFallback(2)) {
                    Log.d(this.LOG_TAG, "Ims failed. Retry SMS Over SGs/CS");
                    onSendSmsResultError(i, i2, 4, reasonCode, 1);
                } else {
                    onSendSmsResultError(i, i2, 2, reasonCode, 2);
                }
            } else {
                onSendSmsResultError(i, i2, i4, reasonCode, 2);
            }
        } else if (smsResponse.getErrorClass() == 0) {
            onSendSmsResultSuccess(i, i2);
        } else {
            onSendSmsResultError(i, i2, 2, reasonCode, 2);
            i4 = 2;
        }
        this.mSmsLogger.logAndAdd(this.LOG_TAG, "< SEND_SMS : token = " + i + " messageId = " + i2 + " reasonCode = " + i3 + " status = " + i4 + " (1:Ok 2:Error 3:Retry 4:Fallback)");
    }

    private boolean canFallback(int i) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
            Mno simMno = SimUtil.getSimMno(this.mPhoneId);
            String telephonyProperty = TelephonyManager.getTelephonyProperty(this.mPhoneId, "gsm.sim.operator.numeric", "00000");
            int iccType = IccUtils.getIccType(this.mPhoneId);
            if ((simMno == Mno.CMCC && iccType == 2 && (telephonyProperty.equals("46000") || telephonyProperty.equals("46002") || telephonyProperty.equals("46007") || telephonyProperty.equals("46008"))) || simMno.isOneOf(Mno.BELL, Mno.SOFTBANK, Mno.SPRINT)) {
                return true;
            }
            if (simMno == Mno.VZW) {
                boolean parseBoolean = Boolean.parseBoolean(TelephonyManager.getTelephonyProperty(this.mPhoneId, "gsm.operator.isroaming", null));
                if (!ImsUtil.isCdmalessEnabled(this.mContext, this.mPhoneId) && (!parseBoolean || telephonyManager.getNetworkType() != 13)) {
                    if (i == 1 && this.mSmsServiceModule.isVolteSupported(this.mPhoneId)) {
                        return false;
                    }
                }
                Log.d(this.LOG_TAG, "fallback always over NAS (cdmaless / volte roaming)");
                return true;
            }
            if (simMno == Mno.RJIL) {
                return false;
            }
            if (simMno == Mno.PLAY) {
                ServiceStateWrapper serviceStateWrapper = new ServiceStateWrapper(telephonyManager.semGetServiceState(this.mPhoneId));
                if (serviceStateWrapper.getVoiceRoaming() && serviceStateWrapper.getVoiceRoamingType() != 2 && telephonyManager.getDataNetworkType() == 18) {
                    Log.d(this.LOG_TAG, "Block fallback for Play in VoWiFi international roaming");
                    return false;
                }
            } else if (simMno.isOrangeGPG() && telephonyManager.isNetworkRoaming() && telephonyManager.getDataNetworkType() == 18) {
                return false;
            }
            if (telephonyManager.semGetServiceState(this.mPhoneId) == null) {
                Log.d(this.LOG_TAG, "serviceState is null");
                return false;
            }
            Log.d(this.LOG_TAG, "serviceState.getState() = " + telephonyManager.semGetServiceState(this.mPhoneId).getState());
            return telephonyManager.semGetServiceState(this.mPhoneId).getState() == 0;
        } catch (SecurityException unused) {
            Log.e(this.LOG_TAG, "No permission for telephony service");
            return false;
        }
    }

    private boolean canFallbackForTimeout() {
        TelephonyManager telephonyManager;
        Mno simMno;
        String telephonyProperty;
        int iccType;
        try {
            telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
            simMno = SimUtil.getSimMno(this.mPhoneId);
            telephonyProperty = TelephonyManager.getTelephonyProperty(this.mPhoneId, "gsm.sim.operator.numeric", "00000");
            iccType = IccUtils.getIccType(this.mPhoneId);
        } catch (SecurityException unused) {
            Log.e(this.LOG_TAG, "No permission for telephony service");
        }
        if ((simMno == Mno.CMCC && iccType == 2 && (telephonyProperty.equals("46000") || telephonyProperty.equals("46002") || telephonyProperty.equals("46007") || telephonyProperty.equals("46008"))) || simMno.isOneOf(Mno.BELL, Mno.SPRINT)) {
            return true;
        }
        if (simMno.isOrangeGPG() && telephonyManager.isNetworkRoaming() && telephonyManager.getDataNetworkType() == 18) {
            Log.d(this.LOG_TAG, "Block timeout fallback for Orange in VoWiFi roaming");
            return false;
        }
        if (getSmsFallback() || simMno.isOrangeGPG()) {
            if (telephonyManager.semGetServiceState(this.mPhoneId) == null) {
                Log.d(this.LOG_TAG, "serviceState is null");
                return false;
            }
            Log.d(this.LOG_TAG, "serviceState.getState() = " + telephonyManager.semGetServiceState(this.mPhoneId).getState());
            if (telephonyManager.semGetServiceState(this.mPhoneId).getState() == 0) {
                Log.d(this.LOG_TAG, "CanFallbackForTimeout() : SmsFallbackDefaultSupported");
                return true;
            }
        }
        Log.d(this.LOG_TAG, "CanFallbackForTimeout() : SmsFallback is not Supported");
        return false;
    }

    private HashMap<String, Object> getImsSmsTrackerMap(int i, int i2, String str, byte[] bArr, String str2, int i3, boolean z) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("token", Integer.valueOf(i));
        hashMap.put("messageId", Integer.valueOf(i2));
        hashMap.put(MAP_KEY_DEST_ADDR, str);
        hashMap.put(MAP_KEY_PDU, bArr);
        hashMap.put(MAP_KEY_CONTENT_TYPE, str2);
        hashMap.put(MAP_KEY_RETRY_COUNT, Integer.valueOf(i3));
        hashMap.put(MAP_KEY_STATUS_REPORT, Boolean.valueOf(z));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSmsPduTestReceived(int i, String str, byte[] bArr) throws RuntimeException {
        Log.d(this.LOG_TAG, "Incoming PduTest: " + IccUtils.bytesToHexString(bArr));
        onSmsReceived(i, str, bArr);
    }

    private class SmsEventListener extends ISmsServiceEventListener.Stub {
        private SmsEventListener() {
        }

        public void onReceiveIncomingSMS(int i, String str, byte[] bArr) {
            if (str == null) {
                return;
            }
            SmsMessage smsMessage = new SmsMessage();
            if (str.equals("application/vnd.3gpp.sms")) {
                ImsSmsImpl.this.mCurrentNetworkType = 2;
                smsMessage.parseDeliverPdu(bArr, SmsMessage.FORMAT_3GPP);
                if (smsMessage.getMessageType() == 1) {
                    ImsSmsImpl.this.onSmsReceived(i, SmsMessage.FORMAT_3GPP, bArr);
                } else if (smsMessage.getMessageType() == 2) {
                    ImsSmsImpl.this.handleStatusReport(smsMessage.getMessageRef(), i, SmsMessage.FORMAT_3GPP, bArr);
                }
            } else if (str.equals("application/vnd.3gpp2.sms")) {
                ImsSmsImpl.this.mCurrentNetworkType = 1;
                byte[] convertToFrameworkSmsFormat = smsMessage.convertToFrameworkSmsFormat(bArr);
                int msgID = smsMessage.getMsgID();
                if (smsMessage.getMessageType() == 4) {
                    ImsSmsImpl.this.handleStatusReport(smsMessage.getMsgID(), i, SmsMessage.FORMAT_3GPP2, convertToFrameworkSmsFormat);
                } else {
                    ImsSmsImpl.this.onSmsReceived(msgID, SmsMessage.FORMAT_3GPP2, convertToFrameworkSmsFormat);
                }
            }
            ImsSmsImpl.this.mSmsLogger.logAndAdd(ImsSmsImpl.this.LOG_TAG, "< NEW_SMS : contentType = " + str + " messageId = " + i);
            if (TelephonyFeatures.SHIP_BUILD) {
                return;
            }
            Log.d(ImsSmsImpl.this.LOG_TAG, "pdu = " + IccUtils.bytesToHexString(bArr));
        }

        public void onReceiveSMSAck(int i, int i2, String str, byte[] bArr, int i3) {
            int i4 = "application/vnd.3gpp2.sms".equals(str) ? 1 : 2;
            int tokenByMessageId = ImsSmsImpl.this.getTokenByMessageId(i);
            if (tokenByMessageId == -1) {
                Log.i(ImsSmsImpl.this.LOG_TAG, "messageID = " + i + " cannot find token");
                return;
            }
            SmsResponse smsResponse = new SmsResponse(i, i2, bArr, i4);
            ImsSmsImpl imsSmsImpl = ImsSmsImpl.this;
            imsSmsImpl.onReceiveSMSSuccssAcknowledgment(imsSmsImpl.mPhoneId, tokenByMessageId, i, i2, i3, smsResponse);
        }

        public void onReceiveSMSDeliveryReportAck(int i, int i2, int i3) {
            Mno simMno = SimUtil.getSimMno(ImsSmsImpl.this.mPhoneId);
            ImsSmsImpl.this.mSmsLogger.logAndAdd(ImsSmsImpl.this.LOG_TAG, "< SMS_ACK : mno " + simMno + " messageId " + i + " reasonCode " + i2 + " retryAfter " + i3);
            if (simMno == Mno.KDDI && i3 != -1 && ImsSmsImpl.this.mSentDeliveryAck != null && ImsSmsImpl.this.mSentDeliveryAck.mRetryCount < 4) {
                ImsSmsImpl.this.mHandler.sendMessageDelayed(ImsSmsImpl.this.mHandler.obtainMessage(4, ImsSmsImpl.this.mSentDeliveryAck), i3 * 1000);
                ImsSmsImpl.this.mSentDeliveryAck.mRetryCount++;
                return;
            }
            ImsSmsImpl.this.onReceiveSmsDeliveryReportAck(i, i2);
        }
    }

    private static class ImsSmsTracker {
        public String mContentType;
        private final HashMap<String, Object> mData;
        public final String mDestAddress;
        public int mMessageId;
        public byte[] mPdu;
        public int mPhoneId;
        public int mRetryCount;
        public boolean mSentComplete;
        public boolean mStatusReportRequested;
        public int mToken;

        private ImsSmsTracker(int i, HashMap<String, Object> hashMap, int i2, int i3, int i4, byte[] bArr, String str, String str2, boolean z, boolean z2) {
            this.mPhoneId = i;
            this.mData = hashMap;
            this.mToken = i2;
            this.mRetryCount = i3;
            this.mMessageId = i4;
            this.mPdu = bArr;
            this.mDestAddress = str;
            this.mContentType = str2;
            this.mStatusReportRequested = z;
            this.mSentComplete = z2;
        }

        public int getToken() {
            return this.mToken;
        }

        public int getRetryCount() {
            return this.mRetryCount;
        }

        public int getMessageId() {
            return this.mMessageId;
        }

        public HashMap<String, Object> getData() {
            return this.mData;
        }
    }

    private static final class LastSentDeliveryAck {
        public int mNetworkType;
        public byte[] mPdu;
        public int mRetryCount = 0;

        public LastSentDeliveryAck(byte[] bArr, int i, int i2) {
            this.mPdu = bArr;
            this.mNetworkType = i2;
        }
    }
}
