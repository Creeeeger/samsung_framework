package co.nstant.in.cbor.model;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class DoublePrecisionFloat extends Special {
    public final double value;

    public DoublePrecisionFloat(double d) {
        super(SpecialType.IEEE_754_DOUBLE_PRECISION_FLOAT);
        this.value = d;
    }

    @Override // co.nstant.in.cbor.model.Special, co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof DoublePrecisionFloat) {
            return super.equals(obj) && this.value == ((DoublePrecisionFloat) obj).value;
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.Special, co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return Double.valueOf(this.value).hashCode() ^ super.hashCode();
    }

    @Override // co.nstant.in.cbor.model.Special
    public final String toString() {
        return String.valueOf(this.value);
    }
}
