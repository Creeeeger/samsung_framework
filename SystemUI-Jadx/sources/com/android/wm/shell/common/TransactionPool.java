package com.android.wm.shell.common;

import android.util.Pools;
import android.view.SurfaceControl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TransactionPool {
    public final Pools.SynchronizedPool mTransactionPool = new Pools.SynchronizedPool(4);

    public final SurfaceControl.Transaction acquire() {
        SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) this.mTransactionPool.acquire();
        if (transaction == null) {
            return new SurfaceControl.Transaction();
        }
        return transaction;
    }

    public final void release(SurfaceControl.Transaction transaction) {
        if (!this.mTransactionPool.release(transaction)) {
            transaction.close();
        }
    }
}
