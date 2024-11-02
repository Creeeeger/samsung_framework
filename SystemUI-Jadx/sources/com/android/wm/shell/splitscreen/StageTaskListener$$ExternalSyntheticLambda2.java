package com.android.wm.shell.splitscreen;

import android.view.SurfaceControl;
import com.android.wm.shell.common.SyncTransactionQueue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageTaskListener$$ExternalSyntheticLambda2 implements SyncTransactionQueue.TransactionRunnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StageTaskListener f$0;

    public /* synthetic */ StageTaskListener$$ExternalSyntheticLambda2(StageTaskListener stageTaskListener, int i) {
        this.$r8$classId = i;
        this.f$0 = stageTaskListener;
    }

    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
    public final void runWithTransaction(SurfaceControl.Transaction transaction) {
        int i = this.$r8$classId;
        StageTaskListener stageTaskListener = this.f$0;
        switch (i) {
            case 0:
                transaction.remove(stageTaskListener.mDimLayer);
                stageTaskListener.mSplitDecorManager.release(transaction);
                return;
            case 1:
                SurfaceControl build = new SurfaceControl.Builder(stageTaskListener.mSurfaceSession).setParent(stageTaskListener.mRootLeash).setColorLayer().setName("Dim layer").setCallsite("SurfaceUtils.makeColorLayer").build();
                transaction.setLayer(build, Integer.MAX_VALUE).setColor(build, new float[]{0.0f, 0.0f, 0.0f});
                stageTaskListener.mDimLayer = build;
                return;
            default:
                stageTaskListener.mSplitDecorManager.release(transaction);
                return;
        }
    }
}
