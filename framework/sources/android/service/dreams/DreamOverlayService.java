package android.service.dreams;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.service.dreams.IDreamOverlay;
import android.service.dreams.IDreamOverlayClient;
import android.util.Log;
import android.view.WindowManager;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class DreamOverlayService extends Service {
    private static final boolean DEBUG = false;
    private static final String TAG = "DreamOverlayService";
    private OverlayClient mCurrentClient;
    private IDreamOverlay mDreamOverlay = new IDreamOverlay.Stub() { // from class: android.service.dreams.DreamOverlayService.1
        AnonymousClass1() {
        }

        @Override // android.service.dreams.IDreamOverlay
        public void getClient(IDreamOverlayClientCallback callback) {
            try {
                callback.onDreamOverlayClient(new OverlayClient(DreamOverlayService.this));
            } catch (RemoteException e) {
                Log.e(DreamOverlayService.TAG, "could not send client to callback", e);
            }
        }
    };
    private Executor mExecutor;

    public abstract void onStartDream(WindowManager.LayoutParams layoutParams);

    /* loaded from: classes3.dex */
    public static class OverlayClient extends IDreamOverlayClient.Stub {
        private ComponentName mDreamComponent;
        IDreamOverlayCallback mDreamOverlayCallback;
        private final DreamOverlayService mService;
        private boolean mShowComplications;

        OverlayClient(DreamOverlayService service) {
            this.mService = service;
        }

        @Override // android.service.dreams.IDreamOverlayClient
        public void startDream(WindowManager.LayoutParams params, IDreamOverlayCallback callback, String dreamComponent, boolean shouldShowComplications) throws RemoteException {
            this.mDreamComponent = ComponentName.unflattenFromString(dreamComponent);
            this.mShowComplications = shouldShowComplications;
            this.mDreamOverlayCallback = callback;
            this.mService.startDream(this, params);
        }

        @Override // android.service.dreams.IDreamOverlayClient
        public void wakeUp() {
            this.mService.wakeUp(this);
        }

        @Override // android.service.dreams.IDreamOverlayClient
        public void endDream() {
            this.mService.endDream(this);
        }

        public void onExitRequested() {
            try {
                this.mDreamOverlayCallback.onExitRequested();
            } catch (RemoteException e) {
                Log.e(DreamOverlayService.TAG, "Could not request exit:" + e);
            }
        }

        public boolean shouldShowComplications() {
            return this.mShowComplications;
        }

        public ComponentName getComponent() {
            return this.mDreamComponent;
        }
    }

    public void startDream(final OverlayClient client, final WindowManager.LayoutParams params) {
        this.mExecutor.execute(new Runnable() { // from class: android.service.dreams.DreamOverlayService$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DreamOverlayService.this.lambda$startDream$0(client, params);
            }
        });
    }

    public /* synthetic */ void lambda$startDream$0(OverlayClient client, WindowManager.LayoutParams params) {
        lambda$endDream$1(this.mCurrentClient);
        this.mCurrentClient = client;
        onStartDream(params);
    }

    public void endDream(final OverlayClient client) {
        this.mExecutor.execute(new Runnable() { // from class: android.service.dreams.DreamOverlayService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DreamOverlayService.this.lambda$endDream$1(client);
            }
        });
    }

    /* renamed from: endDreamInternal */
    public void lambda$endDream$1(OverlayClient client) {
        if (client == null || client != this.mCurrentClient) {
            return;
        }
        onEndDream();
        this.mCurrentClient = null;
    }

    public void wakeUp(final OverlayClient client) {
        this.mExecutor.execute(new Runnable() { // from class: android.service.dreams.DreamOverlayService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DreamOverlayService.this.lambda$wakeUp$2(client);
            }
        });
    }

    public /* synthetic */ void lambda$wakeUp$2(OverlayClient client) {
        if (this.mCurrentClient != client) {
            return;
        }
        onWakeUp();
    }

    /* renamed from: android.service.dreams.DreamOverlayService$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends IDreamOverlay.Stub {
        AnonymousClass1() {
        }

        @Override // android.service.dreams.IDreamOverlay
        public void getClient(IDreamOverlayClientCallback callback) {
            try {
                callback.onDreamOverlayClient(new OverlayClient(DreamOverlayService.this));
            } catch (RemoteException e) {
                Log.e(DreamOverlayService.TAG, "could not send client to callback", e);
            }
        }
    }

    public DreamOverlayService() {
    }

    public DreamOverlayService(Executor executor) {
        this.mExecutor = executor;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (this.mExecutor == null) {
            this.mExecutor = getMainExecutor();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mDreamOverlay.asBinder();
    }

    public void onWakeUp() {
    }

    public void onEndDream() {
    }

    public final void requestExit() {
        OverlayClient overlayClient = this.mCurrentClient;
        if (overlayClient == null) {
            throw new IllegalStateException("requested exit with no dream present");
        }
        overlayClient.onExitRequested();
    }

    public final boolean shouldShowComplications() {
        OverlayClient overlayClient = this.mCurrentClient;
        if (overlayClient == null) {
            throw new IllegalStateException("requested if should show complication when no dream active");
        }
        return overlayClient.shouldShowComplications();
    }

    public final ComponentName getDreamComponent() {
        OverlayClient overlayClient = this.mCurrentClient;
        if (overlayClient == null) {
            throw new IllegalStateException("requested dream component when no dream active");
        }
        return overlayClient.getComponent();
    }
}
