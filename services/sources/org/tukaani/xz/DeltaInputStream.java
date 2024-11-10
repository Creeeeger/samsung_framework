package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.delta.DeltaDecoder;

/* loaded from: classes2.dex */
public class DeltaInputStream extends InputStream {
    public final DeltaDecoder delta;
    public InputStream in;
    public IOException exception = null;
    public final byte[] tempBuf = new byte[1];

    public DeltaInputStream(InputStream inputStream, int i) {
        inputStream.getClass();
        this.in = inputStream;
        this.delta = new DeltaDecoder(i);
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
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            this.delta.decode(bArr, i, read);
            return read;
        } catch (IOException e) {
            this.exception = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int available() {
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        return inputStream.available();
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
