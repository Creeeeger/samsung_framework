package co.nstant.in.cbor.model;

import java.util.Arrays;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class ByteString extends ChunkableDataItem {
    public final byte[] bytes;

    public ByteString(byte[] bArr) {
        super(MajorType.BYTE_STRING);
        if (bArr == null) {
            this.bytes = null;
        } else {
            this.bytes = bArr;
        }
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof ByteString) {
            return super.equals(obj) && Arrays.equals(this.bytes, ((ByteString) obj).bytes);
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return Arrays.hashCode(this.bytes) ^ super.hashCode();
    }
}
