package androidx.slice;

import androidx.versionedparcelable.VersionedParcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceSpec implements VersionedParcelable {
    public int mRevision;
    public String mType;

    public SliceSpec() {
        this.mRevision = 1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SliceSpec)) {
            return false;
        }
        SliceSpec sliceSpec = (SliceSpec) obj;
        if (!this.mType.equals(sliceSpec.mType) || this.mRevision != sliceSpec.mRevision) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.mType.hashCode() + this.mRevision;
    }

    public final String toString() {
        return String.format("SliceSpec{%s,%d}", this.mType, Integer.valueOf(this.mRevision));
    }

    public SliceSpec(String str, int i) {
        this.mType = str;
        this.mRevision = i;
    }
}
