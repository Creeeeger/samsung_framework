package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzi<TResult> implements zzm<TResult> {
    private final Object mLock = new Object();
    private final Executor zzkou;
    private OnSuccessListener<? super TResult> zzlef;

    public zzi(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzkou = executor;
        this.zzlef = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzm
    public final void onComplete(Task<TResult> task) {
        if (task.isSuccessful()) {
            synchronized (this.mLock) {
                if (this.zzlef == null) {
                    return;
                }
                this.zzkou.execute(new zzj(this, task));
            }
        }
    }
}
