package com.android.server.desktopmode;

import android.os.Handler;
import com.android.server.ServiceThread;
import com.android.server.desktopmode.BootInitBlocker;
import com.android.server.desktopmode.StateManager;
import com.samsung.android.desktopmode.DesktopModeFeature;
import com.samsung.android.desktopmode.SemDesktopModeManager;

/* loaded from: classes2.dex */
public class BootInitBlocker {
    public static final String TAG = "[DMS]" + BootInitBlocker.class.getSimpleName();
    public final SemDesktopModeManager.DesktopModeBlocker mBlocker = new SemDesktopModeManager.DesktopModeBlocker() { // from class: com.android.server.desktopmode.BootInitBlocker$$ExternalSyntheticLambda0
        public final String onBlocked() {
            String lambda$new$0;
            lambda$new$0 = BootInitBlocker.lambda$new$0();
            return lambda$new$0;
        }
    };
    public final SemDesktopModeManager mDesktopModeManager;
    public final Handler mHandler;
    public final IStateManager mStateManager;

    public static /* synthetic */ String lambda$new$0() {
        return null;
    }

    public BootInitBlocker(ServiceThread serviceThread, IStateManager iStateManager, SemDesktopModeManager semDesktopModeManager) {
        this.mHandler = new Handler(serviceThread.getLooper());
        this.mStateManager = iStateManager;
        this.mDesktopModeManager = semDesktopModeManager;
    }

    public void register() {
        if (DesktopModeFeature.DEBUG) {
            Log.d(TAG, "registerBlocker");
        }
        this.mDesktopModeManager.registerBlocker(this.mBlocker);
        this.mStateManager.notifyBootInitBlockerRegistered(true);
        this.mStateManager.registerListener(new AnonymousClass1());
    }

    /* renamed from: com.android.server.desktopmode.BootInitBlocker$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends StateManager.StateListener {
        public AnonymousClass1() {
        }

        @Override // com.android.server.desktopmode.StateManager.StateListener
        public void onUserChanged(State state) {
            BootInitBlocker.this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.desktopmode.BootInitBlocker$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BootInitBlocker.AnonymousClass1.this.lambda$onUserChanged$0();
                }
            }, 3000L);
            BootInitBlocker.this.mStateManager.unregisterListener(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserChanged$0() {
            if (DesktopModeFeature.DEBUG) {
                Log.d(BootInitBlocker.TAG, "unregisterBlocker");
            }
            BootInitBlocker.this.mDesktopModeManager.unregisterBlocker(BootInitBlocker.this.mBlocker);
            BootInitBlocker.this.mStateManager.notifyBootInitBlockerRegistered(false);
        }
    }
}
