package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.model.NegativeInteger;
import java.io.InputStream;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class NegativeIntegerDecoder extends AbstractDecoder {
    public static final BigInteger MINUS_ONE = BigInteger.valueOf(-1);

    public NegativeIntegerDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public NegativeInteger decode(int i) {
        return new NegativeInteger(MINUS_ONE.subtract(getLengthAsBigInteger(i)));
    }
}
