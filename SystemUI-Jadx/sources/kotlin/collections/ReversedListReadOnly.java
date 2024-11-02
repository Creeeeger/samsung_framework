package kotlin.collections;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import java.util.List;
import kotlin.ranges.IntRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ReversedListReadOnly extends AbstractList {
    public final List delegate;

    public ReversedListReadOnly(List<Object> list) {
        this.delegate = list;
    }

    @Override // java.util.List
    public final Object get(int i) {
        boolean z;
        List list = this.delegate;
        IntRange intRange = new IntRange(0, CollectionsKt__CollectionsKt.getLastIndex(this));
        if (intRange.first <= i && i <= intRange.last) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return list.get(CollectionsKt__CollectionsKt.getLastIndex(this) - i);
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Element index ", i, " must be in range [");
        m.append(new IntRange(0, CollectionsKt__CollectionsKt.getLastIndex(this)));
        m.append("].");
        throw new IndexOutOfBoundsException(m.toString());
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.delegate.size();
    }
}
