package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public abstract class ChunkableDataItem extends DataItem {
    public boolean chunked;

    public ChunkableDataItem(MajorType majorType) {
        super(majorType);
        this.chunked = false;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public boolean equals(Object obj) {
        if (obj instanceof ChunkableDataItem) {
            return super.equals(obj) && this.chunked == ((ChunkableDataItem) obj).chunked;
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public int hashCode() {
        return Boolean.valueOf(this.chunked).hashCode() ^ super.hashCode();
    }
}
