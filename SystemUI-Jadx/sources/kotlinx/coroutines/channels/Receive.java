package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class Receive extends LockFreeLinkedListNode implements ReceiveOrClosed {
    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    public final Object getOfferResult() {
        return AbstractChannelKt.OFFER_SUCCESS;
    }

    public Function1 resumeOnCancellationFun(Object obj) {
        return null;
    }

    public abstract void resumeReceiveClosed(Closed closed);
}
