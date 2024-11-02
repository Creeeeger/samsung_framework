package kotlinx.coroutines;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class CancellableContinuationImpl extends DispatchedTask implements CancellableContinuation, CoroutineStackFrame {
    public final AtomicInt _decision;
    public final AtomicRef _state;
    public final CoroutineContext context;
    public final Continuation delegate;
    public DisposableHandle parentHandle;

    public CancellableContinuationImpl(Continuation<Object> continuation, int i) {
        super(i);
        this.delegate = continuation;
        this.context = continuation.getContext();
        this._decision = AtomicFU.atomic();
        this._state = AtomicFU.atomic(Active.INSTANCE);
    }

    public static void multipleHandlersError(Object obj, Function1 function1) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    public static Object resumedState(NotCompleted notCompleted, Object obj, int i, Function1 function1, LockFreeLinkedListNode.AbstractAtomicDesc abstractAtomicDesc) {
        CancelHandler cancelHandler;
        if (!(obj instanceof CompletedExceptionally)) {
            boolean z = true;
            if (i != 1 && i != 2) {
                z = false;
            }
            if (z || abstractAtomicDesc != null) {
                if (function1 != null || (((notCompleted instanceof CancelHandler) && !(notCompleted instanceof BeforeResumeCancelHandler)) || abstractAtomicDesc != null)) {
                    if (notCompleted instanceof CancelHandler) {
                        cancelHandler = (CancelHandler) notCompleted;
                    } else {
                        cancelHandler = null;
                    }
                    return new CompletedContinuation(obj, cancelHandler, function1, abstractAtomicDesc, null, 16, null);
                }
                return obj;
            }
            return obj;
        }
        return obj;
    }

    public final void callCancelHandler(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2), this.context);
        }
    }

    public final void callOnCancellation(Function1 function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2), this.context);
        }
    }

    public final void cancel(Throwable th) {
        Object obj;
        boolean z;
        CancelHandler cancelHandler;
        AtomicRef atomicRef = this._state;
        do {
            obj = atomicRef.value;
            if (!(obj instanceof NotCompleted)) {
                return;
            }
            z = obj instanceof CancelHandler;
        } while (!this._state.compareAndSet(obj, new CancelledContinuation(this, th, z)));
        if (z) {
            cancelHandler = (CancelHandler) obj;
        } else {
            cancelHandler = null;
        }
        if (cancelHandler != null) {
            callCancelHandler(cancelHandler, th);
        }
        if (!isReusable()) {
            detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        }
        dispatchResume(this.resumeMode);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final void cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj, Throwable th) {
        boolean z;
        AtomicRef atomicRef = this._state;
        while (true) {
            Object obj2 = atomicRef.value;
            if (!(obj2 instanceof NotCompleted)) {
                if (obj2 instanceof CompletedExceptionally) {
                    return;
                }
                if (obj2 instanceof CompletedContinuation) {
                    CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                    if (completedContinuation.cancelCause != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        if (this._state.compareAndSet(obj2, CompletedContinuation.copy$default(completedContinuation, null, th, 15))) {
                            CancelHandler cancelHandler = completedContinuation.cancelHandler;
                            if (cancelHandler != null) {
                                callCancelHandler(cancelHandler, th);
                            }
                            Function1 function1 = completedContinuation.onCancellation;
                            if (function1 != null) {
                                callOnCancellation(function1, th);
                                return;
                            }
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                } else if (this._state.compareAndSet(obj2, new CompletedContinuation(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed".toString());
            }
        }
    }

    public final void detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        DisposableHandle disposableHandle = this.parentHandle;
        if (disposableHandle == null) {
            return;
        }
        disposableHandle.dispose();
        this.parentHandle = NonDisposableHandle.INSTANCE;
    }

    /* JADX WARN: Finally extract failed */
    public final void dispatchResume(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        AtomicInt atomicInt = this._decision;
        while (true) {
            int i2 = atomicInt.value;
            z = false;
            if (i2 != 0) {
                if (i2 == 1) {
                    z2 = false;
                } else {
                    throw new IllegalStateException("Already resumed".toString());
                }
            } else if (this._decision.compareAndSet(0, 2)) {
                z2 = true;
                break;
            }
        }
        if (z2) {
            return;
        }
        Continuation continuation = this.delegate;
        if (i == 4) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3 && (continuation instanceof DispatchedContinuation)) {
            if (i != 1 && i != 2) {
                z4 = false;
            } else {
                z4 = true;
            }
            int i3 = this.resumeMode;
            if (i3 == 1 || i3 == 2) {
                z = true;
            }
            if (z4 == z) {
                CoroutineDispatcher coroutineDispatcher = ((DispatchedContinuation) continuation).dispatcher;
                CoroutineContext context = continuation.getContext();
                if (coroutineDispatcher.isDispatchNeeded()) {
                    coroutineDispatcher.dispatch(context, this);
                    return;
                }
                ThreadLocalEventLoop.INSTANCE.getClass();
                EventLoop eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines = ThreadLocalEventLoop.getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
                if (eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.isUnconfinedLoopActive()) {
                    eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.dispatchUnconfined(this);
                    return;
                }
                eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.incrementUseCount(true);
                try {
                    DispatchedTaskKt.resume(this, this.delegate, true);
                    do {
                    } while (eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.processUnconfinedEvent());
                } catch (Throwable th) {
                    try {
                        handleFatalException(th, null);
                    } finally {
                        eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.decrementUseCount(true);
                    }
                }
                return;
            }
        }
        DispatchedTaskKt.resume(this, continuation, z3);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.context;
    }

    public Throwable getContinuationCancellationCause(JobSupport jobSupport) {
        return jobSupport.getCancellationException();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return this.delegate;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Throwable getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj) {
        Throwable exceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines = super.getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(obj);
        if (exceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines == null) {
            return null;
        }
        return exceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        if (r6.parentHandle != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
    
        installParentHandle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        if (r0 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        releaseClaimedReusableContinuation();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        return kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        if (r0 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        releaseClaimedReusableContinuation();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        r0 = r6._state.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.CompletedExceptionally) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        r1 = r6.resumeMode;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r1 == 1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        if (r1 != 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        if (r4 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
    
        r1 = (kotlinx.coroutines.Job) r6.context.get(kotlinx.coroutines.Job.Key);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
    
        if (r1 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (r1.isActive() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0061, code lost:
    
        r1 = ((kotlinx.coroutines.JobSupport) r1).getCancellationException();
        cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006f, code lost:
    
        return getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0074, code lost:
    
        throw ((kotlinx.coroutines.CompletedExceptionally) r0).cause;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        if (r1 == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getResult() {
        /*
            r6 = this;
            boolean r0 = r6.isReusable()
            kotlinx.atomicfu.AtomicInt r1 = r6._decision
        L6:
            int r2 = r1.value
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L1d
            if (r2 != r3) goto L11
            r1 = r5
            goto L26
        L11:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Already suspended"
            java.lang.String r0 = r0.toString()
            r6.<init>(r0)
            throw r6
        L1d:
            kotlinx.atomicfu.AtomicInt r2 = r6._decision
            boolean r2 = r2.compareAndSet(r5, r4)
            if (r2 == 0) goto L6
            r1 = r4
        L26:
            if (r1 == 0) goto L37
            kotlinx.coroutines.DisposableHandle r1 = r6.parentHandle
            if (r1 != 0) goto L2f
            r6.installParentHandle()
        L2f:
            if (r0 == 0) goto L34
            r6.releaseClaimedReusableContinuation()
        L34:
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            return r6
        L37:
            if (r0 == 0) goto L3c
            r6.releaseClaimedReusableContinuation()
        L3c:
            kotlinx.atomicfu.AtomicRef r0 = r6._state
            java.lang.Object r0 = r0.value
            boolean r1 = r0 instanceof kotlinx.coroutines.CompletedExceptionally
            if (r1 != 0) goto L70
            int r1 = r6.resumeMode
            if (r1 == r4) goto L4c
            if (r1 != r3) goto L4b
            goto L4c
        L4b:
            r4 = r5
        L4c:
            if (r4 == 0) goto L6b
            kotlin.coroutines.CoroutineContext r1 = r6.context
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key
            kotlin.coroutines.CoroutineContext$Element r1 = r1.get(r2)
            kotlinx.coroutines.Job r1 = (kotlinx.coroutines.Job) r1
            if (r1 == 0) goto L6b
            boolean r2 = r1.isActive()
            if (r2 == 0) goto L61
            goto L6b
        L61:
            kotlinx.coroutines.JobSupport r1 = (kotlinx.coroutines.JobSupport) r1
            java.util.concurrent.CancellationException r1 = r1.getCancellationException()
            r6.cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r0, r1)
            throw r1
        L6b:
            java.lang.Object r6 = r6.getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r0)
            return r6
        L70:
            kotlinx.coroutines.CompletedExceptionally r0 = (kotlinx.coroutines.CompletedExceptionally) r0
            java.lang.Throwable r6 = r0.cause
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CancellableContinuationImpl.getResult():java.lang.Object");
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj) {
        if (obj instanceof CompletedContinuation) {
            return ((CompletedContinuation) obj).result;
        }
        return obj;
    }

    public final void initCancellability() {
        DisposableHandle installParentHandle = installParentHandle();
        if (installParentHandle != null && (!(this._state.value instanceof NotCompleted))) {
            installParentHandle.dispose();
            this.parentHandle = NonDisposableHandle.INSTANCE;
        }
    }

    public final DisposableHandle installParentHandle() {
        Job job = (Job) this.context.get(Job.Key);
        if (job == null) {
            return null;
        }
        DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, new ChildContinuation(this), 2);
        this.parentHandle = invokeOnCompletion$default;
        return invokeOnCompletion$default;
    }

    public final void invokeOnCancellation(Function1 function1) {
        CancelHandler invokeOnCancel;
        boolean z;
        if (function1 instanceof CancelHandler) {
            invokeOnCancel = (CancelHandler) function1;
        } else {
            invokeOnCancel = new InvokeOnCancel(function1);
        }
        AtomicRef atomicRef = this._state;
        while (true) {
            Object obj = atomicRef.value;
            if (obj instanceof Active) {
                if (this._state.compareAndSet(obj, invokeOnCancel)) {
                    return;
                }
            } else {
                Throwable th = null;
                if (!(obj instanceof CancelHandler)) {
                    boolean z2 = obj instanceof CompletedExceptionally;
                    if (z2) {
                        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
                        if (completedExceptionally._handled.compareAndSet()) {
                            if (obj instanceof CancelledContinuation) {
                                if (!z2) {
                                    completedExceptionally = null;
                                }
                                if (completedExceptionally != null) {
                                    th = completedExceptionally.cause;
                                }
                                callCancelHandler(function1, th);
                                return;
                            }
                            return;
                        }
                        multipleHandlersError(obj, function1);
                        throw null;
                    }
                    if (obj instanceof CompletedContinuation) {
                        CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                        if (completedContinuation.cancelHandler == null) {
                            if (invokeOnCancel instanceof BeforeResumeCancelHandler) {
                                return;
                            }
                            Throwable th2 = completedContinuation.cancelCause;
                            if (th2 != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                callCancelHandler(function1, th2);
                                return;
                            } else {
                                if (this._state.compareAndSet(obj, CompletedContinuation.copy$default(completedContinuation, invokeOnCancel, null, 29))) {
                                    return;
                                }
                            }
                        } else {
                            multipleHandlersError(obj, function1);
                            throw null;
                        }
                    } else {
                        if (invokeOnCancel instanceof BeforeResumeCancelHandler) {
                            return;
                        }
                        if (this._state.compareAndSet(obj, new CompletedContinuation(obj, invokeOnCancel, null, null, null, 28, null))) {
                            return;
                        }
                    }
                } else {
                    multipleHandlersError(obj, function1);
                    throw null;
                }
            }
        }
    }

    public final boolean isReusable() {
        boolean z;
        boolean z2;
        if (this.resumeMode == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (((DispatchedContinuation) this.delegate)._reusableCancellableContinuation.value != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public String nameString() {
        return "CancellableContinuation";
    }

    public final void releaseClaimedReusableContinuation() {
        DispatchedContinuation dispatchedContinuation;
        Continuation continuation = this.delegate;
        Throwable th = null;
        if (continuation instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) continuation;
        } else {
            dispatchedContinuation = null;
        }
        if (dispatchedContinuation != null) {
            AtomicRef atomicRef = dispatchedContinuation._reusableCancellableContinuation;
            while (true) {
                Object obj = atomicRef.value;
                Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
                if (obj == symbol) {
                    if (dispatchedContinuation._reusableCancellableContinuation.compareAndSet(symbol, this)) {
                        break;
                    }
                } else if (obj instanceof Throwable) {
                    if (dispatchedContinuation._reusableCancellableContinuation.compareAndSet(obj, null)) {
                        th = (Throwable) obj;
                    } else {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                } else {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                }
            }
            if (th != null) {
                detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
                cancel(th);
            }
        }
    }

    public final void resumeImpl(Object obj, int i, Function1 function1) {
        Object obj2;
        AtomicRef atomicRef = this._state;
        do {
            obj2 = atomicRef.value;
            if (obj2 instanceof NotCompleted) {
            } else {
                if (obj2 instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                    if (cancelledContinuation._resumed.compareAndSet()) {
                        if (function1 != null) {
                            callOnCancellation(function1, cancelledContinuation.cause);
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
        } while (!this._state.compareAndSet(obj2, resumedState((NotCompleted) obj2, obj, i, function1, null)));
        if (!isReusable()) {
            detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        }
        dispatchResume(i);
    }

    public final void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, Unit unit) {
        DispatchedContinuation dispatchedContinuation;
        CoroutineDispatcher coroutineDispatcher2;
        int i;
        Continuation continuation = this.delegate;
        if (continuation instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) continuation;
        } else {
            dispatchedContinuation = null;
        }
        if (dispatchedContinuation != null) {
            coroutineDispatcher2 = dispatchedContinuation.dispatcher;
        } else {
            coroutineDispatcher2 = null;
        }
        if (coroutineDispatcher2 == coroutineDispatcher) {
            i = 4;
        } else {
            i = this.resumeMode;
        }
        resumeImpl(unit, i, null);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m2571exceptionOrNullimpl = Result.m2571exceptionOrNullimpl(obj);
        if (m2571exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m2571exceptionOrNullimpl, false, 2, null);
        }
        resumeImpl(obj, this.resumeMode, null);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return this._state.value;
    }

    public final String toString() {
        String str;
        String nameString = nameString();
        String debugString = DebugStringsKt.toDebugString(this.delegate);
        Object obj = this._state.value;
        if (obj instanceof NotCompleted) {
            str = "Active";
        } else if (obj instanceof CancelledContinuation) {
            str = "Cancelled";
        } else {
            str = "Completed";
        }
        String hexAddress = DebugStringsKt.getHexAddress(this);
        StringBuilder sb = new StringBuilder();
        sb.append(nameString);
        sb.append("(");
        sb.append(debugString);
        sb.append("){");
        sb.append(str);
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, "}@", hexAddress);
    }

    public final Symbol tryResumeImpl(Object obj, LockFreeLinkedListNode.AbstractAtomicDesc abstractAtomicDesc, Function1 function1) {
        Object obj2;
        AtomicRef atomicRef = this._state;
        do {
            obj2 = atomicRef.value;
            if (obj2 instanceof NotCompleted) {
            } else {
                if ((obj2 instanceof CompletedContinuation) && abstractAtomicDesc != null && ((CompletedContinuation) obj2).idempotentResume == abstractAtomicDesc) {
                    return CancellableContinuationImplKt.RESUME_TOKEN;
                }
                return null;
            }
        } while (!this._state.compareAndSet(obj2, resumedState((NotCompleted) obj2, obj, this.resumeMode, function1, abstractAtomicDesc)));
        if (!isReusable()) {
            detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        }
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }

    public final void callCancelHandler(Function1 function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2), this.context);
        }
    }
}
