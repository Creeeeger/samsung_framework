package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TransformingIndexedSequence implements Sequence {
    public final Sequence sequence;
    public final Function2 transformer;

    public TransformingIndexedSequence(Sequence sequence, Function2 function2) {
        this.sequence = sequence;
        this.transformer = function2;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new TransformingIndexedSequence$iterator$1(this);
    }
}
