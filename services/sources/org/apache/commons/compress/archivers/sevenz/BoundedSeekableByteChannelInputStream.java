package org.apache.commons.compress.archivers.sevenz;

import android.os.IInstalld;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* loaded from: classes2.dex */
public class BoundedSeekableByteChannelInputStream extends InputStream {
    public final ByteBuffer buffer;
    public long bytesRemaining;
    public final SeekableByteChannel channel;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public BoundedSeekableByteChannelInputStream(SeekableByteChannel seekableByteChannel, long j) {
        this.channel = seekableByteChannel;
        this.bytesRemaining = j;
        if (j < 8192 && j > 0) {
            this.buffer = ByteBuffer.allocate((int) j);
        } else {
            this.buffer = ByteBuffer.allocate(IInstalld.FLAG_FORCE);
        }
    }

    @Override // java.io.InputStream
    public int read() {
        long j = this.bytesRemaining;
        if (j <= 0) {
            return -1;
        }
        this.bytesRemaining = j - 1;
        int read = read(1);
        return read < 0 ? read : this.buffer.get() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
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
            read = read(i2);
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

    public final int read(int i) {
        this.buffer.rewind().limit(i);
        int read = this.channel.read(this.buffer);
        this.buffer.flip();
        return read;
    }
}
