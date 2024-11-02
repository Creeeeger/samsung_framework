package com.android.wm.shell.windowdecor;

import android.graphics.Rect;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.windowdecor.TaskMotionAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TaskMotionController$$ExternalSyntheticLambda2 implements TaskMotionAnimator.OnAnimationFinishedCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TaskMotionController f$0;

    public /* synthetic */ TaskMotionController$$ExternalSyntheticLambda2(TaskMotionController taskMotionController, int i) {
        this.$r8$classId = i;
        this.f$0 = taskMotionController;
    }

    @Override // com.android.wm.shell.windowdecor.TaskMotionAnimator.OnAnimationFinishedCallback
    public final void onAnimationFinished(Rect rect) {
        int i = this.$r8$classId;
        TaskMotionController taskMotionController = this.f$0;
        switch (i) {
            case 0:
                taskMotionController.removeMotionAnimator(0);
                taskMotionController.mFreeformStashState.mAnimating = false;
                return;
            default:
                FreeformStashState freeformStashState = taskMotionController.mFreeformStashState;
                freeformStashState.mAnimating = false;
                if (!freeformStashState.isStashed()) {
                    taskMotionController.postAnimationFinished(1, taskMotionController.mWindowDecoration.mTaskInfo, rect, new WindowContainerTransaction());
                    return;
                } else {
                    taskMotionController.removeMotionAnimator(1);
                    return;
                }
        }
    }
}
