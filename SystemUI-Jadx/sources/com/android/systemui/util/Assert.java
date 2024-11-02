package com.android.systemui.util;

import android.os.Looper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Assert {
    public static final Looper sMainLooper = Looper.getMainLooper();
    public static Thread sTestThread = null;

    public static void isMainThread() {
        Looper looper = sMainLooper;
        if (!looper.isCurrentThread()) {
            Thread thread = sTestThread;
            if (thread == null || thread != Thread.currentThread()) {
                throw new IllegalStateException("should be called from the main thread. sMainLooper.threadName=" + looper.getThread().getName() + " Thread.currentThread()=" + Thread.currentThread().getName());
            }
        }
    }

    public static void isNotMainThread() {
        if (sMainLooper.isCurrentThread()) {
            Thread thread = sTestThread;
            if (thread == null || thread == Thread.currentThread()) {
                throw new IllegalStateException("should not be called from the main thread.");
            }
        }
    }

    public static void setTestThread(Thread thread) {
        sTestThread = thread;
    }

    public static void setTestableLooper(Looper looper) {
        Thread thread;
        if (looper == null) {
            thread = null;
        } else {
            thread = looper.getThread();
        }
        setTestThread(thread);
    }
}
