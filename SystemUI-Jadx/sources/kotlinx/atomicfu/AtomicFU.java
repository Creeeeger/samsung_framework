package kotlinx.atomicfu;

import kotlinx.atomicfu.TraceBase;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class AtomicFU {
    public static final AtomicRef atomic(Object obj) {
        return new AtomicRef(obj, TraceBase.None.INSTANCE);
    }

    public static final AtomicInt atomic() {
        return new AtomicInt(0, TraceBase.None.INSTANCE);
    }

    public static final AtomicBoolean atomic(boolean z) {
        return new AtomicBoolean(z, TraceBase.None.INSTANCE);
    }
}
