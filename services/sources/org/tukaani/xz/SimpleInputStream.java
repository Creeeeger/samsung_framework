package org.tukaani.xz;

import android.os.IInstalld;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.simple.SimpleFilter;

/* loaded from: classes2.dex */
public class SimpleInputStream extends InputStream {
    public InputStream in;
    public final SimpleFilter simpleFilter;
    public final byte[] filterBuf = new byte[IInstalld.FLAG_USE_QUOTA];
    public int pos = 0;
    public int filtered = 0;
    public int unfiltered = 0;
    public boolean endReached = false;
    public IOException exception = null;
    public final byte[] tempBuf = new byte[1];

    public SimpleInputStream(InputStream inputStream, SimpleFilter simpleFilter) {
        inputStream.getClass();
        this.in = inputStream;
        this.simpleFilter = simpleFilter;
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
        int i4 = 0;
        while (true) {
            try {
                int min = Math.min(this.filtered, i2);
                System.arraycopy(this.filterBuf, this.pos, bArr, i, min);
                int i5 = this.pos + min;
                this.pos = i5;
                int i6 = this.filtered - min;
                this.filtered = i6;
                i += min;
                i2 -= min;
                i4 += min;
                int i7 = this.unfiltered;
                if (i5 + i6 + i7 == 4096) {
                    byte[] bArr2 = this.filterBuf;
                    System.arraycopy(bArr2, i5, bArr2, 0, i6 + i7);
                    this.pos = 0;
                }
                if (i2 == 0 || this.endReached) {
                    break;
                }
                int i8 = this.pos;
                int i9 = this.filtered;
                int i10 = this.unfiltered;
                int read = this.in.read(this.filterBuf, i8 + i9 + i10, IInstalld.FLAG_USE_QUOTA - ((i8 + i9) + i10));
                if (read == -1) {
                    this.endReached = true;
                    this.filtered = this.unfiltered;
                    this.unfiltered = 0;
                } else {
                    int i11 = this.unfiltered + read;
                    this.unfiltered = i11;
                    int code = this.simpleFilter.code(this.filterBuf, this.pos, i11);
                    this.filtered = code;
                    this.unfiltered -= code;
                }
            } catch (IOException e) {
                this.exception = e;
                throw e;
            }
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int available() {
        if (this.in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        return this.filtered;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.in = null;
            }
        }
    }
}
