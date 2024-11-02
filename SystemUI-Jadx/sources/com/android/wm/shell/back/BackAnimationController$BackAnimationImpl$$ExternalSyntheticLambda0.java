package com.android.wm.shell.back;

import com.android.wm.shell.back.BackAnimationController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ BackAnimationController.BackAnimationImpl f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0(BackAnimationController.BackAnimationImpl backAnimationImpl, boolean z) {
        this.f$0 = backAnimationImpl;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BackAnimationController.BackAnimationImpl backAnimationImpl = this.f$0;
        boolean z = this.f$1;
        BackAnimationController backAnimationController = BackAnimationController.this;
        if (!backAnimationController.mPostCommitAnimationInProgress) {
            backAnimationController.mTriggerBack = z;
            TouchTracker touchTracker = backAnimationController.mTouchTracker;
            if (touchTracker.mTriggerBack != z && !z) {
                touchTracker.mCancelled = true;
            }
            touchTracker.mTriggerBack = z;
        }
    }
}
