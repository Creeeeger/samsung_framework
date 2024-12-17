package org.tukaani.xz.rangecoder;

import java.util.Arrays;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class RangeDecoder {
    public int range = 0;
    public int code = 0;

    public static final void initProbs(short[] sArr) {
        Arrays.fill(sArr, (short) 1024);
    }

    public final int decodeBit(short[] sArr, int i) {
        normalize();
        short s = sArr[i];
        int i2 = this.range;
        int i3 = (i2 >>> 11) * s;
        int i4 = this.code;
        if ((i4 ^ Integer.MIN_VALUE) < (Integer.MIN_VALUE ^ i3)) {
            this.range = i3;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            return 0;
        }
        this.range = i2 - i3;
        this.code = i4 - i3;
        sArr[i] = (short) (s - (s >>> 5));
        return 1;
    }

    public final int decodeBitTree(short[] sArr) {
        int i = 1;
        do {
            i = decodeBit(sArr, i) | (i << 1);
        } while (i < sArr.length);
        return i - sArr.length;
    }

    public abstract void normalize();
}
