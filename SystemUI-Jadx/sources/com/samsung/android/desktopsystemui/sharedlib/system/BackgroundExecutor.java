package com.samsung.android.desktopsystemui.sharedlib.system;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BackgroundExecutor {
    private static final BackgroundExecutor sInstance = new BackgroundExecutor();
    private final ExecutorService mExecutorService = Executors.newFixedThreadPool(2);

    public static BackgroundExecutor get() {
        return sInstance;
    }

    public <T> Future<T> submit(Callable<T> callable) {
        return this.mExecutorService.submit(callable);
    }

    public Future<?> submit(Runnable runnable) {
        return this.mExecutorService.submit(runnable);
    }

    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.mExecutorService.submit(runnable, t);
    }
}
