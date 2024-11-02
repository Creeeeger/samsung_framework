package okio;

import androidx.core.animation.ValueAnimator$$ExternalSyntheticOutline0;
import com.sec.ims.presence.ServiceTuple;
import java.io.EOFException;
import java.nio.ByteBuffer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RealBufferedSource implements BufferedSource {
    public final Buffer bufferField = new Buffer();
    public boolean closed;
    public final Source source;

    public RealBufferedSource(Source source) {
        this.source = source;
    }

    @Override // okio.BufferedSource
    public final Buffer buffer() {
        return this.bufferField;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (!this.closed) {
            this.closed = true;
            this.source.close();
            Buffer buffer = this.bufferField;
            buffer.skip(buffer.size);
        }
    }

    @Override // okio.BufferedSource
    public final Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource
    public final long indexOfElement(ByteString byteString) {
        if (!this.closed) {
            long j = 0;
            while (true) {
                long indexOfElement = this.bufferField.indexOfElement(byteString, j);
                if (indexOfElement == -1) {
                    Buffer buffer = this.bufferField;
                    long j2 = buffer.size;
                    if (this.source.read(buffer, 8192) == -1) {
                        return -1L;
                    }
                    j = Math.max(j, j2);
                } else {
                    return indexOfElement;
                }
            }
        } else {
            throw new IllegalStateException(ServiceTuple.BASIC_STATUS_CLOSED.toString());
        }
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.closed;
    }

    public final RealBufferedSource peek() {
        return new RealBufferedSource(new PeekSource(this));
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j) {
        if (j >= 0) {
            if (!this.closed) {
                Buffer buffer2 = this.bufferField;
                if (buffer2.size == 0 && this.source.read(buffer2, 8192) == -1) {
                    return -1L;
                }
                return this.bufferField.read(buffer, Math.min(j, this.bufferField.size));
            }
            throw new IllegalStateException(ServiceTuple.BASIC_STATUS_CLOSED.toString());
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("byteCount < 0: ", j).toString());
    }

    public final byte readByte() {
        if (request(1L)) {
            return this.bufferField.readByte();
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final boolean request(long j) {
        boolean z;
        Buffer buffer;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (!(!this.closed)) {
                throw new IllegalStateException(ServiceTuple.BASIC_STATUS_CLOSED.toString());
            }
            do {
                buffer = this.bufferField;
                if (buffer.size >= j) {
                    return true;
                }
            } while (this.source.read(buffer, 8192) != -1);
            return false;
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("byteCount < 0: ", j).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:?, code lost:
    
        return -1;
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int select(okio.Options r9) {
        /*
            r8 = this;
            boolean r0 = r8.closed
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L36
        L6:
            okio.Buffer r0 = r8.bufferField
            int r0 = okio.internal.BufferKt.selectPrefix(r0, r9, r1)
            r2 = -2
            r3 = -1
            if (r0 == r2) goto L23
            if (r0 == r3) goto L21
            okio.ByteString[] r9 = r9.byteStrings
            r9 = r9[r0]
            int r9 = r9.getSize$okio()
            okio.Buffer r8 = r8.bufferField
            long r1 = (long) r9
            r8.skip(r1)
            goto L35
        L21:
            r0 = r3
            goto L35
        L23:
            okio.Source r0 = r8.source
            okio.Buffer r2 = r8.bufferField
            r4 = 8192(0x2000, float:1.14794E-41)
            long r4 = (long) r4
            long r4 = r0.read(r2, r4)
            r6 = -1
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L6
            goto L21
        L35:
            return r0
        L36:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "closed"
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.select(okio.Options):int");
    }

    public final String toString() {
        return "buffer(" + this.source + ')';
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        Buffer buffer = this.bufferField;
        if (buffer.size == 0 && this.source.read(buffer, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(byteBuffer);
    }
}
