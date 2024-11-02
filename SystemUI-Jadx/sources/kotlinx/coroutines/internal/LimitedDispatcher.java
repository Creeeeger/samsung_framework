package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Runnable, Delay {
    public final /* synthetic */ Delay $$delegate_0;
    public final CoroutineDispatcher dispatcher;
    public final int parallelism;
    public final LockFreeTaskQueue queue;
    private volatile int runningWorkers;
    public final Object workerAllocationLock;

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(CoroutineDispatcher coroutineDispatcher, int i) {
        Delay delay;
        this.dispatcher = coroutineDispatcher;
        this.parallelism = i;
        if (coroutineDispatcher instanceof Delay) {
            delay = (Delay) coroutineDispatcher;
        } else {
            delay = null;
        }
        this.$$delegate_0 = delay == null ? DefaultExecutorKt.DefaultDelay : delay;
        this.queue = new LockFreeTaskQueue(false);
        this.workerAllocationLock = new Object();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        boolean z;
        this.queue.addLast(runnable);
        boolean z2 = true;
        if (this.runningWorkers >= this.parallelism) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            synchronized (this.workerAllocationLock) {
                if (this.runningWorkers >= this.parallelism) {
                    z2 = false;
                } else {
                    this.runningWorkers++;
                }
            }
            if (z2) {
                this.dispatcher.dispatch(this, this);
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        boolean z;
        this.queue.addLast(runnable);
        boolean z2 = true;
        if (this.runningWorkers >= this.parallelism) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            synchronized (this.workerAllocationLock) {
                if (this.runningWorkers >= this.parallelism) {
                    z2 = false;
                } else {
                    this.runningWorkers++;
                }
            }
            if (z2) {
                this.dispatcher.dispatchYield(this, this);
            }
        }
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return this.$$delegate_0.invokeOnTimeout(j, runnable, coroutineContext);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0029, code lost:
    
        r0 = r3.workerAllocationLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002b, code lost:
    
        monitor-enter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002c, code lost:
    
        r3.runningWorkers--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
    
        if (r3.queue.getSize() != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        r3.runningWorkers++;
        r1 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003a, code lost:
    
        monitor-exit(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x003b, code lost:
    
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r3 = this;
        L0:
            r0 = 0
        L1:
            kotlinx.coroutines.internal.LockFreeTaskQueue r1 = r3.queue
            java.lang.Object r1 = r1.removeFirstOrNull()
            java.lang.Runnable r1 = (java.lang.Runnable) r1
            if (r1 == 0) goto L29
            r1.run()     // Catch: java.lang.Throwable -> Lf
            goto L15
        Lf:
            r1 = move-exception
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            kotlinx.coroutines.CoroutineExceptionHandlerKt.handleCoroutineException(r1, r2)
        L15:
            int r0 = r0 + 1
            r1 = 16
            if (r0 < r1) goto L1
            kotlinx.coroutines.CoroutineDispatcher r1 = r3.dispatcher
            boolean r1 = r1.isDispatchNeeded()
            if (r1 == 0) goto L1
            kotlinx.coroutines.CoroutineDispatcher r0 = r3.dispatcher
            r0.dispatch(r3, r3)
            return
        L29:
            java.lang.Object r0 = r3.workerAllocationLock
            monitor-enter(r0)
            int r1 = r3.runningWorkers     // Catch: java.lang.Throwable -> L46
            int r1 = r1 + (-1)
            r3.runningWorkers = r1     // Catch: java.lang.Throwable -> L46
            kotlinx.coroutines.internal.LockFreeTaskQueue r1 = r3.queue     // Catch: java.lang.Throwable -> L46
            int r1 = r1.getSize()     // Catch: java.lang.Throwable -> L46
            if (r1 != 0) goto L3c
            monitor-exit(r0)
            return
        L3c:
            int r1 = r3.runningWorkers     // Catch: java.lang.Throwable -> L46
            int r1 = r1 + 1
            r3.runningWorkers = r1     // Catch: java.lang.Throwable -> L46
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L46
            monitor-exit(r0)
            goto L0
        L46:
            r3 = move-exception
            monitor-exit(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LimitedDispatcher.run():void");
    }

    @Override // kotlinx.coroutines.Delay
    public final void scheduleResumeAfterDelay(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        this.$$delegate_0.scheduleResumeAfterDelay(j, cancellableContinuationImpl);
    }
}
