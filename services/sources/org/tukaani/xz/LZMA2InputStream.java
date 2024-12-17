package org.tukaani.xz;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMADecoder;
import org.tukaani.xz.rangecoder.RangeDecoderFromBuffer;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class LZMA2InputStream extends InputStream {
    public final ArrayCache arrayCache;
    public DataInputStream in;
    public LZDecoder lz;
    public LZMADecoder lzma;
    public RangeDecoderFromBuffer rc;
    public int uncompressedSize = 0;
    public boolean isLZMAChunk = false;
    public boolean needDictReset = true;
    public boolean needProps = true;
    public boolean endReached = false;
    public IOException exception = null;
    public final byte[] tempBuf = new byte[1];

    public LZMA2InputStream(InputStream inputStream, int i, ArrayCache arrayCache) {
        inputStream.getClass();
        this.arrayCache = arrayCache;
        this.in = new DataInputStream(inputStream);
        this.rc = new RangeDecoderFromBuffer(arrayCache);
        if (i < 4096 || i > 2147483632) {
            throw new IllegalArgumentException(VibrationParam$1$$ExternalSyntheticOutline0.m(i, "Unsupported dictionary size "));
        }
        this.lz = new LZDecoder((i + 15) & (-16), arrayCache);
    }

    @Override // java.io.InputStream
    public final int available() {
        DataInputStream dataInputStream = this.in;
        if (dataInputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException == null) {
            return this.isLZMAChunk ? this.uncompressedSize : Math.min(this.uncompressedSize, dataInputStream.available());
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.in != null) {
            if (this.lz != null) {
                this.arrayCache.getClass();
                this.lz = null;
                RangeDecoderFromBuffer rangeDecoderFromBuffer = this.rc;
                ArrayCache arrayCache = this.arrayCache;
                rangeDecoderFromBuffer.getClass();
                arrayCache.getClass();
                this.rc = null;
            }
            try {
                this.in.close();
            } finally {
                this.in = null;
            }
        }
    }

    public final void decodeChunkHeader() {
        int readUnsignedByte = this.in.readUnsignedByte();
        if (readUnsignedByte == 0) {
            this.endReached = true;
            if (this.lz != null) {
                this.arrayCache.getClass();
                this.lz = null;
                RangeDecoderFromBuffer rangeDecoderFromBuffer = this.rc;
                ArrayCache arrayCache = this.arrayCache;
                rangeDecoderFromBuffer.getClass();
                arrayCache.getClass();
                this.rc = null;
                return;
            }
            return;
        }
        if (readUnsignedByte >= 224 || readUnsignedByte == 1) {
            this.needProps = true;
            this.needDictReset = false;
            LZDecoder lZDecoder = this.lz;
            lZDecoder.start = 0;
            lZDecoder.pos = 0;
            lZDecoder.full = 0;
            lZDecoder.limit = 0;
            lZDecoder.buf[lZDecoder.bufSize - 1] = 0;
        } else if (this.needDictReset) {
            throw new CorruptedInputException();
        }
        if (readUnsignedByte < 128) {
            if (readUnsignedByte > 2) {
                throw new CorruptedInputException();
            }
            this.isLZMAChunk = false;
            this.uncompressedSize = this.in.readUnsignedShort() + 1;
            return;
        }
        this.isLZMAChunk = true;
        int i = (readUnsignedByte & 31) << 16;
        this.uncompressedSize = i;
        this.uncompressedSize = this.in.readUnsignedShort() + 1 + i;
        int readUnsignedShort = this.in.readUnsignedShort();
        int i2 = readUnsignedShort + 1;
        if (readUnsignedByte >= 192) {
            this.needProps = false;
            int readUnsignedByte2 = this.in.readUnsignedByte();
            if (readUnsignedByte2 > 224) {
                throw new CorruptedInputException();
            }
            int i3 = readUnsignedByte2 / 45;
            int i4 = readUnsignedByte2 - (i3 * 45);
            int i5 = i4 / 9;
            int i6 = i4 - (i5 * 9);
            if (i6 + i5 > 4) {
                throw new CorruptedInputException();
            }
            this.lzma = new LZMADecoder(this.lz, this.rc, i6, i5, i3);
        } else {
            if (this.needProps) {
                throw new CorruptedInputException();
            }
            if (readUnsignedByte >= 160) {
                this.lzma.reset();
            }
        }
        RangeDecoderFromBuffer rangeDecoderFromBuffer2 = this.rc;
        DataInputStream dataInputStream = this.in;
        rangeDecoderFromBuffer2.getClass();
        if (i2 < 5) {
            throw new CorruptedInputException();
        }
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new CorruptedInputException();
        }
        rangeDecoderFromBuffer2.code = dataInputStream.readInt();
        rangeDecoderFromBuffer2.range = -1;
        int i7 = readUnsignedShort - 4;
        byte[] bArr = rangeDecoderFromBuffer2.buf;
        int length = bArr.length - i7;
        rangeDecoderFromBuffer2.pos = length;
        dataInputStream.readFully(bArr, length, i7);
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
                if (this.uncompressedSize == 0) {
                    decodeChunkHeader();
                    if (this.endReached) {
                        if (i4 == 0) {
                            return -1;
                        }
                        return i4;
                    }
                }
                int min = Math.min(this.uncompressedSize, i2);
                if (this.isLZMAChunk) {
                    LZDecoder lZDecoder = this.lz;
                    int i5 = lZDecoder.pos;
                    int i6 = lZDecoder.bufSize;
                    if (i6 - i5 <= min) {
                        lZDecoder.limit = i6;
                    } else {
                        lZDecoder.limit = i5 + min;
                    }
                    this.lzma.decode();
                } else {
                    LZDecoder lZDecoder2 = this.lz;
                    DataInputStream dataInputStream = this.in;
                    int min2 = Math.min(lZDecoder2.bufSize - lZDecoder2.pos, min);
                    dataInputStream.readFully(lZDecoder2.buf, lZDecoder2.pos, min2);
                    int i7 = lZDecoder2.pos + min2;
                    lZDecoder2.pos = i7;
                    if (lZDecoder2.full < i7) {
                        lZDecoder2.full = i7;
                    }
                }
                LZDecoder lZDecoder3 = this.lz;
                int i8 = lZDecoder3.pos;
                int i9 = lZDecoder3.start;
                int i10 = i8 - i9;
                if (i8 == lZDecoder3.bufSize) {
                    lZDecoder3.pos = 0;
                }
                System.arraycopy(lZDecoder3.buf, i9, bArr, i, i10);
                lZDecoder3.start = lZDecoder3.pos;
                i += i10;
                i2 -= i10;
                i4 += i10;
                int i11 = this.uncompressedSize - i10;
                this.uncompressedSize = i11;
                if (i11 == 0) {
                    RangeDecoderFromBuffer rangeDecoderFromBuffer = this.rc;
                    if (rangeDecoderFromBuffer.pos != rangeDecoderFromBuffer.buf.length || rangeDecoderFromBuffer.code != 0 || this.lz.pendingLen > 0) {
                        throw new CorruptedInputException();
                    }
                }
            } catch (IOException e) {
                this.exception = e;
                throw e;
            }
        }
        return i4;
    }
}
