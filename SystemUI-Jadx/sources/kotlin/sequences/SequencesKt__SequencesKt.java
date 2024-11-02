package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SequencesKt__SequencesKt extends SequencesKt__SequencesJVMKt {
    public static final Sequence asSequence(final Iterator it) {
        Sequence sequence = new Sequence() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public final Iterator iterator() {
                return it;
            }
        };
        if (!(sequence instanceof ConstrainedOnceSequence)) {
            return new ConstrainedOnceSequence(sequence);
        }
        return sequence;
    }

    public static final Sequence generateSequence(final Object obj, Function1 function1) {
        if (obj == null) {
            return EmptySequence.INSTANCE;
        }
        return new GeneratorSequence(new Function0() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return obj;
            }
        }, function1);
    }

    public static final Sequence sequenceOf(Object... objArr) {
        boolean z;
        if (objArr.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return EmptySequence.INSTANCE;
        }
        return ArraysKt___ArraysKt.asSequence(objArr);
    }
}
