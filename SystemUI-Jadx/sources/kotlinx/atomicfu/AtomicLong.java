package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.atomicfu.TraceBase;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AtomicLong {
    public static final AtomicLongFieldUpdater FU;
    public final TraceBase trace;
    public volatile long value;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        FU = AtomicLongFieldUpdater.newUpdater(AtomicLong.class, "value");
    }

    public AtomicLong(long j, TraceBase traceBase) {
        this.trace = traceBase;
        this.value = j;
    }

    public final boolean compareAndSet(long j, long j2) {
        boolean compareAndSet = FU.compareAndSet(this, j, j2);
        if (compareAndSet) {
            TraceBase.None none = TraceBase.None.INSTANCE;
            TraceBase traceBase = this.trace;
            if (traceBase != none) {
                traceBase.getClass();
            }
        }
        return compareAndSet;
    }

    public final String toString() {
        return String.valueOf(this.value);
    }
}
