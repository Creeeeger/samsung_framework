package org.tukaani.xz.simple;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class SPARC implements SimpleFilter {
    public int pos;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int code(int i, int i2, byte[] bArr) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            byte b = bArr[i4];
            if ((b == 64 && (bArr[i4 + 1] & 192) == 0) || (b == Byte.MAX_VALUE && (bArr[i4 + 1] & 192) == 192)) {
                int i5 = i4 + 1;
                int i6 = i4 + 2;
                int i7 = i4 + 3;
                int i8 = ((((((b & 255) << 24) | ((bArr[i5] & 255) << 16)) | ((bArr[i6] & 255) << 8)) | (bArr[i7] & 255)) << 2) - ((this.pos + i4) - i);
                int i9 = (((0 - ((i8 >>> 24) & 1)) << 22) & 1073741823) | ((i8 >>> 2) & 4194303) | 1073741824;
                bArr[i4] = (byte) (i9 >>> 24);
                bArr[i5] = (byte) (i9 >>> 16);
                bArr[i6] = (byte) (i9 >>> 8);
                bArr[i7] = (byte) i9;
            }
            i4 += 4;
        }
        int i10 = i4 - i;
        this.pos += i10;
        return i10;
    }
}
