package com.sec.internal.ims.imsservice;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

/* loaded from: classes.dex */
public class VolteService2 extends ImsServiceBase {
    private static final String LOG_TAG = "VolteService";

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d(LOG_TAG, "onCreate");
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(LOG_TAG, "onBind:" + intent);
        if (super.onBind(intent) == null) {
            return null;
        }
        return ((ImsServiceStub) this.mBinder).getBinder("mmtel");
    }
}
