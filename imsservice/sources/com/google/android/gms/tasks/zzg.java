package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzg<TResult> implements zzm<TResult> {
    private final Object mLock = new Object();
    private final Executor zzkou;
    private OnFailureListener zzled;

    public zzg(Executor executor, OnFailureListener onFailureListener) {
        this.zzkou = executor;
        this.zzled = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzm
    public final void onComplete(Task<TResult> task) {
        if (task.isSuccessful()) {
            return;
        }
        synchronized (this.mLock) {
            if (this.zzled == null) {
                return;
            }
            this.zzkou.execute(new zzh(this, task));
        }
    }
}
