package com.android.systemui.util.concurrency;

import android.os.HandlerThread;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ThreadFactoryImpl implements ThreadFactory {
    public final ExecutorImpl buildExecutorOnNewThread(String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        return new ExecutorImpl(handlerThread.getLooper());
    }
}
