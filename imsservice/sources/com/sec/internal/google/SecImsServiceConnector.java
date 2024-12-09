package com.sec.internal.google;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.imsphone.ImsConfigImpl;
import com.sec.internal.imsphone.ImsRegistrationImpl;
import com.sec.internal.imsphone.MmTelFeatureImpl;
import com.sec.internal.imsphone.RcsFeatureImpl;
import com.sec.internal.imsphone.SecImsService;
import com.sec.internal.imsphone.SipTransportImpl;
import com.sec.internal.log.IMSLog;
import java.util.Optional;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class SecImsServiceConnector {
    private static final String LOG_TAG = "SecImsServiceConnector";
    private SecImsService mService;
    private ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.sec.internal.google.SecImsServiceConnector.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IMSLog.i(SecImsServiceConnector.LOG_TAG, "onServiceConnected: " + componentName);
            SecImsServiceConnector.this.mService = ((SecImsService.LocalBinder) iBinder).getService();
            SecImsServiceConnector.this.mConnectedLatch.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            IMSLog.i(SecImsServiceConnector.LOG_TAG, "onServiceDisconnected: " + componentName);
            SecImsServiceConnector.this.mService = null;
        }
    };
    private Executor mExecutor = Executors.newSingleThreadExecutor();
    private CountDownLatch mConnectedLatch = new CountDownLatch(1);

    public SecImsServiceConnector(Context context) {
        context.bindService(new Intent(context, (Class<?>) SecImsService.class), 1, this.mExecutor, this.mServiceConnection);
    }

    private SecImsService requireService() {
        boolean z = false;
        for (int i = 1; i <= 10 && !z; i++) {
            IMSLog.e(LOG_TAG, "connect to local SecImsService #" + i + " attempt");
            try {
                z = this.mConnectedLatch.await(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (!z) {
            IMSLog.e(LOG_TAG, "Cannot connect to local SecImsService");
            SystemWrapper.exit(0);
        }
        return this.mService;
    }

    public ImsConfigImpl getImsConfigImpl(int i) {
        IMSLog.i(LOG_TAG, i, "getImsConfigImpl");
        return requireService().getImsConfigImpl(i);
    }

    public MmTelFeatureImpl getMmTelFeatureImpl(int i) {
        IMSLog.i(LOG_TAG, i, "getMmTelFeatureImpl");
        return requireService().getMmTelFeatureImpl(i);
    }

    public RcsFeatureImpl getRcsFeatureImpl(int i) {
        IMSLog.i(LOG_TAG, i, "getRcsFeatureImpl");
        return requireService().getRcsFeatureImpl(i);
    }

    public ImsRegistrationImpl getImsRegistrationImpl(int i) {
        IMSLog.i(LOG_TAG, i, "getImsRegistrationImpl");
        return requireService().getImsRegistrationImpl(i);
    }

    public SipTransportImpl getSipTransportImpl(int i) {
        IMSLog.i(LOG_TAG, i, "getSipTransportImpl");
        return (SipTransportImpl) Optional.ofNullable(requireService().getSipTransport(i)).orElseThrow(new Supplier() { // from class: com.sec.internal.google.SecImsServiceConnector$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                IllegalStateException lambda$getSipTransportImpl$0;
                lambda$getSipTransportImpl$0 = SecImsServiceConnector.lambda$getSipTransportImpl$0();
                return lambda$getSipTransportImpl$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ IllegalStateException lambda$getSipTransportImpl$0() {
        return new IllegalStateException("SipTransport should exist!");
    }
}
