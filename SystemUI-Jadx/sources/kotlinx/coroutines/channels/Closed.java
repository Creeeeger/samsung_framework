package kotlinx.coroutines.channels;

import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Closed extends Send implements ReceiveOrClosed {
    public final Throwable closeCause;

    public Closed(Throwable th) {
        this.closeCause = th;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final String toString() {
        return "Closed@" + DebugStringsKt.getHexAddress(this) + "[" + this.closeCause + "]";
    }

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    public final Symbol tryResumeReceive(Object obj) {
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }

    @Override // kotlinx.coroutines.channels.Send
    public final Symbol tryResumeSend(LockFreeLinkedListNode.PrepareOp prepareOp) {
        Symbol symbol = CancellableContinuationImplKt.RESUME_TOKEN;
        if (prepareOp != null) {
            prepareOp.finishPrepare();
        }
        return symbol;
    }

    @Override // kotlinx.coroutines.channels.Send
    public final void completeResumeSend() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    public final Object getOfferResult() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.Send
    public final Object getPollResult() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    public final void completeResumeReceive(Object obj) {
    }

    @Override // kotlinx.coroutines.channels.Send
    public final void resumeSendClosed(Closed closed) {
    }
}
