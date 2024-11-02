package com.android.systemui.util.concurrency;

import android.os.Looper;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ExecutionImpl implements Execution {
    public final Looper mainLooper = Looper.getMainLooper();

    public final void assertIsMainThread() {
        Looper looper = this.mainLooper;
        if (looper.isCurrentThread()) {
        } else {
            throw new IllegalStateException(FontProvider$$ExternalSyntheticOutline0.m("should be called from the main thread. Main thread name=", looper.getThread().getName(), " Thread.currentThread()=", Thread.currentThread().getName()));
        }
    }
}
