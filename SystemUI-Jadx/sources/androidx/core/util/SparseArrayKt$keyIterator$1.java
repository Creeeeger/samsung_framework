package androidx.core.util;

import android.util.SparseArray;
import kotlin.collections.IntIterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SparseArrayKt$keyIterator$1 extends IntIterator {
    public final /* synthetic */ SparseArray $this_keyIterator;
    public int index;

    public SparseArrayKt$keyIterator$1(SparseArray<Object> sparseArray) {
        this.$this_keyIterator = sparseArray;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.index < this.$this_keyIterator.size()) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.IntIterator
    public final int nextInt() {
        SparseArray sparseArray = this.$this_keyIterator;
        int i = this.index;
        this.index = i + 1;
        return sparseArray.keyAt(i);
    }
}
