package com.sec.internal.ims.core.handler.secims;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImImdnRecRoute;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.ImdnNotificationEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImdnResponseReceivedEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.SendImdnParams;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Iso8601;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImNotificationParam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImdnRecRoute;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ImNotificationStatusReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ImdnResponseReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendImNotificationStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.SendImNotiResponse;
import com.sec.internal.ims.translate.ResipTranslatorCollection;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ResipImdnHandler extends Handler {
    private static final int EVENT_IMDN_NOTI = 2;
    private static final int EVENT_IMDN_RESPONSE = 1;
    private static final String LOG_TAG = ResipImdnHandler.class.getSimpleName();
    private final RegistrantList mImdnNotificationRegistrants;
    private final RegistrantList mImdnResponseRegistransts;
    private final IImsFramework mImsFramework;

    private String parseStr(String str) {
        return str != null ? str : "";
    }

    public ResipImdnHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mImdnNotificationRegistrants = new RegistrantList();
        this.mImdnResponseRegistransts = new RegistrantList();
        this.mImsFramework = iImsFramework;
        StackIF.getInstance().registerImdnHandler(this, 2, null);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            handleSendImdnNotificationResponse((Message) asyncResult.userObj, (SendImNotiResponse) asyncResult.result);
        } else {
            if (i != 2) {
                return;
            }
            handleNotify((Notify) ((AsyncResult) message.obj).result);
        }
    }

    private void handleNotify(Notify notify) {
        int notifyid = notify.notifyid();
        if (notifyid == 11006) {
            handleImdnReceivedNotify(notify);
        } else {
            if (notifyid != 11015) {
                return;
            }
            handleSendImdnResponseNotify(notify);
        }
    }

    void registerForImdnNotification(Handler handler, int i, Object obj) {
        this.mImdnNotificationRegistrants.add(new Registrant(handler, i, obj));
    }

    void unregisterForImdnNotification(Handler handler) {
        this.mImdnNotificationRegistrants.remove(handler);
    }

    void registerForImdnResponse(Handler handler, int i, Object obj) {
        this.mImdnResponseRegistransts.add(new Registrant(handler, i, obj));
    }

    void unregisterForImdnResponse(Handler handler) {
        this.mImdnResponseRegistransts.remove(handler);
    }

    private int[] getImdnRecRouteOffsetArray(FlatBufferBuilder flatBufferBuilder, List<ImImdnRecRoute> list, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (ImImdnRecRoute imImdnRecRoute : list) {
            int createString = flatBufferBuilder.createString(imImdnRecRoute.getRecordRouteDispName());
            int createString2 = flatBufferBuilder.createString(imImdnRecRoute.getRecordRouteUri());
            ImdnRecRoute.startImdnRecRoute(flatBufferBuilder);
            ImdnRecRoute.addName(flatBufferBuilder, createString);
            ImdnRecRoute.addUri(flatBufferBuilder, createString2);
            iArr[i2] = ImdnRecRoute.endImdnRecRoute(flatBufferBuilder);
            i2++;
        }
        return iArr;
    }

    void sendDispositionNotification(SendImdnParams sendImdnParams, int i, int i2) {
        UserAgent userAgent;
        int createString;
        int createString2;
        int createString3;
        int createString4;
        int createString5;
        int createString6;
        String str;
        UserAgent userAgent2;
        int i3;
        int[] iArr;
        Iterator<SendImdnParams.ImdnData> it;
        int i4;
        int i5;
        ResipImdnHandler resipImdnHandler = this;
        String str2 = LOG_TAG;
        Log.i(str2, "sendDispositionNotification(): service = " + i + ", sessionHandle = " + i2);
        StringBuilder sb = new StringBuilder();
        sb.append("sendDispositionNotification(): ");
        sb.append(sendImdnParams);
        Log.i(str2, sb.toString());
        IRegistrationManager registrationManager = resipImdnHandler.mImsFramework.getRegistrationManager();
        if (i == 0) {
            userAgent = (UserAgent) registrationManager.getUserAgentByImsi("slm", sendImdnParams.mOwnImsi);
        } else if (i == 2) {
            userAgent = (UserAgent) registrationManager.getUserAgentByImsi("ft", sendImdnParams.mOwnImsi);
        } else {
            userAgent = (UserAgent) registrationManager.getUserAgentByImsi("im", sendImdnParams.mOwnImsi);
        }
        if (userAgent == null) {
            Log.e(str2, "sendDispositionNotification(): UserAgent not found.");
            Message message = sendImdnParams.mCallback;
            if (message != null) {
                resipImdnHandler.sendCallback(message, new Result(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR));
                return;
            }
            return;
        }
        int handle = userAgent.getHandle();
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        try {
            ImsUri imsUri = sendImdnParams.mUri;
            createString = flatBufferBuilder.createString(imsUri == null ? "" : imsUri.toString());
            String str3 = sendImdnParams.mConversationId;
            if (str3 == null) {
                str3 = "";
            }
            createString2 = flatBufferBuilder.createString(str3);
            String str4 = sendImdnParams.mContributionId;
            if (str4 == null) {
                str4 = "";
            }
            createString3 = flatBufferBuilder.createString(str4);
            String str5 = sendImdnParams.mDeviceId;
            createString4 = flatBufferBuilder.createString(str5 != null ? str5 : "");
            createString5 = flatBufferBuilder.createString(resipImdnHandler.parseStr(Iso8601.formatMillis(sendImdnParams.mCpimDate)));
            createString6 = flatBufferBuilder.createString(resipImdnHandler.parseStr(sendImdnParams.mUserAlias));
            Map<String, String> map = sendImdnParams.mImExtensionMNOHeaders;
            str = "sendDispositionNotification(): headers ";
            if (map == null || map.isEmpty()) {
                userAgent2 = userAgent;
                i3 = -1;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("sendDispositionNotification(): headers ");
                userAgent2 = userAgent;
                sb2.append(sendImdnParams.mImExtensionMNOHeaders);
                Log.i(str2, sb2.toString());
                i3 = ResipTranslatorCollection.translateStackImExtensionHeaders(flatBufferBuilder, sendImdnParams.mImExtensionMNOHeaders);
            }
            iArr = new int[sendImdnParams.mImdnDataList.size()];
            it = sendImdnParams.mImdnDataList.iterator();
            i4 = 0;
        } catch (NullPointerException e) {
            e = e;
        }
        while (true) {
            i5 = createString6;
            if (!it.hasNext()) {
                break;
            }
            try {
                SendImdnParams.ImdnData next = it.next();
                Iterator<SendImdnParams.ImdnData> it2 = it;
                List<ImImdnRecRoute> list = next.mImdnRecRouteList;
                int i6 = i3;
                int createImdnRecRouteVector = list != null ? ImNotificationParam.createImdnRecRouteVector(flatBufferBuilder, resipImdnHandler.getImdnRecRouteOffsetArray(flatBufferBuilder, list, list.size())) : -1;
                int createString7 = flatBufferBuilder.createString(resipImdnHandler.parseStr(next.mImdnId));
                String str6 = str;
                int createString8 = flatBufferBuilder.createString(resipImdnHandler.parseStr(Iso8601.formatMillis(next.mImdnDate)));
                int i7 = createString4;
                String str7 = next.mImdnOriginalTo;
                int createString9 = str7 != null ? flatBufferBuilder.createString(resipImdnHandler.parseStr(str7)) : -1;
                int i8 = createString3;
                int i9 = createString2;
                int createStatusVector = ImNotificationParam.createStatusVector(flatBufferBuilder, ResipTranslatorCollection.translateFwImdnNoti(new HashSet(Arrays.asList(next.mStatus))));
                ImNotificationParam.startImNotificationParam(flatBufferBuilder);
                ImNotificationParam.addImdnMessageId(flatBufferBuilder, createString7);
                ImNotificationParam.addStatus(flatBufferBuilder, createStatusVector);
                ImNotificationParam.addImdnDateTime(flatBufferBuilder, createString8);
                if (next.mImdnRecRouteList != null) {
                    ImNotificationParam.addImdnRecRoute(flatBufferBuilder, createImdnRecRouteVector);
                }
                if (next.mImdnOriginalTo != null) {
                    ImNotificationParam.addImdnOriginalTo(flatBufferBuilder, createString9);
                }
                iArr[i4] = ImNotificationParam.endImNotificationParam(flatBufferBuilder);
                i4++;
                it = it2;
                createString6 = i5;
                i3 = i6;
                str = str6;
                createString4 = i7;
                createString3 = i8;
                createString2 = i9;
                resipImdnHandler = this;
            } catch (NullPointerException e2) {
                e = e2;
                resipImdnHandler = this;
            }
            e = e2;
            resipImdnHandler = this;
            Log.i(LOG_TAG, "Discard sendDispositionNotification(): " + e.getMessage());
            Message message2 = sendImdnParams.mCallback;
            if (message2 != null) {
                resipImdnHandler.sendCallback(message2, new Result(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR));
                return;
            }
            return;
        }
        int i10 = i3;
        String str8 = str;
        int i11 = createString4;
        int i12 = createString2;
        int i13 = createString3;
        int createNotificationsVector = RequestSendImNotificationStatus.createNotificationsVector(flatBufferBuilder, iArr);
        RequestSendImNotificationStatus.startRequestSendImNotificationStatus(flatBufferBuilder);
        RequestSendImNotificationStatus.addSessionId(flatBufferBuilder, i2);
        RequestSendImNotificationStatus.addNotifications(flatBufferBuilder, createNotificationsVector);
        RequestSendImNotificationStatus.addRegistrationHandle(flatBufferBuilder, handle);
        RequestSendImNotificationStatus.addUri(flatBufferBuilder, createString);
        RequestSendImNotificationStatus.addService(flatBufferBuilder, i);
        RequestSendImNotificationStatus.addCpimDateTime(flatBufferBuilder, createString5);
        if (sendImdnParams.mConversationId != null) {
            RequestSendImNotificationStatus.addConversationId(flatBufferBuilder, i12);
        }
        if (sendImdnParams.mContributionId != null) {
            RequestSendImNotificationStatus.addContributionId(flatBufferBuilder, i13);
        }
        if (sendImdnParams.mDeviceId != null) {
            RequestSendImNotificationStatus.addDeviceId(flatBufferBuilder, i11);
        }
        Map<String, String> map2 = sendImdnParams.mImExtensionMNOHeaders;
        if (map2 != null && !map2.isEmpty()) {
            Log.i(LOG_TAG, str8 + sendImdnParams.mImExtensionMNOHeaders);
            RequestSendImNotificationStatus.addExtension(flatBufferBuilder, i10);
        }
        RequestSendImNotificationStatus.addIsGroupChat(flatBufferBuilder, sendImdnParams.mIsGroupChat);
        RequestSendImNotificationStatus.addIsBotSessionAnonymized(flatBufferBuilder, sendImdnParams.mIsBotSessionAnonymized);
        RequestSendImNotificationStatus.addUserAlias(flatBufferBuilder, i5);
        int endRequestSendImNotificationStatus = RequestSendImNotificationStatus.endRequestSendImNotificationStatus(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_IM_SEND_NOTI_STATUS);
        Request.addReqType(flatBufferBuilder, (byte) 45);
        Request.addReq(flatBufferBuilder, endRequestSendImNotificationStatus);
        sendRequestToStack(userAgent2, Id.REQUEST_IM_SEND_NOTI_STATUS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(1, sendImdnParams.mCallback));
    }

    private void handleSendImdnNotificationResponse(Message message, SendImNotiResponse sendImNotiResponse) {
        Log.i(LOG_TAG, "handleSendImdnNotificationResponse()");
        Result translateImResult = ResipTranslatorCollection.translateImResult(sendImNotiResponse.imError(), null);
        if (message != null) {
            sendCallback(message, translateImResult);
        }
    }

    private void handleImdnReceivedNotify(Notify notify) {
        Date date;
        Date date2;
        if (notify.notiType() != 34) {
            Log.e(LOG_TAG, "handleImNotiReceivedNotify(): invalid notify");
            return;
        }
        ImNotificationStatusReceived imNotificationStatusReceived = (ImNotificationStatusReceived) notify.noti(new ImNotificationStatusReceived());
        ImNotificationParam status = imNotificationStatusReceived.status();
        if (status == null) {
            Log.e(LOG_TAG, "handleImNotiReceivedNotify(): param is null");
            return;
        }
        try {
            date = imNotificationStatusReceived.cpimDateTime() != null ? Iso8601.parse(imNotificationStatusReceived.cpimDateTime()) : new Date();
        } catch (ParseException e) {
            Log.e(LOG_TAG, e.toString());
            date = new Date();
        }
        Date date3 = date;
        try {
            date2 = status.imdnDateTime() != null ? Iso8601.parse(status.imdnDateTime()) : date3;
        } catch (ParseException e2) {
            Log.e(LOG_TAG, e2.toString());
            date2 = date3;
        }
        ImsUri parse = ImsUri.parse(imNotificationStatusReceived.uri());
        if (parse == null) {
            Log.i(LOG_TAG, "Invalid remote uri, return. uri=" + imNotificationStatusReceived.uri());
            return;
        }
        if (parse.getParam("tk") != null) {
            parse.removeParam("tk");
        }
        ImdnNotificationEvent imdnNotificationEvent = new ImdnNotificationEvent(status.imdnMessageId(), date2, parse, imNotificationStatusReceived.conversationId(), this.mImsFramework.getRegistrationManager().getImsiByUserAgentHandle((int) imNotificationStatusReceived.userHandle()), translateNotificationType(status.status(0)), date3, imNotificationStatusReceived.userAlias());
        IMSLog.s(LOG_TAG, "handleImNotiReceivedNotify: " + imdnNotificationEvent);
        this.mImdnNotificationRegistrants.notifyRegistrants(new AsyncResult(null, imdnNotificationEvent, null));
    }

    private void handleSendImdnResponseNotify(Notify notify) {
        if (notify.notiType() != 37) {
            Log.e(LOG_TAG, "handleSendImdnResponseNotify(): invalid notify");
            return;
        }
        ImdnResponseReceived imdnResponseReceived = (ImdnResponseReceived) notify.noti(new ImdnResponseReceived());
        Result translateImResult = ResipTranslatorCollection.translateImResult(imdnResponseReceived.imError(), null);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < imdnResponseReceived.imdnMessageIdLength(); i++) {
            arrayList.add(imdnResponseReceived.imdnMessageId(i));
        }
        ImdnResponseReceivedEvent imdnResponseReceivedEvent = new ImdnResponseReceivedEvent(translateImResult, arrayList);
        IMSLog.s(LOG_TAG, "handleSendImdnResponseNotify() Event : " + imdnResponseReceivedEvent);
        this.mImdnResponseRegistransts.notifyRegistrants(new AsyncResult(null, imdnResponseReceivedEvent, null));
    }

    private NotificationStatus translateNotificationType(int i) {
        if (i == 0) {
            return NotificationStatus.DELIVERED;
        }
        if (i == 1) {
            return NotificationStatus.DISPLAYED;
        }
        if (i == 2) {
            return NotificationStatus.INTERWORKING_SMS;
        }
        if (i == 3) {
            return NotificationStatus.INTERWORKING_MMS;
        }
        if (i == 4) {
            return NotificationStatus.CANCELED;
        }
        return NotificationStatus.DELIVERED;
    }

    private void sendRequestToStack(UserAgent userAgent, int i, FlatBufferBuilder flatBufferBuilder, int i2, Message message) {
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
