package com.sec.internal.ims.cmstore.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.MailBoxHelper;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.Link;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nc.data.NotificationList;
import com.sec.internal.omanetapi.nms.data.LargePollingNotification;
import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GcmIntentBroadcastReceiver extends BroadcastReceiver {
    private static final String LOG_TAG = GcmIntentBroadcastReceiver.class.getSimpleName();
    private Hashtable<Integer, MessageStoreClient> mClients;

    public GcmIntentBroadcastReceiver(Hashtable<Integer, MessageStoreClient> hashtable) {
        this.mClients = hashtable;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d(LOG_TAG, " onReceive " + intent);
        handleIntent(intent);
    }

    private void handleIntent(Intent intent) {
        String action = intent.getAction();
        IMSLog.s(LOG_TAG, "Received intent: " + action);
        if (TextUtils.equals(action, NSDSNamespaces.NSDSActions.RECEIVED_GCM_EVENT_NOTIFICATION)) {
            onReceiveNativeChannelNotification(intent);
        }
    }

    private void onReceiveNativeChannelNotification(Intent intent) {
        NotificationList[] notificationListArr;
        IMSLog.s(LOG_TAG, "onReceiveNativeChannelNotification");
        Hashtable<Integer, MessageStoreClient> hashtable = new Hashtable<>();
        Enumeration<Integer> keys = this.mClients.keys();
        int i = 0;
        while (keys.hasMoreElements()) {
            int intValue = keys.nextElement().intValue();
            String str = LOG_TAG;
            Log.e(str, "get key from clients: " + intValue);
            MessageStoreClient messageStoreClient = this.mClients.get(Integer.valueOf(intValue));
            if (messageStoreClient != null) {
                boolean isCmsProfileActive = messageStoreClient.getNetAPIWorkingStatusController().isCmsProfileActive();
                Log.e(str, "isAMBSActive: " + isCmsProfileActive);
                if (isCmsProfileActive && !TextUtils.isEmpty(this.mClients.get(Integer.valueOf(intValue)).getPrerenceManager().getOMASubscriptionResUrl())) {
                    hashtable.put(Integer.valueOf(i), messageStoreClient);
                    i++;
                }
            }
        }
        if (hashtable.size() == 0) {
            Log.e(LOG_TAG, "it should not receive gcm notifications here");
            return;
        }
        String string = intent.getExtras().getString(NSDSNamespaces.NSDSExtras.ORIG_PUSH_MESSAGE);
        String str2 = LOG_TAG;
        IMSLog.s(str2, "pushMessage: " + string);
        try {
            OMAApiResponseParam oMAApiResponseParam = (OMAApiResponseParam) new Gson().fromJson(string, OMAApiResponseParam.class);
            if (oMAApiResponseParam != null && (notificationListArr = oMAApiResponseParam.notificationList) != null) {
                handlePushNotification(notificationListArr, hashtable, string);
                return;
            }
            Log.e(str2, "response or notificationList is null, polling failed");
        } catch (Exception e) {
            Log.e(LOG_TAG, "onReceiveNativeChannelNotification: " + e.getMessage());
        }
    }

    public void handlePushNotification(NotificationList[] notificationListArr, Hashtable<Integer, MessageStoreClient> hashtable, String str) {
        if (notificationListArr != null) {
            NotificationList notificationList = notificationListArr[0];
            for (int i = 0; i < hashtable.size(); i++) {
                MessageStoreClient messageStoreClient = hashtable.get(Integer.valueOf(i));
                LargePollingNotification largePollingNotification = notificationList.largePollingNotification;
                boolean equals = largePollingNotification != null ? messageStoreClient.getPrerenceManager().getUserTelCtn().equals(Util.getLineTelUriFromObjUrl(largePollingNotification.channelURL)) : false;
                if (notificationList.nmsEventList != null) {
                    equals = isMatchedSubscriptionID(notificationList, messageStoreClient);
                }
                if (equals && messageStoreClient.getNetAPIWorkingStatusController().isPushNotiProcessPaused()) {
                    Log.i(LOG_TAG, "Push Notification Processing is paused. Wait for app to come in foreground");
                    return;
                }
            }
            if (notificationList.largePollingNotification != null) {
                handleLargePollingNoti(notificationList, hashtable);
                return;
            }
            if (MailBoxHelper.isMailBoxReset(str)) {
                Log.i(LOG_TAG, "MailBoxReset true");
                for (int i2 = 0; i2 < hashtable.size(); i2++) {
                    MessageStoreClient messageStoreClient2 = hashtable.get(Integer.valueOf(i2));
                    if (isMatchedSubscriptionID(notificationList, messageStoreClient2)) {
                        messageStoreClient2.getCloudMessageBufferSchedulingHandler().onNativeChannelReceived(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MAILBOX_RESET).build());
                    }
                }
                return;
            }
            if (notificationList.nmsEventList != null) {
                handleNmsEvent(notificationListArr, notificationList, hashtable);
            }
        }
    }

    private void handleLargePollingNoti(NotificationList notificationList, Hashtable<Integer, MessageStoreClient> hashtable) {
        LargePollingNotification largePollingNotification = notificationList.largePollingNotification;
        String str = largePollingNotification.channelURL;
        String str2 = largePollingNotification.channelExpiry;
        String lineTelUriFromObjUrl = Util.getLineTelUriFromObjUrl(str);
        for (int i = 0; i < hashtable.size(); i++) {
            MessageStoreClient messageStoreClient = hashtable.get(Integer.valueOf(i));
            if (messageStoreClient.getPrerenceManager().getUserTelCtn().equals(lineTelUriFromObjUrl)) {
                if (!Util.hasChannelExpired(str2)) {
                    Log.i(LOG_TAG, "largePollingNotification " + str);
                    messageStoreClient.getPrerenceManager().saveOMAChannelURL(str);
                    messageStoreClient.getNetAPIWorkingStatusController().handleLargeDataPolling();
                } else {
                    Log.i(LOG_TAG, "largePollingNotification channel expired");
                    messageStoreClient.getNetAPIWorkingStatusController().updateSubscriptionChannel();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0160 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleNmsEvent(com.sec.internal.omanetapi.nc.data.NotificationList[] r11, com.sec.internal.omanetapi.nc.data.NotificationList r12, java.util.Hashtable<java.lang.Integer, com.sec.internal.ims.cmstore.MessageStoreClient> r13) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.receiver.GcmIntentBroadcastReceiver.handleNmsEvent(com.sec.internal.omanetapi.nc.data.NotificationList[], com.sec.internal.omanetapi.nc.data.NotificationList, java.util.Hashtable):void");
    }

    private boolean isMatchedSubscriptionID(NotificationList notificationList, MessageStoreClient messageStoreClient) {
        URL url;
        String oMASubscriptionResUrl = messageStoreClient.getPrerenceManager().getOMASubscriptionResUrl();
        boolean z = false;
        if (TextUtils.isEmpty(oMASubscriptionResUrl) || notificationList.nmsEventList.link == null) {
            Log.d(LOG_TAG, "isMatchedSubscriptionID false");
            return false;
        }
        String lastPathFromUrl = getLastPathFromUrl(oMASubscriptionResUrl);
        Log.d(LOG_TAG, "isMatchedSubscriptionID subscriptionID = " + lastPathFromUrl);
        Link[] linkArr = notificationList.nmsEventList.link;
        int length = linkArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Link link = linkArr[i];
            if ((PhoneConstants.SUBSCRIPTION_KEY.equalsIgnoreCase(link.rel) || "NmsSubscription".equalsIgnoreCase(link.rel)) && (url = link.href) != null) {
                String lastPathFromUrl2 = getLastPathFromUrl(url.toString());
                Log.d(LOG_TAG, "isMatchedSubscriptionID notiSubID = " + lastPathFromUrl2);
                if (lastPathFromUrl.equalsIgnoreCase(lastPathFromUrl2)) {
                    z = true;
                    break;
                }
            }
            i++;
        }
        Log.d(LOG_TAG, "isMatchedSubscriptionID " + z);
        return z;
    }

    private String getLastPathFromUrl(String str) {
        return str.split("/")[r0.length - 1];
    }

    private boolean isMailBoxReset(String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONArray jSONArray;
        JSONObject jSONObject3;
        try {
            JSONArray jSONArray2 = new JSONObject(str).getJSONArray("notificationList");
            if (jSONArray2 == null || (jSONObject = (JSONObject) jSONArray2.opt(0)) == null || (jSONObject2 = jSONObject.getJSONObject("nmsEventList")) == null || (jSONArray = jSONObject2.getJSONArray("nmsEvent")) == null || (jSONObject3 = (JSONObject) jSONArray.opt(0)) == null) {
                return false;
            }
            return jSONObject3.has("resetBox");
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }
}
