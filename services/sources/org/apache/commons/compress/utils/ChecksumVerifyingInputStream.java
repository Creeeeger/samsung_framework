package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Checksum;

/* loaded from: classes2.dex */
public abstract class ChecksumVerifyingInputStream extends InputStream {
    public long bytesRemaining;
    public final Checksum checksum;
    public final long expectedChecksum;
    public final InputStream in;

    public ChecksumVerifyingInputStream(Checksum checksum, InputStream inputStream, long j, long j2) {
        this.checksum = checksum;
        this.in = inputStream;
        this.expectedChecksum = j2;
        this.bytesRemaining = j;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.bytesRemaining <= 0) {
            return -1;
        }
        int read = this.in.read();
        if (read >= 0) {
            this.checksum.update(read);
            this.bytesRemaining--;
        }
        if (this.bytesRemaining != 0 || this.expectedChecksum == this.checksum.getValue()) {
            return read;
        }
        throw new IOException("Checksum verification failed");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = this.in.read(bArr, i, i2);
        if (read >= 0) {
            this.checksum.update(bArr, i, read);
            this.bytesRemaining -= read;
        }
        if (this.bytesRemaining > 0 || this.expectedChecksum == this.checksum.getValue()) {
            return read;
        }
        throw new IOException("Checksum verification failed");
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        return read() >= 0 ? 1L : 0L;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.in.close();
    }
}
