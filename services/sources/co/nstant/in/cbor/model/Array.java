package co.nstant.in.cbor.model;

import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public class Array extends ChunkableDataItem {
    public final ArrayList objects;

    public Array() {
        super(MajorType.ARRAY);
        this.objects = new ArrayList();
    }

    public final void add(DataItem dataItem) {
        this.objects.add(dataItem);
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof Array) {
            return super.equals(obj) && this.objects.equals(((Array) obj).objects);
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return this.objects.hashCode() ^ super.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.chunked) {
            sb.append("_ ");
        }
        sb.append(Arrays.toString(this.objects.toArray()).substring(1));
        return sb.toString();
    }
}
