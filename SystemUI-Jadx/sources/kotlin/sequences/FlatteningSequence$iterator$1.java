package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class FlatteningSequence$iterator$1 implements Iterator, KMappedMarker {
    public Iterator itemIterator;
    public final Iterator iterator;
    public final /* synthetic */ FlatteningSequence this$0;

    public FlatteningSequence$iterator$1(FlatteningSequence flatteningSequence) {
        this.this$0 = flatteningSequence;
        this.iterator = flatteningSequence.sequence.iterator();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean ensureItemIterator() {
        /*
            r5 = this;
            java.util.Iterator r0 = r5.itemIterator
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Le
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto Le
            r0 = r1
            goto Lf
        Le:
            r0 = r2
        Lf:
            if (r0 == 0) goto L14
            r0 = 0
            r5.itemIterator = r0
        L14:
            java.util.Iterator r0 = r5.itemIterator
            if (r0 != 0) goto L3f
            java.util.Iterator r0 = r5.iterator
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L21
            return r2
        L21:
            java.util.Iterator r0 = r5.iterator
            java.lang.Object r0 = r0.next()
            kotlin.sequences.FlatteningSequence r3 = r5.this$0
            kotlin.jvm.functions.Function1 r4 = r3.iterator
            kotlin.jvm.functions.Function1 r3 = r3.transformer
            java.lang.Object r0 = r3.invoke(r0)
            java.lang.Object r0 = r4.invoke(r0)
            java.util.Iterator r0 = (java.util.Iterator) r0
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L14
            r5.itemIterator = r0
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.FlatteningSequence$iterator$1.ensureItemIterator():boolean");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return ensureItemIterator();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (ensureItemIterator()) {
            Iterator it = this.itemIterator;
            Intrinsics.checkNotNull(it);
            return it.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
