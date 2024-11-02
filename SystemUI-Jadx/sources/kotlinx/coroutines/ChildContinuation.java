package kotlinx.coroutines;

import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ChildContinuation extends JobCancellingNode {
    public final CancellableContinuationImpl child;

    public ChildContinuation(CancellableContinuationImpl cancellableContinuationImpl) {
        this.child = cancellableContinuationImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // kotlinx.coroutines.CompletionHandlerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void invoke(java.lang.Throwable r6) {
        /*
            r5 = this;
            kotlinx.coroutines.CancellableContinuationImpl r6 = r5.child
            kotlinx.coroutines.JobSupport r5 = r5.getJob()
            java.lang.Throwable r5 = r6.getContinuationCancellationCause(r5)
            boolean r0 = r6.isReusable()
            if (r0 != 0) goto L11
            goto L39
        L11:
            kotlin.coroutines.Continuation r0 = r6.delegate
            kotlinx.coroutines.internal.DispatchedContinuation r0 = (kotlinx.coroutines.internal.DispatchedContinuation) r0
            kotlinx.atomicfu.AtomicRef r1 = r0._reusableCancellableContinuation
        L17:
            java.lang.Object r2 = r1.value
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.internal.DispatchedContinuationKt.REUSABLE_CLAIMED
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r4 == 0) goto L2a
            kotlinx.atomicfu.AtomicRef r2 = r0._reusableCancellableContinuation
            boolean r2 = r2.compareAndSet(r3, r5)
            if (r2 == 0) goto L17
            goto L2e
        L2a:
            boolean r3 = r2 instanceof java.lang.Throwable
            if (r3 == 0) goto L30
        L2e:
            r0 = 1
            goto L3a
        L30:
            kotlinx.atomicfu.AtomicRef r3 = r0._reusableCancellableContinuation
            r4 = 0
            boolean r2 = r3.compareAndSet(r2, r4)
            if (r2 == 0) goto L17
        L39:
            r0 = 0
        L3a:
            if (r0 == 0) goto L3d
            goto L49
        L3d:
            r6.cancel(r5)
            boolean r5 = r6.isReusable()
            if (r5 != 0) goto L49
            r6.detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ChildContinuation.invoke(java.lang.Throwable):void");
    }
}
