package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Sequences.kt */
/* loaded from: classes.dex */
public final class TransformingSequence$iterator$1<R> implements Iterator<R>, KMappedMarker {

    @NotNull
    private final Iterator<T> iterator;
    final /* synthetic */ TransformingSequence<T, R> this$0;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    TransformingSequence$iterator$1(TransformingSequence<T, R> transformingSequence) {
        Sequence sequence;
        this.this$0 = transformingSequence;
        sequence = ((TransformingSequence) transformingSequence).sequence;
        this.iterator = sequence.iterator();
    }

    @Override // java.util.Iterator
    public R next() {
        Function1 function1;
        function1 = ((TransformingSequence) this.this$0).transformer;
        return (R) function1.invoke(this.iterator.next());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }
}
