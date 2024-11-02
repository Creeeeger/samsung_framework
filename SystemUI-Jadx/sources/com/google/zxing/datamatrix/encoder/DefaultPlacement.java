package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DefaultPlacement {
    public final byte[] bits;
    public final String codewords;
    public final int numcols;
    public final int numrows;

    public DefaultPlacement(String str, int i, int i2) {
        this.codewords = str;
        this.numcols = i;
        this.numrows = i2;
        byte[] bArr = new byte[i * i2];
        this.bits = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    public final void module(int i, int i2, int i3, int i4) {
        if (i < 0) {
            int i5 = this.numrows;
            i += i5;
            i2 += 4 - ((i5 + 4) % 8);
        }
        int i6 = this.numcols;
        if (i2 < 0) {
            i2 += i6;
            i += 4 - ((i6 + 4) % 8);
        }
        byte b = 1;
        if ((this.codewords.charAt(i3) & (1 << (8 - i4))) == 0) {
            b = 0;
        }
        this.bits[(i * i6) + i2] = b;
    }

    public final void utah(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        module(i4, i5, i3, 1);
        int i6 = i2 - 1;
        module(i4, i6, i3, 2);
        int i7 = i - 1;
        module(i7, i5, i3, 3);
        module(i7, i6, i3, 4);
        module(i7, i2, i3, 5);
        module(i, i5, i3, 6);
        module(i, i6, i3, 7);
        module(i, i2, i3, 8);
    }
}
