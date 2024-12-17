package co.nstant.in.cbor.model;

import android.hardware.audio.common.V2_0.AudioConfig$$ExternalSyntheticOutline0;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class Tag extends DataItem {
    public final long value;

    public Tag(long j) {
        super(MajorType.TAG);
        this.value = j;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof Tag) {
            return super.equals(obj) && this.value == ((Tag) obj).value;
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return Long.valueOf(this.value).hashCode() ^ super.hashCode();
    }

    public final String toString() {
        return AudioConfig$$ExternalSyntheticOutline0.m(new StringBuilder("Tag("), this.value, ")");
    }
}
