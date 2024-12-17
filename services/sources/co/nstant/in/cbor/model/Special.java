package co.nstant.in.cbor.model;

import java.util.Objects;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public class Special extends DataItem {
    public static final Special BREAK = new Special(SpecialType.BREAK);
    public final SpecialType specialType;

    public Special(SpecialType specialType) {
        super(MajorType.SPECIAL);
        this.specialType = specialType;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public boolean equals(Object obj) {
        if (obj instanceof Special) {
            return super.equals(obj) && this.specialType == ((Special) obj).specialType;
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public int hashCode() {
        return Objects.hashCode(this.specialType) ^ super.hashCode();
    }

    public String toString() {
        return this.specialType.name();
    }
}
