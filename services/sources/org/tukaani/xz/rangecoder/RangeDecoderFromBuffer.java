package org.tukaani.xz.rangecoder;

import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.CorruptedInputException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class RangeDecoderFromBuffer extends RangeDecoder {
    public final byte[] buf = new byte[65531];
    public int pos = 65531;

    public RangeDecoderFromBuffer(ArrayCache arrayCache) {
    }

    @Override // org.tukaani.xz.rangecoder.RangeDecoder
    public final void normalize() {
        int i = this.range;
        if (((-16777216) & i) == 0) {
            try {
                int i2 = this.code << 8;
                byte[] bArr = this.buf;
                int i3 = this.pos;
                this.pos = i3 + 1;
                this.code = i2 | (bArr[i3] & 255);
                this.range = i << 8;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new CorruptedInputException();
            }
        }
    }
}
