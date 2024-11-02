package com.android.systemui.util.concurrency;

import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface DelayableExecutor extends Executor {
    default ExecutorImpl.ExecutionToken executeDelayed(long j, Runnable runnable) {
        return ((ExecutorImpl) this).executeDelayed(runnable, j, TimeUnit.MILLISECONDS);
    }
}
