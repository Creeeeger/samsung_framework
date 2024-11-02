package kotlinx.coroutines;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class YieldKt {
    /* JADX WARN: Removed duplicated region for block: B:28:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object yield(kotlin.coroutines.Continuation r7) {
        /*
            kotlin.coroutines.CoroutineContext r0 = r7.getContext()
            kotlinx.coroutines.JobKt.ensureActive(r0)
            kotlin.coroutines.Continuation r7 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.intercepted(r7)
            boolean r1 = r7 instanceof kotlinx.coroutines.internal.DispatchedContinuation
            r2 = 0
            if (r1 == 0) goto L13
            kotlinx.coroutines.internal.DispatchedContinuation r7 = (kotlinx.coroutines.internal.DispatchedContinuation) r7
            goto L14
        L13:
            r7 = r2
        L14:
            if (r7 != 0) goto L1a
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            goto L97
        L1a:
            kotlinx.coroutines.CoroutineDispatcher r1 = r7.dispatcher
            boolean r1 = r1.isDispatchNeeded()
            r3 = 1
            if (r1 == 0) goto L30
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            r7._state = r1
            r7.resumeMode = r3
            kotlinx.coroutines.CoroutineDispatcher r1 = r7.dispatcher
            r1.dispatchYield(r0, r7)
            goto L95
        L30:
            kotlinx.coroutines.YieldContext r1 = new kotlinx.coroutines.YieldContext
            r1.<init>()
            kotlin.coroutines.CoroutineContext r0 = r0.plus(r1)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            r7._state = r4
            r7.resumeMode = r3
            kotlinx.coroutines.CoroutineDispatcher r5 = r7.dispatcher
            r5.dispatchYield(r0, r7)
            boolean r0 = r1.dispatcherWasUnconfined
            if (r0 == 0) goto L95
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.internal.DispatchedContinuationKt.UNDEFINED
            kotlinx.coroutines.ThreadLocalEventLoop r0 = kotlinx.coroutines.ThreadLocalEventLoop.INSTANCE
            r0.getClass()
            kotlinx.coroutines.EventLoop r0 = kotlinx.coroutines.ThreadLocalEventLoop.getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines()
            kotlinx.coroutines.internal.ArrayQueue r1 = r0.unconfinedQueue
            r5 = 0
            if (r1 == 0) goto L61
            int r6 = r1.head
            int r1 = r1.tail
            if (r6 != r1) goto L5f
            goto L61
        L5f:
            r1 = r5
            goto L62
        L61:
            r1 = r3
        L62:
            if (r1 == 0) goto L65
            goto L87
        L65:
            boolean r1 = r0.isUnconfinedLoopActive()
            if (r1 == 0) goto L73
            r7._state = r4
            r7.resumeMode = r3
            r0.dispatchUnconfined(r7)
            goto L88
        L73:
            r0.incrementUseCount(r3)
            r7.run()     // Catch: java.lang.Throwable -> L80
        L79:
            boolean r1 = r0.processUnconfinedEvent()     // Catch: java.lang.Throwable -> L80
            if (r1 != 0) goto L79
            goto L84
        L80:
            r1 = move-exception
            r7.handleFatalException(r1, r2)     // Catch: java.lang.Throwable -> L90
        L84:
            r0.decrementUseCount(r3)
        L87:
            r3 = r5
        L88:
            if (r3 == 0) goto L8d
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            goto L97
        L8d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            goto L97
        L90:
            r7 = move-exception
            r0.decrementUseCount(r3)
            throw r7
        L95:
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
        L97:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r0) goto L9c
            return r7
        L9c:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.YieldKt.yield(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
