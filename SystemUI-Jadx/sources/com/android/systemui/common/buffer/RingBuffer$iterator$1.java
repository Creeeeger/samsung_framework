package com.android.systemui.common.buffer;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RingBuffer$iterator$1 implements Iterator, KMappedMarker {
    public int position;
    public final /* synthetic */ RingBuffer this$0;

    public RingBuffer$iterator$1(RingBuffer ringBuffer) {
        this.this$0 = ringBuffer;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.position < this.this$0.getSize()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.position < this.this$0.getSize()) {
            Object obj = this.this$0.get(this.position);
            this.position++;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
