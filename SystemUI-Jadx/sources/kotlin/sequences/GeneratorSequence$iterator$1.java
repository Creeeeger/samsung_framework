package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class GeneratorSequence$iterator$1 implements Iterator, KMappedMarker {
    public Object nextItem;
    public int nextState = -2;
    public final /* synthetic */ GeneratorSequence this$0;

    public GeneratorSequence$iterator$1(GeneratorSequence generatorSequence) {
        this.this$0 = generatorSequence;
    }

    public final void calcNext() {
        Object invoke;
        int i;
        if (this.nextState == -2) {
            invoke = this.this$0.getInitialValue.invoke();
        } else {
            Function1 function1 = this.this$0.getNextValue;
            Object obj = this.nextItem;
            Intrinsics.checkNotNull(obj);
            invoke = function1.invoke(obj);
        }
        this.nextItem = invoke;
        if (invoke == null) {
            i = 0;
        } else {
            i = 1;
        }
        this.nextState = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.nextState < 0) {
            calcNext();
        }
        if (this.nextState == 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.nextState < 0) {
            calcNext();
        }
        if (this.nextState != 0) {
            Object obj = this.nextItem;
            this.nextState = -1;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
