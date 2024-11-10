package co.nstant.in.cbor.model;

import java.math.BigInteger;

/* loaded from: classes.dex */
public class NegativeInteger extends Number {
    public NegativeInteger(BigInteger bigInteger) {
        super(MajorType.NEGATIVE_INTEGER, bigInteger);
    }
}
