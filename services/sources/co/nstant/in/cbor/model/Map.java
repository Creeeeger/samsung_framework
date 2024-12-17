package co.nstant.in.cbor.model;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class Map extends ChunkableDataItem {
    public final List keys;
    public final HashMap map;

    public Map() {
        super(MajorType.MAP);
        this.keys = new LinkedList();
        this.map = new HashMap();
    }

    public Map(int i) {
        super(MajorType.MAP);
        this.keys = new LinkedList();
        this.map = new HashMap(i);
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            return super.equals(obj) && this.map.equals(((Map) obj).map);
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return this.map.hashCode() ^ super.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.chunked) {
            sb.append("{_ ");
        } else {
            sb.append("{ ");
        }
        for (DataItem dataItem : this.keys) {
            sb.append(dataItem);
            sb.append(": ");
            sb.append(this.map.get(dataItem));
            sb.append(", ");
        }
        if (sb.toString().endsWith(", ")) {
            sb.setLength(sb.length() - 2);
        }
        sb.append(" }");
        return sb.toString();
    }
}
