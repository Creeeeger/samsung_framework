package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMADecoder;
import org.tukaani.xz.rangecoder.RangeDecoderFromStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class LZMAInputStream extends InputStream {
    public final ArrayCache arrayCache;
    public InputStream in;
    public LZDecoder lz;
    public final LZMADecoder lzma;
    public final RangeDecoderFromStream rc;
    public long remainingSize;
    public boolean endReached = false;
    public final byte[] tempBuf = new byte[1];
    public IOException exception = null;

    public LZMAInputStream(InputStream inputStream, long j, byte b, int i) {
        ArrayCache arrayCache = ArrayCache.defaultCache;
        if (j < -1) {
            throw new UnsupportedOptionsException("Uncompressed size is too big");
        }
        int i2 = b & 255;
        if (i2 > 224) {
            throw new CorruptedInputException("Invalid LZMA properties byte");
        }
        int i3 = i2 / 45;
        int i4 = i2 - (i3 * 45);
        int i5 = i4 / 9;
        int i6 = i4 - (i5 * 9);
        if (i < 0 || i > 2147483632) {
            throw new UnsupportedOptionsException("LZMA dictionary is too big for this implementation");
        }
        if (j < -1 || i6 < 0 || i6 > 8 || i5 < 0 || i5 > 4 || i3 < 0 || i3 > 4) {
            throw new IllegalArgumentException();
        }
        this.in = inputStream;
        this.arrayCache = arrayCache;
        int dictSize = getDictSize(i);
        if (j >= 0 && dictSize > j) {
            dictSize = getDictSize((int) j);
        }
        this.lz = new LZDecoder(getDictSize(dictSize), arrayCache);
        RangeDecoderFromStream rangeDecoderFromStream = new RangeDecoderFromStream(inputStream);
        this.rc = rangeDecoderFromStream;
        this.lzma = new LZMADecoder(this.lz, rangeDecoderFromStream, i6, i5, i3);
        this.remainingSize = j;
    }

    public static int getDictSize(int i) {
        if (i < 0 || i > 2147483632) {
            throw new IllegalArgumentException("LZMA dictionary is too big for this implementation");
        }
        if (i < 4096) {
            i = 4096;
        }
        return (i + 15) & (-16);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.in != null) {
            if (this.lz != null) {
                this.arrayCache.getClass();
                this.lz = null;
            }
            try {
                this.in.close();
            } finally {
                this.in = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
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
        int i4 = 0;
        while (i2 > 0) {
            try {
                long j = this.remainingSize;
                int i5 = (j < 0 || j >= ((long) i2)) ? i2 : (int) j;
                LZDecoder lZDecoder = this.lz;
                int i6 = lZDecoder.pos;
                int i7 = lZDecoder.bufSize;
                if (i7 - i6 <= i5) {
                    lZDecoder.limit = i7;
                } else {
                    lZDecoder.limit = i6 + i5;
                }
                try {
                    this.lzma.decode();
                } catch (CorruptedInputException e) {
                    if (this.remainingSize != -1 || this.lzma.reps[0] != -1) {
                        throw e;
                    }
                    this.endReached = true;
                    this.rc.normalize();
                }
                LZDecoder lZDecoder2 = this.lz;
                int i8 = lZDecoder2.pos;
                int i9 = lZDecoder2.start;
                int i10 = i8 - i9;
                if (i8 == lZDecoder2.bufSize) {
                    lZDecoder2.pos = 0;
                }
                System.arraycopy(lZDecoder2.buf, i9, bArr, i, i10);
                lZDecoder2.start = lZDecoder2.pos;
                i += i10;
                i2 -= i10;
                i4 += i10;
                long j2 = this.remainingSize;
                if (j2 >= 0) {
                    long j3 = j2 - i10;
                    this.remainingSize = j3;
                    if (j3 == 0) {
                        this.endReached = true;
                    }
                }
                if (this.endReached) {
                    LZDecoder lZDecoder3 = this.lz;
                    if (lZDecoder3.pendingLen > 0 || this.rc.code != 0) {
                        throw new CorruptedInputException();
                    }
                    if (lZDecoder3 != null) {
                        this.arrayCache.getClass();
                        this.lz = null;
                    }
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
}
