package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.NegativeInteger;
import java.io.OutputStream;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class NegativeIntegerEncoder extends AbstractEncoder {
    public static final BigInteger MINUS_ONE = BigInteger.valueOf(-1);

    public NegativeIntegerEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
    }

    public void encode(NegativeInteger negativeInteger) {
        encodeTypeAndLength(MajorType.NEGATIVE_INTEGER, MINUS_ONE.subtract(negativeInteger.getValue()).abs());
    }
}
