package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.CborEncoder;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.UnsignedInteger;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class UnsignedIntegerEncoder extends AbstractEncoder {
    public UnsignedIntegerEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
    }

    public void encode(UnsignedInteger unsignedInteger) {
        encodeTypeAndLength(MajorType.UNSIGNED_INTEGER, unsignedInteger.getValue());
    }
}
