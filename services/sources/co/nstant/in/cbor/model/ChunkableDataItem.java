package co.nstant.in.cbor.model;

import java.util.Objects;

/* loaded from: classes.dex */
public abstract class ChunkableDataItem extends DataItem {
    public boolean chunked;

    public ChunkableDataItem(MajorType majorType) {
        super(majorType);
        this.chunked = false;
    }

    public boolean isChunked() {
        return this.chunked;
    }

    public ChunkableDataItem setChunked(boolean z) {
        this.chunked = z;
        return this;
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
        return Objects.hashCode(Boolean.valueOf(this.chunked)) ^ super.hashCode();
    }
}
