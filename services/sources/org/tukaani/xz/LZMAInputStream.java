package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMADecoder;
import org.tukaani.xz.rangecoder.RangeDecoderFromStream;

/* loaded from: classes2.dex */
public class LZMAInputStream extends InputStream {
    public ArrayCache arrayCache;
    public InputStream in;
    public LZDecoder lz;
    public LZMADecoder lzma;
    public RangeDecoderFromStream rc;
    public long remainingSize;
    public boolean endReached = false;
    public final byte[] tempBuf = new byte[1];
    public IOException exception = null;

    public static int getDictSize(int i) {
        if (i < 0 || i > 2147483632) {
            throw new IllegalArgumentException("LZMA dictionary is too big for this implementation");
        }
        if (i < 4096) {
            i = 4096;
        }
        return (i + 15) & (-16);
    }

    public LZMAInputStream(InputStream inputStream, long j, byte b, int i) {
        initialize(inputStream, j, b, i, null, ArrayCache.getDefaultCache());
    }

    public final void initialize(InputStream inputStream, long j, byte b, int i, byte[] bArr, ArrayCache arrayCache) {
        if (j < -1) {
            throw new UnsupportedOptionsException("Uncompressed size is too big");
        }
        int i2 = b & 255;
        if (i2 > 224) {
            throw new CorruptedInputException("Invalid LZMA properties byte");
        }
        int i3 = i2 / 45;
        int i4 = i2 - ((i3 * 9) * 5);
        int i5 = i4 / 9;
        int i6 = i4 - (i5 * 9);
        if (i < 0 || i > 2147483632) {
            throw new UnsupportedOptionsException("LZMA dictionary is too big for this implementation");
        }
        initialize(inputStream, j, i6, i5, i3, i, bArr, arrayCache);
    }

    public final void initialize(InputStream inputStream, long j, int i, int i2, int i3, int i4, byte[] bArr, ArrayCache arrayCache) {
        if (j < -1 || i < 0 || i > 8 || i2 < 0 || i2 > 4 || i3 < 0 || i3 > 4) {
            throw new IllegalArgumentException();
        }
        this.in = inputStream;
        this.arrayCache = arrayCache;
        int dictSize = getDictSize(i4);
        if (j >= 0 && dictSize > j) {
            dictSize = getDictSize((int) j);
        }
        this.lz = new LZDecoder(getDictSize(dictSize), bArr, arrayCache);
        RangeDecoderFromStream rangeDecoderFromStream = new RangeDecoderFromStream(inputStream);
        this.rc = rangeDecoderFromStream;
        this.lzma = new LZMADecoder(this.lz, rangeDecoderFromStream, i, i2, i3);
        this.remainingSize = j;
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (this.in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.endReached) {
            return -1;
        }
        while (i2 > 0) {
            try {
                long j = this.remainingSize;
                this.lz.setLimit((j < 0 || j >= ((long) i2)) ? i2 : (int) j);
                try {
                    this.lzma.decode();
                } catch (CorruptedInputException e) {
                    if (this.remainingSize != -1 || !this.lzma.endMarkerDetected()) {
                        throw e;
                    }
                    this.endReached = true;
                    this.rc.normalize();
                }
                int flush = this.lz.flush(bArr, i);
                i += flush;
                i2 -= flush;
                i4 += flush;
                long j2 = this.remainingSize;
                if (j2 >= 0) {
                    long j3 = j2 - flush;
                    this.remainingSize = j3;
                    if (j3 == 0) {
                        this.endReached = true;
                    }
                }
                if (this.endReached) {
                    if (!this.rc.isFinished() || this.lz.hasPending()) {
                        throw new CorruptedInputException();
                    }
                    putArraysToCache();
                    if (i4 == 0) {
                        return -1;
                    }
                    return i4;
                }
            } catch (IOException e2) {
                this.exception = e2;
                throw e2;
            }
        }
        return i4;
    }

    public final void putArraysToCache() {
        LZDecoder lZDecoder = this.lz;
        if (lZDecoder != null) {
            lZDecoder.putArraysToCache(this.arrayCache);
            this.lz = null;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.in != null) {
            putArraysToCache();
            try {
                this.in.close();
            } finally {
                this.in = null;
            }
        }
    }
}
