package com.sec.internal.ims.imsservice;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.ims.SemImsService;
import com.sec.ims.IImsService;
import com.sec.ims.extensions.Extensions;

/* loaded from: classes.dex */
public abstract class ImsServiceBase extends Service {
    private static final String LOG_TAG = ImsServiceBase.class.getSimpleName();
    protected IImsService.Stub mBinder = null;
    protected SemImsService.Stub mSemBinder = null;

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            if (Extensions.UserHandle.myUserId() != 0) {
                Log.d(LOG_TAG, "Do not initialize on non-system user");
                stopSelf();
                return;
            }
        } catch (IllegalStateException unused) {
            Log.e(LOG_TAG, "IllegalStateException occurred");
        }
        Log.i(LOG_TAG, "onCreate(): ");
        this.mBinder = ImsServiceStub.getInstance();
        if (Build.VERSION.SEM_INT >= 2716) {
            this.mSemBinder = SemImsServiceStub.getInstance();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (Extensions.UserHandle.myUserId() != 0) {
            Log.d(LOG_TAG, "Do not allow bind on non-system user");
            return null;
        }
        return this.mBinder;
    }
}
