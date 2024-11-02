package kotlin.sequences;

import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TakeSequence implements Sequence, DropTakeSequence {
    public final int count;
    public final Sequence sequence;

    public TakeSequence(Sequence sequence, int i) {
        boolean z;
        this.sequence = sequence;
        this.count = i;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new TakeSequence$iterator$1(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take(int i) {
        if (i < this.count) {
            return new TakeSequence(this.sequence, i);
        }
        return this;
    }
}
