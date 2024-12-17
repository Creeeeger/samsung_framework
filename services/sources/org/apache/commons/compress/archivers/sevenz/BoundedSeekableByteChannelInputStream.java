package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class BoundedSeekableByteChannelInputStream extends InputStream {
    public final ByteBuffer buffer;
    public long bytesRemaining;
    public final SeekableByteChannel channel;

    public BoundedSeekableByteChannelInputStream(SeekableByteChannel seekableByteChannel, long j) {
        this.channel = seekableByteChannel;
        this.bytesRemaining = j;
        if (j >= 8192 || j <= 0) {
            this.buffer = ByteBuffer.allocate(8192);
        } else {
            this.buffer = ByteBuffer.allocate((int) j);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read() {
        long j = this.bytesRemaining;
        if (j <= 0) {
            return -1;
        }
        this.bytesRemaining = j - 1;
        this.buffer.rewind().limit(1);
        int read = this.channel.read(this.buffer);
        this.buffer.flip();
        return read < 0 ? read : this.buffer.get() & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        ByteBuffer allocate;
        int read;
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (i2 > j) {
            i2 = (int) j;
        }
        if (i2 <= this.buffer.capacity()) {
            allocate = this.buffer;
            allocate.rewind().limit(i2);
            read = this.channel.read(this.buffer);
            this.buffer.flip();
        } else {
            allocate = ByteBuffer.allocate(i2);
            read = this.channel.read(allocate);
            allocate.flip();
        }
        if (read >= 0) {
            allocate.get(bArr, i, read);
            this.bytesRemaining -= read;
        }
        return read;
    }
}
