package co.nstant.in.cbor.decoder;

import co.nstant.in.cbor.CborDecoder;
import java.io.InputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class SpecialDecoder extends AbstractDecoder {
    public final DoublePrecisionFloatDecoder doublePrecisionFloatDecoder;
    public final HalfPrecisionFloatDecoder halfPrecisionFloatDecoder;
    public final SinglePrecisionFloatDecoder singlePrecisionFloatDecoder;

    public SpecialDecoder(CborDecoder cborDecoder, InputStream inputStream) {
        super(cborDecoder, inputStream);
        this.halfPrecisionFloatDecoder = new HalfPrecisionFloatDecoder(cborDecoder, inputStream);
        this.singlePrecisionFloatDecoder = new SinglePrecisionFloatDecoder(cborDecoder, inputStream);
        this.doublePrecisionFloatDecoder = new DoublePrecisionFloatDecoder(cborDecoder, inputStream);
    }
}
