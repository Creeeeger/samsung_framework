package com.android.wm.shell.splitscreen;

import android.graphics.Rect;
import android.view.SurfaceControl;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.common.split.SplitLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$$ExternalSyntheticLambda2 implements SyncTransactionQueue.TransactionRunnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StageCoordinator f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ StageCoordinator$$ExternalSyntheticLambda2(StageCoordinator stageCoordinator, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = stageCoordinator;
        this.f$1 = obj;
    }

    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
    public final void runWithTransaction(SurfaceControl.Transaction transaction) {
        int i = this.$r8$classId;
        final StageCoordinator stageCoordinator = this.f$0;
        Object obj = this.f$1;
        switch (i) {
            case 0:
                stageCoordinator.updateSurfaceBounds((SplitLayout) obj, transaction, false);
                stageCoordinator.mMainStage.onResized(transaction);
                stageCoordinator.mSideStage.onResized(transaction);
                return;
            default:
                final StageTaskListener stageTaskListener = (StageTaskListener) obj;
                MainStage mainStage = stageCoordinator.mMainStage;
                SurfaceControl.Transaction windowCrop = transaction.setWindowCrop(mainStage.mRootLeash, null);
                SideStage sideStage = stageCoordinator.mSideStage;
                windowCrop.setWindowCrop(sideStage.mRootLeash, null);
                transaction.hide(mainStage.mDimLayer).hide(sideStage.mDimLayer);
                stageCoordinator.setDividerVisibility(false, transaction);
                if (stageTaskListener == null) {
                    SurfaceControl surfaceControl = sideStage.mRootLeash;
                    Rect rect = stageCoordinator.mTempRect1;
                    transaction.setPosition(surfaceControl, rect.left, rect.right);
                    return;
                } else {
                    Runnable runnable = new Runnable() { // from class: com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            StageCoordinator stageCoordinator2 = StageCoordinator.this;
                            StageTaskListener stageTaskListener2 = stageTaskListener;
                            stageCoordinator2.getClass();
                            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                            stageCoordinator2.mIsExiting = false;
                            MainStage mainStage2 = stageCoordinator2.mMainStage;
                            if (stageTaskListener2 == mainStage2) {
                                z = true;
                            } else {
                                z = false;
                            }
                            mainStage2.deactivate(windowContainerTransaction, z);
                            SideStage sideStage2 = stageCoordinator2.mSideStage;
                            if (stageTaskListener2 == sideStage2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            sideStage2.removeAllTasks(windowContainerTransaction, z2, true);
                            windowContainerTransaction.reorder(stageCoordinator2.mRootTaskInfo.token, false);
                            stageCoordinator2.setRootForceTranslucent(windowContainerTransaction, true);
                            windowContainerTransaction.setBounds(sideStage2.mRootTaskInfo.token, stageCoordinator2.mTempRect1);
                            SyncTransactionQueue syncTransactionQueue = stageCoordinator2.mSyncQueue;
                            syncTransactionQueue.queue(windowContainerTransaction);
                            syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(stageCoordinator2, 2));
                            stageCoordinator2.onTransitionAnimationComplete();
                        }
                    };
                    if (stageTaskListener.mSplitDecorManager != null) {
                        runnable.run();
                        return;
                    } else {
                        runnable.run();
                        return;
                    }
                }
        }
    }
}
