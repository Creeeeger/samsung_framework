package com.android.wm.shell.splitscreen;

import com.android.wm.shell.splitscreen.StageCoordinator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$2$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StageCoordinator.AnonymousClass2 f$0;

    public /* synthetic */ StageCoordinator$2$$ExternalSyntheticLambda0(StageCoordinator.AnonymousClass2 anonymousClass2, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        StageTaskListener stageTaskListener;
        switch (this.$r8$classId) {
            case 0:
                StageCoordinator.this.exitSplitScreen(null, 0);
                return;
            default:
                StageCoordinator.AnonymousClass2 anonymousClass2 = this.f$0;
                StageCoordinator stageCoordinator = StageCoordinator.this;
                int childCount = stageCoordinator.mSideStage.getChildCount();
                StageCoordinator stageCoordinator2 = StageCoordinator.this;
                if (childCount == 0) {
                    stageTaskListener = stageCoordinator2.mMainStage;
                } else {
                    stageTaskListener = stageCoordinator2.mSideStage;
                }
                stageCoordinator.exitSplitScreen(stageTaskListener, 0);
                return;
        }
    }
}
