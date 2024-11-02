package com.android.wm.shell.splitscreen;

import android.window.WindowContainerTransaction;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StageCoordinator f$0;

    public /* synthetic */ StageCoordinator$$ExternalSyntheticLambda3(StageCoordinator stageCoordinator, int i) {
        this.$r8$classId = i;
        this.f$0 = stageCoordinator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        switch (this.$r8$classId) {
            case 0:
                StageCoordinator stageCoordinator = this.f$0;
                stageCoordinator.getClass();
                if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
                    stageCoordinator.updateCornerRadiusForStages(null);
                }
                stageCoordinator.handleLayoutSizeChange(stageCoordinator.mSplitLayout, true);
                return;
            case 1:
            case 4:
            default:
                StageCoordinator stageCoordinator2 = this.f$0;
                MainStage mainStage = stageCoordinator2.mMainStage;
                if (mainStage.getChildCount() == 0 || stageCoordinator2.mSideStage.getChildCount() == 0) {
                    if (mainStage.getChildCount() == 0) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if (mainStage.getChildCount() == 0) {
                        i2 = 0;
                    } else {
                        i2 = 1;
                    }
                    stageCoordinator2.clearSplitPairedInRecents(2);
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    stageCoordinator2.prepareSplitDismissChangeTransition(windowContainerTransaction, i2, null, false);
                    stageCoordinator2.prepareExitSplitScreen(i, windowContainerTransaction, true);
                    stageCoordinator2.mSplitTransitions.startDismissTransition(windowContainerTransaction, stageCoordinator2, i, 2);
                    return;
                }
                return;
            case 2:
            case 5:
                this.f$0.onTransitionAnimationComplete();
                return;
            case 3:
                StageCoordinator stageCoordinator3 = this.f$0;
                stageCoordinator3.getClass();
                if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
                    stageCoordinator3.updateCornerRadiusForStages(null);
                }
                stageCoordinator3.handleLayoutSizeChange(stageCoordinator3.mSplitLayout, true);
                return;
            case 6:
                StageCoordinator stageCoordinator4 = this.f$0;
                StageTaskListener stageTaskListener = stageCoordinator4.mMainStage;
                if (stageTaskListener.getChildCount() == 0) {
                    stageTaskListener = stageCoordinator4.mSideStage;
                }
                stageCoordinator4.exitSplitScreen(stageTaskListener, 0);
                return;
            case 7:
                StageCoordinator stageCoordinator5 = this.f$0;
                StageTaskListener stageTaskListener2 = stageCoordinator5.mMainStage;
                if (stageTaskListener2.getChildCount() == 0) {
                    stageTaskListener2 = stageCoordinator5.mSideStage;
                }
                stageCoordinator5.exitSplitScreen(stageTaskListener2, 0);
                return;
        }
    }
}
