package com.android.wm.shell.splitscreen;

import android.view.SurfaceControl;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.splitscreen.SplitScreenTransitions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$$ExternalSyntheticLambda1 implements SplitScreenTransitions.TransitionFinishedCallback, SplitScreenTransitions.TransitionConsumedCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StageCoordinator f$0;

    public /* synthetic */ StageCoordinator$$ExternalSyntheticLambda1(StageCoordinator stageCoordinator, int i) {
        this.$r8$classId = i;
        this.f$0 = stageCoordinator;
    }

    @Override // com.android.wm.shell.splitscreen.SplitScreenTransitions.TransitionFinishedCallback
    public final void onFinished(WindowContainerTransaction windowContainerTransaction, SurfaceControl.Transaction transaction) {
        int i = this.$r8$classId;
        StageCoordinator stageCoordinator = this.f$0;
        switch (i) {
            case 0:
                stageCoordinator.mSplitLayout.setDividerInteractive("onSplitResizeFinish", true, false);
                return;
            default:
                stageCoordinator.mSplitLayout.setDividerInteractive("handleLayoutSizeChange", true, false);
                return;
        }
    }
}
