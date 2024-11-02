package androidx.appcompat.app;

import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppLocalesStorageHelper$SerialExecutor implements Executor {
    public Runnable mActive;
    public final Executor mExecutor;
    public final Object mLock = new Object();
    public final Queue mTasks = new ArrayDeque();

    public AppLocalesStorageHelper$SerialExecutor(Executor executor) {
        this.mExecutor = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        synchronized (this.mLock) {
            ((ArrayDeque) this.mTasks).add(new Runnable() { // from class: androidx.appcompat.app.AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppLocalesStorageHelper$SerialExecutor appLocalesStorageHelper$SerialExecutor = AppLocalesStorageHelper$SerialExecutor.this;
                    Runnable runnable2 = runnable;
                    appLocalesStorageHelper$SerialExecutor.getClass();
                    try {
                        runnable2.run();
                    } finally {
                        appLocalesStorageHelper$SerialExecutor.scheduleNext();
                    }
                }
            });
            if (this.mActive == null) {
                scheduleNext();
            }
        }
    }

    public final void scheduleNext() {
        synchronized (this.mLock) {
            Runnable runnable = (Runnable) ((ArrayDeque) this.mTasks).poll();
            this.mActive = runnable;
            if (runnable != null) {
                this.mExecutor.execute(runnable);
            }
        }
    }
}
