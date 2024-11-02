package com.android.wm.shell.back;

import com.android.wm.shell.back.BackAnimationController;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BackAnimationController$4$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ BackAnimationController$4$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                BackAnimationController.AnonymousClass4 anonymousClass4 = (BackAnimationController.AnonymousClass4) this.f$0;
                BackAnimationController backAnimationController = BackAnimationController.this;
                BackAnimationRunner backAnimationRunner = (BackAnimationRunner) backAnimationController.mAnimationDefinition.get(backAnimationController.mBackNavigationInfo.getType());
                if (backAnimationRunner != null) {
                    backAnimationRunner.mWaitingAnimation = false;
                    backAnimationRunner.mAnimationCancelled = true;
                    BackAnimationController backAnimationController2 = BackAnimationController.this;
                    if (!backAnimationController2.mBackGestureStarted) {
                        backAnimationController2.invokeOrCancelBack();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                BackAnimationController backAnimationController3 = BackAnimationController.this;
                ((HandlerExecutor) backAnimationController3.mShellExecutor).execute(new BackAnimationController$$ExternalSyntheticLambda1(backAnimationController3, 2));
                return;
            default:
                BackAnimationController.AnonymousClass1 anonymousClass1 = (BackAnimationController.AnonymousClass1) this.f$0;
                BackAnimationController backAnimationController4 = BackAnimationController.this;
                if (backAnimationController4.mBackGestureStarted && !backAnimationController4.mPostCommitAnimationInProgress) {
                    if (ShellProtoLogCache.WM_SHELL_BACK_PREVIEW_enabled) {
                        ShellProtoLogImpl.i(ShellProtoLogGroup.WM_SHELL_BACK_PREVIEW, -1757272348, "Navigation window gone.", null);
                    }
                    BackAnimationController backAnimationController5 = BackAnimationController.this;
                    if (!backAnimationController5.mPostCommitAnimationInProgress) {
                        backAnimationController5.mTriggerBack = false;
                        TouchTracker touchTracker = backAnimationController5.mTouchTracker;
                        if (touchTracker.mTriggerBack) {
                            touchTracker.mCancelled = true;
                        }
                        touchTracker.mTriggerBack = false;
                    }
                    backAnimationController5.onGestureFinished(false);
                    return;
                }
                return;
        }
    }
}
