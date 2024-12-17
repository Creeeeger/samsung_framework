package org.tukaani.xz.simple;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class PowerPC implements SimpleFilter {
    public int pos;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int code(int i, int i2, byte[] bArr) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            byte b = bArr[i4];
            if ((b & 252) == 72) {
                int i5 = i4 + 3;
                byte b2 = bArr[i5];
                if ((b2 & 3) == 1) {
                    int i6 = i4 + 1;
                    int i7 = i4 + 2;
                    int i8 = (((((b & 3) << 24) | ((bArr[i6] & 255) << 16)) | ((bArr[i7] & 255) << 8)) | (b2 & 252)) - ((this.pos + i4) - i);
                    bArr[i4] = (byte) (72 | ((i8 >>> 24) & 3));
                    bArr[i6] = (byte) (i8 >>> 16);
                    bArr[i7] = (byte) (i8 >>> 8);
                    bArr[i5] = (byte) (i8 | (bArr[i5] & 3));
                }
            }
            i4 += 4;
        }
        int i9 = i4 - i;
        this.pos += i9;
        return i9;
    }
}
