package android.telephony.mbms;

import android.os.Binder;
import android.os.RemoteException;
import android.telephony.mbms.IStreamingServiceCallback;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalStreamingServiceCallback extends IStreamingServiceCallback.Stub {
    private final StreamingServiceCallback mAppCallback;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalStreamingServiceCallback(StreamingServiceCallback appCallback, Executor executor) {
        this.mAppCallback = appCallback;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onError(int errorCode, String message) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.1
                final /* synthetic */ int val$errorCode;
                final /* synthetic */ String val$message;

                AnonymousClass1(int errorCode2, String message2) {
                    errorCode = errorCode2;
                    message = message2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingServiceCallback.this.mAppCallback.onError(errorCode, message);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.telephony.mbms.InternalStreamingServiceCallback$1 */
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
            InternalStreamingServiceCallback.this.mAppCallback.onError(errorCode, message);
        }
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onStreamStateUpdated(int state, int reason) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.2
                final /* synthetic */ int val$reason;
                final /* synthetic */ int val$state;

                AnonymousClass2(int state2, int reason2) {
                    state = state2;
                    reason = reason2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingServiceCallback.this.mAppCallback.onStreamStateUpdated(state, reason);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalStreamingServiceCallback$2 */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ int val$reason;
        final /* synthetic */ int val$state;

        AnonymousClass2(int state2, int reason2) {
            state = state2;
            reason = reason2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingServiceCallback.this.mAppCallback.onStreamStateUpdated(state, reason);
        }
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onMediaDescriptionUpdated() throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.3
                AnonymousClass3() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingServiceCallback.this.mAppCallback.onMediaDescriptionUpdated();
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalStreamingServiceCallback$3 */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingServiceCallback.this.mAppCallback.onMediaDescriptionUpdated();
        }
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onBroadcastSignalStrengthUpdated(int signalStrength) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.4
                final /* synthetic */ int val$signalStrength;

                AnonymousClass4(int signalStrength2) {
                    signalStrength = signalStrength2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingServiceCallback.this.mAppCallback.onBroadcastSignalStrengthUpdated(signalStrength);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalStreamingServiceCallback$4 */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ int val$signalStrength;

        AnonymousClass4(int signalStrength2) {
            signalStrength = signalStrength2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingServiceCallback.this.mAppCallback.onBroadcastSignalStrengthUpdated(signalStrength);
        }
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onStreamMethodUpdated(int methodType) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.5
                final /* synthetic */ int val$methodType;

                AnonymousClass5(int methodType2) {
                    methodType = methodType2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalStreamingServiceCallback.this.mAppCallback.onStreamMethodUpdated(methodType);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalStreamingServiceCallback$5 */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ int val$methodType;

        AnonymousClass5(int methodType2) {
            methodType = methodType2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalStreamingServiceCallback.this.mAppCallback.onStreamMethodUpdated(methodType);
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
