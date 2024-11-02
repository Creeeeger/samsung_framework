package com.android.wm.shell.pip;

import com.android.wm.shell.pip.PipAnimationController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipTaskOrganizer$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PipAnimationController.PipTransitionAnimator f$0;

    public /* synthetic */ PipTaskOrganizer$$ExternalSyntheticLambda9(PipAnimationController.PipTransitionAnimator pipTransitionAnimator, int i) {
        this.$r8$classId = i;
        this.f$0 = pipTransitionAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
            case 1:
            default:
                this.f$0.mContentOverlay = null;
                return;
        }
    }
}
