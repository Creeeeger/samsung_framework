package org.tukaani.xz.simple;

import com.android.internal.util.FrameworkStatsLog;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class ARMThumb implements SimpleFilter {
    public int pos;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int code(int i, int i2, byte[] bArr) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            int i5 = i4 + 1;
            byte b = bArr[i5];
            if ((b & 248) == 240) {
                int i6 = i4 + 3;
                byte b2 = bArr[i6];
                if ((b2 & 248) == 248) {
                    int i7 = ((b & 7) << 19) | ((bArr[i4] & 255) << 11) | ((b2 & 7) << 8);
                    int i8 = i4 + 2;
                    int i9 = ((i7 | (bArr[i8] & 255)) << 1) - ((this.pos + i4) - i);
                    bArr[i5] = (byte) (240 | ((i9 >>> 20) & 7));
                    bArr[i4] = (byte) (i9 >>> 12);
                    bArr[i6] = (byte) (((i9 >>> 9) & 7) | FrameworkStatsLog.INTEGRITY_RULES_PUSHED);
                    bArr[i8] = (byte) (i9 >>> 1);
                    i4 = i8;
                }
            }
            i4 += 2;
        }
        int i10 = i4 - i;
        this.pos += i10;
        return i10;
    }
}
