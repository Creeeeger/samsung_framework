package kotlinx.coroutines.internal;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class AtomicOp extends OpDescriptor {
    public final AtomicRef _consensus = AtomicFU.atomic(AtomicKt.NO_DECISION);

    public abstract void complete(Object obj, Object obj2);

    public final Object decide(Object obj) {
        Object obj2 = this._consensus.value;
        Symbol symbol = AtomicKt.NO_DECISION;
        if (obj2 != symbol) {
            return obj2;
        }
        if (this._consensus.compareAndSet(symbol, obj)) {
            return obj;
        }
        return this._consensus.value;
    }

    public long getOpSequence() {
        return 0L;
    }

    @Override // kotlinx.coroutines.internal.OpDescriptor
    public final Object perform(Object obj) {
        Object obj2 = this._consensus.value;
        if (obj2 == AtomicKt.NO_DECISION) {
            obj2 = decide(prepare(obj));
        }
        complete(obj, obj2);
        return obj2;
    }

    public abstract Object prepare(Object obj);

    @Override // kotlinx.coroutines.internal.OpDescriptor
    public final AtomicOp getAtomicOp() {
        return this;
    }
}
