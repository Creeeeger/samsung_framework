package kotlinx.coroutines.selects;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.atomicfu.TraceBase;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobCancellingNode;
import kotlinx.coroutines.internal.AtomicDesc;
import kotlinx.coroutines.internal.AtomicOp;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SelectBuilderImpl extends LockFreeLinkedListHead implements SelectInstance, Continuation, CoroutineStackFrame {
    public final Continuation uCont;
    public final AtomicRef _state = AtomicFU.atomic(SelectKt.NOT_SELECTED);
    public final AtomicRef _result = AtomicFU.atomic(SelectKt.UNDECIDED);
    public final AtomicRef _parentHandle = AtomicFU.atomic((Object) null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class AtomicSelectOp extends AtomicOp {
        public final AtomicDesc desc;
        public final SelectBuilderImpl impl;
        public final long opSequence;

        public AtomicSelectOp(SelectBuilderImpl selectBuilderImpl, AtomicDesc atomicDesc) {
            this.impl = selectBuilderImpl;
            this.desc = atomicDesc;
            AtomicLong atomicLong = SelectKt.selectOpSequenceNumber.number;
            atomicLong.getClass();
            long incrementAndGet = AtomicLong.FU.incrementAndGet(atomicLong);
            TraceBase.None none = TraceBase.None.INSTANCE;
            TraceBase traceBase = atomicLong.trace;
            if (traceBase != none) {
                traceBase.getClass();
            }
            this.opSequence = incrementAndGet;
            atomicDesc.atomicOp = this;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public final void complete(Object obj, Object obj2) {
            boolean z;
            Symbol symbol;
            if (obj2 == null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                symbol = null;
            } else {
                symbol = SelectKt.NOT_SELECTED;
            }
            SelectBuilderImpl selectBuilderImpl = this.impl;
            if (selectBuilderImpl._state.compareAndSet(this, symbol) && z) {
                selectBuilderImpl.doAfterSelect();
            }
            this.desc.complete(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public final long getOpSequence() {
            return this.opSequence;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        
            r0 = null;
         */
        @Override // kotlinx.coroutines.internal.AtomicOp
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object prepare(java.lang.Object r4) {
            /*
                r3 = this;
                if (r4 != 0) goto L2c
                kotlinx.coroutines.selects.SelectBuilderImpl r0 = r3.impl
                kotlinx.atomicfu.AtomicRef r0 = r0._state
            L6:
                java.lang.Object r1 = r0.value
                if (r1 != r3) goto Lb
                goto L25
            Lb:
                boolean r2 = r1 instanceof kotlinx.coroutines.internal.OpDescriptor
                if (r2 == 0) goto L17
                kotlinx.coroutines.internal.OpDescriptor r1 = (kotlinx.coroutines.internal.OpDescriptor) r1
                kotlinx.coroutines.selects.SelectBuilderImpl r2 = r3.impl
                r1.perform(r2)
                goto L6
            L17:
                kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.selects.SelectKt.NOT_SELECTED
                if (r1 != r2) goto L27
                kotlinx.coroutines.selects.SelectBuilderImpl r1 = r3.impl
                kotlinx.atomicfu.AtomicRef r1 = r1._state
                boolean r1 = r1.compareAndSet(r2, r3)
                if (r1 == 0) goto L6
            L25:
                r0 = 0
                goto L29
            L27:
                kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.selects.SelectKt.ALREADY_SELECTED
            L29:
                if (r0 == 0) goto L2c
                return r0
            L2c:
                kotlinx.coroutines.internal.AtomicDesc r0 = r3.desc     // Catch: java.lang.Throwable -> L33
                java.lang.Object r3 = r0.prepare(r3)     // Catch: java.lang.Throwable -> L33
                return r3
            L33:
                r0 = move-exception
                if (r4 != 0) goto L3f
                kotlinx.coroutines.selects.SelectBuilderImpl r4 = r3.impl
                kotlinx.atomicfu.AtomicRef r4 = r4._state
                kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.selects.SelectKt.NOT_SELECTED
                r4.compareAndSet(r3, r1)
            L3f:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectBuilderImpl.AtomicSelectOp.prepare(java.lang.Object):java.lang.Object");
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public final String toString() {
            return "AtomicSelectOp(sequence=" + this.opSequence + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class DisposeNode extends LockFreeLinkedListNode {
        public final DisposableHandle handle;

        public DisposeNode(DisposableHandle disposableHandle) {
            this.handle = disposableHandle;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class SelectOnCancelling extends JobCancellingNode {
        public SelectOnCancelling() {
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        public final void invoke(Throwable th) {
            SelectBuilderImpl selectBuilderImpl = SelectBuilderImpl.this;
            if (selectBuilderImpl.trySelect()) {
                selectBuilderImpl.resumeSelectWithException(getJob().getCancellationException());
            }
        }
    }

    public SelectBuilderImpl(Continuation<Object> continuation) {
        this.uCont = continuation;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        r3.dispose();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0009, code lost:
    
        if (isSelected() == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (getPrevNode().addNext(r0, r2) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
    
        if (isSelected() != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void disposeOnSelect(kotlinx.coroutines.DisposableHandle r3) {
        /*
            r2 = this;
            kotlinx.coroutines.selects.SelectBuilderImpl$DisposeNode r0 = new kotlinx.coroutines.selects.SelectBuilderImpl$DisposeNode
            r0.<init>(r3)
            boolean r1 = r2.isSelected()
            if (r1 != 0) goto L1c
        Lb:
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r2.getPrevNode()
            boolean r1 = r1.addNext(r0, r2)
            if (r1 == 0) goto Lb
            boolean r2 = r2.isSelected()
            if (r2 != 0) goto L1c
            return
        L1c:
            r3.dispose()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectBuilderImpl.disposeOnSelect(kotlinx.coroutines.DisposableHandle):void");
    }

    public final void doAfterSelect() {
        DisposableHandle disposableHandle = (DisposableHandle) this._parentHandle.value;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) getNext(); !Intrinsics.areEqual(lockFreeLinkedListNode, this); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if (lockFreeLinkedListNode instanceof DisposeNode) {
                ((DisposeNode) lockFreeLinkedListNode).handle.dispose();
            }
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.uCont;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.uCont.getContext();
    }

    public final Object getResult() {
        Job job;
        if (!isSelected() && (job = (Job) getContext().get(Job.Key)) != null) {
            DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, new SelectOnCancelling(), 2);
            this._parentHandle.setValue(invokeOnCompletion$default);
            if (isSelected()) {
                invokeOnCompletion$default.dispose();
            }
        }
        Object obj = this._result.value;
        Symbol symbol = SelectKt.UNDECIDED;
        if (obj == symbol) {
            AtomicRef atomicRef = this._result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (atomicRef.compareAndSet(symbol, coroutineSingletons)) {
                return coroutineSingletons;
            }
            obj = this._result.value;
        }
        if (obj != SelectKt.RESUMED) {
            if (!(obj instanceof CompletedExceptionally)) {
                return obj;
            }
            throw ((CompletedExceptionally) obj).cause;
        }
        throw new IllegalStateException("Already resumed");
    }

    public final boolean isSelected() {
        AtomicRef atomicRef = this._state;
        while (true) {
            Object obj = atomicRef.value;
            if (obj == SelectKt.NOT_SELECTED) {
                return false;
            }
            if (obj instanceof OpDescriptor) {
                ((OpDescriptor) obj).perform(this);
            } else {
                return true;
            }
        }
    }

    public final void onTimeout(long j, final Function1 function1) {
        if (j <= 0) {
            if (trySelect()) {
                try {
                    TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
                    Object invoke = function1.invoke(this);
                    if (invoke != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        int i = Result.$r8$clinit;
                        resumeWith(invoke);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    int i2 = Result.$r8$clinit;
                    resumeWith(new Result.Failure(th));
                    return;
                }
            }
            return;
        }
        disposeOnSelect(DelayKt.getDelay(getContext()).invokeOnTimeout(j, new Runnable() { // from class: kotlinx.coroutines.selects.SelectBuilderImpl$onTimeout$$inlined$Runnable$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Continuation continuation;
                if (SelectBuilderImpl.this.trySelect()) {
                    final Function1 function12 = function1;
                    SelectBuilderImpl selectBuilderImpl = SelectBuilderImpl.this;
                    selectBuilderImpl.getClass();
                    try {
                        if (function12 instanceof BaseContinuationImpl) {
                            continuation = ((BaseContinuationImpl) function12).create(selectBuilderImpl);
                        } else {
                            CoroutineContext context = selectBuilderImpl.getContext();
                            if (context == EmptyCoroutineContext.INSTANCE) {
                                continuation = new RestrictedContinuationImpl(selectBuilderImpl) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1
                                    private int label;

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object obj) {
                                        int i3 = this.label;
                                        if (i3 != 0) {
                                            if (i3 == 1) {
                                                this.label = 2;
                                                ResultKt.throwOnFailure(obj);
                                                return obj;
                                            }
                                            throw new IllegalStateException("This coroutine had already completed".toString());
                                        }
                                        this.label = 1;
                                        ResultKt.throwOnFailure(obj);
                                        Function1 function13 = function12;
                                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function13);
                                        return function13.invoke(this);
                                    }
                                };
                            } else {
                                continuation = new ContinuationImpl(selectBuilderImpl, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2
                                    private int label;

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object obj) {
                                        int i3 = this.label;
                                        if (i3 != 0) {
                                            if (i3 == 1) {
                                                this.label = 2;
                                                ResultKt.throwOnFailure(obj);
                                                return obj;
                                            }
                                            throw new IllegalStateException("This coroutine had already completed".toString());
                                        }
                                        this.label = 1;
                                        ResultKt.throwOnFailure(obj);
                                        Function1 function13 = function12;
                                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function13);
                                        return function13.invoke(this);
                                    }
                                };
                            }
                        }
                        Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
                        int i3 = Result.$r8$clinit;
                        DispatchedContinuationKt.resumeCancellableWith(intercepted, Unit.INSTANCE, null);
                    } catch (Throwable th2) {
                        int i4 = Result.$r8$clinit;
                        selectBuilderImpl.resumeWith(new Result.Failure(th2));
                        throw th2;
                    }
                }
            }
        }, getContext()));
    }

    public final void resumeSelectWithException(Throwable th) {
        AtomicRef atomicRef = this._result;
        while (true) {
            Object obj = atomicRef.value;
            Symbol symbol = SelectKt.UNDECIDED;
            if (obj == symbol) {
                if (this._result.compareAndSet(symbol, new CompletedExceptionally(th, false, 2, null))) {
                    return;
                }
            } else {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (obj == coroutineSingletons) {
                    if (this._result.compareAndSet(coroutineSingletons, SelectKt.RESUMED)) {
                        Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.uCont);
                        int i = Result.$r8$clinit;
                        intercepted.resumeWith(new Result.Failure(th));
                        return;
                    }
                } else {
                    throw new IllegalStateException("Already resumed");
                }
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Object completedExceptionally;
        AtomicRef atomicRef = this._result;
        while (true) {
            Object obj2 = atomicRef.value;
            Symbol symbol = SelectKt.UNDECIDED;
            if (obj2 == symbol) {
                Throwable m2571exceptionOrNullimpl = Result.m2571exceptionOrNullimpl(obj);
                if (m2571exceptionOrNullimpl == null) {
                    completedExceptionally = obj;
                } else {
                    completedExceptionally = new CompletedExceptionally(m2571exceptionOrNullimpl, false, 2, null);
                }
                if (this._result.compareAndSet(symbol, completedExceptionally)) {
                    return;
                }
            } else {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (obj2 == coroutineSingletons) {
                    if (this._result.compareAndSet(coroutineSingletons, SelectKt.RESUMED)) {
                        int i = Result.$r8$clinit;
                        if (obj instanceof Result.Failure) {
                            Continuation continuation = this.uCont;
                            Throwable m2571exceptionOrNullimpl2 = Result.m2571exceptionOrNullimpl(obj);
                            Intrinsics.checkNotNull(m2571exceptionOrNullimpl2);
                            continuation.resumeWith(new Result.Failure(m2571exceptionOrNullimpl2));
                            return;
                        }
                        this.uCont.resumeWith(obj);
                        return;
                    }
                } else {
                    throw new IllegalStateException("Already resumed");
                }
            }
        }
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final String toString() {
        return "SelectInstance(state=" + this._state.value + ", result=" + this._result.value + ")";
    }

    public final boolean trySelect() {
        Object trySelectOther = trySelectOther();
        if (trySelectOther == CancellableContinuationImplKt.RESUME_TOKEN) {
            return true;
        }
        if (trySelectOther == null) {
            return false;
        }
        throw new IllegalStateException(("Unexpected trySelectIdempotent result " + trySelectOther).toString());
    }

    public final Object trySelectOther() {
        AtomicRef atomicRef = this._state;
        while (true) {
            Object obj = atomicRef.value;
            Symbol symbol = SelectKt.NOT_SELECTED;
            if (obj == symbol) {
                if (this._state.compareAndSet(symbol, null)) {
                    doAfterSelect();
                    return CancellableContinuationImplKt.RESUME_TOKEN;
                }
            } else {
                if (!(obj instanceof OpDescriptor)) {
                    return null;
                }
                ((OpDescriptor) obj).perform(this);
            }
        }
    }
}
