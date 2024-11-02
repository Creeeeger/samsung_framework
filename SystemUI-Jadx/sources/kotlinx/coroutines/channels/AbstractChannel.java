package kotlinx.coroutines.channels;

import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BeforeResumeCancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.AbstractChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.LockFreeLinkedList_commonKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Removed;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class AbstractChannel extends AbstractSendChannel implements Channel {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class ReceiveElement extends Receive {
        public final CancellableContinuation cont;
        public final int receiveMode;

        public ReceiveElement(CancellableContinuation cancellableContinuation, int i) {
            this.cont = cancellableContinuation;
            this.receiveMode = i;
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public final void completeResumeReceive(Object obj) {
            Symbol symbol = CancellableContinuationImplKt.RESUME_TOKEN;
            CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.cont;
            cancellableContinuationImpl.dispatchResume(cancellableContinuationImpl.resumeMode);
        }

        @Override // kotlinx.coroutines.channels.Receive
        public final void resumeReceiveClosed(Closed closed) {
            int i = this.receiveMode;
            CancellableContinuation cancellableContinuation = this.cont;
            if (i == 1) {
                ChannelResult.Companion companion = ChannelResult.Companion;
                Throwable th = closed.closeCause;
                companion.getClass();
                ChannelResult m2585boximpl = ChannelResult.m2585boximpl(ChannelResult.Companion.m2587closedJP2dKIU(th));
                int i2 = Result.$r8$clinit;
                ((CancellableContinuationImpl) cancellableContinuation).resumeWith(m2585boximpl);
                return;
            }
            int i3 = Result.$r8$clinit;
            Throwable th2 = closed.closeCause;
            if (th2 == null) {
                th2 = new ClosedReceiveChannelException("Channel was closed");
            }
            ((CancellableContinuationImpl) cancellableContinuation).resumeWith(new Result.Failure(th2));
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public final String toString() {
            return "ReceiveElement@" + DebugStringsKt.getHexAddress(this) + "[receiveMode=" + this.receiveMode + "]";
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public final Symbol tryResumeReceive(Object obj) {
            Object obj2;
            if (this.receiveMode == 1) {
                ChannelResult.Companion.getClass();
                obj2 = ChannelResult.m2585boximpl(obj);
            } else {
                obj2 = obj;
            }
            if (((CancellableContinuationImpl) this.cont).tryResumeImpl(obj2, null, resumeOnCancellationFun(obj)) == null) {
                return null;
            }
            return CancellableContinuationImplKt.RESUME_TOKEN;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ReceiveElementWithUndeliveredHandler extends ReceiveElement {
        public final Function1 onUndeliveredElement;

        public ReceiveElementWithUndeliveredHandler(CancellableContinuation cancellableContinuation, int i, Function1 function1) {
            super(cancellableContinuation, i);
            this.onUndeliveredElement = function1;
        }

        @Override // kotlinx.coroutines.channels.Receive
        public final Function1 resumeOnCancellationFun(Object obj) {
            return OnUndeliveredElementKt.bindCancellationFun(this.onUndeliveredElement, obj, ((CancellableContinuationImpl) this.cont).context);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ReceiveSelect extends Receive implements DisposableHandle {
        public final Function2 block;
        public final AbstractChannel channel;
        public final int receiveMode;
        public final SelectInstance select;

        public ReceiveSelect(AbstractChannel abstractChannel, SelectInstance selectInstance, Function2 function2, int i) {
            this.channel = abstractChannel;
            this.select = selectInstance;
            this.block = function2;
            this.receiveMode = i;
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public final void completeResumeReceive(Object obj) {
            Object obj2;
            if (this.receiveMode == 1) {
                ChannelResult.Companion.getClass();
                obj2 = ChannelResult.m2585boximpl(obj);
            } else {
                obj2 = obj;
            }
            SelectBuilderImpl selectBuilderImpl = (SelectBuilderImpl) this.select;
            selectBuilderImpl.getClass();
            Function1 resumeOnCancellationFun = resumeOnCancellationFun(obj);
            try {
                Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(selectBuilderImpl, this.block, obj2));
                int i = Result.$r8$clinit;
                DispatchedContinuationKt.resumeCancellableWith(intercepted, Unit.INSTANCE, resumeOnCancellationFun);
            } catch (Throwable th) {
                int i2 = Result.$r8$clinit;
                selectBuilderImpl.resumeWith(new Result.Failure(th));
                throw th;
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode, kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            if (remove()) {
                this.channel.getClass();
            }
        }

        @Override // kotlinx.coroutines.channels.Receive
        public final Function1 resumeOnCancellationFun(Object obj) {
            Function1 function1 = this.channel.onUndeliveredElement;
            if (function1 != null) {
                SelectBuilderImpl selectBuilderImpl = (SelectBuilderImpl) this.select;
                selectBuilderImpl.getClass();
                return OnUndeliveredElementKt.bindCancellationFun(function1, obj, selectBuilderImpl.getContext());
            }
            return null;
        }

        @Override // kotlinx.coroutines.channels.Receive
        public final void resumeReceiveClosed(Closed closed) {
            SelectBuilderImpl selectBuilderImpl = (SelectBuilderImpl) this.select;
            if (!selectBuilderImpl.trySelect()) {
                return;
            }
            int i = this.receiveMode;
            if (i != 0) {
                if (i == 1) {
                    Function2 function2 = this.block;
                    ChannelResult.Companion companion = ChannelResult.Companion;
                    Throwable th = closed.closeCause;
                    companion.getClass();
                    ChannelResult m2585boximpl = ChannelResult.m2585boximpl(ChannelResult.Companion.m2587closedJP2dKIU(th));
                    selectBuilderImpl.getClass();
                    try {
                        Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(selectBuilderImpl, function2, m2585boximpl));
                        int i2 = Result.$r8$clinit;
                        DispatchedContinuationKt.resumeCancellableWith(intercepted, Unit.INSTANCE, null);
                        return;
                    } catch (Throwable th2) {
                        int i3 = Result.$r8$clinit;
                        selectBuilderImpl.resumeWith(new Result.Failure(th2));
                        throw th2;
                    }
                }
                return;
            }
            Throwable th3 = closed.closeCause;
            if (th3 == null) {
                th3 = new ClosedReceiveChannelException("Channel was closed");
            }
            selectBuilderImpl.resumeSelectWithException(th3);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public final String toString() {
            StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("ReceiveSelect@", DebugStringsKt.getHexAddress(this), "[");
            m.append(this.select);
            m.append(",receiveMode=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(m, this.receiveMode, "]");
        }

        @Override // kotlinx.coroutines.channels.ReceiveOrClosed
        public final Symbol tryResumeReceive(Object obj) {
            return (Symbol) ((SelectBuilderImpl) this.select).trySelectOther();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class RemoveReceiveOnCancel extends BeforeResumeCancelHandler {
        public final Receive receive;

        public RemoveReceiveOnCancel(Receive receive) {
            this.receive = receive;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return Unit.INSTANCE;
        }

        public final String toString() {
            return "RemoveReceiveOnCancel[" + this.receive + "]";
        }

        @Override // kotlinx.coroutines.CancelHandlerBase
        public final void invoke(Throwable th) {
            if (this.receive.remove()) {
                AbstractChannel.this.getClass();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class TryPollDesc extends LockFreeLinkedListNode.RemoveFirstDesc {
        public TryPollDesc(LockFreeLinkedListHead lockFreeLinkedListHead) {
            super(lockFreeLinkedListHead);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.RemoveFirstDesc, kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final Object failure(LockFreeLinkedListNode lockFreeLinkedListNode) {
            if (!(lockFreeLinkedListNode instanceof Closed)) {
                if (!(lockFreeLinkedListNode instanceof Send)) {
                    return AbstractChannelKt.POLL_FAILED;
                }
                return null;
            }
            return lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final Object onPrepare(LockFreeLinkedListNode.PrepareOp prepareOp) {
            Symbol tryResumeSend = ((Send) prepareOp.affected).tryResumeSend(prepareOp);
            if (tryResumeSend == null) {
                return LockFreeLinkedList_commonKt.REMOVE_PREPARED;
            }
            Symbol symbol = AtomicKt.RETRY_ATOMIC;
            if (tryResumeSend == symbol) {
                return symbol;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public final void onRemoved(LockFreeLinkedListNode lockFreeLinkedListNode) {
            ((Send) lockFreeLinkedListNode).undeliveredElement();
        }
    }

    public AbstractChannel(Function1 function1) {
        super(function1);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(CancellationException cancellationException) {
        if (isClosedForReceive()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new CancellationException(DebugStringsKt.getClassSimpleName(this).concat(" was cancelled"));
        }
        onCancelIdempotent(close(cancellationException));
    }

    public boolean enqueueReceiveInternal(final Receive receive) {
        int tryCondAddNext;
        LockFreeLinkedListNode prevNode;
        boolean isBufferAlwaysEmpty = isBufferAlwaysEmpty();
        LockFreeLinkedListHead lockFreeLinkedListHead = this.queue;
        if (!isBufferAlwaysEmpty) {
            LockFreeLinkedListNode.CondAddOp condAddOp = new LockFreeLinkedListNode.CondAddOp(receive) { // from class: kotlinx.coroutines.channels.AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1
                @Override // kotlinx.coroutines.internal.AtomicOp
                public final Object prepare(Object obj) {
                    if (this.isBufferEmpty()) {
                        return null;
                    }
                    return LockFreeLinkedListKt.CONDITION_FALSE;
                }
            };
            do {
                LockFreeLinkedListNode prevNode2 = lockFreeLinkedListHead.getPrevNode();
                if (!(!(prevNode2 instanceof Send))) {
                    break;
                }
                tryCondAddNext = prevNode2.tryCondAddNext(receive, lockFreeLinkedListHead, condAddOp);
                if (tryCondAddNext == 1) {
                    return true;
                }
            } while (tryCondAddNext != 2);
            return false;
        }
        do {
            prevNode = lockFreeLinkedListHead.getPrevNode();
            if (!(!(prevNode instanceof Send))) {
                return false;
            }
        } while (!prevNode.addNext(receive, lockFreeLinkedListHead));
        return true;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 getOnReceiveCatching() {
        return new SelectClause1() { // from class: kotlinx.coroutines.channels.AbstractChannel$onReceiveCatching$1
            @Override // kotlinx.coroutines.selects.SelectClause1
            public final void registerSelectClause1(SelectBuilderImpl selectBuilderImpl, Function2 function2) {
                boolean z;
                AbstractChannel abstractChannel = AbstractChannel.this;
                abstractChannel.getClass();
                while (!selectBuilderImpl.isSelected()) {
                    if (!(abstractChannel.queue.getNextNode() instanceof Send) && abstractChannel.isBufferEmpty()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        AbstractChannel.ReceiveSelect receiveSelect = new AbstractChannel.ReceiveSelect(abstractChannel, selectBuilderImpl, function2, 1);
                        boolean enqueueReceiveInternal = abstractChannel.enqueueReceiveInternal(receiveSelect);
                        if (enqueueReceiveInternal) {
                            selectBuilderImpl.disposeOnSelect(receiveSelect);
                        }
                        if (enqueueReceiveInternal) {
                            return;
                        }
                    } else {
                        Object pollSelectInternal = abstractChannel.pollSelectInternal(selectBuilderImpl);
                        if (pollSelectInternal == SelectKt.ALREADY_SELECTED) {
                            return;
                        }
                        if (pollSelectInternal != AbstractChannelKt.POLL_FAILED && pollSelectInternal != AtomicKt.RETRY_ATOMIC) {
                            boolean z2 = pollSelectInternal instanceof Closed;
                            if (z2) {
                                if (selectBuilderImpl.trySelect()) {
                                    ChannelResult.Companion companion = ChannelResult.Companion;
                                    Throwable th = ((Closed) pollSelectInternal).closeCause;
                                    companion.getClass();
                                    UndispatchedKt.startCoroutineUnintercepted(selectBuilderImpl, function2, ChannelResult.m2585boximpl(ChannelResult.Companion.m2587closedJP2dKIU(th)));
                                }
                            } else {
                                if (z2) {
                                    ChannelResult.Companion companion2 = ChannelResult.Companion;
                                    Throwable th2 = ((Closed) pollSelectInternal).closeCause;
                                    companion2.getClass();
                                    pollSelectInternal = ChannelResult.Companion.m2587closedJP2dKIU(th2);
                                } else {
                                    ChannelResult.Companion.getClass();
                                }
                                UndispatchedKt.startCoroutineUnintercepted(selectBuilderImpl, function2, ChannelResult.m2585boximpl(pollSelectInternal));
                            }
                        }
                    }
                }
            }
        };
    }

    public abstract boolean isBufferAlwaysEmpty();

    public abstract boolean isBufferEmpty();

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        Closed closed;
        LockFreeLinkedListNode nextNode = this.queue.getNextNode();
        Closed closed2 = null;
        if (nextNode instanceof Closed) {
            closed = (Closed) nextNode;
        } else {
            closed = null;
        }
        if (closed != null) {
            AbstractSendChannel.helpClose(closed);
            closed2 = closed;
        }
        if (closed2 != null && isBufferEmpty()) {
            return true;
        }
        return false;
    }

    public void onCancelIdempotent(boolean z) {
        Closed closedForSend = getClosedForSend();
        if (closedForSend != null) {
            Object obj = null;
            while (true) {
                LockFreeLinkedListNode prevNode = closedForSend.getPrevNode();
                if (prevNode instanceof LockFreeLinkedListHead) {
                    mo2581onCancelIdempotentListww6eGU(obj, closedForSend);
                    return;
                } else if (!prevNode.remove()) {
                    ((Removed) prevNode.getNext()).ref.helpRemovePrev();
                } else {
                    obj = InlineList.m2588plusFjFbRPM(obj, (Send) prevNode);
                }
            }
        } else {
            throw new IllegalStateException("Cannot happen".toString());
        }
    }

    /* renamed from: onCancelIdempotentList-w-w6eGU, reason: not valid java name */
    public void mo2581onCancelIdempotentListww6eGU(Object obj, Closed closed) {
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                ((Send) obj).resumeSendClosed(closed);
                return;
            }
            ArrayList arrayList = (ArrayList) obj;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                ((Send) arrayList.get(size)).resumeSendClosed(closed);
            }
        }
    }

    public Object pollInternal() {
        while (true) {
            Send takeFirstSendOrPeekClosed = takeFirstSendOrPeekClosed();
            if (takeFirstSendOrPeekClosed == null) {
                return AbstractChannelKt.POLL_FAILED;
            }
            if (takeFirstSendOrPeekClosed.tryResumeSend(null) != null) {
                takeFirstSendOrPeekClosed.completeResumeSend();
                return takeFirstSendOrPeekClosed.getPollResult();
            }
            takeFirstSendOrPeekClosed.undeliveredElement();
        }
    }

    public Object pollSelectInternal(SelectBuilderImpl selectBuilderImpl) {
        TryPollDesc tryPollDesc = new TryPollDesc(this.queue);
        Object perform = new SelectBuilderImpl.AtomicSelectOp(selectBuilderImpl, tryPollDesc).perform(null);
        if (perform != null) {
            return perform;
        }
        LockFreeLinkedListNode affectedNode = tryPollDesc.getAffectedNode();
        Intrinsics.checkNotNull(affectedNode);
        ((Send) affectedNode).completeResumeSend();
        LockFreeLinkedListNode affectedNode2 = tryPollDesc.getAffectedNode();
        Intrinsics.checkNotNull(affectedNode2);
        return ((Send) affectedNode2).getPollResult();
    }

    public final Object receive(Continuation continuation) {
        Object pollInternal = pollInternal();
        if (pollInternal != AbstractChannelKt.POLL_FAILED && !(pollInternal instanceof Closed)) {
            return pollInternal;
        }
        return receiveSuspend(0, (ContinuationImpl) continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo2582receiveCatchingJP2dKIU(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.AbstractChannel$receiveCatching$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5b
        L27:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2f:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.Object r5 = r4.pollInternal()
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED
            if (r5 == r2) goto L52
            boolean r4 = r5 instanceof kotlinx.coroutines.channels.Closed
            if (r4 == 0) goto L4c
            kotlinx.coroutines.channels.ChannelResult$Companion r4 = kotlinx.coroutines.channels.ChannelResult.Companion
            kotlinx.coroutines.channels.Closed r5 = (kotlinx.coroutines.channels.Closed) r5
            java.lang.Throwable r5 = r5.closeCause
            r4.getClass()
            kotlinx.coroutines.channels.ChannelResult$Closed r5 = kotlinx.coroutines.channels.ChannelResult.Companion.m2587closedJP2dKIU(r5)
            goto L51
        L4c:
            kotlinx.coroutines.channels.ChannelResult$Companion r4 = kotlinx.coroutines.channels.ChannelResult.Companion
            r4.getClass()
        L51:
            return r5
        L52:
            r0.label = r3
            java.lang.Object r5 = r4.receiveSuspend(r3, r0)
            if (r5 != r1) goto L5b
            return r1
        L5b:
            kotlinx.coroutines.channels.ChannelResult r5 = (kotlinx.coroutines.channels.ChannelResult) r5
            java.lang.Object r4 = r5.holder
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractChannel.mo2582receiveCatchingJP2dKIU(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object receiveSuspend(int i, ContinuationImpl continuationImpl) {
        ReceiveElement receiveElementWithUndeliveredHandler;
        Object obj;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuationImpl));
        Function1 function1 = this.onUndeliveredElement;
        if (function1 == null) {
            receiveElementWithUndeliveredHandler = new ReceiveElement(orCreateCancellableContinuation, i);
        } else {
            receiveElementWithUndeliveredHandler = new ReceiveElementWithUndeliveredHandler(orCreateCancellableContinuation, i, function1);
        }
        while (true) {
            if (enqueueReceiveInternal(receiveElementWithUndeliveredHandler)) {
                orCreateCancellableContinuation.invokeOnCancellation(new RemoveReceiveOnCancel(receiveElementWithUndeliveredHandler));
                break;
            }
            Object pollInternal = pollInternal();
            if (pollInternal instanceof Closed) {
                receiveElementWithUndeliveredHandler.resumeReceiveClosed((Closed) pollInternal);
                break;
            }
            if (pollInternal != AbstractChannelKt.POLL_FAILED) {
                if (receiveElementWithUndeliveredHandler.receiveMode == 1) {
                    ChannelResult.Companion.getClass();
                    obj = ChannelResult.m2585boximpl(pollInternal);
                } else {
                    obj = pollInternal;
                }
                orCreateCancellableContinuation.resumeImpl(obj, orCreateCancellableContinuation.resumeMode, receiveElementWithUndeliveredHandler.resumeOnCancellationFun(pollInternal));
            }
        }
        Object result = orCreateCancellableContinuation.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final ReceiveOrClosed takeFirstReceiveOrPeekClosed() {
        ReceiveOrClosed takeFirstReceiveOrPeekClosed = super.takeFirstReceiveOrPeekClosed();
        if (takeFirstReceiveOrPeekClosed != null) {
            boolean z = takeFirstReceiveOrPeekClosed instanceof Closed;
        }
        return takeFirstReceiveOrPeekClosed;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public final Object mo2583tryReceivePtdJZtk() {
        Object pollInternal = pollInternal();
        if (pollInternal == AbstractChannelKt.POLL_FAILED) {
            ChannelResult.Companion.getClass();
            return ChannelResult.failed;
        }
        if (pollInternal instanceof Closed) {
            ChannelResult.Companion companion = ChannelResult.Companion;
            Throwable th = ((Closed) pollInternal).closeCause;
            companion.getClass();
            return ChannelResult.Companion.m2587closedJP2dKIU(th);
        }
        ChannelResult.Companion.getClass();
        return pollInternal;
    }
}
