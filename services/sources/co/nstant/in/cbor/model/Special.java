package co.nstant.in.cbor.model;

import java.util.Objects;

/* loaded from: classes.dex */
public class Special extends DataItem {
    public static final Special BREAK = new Special(SpecialType.BREAK);
    public final SpecialType specialType;

    public Special(SpecialType specialType) {
        super(MajorType.SPECIAL);
        Objects.requireNonNull(specialType);
        this.specialType = specialType;
    }

    public SpecialType getSpecialType() {
        return this.specialType;
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
