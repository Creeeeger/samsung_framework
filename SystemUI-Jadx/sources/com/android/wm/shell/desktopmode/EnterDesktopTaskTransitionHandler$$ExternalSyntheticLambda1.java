package com.android.wm.shell.desktopmode;

import com.android.wm.shell.desktopmode.EnterDesktopTaskTransitionHandler;
import com.android.wm.shell.transition.Transitions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Transitions.TransitionFinishCallback f$0;

    public /* synthetic */ EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1(Transitions.TransitionFinishCallback transitionFinishCallback, int i) {
        this.$r8$classId = i;
        this.f$0 = transitionFinishCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.onTransitionFinished(null, null);
                return;
            case 1:
                Transitions.TransitionFinishCallback transitionFinishCallback = this.f$0;
                int i = EnterDesktopTaskTransitionHandler.AnonymousClass1.$r8$clinit;
                transitionFinishCallback.onTransitionFinished(null, null);
                return;
            default:
                Transitions.TransitionFinishCallback transitionFinishCallback2 = this.f$0;
                int i2 = EnterDesktopTaskTransitionHandler.AnonymousClass2.$r8$clinit;
                transitionFinishCallback2.onTransitionFinished(null, null);
                return;
        }
    }
}
