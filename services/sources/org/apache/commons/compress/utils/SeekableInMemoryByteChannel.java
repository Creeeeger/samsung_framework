package org.apache.commons.compress.utils;

import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SeekableByteChannel;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class SeekableInMemoryByteChannel implements SeekableByteChannel {
    public final AtomicBoolean closed = new AtomicBoolean();
    public byte[] data;
    public int position;
    public int size;

    public SeekableInMemoryByteChannel(byte[] bArr) {
        this.data = bArr;
        this.size = bArr.length;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.closed.set(true);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.closed.get();
    }

    @Override // java.nio.channels.SeekableByteChannel
    public final long position() {
        return this.position;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public final SeekableByteChannel position(long j) {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        if (j < 0 || j > 2147483647L) {
            throw new IllegalArgumentException("Position has to be in range 0.. 2147483647");
        }
        this.position = (int) j;
        return this;
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        int i = this.position;
        int i2 = this.size;
        if (i > i2) {
            this.position = i2;
        }
        int remaining = byteBuffer.remaining();
        int i3 = this.size;
        int i4 = this.position;
        int i5 = i3 - i4;
        if (i5 <= 0) {
            return -1;
        }
        if (remaining > i5) {
            remaining = i5;
        }
        byteBuffer.put(this.data, i4, remaining);
        this.position += remaining;
        return remaining;
    }

    public final void resize(int i) {
        int length = this.data.length;
        if (length <= 0) {
            length = 1;
        }
        if (i < 1073741823) {
            while (length < i) {
                length <<= 1;
            }
            i = length;
        }
        this.data = Arrays.copyOf(this.data, i);
    }

    @Override // java.nio.channels.SeekableByteChannel
    public final long size() {
        return this.size;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public final SeekableByteChannel truncate(long j) {
        if (this.size > j) {
            this.size = (int) j;
        }
        int i = this.position;
        int i2 = this.size;
        if (i > i2) {
            this.position = i2;
        }
        return this;
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        int remaining = byteBuffer.remaining();
        int i = this.size;
        int i2 = this.position;
        if (remaining > i - i2) {
            int i3 = i2 + remaining;
            if (i3 < 0) {
                resize(Integer.MAX_VALUE);
                remaining = Integer.MAX_VALUE - this.position;
            } else {
                resize(i3);
            }
        }
        byteBuffer.get(this.data, this.position, remaining);
        int i4 = this.position + remaining;
        this.position = i4;
        if (this.size < i4) {
            this.size = i4;
        }
        return remaining;
    }
}
