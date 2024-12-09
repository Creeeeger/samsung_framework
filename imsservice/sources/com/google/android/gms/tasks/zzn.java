package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes.dex */
final class zzn<TResult> {
    private final Object mLock = new Object();
    private Queue<zzm<TResult>> zzlej;
    private boolean zzlek;

    zzn() {
    }

    public final void zza(zzm<TResult> zzmVar) {
        synchronized (this.mLock) {
            if (this.zzlej == null) {
                this.zzlej = new ArrayDeque();
            }
            this.zzlej.add(zzmVar);
        }
    }

    public final void zzb(Task<TResult> task) {
        zzm<TResult> poll;
        synchronized (this.mLock) {
            if (this.zzlej != null && !this.zzlek) {
                this.zzlek = true;
                while (true) {
                    synchronized (this.mLock) {
                        poll = this.zzlej.poll();
                        if (poll == null) {
                            this.zzlek = false;
                            return;
                        }
                    }
                    poll.onComplete(task);
                }
            }
        }
    }
}
