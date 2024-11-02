package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ChannelsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void trySendBlocking(ProducerScope producerScope, Object obj) {
        Object mo2584trySendJP2dKIU = ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(obj);
        if (!(mo2584trySendJP2dKIU instanceof ChannelResult.Failed)) {
            ChannelResult.Companion companion = ChannelResult.Companion;
            Unit unit = Unit.INSTANCE;
            companion.getClass();
            return;
        }
        Object obj2 = ((ChannelResult) BuildersKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ChannelsKt__ChannelsKt$trySendBlocking$2(producerScope, obj, null))).holder;
    }
}
