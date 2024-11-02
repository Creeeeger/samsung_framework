package kotlinx.coroutines.channels;

import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ArrayChannel extends AbstractChannel {
    public Object[] buffer;
    public final int capacity;
    public int head;
    public final ReentrantLock lock;
    public final BufferOverflow onBufferOverflow;
    public final AtomicInt size;

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

    public ArrayChannel(int i, BufferOverflow bufferOverflow, Function1 function1) {
        super(function1);
        this.capacity = i;
        this.onBufferOverflow = bufferOverflow;
        if (i >= 1) {
            this.lock = new ReentrantLock();
            int min = Math.min(i, 8);
            Object[] objArr = new Object[min];
            Arrays.fill(objArr, 0, min, AbstractChannelKt.EMPTY);
            this.buffer = objArr;
            this.size = AtomicFU.atomic();
            return;
        }
        throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("ArrayChannel capacity must be at least 1, but ", i, " was specified").toString());
    }

    public final void enqueueElement(int i, Object obj) {
        int i2 = this.capacity;
        if (i < i2) {
            Object[] objArr = this.buffer;
            if (i >= objArr.length) {
                int min = Math.min(objArr.length * 2, i2);
                Object[] objArr2 = new Object[min];
                for (int i3 = 0; i3 < i; i3++) {
                    Object[] objArr3 = this.buffer;
                    objArr2[i3] = objArr3[(this.head + i3) % objArr3.length];
                }
                Arrays.fill(objArr2, i, min, AbstractChannelKt.EMPTY);
                this.buffer = objArr2;
                this.head = 0;
            }
            Object[] objArr4 = this.buffer;
            objArr4[(this.head + i) % objArr4.length] = obj;
            return;
        }
        Object[] objArr5 = this.buffer;
        int i4 = this.head;
        objArr5[i4 % objArr5.length] = null;
        objArr5[(i + i4) % objArr5.length] = obj;
        this.head = (i4 + 1) % objArr5.length;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final boolean enqueueReceiveInternal(Receive receive) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.enqueueReceiveInternal(receive);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final Object enqueueSend(SendElement sendElement) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.enqueueSend(sendElement);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final String getBufferDebugString() {
        return SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("(buffer:capacity=", this.capacity, ",size=", this.size.value, ")");
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final boolean isBufferAlwaysEmpty() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferAlwaysFull() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final boolean isBufferEmpty() {
        if (this.size.value == 0) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferFull() {
        if (this.size.value == this.capacity && this.onBufferOverflow == BufferOverflow.SUSPEND) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public final boolean isClosedForReceive() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.isClosedForReceive();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
    
        if (r1 == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
    
        r2 = takeFirstReceiveOrPeekClosed();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        if (r2 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if ((r2 instanceof kotlinx.coroutines.channels.Closed) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        if (r2.tryResumeReceive(r5) == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
    
        r4.size.setValue(r1);
        r4 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        r0.unlock();
        r2.completeResumeReceive(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
    
        return r2.getOfferResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        r4.size.setValue(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0073, code lost:
    
        enqueueElement(r1, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
    
        return kotlinx.coroutines.channels.AbstractChannelKt.OFFER_SUCCESS;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object offerInternal(java.lang.Object r5) {
        /*
            r4 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r4.lock
            r0.lock()
            kotlinx.atomicfu.AtomicInt r1 = r4.size     // Catch: java.lang.Throwable -> L7c
            int r1 = r1.value     // Catch: java.lang.Throwable -> L7c
            kotlinx.coroutines.channels.Closed r2 = r4.getClosedForSend()     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L13
            r0.unlock()
            return r2
        L13:
            int r2 = r4.capacity     // Catch: java.lang.Throwable -> L7c
            if (r1 >= r2) goto L1f
            kotlinx.atomicfu.AtomicInt r2 = r4.size     // Catch: java.lang.Throwable -> L7c
            int r3 = r1 + 1
            r2.setValue(r3)     // Catch: java.lang.Throwable -> L7c
            goto L32
        L1f:
            int[] r2 = kotlinx.coroutines.channels.ArrayChannel.WhenMappings.$EnumSwitchMapping$0     // Catch: java.lang.Throwable -> L7c
            kotlinx.coroutines.channels.BufferOverflow r3 = r4.onBufferOverflow     // Catch: java.lang.Throwable -> L7c
            int r3 = r3.ordinal()     // Catch: java.lang.Throwable -> L7c
            r2 = r2[r3]     // Catch: java.lang.Throwable -> L7c
            r3 = 1
            if (r2 == r3) goto L3d
            r3 = 2
            if (r2 == r3) goto L3a
            r3 = 3
            if (r2 != r3) goto L34
        L32:
            r2 = 0
            goto L3f
        L34:
            kotlin.NoWhenBranchMatchedException r4 = new kotlin.NoWhenBranchMatchedException     // Catch: java.lang.Throwable -> L7c
            r4.<init>()     // Catch: java.lang.Throwable -> L7c
            throw r4     // Catch: java.lang.Throwable -> L7c
        L3a:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.AbstractChannelKt.OFFER_SUCCESS     // Catch: java.lang.Throwable -> L7c
            goto L3f
        L3d:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.AbstractChannelKt.OFFER_FAILED     // Catch: java.lang.Throwable -> L7c
        L3f:
            if (r2 == 0) goto L45
            r0.unlock()
            return r2
        L45:
            if (r1 != 0) goto L73
        L47:
            kotlinx.coroutines.channels.ReceiveOrClosed r2 = r4.takeFirstReceiveOrPeekClosed()     // Catch: java.lang.Throwable -> L7c
            if (r2 != 0) goto L4e
            goto L73
        L4e:
            boolean r3 = r2 instanceof kotlinx.coroutines.channels.Closed     // Catch: java.lang.Throwable -> L7c
            if (r3 == 0) goto L5b
            kotlinx.atomicfu.AtomicInt r4 = r4.size     // Catch: java.lang.Throwable -> L7c
            r4.setValue(r1)     // Catch: java.lang.Throwable -> L7c
            r0.unlock()
            return r2
        L5b:
            kotlinx.coroutines.internal.Symbol r3 = r2.tryResumeReceive(r5)     // Catch: java.lang.Throwable -> L7c
            if (r3 == 0) goto L47
            kotlinx.atomicfu.AtomicInt r4 = r4.size     // Catch: java.lang.Throwable -> L7c
            r4.setValue(r1)     // Catch: java.lang.Throwable -> L7c
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7c
            r0.unlock()
            r2.completeResumeReceive(r5)
            java.lang.Object r4 = r2.getOfferResult()
            return r4
        L73:
            r4.enqueueElement(r1, r5)     // Catch: java.lang.Throwable -> L7c
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.AbstractChannelKt.OFFER_SUCCESS     // Catch: java.lang.Throwable -> L7c
            r0.unlock()
            return r4
        L7c:
            r4 = move-exception
            r0.unlock()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ArrayChannel.offerInternal(java.lang.Object):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final void onCancelIdempotent(boolean z) {
        Function1 function1 = this.onUndeliveredElement;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i = this.size.value;
            UndeliveredElementException undeliveredElementException = null;
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = this.buffer[this.head];
                if (function1 != null && obj != AbstractChannelKt.EMPTY) {
                    undeliveredElementException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, obj, undeliveredElementException);
                }
                Object[] objArr = this.buffer;
                int i3 = this.head;
                objArr[i3] = AbstractChannelKt.EMPTY;
                this.head = (i3 + 1) % objArr.length;
            }
            this.size.setValue(0);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.onCancelIdempotent(z);
            if (undeliveredElementException != null) {
                throw undeliveredElementException;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final Object pollInternal() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i = this.size.value;
            if (i == 0) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            }
            Object[] objArr = this.buffer;
            int i2 = this.head;
            Object obj = objArr[i2];
            Send send = null;
            objArr[i2] = null;
            this.size.setValue(i - 1);
            Object obj2 = AbstractChannelKt.POLL_FAILED;
            boolean z = false;
            if (i == this.capacity) {
                Send send2 = null;
                while (true) {
                    Send takeFirstSendOrPeekClosed = takeFirstSendOrPeekClosed();
                    if (takeFirstSendOrPeekClosed == null) {
                        send = send2;
                        break;
                    }
                    if (takeFirstSendOrPeekClosed.tryResumeSend(null) != null) {
                        obj2 = takeFirstSendOrPeekClosed.getPollResult();
                        z = true;
                        send = takeFirstSendOrPeekClosed;
                        break;
                    }
                    takeFirstSendOrPeekClosed.undeliveredElement();
                    send2 = takeFirstSendOrPeekClosed;
                }
            }
            if (obj2 != AbstractChannelKt.POLL_FAILED && !(obj2 instanceof Closed)) {
                this.size.setValue(i);
                Object[] objArr2 = this.buffer;
                objArr2[(this.head + i) % objArr2.length] = obj2;
            }
            this.head = (this.head + 1) % this.buffer.length;
            Unit unit = Unit.INSTANCE;
            if (z) {
                Intrinsics.checkNotNull(send);
                send.completeResumeSend();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
    
        if (r1 == r8.capacity) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        r3 = new kotlinx.coroutines.channels.AbstractChannel.TryPollDesc(r8.queue);
        r7 = new kotlinx.coroutines.selects.SelectBuilderImpl.AtomicSelectOp(r9, r3).perform(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
    
        if (r7 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
    
        if (r7 == kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        if (r7 == kotlinx.coroutines.internal.AtomicKt.RETRY_ATOMIC) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
    
        if (r7 != kotlinx.coroutines.selects.SelectKt.ALREADY_SELECTED) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        r8.size.setValue(r1);
        r8.buffer[r8.head] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if ((r7 instanceof kotlinx.coroutines.channels.Closed) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
    
        r3 = true;
        r2 = r7;
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
    
        if (r2 == kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
    
        if ((r2 instanceof kotlinx.coroutines.channels.Closed) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0097, code lost:
    
        r8.size.setValue(r1);
        r9 = r8.buffer;
        r9[(r8.head + r1) % r9.length] = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bd, code lost:
    
        r8.head = (r8.head + 1) % r8.buffer.length;
        r8 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cb, code lost:
    
        if (r3 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cd, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkNotNull(r5);
        ((kotlinx.coroutines.channels.Send) r5).completeResumeSend();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d5, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00aa, code lost:
    
        if (r9.trySelect() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ac, code lost:
    
        r8.size.setValue(r1);
        r8.buffer[r8.head] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
    
        return kotlinx.coroutines.selects.SelectKt.ALREADY_SELECTED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008d, code lost:
    
        throw new java.lang.IllegalStateException(("performAtomicTrySelect(describeTryOffer) returned " + r7).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0040, code lost:
    
        r5 = r3.getAffectedNode();
        kotlin.jvm.internal.Intrinsics.checkNotNull(r5);
        r2 = ((kotlinx.coroutines.channels.Send) r5).getPollResult();
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008e, code lost:
    
        r3 = false;
     */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object pollSelectInternal(kotlinx.coroutines.selects.SelectBuilderImpl r9) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ArrayChannel.pollSelectInternal(kotlinx.coroutines.selects.SelectBuilderImpl):java.lang.Object");
    }
}
