package co.nstant.in.cbor.model;

import java.util.Objects;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public abstract class DataItem {
    public final MajorType majorType;
    public Tag tag;

    public DataItem(MajorType majorType) {
        this.majorType = majorType;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataItem)) {
            return false;
        }
        DataItem dataItem = (DataItem) obj;
        Tag tag = this.tag;
        MajorType majorType = this.majorType;
        return tag != null ? tag.equals(dataItem.tag) && majorType == dataItem.majorType : dataItem.tag == null && majorType == dataItem.majorType;
    }

    public int hashCode() {
        return Objects.hash(this.majorType, this.tag);
    }
}
