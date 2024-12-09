package com.sec.internal.ims.imsservice;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.ims.SemImsService;
import com.sec.ims.extensions.Extensions;

/* loaded from: classes.dex */
public class SemCapabilityService extends ImsServiceBase {
    private static final String LOG_TAG = "SemCapabilityService";

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d(LOG_TAG, "onCreate");
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(LOG_TAG, "onBind:");
        if (Extensions.UserHandle.myUserId() != 0) {
            Log.d(LOG_TAG, "Do not allow bind on non-system user");
            return null;
        }
        SemImsService.Stub stub = this.mSemBinder;
        if (stub == null) {
            return null;
        }
        return ((SemImsServiceStub) stub).getBinder();
    }
}
