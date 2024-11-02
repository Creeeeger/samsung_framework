package kotlinx.coroutines.scheduling;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.systemui.ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.TraceBase;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final Symbol NOT_IN_STACK;
    public final AtomicBoolean _isTerminated;
    public final AtomicLong controlState;
    public final int corePoolSize;
    public final GlobalQueue globalBlockingQueue;
    public final GlobalQueue globalCpuQueue;
    public final long idleWorkerKeepAliveNs;
    public final int maxPoolSize;
    public final AtomicLong parkedWorkersStack;
    public final String schedulerName;
    public final ResizableAtomicArray workers;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    static {
        new Companion(null);
        NOT_IN_STACK = new Symbol("NOT_IN_STACK");
    }

    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (!(i >= 1)) {
            throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Core pool size ", i, " should be at least 1").toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("Max pool size ", i2, " should be greater than or equals to core pool size ", i).toString());
        }
        if (!(i2 <= 2097150)) {
            throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Max pool size ", i2, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j > 0) {
            this.globalCpuQueue = new GlobalQueue();
            this.globalBlockingQueue = new GlobalQueue();
            TraceBase.None none = TraceBase.None.INSTANCE;
            this.parkedWorkersStack = new AtomicLong(0L, none);
            this.workers = new ResizableAtomicArray(i + 1);
            this.controlState = new AtomicLong(i << 42, none);
            this._isTerminated = AtomicFU.atomic(false);
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0096, code lost:
    
        if (r1 == null) goto L46;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void close() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.close():void");
    }

    public final int createNewWorker() {
        boolean z;
        boolean z2;
        synchronized (this.workers) {
            boolean z3 = false;
            if (this._isTerminated._value != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return -1;
            }
            long j = this.controlState.value;
            int i = (int) (j & 2097151);
            int i2 = i - ((int) ((j & 4398044413952L) >> 21));
            if (i2 < 0) {
                i2 = 0;
            }
            if (i2 >= this.corePoolSize) {
                return 0;
            }
            if (i >= this.maxPoolSize) {
                return 0;
            }
            int i3 = ((int) (this.controlState.value & 2097151)) + 1;
            if (i3 > 0 && this.workers.get(i3) == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                Worker worker = new Worker(this, i3);
                this.workers.setSynchronized(i3, worker);
                AtomicLong atomicLong = this.controlState;
                atomicLong.getClass();
                long incrementAndGet = AtomicLong.FU.incrementAndGet(atomicLong);
                TraceBase.None none = TraceBase.None.INSTANCE;
                TraceBase traceBase = atomicLong.trace;
                if (traceBase != none) {
                    traceBase.getClass();
                }
                if (i3 == ((int) (2097151 & incrementAndGet))) {
                    z3 = true;
                }
                if (z3) {
                    worker.start();
                    return i2 + 1;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public final void dispatch(Runnable runnable, TaskContext taskContext, boolean z) {
        Task taskImpl;
        Worker worker;
        Task task;
        boolean z2;
        boolean addLast;
        WorkerState workerState;
        TasksKt.schedulerTimeSource.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof Task) {
            taskImpl = (Task) runnable;
            taskImpl.submissionTime = nanoTime;
            taskImpl.taskContext = taskContext;
        } else {
            taskImpl = new TaskImpl(runnable, nanoTime, taskContext);
        }
        Thread currentThread = Thread.currentThread();
        Worker worker2 = null;
        if (currentThread instanceof Worker) {
            worker = (Worker) currentThread;
        } else {
            worker = null;
        }
        if (worker != null && Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            worker2 = worker;
        }
        boolean z3 = true;
        if (worker2 == null || (workerState = worker2.state) == WorkerState.TERMINATED || (((TaskContextImpl) taskImpl.taskContext).taskMode == 0 && workerState == WorkerState.BLOCKING)) {
            task = taskImpl;
        } else {
            worker2.mayHaveLocalTasks = true;
            task = worker2.localQueue.add(taskImpl, z);
        }
        if (task != null) {
            if (((TaskContextImpl) task.taskContext).taskMode == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                addLast = this.globalBlockingQueue.addLast(task);
            } else {
                addLast = this.globalCpuQueue.addLast(task);
            }
            if (!addLast) {
                throw new RejectedExecutionException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(this.schedulerName, " was terminated"));
            }
        }
        if (!z || worker2 == null) {
            z3 = false;
        }
        if (((TaskContextImpl) taskImpl.taskContext).taskMode == 0) {
            if (!z3 && !tryUnpark() && !tryCreateWorker(this.controlState.value)) {
                tryUnpark();
                return;
            }
            return;
        }
        AtomicLong atomicLong = this.controlState;
        atomicLong.getClass();
        long addAndGet = AtomicLong.FU.addAndGet(atomicLong, 2097152L);
        TraceBase.None none = TraceBase.None.INSTANCE;
        TraceBase traceBase = atomicLong.trace;
        if (traceBase != none) {
            traceBase.getClass();
        }
        if (!z3 && !tryUnpark() && !tryCreateWorker(addAndGet)) {
            tryUnpark();
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch(runnable, TasksKt.NonBlockingContext, false);
    }

    public final void parkedWorkersStackTopUpdate(Worker worker, int i, int i2) {
        AtomicLong atomicLong = this.parkedWorkersStack;
        while (true) {
            long j = atomicLong.value;
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object nextParkedWorker = worker.getNextParkedWorker();
                    while (true) {
                        if (nextParkedWorker == NOT_IN_STACK) {
                            i3 = -1;
                            break;
                        }
                        if (nextParkedWorker == null) {
                            i3 = 0;
                            break;
                        }
                        Worker worker2 = (Worker) nextParkedWorker;
                        int indexInArray = worker2.getIndexInArray();
                        if (indexInArray != 0) {
                            i3 = indexInArray;
                            break;
                        }
                        nextParkedWorker = worker2.getNextParkedWorker();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0 && this.parkedWorkersStack.compareAndSet(j, j2 | i3)) {
                return;
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int currentLength = this.workers.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < currentLength; i6++) {
            Worker worker = (Worker) this.workers.get(i6);
            if (worker != null) {
                WorkQueue workQueue = worker.localQueue;
                Object obj = workQueue.lastScheduledTask.value;
                int bufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines = workQueue.getBufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
                if (obj != null) {
                    bufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines++;
                }
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 != 3) {
                            if (i7 != 4) {
                                if (i7 == 5) {
                                    i5++;
                                }
                            } else {
                                i4++;
                                if (bufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines > 0) {
                                    arrayList.add(bufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines + "d");
                                }
                            }
                        } else {
                            i++;
                            arrayList.add(bufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines + "c");
                        }
                    } else {
                        i2++;
                        arrayList.add(bufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines + "b");
                    }
                } else {
                    i3++;
                }
            }
        }
        long j = this.controlState.value;
        return this.schedulerName + "@" + DebugStringsKt.getHexAddress(this) + "[Pool Size {core = " + this.corePoolSize + ", max = " + this.maxPoolSize + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.globalCpuQueue.getSize() + ", global blocking queue size = " + this.globalBlockingQueue.getSize() + ", Control State {created workers= " + ((int) (j & 2097151)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.corePoolSize - ((int) ((j & 9223367638808264704L) >> 42))) + "}]";
    }

    public final boolean tryCreateWorker(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        if (i < this.corePoolSize) {
            int createNewWorker = createNewWorker();
            if (createNewWorker == 1 && this.corePoolSize > 1) {
                createNewWorker();
            }
            if (createNewWorker > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean tryUnpark() {
        Worker worker;
        Symbol symbol;
        int i;
        do {
            AtomicLong atomicLong = this.parkedWorkersStack;
            while (true) {
                long j = atomicLong.value;
                worker = (Worker) this.workers.get((int) (2097151 & j));
                if (worker == null) {
                    worker = null;
                    break;
                }
                long j2 = (2097152 + j) & (-2097152);
                Object nextParkedWorker = worker.getNextParkedWorker();
                while (true) {
                    symbol = NOT_IN_STACK;
                    if (nextParkedWorker == symbol) {
                        i = -1;
                        break;
                    }
                    if (nextParkedWorker == null) {
                        i = 0;
                        break;
                    }
                    Worker worker2 = (Worker) nextParkedWorker;
                    i = worker2.getIndexInArray();
                    if (i != 0) {
                        break;
                    }
                    nextParkedWorker = worker2.getNextParkedWorker();
                }
                if (i >= 0 && this.parkedWorkersStack.compareAndSet(j, j2 | i)) {
                    worker.setNextParkedWorker(symbol);
                    break;
                }
            }
            if (worker == null) {
                return false;
            }
        } while (!worker.workerCtl.compareAndSet(-1, 0));
        LockSupport.unpark(worker);
        return true;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Worker extends Thread {
        private volatile int indexInArray;
        public final WorkQueue localQueue;
        public boolean mayHaveLocalTasks;
        public long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        public int rngState;
        public WorkerState state;
        public long terminationDeadline;
        public final AtomicInt workerCtl;

        private Worker() {
            setDaemon(true);
            this.localQueue = new WorkQueue();
            this.state = WorkerState.DORMANT;
            this.workerCtl = AtomicFU.atomic();
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            this.rngState = Random.Default.nextInt();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final kotlinx.coroutines.scheduling.Task findTask(boolean r10) {
            /*
                r9 = this;
                kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r0 = r9.state
                kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.CPU_ACQUIRED
                r2 = 0
                r3 = 1
                if (r0 != r1) goto L9
                goto L33
            L9:
                kotlinx.coroutines.scheduling.CoroutineScheduler r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
                kotlinx.atomicfu.AtomicLong r1 = r0.controlState
            Ld:
                long r4 = r1.value
                r6 = 9223367638808264704(0x7ffffc0000000000, double:NaN)
                long r6 = r6 & r4
                r8 = 42
                long r6 = r6 >> r8
                int r6 = (int) r6
                if (r6 != 0) goto L1d
                r0 = r2
                goto L2d
            L1d:
                r6 = 4398046511104(0x40000000000, double:2.1729236899484E-311)
                long r6 = r4 - r6
                kotlinx.atomicfu.AtomicLong r8 = r0.controlState
                boolean r4 = r8.compareAndSet(r4, r6)
                if (r4 == 0) goto Ld
                r0 = r3
            L2d:
                if (r0 == 0) goto L35
                kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.CPU_ACQUIRED
                r9.state = r0
            L33:
                r0 = r3
                goto L36
            L35:
                r0 = r2
            L36:
                r1 = 0
                if (r0 == 0) goto L7c
                if (r10 == 0) goto L70
                kotlinx.coroutines.scheduling.CoroutineScheduler r10 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
                int r10 = r10.corePoolSize
                int r10 = r10 * 2
                int r10 = r9.nextInt(r10)
                if (r10 != 0) goto L48
                goto L49
            L48:
                r3 = r2
            L49:
                if (r3 == 0) goto L52
                kotlinx.coroutines.scheduling.Task r10 = r9.pollGlobalQueues()
                if (r10 == 0) goto L52
                goto L7b
            L52:
                kotlinx.coroutines.scheduling.WorkQueue r10 = r9.localQueue
                kotlinx.atomicfu.AtomicRef r0 = r10.lastScheduledTask
                java.lang.Object r0 = r0.getAndSet(r1)
                kotlinx.coroutines.scheduling.Task r0 = (kotlinx.coroutines.scheduling.Task) r0
                if (r0 != 0) goto L63
                kotlinx.coroutines.scheduling.Task r10 = r10.pollBuffer()
                goto L64
            L63:
                r10 = r0
            L64:
                if (r10 == 0) goto L67
                goto L7b
            L67:
                if (r3 != 0) goto L77
                kotlinx.coroutines.scheduling.Task r10 = r9.pollGlobalQueues()
                if (r10 == 0) goto L77
                goto L7b
            L70:
                kotlinx.coroutines.scheduling.Task r10 = r9.pollGlobalQueues()
                if (r10 == 0) goto L77
                goto L7b
            L77:
                kotlinx.coroutines.scheduling.Task r10 = r9.trySteal(r2)
            L7b:
                return r10
            L7c:
                if (r10 == 0) goto L9c
                kotlinx.coroutines.scheduling.WorkQueue r10 = r9.localQueue
                kotlinx.atomicfu.AtomicRef r0 = r10.lastScheduledTask
                java.lang.Object r0 = r0.getAndSet(r1)
                kotlinx.coroutines.scheduling.Task r0 = (kotlinx.coroutines.scheduling.Task) r0
                if (r0 != 0) goto L8e
                kotlinx.coroutines.scheduling.Task r0 = r10.pollBuffer()
            L8e:
                if (r0 != 0) goto La7
                kotlinx.coroutines.scheduling.CoroutineScheduler r10 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
                kotlinx.coroutines.scheduling.GlobalQueue r10 = r10.globalBlockingQueue
                java.lang.Object r10 = r10.removeFirstOrNull()
                r0 = r10
                kotlinx.coroutines.scheduling.Task r0 = (kotlinx.coroutines.scheduling.Task) r0
                goto La7
            L9c:
                kotlinx.coroutines.scheduling.CoroutineScheduler r10 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
                kotlinx.coroutines.scheduling.GlobalQueue r10 = r10.globalBlockingQueue
                java.lang.Object r10 = r10.removeFirstOrNull()
                r0 = r10
                kotlinx.coroutines.scheduling.Task r0 = (kotlinx.coroutines.scheduling.Task) r0
            La7:
                if (r0 != 0) goto Lad
                kotlinx.coroutines.scheduling.Task r0 = r9.trySteal(r3)
            Lad:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.findTask(boolean):kotlinx.coroutines.scheduling.Task");
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final int nextInt(int i) {
            int i2 = this.rngState;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.rngState = i5;
            int i6 = i - 1;
            if ((i6 & i) == 0) {
                return i6 & i5;
            }
            return (Integer.MAX_VALUE & i5) % i;
        }

        public final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task task = (Task) CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
                if (task != null) {
                    return task;
                }
                return (Task) CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            }
            Task task2 = (Task) CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            if (task2 != null) {
                return task2;
            }
            return (Task) CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0 */
        /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r0v19 */
        /* JADX WARN: Type inference failed for: r0v26 */
        /* JADX WARN: Type inference failed for: r12v16 */
        /* JADX WARN: Type inference failed for: r12v6 */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r3v15 */
        /* JADX WARN: Type inference failed for: r3v16 */
        /* JADX WARN: Type inference failed for: r3v22 */
        /* JADX WARN: Type inference failed for: r3v23 */
        /* JADX WARN: Type inference failed for: r3v32 */
        /* JADX WARN: Type inference failed for: r3v33 */
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            boolean z;
            boolean z2;
            ?? r3;
            ?? r32;
            ?? r12;
            long j;
            int i;
            loop0: while (true) {
                ?? r0 = 0;
                boolean z3 = false;
                while (true) {
                    if (CoroutineScheduler.this._isTerminated._value != 0) {
                        z = true;
                    } else {
                        z = r0 == true ? 1 : 0;
                    }
                    if (!z) {
                        WorkerState workerState = this.state;
                        WorkerState workerState2 = WorkerState.TERMINATED;
                        if (workerState == workerState2) {
                            break loop0;
                        }
                        Task findTask = findTask(this.mayHaveLocalTasks);
                        if (findTask != null) {
                            this.minDelayUntilStealableTaskNs = 0L;
                            int i2 = ((TaskContextImpl) findTask.taskContext).taskMode;
                            this.terminationDeadline = 0L;
                            if (this.state == WorkerState.PARKING) {
                                this.state = WorkerState.BLOCKING;
                            }
                            if (i2 != 0 && tryReleaseCpu(WorkerState.BLOCKING)) {
                                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                                if (!coroutineScheduler.tryUnpark() && !coroutineScheduler.tryCreateWorker(coroutineScheduler.controlState.value)) {
                                    coroutineScheduler.tryUnpark();
                                }
                            }
                            CoroutineScheduler.this.getClass();
                            try {
                                findTask.run();
                            } catch (Throwable th) {
                                Thread currentThread = Thread.currentThread();
                                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                            }
                            if (i2 != 0) {
                                AtomicLong atomicLong = CoroutineScheduler.this.controlState;
                                atomicLong.getClass();
                                AtomicLong.FU.addAndGet(atomicLong, -2097152L);
                                TraceBase.None none = TraceBase.None.INSTANCE;
                                TraceBase traceBase = atomicLong.trace;
                                if (traceBase != none) {
                                    traceBase.getClass();
                                }
                                if (this.state != workerState2) {
                                    this.state = WorkerState.DORMANT;
                                }
                            }
                        } else {
                            this.mayHaveLocalTasks = r0;
                            if (this.minDelayUntilStealableTaskNs != 0) {
                                if (!z3) {
                                    z3 = true;
                                } else {
                                    tryReleaseCpu(WorkerState.PARKING);
                                    Thread.interrupted();
                                    LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                                    this.minDelayUntilStealableTaskNs = 0L;
                                    break;
                                }
                            } else {
                                Object obj = this.nextParkedWorker;
                                Symbol symbol = CoroutineScheduler.NOT_IN_STACK;
                                if (obj != symbol) {
                                    z2 = true;
                                } else {
                                    z2 = r0 == true ? 1 : 0;
                                }
                                if (!z2) {
                                    CoroutineScheduler coroutineScheduler2 = CoroutineScheduler.this;
                                    coroutineScheduler2.getClass();
                                    if (this.nextParkedWorker == symbol) {
                                        AtomicLong atomicLong2 = coroutineScheduler2.parkedWorkersStack;
                                        do {
                                            j = atomicLong2.value;
                                            i = this.indexInArray;
                                            this.nextParkedWorker = coroutineScheduler2.workers.get((int) (j & 2097151));
                                        } while (!coroutineScheduler2.parkedWorkersStack.compareAndSet(j, ((2097152 + j) & (-2097152)) | i));
                                    }
                                } else {
                                    this.workerCtl.setValue(-1);
                                    int i3 = r0;
                                    while (true) {
                                        if (this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK) {
                                            r3 = true;
                                        } else {
                                            r3 = i3;
                                        }
                                        if (r3 != true || this.workerCtl.value != -1) {
                                            break;
                                        }
                                        if (CoroutineScheduler.this._isTerminated._value != 0) {
                                            r32 = true;
                                        } else {
                                            r32 = i3;
                                        }
                                        if (r32 == true) {
                                            break;
                                        }
                                        WorkerState workerState3 = this.state;
                                        WorkerState workerState4 = WorkerState.TERMINATED;
                                        if (workerState3 == workerState4) {
                                            break;
                                        }
                                        tryReleaseCpu(WorkerState.PARKING);
                                        Thread.interrupted();
                                        if (this.terminationDeadline == 0) {
                                            this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.idleWorkerKeepAliveNs;
                                        }
                                        LockSupport.parkNanos(CoroutineScheduler.this.idleWorkerKeepAliveNs);
                                        if (System.nanoTime() - this.terminationDeadline >= 0) {
                                            this.terminationDeadline = 0L;
                                            CoroutineScheduler coroutineScheduler3 = CoroutineScheduler.this;
                                            synchronized (coroutineScheduler3.workers) {
                                                if (coroutineScheduler3._isTerminated._value != 0) {
                                                    r12 = true;
                                                } else {
                                                    r12 = i3;
                                                }
                                                if (r12 == false) {
                                                    if (((int) (coroutineScheduler3.controlState.value & 2097151)) > coroutineScheduler3.corePoolSize) {
                                                        if (this.workerCtl.compareAndSet(-1, 1)) {
                                                            int i4 = this.indexInArray;
                                                            setIndexInArray(i3);
                                                            coroutineScheduler3.parkedWorkersStackTopUpdate(this, i4, i3);
                                                            AtomicLong atomicLong3 = coroutineScheduler3.controlState;
                                                            atomicLong3.getClass();
                                                            long andDecrement = AtomicLong.FU.getAndDecrement(atomicLong3);
                                                            TraceBase.None none2 = TraceBase.None.INSTANCE;
                                                            TraceBase traceBase2 = atomicLong3.trace;
                                                            if (traceBase2 != none2) {
                                                                traceBase2.getClass();
                                                            }
                                                            int i5 = (int) (andDecrement & 2097151);
                                                            if (i5 != i4) {
                                                                Object obj2 = coroutineScheduler3.workers.get(i5);
                                                                Intrinsics.checkNotNull(obj2);
                                                                Worker worker = (Worker) obj2;
                                                                coroutineScheduler3.workers.setSynchronized(i4, worker);
                                                                worker.setIndexInArray(i4);
                                                                coroutineScheduler3.parkedWorkersStackTopUpdate(worker, i5, i4);
                                                            }
                                                            coroutineScheduler3.workers.setSynchronized(i5, null);
                                                            Unit unit = Unit.INSTANCE;
                                                            this.state = workerState4;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        i3 = 0;
                                    }
                                }
                                r0 = 0;
                            }
                        }
                    } else {
                        break loop0;
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        public final void setIndexInArray(int i) {
            String valueOf;
            String str = CoroutineScheduler.this.schedulerName;
            if (i == 0) {
                valueOf = "TERMINATED";
            } else {
                valueOf = String.valueOf(i);
            }
            setName(str + "-worker-" + valueOf);
            this.indexInArray = i;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(WorkerState workerState) {
            boolean z;
            WorkerState workerState2 = this.state;
            if (workerState2 == WorkerState.CPU_ACQUIRED) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                AtomicLong atomicLong = CoroutineScheduler.this.controlState;
                atomicLong.getClass();
                AtomicLong.FU.addAndGet(atomicLong, SemWallpaperColorsWrapper.LOCKSCREEN_FINGERPRINT);
                TraceBase.None none = TraceBase.None.INSTANCE;
                TraceBase traceBase = atomicLong.trace;
                if (traceBase != none) {
                    traceBase.getClass();
                }
            }
            if (workerState2 != workerState) {
                this.state = workerState;
            }
            return z;
        }

        public final Task trySteal(boolean z) {
            long tryStealLastScheduled;
            boolean z2;
            int i = (int) (CoroutineScheduler.this.controlState.value & 2097151);
            if (i < 2) {
                return null;
            }
            int nextInt = nextInt(i);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long j = Long.MAX_VALUE;
            for (int i2 = 0; i2 < i; i2++) {
                nextInt++;
                if (nextInt > i) {
                    nextInt = 1;
                }
                Worker worker = (Worker) coroutineScheduler.workers.get(nextInt);
                if (worker != null && worker != this) {
                    if (z) {
                        WorkQueue workQueue = this.localQueue;
                        WorkQueue workQueue2 = worker.localQueue;
                        workQueue.getClass();
                        int i3 = workQueue2.producerIndex.value;
                        AtomicReferenceArray atomicReferenceArray = workQueue2.buffer;
                        for (int i4 = workQueue2.consumerIndex.value; i4 != i3; i4++) {
                            int i5 = i4 & 127;
                            if (workQueue2.blockingTasksInBuffer.value == 0) {
                                break;
                            }
                            Task task = (Task) atomicReferenceArray.get(i5);
                            if (task != null) {
                                if (((TaskContextImpl) task.taskContext).taskMode == 1) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2 && atomicReferenceArray.compareAndSet(i5, task, null)) {
                                    AtomicInt atomicInt = workQueue2.blockingTasksInBuffer;
                                    atomicInt.getClass();
                                    AtomicInt.FU.decrementAndGet(atomicInt);
                                    TraceBase.None none = TraceBase.None.INSTANCE;
                                    TraceBase traceBase = atomicInt.trace;
                                    if (traceBase != none) {
                                        traceBase.getClass();
                                    }
                                    workQueue.add(task, false);
                                    tryStealLastScheduled = -1;
                                }
                            }
                        }
                        tryStealLastScheduled = workQueue.tryStealLastScheduled(workQueue2, true);
                    } else {
                        WorkQueue workQueue3 = this.localQueue;
                        WorkQueue workQueue4 = worker.localQueue;
                        workQueue3.getClass();
                        Task pollBuffer = workQueue4.pollBuffer();
                        if (pollBuffer != null) {
                            workQueue3.add(pollBuffer, false);
                            tryStealLastScheduled = -1;
                        } else {
                            tryStealLastScheduled = workQueue3.tryStealLastScheduled(workQueue4, false);
                        }
                    }
                    if (tryStealLastScheduled == -1) {
                        WorkQueue workQueue5 = this.localQueue;
                        Task task2 = (Task) workQueue5.lastScheduledTask.getAndSet(null);
                        if (task2 == null) {
                            return workQueue5.pollBuffer();
                        }
                        return task2;
                    }
                    if (tryStealLastScheduled > 0) {
                        j = Math.min(j, tryStealLastScheduled);
                    }
                }
            }
            if (j == Long.MAX_VALUE) {
                j = 0;
            }
            this.minDelayUntilStealableTaskNs = j;
            return null;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            setIndexInArray(i);
        }
    }

    public /* synthetic */ CoroutineScheduler(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? TasksKt.IDLE_WORKER_KEEP_ALIVE_NS : j, (i3 & 8) != 0 ? "DefaultDispatcher" : str);
    }
}
