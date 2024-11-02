package kotlinx.coroutines.channels;

import kotlin.Result;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SendElement extends Send {
    public final CancellableContinuation cont;
    public final Object pollResult;

    public SendElement(Object obj, CancellableContinuation cancellableContinuation) {
        this.pollResult = obj;
        this.cont = cancellableContinuation;
    }

    @Override // kotlinx.coroutines.channels.Send
    public final void completeResumeSend() {
        Symbol symbol = CancellableContinuationImplKt.RESUME_TOKEN;
        CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.cont;
        cancellableContinuationImpl.dispatchResume(cancellableContinuationImpl.resumeMode);
    }

    @Override // kotlinx.coroutines.channels.Send
    public final Object getPollResult() {
        return this.pollResult;
    }

    @Override // kotlinx.coroutines.channels.Send
    public final void resumeSendClosed(Closed closed) {
        int i = Result.$r8$clinit;
        Throwable th = closed.closeCause;
        if (th == null) {
            th = new ClosedSendChannelException("Channel was closed");
        }
        ((CancellableContinuationImpl) this.cont).resumeWith(new Result.Failure(th));
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final String toString() {
        return DebugStringsKt.getClassSimpleName(this) + "@" + DebugStringsKt.getHexAddress(this) + "(" + this.pollResult + ")";
    }

    @Override // kotlinx.coroutines.channels.Send
    public final Symbol tryResumeSend(LockFreeLinkedListNode.PrepareOp prepareOp) {
        LockFreeLinkedListNode.AbstractAtomicDesc abstractAtomicDesc;
        Unit unit = Unit.INSTANCE;
        if (prepareOp != null) {
            abstractAtomicDesc = prepareOp.desc;
        } else {
            abstractAtomicDesc = null;
        }
        if (((CancellableContinuationImpl) this.cont).tryResumeImpl(unit, abstractAtomicDesc, null) == null) {
            return null;
        }
        if (prepareOp != null) {
            prepareOp.finishPrepare();
        }
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }
}
