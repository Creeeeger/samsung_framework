package co.nstant.in.cbor.model;

import java.math.BigInteger;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class UnsignedInteger extends Number {
    public UnsignedInteger(long j) {
        this(BigInteger.valueOf(j));
        boolean z = j >= 0;
        String str = "value " + j + " is not >= 0";
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public UnsignedInteger(BigInteger bigInteger) {
        super(MajorType.UNSIGNED_INTEGER, bigInteger);
    }
}
