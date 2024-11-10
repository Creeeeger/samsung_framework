package co.nstant.in.cbor.model;

import co.nstant.in.cbor.CborException;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class RationalNumber extends Array {
    public RationalNumber(Number number, Number number2) {
        setTag(30);
        if (number == null) {
            throw new CborException("Numerator is null");
        }
        if (number2 == null) {
            throw new CborException("Denominator is null");
        }
        if (number2.getValue().equals(BigInteger.ZERO)) {
            throw new CborException("Denominator is zero");
        }
        add(number);
        add(number2);
    }
}
