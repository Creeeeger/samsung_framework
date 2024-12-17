package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class UnicodeString extends ChunkableDataItem {
    public final String string;

    public UnicodeString(String str) {
        super(MajorType.UNICODE_STRING);
        this.string = str;
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (!(obj instanceof UnicodeString) || !super.equals(obj)) {
            return false;
        }
        UnicodeString unicodeString = (UnicodeString) obj;
        String str = this.string;
        return str == null ? unicodeString.string == null : str.equals(unicodeString.string);
    }

    @Override // co.nstant.in.cbor.model.ChunkableDataItem, co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        String str = this.string;
        if (str == null) {
            return 0;
        }
        return str.hashCode() + super.hashCode();
    }

    public final String toString() {
        String str = this.string;
        return str == null ? "null" : str;
    }
}
