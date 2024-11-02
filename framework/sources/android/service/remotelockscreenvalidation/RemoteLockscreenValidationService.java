package android.service.remotelockscreenvalidation;

import android.annotation.SystemApi;
import android.app.RemoteLockscreenValidationResult;
import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.OutcomeReceiver;
import android.os.RemoteException;
import android.service.remotelockscreenvalidation.IRemoteLockscreenValidationService;
import android.service.remotelockscreenvalidation.RemoteLockscreenValidationService;
import android.util.Log;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;

@SystemApi
/* loaded from: classes3.dex */
public abstract class RemoteLockscreenValidationService extends Service {
    public static final String SERVICE_INTERFACE = "android.service.remotelockscreenvalidation.RemoteLockscreenValidationService";
    private static final String TAG = RemoteLockscreenValidationService.class.getSimpleName();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final IRemoteLockscreenValidationService mInterface = new IRemoteLockscreenValidationService.Stub() { // from class: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService.1
        AnonymousClass1() {
        }

        @Override // android.service.remotelockscreenvalidation.IRemoteLockscreenValidationService
        public void validateLockscreenGuess(byte[] guess, IRemoteLockscreenValidationCallback callback) {
            RemoteLockscreenValidationService.this.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService$1$$ExternalSyntheticLambda0
                @Override // com.android.internal.util.function.TriConsumer
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((RemoteLockscreenValidationService) obj).onValidateLockscreenGuess((byte[]) obj2, (RemoteLockscreenValidationService.AnonymousClass1.C00081) obj3);
                }
            }, RemoteLockscreenValidationService.this, guess, new OutcomeReceiver<RemoteLockscreenValidationResult, Exception>() { // from class: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService.1.1
                final /* synthetic */ IRemoteLockscreenValidationCallback val$callback;

                C00081(IRemoteLockscreenValidationCallback callback2) {
                    callback = callback2;
                }

                @Override // android.os.OutcomeReceiver
                public void onResult(RemoteLockscreenValidationResult result) {
                    try {
                        callback.onSuccess(result);
                    } catch (RemoteException e) {
                        e.rethrowFromSystemServer();
                    }
                }

                @Override // android.os.OutcomeReceiver
                public void onError(Exception e) {
                    try {
                        callback.onFailure(e.getMessage());
                    } catch (RemoteException ex) {
                        ex.rethrowFromSystemServer();
                    }
                }
            }));
        }

        /* renamed from: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService$1$1 */
        /* loaded from: classes3.dex */
        class C00081 implements OutcomeReceiver<RemoteLockscreenValidationResult, Exception> {
            final /* synthetic */ IRemoteLockscreenValidationCallback val$callback;

            C00081(IRemoteLockscreenValidationCallback callback2) {
                callback = callback2;
            }

            @Override // android.os.OutcomeReceiver
            public void onResult(RemoteLockscreenValidationResult result) {
                try {
                    callback.onSuccess(result);
                } catch (RemoteException e) {
                    e.rethrowFromSystemServer();
                }
            }

            @Override // android.os.OutcomeReceiver
            public void onError(Exception e) {
                try {
                    callback.onFailure(e.getMessage());
                } catch (RemoteException ex) {
                    ex.rethrowFromSystemServer();
                }
            }
        }
    };

    public abstract void onValidateLockscreenGuess(byte[] bArr, OutcomeReceiver<RemoteLockscreenValidationResult, Exception> outcomeReceiver);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends IRemoteLockscreenValidationService.Stub {
        AnonymousClass1() {
        }

        @Override // android.service.remotelockscreenvalidation.IRemoteLockscreenValidationService
        public void validateLockscreenGuess(byte[] guess, IRemoteLockscreenValidationCallback callback2) {
            RemoteLockscreenValidationService.this.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService$1$$ExternalSyntheticLambda0
                @Override // com.android.internal.util.function.TriConsumer
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((RemoteLockscreenValidationService) obj).onValidateLockscreenGuess((byte[]) obj2, (RemoteLockscreenValidationService.AnonymousClass1.C00081) obj3);
                }
            }, RemoteLockscreenValidationService.this, guess, new OutcomeReceiver<RemoteLockscreenValidationResult, Exception>() { // from class: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService.1.1
                final /* synthetic */ IRemoteLockscreenValidationCallback val$callback;

                C00081(IRemoteLockscreenValidationCallback callback22) {
                    callback = callback22;
                }

                @Override // android.os.OutcomeReceiver
                public void onResult(RemoteLockscreenValidationResult result) {
                    try {
                        callback.onSuccess(result);
                    } catch (RemoteException e) {
                        e.rethrowFromSystemServer();
                    }
                }

                @Override // android.os.OutcomeReceiver
                public void onError(Exception e) {
                    try {
                        callback.onFailure(e.getMessage());
                    } catch (RemoteException ex) {
                        ex.rethrowFromSystemServer();
                    }
                }
            }));
        }

        /* renamed from: android.service.remotelockscreenvalidation.RemoteLockscreenValidationService$1$1 */
        /* loaded from: classes3.dex */
        class C00081 implements OutcomeReceiver<RemoteLockscreenValidationResult, Exception> {
            final /* synthetic */ IRemoteLockscreenValidationCallback val$callback;

            C00081(IRemoteLockscreenValidationCallback callback22) {
                callback = callback22;
            }

            @Override // android.os.OutcomeReceiver
            public void onResult(RemoteLockscreenValidationResult result) {
                try {
                    callback.onSuccess(result);
                } catch (RemoteException e) {
                    e.rethrowFromSystemServer();
                }
            }

            @Override // android.os.OutcomeReceiver
            public void onError(Exception e) {
                try {
                    callback.onFailure(e.getMessage());
                } catch (RemoteException ex) {
                    ex.rethrowFromSystemServer();
                }
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (!SERVICE_INTERFACE.equals(intent.getAction())) {
            Log.w(TAG, "Wrong action");
            return null;
        }
        return this.mInterface.asBinder();
    }
}
