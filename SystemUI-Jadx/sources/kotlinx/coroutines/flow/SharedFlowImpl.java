package kotlinx.coroutines.flow;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.DisposeOnCancel;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SharedFlowImpl extends AbstractSharedFlow implements MutableSharedFlow, Flow, FusibleFlow {
    public Object[] buffer;
    public final int bufferCapacity;
    public int bufferSize;
    public long minCollectorIndex;
    public final BufferOverflow onBufferOverflow;
    public int queueSize;
    public final int replay;
    public long replayIndex;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Emitter implements DisposableHandle {
        public final Continuation cont;
        public final SharedFlowImpl flow;
        public final long index;
        public final Object value;

        public Emitter(SharedFlowImpl sharedFlowImpl, long j, Object obj, Continuation<? super Unit> continuation) {
            this.flow = sharedFlowImpl;
            this.index = j;
            this.value = obj;
            this.cont = continuation;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            SharedFlowImpl sharedFlowImpl = this.flow;
            synchronized (sharedFlowImpl) {
                if (this.index >= sharedFlowImpl.getHead()) {
                    Object[] objArr = sharedFlowImpl.buffer;
                    Intrinsics.checkNotNull(objArr);
                    long j = this.index;
                    Symbol symbol = SharedFlowKt.NO_VALUE;
                    int i = (int) j;
                    if (objArr[(objArr.length - 1) & i] == this) {
                        objArr[i & (objArr.length - 1)] = SharedFlowKt.NO_VALUE;
                        sharedFlowImpl.cleanupTailLocked();
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedFlowImpl(int i, int i2, BufferOverflow bufferOverflow) {
        this.replay = i;
        this.bufferCapacity = i2;
        this.onBufferOverflow = bufferOverflow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00be, code lost:
    
        throw ((kotlinx.coroutines.JobSupport) r8).getCancellationException();
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static kotlin.coroutines.intrinsics.CoroutineSingletons collect$suspendImpl(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.FlowCollector r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.collect$suspendImpl(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    public final Object awaitValue(SharedFlowSlot sharedFlowSlot, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            if (tryPeekLocked(sharedFlowSlot) < 0) {
                sharedFlowSlot.cont = cancellableContinuationImpl;
            } else {
                int i = Result.$r8$clinit;
                cancellableContinuationImpl.resumeWith(Unit.INSTANCE);
            }
            Unit unit = Unit.INSTANCE;
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == CoroutineSingletons.COROUTINE_SUSPENDED) {
            return result;
        }
        return Unit.INSTANCE;
    }

    public final void cleanupTailLocked() {
        if (this.bufferCapacity == 0 && this.queueSize <= 1) {
            return;
        }
        Object[] objArr = this.buffer;
        Intrinsics.checkNotNull(objArr);
        while (this.queueSize > 0) {
            long head = getHead();
            int i = this.bufferSize;
            int i2 = this.queueSize;
            if (objArr[((int) ((head + (i + i2)) - 1)) & (objArr.length - 1)] == SharedFlowKt.NO_VALUE) {
                this.queueSize = i2 - 1;
                objArr[((int) (getHead() + this.bufferSize + this.queueSize)) & (objArr.length - 1)] = null;
            } else {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        return collect$suspendImpl(this, flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot createSlot() {
        return new SharedFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] createSlotArray() {
        return new SharedFlowSlot[2];
    }

    public final void dropOldestLocked() {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Object[] objArr = this.buffer;
        Intrinsics.checkNotNull(objArr);
        long head = getHead();
        Symbol symbol = SharedFlowKt.NO_VALUE;
        objArr[((int) head) & (objArr.length - 1)] = null;
        this.bufferSize--;
        long head2 = getHead() + 1;
        if (this.replayIndex < head2) {
            this.replayIndex = head2;
        }
        if (this.minCollectorIndex < head2) {
            if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j = sharedFlowSlot.index;
                        if (j >= 0 && j < head2) {
                            sharedFlowSlot.index = head2;
                        }
                    }
                }
            }
            this.minCollectorIndex = head2;
        }
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Continuation[] continuationArr;
        Emitter emitter;
        if (tryEmit(obj)) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Continuation[] continuationArr2 = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (tryEmitLocked(obj)) {
                int i = Result.$r8$clinit;
                cancellableContinuationImpl.resumeWith(Unit.INSTANCE);
                continuationArr = findSlotsToResumeLocked(continuationArr2);
                emitter = null;
            } else {
                Emitter emitter2 = new Emitter(this, this.bufferSize + this.queueSize + getHead(), obj, cancellableContinuationImpl);
                enqueueLocked(emitter2);
                this.queueSize++;
                if (this.bufferCapacity == 0) {
                    continuationArr2 = findSlotsToResumeLocked(continuationArr2);
                }
                continuationArr = continuationArr2;
                emitter = emitter2;
            }
        }
        if (emitter != null) {
            cancellableContinuationImpl.invokeOnCancellation(new DisposeOnCancel(emitter));
        }
        for (Continuation continuation2 : continuationArr) {
            if (continuation2 != null) {
                int i2 = Result.$r8$clinit;
                continuation2.resumeWith(Unit.INSTANCE);
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (result != coroutineSingletons) {
            result = Unit.INSTANCE;
        }
        if (result != coroutineSingletons) {
            return Unit.INSTANCE;
        }
        return result;
    }

    public final void enqueueLocked(Object obj) {
        int i = this.bufferSize + this.queueSize;
        Object[] objArr = this.buffer;
        if (objArr == null) {
            objArr = growBuffer(0, 2, null);
        } else if (i >= objArr.length) {
            objArr = growBuffer(i, objArr.length * 2, objArr);
        }
        long head = getHead() + i;
        Symbol symbol = SharedFlowKt.NO_VALUE;
        objArr[((int) head) & (objArr.length - 1)] = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Continuation[] findSlotsToResumeLocked(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        CancellableContinuationImpl cancellableContinuationImpl;
        int length = continuationArr.length;
        if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
            int length2 = abstractSharedFlowSlotArr.length;
            int i = 0;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                if (abstractSharedFlowSlot != null && (cancellableContinuationImpl = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).cont) != null && tryPeekLocked(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        continuationArr = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                    }
                    continuationArr[length] = cancellableContinuationImpl;
                    sharedFlowSlot.cont = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        Symbol symbol = SharedFlowKt.NO_VALUE;
        if ((i != 0 && i != -3) || bufferOverflow != BufferOverflow.SUSPEND) {
            return new ChannelFlowOperatorImpl(this, coroutineContext, i, bufferOverflow);
        }
        return this;
    }

    public final long getHead() {
        return Math.min(this.minCollectorIndex, this.replayIndex);
    }

    public final Object[] growBuffer(int i, int i2, Object[] objArr) {
        boolean z;
        if (i2 > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Object[] objArr2 = new Object[i2];
            this.buffer = objArr2;
            if (objArr == null) {
                return objArr2;
            }
            long head = getHead();
            for (int i3 = 0; i3 < i; i3++) {
                Symbol symbol = SharedFlowKt.NO_VALUE;
                int i4 = (int) (i3 + head);
                objArr2[i4 & (i2 - 1)] = objArr[(objArr.length - 1) & i4];
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow".toString());
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final void resetReplayCache() {
        synchronized (this) {
            updateBufferLocked(getHead() + this.bufferSize, this.minCollectorIndex, getHead() + this.bufferSize, getHead() + this.bufferSize + this.queueSize);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean tryEmit(Object obj) {
        int i;
        boolean z;
        Continuation[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (tryEmitLocked(obj)) {
                continuationArr = findSlotsToResumeLocked(continuationArr);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                int i2 = Result.$r8$clinit;
                continuation.resumeWith(Unit.INSTANCE);
            }
        }
        return z;
    }

    public final boolean tryEmitLocked(Object obj) {
        int i = this.nCollectors;
        int i2 = this.replay;
        if (i == 0) {
            if (i2 != 0) {
                enqueueLocked(obj);
                int i3 = this.bufferSize + 1;
                this.bufferSize = i3;
                if (i3 > i2) {
                    dropOldestLocked();
                }
                this.minCollectorIndex = getHead() + this.bufferSize;
            }
            return true;
        }
        int i4 = this.bufferSize;
        int i5 = this.bufferCapacity;
        if (i4 >= i5 && this.minCollectorIndex <= this.replayIndex) {
            int i6 = WhenMappings.$EnumSwitchMapping$0[this.onBufferOverflow.ordinal()];
            if (i6 != 1) {
                if (i6 == 2) {
                    return true;
                }
            } else {
                return false;
            }
        }
        enqueueLocked(obj);
        int i7 = this.bufferSize + 1;
        this.bufferSize = i7;
        if (i7 > i5) {
            dropOldestLocked();
        }
        long head = getHead() + this.bufferSize;
        long j = this.replayIndex;
        if (((int) (head - j)) > i2) {
            updateBufferLocked(1 + j, this.minCollectorIndex, getHead() + this.bufferSize, getHead() + this.bufferSize + this.queueSize);
        }
        return true;
    }

    public final long tryPeekLocked(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.index;
        if (j < getHead() + this.bufferSize) {
            return j;
        }
        if (this.bufferCapacity > 0 || j > getHead() || this.queueSize == 0) {
            return -1L;
        }
        return j;
    }

    public final Object tryTakeValue(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            long tryPeekLocked = tryPeekLocked(sharedFlowSlot);
            if (tryPeekLocked < 0) {
                obj = SharedFlowKt.NO_VALUE;
            } else {
                long j = sharedFlowSlot.index;
                Object[] objArr = this.buffer;
                Intrinsics.checkNotNull(objArr);
                Symbol symbol = SharedFlowKt.NO_VALUE;
                Object obj2 = objArr[((int) tryPeekLocked) & (objArr.length - 1)];
                if (obj2 instanceof Emitter) {
                    obj2 = ((Emitter) obj2).value;
                }
                sharedFlowSlot.index = tryPeekLocked + 1;
                Object obj3 = obj2;
                continuationArr = updateCollectorIndexLocked$external__kotlinx_coroutines__android_common__kotlinx_coroutines(j);
                obj = obj3;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                int i = Result.$r8$clinit;
                continuation.resumeWith(Unit.INSTANCE);
            }
        }
        return obj;
    }

    public final void updateBufferLocked(long j, long j2, long j3, long j4) {
        long min = Math.min(j2, j);
        for (long head = getHead(); head < min; head++) {
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            Symbol symbol = SharedFlowKt.NO_VALUE;
            objArr[((int) head) & (objArr.length - 1)] = null;
        }
        this.replayIndex = j;
        this.minCollectorIndex = j2;
        this.bufferSize = (int) (j3 - min);
        this.queueSize = (int) (j4 - j3);
    }

    public final Continuation[] updateCollectorIndexLocked$external__kotlinx_coroutines__android_common__kotlinx_coroutines(long j) {
        int i;
        long j2;
        long j3;
        long j4;
        boolean z;
        long j5;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        long j6 = this.minCollectorIndex;
        Continuation[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        if (j > j6) {
            return continuationArr;
        }
        long head = getHead();
        long j7 = this.bufferSize + head;
        int i2 = this.bufferCapacity;
        if (i2 == 0 && this.queueSize > 0) {
            j7++;
        }
        if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                if (abstractSharedFlowSlot != null) {
                    long j8 = ((SharedFlowSlot) abstractSharedFlowSlot).index;
                    if (j8 >= 0 && j8 < j7) {
                        j7 = j8;
                    }
                }
            }
        }
        if (j7 <= this.minCollectorIndex) {
            return continuationArr;
        }
        long head2 = getHead() + this.bufferSize;
        if (this.nCollectors > 0) {
            i = Math.min(this.queueSize, i2 - ((int) (head2 - j7)));
        } else {
            i = this.queueSize;
        }
        long j9 = this.queueSize + head2;
        if (i > 0) {
            continuationArr = new Continuation[i];
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            long j10 = head2;
            int i3 = 0;
            while (true) {
                if (head2 < j9) {
                    int i4 = (int) head2;
                    j2 = j7;
                    Object obj = objArr[(objArr.length - 1) & i4];
                    Symbol symbol = SharedFlowKt.NO_VALUE;
                    if (obj != symbol) {
                        Emitter emitter = (Emitter) obj;
                        j3 = j9;
                        int i5 = i3 + 1;
                        continuationArr[i3] = emitter.cont;
                        objArr[i4 & (objArr.length - 1)] = symbol;
                        objArr[((int) j10) & (objArr.length - 1)] = emitter.value;
                        j5 = 1;
                        j10++;
                        if (i5 >= i) {
                            break;
                        }
                        i3 = i5;
                    } else {
                        j3 = j9;
                        j5 = 1;
                    }
                    head2 += j5;
                    j7 = j2;
                    j9 = j3;
                } else {
                    j2 = j7;
                    j3 = j9;
                    break;
                }
            }
            head2 = j10;
        } else {
            j2 = j7;
            j3 = j9;
        }
        Continuation[] continuationArr2 = continuationArr;
        int i6 = (int) (head2 - head);
        if (this.nCollectors == 0) {
            j4 = head2;
        } else {
            j4 = j2;
        }
        long max = Math.max(this.replayIndex, head2 - Math.min(this.replay, i6));
        if (i2 == 0 && max < j3) {
            Object[] objArr2 = this.buffer;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(objArr2[((int) max) & (objArr2.length - 1)], SharedFlowKt.NO_VALUE)) {
                head2++;
                max++;
            }
        }
        updateBufferLocked(max, j4, head2, j3);
        cleanupTailLocked();
        if (continuationArr2.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return findSlotsToResumeLocked(continuationArr2);
        }
        return continuationArr2;
    }
}
