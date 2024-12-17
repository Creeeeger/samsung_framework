package co.nstant.in.cbor.model;

import java.math.BigInteger;
import java.util.Objects;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public abstract class Number extends DataItem {
    public final BigInteger value;

    public Number(MajorType majorType, BigInteger bigInteger) {
        super(majorType);
        Objects.requireNonNull(bigInteger);
        this.value = bigInteger;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public final boolean equals(Object obj) {
        if (obj instanceof Number) {
            return super.equals(obj) && this.value.equals(((Number) obj).value);
        }
        return false;
    }

    @Override // co.nstant.in.cbor.model.DataItem
    public final int hashCode() {
        return this.value.hashCode() ^ super.hashCode();
    }

    public final String toString() {
        return this.value.toString();
    }
}
