package android.telephony.mbms;

import android.os.Binder;
import android.os.RemoteException;
import android.telephony.mbms.IMbmsStreamingSessionCallback;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalStreamingSessionCallback extends IMbmsStreamingSessionCallback.Stub {
    private final MbmsStreamingSessionCallback mAppCallback;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalStreamingSessionCallback(MbmsStreamingSessionCallback appCallback, Executor executor) {
        this.mAppCallback = appCallback;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IMbmsStreamingSessionCallback
    public void onError(int errorCode, String message) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingSessionCallback.1
                final /* synthetic */ int val$errorCode;
                final /* synthetic */ String val$message;

                AnonymousClass1(int errorCode2, String message2) {
                    errorCode = errorCode2;
                    message = message2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingSessionCallback.this.mAppCallback.onError(errorCode, message);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.telephony.mbms.InternalStreamingSessionCallback$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ int val$errorCode;
        final /* synthetic */ String val$message;

        AnonymousClass1(int errorCode2, String message2) {
            errorCode = errorCode2;
            message = message2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingSessionCallback.this.mAppCallback.onError(errorCode, message);
        }
    }

    @Override // android.telephony.mbms.IMbmsStreamingSessionCallback
    public void onStreamingServicesUpdated(List<StreamingServiceInfo> services) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingSessionCallback.2
                final /* synthetic */ List val$services;

                AnonymousClass2(List services2) {
                    services = services2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingSessionCallback.this.mAppCallback.onStreamingServicesUpdated(services);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalStreamingSessionCallback$2 */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ List val$services;

        AnonymousClass2(List services2) {
            services = services2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingSessionCallback.this.mAppCallback.onStreamingServicesUpdated(services);
        }
    }

    @Override // android.telephony.mbms.IMbmsStreamingSessionCallback
    public void onMiddlewareReady() throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingSessionCallback.3
                AnonymousClass3() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingSessionCallback.this.mAppCallback.onMiddlewareReady();
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalStreamingSessionCallback$3 */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingSessionCallback.this.mAppCallback.onMiddlewareReady();
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
