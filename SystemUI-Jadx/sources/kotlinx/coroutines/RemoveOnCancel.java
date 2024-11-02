package kotlinx.coroutines;

import kotlin.Unit;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RemoveOnCancel extends BeforeResumeCancelHandler {
    public final LockFreeLinkedListNode node;

    public RemoveOnCancel(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.node = lockFreeLinkedListNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return Unit.INSTANCE;
    }

    public final String toString() {
        return "RemoveOnCancel[" + this.node + "]";
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    public final void invoke(Throwable th) {
        this.node.remove();
    }
}
