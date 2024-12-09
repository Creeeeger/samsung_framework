package com.sec.internal.ims.cmstore.mcs;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.sec.ims.ICentralMsgStoreServiceListener;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.McsLargePollingNotification;
import com.sec.internal.omanetapi.nms.data.NmsEventList;

/* loaded from: classes.dex */
public class McsFcmPushNotifier {
    private final String LOG_TAG;
    private final Object mLock;
    private final int mPhoneId;
    private final MessageStoreClient mStoreClient;

    public McsFcmPushNotifier(MessageStoreClient messageStoreClient, int i) {
        String simpleName = McsFcmPushNotifier.class.getSimpleName();
        this.LOG_TAG = simpleName;
        this.mLock = new Object();
        this.mStoreClient = messageStoreClient;
        this.mPhoneId = i;
        registerMcsFcmPushNotificationListener();
        IMSLog.i(simpleName, i, "created");
    }

    private void registerMcsFcmPushNotificationListener() {
        this.mStoreClient.setMcsFcmPushNotificationListener(new IMcsFcmPushNotificationListener() { // from class: com.sec.internal.ims.cmstore.mcs.McsFcmPushNotifier.1
            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void largePollingPushNotification(McsLargePollingNotification mcsLargePollingNotification) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void nmsEventListPushNotification(NmsEventList nmsEventList) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncContactPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncMessagePushNotification(String str, int i) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncStatusPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncConfigPushNotification(String str) {
                McsFcmPushNotifier.this.notifyMcsFcmPushMessages(McsConstants.PushMessages.TYPE_SYNC_CONFIG, McsConstants.PushMessages.KEY_CONFIG_TYPE, str);
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncBlockfilterPushNotification(String str) {
                McsFcmPushNotifier.this.notifyMcsFcmPushMessages(McsConstants.PushMessages.TYPE_SYNC_BLOCKFILTER, McsConstants.PushMessages.KEY_SYNC_TYPE, str);
            }
        });
    }

    public void notifyMcsFcmPushMessages(String str, String str2, String str3) {
        synchronized (this.mLock) {
            RemoteCallbackList<ICentralMsgStoreServiceListener> mcsProvisioningListener = this.mStoreClient.getMcsProvisioningListener();
            try {
                if (mcsProvisioningListener == null) {
                    IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyMcsFcmPushMessages: listeners is empty");
                    return;
                }
                try {
                    int beginBroadcast = mcsProvisioningListener.beginBroadcast();
                    IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyMcsFcmPushMessages: length: " + beginBroadcast + ", pushType: " + str);
                    for (int i = 0; i < beginBroadcast; i++) {
                        try {
                            mcsProvisioningListener.getBroadcastItem(i).onCmsPushMessageReceived(str, str2, str3);
                        } catch (RemoteException | NullPointerException e) {
                            IMSLog.e(this.LOG_TAG, this.mPhoneId, "notifyMcsFcmPushMessages: onCmsPushMessageReceived call failed: " + e);
                        }
                    }
                } catch (IllegalStateException e2) {
                    IMSLog.e(this.LOG_TAG, this.mPhoneId, "notifyMcsFcmPushMessages: failed: " + e2);
                }
            } finally {
                mcsProvisioningListener.finishBroadcast();
            }
        }
    }
}
