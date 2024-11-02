package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.ArrayIntIterator;
import kotlin.sequences.Sequence;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4 implements Sequence {
    public final /* synthetic */ int[] $this_asSequence$inlined;

    public ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4(int[] iArr) {
        this.$this_asSequence$inlined = iArr;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new ArrayIntIterator(this.$this_asSequence$inlined);
    }
}
