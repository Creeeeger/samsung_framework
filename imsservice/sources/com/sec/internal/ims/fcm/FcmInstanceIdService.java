package com.sec.internal.ims.fcm;

import com.google.firebase.iid.FirebaseInstanceIdService;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class FcmInstanceIdService extends FirebaseInstanceIdService {
    private static final String LOG_TAG = FcmInstanceIdService.class.getSimpleName();

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        IMSLog.i(LOG_TAG, "onTokenRefresh:");
        ImsRegistry.getFcmHandler().onTokenRefresh(this);
    }
}
