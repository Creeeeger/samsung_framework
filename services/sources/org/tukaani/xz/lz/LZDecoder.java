package org.tukaani.xz.lz;

import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.CorruptedInputException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class LZDecoder {
    public final byte[] buf;
    public final int bufSize;
    public int start = 0;
    public int pos = 0;
    public int full = 0;
    public int limit = 0;
    public int pendingLen = 0;
    public int pendingDist = 0;

    public LZDecoder(int i, ArrayCache arrayCache) {
        this.bufSize = i;
        this.buf = new byte[i];
    }

    public final void repeat(int i, int i2) {
        int i3;
        if (i < 0 || i >= this.full) {
            throw new CorruptedInputException();
        }
        int min = Math.min(this.limit - this.pos, i2);
        this.pendingLen = i2 - min;
        this.pendingDist = i;
        int i4 = (this.pos - i) - 1;
        byte[] bArr = this.buf;
        if (i4 < 0) {
            int i5 = this.bufSize;
            int i6 = i4 + i5;
            int min2 = Math.min(i5 - i6, min);
            System.arraycopy(bArr, i6, bArr, this.pos, min2);
            this.pos += min2;
            min -= min2;
            if (min == 0) {
                return;
            } else {
                i4 = 0;
            }
        }
        do {
            int min3 = Math.min(min, this.pos - i4);
            System.arraycopy(bArr, i4, bArr, this.pos, min3);
            i3 = this.pos + min3;
            this.pos = i3;
            min -= min3;
        } while (min > 0);
        if (this.full < i3) {
            this.full = i3;
        }
    }
}
