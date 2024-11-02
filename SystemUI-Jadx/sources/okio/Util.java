package okio;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* renamed from: okio.-Util, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Util {
    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j && j - j2 >= j3) {
            return;
        }
        StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("size=", j, " offset=");
        m.append(j2);
        m.append(" byteCount=");
        m.append(j3);
        throw new ArrayIndexOutOfBoundsException(m.toString());
    }
}
