package com.samsung.context.sdk.samsunganalytics.internal.executor;

import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SingleThreadExecutor {
    public static ExecutorService executorService;
    public static SingleThreadExecutor singleThreadExecutor;

    public SingleThreadExecutor() {
        executorService = Executors.newSingleThreadExecutor(new ThreadFactory(this) { // from class: com.samsung.context.sdk.samsunganalytics.internal.executor.SingleThreadExecutor.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(1);
                thread.setDaemon(true);
                Debug.LogD("newThread on Executor");
                return thread;
            }
        });
    }

    public static SingleThreadExecutor getInstance() {
        if (singleThreadExecutor == null) {
            singleThreadExecutor = new SingleThreadExecutor();
        }
        return singleThreadExecutor;
    }

    public final void execute(final AsyncTaskClient asyncTaskClient) {
        executorService.submit(new Runnable(this) { // from class: com.samsung.context.sdk.samsunganalytics.internal.executor.SingleThreadExecutor.2
            @Override // java.lang.Runnable
            public final void run() {
                asyncTaskClient.run();
                asyncTaskClient.onFinish();
            }
        });
    }
}
