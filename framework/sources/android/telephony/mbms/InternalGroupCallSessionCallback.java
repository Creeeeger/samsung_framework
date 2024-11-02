package android.telephony.mbms;

import android.os.Binder;
import android.telephony.mbms.IMbmsGroupCallSessionCallback;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalGroupCallSessionCallback extends IMbmsGroupCallSessionCallback.Stub {
    private final MbmsGroupCallSessionCallback mAppCallback;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalGroupCallSessionCallback(MbmsGroupCallSessionCallback appCallback, Executor executor) {
        this.mAppCallback = appCallback;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IMbmsGroupCallSessionCallback
    public void onError(int errorCode, String message) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallSessionCallback.1
                final /* synthetic */ int val$errorCode;
                final /* synthetic */ String val$message;

                AnonymousClass1(int errorCode2, String message2) {
                    errorCode = errorCode2;
                    message = message2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallSessionCallback.this.mAppCallback.onError(errorCode, message);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.telephony.mbms.InternalGroupCallSessionCallback$1 */
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
            InternalGroupCallSessionCallback.this.mAppCallback.onError(errorCode, message);
        }
    }

    @Override // android.telephony.mbms.IMbmsGroupCallSessionCallback
    public void onAvailableSaisUpdated(List currentSais, List availableSais) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallSessionCallback.2
                final /* synthetic */ List val$availableSais;
                final /* synthetic */ List val$currentSais;

                AnonymousClass2(List currentSais2, List availableSais2) {
                    currentSais = currentSais2;
                    availableSais = availableSais2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallSessionCallback.this.mAppCallback.onAvailableSaisUpdated(currentSais, availableSais);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalGroupCallSessionCallback$2 */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ List val$availableSais;
        final /* synthetic */ List val$currentSais;

        AnonymousClass2(List currentSais2, List availableSais2) {
            currentSais = currentSais2;
            availableSais = availableSais2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalGroupCallSessionCallback.this.mAppCallback.onAvailableSaisUpdated(currentSais, availableSais);
        }
    }

    @Override // android.telephony.mbms.IMbmsGroupCallSessionCallback
    public void onServiceInterfaceAvailable(String interfaceName, int index) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallSessionCallback.3
                final /* synthetic */ int val$index;
                final /* synthetic */ String val$interfaceName;

                AnonymousClass3(String interfaceName2, int index2) {
                    interfaceName = interfaceName2;
                    index = index2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallSessionCallback.this.mAppCallback.onServiceInterfaceAvailable(interfaceName, index);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalGroupCallSessionCallback$3 */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ int val$index;
        final /* synthetic */ String val$interfaceName;

        AnonymousClass3(String interfaceName2, int index2) {
            interfaceName = interfaceName2;
            index = index2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalGroupCallSessionCallback.this.mAppCallback.onServiceInterfaceAvailable(interfaceName, index);
        }
    }

    @Override // android.telephony.mbms.IMbmsGroupCallSessionCallback
    public void onMiddlewareReady() {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallSessionCallback.4
                AnonymousClass4() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallSessionCallback.this.mAppCallback.onMiddlewareReady();
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalGroupCallSessionCallback$4 */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Runnable {
        AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalGroupCallSessionCallback.this.mAppCallback.onMiddlewareReady();
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
