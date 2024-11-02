package com.android.wm.shell.splitscreen;

import android.animation.Animator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenTransitions$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Animator f$0;

    public /* synthetic */ SplitScreenTransitions$$ExternalSyntheticLambda1(Animator animator, int i) {
        this.$r8$classId = i;
        this.f$0 = animator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
            case 1:
                this.f$0.end();
                return;
            default:
                Animator animator = this.f$0;
                if (!animator.isStarted()) {
                    animator.start();
                    return;
                }
                return;
        }
    }
}
