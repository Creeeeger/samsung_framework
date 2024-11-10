package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import co.nstant.in.cbor.model.UnsignedInteger;
import java.io.InputStream;

/* loaded from: classes.dex */
public class UnsignedIntegerDecoder extends AbstractDecoder {
    public UnsignedIntegerDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
    }

    public UnsignedInteger decode(int i) {
        return new UnsignedInteger(getLengthAsBigInteger(i));
    }
}
