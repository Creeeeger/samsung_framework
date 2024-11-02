package android.telephony.mbms;

import android.os.Binder;
import android.telephony.mbms.IGroupCallCallback;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalGroupCallCallback extends IGroupCallCallback.Stub {
    private final GroupCallCallback mAppCallback;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalGroupCallCallback(GroupCallCallback appCallback, Executor executor) {
        this.mAppCallback = appCallback;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IGroupCallCallback
    public void onError(int errorCode, String message) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallCallback.1
                final /* synthetic */ int val$errorCode;
                final /* synthetic */ String val$message;

                AnonymousClass1(int errorCode2, String message2) {
                    errorCode = errorCode2;
                    message = message2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallCallback.this.mAppCallback.onError(errorCode, message);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.telephony.mbms.InternalGroupCallCallback$1 */
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
            InternalGroupCallCallback.this.mAppCallback.onError(errorCode, message);
        }
    }

    @Override // android.telephony.mbms.IGroupCallCallback
    public void onGroupCallStateChanged(int state, int reason) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallCallback.2
                final /* synthetic */ int val$reason;
                final /* synthetic */ int val$state;

                AnonymousClass2(int state2, int reason2) {
                    state = state2;
                    reason = reason2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallCallback.this.mAppCallback.onGroupCallStateChanged(state, reason);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalGroupCallCallback$2 */
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
            InternalGroupCallCallback.this.mAppCallback.onGroupCallStateChanged(state, reason);
        }
    }

    @Override // android.telephony.mbms.IGroupCallCallback
    public void onBroadcastSignalStrengthUpdated(int signalStrength) {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalGroupCallCallback.3
                final /* synthetic */ int val$signalStrength;

                AnonymousClass3(int signalStrength2) {
                    signalStrength = signalStrength2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalGroupCallCallback.this.mAppCallback.onBroadcastSignalStrengthUpdated(signalStrength);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalGroupCallCallback$3 */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ int val$signalStrength;

        AnonymousClass3(int signalStrength2) {
            signalStrength = signalStrength2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalGroupCallCallback.this.mAppCallback.onBroadcastSignalStrengthUpdated(signalStrength);
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
