package okio;

import androidx.core.animation.ValueAnimator$$ExternalSyntheticOutline0;
import java.io.IOException;
import java.io.InputStream;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class InputStreamSource implements Source {
    public final InputStream input;
    public final Timeout timeout;

    public InputStreamSource(InputStream inputStream, Timeout timeout) {
        this.input = inputStream;
        this.timeout = timeout;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.input.close();
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j) {
        boolean z;
        boolean z2;
        if (j == 0) {
            return 0L;
        }
        boolean z3 = false;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            try {
                this.timeout.throwIfReached();
                Segment writableSegment$okio = buffer.writableSegment$okio(1);
                int read = this.input.read(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j, 8192 - writableSegment$okio.limit));
                if (read == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        buffer.head = writableSegment$okio.pop();
                        SegmentPool.INSTANCE.recycle(writableSegment$okio);
                        return -1L;
                    }
                    return -1L;
                }
                writableSegment$okio.limit += read;
                long j2 = read;
                buffer.size += j2;
                return j2;
            } catch (AssertionError e) {
                if (e.getCause() != null) {
                    String message = e.getMessage();
                    if (message != null) {
                        z2 = StringsKt__StringsKt.contains(message, "getsockname failed", false);
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        z3 = true;
                    }
                }
                if (z3) {
                    throw new IOException(e);
                }
                throw e;
            }
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("byteCount < 0: ", j).toString());
    }

    public final String toString() {
        return "source(" + this.input + ')';
    }
}
