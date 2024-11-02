package com.android.settingslib.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ThreadUtils {
    public static volatile Thread sMainThread;
    public static volatile Handler sMainThreadHandler;
    public static volatile ExecutorService sThreadExecutor;

    public static boolean isMainThread() {
        if (sMainThread == null) {
            sMainThread = Looper.getMainLooper().getThread();
        }
        if (Thread.currentThread() == sMainThread) {
            return true;
        }
        return false;
    }

    public static Future postOnBackgroundThread(Runnable runnable) {
        ExecutorService executorService;
        synchronized (ThreadUtils.class) {
            if (sThreadExecutor == null) {
                sThreadExecutor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
            }
            executorService = sThreadExecutor;
        }
        return executorService.submit(runnable);
    }

    public static void postOnMainThread(Runnable runnable) {
        if (sMainThreadHandler == null) {
            sMainThreadHandler = new Handler(Looper.getMainLooper());
        }
        sMainThreadHandler.post(runnable);
    }
}
