package org.apache.commons.compress.utils;

import java.io.Closeable;
import java.io.InputStream;
import java.nio.ByteOrder;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class BitInputStream implements Closeable {
    public static final long[] MASKS = new long[64];
    public long bitsCached = 0;
    public int bitsCachedSize = 0;
    public final ByteOrder byteOrder;
    public final CountingInputStream in;

    static {
        for (int i = 1; i <= 63; i++) {
            long[] jArr = MASKS;
            jArr[i] = (jArr[i - 1] << 1) + 1;
        }
    }

    public BitInputStream(InputStream inputStream, ByteOrder byteOrder) {
        this.in = new CountingInputStream(inputStream);
        this.byteOrder = byteOrder;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.in.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (r0 >= r12) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        r0 = r12 - r0;
        r3 = 8 - r0;
        r4 = r11.in.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
    
        if (r4 >= 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        r1 = r11.byteOrder;
        r2 = java.nio.ByteOrder.LITTLE_ENDIAN;
        r6 = org.apache.commons.compress.utils.BitInputStream.MASKS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        if (r1 != r2) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
    
        r11.bitsCached = ((r6[r0] & r4) << r11.bitsCachedSize) | r11.bitsCached;
        r0 = (r4 >>> r0) & r6[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
    
        r4 = r11.bitsCached & r6[r12];
        r11.bitsCached = r0;
        r11.bitsCachedSize = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
    
        r11.bitsCached = (r11.bitsCached << r0) | ((r4 >>> r3) & r6[r0]);
        r0 = r6[r3] & r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        return readCachedBits(r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long readBits(int r12) {
        /*
            r11 = this;
            if (r12 < 0) goto L84
            r0 = 63
            if (r12 > r0) goto L84
        L6:
            int r0 = r11.bitsCachedSize
            r1 = 0
            if (r0 >= r12) goto L3b
            r3 = 57
            if (r0 >= r3) goto L3b
            org.apache.commons.compress.utils.CountingInputStream r0 = r11.in
            int r0 = r0.read()
            long r3 = (long) r0
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L1e
            r11 = -1
            return r11
        L1e:
            java.nio.ByteOrder r0 = r11.byteOrder
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN
            r2 = 8
            if (r0 != r1) goto L2f
            long r0 = r11.bitsCached
            int r5 = r11.bitsCachedSize
            long r3 = r3 << r5
            long r0 = r0 | r3
            r11.bitsCached = r0
            goto L35
        L2f:
            long r0 = r11.bitsCached
            long r0 = r0 << r2
            long r0 = r0 | r3
            r11.bitsCached = r0
        L35:
            int r0 = r11.bitsCachedSize
            int r0 = r0 + r2
            r11.bitsCachedSize = r0
            goto L6
        L3b:
            if (r0 >= r12) goto L7f
            int r0 = r12 - r0
            int r3 = 8 - r0
            org.apache.commons.compress.utils.CountingInputStream r4 = r11.in
            int r4 = r4.read()
            long r4 = (long) r4
            int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r1 >= 0) goto L4d
            goto L7e
        L4d:
            java.nio.ByteOrder r1 = r11.byteOrder
            java.nio.ByteOrder r2 = java.nio.ByteOrder.LITTLE_ENDIAN
            long[] r6 = org.apache.commons.compress.utils.BitInputStream.MASKS
            if (r1 != r2) goto L66
            r1 = r6[r0]
            long r1 = r1 & r4
            long r7 = r11.bitsCached
            int r9 = r11.bitsCachedSize
            long r1 = r1 << r9
            long r1 = r1 | r7
            r11.bitsCached = r1
            long r0 = r4 >>> r0
            r4 = r6[r3]
            long r0 = r0 & r4
            goto L75
        L66:
            long r1 = r11.bitsCached
            long r1 = r1 << r0
            long r7 = r4 >>> r3
            r9 = r6[r0]
            long r7 = r7 & r9
            long r0 = r1 | r7
            r11.bitsCached = r0
            r0 = r6[r3]
            long r0 = r0 & r4
        L75:
            long r4 = r11.bitsCached
            r6 = r6[r12]
            long r4 = r4 & r6
            r11.bitsCached = r0
            r11.bitsCachedSize = r3
        L7e:
            return r4
        L7f:
            long r11 = r11.readCachedBits(r12)
            return r11
        L84:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "count must not be negative or greater than 63"
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.utils.BitInputStream.readBits(int):long");
    }

    public final long readCachedBits(int i) {
        long j;
        ByteOrder byteOrder = this.byteOrder;
        ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
        long[] jArr = MASKS;
        if (byteOrder == byteOrder2) {
            long j2 = this.bitsCached;
            j = jArr[i] & j2;
            this.bitsCached = j2 >>> i;
        } else {
            j = jArr[i] & (this.bitsCached >> (this.bitsCachedSize - i));
        }
        this.bitsCachedSize -= i;
        return j;
    }
}
