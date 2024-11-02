package com.google.zxing.common;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BitArray {
    public int[] bits;
    public int size;

    public BitArray() {
        this.size = 0;
        this.bits = new int[1];
    }

    public final void appendBit(boolean z) {
        ensureCapacity(this.size + 1);
        if (z) {
            int[] iArr = this.bits;
            int i = this.size;
            int i2 = i >> 5;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.size++;
    }

    public final void appendBits(int i, int i2) {
        if (i2 >= 0 && i2 <= 32) {
            ensureCapacity(this.size + i2);
            while (i2 > 0) {
                boolean z = true;
                if (((i >> (i2 - 1)) & 1) != 1) {
                    z = false;
                }
                appendBit(z);
                i2--;
            }
            return;
        }
        throw new IllegalArgumentException("Num bits must be between 0 and 32");
    }

    public final void ensureCapacity(int i) {
        int[] iArr = this.bits;
        if (i > (iArr.length << 5)) {
            int[] iArr2 = new int[(i + 31) >> 5];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.bits = iArr2;
        }
    }

    public final boolean get(int i) {
        if ((this.bits[i >> 5] & (1 << (i & 31))) != 0) {
            return true;
        }
        return false;
    }

    public final String toString() {
        char c;
        StringBuilder sb = new StringBuilder(this.size);
        for (int i = 0; i < this.size; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            if (get(i)) {
                c = 'X';
            } else {
                c = '.';
            }
            sb.append(c);
        }
        return sb.toString();
    }

    public BitArray(int i) {
        this.size = i;
        this.bits = new int[(i + 31) >> 5];
    }
}
