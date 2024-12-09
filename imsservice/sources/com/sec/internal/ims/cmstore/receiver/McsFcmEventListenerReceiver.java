package com.sec.internal.ims.cmstore.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.McsOMAApiResponseParam;
import com.sec.internal.omanetapi.nc.data.McsLargePollingNotification;
import com.sec.internal.omanetapi.nc.data.SyncBlockfilter;
import com.sec.internal.omanetapi.nc.data.SyncConfig;
import com.sec.internal.omanetapi.nc.data.SyncContact;
import com.sec.internal.omanetapi.nc.data.SyncMessage;
import com.sec.internal.omanetapi.nc.data.SyncStatus;
import com.sec.internal.omanetapi.nms.data.NmsEventList;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class McsFcmEventListenerReceiver extends BroadcastReceiver {
    private static final String FROM_FIELD = "from";
    private static final String INTENT_RECEIVE_FCM_PUSH_NOTIFICATION = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION";
    private static final String MESSAGE_FIELD = "message";
    private static final String TAG = McsFcmEventListenerReceiver.class.getSimpleName();
    private Context mContext;
    private int mPhoneId;
    private MessageStoreClient mStoreClient;

    public McsFcmEventListenerReceiver(Context context, int i, MessageStoreClient messageStoreClient) {
        this.mPhoneId = i;
        this.mContext = context;
        this.mStoreClient = messageStoreClient;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (INTENT_RECEIVE_FCM_PUSH_NOTIFICATION.equals(intent.getAction())) {
            String str = TAG;
            IMSLog.i(str, this.mPhoneId, "onReceive: INTENT_RECEIVE_FCM_PUSH_NOTIFICATION");
            String stringExtra = intent.getStringExtra("from");
            String stringExtra2 = intent.getStringExtra("message");
            String fcmSenderId = this.mStoreClient.getPrerenceManager().getFcmSenderId();
            IMSLog.s(str, this.mPhoneId, "onReceive: message: " + stringExtra2 + " from: " + stringExtra + " senderId: " + fcmSenderId);
            if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2) || TextUtils.isEmpty(fcmSenderId) || !TextUtils.equals(stringExtra, fcmSenderId)) {
                IMSLog.e(str, this.mPhoneId, "onReceive: invalid data");
                return;
            }
            try {
                McsOMAApiResponseParam mcsOMAApiResponseParam = (McsOMAApiResponseParam) new Gson().fromJson(stringExtra2, McsOMAApiResponseParam.class);
                if (mcsOMAApiResponseParam == null) {
                    IMSLog.e(str, this.mPhoneId, "onReceive: response is null");
                    return;
                }
                String str2 = mcsOMAApiResponseParam.mdn;
                String formatNumberToE164 = PhoneNumberUtils.formatNumberToE164(this.mStoreClient.getPrerenceManager().getUserCtn(), Util.getSimCountryCode(this.mContext, this.mPhoneId));
                if (!TextUtils.isEmpty(str2) && TextUtils.equals(str2, formatNumberToE164)) {
                    ArrayList<IMcsFcmPushNotificationListener> mcsFcmPushNotificationListener = this.mStoreClient.getMcsFcmPushNotificationListener();
                    SyncStatus syncStatus = mcsOMAApiResponseParam.syncStatus;
                    if (syncStatus != null) {
                        String str3 = syncStatus.status;
                        EventLogHelper.infoLogAndAdd(str, this.mPhoneId, "syncStatus [status: " + str3 + "]");
                        IMSLog.c(LogClass.MCS_NC_PUSH_SYNC_STATUS, this.mPhoneId + ",NC:PS_SC_STS," + str3);
                        Iterator<IMcsFcmPushNotificationListener> it = mcsFcmPushNotificationListener.iterator();
                        while (it.hasNext()) {
                            IMcsFcmPushNotificationListener next = it.next();
                            IMSLog.s(TAG, this.mPhoneId, "syncStatusPushNotification: listener = " + next);
                            next.syncStatusPushNotification(str3);
                        }
                        return;
                    }
                    NmsEventList nmsEventList = mcsOMAApiResponseParam.nmsEventList;
                    if (nmsEventList != null) {
                        IMSLog.i(str, this.mPhoneId, "nmsEventList");
                        if (Util.isMatchedSubscriptionID(nmsEventList, this.mStoreClient)) {
                            Iterator<IMcsFcmPushNotificationListener> it2 = mcsFcmPushNotificationListener.iterator();
                            while (it2.hasNext()) {
                                IMcsFcmPushNotificationListener next2 = it2.next();
                                IMSLog.s(TAG, this.mPhoneId, "nmsEventListPushNotification: listener = " + next2);
                                next2.nmsEventListPushNotification(nmsEventList);
                            }
                            return;
                        }
                        return;
                    }
                    SyncContact syncContact = mcsOMAApiResponseParam.syncContact;
                    if (syncContact != null) {
                        String str4 = syncContact.syncType;
                        EventLogHelper.infoLogAndAdd(str, this.mPhoneId, "syncContact [syncType: " + str4 + "]");
                        IMSLog.c(LogClass.MCS_NC_PUSH_SYNC_CONTACT, this.mPhoneId + ",NC:PS_SC_CT," + str4);
                        Iterator<IMcsFcmPushNotificationListener> it3 = mcsFcmPushNotificationListener.iterator();
                        while (it3.hasNext()) {
                            IMcsFcmPushNotificationListener next3 = it3.next();
                            IMSLog.s(TAG, this.mPhoneId, "syncContactPushNotification: listener = " + next3);
                            next3.syncContactPushNotification(str4);
                        }
                        return;
                    }
                    SyncConfig syncConfig = mcsOMAApiResponseParam.syncConfig;
                    if (syncConfig != null) {
                        String str5 = syncConfig.configType;
                        EventLogHelper.infoLogAndAdd(str, this.mPhoneId, "syncConfig [configType: " + str5 + "]");
                        IMSLog.c(LogClass.MCS_NC_PUSH_SYNC_CONFIG, this.mPhoneId + ",NC:PS_SC_CFG," + str5);
                        Iterator<IMcsFcmPushNotificationListener> it4 = mcsFcmPushNotificationListener.iterator();
                        while (it4.hasNext()) {
                            IMcsFcmPushNotificationListener next4 = it4.next();
                            IMSLog.s(TAG, this.mPhoneId, "syncConfigPushNotification: listener = " + next4);
                            next4.syncConfigPushNotification(str5);
                        }
                        return;
                    }
                    SyncMessage syncMessage = mcsOMAApiResponseParam.syncMessage;
                    if (syncMessage != null) {
                        String str6 = syncMessage.syncType;
                        int i = syncMessage.cms_data_ttl;
                        EventLogHelper.infoLogAndAdd(str, this.mPhoneId, "syncMessage [syncType: " + str6 + ", cmsDataTtl: " + i + "]");
                        IMSLog.c(LogClass.MCS_NC_PUSH_SYNC_MESSAGE, this.mPhoneId + ",NC:PS_SC_MSG," + str6 + "," + i);
                        Iterator<IMcsFcmPushNotificationListener> it5 = mcsFcmPushNotificationListener.iterator();
                        while (it5.hasNext()) {
                            IMcsFcmPushNotificationListener next5 = it5.next();
                            IMSLog.s(TAG, this.mPhoneId, "syncMessagePushNotification: listener = " + next5);
                            next5.syncMessagePushNotification(str6, i);
                        }
                        return;
                    }
                    McsLargePollingNotification mcsLargePollingNotification = mcsOMAApiResponseParam.largePollingNotification;
                    if (mcsLargePollingNotification != null) {
                        IMSLog.i(str, this.mPhoneId, "largePollingNotification");
                        Iterator<IMcsFcmPushNotificationListener> it6 = mcsFcmPushNotificationListener.iterator();
                        while (it6.hasNext()) {
                            IMcsFcmPushNotificationListener next6 = it6.next();
                            IMSLog.s(TAG, this.mPhoneId, "largePollingPushNotification: listener = " + next6);
                            next6.largePollingPushNotification(mcsLargePollingNotification);
                        }
                        return;
                    }
                    SyncBlockfilter syncBlockfilter = mcsOMAApiResponseParam.syncBlockfilter;
                    if (syncBlockfilter != null) {
                        String str7 = syncBlockfilter.syncType;
                        EventLogHelper.infoLogAndAdd(str, this.mPhoneId, "syncBlockfilter [syncType: " + str7 + "]");
                        IMSLog.c(LogClass.MCS_NC_PUSH_SYNC_BLOCKFILTER, this.mPhoneId + ",NC:PS_SC_BLKFLT," + str7);
                        Iterator<IMcsFcmPushNotificationListener> it7 = mcsFcmPushNotificationListener.iterator();
                        while (it7.hasNext()) {
                            IMcsFcmPushNotificationListener next7 = it7.next();
                            IMSLog.s(TAG, this.mPhoneId, "syncBlockfilterPushNotification: listener = " + next7);
                            next7.syncBlockfilterPushNotification(str7);
                        }
                        return;
                    }
                    return;
                }
                IMSLog.e(str, this.mPhoneId, "onReceive: mdn is different with userCtn");
            } catch (NullPointerException | JsonParseException e) {
                IMSLog.e(TAG, this.mPhoneId, "onReceive: Exception: " + e.getMessage());
            }
        }
    }
}
