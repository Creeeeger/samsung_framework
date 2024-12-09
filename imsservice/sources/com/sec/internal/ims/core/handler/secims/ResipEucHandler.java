package com.sec.internal.ims.core.handler.secims;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.EucHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.AckMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.NotificationMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.PersistentMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.SystemMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.VolatileMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestEucSendResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.SendEucResponseResponse;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucSendResponseStatus;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.translate.AcknowledgementMessageTranslator;
import com.sec.internal.ims.translate.EucResponseStatusTranslator;
import com.sec.internal.ims.translate.NotificationMessageTranslator;
import com.sec.internal.ims.translate.PersistentMessageTranslator;
import com.sec.internal.ims.translate.SystemRequestMessageTranslator;
import com.sec.internal.ims.translate.VolatileMessageTranslator;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;

/* loaded from: classes.dex */
public class ResipEucHandler extends EucHandler {
    private static final int EVENT_SEND_RESPONSE = 1;
    private static final int EVENT_SEND_RESPONSE_DONE = 10;
    private static final int EVENT_STACK_NOTIFY = 100;
    private static final String LOG_TAG = ResipEucHandler.class.getSimpleName();
    private final RegistrantList mAckMessageRegistrants;
    private final AcknowledgementMessageTranslator mAcknowledgementMessageTranslator;
    private final EucResponseStatusTranslator mEucResponseStatusTranslator;
    private final IImsFramework mImsFramework;
    private final RegistrantList mNotificationMessageRegistrants;
    private final NotificationMessageTranslator mNotificationMessageTranslator;
    private final RegistrantList mPersistentMessageRegistrants;
    private final PersistentMessageTranslator mPersistentMessageTranslator;
    private final RegistrantList mSystemMessageRegistrants;
    private final SystemRequestMessageTranslator mSystemRequestMessageTranslator;
    private final RegistrantList mVolatileMessageRegistrants;
    private final VolatileMessageTranslator mVolatileMessageTranslator;

    private String parseStr(String str) {
        return str != null ? str : "";
    }

    ResipEucHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mPersistentMessageRegistrants = new RegistrantList();
        this.mVolatileMessageRegistrants = new RegistrantList();
        this.mNotificationMessageRegistrants = new RegistrantList();
        this.mAckMessageRegistrants = new RegistrantList();
        this.mSystemMessageRegistrants = new RegistrantList();
        this.mImsFramework = iImsFramework;
        StackIF stackIF = StackIF.getInstance();
        this.mPersistentMessageTranslator = new PersistentMessageTranslator();
        this.mVolatileMessageTranslator = new VolatileMessageTranslator();
        this.mAcknowledgementMessageTranslator = new AcknowledgementMessageTranslator();
        this.mNotificationMessageTranslator = new NotificationMessageTranslator();
        this.mSystemRequestMessageTranslator = new SystemRequestMessageTranslator();
        this.mEucResponseStatusTranslator = new EucResponseStatusTranslator();
        stackIF.registerEucrEvent(this, 100, null);
    }

    @Override // com.sec.internal.ims.core.handler.EucHandler, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            handleSendResponseRequest((EucResponseData) message.obj);
            return;
        }
        if (i == 10) {
            Object obj = message.obj;
            handleSendResponseResponse((SendEucResponseResponse) ((AsyncResult) obj).result, (Message) ((AsyncResult) obj).userObj);
        } else if (i == 100) {
            handleNotify((Notify) ((AsyncResult) message.obj).result);
        } else {
            Log.e(LOG_TAG, "handleMessage: Undefined message, ignoring!");
        }
    }

    private void handleNotify(Notify notify) {
        if (notify.notiType() != 27) {
            Log.e(LOG_TAG, "Invalid notify, ignoring!");
        }
        EucMessage eucMessage = (EucMessage) notify.noti(new EucMessage());
        switch (notify.notifyid()) {
            case Id.NOTIFY_EUC_PERSISTENT_MESSAGE /* 10030 */:
                handlePersistentMessage(eucMessage);
                break;
            case Id.NOTIFY_EUC_VOLATILE_MESSAGE /* 10031 */:
                handleVolatileMessage(eucMessage);
                break;
            case Id.NOTIFY_EUC_ACK_MESSAGE /* 10032 */:
                handleAckMessage(eucMessage);
                break;
            case Id.NOTIFY_EUC_NOTIFICATION_MESSAGE /* 10033 */:
                handleNotificationMessage(eucMessage);
                break;
            case Id.NOTIFY_EUC_SYSTEM_MESSAGE /* 10034 */:
                handleSystemMessage(eucMessage);
                break;
            default:
                Log.e(LOG_TAG, "handleNotify(): unexpected notify id, ignoring!");
                break;
        }
    }

    private void handlePersistentMessage(EucMessage eucMessage) {
        String str = LOG_TAG;
        Log.i(str, "handlePersistentMessage");
        try {
            PersistentMessage persistentMessage = (PersistentMessage) eucMessage.message(new PersistentMessage());
            if (persistentMessage == null) {
                Log.e(str, "Invalid message, ignoring!");
            } else {
                this.mPersistentMessageRegistrants.notifyRegistrants(new AsyncResult(null, this.mPersistentMessageTranslator.translate(persistentMessage), null));
            }
        } catch (TranslationException e) {
            Log.e(LOG_TAG, "Invalid message, ignoring! " + e.getMessage());
        }
    }

    private void handleVolatileMessage(EucMessage eucMessage) {
        String str = LOG_TAG;
        Log.i(str, "handleVolatileMessage");
        try {
            VolatileMessage volatileMessage = (VolatileMessage) eucMessage.message(new VolatileMessage());
            if (volatileMessage == null) {
                Log.e(str, "Invalid message, ignoring!");
            } else {
                this.mVolatileMessageRegistrants.notifyRegistrants(new AsyncResult(null, this.mVolatileMessageTranslator.translate(volatileMessage), null));
            }
        } catch (TranslationException e) {
            Log.e(LOG_TAG, "Invalid message, ignoring! " + e.getMessage());
        }
    }

    private void handleAckMessage(EucMessage eucMessage) {
        String str = LOG_TAG;
        Log.i(str, "handleAckMessage");
        try {
            AckMessage ackMessage = (AckMessage) eucMessage.message(new AckMessage());
            if (ackMessage == null) {
                Log.e(str, "Invalid message, ignoring!");
            } else {
                this.mAckMessageRegistrants.notifyRegistrants(new AsyncResult(null, this.mAcknowledgementMessageTranslator.translate(ackMessage), null));
            }
        } catch (TranslationException e) {
            Log.e(LOG_TAG, "Invalid message, ignoring! " + e.getMessage());
        }
    }

    private void handleNotificationMessage(EucMessage eucMessage) {
        String str = LOG_TAG;
        Log.i(str, "handleNotificationMessage");
        try {
            NotificationMessage notificationMessage = (NotificationMessage) eucMessage.message(new NotificationMessage());
            if (notificationMessage == null) {
                Log.e(str, "Invalid message, ignoring!");
            } else {
                this.mNotificationMessageRegistrants.notifyRegistrants(new AsyncResult(null, this.mNotificationMessageTranslator.translate(notificationMessage), null));
            }
        } catch (TranslationException e) {
            Log.e(LOG_TAG, "Invalid message, ignoring! " + e.getMessage());
        }
    }

    private void handleSystemMessage(EucMessage eucMessage) {
        String str = LOG_TAG;
        Log.i(str, "handleSystemMessage");
        try {
            SystemMessage systemMessage = (SystemMessage) eucMessage.message(new SystemMessage());
            if (systemMessage == null) {
                Log.e(str, "Invalid message, ignoring!");
            } else {
                this.mSystemMessageRegistrants.notifyRegistrants(new AsyncResult(null, this.mSystemRequestMessageTranslator.translate(systemMessage), null));
            }
        } catch (TranslationException e) {
            Log.e(LOG_TAG, "Invalid message, ignoring! " + e.getMessage());
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void registerForPersistentMessage(Handler handler, int i, Object obj) {
        this.mPersistentMessageRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void unregisterForPersistentMessage(Handler handler) {
        this.mPersistentMessageRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void registerForVolatileMessage(Handler handler, int i, Object obj) {
        this.mVolatileMessageRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void unregisterForVolatileMessage(Handler handler) {
        this.mVolatileMessageRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void registerForNotificationMessage(Handler handler, int i, Object obj) {
        this.mNotificationMessageRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void unregisterForNotificationMessage(Handler handler) {
        this.mNotificationMessageRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void registerForAckMessage(Handler handler, int i, Object obj) {
        this.mAckMessageRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void unregisterForAckMessage(Handler handler) {
        this.mAckMessageRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void registerForSystemMessage(Handler handler, int i, Object obj) {
        this.mSystemMessageRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void unregisterForSystemMessage(Handler handler) {
        this.mSystemMessageRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface
    public void sendEucResponse(EucResponseData eucResponseData) {
        sendMessage(obtainMessage(1, eucResponseData));
    }

    private void handleSendResponseRequest(EucResponseData eucResponseData) {
        String str = LOG_TAG;
        Log.i(str, "onSendResponse: " + eucResponseData);
        UserAgent userAgent = getUserAgent(eucResponseData.getOwnIdentity());
        if (userAgent == null) {
            Log.e(str, "handleSendResponseRequest: EUC UserAgent not found!");
            sendCallback(eucResponseData.getCallback(), new EucSendResponseStatus(eucResponseData.getId(), eucResponseData.getType(), eucResponseData.getRemoteUri(), eucResponseData.getOwnIdentity(), EucSendResponseStatus.Status.FAILURE_INTERNAL));
            return;
        }
        int i = eucResponseData.getType() == EucType.PERSISTENT ? 0 : 1;
        int i2 = !eucResponseData.getValue().equals(EucResponseData.Response.ACCEPT) ? 1 : 0;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(eucResponseData.getPin()));
        int createString2 = flatBufferBuilder.createString(parseStr(eucResponseData.getId()));
        int createString3 = flatBufferBuilder.createString(eucResponseData.getRemoteUri() != null ? eucResponseData.getRemoteUri().toString() : "");
        RequestEucSendResponse.startRequestEucSendResponse(flatBufferBuilder);
        RequestEucSendResponse.addHandle(flatBufferBuilder, userAgent.getHandle());
        RequestEucSendResponse.addId(flatBufferBuilder, createString2);
        RequestEucSendResponse.addPin(flatBufferBuilder, createString);
        RequestEucSendResponse.addRemoteUri(flatBufferBuilder, createString3);
        RequestEucSendResponse.addValue(flatBufferBuilder, i2);
        RequestEucSendResponse.addType(flatBufferBuilder, i);
        int endRequestEucSendResponse = RequestEucSendResponse.endRequestEucSendResponse(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReq(flatBufferBuilder, endRequestEucSendResponse);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_EUC_SEND_RESPONSE);
        Request.addReqType(flatBufferBuilder, (byte) 36);
        sendRequestToStack(Id.REQUEST_EUC_SEND_RESPONSE, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(10, eucResponseData.getCallback()), userAgent);
    }

    private void handleSendResponseResponse(SendEucResponseResponse sendEucResponseResponse, Message message) {
        Log.i(LOG_TAG, "handleSendResponseResponse: " + sendEucResponseResponse);
        sendCallback(message, this.mEucResponseStatusTranslator.translate(sendEucResponseResponse));
    }

    private UserAgent getUserAgent(String str) {
        IRegistrationManager registrationManager = this.mImsFramework.getRegistrationManager();
        if (registrationManager != null) {
            return (UserAgent) registrationManager.getUserAgentByImsi("euc", str);
        }
        return null;
    }

    private void sendRequestToStack(int i, FlatBufferBuilder flatBufferBuilder, int i2, Message message, UserAgent userAgent) {
        if (userAgent == null) {
            Log.e(LOG_TAG, "sendRequestToStack(): UserAgent not found.");
        } else {
            userAgent.sendRequestToStack(new ResipStackRequest(i, flatBufferBuilder, i2, message));
        }
    }

    private void sendCallback(Message message, Object obj) {
        AsyncResult.forMessage(message, obj, null);
        message.sendToTarget();
    }
}
