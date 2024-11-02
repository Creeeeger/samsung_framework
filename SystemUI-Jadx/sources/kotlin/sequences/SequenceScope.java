package kotlin.sequences;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class SequenceScope {
    public abstract CoroutineSingletons yield(Object obj, Continuation continuation);

    public abstract Object yieldAll(Iterator it, Continuation continuation);

    public final Object yieldAll(Sequence sequence, Continuation continuation) {
        Object yieldAll = yieldAll(sequence.iterator(), continuation);
        return yieldAll == CoroutineSingletons.COROUTINE_SUSPENDED ? yieldAll : Unit.INSTANCE;
    }
}
