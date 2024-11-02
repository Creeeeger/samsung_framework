package okio;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.core.animation.ValueAnimator$$ExternalSyntheticOutline0;
import com.android.systemui.ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Flushable;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okio.internal.BufferKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Buffer implements BufferedSource, Closeable, Flushable, WritableByteChannel, Cloneable, ByteChannel {
    public Segment head;
    public long size;

    public final Object clone() {
        Buffer buffer = new Buffer();
        if (this.size != 0) {
            Segment segment = this.head;
            if (segment != null) {
                Segment sharedCopy = segment.sharedCopy();
                buffer.head = sharedCopy;
                sharedCopy.prev = sharedCopy;
                sharedCopy.next = sharedCopy;
                for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                    Segment segment3 = sharedCopy.prev;
                    if (segment3 != null) {
                        if (segment2 != null) {
                            segment3.push(segment2.sharedCopy());
                        } else {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
                buffer.size = this.size;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        return buffer;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Buffer) {
                long j = this.size;
                Buffer buffer = (Buffer) obj;
                if (j == buffer.size) {
                    if (j != 0) {
                        Segment segment = this.head;
                        if (segment != null) {
                            Segment segment2 = buffer.head;
                            if (segment2 != null) {
                                int i = segment.pos;
                                int i2 = segment2.pos;
                                long j2 = 0;
                                while (j2 < this.size) {
                                    long min = Math.min(segment.limit - i, segment2.limit - i2);
                                    long j3 = 0;
                                    while (j3 < min) {
                                        int i3 = i + 1;
                                        byte b = segment.data[i];
                                        int i4 = i2 + 1;
                                        if (b == segment2.data[i2]) {
                                            j3++;
                                            i2 = i4;
                                            i = i3;
                                        }
                                    }
                                    if (i == segment.limit) {
                                        Segment segment3 = segment.next;
                                        if (segment3 != null) {
                                            i = segment3.pos;
                                            segment = segment3;
                                        } else {
                                            Intrinsics.throwNpe();
                                            throw null;
                                        }
                                    }
                                    if (i2 == segment2.limit) {
                                        segment2 = segment2.next;
                                        if (segment2 != null) {
                                            i2 = segment2.pos;
                                        } else {
                                            Intrinsics.throwNpe();
                                            throw null;
                                        }
                                    }
                                    j2 += min;
                                }
                            } else {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                        } else {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final byte getByte(long j) {
        Util.checkOffsetAndCount(this.size, j, 1L);
        Segment segment = this.head;
        if (segment != null) {
            long j2 = this.size;
            if (j2 - j < j) {
                while (j2 > j) {
                    segment = segment.prev;
                    if (segment != null) {
                        j2 -= segment.limit - segment.pos;
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
                return segment.data[(int) ((segment.pos + j) - j2)];
            }
            long j3 = 0;
            while (true) {
                int i = segment.limit;
                int i2 = segment.pos;
                long j4 = (i - i2) + j3;
                if (j4 > j) {
                    return segment.data[(int) ((i2 + j) - j3)];
                }
                segment = segment.next;
                if (segment != null) {
                    j3 = j4;
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    public final int hashCode() {
        Segment segment = this.head;
        if (segment != null) {
            int i = 1;
            do {
                int i2 = segment.limit;
                for (int i3 = segment.pos; i3 < i2; i3++) {
                    i = (i * 31) + segment.data[i3];
                }
                segment = segment.next;
                if (segment == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
            } while (segment != this.head);
            return i;
        }
        return 0;
    }

    @Override // okio.BufferedSource
    public final long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0137, code lost:
    
        return r14;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long read(okio.Buffer r13, long r14) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.read(okio.Buffer, long):long");
    }

    public final byte readByte() {
        long j = this.size;
        if (j != 0) {
            Segment segment = this.head;
            if (segment != null) {
                int i = segment.pos;
                int i2 = segment.limit;
                int i3 = i + 1;
                byte b = segment.data[i];
                this.size = j - 1;
                if (i3 == i2) {
                    this.head = segment.pop();
                    SegmentPool.INSTANCE.recycle(segment);
                } else {
                    segment.pos = i3;
                }
                return b;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        throw new EOFException();
    }

    public final byte[] readByteArray(long j) {
        boolean z;
        int i = 0;
        if (j >= 0 && j <= Integer.MAX_VALUE) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.size >= j) {
                int i2 = (int) j;
                byte[] bArr = new byte[i2];
                while (i < i2) {
                    int read = read(bArr, i, i2 - i);
                    if (read != -1) {
                        i += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("byteCount: ", j).toString());
    }

    public final ByteString readByteString() {
        boolean z;
        long j = this.size;
        if (j >= 0 && j <= Integer.MAX_VALUE) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (j >= j) {
                if (j >= 4096) {
                    ByteString snapshot = snapshot((int) j);
                    skip(j);
                    return snapshot;
                }
                return new ByteString(readByteArray(j));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("byteCount: ", j).toString());
    }

    public final String readString(long j, Charset charset) {
        boolean z;
        if (j >= 0 && j <= Integer.MAX_VALUE) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.size >= j) {
                if (j == 0) {
                    return "";
                }
                Segment segment = this.head;
                if (segment != null) {
                    int i = segment.pos;
                    if (i + j > segment.limit) {
                        return new String(readByteArray(j), charset);
                    }
                    int i2 = (int) j;
                    String str = new String(segment.data, i, i2, charset);
                    int i3 = segment.pos + i2;
                    segment.pos = i3;
                    this.size -= j;
                    if (i3 == segment.limit) {
                        this.head = segment.pop();
                        SegmentPool.INSTANCE.recycle(segment);
                    }
                    return str;
                }
                Intrinsics.throwNpe();
                throw null;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("byteCount: ", j).toString());
    }

    public final String readUtf8(long j) {
        return readString(j, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public final boolean request(long j) {
        if (this.size >= j) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSource
    public final int select(Options options) {
        int selectPrefix = BufferKt.selectPrefix(this, options, false);
        if (selectPrefix == -1) {
            return -1;
        }
        skip(options.byteStrings[selectPrefix].getSize$okio());
        return selectPrefix;
    }

    public final void skip(long j) {
        while (j > 0) {
            Segment segment = this.head;
            if (segment != null) {
                int min = (int) Math.min(j, segment.limit - segment.pos);
                long j2 = min;
                this.size -= j2;
                j -= j2;
                int i = segment.pos + min;
                segment.pos = i;
                if (i == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.INSTANCE.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public final ByteString snapshot(int i) {
        if (i == 0) {
            return ByteString.EMPTY;
        }
        Util.checkOffsetAndCount(this.size, 0L, i);
        Segment segment = this.head;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (segment != null) {
                int i5 = segment.limit;
                int i6 = segment.pos;
                if (i5 != i6) {
                    i3 += i5 - i6;
                    i4++;
                    segment = segment.next;
                } else {
                    throw new AssertionError("s.limit == s.pos");
                }
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        byte[][] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = this.head;
        int i7 = 0;
        while (i2 < i) {
            if (segment2 != null) {
                bArr[i7] = segment2.data;
                i2 += segment2.limit - segment2.pos;
                iArr[i7] = Math.min(i2, i);
                iArr[i7 + i4] = segment2.pos;
                segment2.shared = true;
                i7++;
                segment2 = segment2.next;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        return new SegmentedByteString(bArr, iArr);
    }

    public final String toString() {
        boolean z;
        long j = this.size;
        if (j <= Integer.MAX_VALUE) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return snapshot((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.size).toString());
    }

    public final Segment writableSegment$okio(int i) {
        boolean z = true;
        if (i < 1 || i > 8192) {
            z = false;
        }
        if (z) {
            Segment segment = this.head;
            if (segment == null) {
                Segment take = SegmentPool.INSTANCE.take();
                this.head = take;
                take.prev = take;
                take.next = take;
                return take;
            }
            Segment segment2 = segment.prev;
            if (segment2 != null) {
                if (segment2.limit + i <= 8192 && segment2.owner) {
                    return segment2;
                }
                Segment take2 = SegmentPool.INSTANCE.take();
                segment2.push(take2);
                return take2;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i, 8192 - writableSegment$okio.limit);
            byteBuffer.get(writableSegment$okio.data, writableSegment$okio.limit, min);
            i -= min;
            writableSegment$okio.limit += min;
        }
        this.size += remaining;
        return remaining;
    }

    public final void writeByte(int i) {
        Segment writableSegment$okio = writableSegment$okio(1);
        int i2 = writableSegment$okio.limit;
        writableSegment$okio.limit = i2 + 1;
        writableSegment$okio.data[i2] = (byte) i;
        this.size++;
    }

    public final void writeInt(int i) {
        Segment writableSegment$okio = writableSegment$okio(4);
        int i2 = writableSegment$okio.limit;
        int i3 = i2 + 1;
        byte[] bArr = writableSegment$okio.data;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        writableSegment$okio.limit = i5 + 1;
        this.size += 4;
    }

    public final void writeUtf8(int i, int i2, String str) {
        boolean z;
        boolean z2;
        boolean z3;
        char charAt;
        char c;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (i2 >= i) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (i2 <= str.length()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    while (i < i2) {
                        char charAt2 = str.charAt(i);
                        if (charAt2 < 128) {
                            Segment writableSegment$okio = writableSegment$okio(1);
                            int i3 = writableSegment$okio.limit - i;
                            int min = Math.min(i2, 8192 - i3);
                            int i4 = i + 1;
                            byte[] bArr = writableSegment$okio.data;
                            bArr[i + i3] = (byte) charAt2;
                            while (true) {
                                i = i4;
                                if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                    break;
                                }
                                i4 = i + 1;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i5 = writableSegment$okio.limit;
                            int i6 = (i3 + i) - i5;
                            writableSegment$okio.limit = i5 + i6;
                            this.size += i6;
                        } else {
                            if (charAt2 < 2048) {
                                Segment writableSegment$okio2 = writableSegment$okio(2);
                                int i7 = writableSegment$okio2.limit;
                                byte[] bArr2 = writableSegment$okio2.data;
                                bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i7 + 1] = (byte) ((charAt2 & '?') | 128);
                                writableSegment$okio2.limit = i7 + 2;
                                this.size += 2;
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i8 = i + 1;
                                if (i8 < i2) {
                                    c = str.charAt(i8);
                                } else {
                                    c = 0;
                                }
                                if (charAt2 <= 56319 && 56320 <= c && 57343 >= c) {
                                    int i9 = (((charAt2 & 1023) << 10) | (c & 1023)) + 65536;
                                    Segment writableSegment$okio3 = writableSegment$okio(4);
                                    int i10 = writableSegment$okio3.limit;
                                    byte b = (byte) ((i9 >> 18) | IKnoxCustomManager.Stub.TRANSACTION_getFavoriteApp);
                                    byte[] bArr3 = writableSegment$okio3.data;
                                    bArr3[i10] = b;
                                    bArr3[i10 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                                    bArr3[i10 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                                    bArr3[i10 + 3] = (byte) ((i9 & 63) | 128);
                                    writableSegment$okio3.limit = i10 + 4;
                                    this.size += 4;
                                    i += 2;
                                } else {
                                    writeByte(63);
                                    i = i8;
                                }
                            } else {
                                Segment writableSegment$okio4 = writableSegment$okio(3);
                                int i11 = writableSegment$okio4.limit;
                                byte b2 = (byte) ((charAt2 >> '\f') | IKnoxCustomManager.Stub.TRANSACTION_setUsbConnectionType);
                                byte[] bArr4 = writableSegment$okio4.data;
                                bArr4[i11] = b2;
                                bArr4[i11 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr4[i11 + 2] = (byte) ((charAt2 & '?') | 128);
                                writableSegment$okio4.limit = i11 + 3;
                                this.size += 3;
                            }
                            i++;
                        }
                    }
                    return;
                }
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("endIndex > string.length: ", i2, " > ");
                m.append(str.length());
                throw new IllegalArgumentException(m.toString().toString());
            }
            throw new IllegalArgumentException(ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("endIndex < beginIndex: ", i2, " < ", i).toString());
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("beginIndex < 0: ", i).toString());
    }

    public final long indexOfElement(ByteString byteString, long j) {
        int i;
        int i2;
        int i3;
        int i4;
        long j2 = 0;
        if (j >= 0) {
            Segment segment = this.head;
            if (segment != null) {
                long j3 = this.size;
                if (j3 - j < j) {
                    while (j3 > j) {
                        segment = segment.prev;
                        if (segment != null) {
                            j3 -= segment.limit - segment.pos;
                        } else {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    }
                    if (byteString.getSize$okio() == 2) {
                        byte internalGet$okio = byteString.internalGet$okio(0);
                        byte internalGet$okio2 = byteString.internalGet$okio(1);
                        while (j3 < this.size) {
                            i3 = (int) ((segment.pos + j) - j3);
                            int i5 = segment.limit;
                            while (i3 < i5) {
                                byte b = segment.data[i3];
                                if (b == internalGet$okio || b == internalGet$okio2) {
                                    i4 = segment.pos;
                                    return (i3 - i4) + j3;
                                }
                                i3++;
                            }
                            j3 += segment.limit - segment.pos;
                            segment = segment.next;
                            if (segment == null) {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                            j = j3;
                        }
                    } else {
                        byte[] internalArray$okio = byteString.internalArray$okio();
                        while (j3 < this.size) {
                            i3 = (int) ((segment.pos + j) - j3);
                            int i6 = segment.limit;
                            while (i3 < i6) {
                                byte b2 = segment.data[i3];
                                for (byte b3 : internalArray$okio) {
                                    if (b2 == b3) {
                                        i4 = segment.pos;
                                        return (i3 - i4) + j3;
                                    }
                                }
                                i3++;
                            }
                            j3 += segment.limit - segment.pos;
                            segment = segment.next;
                            if (segment == null) {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                            j = j3;
                        }
                    }
                } else {
                    while (true) {
                        long j4 = (segment.limit - segment.pos) + j2;
                        if (j4 > j) {
                            if (byteString.getSize$okio() == 2) {
                                byte internalGet$okio3 = byteString.internalGet$okio(0);
                                byte internalGet$okio4 = byteString.internalGet$okio(1);
                                while (j2 < this.size) {
                                    i = (int) ((segment.pos + j) - j2);
                                    int i7 = segment.limit;
                                    while (i < i7) {
                                        byte b4 = segment.data[i];
                                        if (b4 == internalGet$okio3 || b4 == internalGet$okio4) {
                                            i2 = segment.pos;
                                            return (i - i2) + j2;
                                        }
                                        i++;
                                    }
                                    j2 += segment.limit - segment.pos;
                                    segment = segment.next;
                                    if (segment == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    j = j2;
                                }
                            } else {
                                byte[] internalArray$okio2 = byteString.internalArray$okio();
                                while (j2 < this.size) {
                                    i = (int) ((segment.pos + j) - j2);
                                    int i8 = segment.limit;
                                    while (i < i8) {
                                        byte b5 = segment.data[i];
                                        for (byte b6 : internalArray$okio2) {
                                            if (b5 == b6) {
                                                i2 = segment.pos;
                                                return (i - i2) + j2;
                                            }
                                        }
                                        i++;
                                    }
                                    j2 += segment.limit - segment.pos;
                                    segment = segment.next;
                                    if (segment == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    j = j2;
                                }
                            }
                        } else {
                            segment = segment.next;
                            if (segment == null) {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                            j2 = j4;
                        }
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(ValueAnimator$$ExternalSyntheticOutline0.m("fromIndex < 0: ", j).toString());
    }

    @Override // okio.BufferedSource
    public final Buffer buffer() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
    }

    @Override // java.io.Flushable
    public final void flush() {
    }

    @Override // okio.BufferedSource
    public final Buffer getBuffer() {
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, min);
        int i = segment.pos + min;
        segment.pos = i;
        this.size -= min;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.INSTANCE.recycle(segment);
        }
        return min;
    }

    public final int read(byte[] bArr, int i, int i2) {
        Util.checkOffsetAndCount(bArr.length, i, i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.limit - segment.pos);
        int i3 = segment.pos;
        System.arraycopy(segment.data, i3, bArr, i, (i3 + min) - i3);
        int i4 = segment.pos + min;
        segment.pos = i4;
        this.size -= min;
        if (i4 != segment.limit) {
            return min;
        }
        this.head = segment.pop();
        SegmentPool.INSTANCE.recycle(segment);
        return min;
    }
}
