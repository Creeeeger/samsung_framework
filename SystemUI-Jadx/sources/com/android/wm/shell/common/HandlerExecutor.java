package com.android.wm.shell.common;

import android.os.Handler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HandlerExecutor implements ShellExecutor {
    public final Handler mHandler;

    public HandlerExecutor(Handler handler) {
        this.mHandler = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (this.mHandler.getLooper().isCurrentThread()) {
            runnable.run();
        } else {
            if (this.mHandler.post(runnable)) {
                return;
            }
            throw new RuntimeException(this.mHandler + " is probably exiting");
        }
    }

    public final void executeDelayed(long j, Runnable runnable) {
        if (this.mHandler.postDelayed(runnable, j)) {
            return;
        }
        throw new RuntimeException(this.mHandler + " is probably exiting");
    }

    public final void removeCallbacks(Runnable runnable) {
        this.mHandler.removeCallbacks(runnable);
    }
}
