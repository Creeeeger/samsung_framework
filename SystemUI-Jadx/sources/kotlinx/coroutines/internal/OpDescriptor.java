package kotlinx.coroutines.internal;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import kotlinx.coroutines.DebugStringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class OpDescriptor {
    public abstract AtomicOp getAtomicOp();

    public final boolean isEarlierThan(OpDescriptor opDescriptor) {
        AtomicOp atomicOp;
        AtomicOp atomicOp2 = getAtomicOp();
        if (atomicOp2 == null || (atomicOp = opDescriptor.getAtomicOp()) == null || atomicOp2.getOpSequence() >= atomicOp.getOpSequence()) {
            return false;
        }
        return true;
    }

    public abstract Object perform(Object obj);

    public String toString() {
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(DebugStringsKt.getClassSimpleName(this), "@", DebugStringsKt.getHexAddress(this));
    }
}
