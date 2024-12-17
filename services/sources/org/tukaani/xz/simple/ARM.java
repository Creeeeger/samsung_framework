package org.tukaani.xz.simple;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class ARM implements SimpleFilter {
    public int pos;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int code(int i, int i2, byte[] bArr) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            if ((bArr[i4 + 3] & 255) == 235) {
                int i5 = i4 + 2;
                int i6 = i4 + 1;
                int i7 = (((((bArr[i5] & 255) << 16) | ((bArr[i6] & 255) << 8)) | (bArr[i4] & 255)) << 2) - ((this.pos + i4) - i);
                bArr[i5] = (byte) (i7 >>> 18);
                bArr[i6] = (byte) (i7 >>> 10);
                bArr[i4] = (byte) (i7 >>> 2);
            }
            i4 += 4;
        }
        int i8 = i4 - i;
        this.pos += i8;
        return i8;
    }
}
