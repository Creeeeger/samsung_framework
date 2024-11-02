package com.google.dexmaker.dx.util;

import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ByteArray {
    public final byte[] bytes;
    public final int size;
    public final int start;

    public ByteArray(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("bytes == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i2 >= i) {
            if (i2 <= bArr.length) {
                this.bytes = bArr;
                this.start = i;
                this.size = i2 - i;
                return;
            }
            throw new IllegalArgumentException("end > bytes.length");
        }
        throw new IllegalArgumentException("end < start");
    }

    public final int getUnsignedByte(int i) {
        int i2 = i + 1;
        int i3 = this.size;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return this.bytes[this.start + i] & 255;
        }
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("bad range: ", i, "..", i2, "; actual size ");
        m.append(i3);
        throw new IllegalArgumentException(m.toString());
    }

    public ByteArray(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }
}
