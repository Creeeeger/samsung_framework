package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DistinctSequence implements Sequence {
    public final Function1 keySelector;
    public final Sequence source;

    public DistinctSequence(Sequence sequence, Function1 function1) {
        this.source = sequence;
        this.keySelector = function1;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new DistinctIterator(this.source.iterator(), this.keySelector);
    }
}
