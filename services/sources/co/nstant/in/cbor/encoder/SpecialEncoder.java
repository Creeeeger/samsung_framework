package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.CborEncoder;
import java.io.OutputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class SpecialEncoder extends AbstractEncoder {
    public final DoublePrecisionFloatEncoder doublePrecisionFloatEncoder;
    public final HalfPrecisionFloatEncoder halfPrecisionFloatEncoder;
    public final SinglePrecisionFloatEncoder singlePrecisionFloatEncoder;

    public SpecialEncoder(CborEncoder cborEncoder, OutputStream outputStream) {
        super(cborEncoder, outputStream);
        this.halfPrecisionFloatEncoder = new HalfPrecisionFloatEncoder(cborEncoder, outputStream);
        this.singlePrecisionFloatEncoder = new SinglePrecisionFloatEncoder(cborEncoder, outputStream);
        this.doublePrecisionFloatEncoder = new DoublePrecisionFloatEncoder(cborEncoder, outputStream);
    }
}
