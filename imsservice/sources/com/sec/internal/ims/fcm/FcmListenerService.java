package com.sec.internal.ims.fcm;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class FcmListenerService extends FirebaseMessagingService {
    private static final String LOG_TAG = FcmListenerService.class.getSimpleName();

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        IMSLog.i(LOG_TAG, "onMessageReceived: id: " + remoteMessage.getMessageId());
        ImsRegistry.getFcmHandler().onMessageReceived(this, remoteMessage.getFrom(), remoteMessage.getData());
    }
}
