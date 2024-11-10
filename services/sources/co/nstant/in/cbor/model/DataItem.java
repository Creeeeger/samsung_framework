package co.nstant.in.cbor.model;

import java.util.Objects;

/* loaded from: classes.dex */
public abstract class DataItem {
    public final MajorType majorType;
    public Tag tag;

    public DataItem(MajorType majorType) {
        this.majorType = majorType;
        Objects.requireNonNull(majorType, "majorType is null");
    }

    public MajorType getMajorType() {
        return this.majorType;
    }

    public void setTag(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("tag number must be 0 or greater");
        }
        this.tag = new Tag(i);
    }

    public void setTag(Tag tag) {
        Objects.requireNonNull(tag, "tag is null");
        this.tag = tag;
    }

    public Tag getTag() {
        return this.tag;
    }

    public boolean hasTag() {
        return this.tag != null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataItem)) {
            return false;
        }
        DataItem dataItem = (DataItem) obj;
        Tag tag = this.tag;
        return tag != null ? tag.equals(dataItem.tag) && this.majorType == dataItem.majorType : dataItem.tag == null && this.majorType == dataItem.majorType;
    }

    public int hashCode() {
        return Objects.hash(this.majorType, this.tag);
    }

    public void assertTrue(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
