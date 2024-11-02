package com.google.zxing.qrcode.encoder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MaskUtil {
    private MaskUtil() {
    }

    public static int applyMaskPenaltyRule1Internal(ByteMatrix byteMatrix, boolean z) {
        int i;
        byte b;
        int i2 = byteMatrix.height;
        int i3 = byteMatrix.width;
        if (z) {
            i = i2;
        } else {
            i = i3;
        }
        if (z) {
            i2 = i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            byte b2 = -1;
            int i6 = 0;
            for (int i7 = 0; i7 < i2; i7++) {
                byte[][] bArr = byteMatrix.bytes;
                if (z) {
                    b = bArr[i5][i7];
                } else {
                    b = bArr[i7][i5];
                }
                if (b == b2) {
                    i6++;
                } else {
                    if (i6 >= 5) {
                        i4 += (i6 - 5) + 3;
                    }
                    i6 = 1;
                    b2 = b;
                }
            }
            if (i6 >= 5) {
                i4 = (i6 - 5) + 3 + i4;
            }
        }
        return i4;
    }
}
