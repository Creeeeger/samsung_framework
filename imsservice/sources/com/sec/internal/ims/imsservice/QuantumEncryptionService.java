package com.sec.internal.ims.imsservice;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

/* loaded from: classes.dex */
public class QuantumEncryptionService extends ImsServiceBase {
    private static final String LOG_TAG = "QuantumEncryptionService";

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d(LOG_TAG, "onCreate");
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(LOG_TAG, "onBind:" + intent);
        return ((ImsServiceStub) this.mBinder).getBinder("quantum");
    }
}
