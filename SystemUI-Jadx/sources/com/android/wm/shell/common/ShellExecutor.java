package com.android.wm.shell.common;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ShellExecutor extends Executor {
    default void executeBlocking(final Runnable runnable) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        ((HandlerExecutor) this).execute(new Runnable() { // from class: com.android.wm.shell.common.ShellExecutor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = runnable;
                CountDownLatch countDownLatch2 = countDownLatch;
                runnable2.run();
                countDownLatch2.countDown();
            }
        });
        countDownLatch.await(2, timeUnit);
    }
}
