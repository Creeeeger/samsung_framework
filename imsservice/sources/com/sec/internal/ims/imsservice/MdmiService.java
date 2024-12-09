package com.sec.internal.ims.imsservice;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.sec.ims.extensions.Extensions;

/* loaded from: classes.dex */
public class MdmiService extends ImsServiceBase {
    private static final String LOG_TAG = MdmiService.class.getSimpleName();

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Extensions.UserHandle.myUserId() != Extensions.ActivityManager.getCurrentUser()) {
            Log.e(LOG_TAG, "Do not initialize on background user");
            stopSelf();
        } else {
            Log.d(LOG_TAG, "onCreate");
        }
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        String str = LOG_TAG;
        Log.d(str, "onBind:" + intent);
        if (Extensions.UserHandle.myUserId() != Extensions.ActivityManager.getCurrentUser()) {
            Log.d(str, "Do not allow bind on background user");
            return null;
        }
        return ((ImsServiceStub) this.mBinder).getBinder("mdmi");
    }
}
