package com.android.internal.util;

import android.os.Process;
import android.util.Slog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class ConcurrentUtils {
    public static final Executor DIRECT_EXECUTOR = new DirectExecutor();

    private ConcurrentUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.internal.util.ConcurrentUtils$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 implements ThreadFactory {
        private final AtomicInteger threadNum = new AtomicInteger(0);
        final /* synthetic */ int val$linuxThreadPriority;
        final /* synthetic */ String val$poolName;

        AnonymousClass1(String str, int i) {
            poolName = str;
            linuxThreadPriority = i;
        }

        /* renamed from: com.android.internal.util.ConcurrentUtils$1$1 */
        /* loaded from: classes5.dex */
        class C00151 extends Thread {
            final /* synthetic */ Runnable val$r;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00151(String name, Runnable runnable) {
                super(name);
                r = runnable;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(linuxThreadPriority);
                r.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            return new Thread(poolName + this.threadNum.incrementAndGet()) { // from class: com.android.internal.util.ConcurrentUtils.1.1
                final /* synthetic */ Runnable val$r;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00151(String name, Runnable r2) {
                    super(name);
                    r = r2;
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(linuxThreadPriority);
                    r.run();
                }
            };
        }
    }

    public static ExecutorService newFixedThreadPool(int nThreads, String poolName, int linuxThreadPriority) {
        return Executors.newFixedThreadPool(nThreads, new ThreadFactory() { // from class: com.android.internal.util.ConcurrentUtils.1
            private final AtomicInteger threadNum = new AtomicInteger(0);
            final /* synthetic */ int val$linuxThreadPriority;
            final /* synthetic */ String val$poolName;

            AnonymousClass1(String poolName2, int linuxThreadPriority2) {
                poolName = poolName2;
                linuxThreadPriority = linuxThreadPriority2;
            }

            /* renamed from: com.android.internal.util.ConcurrentUtils$1$1 */
            /* loaded from: classes5.dex */
            class C00151 extends Thread {
                final /* synthetic */ Runnable val$r;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00151(String name, Runnable r2) {
                    super(name);
                    r = r2;
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(linuxThreadPriority);
                    r.run();
                }
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable r2) {
                return new Thread(poolName + this.threadNum.incrementAndGet()) { // from class: com.android.internal.util.ConcurrentUtils.1.1
                    final /* synthetic */ Runnable val$r;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00151(String name, Runnable r22) {
                        super(name);
                        r = r22;
                    }

                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Process.setThreadPriority(linuxThreadPriority);
                        r.run();
                    }
                };
            }
        });
    }

    public static <T> T waitForFutureNoInterrupt(Future<T> future, String description) {
        try {
            return future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(description + " interrupted");
        } catch (ExecutionException e2) {
            throw new RuntimeException(description + " failed", e2);
        }
    }

    public static void waitForCountDownNoInterrupt(CountDownLatch countDownLatch, long timeoutMs, String description) {
        try {
            if (!countDownLatch.await(timeoutMs, TimeUnit.MILLISECONDS)) {
                throw new IllegalStateException(description + " timed out.");
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(description + " interrupted.");
        }
    }

    public static void wtfIfLockHeld(String tag, Object lock) {
        if (Thread.holdsLock(lock)) {
            Slog.wtf(tag, "Lock mustn't be held");
        }
    }

    public static void wtfIfLockNotHeld(String tag, Object lock) {
        if (!Thread.holdsLock(lock)) {
            Slog.wtf(tag, "Lock must be held");
        }
    }

    /* loaded from: classes5.dex */
    private static class DirectExecutor implements Executor {
        /* synthetic */ DirectExecutor(DirectExecutorIA directExecutorIA) {
            this();
        }

        private DirectExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            command.run();
        }

        public String toString() {
            return "DIRECT_EXECUTOR";
        }
    }
}
