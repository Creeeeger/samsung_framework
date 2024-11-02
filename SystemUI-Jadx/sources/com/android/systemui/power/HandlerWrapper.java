package com.android.systemui.power;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HandlerWrapper {
    public final Handler mWorker;
    public final HandlerThread mWorkerThread;

    public HandlerWrapper() {
        new Handler(Looper.getMainLooper());
        HandlerThread handlerThread = new HandlerThread("PowerUIHandlerWrapper");
        this.mWorkerThread = handlerThread;
        handlerThread.start();
        this.mWorker = new Handler(handlerThread.getLooper());
    }
}
