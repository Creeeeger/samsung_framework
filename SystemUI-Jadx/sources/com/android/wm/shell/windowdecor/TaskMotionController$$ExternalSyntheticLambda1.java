package com.android.wm.shell.windowdecor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TaskMotionController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TaskMotionAnimator f$0;

    public /* synthetic */ TaskMotionController$$ExternalSyntheticLambda1(TaskMotionAnimator taskMotionAnimator, int i) {
        this.$r8$classId = i;
        this.f$0 = taskMotionAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mAnimation.start();
                return;
            case 1:
                this.f$0.mAnimation.start();
                return;
            default:
                this.f$0.mAnimation.start();
                return;
        }
    }
}
