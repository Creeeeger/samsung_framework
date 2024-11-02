package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    private final CoroutineContext _context;
    public transient Continuation intercepted;

    public ContinuationImpl(Continuation<Object> continuation, CoroutineContext coroutineContext) {
        super(continuation);
        this._context = coroutineContext;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        Intrinsics.checkNotNull(coroutineContext);
        return coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        CancellableContinuationImpl cancellableContinuationImpl;
        Continuation continuation = this.intercepted;
        if (continuation != null && continuation != this) {
            CoroutineContext.Element element = getContext().get(ContinuationInterceptor.Key);
            Intrinsics.checkNotNull(element);
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            do {
            } while (dispatchedContinuation._reusableCancellableContinuation.value == DispatchedContinuationKt.REUSABLE_CLAIMED);
            Object obj = dispatchedContinuation._reusableCancellableContinuation.value;
            if (obj instanceof CancellableContinuationImpl) {
                cancellableContinuationImpl = (CancellableContinuationImpl) obj;
            } else {
                cancellableContinuationImpl = null;
            }
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            }
        }
        this.intercepted = CompletedContinuation.INSTANCE;
    }

    public ContinuationImpl(Continuation<Object> continuation) {
        this(continuation, continuation != null ? continuation.getContext() : null);
    }
}
