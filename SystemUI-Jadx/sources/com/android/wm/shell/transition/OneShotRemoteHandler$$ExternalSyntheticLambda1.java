package com.android.wm.shell.transition;

import android.util.Slog;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.transition.OneShotRemoteHandler;
import com.android.wm.shell.transition.Transitions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class OneShotRemoteHandler$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ OneShotRemoteHandler$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                OneShotRemoteHandler oneShotRemoteHandler = (OneShotRemoteHandler) this.f$0;
                String str = (String) this.f$1;
                oneShotRemoteHandler.getClass();
                Slog.d("ShellTransitions", "onForceHideAnimationFinished: " + str + ", num_remains=" + oneShotRemoteHandler.mForceHidingAnimators.size());
                return;
            default:
                Transitions.TransitionFinishCallback transitionFinishCallback = (Transitions.TransitionFinishCallback) this.f$0;
                WindowContainerTransaction windowContainerTransaction = (WindowContainerTransaction) this.f$1;
                int i = OneShotRemoteHandler.AnonymousClass2.$r8$clinit;
                transitionFinishCallback.onTransitionFinished(windowContainerTransaction, null);
                return;
        }
    }
}
