package kotlinx.coroutines.channels;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import kotlinx.coroutines.selects.SelectKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ConflatedChannel extends AbstractChannel {
    public final ReentrantLock lock;
    public Object value;

    public ConflatedChannel(Function1 function1) {
        super(function1);
        this.lock = new ReentrantLock();
        this.value = AbstractChannelKt.EMPTY;
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
    public final String getBufferDebugString() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return "(value=" + this.value + ")";
        } finally {
            reentrantLock.unlock();
        }
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
        boolean z;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.value == AbstractChannelKt.EMPTY) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferFull() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        r1 = takeFirstReceiveOrPeekClosed();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
    
        if (r1 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.channels.Closed) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
    
        if (r1.tryResumeReceive(r5) == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002a, code lost:
    
        r4 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
    
        r0.unlock();
        r1.completeResumeReceive(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        return r1.getOfferResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0023, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0037, code lost:
    
        r1 = r4.value;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        if (r1 != kotlinx.coroutines.channels.AbstractChannelKt.EMPTY) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        r4.value = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0049, code lost:
    
        if (r3 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        return kotlinx.coroutines.channels.AbstractChannelKt.OFFER_SUCCESS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0051, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x003f, code lost:
    
        r2 = r4.onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0041, code lost:
    
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0043, code lost:
    
        r3 = kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElementCatchingException(r2, r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
    
        if (r4.value == kotlinx.coroutines.channels.AbstractChannelKt.EMPTY) goto L9;
     */
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
            kotlinx.coroutines.channels.Closed r1 = r4.getClosedForSend()     // Catch: java.lang.Throwable -> L52
            if (r1 == 0) goto Lf
            r0.unlock()
            return r1
        Lf:
            java.lang.Object r1 = r4.value     // Catch: java.lang.Throwable -> L52
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.AbstractChannelKt.EMPTY     // Catch: java.lang.Throwable -> L52
            if (r1 != r2) goto L37
        L15:
            kotlinx.coroutines.channels.ReceiveOrClosed r1 = r4.takeFirstReceiveOrPeekClosed()     // Catch: java.lang.Throwable -> L52
            if (r1 != 0) goto L1c
            goto L37
        L1c:
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.Closed     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto L24
            r0.unlock()
            return r1
        L24:
            kotlinx.coroutines.internal.Symbol r2 = r1.tryResumeReceive(r5)     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto L15
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L52
            r0.unlock()
            r1.completeResumeReceive(r5)
            java.lang.Object r4 = r1.getOfferResult()
            return r4
        L37:
            java.lang.Object r1 = r4.value     // Catch: java.lang.Throwable -> L52
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.AbstractChannelKt.EMPTY     // Catch: java.lang.Throwable -> L52
            r3 = 0
            if (r1 != r2) goto L3f
            goto L47
        L3f:
            kotlin.jvm.functions.Function1 r2 = r4.onUndeliveredElement     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto L47
            kotlinx.coroutines.internal.UndeliveredElementException r3 = kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElementCatchingException(r2, r1, r3)     // Catch: java.lang.Throwable -> L52
        L47:
            r4.value = r5     // Catch: java.lang.Throwable -> L52
            if (r3 != 0) goto L51
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.AbstractChannelKt.OFFER_SUCCESS     // Catch: java.lang.Throwable -> L52
            r0.unlock()
            return r4
        L51:
            throw r3     // Catch: java.lang.Throwable -> L52
        L52:
            r4 = move-exception
            r0.unlock()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ConflatedChannel.offerInternal(java.lang.Object):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final void onCancelIdempotent(boolean z) {
        Function1 function1;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Symbol symbol = AbstractChannelKt.EMPTY;
            Object obj = this.value;
            UndeliveredElementException undeliveredElementException = null;
            if (obj != symbol && (function1 = this.onUndeliveredElement) != null) {
                undeliveredElementException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, obj, null);
            }
            this.value = symbol;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.onCancelIdempotent(z);
            if (undeliveredElementException == null) {
            } else {
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
            Object obj = this.value;
            Symbol symbol = AbstractChannelKt.EMPTY;
            if (obj == symbol) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            }
            this.value = symbol;
            Unit unit = Unit.INSTANCE;
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final Object pollSelectInternal(SelectBuilderImpl selectBuilderImpl) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object obj = this.value;
            Symbol symbol = AbstractChannelKt.EMPTY;
            if (obj == symbol) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            }
            if (!selectBuilderImpl.trySelect()) {
                return SelectKt.ALREADY_SELECTED;
            }
            Object obj2 = this.value;
            this.value = symbol;
            Unit unit = Unit.INSTANCE;
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }
}
