package org.tukaani.xz.rangecoder;

import java.io.DataInputStream;
import java.io.InputStream;
import org.tukaani.xz.CorruptedInputException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class RangeDecoderFromStream extends RangeDecoder {
    public final DataInputStream inData;

    public RangeDecoderFromStream(InputStream inputStream) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.inData = dataInputStream;
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new CorruptedInputException();
        }
        this.code = dataInputStream.readInt();
        this.range = -1;
    }

    @Override // org.tukaani.xz.rangecoder.RangeDecoder
    public final void normalize() {
        if ((this.range & (-16777216)) == 0) {
            this.code = (this.code << 8) | this.inData.readUnsignedByte();
            this.range <<= 8;
        }
    }
}
