package org.tukaani.xz.lz;

import java.io.DataInputStream;
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.CorruptedInputException;

/* loaded from: classes2.dex */
public final class LZDecoder {
    public final byte[] buf;
    public final int bufSize;
    public int full;
    public int pos;
    public int start;
    public int limit = 0;
    public int pendingLen = 0;
    public int pendingDist = 0;

    public LZDecoder(int i, byte[] bArr, ArrayCache arrayCache) {
        this.start = 0;
        this.pos = 0;
        this.full = 0;
        this.bufSize = i;
        byte[] byteArray = arrayCache.getByteArray(i, false);
        this.buf = byteArray;
        if (bArr != null) {
            int min = Math.min(bArr.length, i);
            this.pos = min;
            this.full = min;
            this.start = min;
            System.arraycopy(bArr, bArr.length - min, byteArray, 0, min);
        }
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.buf);
    }

    public void reset() {
        this.start = 0;
        this.pos = 0;
        this.full = 0;
        this.limit = 0;
        this.buf[this.bufSize - 1] = 0;
    }

    public void setLimit(int i) {
        int i2 = this.bufSize;
        int i3 = this.pos;
        if (i2 - i3 <= i) {
            this.limit = i2;
        } else {
            this.limit = i3 + i;
        }
    }

    public boolean hasSpace() {
        return this.pos < this.limit;
    }

    public boolean hasPending() {
        return this.pendingLen > 0;
    }

    public int getPos() {
        return this.pos;
    }

    public int getByte(int i) {
        int i2 = this.pos;
        int i3 = (i2 - i) - 1;
        if (i >= i2) {
            i3 += this.bufSize;
        }
        return this.buf[i3] & 255;
    }

    public void putByte(byte b) {
        byte[] bArr = this.buf;
        int i = this.pos;
        int i2 = i + 1;
        this.pos = i2;
        bArr[i] = b;
        if (this.full < i2) {
            this.full = i2;
        }
    }

    public void repeat(int i, int i2) {
        int i3;
        if (i < 0 || i >= this.full) {
            throw new CorruptedInputException();
        }
        int min = Math.min(this.limit - this.pos, i2);
        this.pendingLen = i2 - min;
        this.pendingDist = i;
        int i4 = this.pos;
        int i5 = (i4 - i) - 1;
        if (i >= i4) {
            i5 += this.bufSize;
        }
        do {
            byte[] bArr = this.buf;
            int i6 = this.pos;
            i3 = i6 + 1;
            this.pos = i3;
            int i7 = i5 + 1;
            bArr[i6] = bArr[i5];
            i5 = i7 == this.bufSize ? 0 : i7;
            min--;
        } while (min > 0);
        if (this.full < i3) {
            this.full = i3;
        }
    }

    public void repeatPending() {
        int i = this.pendingLen;
        if (i > 0) {
            repeat(this.pendingDist, i);
        }
    }

    public void copyUncompressed(DataInputStream dataInputStream, int i) {
        int min = Math.min(this.bufSize - this.pos, i);
        dataInputStream.readFully(this.buf, this.pos, min);
        int i2 = this.pos + min;
        this.pos = i2;
        if (this.full < i2) {
            this.full = i2;
        }
    }

    public int flush(byte[] bArr, int i) {
        int i2 = this.pos;
        int i3 = this.start;
        int i4 = i2 - i3;
        if (i2 == this.bufSize) {
            this.pos = 0;
        }
        System.arraycopy(this.buf, i3, bArr, i, i4);
        this.start = this.pos;
        return i4;
    }
}
