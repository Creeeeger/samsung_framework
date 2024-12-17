package org.tukaani.xz.simple;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class X86 implements SimpleFilter {
    public static final boolean[] MASK_TO_ALLOWED_STATUS = {true, true, true, false, true, false, false, false};
    public static final int[] MASK_TO_BIT_NUMBER = {0, 1, 2, 2, 3, 3, 3, 3};
    public int pos;
    public int prevMask;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int code(int i, int i2, byte[] bArr) {
        int i3;
        int i4;
        int i5 = i - 1;
        int i6 = (i2 + i) - 5;
        int i7 = i;
        while (true) {
            if (i7 > i6) {
                break;
            }
            if ((bArr[i7] & 254) == 232) {
                int i8 = i7 - i5;
                int i9 = i8 & (-4);
                int[] iArr = MASK_TO_BIT_NUMBER;
                if (i9 != 0) {
                    this.prevMask = 0;
                } else {
                    int i10 = (this.prevMask << (i8 - 1)) & 7;
                    this.prevMask = i10;
                    if (i10 != 0 && (!MASK_TO_ALLOWED_STATUS[i10] || (i3 = bArr[(i7 + 4) - iArr[i10]] & 255) == 0 || i3 == 255)) {
                        this.prevMask = (i10 << 1) | 1;
                        i5 = i7;
                    }
                }
                int i11 = i7 + 4;
                byte b = bArr[i11];
                int i12 = b & 255;
                if (i12 == 0 || i12 == 255) {
                    int i13 = i7 + 1;
                    int i14 = i7 + 2;
                    int i15 = i7 + 3;
                    int i16 = ((b & 255) << 24) | (bArr[i13] & 255) | ((bArr[i14] & 255) << 8) | ((bArr[i15] & 255) << 16);
                    while (true) {
                        i4 = i16 - ((this.pos + i7) - i);
                        int i17 = this.prevMask;
                        if (i17 != 0) {
                            int i18 = iArr[i17] * 8;
                            int i19 = ((byte) (i4 >>> (24 - i18))) & 255;
                            if (i19 != 0 && i19 != 255) {
                                break;
                            }
                            i16 = i4 ^ ((1 << (32 - i18)) - 1);
                        } else {
                            break;
                        }
                    }
                    bArr[i13] = (byte) i4;
                    bArr[i14] = (byte) (i4 >>> 8);
                    bArr[i15] = (byte) (i4 >>> 16);
                    bArr[i11] = (byte) (~(((i4 >>> 24) & 1) - 1));
                    i5 = i7;
                    i7 = i11;
                } else {
                    this.prevMask = (this.prevMask << 1) | 1;
                    i5 = i7;
                }
            }
            i7++;
        }
        int i20 = i7 - i5;
        this.prevMask = (i20 & (-4)) == 0 ? this.prevMask << (i20 - 1) : 0;
        int i21 = i7 - i;
        this.pos += i21;
        return i21;
    }
}
