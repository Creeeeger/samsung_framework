package kotlinx.coroutines.channels;

import kotlinx.coroutines.channels.Channel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ChannelKt {
    public static AbstractChannel Channel$default(int i, BufferOverflow bufferOverflow, int i2) {
        boolean z = false;
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        int i3 = 1;
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i != Integer.MAX_VALUE) {
                        if (i == 1 && bufferOverflow == BufferOverflow.DROP_OLDEST) {
                            return new ConflatedChannel(null);
                        }
                        return new ArrayChannel(i, bufferOverflow, null);
                    }
                    return new LinkedListChannel(null);
                }
                if (bufferOverflow == BufferOverflow.SUSPEND) {
                    return new RendezvousChannel(null);
                }
                return new ArrayChannel(1, bufferOverflow, null);
            }
            if (bufferOverflow == BufferOverflow.SUSPEND) {
                z = true;
            }
            if (z) {
                return new ConflatedChannel(null);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            Channel.Factory.getClass();
            i3 = Channel.Factory.CHANNEL_DEFAULT_CAPACITY;
        }
        return new ArrayChannel(i3, bufferOverflow, null);
    }
}
