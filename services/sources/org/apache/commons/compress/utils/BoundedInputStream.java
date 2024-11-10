package org.apache.commons.compress.utils;

import java.io.InputStream;

/* loaded from: classes2.dex */
public class BoundedInputStream extends InputStream {
    public long bytesRemaining;
    public final InputStream in;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public BoundedInputStream(InputStream inputStream, long j) {
        this.in = inputStream;
        this.bytesRemaining = j;
    }

    @Override // java.io.InputStream
    public int read() {
        long j = this.bytesRemaining;
        if (j <= 0) {
            return -1;
        }
        this.bytesRemaining = j - 1;
        return this.in.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (i2 > j) {
            i2 = (int) j;
        }
        int read = this.in.read(bArr, i, i2);
        if (read >= 0) {
            this.bytesRemaining -= read;
        }
        return read;
    }
}
