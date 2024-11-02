package com.android.wm.shell.pip;

import com.android.wm.shell.pip.PipAnimationController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipTransitionController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PipTransitionController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PipTransitionController pipTransitionController = (PipTransitionController) this.f$0;
                pipTransitionController.mTransitions.addHandler(pipTransitionController);
                return;
            case 1:
                ((PipAnimationController.PipTransitionAnimator) this.f$0).mContentOverlay = null;
                return;
            case 2:
                ((PipAnimationController.PipTransitionAnimator) this.f$0).mContentOverlay = null;
                return;
            default:
                ((PipAnimationController.PipTransitionAnimator) this.f$0).mContentOverlay = null;
                return;
        }
    }
}
