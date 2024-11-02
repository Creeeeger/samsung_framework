package com.android.wm.shell.compatui;

import android.util.Log;
import android.view.SurfaceControl;
import com.android.wm.shell.common.SyncTransactionQueue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0 implements SyncTransactionQueue.TransactionRunnable {
    public final /* synthetic */ CompatUIWindowManagerAbstract f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0(CompatUIWindowManagerAbstract compatUIWindowManagerAbstract, int i, int i2) {
        this.f$0 = compatUIWindowManagerAbstract;
        this.f$1 = i;
        this.f$2 = i2;
    }

    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
    public final void runWithTransaction(SurfaceControl.Transaction transaction) {
        CompatUIWindowManagerAbstract compatUIWindowManagerAbstract = this.f$0;
        SurfaceControl surfaceControl = compatUIWindowManagerAbstract.mLeash;
        if (surfaceControl != null && surfaceControl.isValid()) {
            transaction.setPosition(compatUIWindowManagerAbstract.mLeash, this.f$1, this.f$2);
        } else {
            Log.w(compatUIWindowManagerAbstract.getClass().getSimpleName(), "The leash has been released.");
        }
    }
}
