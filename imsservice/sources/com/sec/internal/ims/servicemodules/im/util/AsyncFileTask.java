package com.sec.internal.ims.servicemodules.im.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.sec.internal.ims.servicemodules.im.util.AsyncFileTask;
import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class AsyncFileTask<Result> {
    private static final int FTHTTP_POOL_SIZE = 3;
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE = 3;
    public static final Executor SERIAL_EXECUTOR;
    public static final Executor THREAD_POOL_EXECUTOR;
    public static final Executor THREAD_THUMBNAIL_POOL_EXECUTOR;
    private static final ThreadFactory sThreadFactory;
    private Handler mHandler;
    private final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final AtomicBoolean mIsCancelled = new AtomicBoolean();
    private State mState = State.NOT_STARTED;
    private Callable<Result> mWorker = new Callable() { // from class: com.sec.internal.ims.servicemodules.im.util.AsyncFileTask$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.Callable
        public final Object call() {
            Object lambda$new$0;
            lambda$new$0 = AsyncFileTask.this.lambda$new$0();
            return lambda$new$0;
        }
    };
    private FutureTask<Result> mFuture = new AnonymousClass2(this.mWorker);

    public enum State {
        NOT_STARTED,
        STARTED,
        FINISHED
    }

    protected abstract Result doInBackground() throws Exception;

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.sec.internal.ims.servicemodules.im.util.AsyncFileTask.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "BaseTask #" + this.mCount.getAndIncrement());
            }
        };
        sThreadFactory = threadFactory;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(3, 3, 1L, timeUnit, new LinkedBlockingQueue(128), threadFactory);
        THREAD_THUMBNAIL_POOL_EXECUTOR = new ThreadPoolExecutor(3, 3, 1L, timeUnit, new LinkedBlockingQueue(128), threadFactory);
        SERIAL_EXECUTOR = new SerialExecutor();
    }

    protected AsyncFileTask(Looper looper) {
        this.mHandler = new Handler(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$new$0() throws Exception {
        this.mTaskInvoked.set(true);
        try {
            Process.setThreadPriority(10);
            Result doInBackground = doInBackground();
            handleResult(doInBackground);
            return doInBackground;
        } finally {
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.util.AsyncFileTask$2, reason: invalid class name */
    class AnonymousClass2 extends FutureTask<Result> {
        AnonymousClass2(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            super.done();
            AsyncFileTask.this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.util.AsyncFileTask$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncFileTask.AnonymousClass2.this.lambda$done$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$done$0() {
            try {
                AsyncFileTask.this.postIfNotInvoked(get());
            } catch (InterruptedException | CancellationException | ExecutionException unused) {
                AsyncFileTask.this.postIfNotInvoked(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        handleResult(result);
    }

    private void handleResult(final Result result) {
        this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.util.AsyncFileTask$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AsyncFileTask.this.lambda$handleResult$1(result);
            }
        });
    }

    public void execute(Executor executor) {
        onPreExecute();
        executor.execute(this.mFuture);
    }

    protected void onPreExecute() {
        this.mState = State.STARTED;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onPostExecute, reason: merged with bridge method [inline-methods] */
    public void lambda$handleResult$1(Result result) {
        this.mState = State.FINISHED;
    }

    public final void cancel(boolean z) {
        this.mIsCancelled.set(true);
        this.mFuture.cancel(z);
    }

    protected final boolean isCancelled() {
        return this.mIsCancelled.get();
    }

    public State getState() {
        return this.mState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SerialExecutor implements Executor {
        private Runnable mActive;
        private final ArrayDeque<Runnable> mTasks;

        private SerialExecutor() {
            this.mTasks = new ArrayDeque<>();
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(final Runnable runnable) {
            this.mTasks.offer(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.util.AsyncFileTask$SerialExecutor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncFileTask.SerialExecutor.this.lambda$execute$0(runnable);
                }
            });
            if (this.mActive == null) {
                scheduleNext();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$execute$0(Runnable runnable) {
            try {
                runnable.run();
            } finally {
                scheduleNext();
            }
        }

        protected synchronized void scheduleNext() {
            Runnable poll = this.mTasks.poll();
            this.mActive = poll;
            if (poll != null) {
                AsyncFileTask.THREAD_POOL_EXECUTOR.execute(poll);
            }
        }
    }
}
