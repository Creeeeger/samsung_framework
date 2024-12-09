package com.sec.internal.ims.imsservice;

import android.content.Intent;
import android.os.IBinder;
import android.os.ServiceManager;
import android.util.Log;
import com.sec.ims.IImsService;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.extensions.Extensions;

/* loaded from: classes.dex */
public class ImsService extends ImsServiceBase {
    private static final String LOG_TAG = ImsService.class.getSimpleName();
    private static final String SERVICE_UPDATABLE_IMS_NAME = "secims";

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Extensions.UserHandle.myUserId() != 0) {
            return;
        }
        Log.i(LOG_TAG, "onCreate(): ");
        ServiceManager.addService(SERVICE_UPDATABLE_IMS_NAME, this.mBinder);
        ContextExt.sendBroadcastAsUser(this, new Intent("com.sec.ims.imsmanager.RESTART"), ContextExt.ALL);
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        IImsService.Stub stub;
        Log.i(LOG_TAG, "onStartCommand(): Received start id " + i2 + ": " + intent);
        if (intent == null || (stub = this.mBinder) == null) {
            return 1;
        }
        ((ImsServiceStub) stub).handleIntent(intent);
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.i(LOG_TAG, "onDestroy(): ");
        super.onDestroy();
    }

    @Override // com.sec.internal.ims.imsservice.ImsServiceBase, android.app.Service
    public IBinder onBind(Intent intent) {
        String str = LOG_TAG;
        Log.d(str, "onBind: intent " + intent);
        if (Extensions.UserHandle.myUserId() != 0) {
            Log.d(str, "Do not allow bind on non-system user");
            return null;
        }
        return this.mBinder;
    }
}
