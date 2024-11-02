package android.telephony.mbms;

import android.os.Binder;
import android.telephony.mbms.IMbmsDownloadSessionCallback;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalDownloadSessionCallback extends IMbmsDownloadSessionCallback.Stub {
    private final MbmsDownloadSessionCallback mAppCallback;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalDownloadSessionCallback(MbmsDownloadSessionCallback appCallback, Executor executor) {
        this.mAppCallback = appCallback;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IMbmsDownloadSessionCallback
    public void onError(int errorCode, String message) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalDownloadSessionCallback.1
                final /* synthetic */ int val$errorCode;
                final /* synthetic */ String val$message;

                AnonymousClass1(int errorCode2, String message2) {
                    errorCode = errorCode2;
                    message = message2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalDownloadSessionCallback.this.mAppCallback.onError(errorCode, message);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.telephony.mbms.InternalDownloadSessionCallback$1 */
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
            InternalDownloadSessionCallback.this.mAppCallback.onError(errorCode, message);
        }
    }

    @Override // android.telephony.mbms.IMbmsDownloadSessionCallback
    public void onFileServicesUpdated(List<FileServiceInfo> services) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalDownloadSessionCallback.2
                final /* synthetic */ List val$services;

                AnonymousClass2(List services2) {
                    services = services2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalDownloadSessionCallback.this.mAppCallback.onFileServicesUpdated(services);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalDownloadSessionCallback$2 */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ List val$services;

        AnonymousClass2(List services2) {
            services = services2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalDownloadSessionCallback.this.mAppCallback.onFileServicesUpdated(services);
        }
    }

    @Override // android.telephony.mbms.IMbmsDownloadSessionCallback
    public void onMiddlewareReady() {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalDownloadSessionCallback.3
                AnonymousClass3() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalDownloadSessionCallback.this.mAppCallback.onMiddlewareReady();
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalDownloadSessionCallback$3 */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalDownloadSessionCallback.this.mAppCallback.onMiddlewareReady();
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
