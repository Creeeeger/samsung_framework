package co.nstant.in.cbor.encoder;

import co.nstant.in.cbor.model.ByteString;
import co.nstant.in.cbor.model.MajorType;
import co.nstant.in.cbor.model.SimpleValue;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes.dex */
public final class ByteStringEncoder extends AbstractEncoder {
    public final void encode(ByteString byteString) {
        byte[] bArr = byteString.bytes;
        if (bArr == null) {
            bArr = null;
        }
        boolean z = byteString.chunked;
        MajorType majorType = MajorType.BYTE_STRING;
        if (z) {
            encodeTypeChunked(majorType);
            if (bArr != null) {
                encode(new ByteString(bArr));
                return;
            }
            return;
        }
        if (bArr == null) {
            this.encoder.encode(SimpleValue.NULL);
        } else {
            encodeTypeAndLength(majorType, bArr.length);
            write(bArr);
        }
    }
}
