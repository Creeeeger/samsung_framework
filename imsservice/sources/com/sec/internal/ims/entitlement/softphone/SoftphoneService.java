package com.sec.internal.ims.entitlement.softphone;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.sec.internal.log.IndentingPrintWriter;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class SoftphoneService extends Service {
    private static final String LOG_TAG = SoftphoneService.class.getSimpleName();
    private IBinder mBinder = null;
    private SoftphoneServiceStub mService = null;

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.IBinder, com.sec.internal.ims.entitlement.softphone.SoftphoneServiceStub] */
    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(LOG_TAG, "onCreate()");
        ?? softphoneServiceStub = new SoftphoneServiceStub(this);
        this.mService = softphoneServiceStub;
        this.mBinder = softphoneServiceStub;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i(LOG_TAG, "onStartCommand(): Received start id: " + i2 + ", flags: " + i + ", Intent: " + intent);
        return 1;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.i(LOG_TAG, "onBind");
        return this.mBinder;
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mService.dump(new IndentingPrintWriter(printWriter, "  "));
    }
}
