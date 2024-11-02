package com.android.systemui.common.buffer;

import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RingBuffer implements Iterable, KMappedMarker {
    public final List buffer;
    public final Function0 factory;
    public final int maxSize;
    public long omega;

    public RingBuffer(int i, Function0 function0) {
        this.maxSize = i;
        this.factory = function0;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(null);
        }
        this.buffer = arrayList;
    }

    public final Object advance() {
        long j = this.omega;
        int i = (int) (j % this.maxSize);
        this.omega = j + 1;
        Object obj = ((ArrayList) this.buffer).get(i);
        if (obj == null) {
            Object invoke = this.factory.invoke();
            ((ArrayList) this.buffer).set(i, invoke);
            return invoke;
        }
        return obj;
    }

    public final Object get(int i) {
        if (i >= 0 && i < getSize()) {
            Object obj = ((ArrayList) this.buffer).get((int) ((Math.max(this.omega, this.maxSize) + i) % this.maxSize));
            Intrinsics.checkNotNull(obj);
            return obj;
        }
        throw new IndexOutOfBoundsException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Index ", i, " is out of bounds"));
    }

    public final int getSize() {
        long j = this.omega;
        int i = this.maxSize;
        if (j < i) {
            return (int) j;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new RingBuffer$iterator$1(this);
    }
}
