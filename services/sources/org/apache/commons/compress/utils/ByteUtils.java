package org.apache.commons.compress.utils;

/* loaded from: classes2.dex */
public abstract class ByteUtils {
    public static long fromLittleEndian(byte[] bArr, int i, int i2) {
        checkReadLength(i2);
        long j = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j |= (bArr[i + i3] & 255) << (i3 * 8);
        }
        return j;
    }

    public static final void checkReadLength(int i) {
        if (i > 8) {
            throw new IllegalArgumentException("can't read more than eight bytes into a long value");
        }
    }
}
