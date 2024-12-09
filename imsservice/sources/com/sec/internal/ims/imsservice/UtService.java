package com.sec.internal.ims.imsservice;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.sec.ims.extensions.Extensions;

/* loaded from: classes.dex */
public class UtService extends ImsServiceBase {
    private static final String LOG_TAG = UtService.class.getSimpleName();

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d(LOG_TAG, "onCreate");
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        String str = LOG_TAG;
        Log.d(str, "onBind:" + intent);
        if (Extensions.UserHandle.myUserId() != 0) {
            Log.d(str, "Do not allow bind on non-system user");
            return null;
        }
        return ((ImsServiceStub) this.mBinder).getBinder("ss");
    }
}
