package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class MergingSequence implements Sequence {
    public final Sequence sequence1;
    public final Sequence sequence2;
    public final Function2 transform;

    public MergingSequence(Sequence sequence, Sequence sequence2, Function2 function2) {
        this.sequence1 = sequence;
        this.sequence2 = sequence2;
        this.transform = function2;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new MergingSequence$iterator$1(this);
    }
}
