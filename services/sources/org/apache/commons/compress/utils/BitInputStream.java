package org.apache.commons.compress.utils;

import java.io.Closeable;
import java.io.InputStream;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public class BitInputStream implements Closeable {
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
    public void close() {
        this.in.close();
    }

    public void clearBitCache() {
        this.bitsCached = 0L;
        this.bitsCachedSize = 0;
    }

    public long readBits(int i) {
        if (i < 0 || i > 63) {
            throw new IllegalArgumentException("count must not be negative or greater than 63");
        }
        if (ensureCache(i)) {
            return -1L;
        }
        if (this.bitsCachedSize < i) {
            return processBitsGreater57(i);
        }
        return readCachedBits(i);
    }

    public int bitsCached() {
        return this.bitsCachedSize;
    }

    public long bitsAvailable() {
        return this.bitsCachedSize + (this.in.available() * 8);
    }

    public void alignWithByteBoundary() {
        int i = this.bitsCachedSize % 8;
        if (i > 0) {
            readCachedBits(i);
        }
    }

    public long getBytesRead() {
        return this.in.getBytesRead();
    }

    public final long processBitsGreater57(int i) {
        long j;
        int i2 = i - this.bitsCachedSize;
        int i3 = 8 - i2;
        long read = this.in.read();
        if (read < 0) {
            return read;
        }
        if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
            long[] jArr = MASKS;
            this.bitsCached = ((jArr[i2] & read) << this.bitsCachedSize) | this.bitsCached;
            read >>>= i2;
            j = jArr[i3];
        } else {
            long j2 = this.bitsCached << i2;
            long[] jArr2 = MASKS;
            this.bitsCached = j2 | ((read >>> i3) & jArr2[i2]);
            j = jArr2[i3];
        }
        long j3 = read & j;
        long j4 = this.bitsCached & MASKS[i];
        this.bitsCached = j3;
        this.bitsCachedSize = i3;
        return j4;
    }

    public final long readCachedBits(int i) {
        long j;
        if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
            long j2 = this.bitsCached;
            j = MASKS[i] & j2;
            this.bitsCached = j2 >>> i;
        } else {
            j = MASKS[i] & (this.bitsCached >> (this.bitsCachedSize - i));
        }
        this.bitsCachedSize -= i;
        return j;
    }

    public final boolean ensureCache(int i) {
        while (true) {
            int i2 = this.bitsCachedSize;
            if (i2 >= i || i2 >= 57) {
                return false;
            }
            long read = this.in.read();
            if (read < 0) {
                return true;
            }
            if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.bitsCached = (read << this.bitsCachedSize) | this.bitsCached;
            } else {
                this.bitsCached = read | (this.bitsCached << 8);
            }
            this.bitsCachedSize += 8;
        }
    }
}
