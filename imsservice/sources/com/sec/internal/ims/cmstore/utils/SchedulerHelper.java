package com.sec.internal.ims.cmstore.utils;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.ims.cmstore.MessageStoreClient;

/* loaded from: classes.dex */
public class SchedulerHelper {
    public static final String TAG = "SchedulerHelper";
    private static SchedulerHelper sInstance;
    private static ReSyncParam mReSyncParam = ReSyncParam.getInstance();
    private static Handler mHandler = null;

    private SchedulerHelper(Handler handler) {
        mHandler = handler;
    }

    public static SchedulerHelper getInstance(Handler handler) {
        if (sInstance == null) {
            sInstance = new SchedulerHelper(handler);
        }
        return sInstance;
    }

    public void deleteNotificationSubscriptionResource(MessageStoreClient messageStoreClient) {
        Log.i(TAG, "deleteNotificationSubscriptionResource");
        String channelResURL = mReSyncParam.getChannelResURL();
        if (!TextUtils.isEmpty(channelResURL)) {
            mHandler.sendMessage(mHandler.obtainMessage(OMASyncEventType.DELETE_SUBCRIPTION_CHANNEL.getId(), channelResURL));
            messageStoreClient.getPrerenceManager().saveOMASubscriptionResUrl("");
        }
        String oMAChannelResURL = messageStoreClient.getPrerenceManager().getOMAChannelResURL();
        if (TextUtils.isEmpty(oMAChannelResURL)) {
            return;
        }
        mHandler.sendMessage(mHandler.obtainMessage(OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.getId(), oMAChannelResURL));
        messageStoreClient.getPrerenceManager().saveOMAChannelResURL("");
        messageStoreClient.getPrerenceManager().saveOMACallBackURL("");
        messageStoreClient.getPrerenceManager().saveOMAChannelURL("");
    }

    public boolean isSubscriptionChannelGoingExpired(MessageStoreClient messageStoreClient) {
        long oMASubscriptionTime = messageStoreClient.getPrerenceManager().getOMASubscriptionTime();
        long oMASubscriptionChannelDuration = messageStoreClient.getPrerenceManager().getOMASubscriptionChannelDuration() * 1000;
        long currentTimeMillis = System.currentTimeMillis();
        long j = (360000 + currentTimeMillis) - (oMASubscriptionTime + oMASubscriptionChannelDuration);
        Log.i(TAG, "subscriptionTime : " + oMASubscriptionTime + ", channelDuration : " + oMASubscriptionChannelDuration + ", currentTime : " + currentTimeMillis + ", life : " + j);
        return j >= 0;
    }
}
