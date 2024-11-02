package kotlinx.coroutines.selects;

import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.TraceBase;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SeqNumber {
    public final AtomicLong number = new AtomicLong(1, TraceBase.None.INSTANCE);
}
