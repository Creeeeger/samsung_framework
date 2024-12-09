package com.sec.internal.ims.core.handler.secims;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.internal.constants.ims.servicemodules.volte2.RrcConnectionEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.ims.core.handler.SmsHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ReceiveSmsNotification;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RrcConnectionEvent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.SmsRpAckNotification;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestMsgSetMsgAppInfoToSipUa;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.GeneralResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.SendSmsResponse;
import com.sec.internal.ims.servicemodules.sms.SmsEvent;
import com.sec.internal.interfaces.ims.IImsFramework;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ResipSmsHandler extends SmsHandler {
    static final int EVENT_NEW_INCOMING_SMS = 3;
    static final int EVENT_RP_ACK_TIMEOUT = 5;
    static final int EVENT_RRC_CONNECTION = 6;
    static final int EVENT_SEND_SMS = 1;
    static final int EVENT_SEND_SMS_COMPLETE = 2;
    static final int EVENT_SET_MSG_MSGAPP_INFO_TO_SIP_UA = 11;
    static final int EVENT_SET_MSG_MSGAPP_INFO_TO_SIP_UA_RESP = 12;
    static final int EVENT_SMS_RP_ACK_RECEIVED = 4;
    private static final String LOG_TAG = "ResipSmsHandler";
    static final int RP_ACK_TIMEOUT_MILLIS = 600000;
    private final IImsFramework mImsFramework;
    protected Map<String, SmsMessage> mPendingMessage;
    private final RegistrantList mRrcConnectionEventRegistrants;
    private final RegistrantList mSmsEventRegistrants;

    public static class SmsMessage {
        String callId;
        String contentType;
        int errorCode;
        boolean isDeliveryReport;
        boolean isEmergency;
        String localuri;
        int msgId;
        byte[] pdu;
        String smsc;
        UserAgent ua;

        public SmsMessage(UserAgent userAgent, String str, String str2, String str3, byte[] bArr, int i, boolean z, String str4, boolean z2) {
            this.ua = userAgent;
            this.smsc = str;
            this.localuri = str2;
            this.contentType = str3;
            this.pdu = bArr;
            this.msgId = i;
            this.isDeliveryReport = z;
            this.callId = str4;
            this.isEmergency = z2;
        }
    }

    public ResipSmsHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mSmsEventRegistrants = new RegistrantList();
        this.mRrcConnectionEventRegistrants = new RegistrantList();
        this.mImsFramework = iImsFramework;
        StackIF stackIF = StackIF.getInstance();
        stackIF.registerNewIncomingSmsEvent(this, 3, null);
        stackIF.registerSmsRpAckEvent(this, 4, null);
        stackIF.registerForRrcConnectionEvent(this, 6, null);
        this.mPendingMessage = new HashMap();
    }

    @Override // com.sec.internal.ims.core.handler.SmsHandler, com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void registerForSMSEvent(Handler handler, int i, Object obj) {
        this.mSmsEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.SmsHandler, com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void registerForRrcConnectionEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForRrcConnectionEvent:");
        this.mRrcConnectionEventRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.SmsHandler, com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void sendMessage(String str, String str2, String str3, byte[] bArr, boolean z, String str4, int i, int i2, boolean z2) {
        UserAgent uaByRegId;
        if (!Debug.isProductShip()) {
            Log.i(LOG_TAG, "sendMessage: smsc " + str + " LocalUri : " + str2 + " contentType " + str3 + " msdId " + i + " regId " + i2 + " isEmeregency " + z2);
        } else {
            Log.i(LOG_TAG, "sendMessage: contentType " + str3 + " msdId " + i + " regId " + i2);
        }
        if (i2 == 0) {
            uaByRegId = getUa("smsip");
        } else {
            uaByRegId = getUaByRegId(i2);
        }
        UserAgent userAgent = uaByRegId;
        if (userAgent == null || !userAgent.isRegistered(true)) {
            Log.i(LOG_TAG, "sendMessage: Not registered.");
            this.mSmsEventRegistrants.notifyResult(new SmsEvent(userAgent != null ? userAgent.getImsRegistration() : null, 11, i, 999, null, null, str3, str4, null, -1));
        } else {
            sendMessage(obtainMessage(1, new SmsMessage(userAgent, str, str2, str3, bArr, i, z, str4, z2)));
        }
    }

    @Override // com.sec.internal.ims.core.handler.SmsHandler, com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void sendSMSResponse(int i, String str, int i2) {
        Log.i(LOG_TAG, "sendSMSResponse(): [Call-ID] " + str + " [Status] " + i2);
        UserAgent ua = getUa(i, "smsip");
        if (ua != null) {
            ua.sendSmsResponse(str, i2);
        }
    }

    @Override // com.sec.internal.ims.core.handler.SmsHandler, com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void setMsgAppInfoToSipUa(int i, String str) {
        sendMessage(obtainMessage(11, i, 0, str));
    }

    private void onSendMessage(SmsMessage smsMessage) {
        smsMessage.ua.sendSms(smsMessage.smsc, smsMessage.localuri, smsMessage.contentType, smsMessage.pdu, smsMessage.isDeliveryReport, smsMessage.callId, smsMessage.isEmergency, obtainMessage(2, smsMessage));
    }

    private void onSendSmsResponse(AsyncResult asyncResult) {
        SendSmsResponse sendSmsResponse = (SendSmsResponse) asyncResult.result;
        SmsMessage smsMessage = (SmsMessage) asyncResult.userObj;
        UserAgent ua = getUa((int) sendSmsResponse.handle());
        Log.i(LOG_TAG, "onSendSmsResponse: statusCode " + sendSmsResponse.statusCode() + " callId " + sendSmsResponse.callId());
        if (ua == null) {
            Log.e(LOG_TAG, "onSendSmsResponse: UserAgent is null.");
            return;
        }
        if (sendSmsResponse.statusCode() != 202 && sendSmsResponse.statusCode() != 200) {
            Log.e(LOG_TAG, "onSendSmsResponse: errorStr " + sendSmsResponse.errStr());
            SmsEvent smsEvent = new SmsEvent();
            smsEvent.setImsRegistration(ua.getImsRegistration());
            smsEvent.setEventType(12);
            smsEvent.setMessageID(smsMessage.msgId);
            smsEvent.setCallID(sendSmsResponse.callId());
            this.mSmsEventRegistrants.notifyResult(smsEvent);
            SmsEvent smsEvent2 = new SmsEvent();
            smsEvent2.setImsRegistration(ua.getImsRegistration());
            smsEvent2.setMessageID(smsMessage.msgId);
            smsEvent2.setCallID(sendSmsResponse.callId());
            if (sendSmsResponse.content() == null || "".equals(sendSmsResponse.content())) {
                smsEvent2.setContentType(null);
            } else {
                smsEvent2.setContent(sendSmsResponse.content());
                smsEvent2.setContentType(sendSmsResponse.contentType() + "/" + sendSmsResponse.contentSubType());
            }
            smsEvent2.setData(null);
            smsEvent2.setReasonCode((int) sendSmsResponse.statusCode());
            smsEvent2.setReason(sendSmsResponse.errStr());
            smsEvent2.setRetryAfter((int) sendSmsResponse.retryAfter());
            smsEvent2.setPhoneId(ua.getPhoneId());
            this.mSmsEventRegistrants.notifyResult(smsEvent2);
            return;
        }
        SmsEvent smsEvent3 = new SmsEvent();
        smsEvent3.setImsRegistration(ua.getImsRegistration());
        smsEvent3.setEventType(12);
        smsEvent3.setMessageID(smsMessage.msgId);
        smsEvent3.setCallID(sendSmsResponse.callId());
        smsEvent3.setReasonCode((int) sendSmsResponse.statusCode());
        smsEvent3.setReason(sendSmsResponse.errStr());
        smsEvent3.setPhoneId(ua.getPhoneId());
        this.mSmsEventRegistrants.notifyResult(smsEvent3);
        SmsEvent smsEvent4 = new SmsEvent();
        smsEvent4.setImsRegistration(ua.getImsRegistration());
        smsEvent4.setMessageID(smsMessage.msgId);
        smsEvent4.setCallID(sendSmsResponse.callId());
        smsEvent4.setContentType(null);
        smsEvent4.setData(null);
        smsEvent4.setReasonCode((int) sendSmsResponse.statusCode());
        smsEvent4.setReason(sendSmsResponse.errStr());
        smsEvent4.setPhoneId(ua.getPhoneId());
        this.mSmsEventRegistrants.notifyResult(smsEvent4);
        smsMessage.errorCode = (int) sendSmsResponse.statusCode();
        this.mPendingMessage.put(sendSmsResponse.callId(), smsMessage);
        sendMessageDelayed(obtainMessage(5, sendSmsResponse.callId()), 600000L);
    }

    private void onSmsRpAckReceived(AsyncResult asyncResult) {
        SmsRpAckNotification smsRpAckNotification = (SmsRpAckNotification) asyncResult.result;
        String str = smsRpAckNotification.contentType() + "/" + smsRpAckNotification.contentSubType();
        Log.i(LOG_TAG, "onSmsRpAckReceived: callId " + smsRpAckNotification.callId() + " contentType " + str);
        SmsEvent smsEvent = new SmsEvent();
        UserAgent ua = getUa((int) smsRpAckNotification.handle());
        if (ua == null) {
            Log.e(LOG_TAG, "onSmsRpAckReceived: UserAgent is null.");
            return;
        }
        smsEvent.setImsRegistration(ua.getImsRegistration());
        smsEvent.setCallID(smsRpAckNotification.callId());
        smsEvent.setContentType(str);
        smsEvent.setData(StrUtil.hexStringToBytes(smsRpAckNotification.ackCode()));
        if ("vnd.3gpp2.sms".equals(smsRpAckNotification.contentSubType())) {
            SmsMessage remove = this.mPendingMessage.remove(smsRpAckNotification.callId());
            if (remove == null) {
                Log.i(LOG_TAG, "onSmsRpAckReceived: unknown ack message.");
                return;
            } else {
                smsEvent.setMessageID(remove.msgId);
                smsEvent.setReasonCode(remove.errorCode);
            }
        } else {
            smsEvent.setReasonCode(0);
            if (smsEvent.getData() != null) {
                smsEvent.setMessageID(smsEvent.getData()[1] & 255);
            }
        }
        if (!ua.isRegistered(true)) {
            Log.i(LOG_TAG, "onSmsRpAckReceived: Not registered.");
            smsEvent.setEventType(11);
            smsEvent.setReasonCode(999);
            this.mSmsEventRegistrants.notifyResult(smsEvent);
            return;
        }
        this.mSmsEventRegistrants.notifyResult(smsEvent);
        ua.sendSmsRpAckResponse(smsRpAckNotification.callId());
    }

    private void onRpAckTimeout(String str) {
        if (this.mPendingMessage.remove(str) == null) {
            return;
        }
        Log.i(LOG_TAG, "onRpAckTimeout: callId " + str);
    }

    private void onNewIncomingSms(AsyncResult asyncResult) {
        ReceiveSmsNotification receiveSmsNotification = (ReceiveSmsNotification) asyncResult.result;
        if (!Debug.isProductShip()) {
            Log.i(LOG_TAG, "onNewIncomingSms: handle " + receiveSmsNotification.handle() + " callId " + receiveSmsNotification.callId() + " sca " + receiveSmsNotification.scUri() + " contentType " + receiveSmsNotification.contentType() + "/" + receiveSmsNotification.contentSubType());
        } else {
            Log.i(LOG_TAG, "onNewIncomingSms: handle " + receiveSmsNotification.handle() + " callId " + receiveSmsNotification.callId() + " contentType " + receiveSmsNotification.contentType() + "/" + receiveSmsNotification.contentSubType());
        }
        String str = receiveSmsNotification.contentType() + "/" + receiveSmsNotification.contentSubType();
        SmsEvent smsEvent = new SmsEvent();
        UserAgent ua = getUa((int) receiveSmsNotification.handle());
        if (ua == null || !ua.isRegistered(true)) {
            Log.e(LOG_TAG, "onNewIncomingSms: UserAgent is null or not registered.");
            return;
        }
        String content = receiveSmsNotification.content();
        if (content != null && content.length() % 2 != 0) {
            Log.e(LOG_TAG, "onNewIncomingSms: content length should be even. content : " + content);
            return;
        }
        smsEvent.setImsRegistration(ua.getImsRegistration());
        smsEvent.setCallID(receiveSmsNotification.callId());
        smsEvent.setSmscAddr(receiveSmsNotification.scUri());
        smsEvent.setContentType(str);
        smsEvent.setData(StrUtil.hexStringToBytes(receiveSmsNotification.content()));
        this.mSmsEventRegistrants.notifyResult(smsEvent);
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

    @Override // com.sec.internal.ims.core.handler.SmsHandler, android.os.Handler
    public void handleMessage(Message message) {
        Log.i(LOG_TAG, "handleMessage: what " + message.what);
        int i = message.what;
        if (i == 11) {
            onSetMsgAppInfoToSipUa(message.arg1, (String) message.obj);
            return;
        }
        if (i != 12) {
            switch (i) {
                case 1:
                    onSendMessage((SmsMessage) message.obj);
                    break;
                case 2:
                    onSendSmsResponse((AsyncResult) message.obj);
                    break;
                case 3:
                    onNewIncomingSms((AsyncResult) message.obj);
                    break;
                case 4:
                    onSmsRpAckReceived((AsyncResult) message.obj);
                    break;
                case 5:
                    onRpAckTimeout((String) message.obj);
                    break;
                case 6:
                    onRrcConnectionEventReceived((AsyncResult) message.obj);
                    break;
            }
            return;
        }
        onSetMsgAppInfoToSipUaResp((GeneralResponse) ((AsyncResult) message.obj).result);
    }

    private UserAgent getUa(String str) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(str);
    }

    private UserAgent getUa(int i, String str) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(str, i);
    }

    private UserAgent getUa(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(i);
    }

    private UserAgent getUaByRegId(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentByRegId(i);
    }

    private void onSetMsgAppInfoToSipUa(int i, String str) {
        Log.i(LOG_TAG, "onSetMsgAppInfoToSipUserAgent: " + str);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(str);
        RequestMsgSetMsgAppInfoToSipUa.startRequestMsgSetMsgAppInfoToSipUa(flatBufferBuilder);
        RequestMsgSetMsgAppInfoToSipUa.addValue(flatBufferBuilder, createString);
        int endRequestMsgSetMsgAppInfoToSipUa = RequestMsgSetMsgAppInfoToSipUa.endRequestMsgSetMsgAppInfoToSipUa(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 404);
        Request.addReqType(flatBufferBuilder, (byte) 38);
        Request.addReq(flatBufferBuilder, endRequestMsgSetMsgAppInfoToSipUa);
        int endRequest = Request.endRequest(flatBufferBuilder);
        UserAgent ua = getUa(i, "smsip");
        if (ua != null) {
            ua.sendRequestToStack(new ResipStackRequest(404, flatBufferBuilder, endRequest, obtainMessage(12)));
        } else {
            Log.e(LOG_TAG, "onSetMsgAppInfoToSipUserAgent: UserAgent is null.");
        }
    }

    private void onSetMsgAppInfoToSipUaResp(GeneralResponse generalResponse) {
        Log.i(LOG_TAG, "onSetMsgAppInfoToSipUaResp: " + generalResponse);
    }
}
