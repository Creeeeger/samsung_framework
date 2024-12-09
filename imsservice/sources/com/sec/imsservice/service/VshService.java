package com.sec.imsservice.service;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.sec.internal.ims.imsservice.ImsServiceBase;
import com.sec.internal.ims.imsservice.ImsServiceStub;

/* loaded from: classes.dex */
public class VshService extends ImsServiceBase {
    private static final String LOG_TAG = VshService.class.getSimpleName();

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(LOG_TAG, "onBind:" + intent);
        return ((ImsServiceStub) this.mBinder).getBinder("vs");
    }
}
