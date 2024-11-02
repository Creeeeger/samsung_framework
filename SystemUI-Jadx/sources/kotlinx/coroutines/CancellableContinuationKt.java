package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class CancellableContinuationKt {
    public static final CancellableContinuationImpl getOrCreateCancellableContinuation(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        boolean z = true;
        if (!(continuation instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl(continuation, 1);
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        AtomicRef atomicRef = dispatchedContinuation._reusableCancellableContinuation;
        while (true) {
            Object obj = atomicRef.value;
            cancellableContinuationImpl = null;
            if (obj == null) {
                dispatchedContinuation._reusableCancellableContinuation.setValue(DispatchedContinuationKt.REUSABLE_CLAIMED);
                cancellableContinuationImpl2 = null;
                break;
            }
            if (obj instanceof CancellableContinuationImpl) {
                if (dispatchedContinuation._reusableCancellableContinuation.compareAndSet(obj, DispatchedContinuationKt.REUSABLE_CLAIMED)) {
                    cancellableContinuationImpl2 = (CancellableContinuationImpl) obj;
                    break;
                }
            } else if (obj != DispatchedContinuationKt.REUSABLE_CLAIMED && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
        if (cancellableContinuationImpl2 != null) {
            Object obj2 = cancellableContinuationImpl2._state.value;
            if ((obj2 instanceof CompletedContinuation) && ((CompletedContinuation) obj2).idempotentResume != null) {
                cancellableContinuationImpl2.detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
                z = false;
            } else {
                cancellableContinuationImpl2._decision.setValue(0);
                cancellableContinuationImpl2._state.setValue(Active.INSTANCE);
            }
            if (z) {
                cancellableContinuationImpl = cancellableContinuationImpl2;
            }
            if (cancellableContinuationImpl != null) {
                return cancellableContinuationImpl;
            }
        }
        return new CancellableContinuationImpl(continuation, 2);
    }
}
