package com.google.protobuf.nano;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CodedOutputByteBufferNano {
    public final ByteBuffer buffer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException(int i, int i2) {
            super(SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("CodedOutputStream was writing to a flat byte array and ran out of space (pos ", i, " limit ", i2, ")."));
        }
    }

    private CodedOutputByteBufferNano(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int computeInt32Size(int i, int i2) {
        int i3;
        int computeTagSize = computeTagSize(i);
        if (i2 >= 0) {
            i3 = computeRawVarint32Size(i2);
        } else {
            i3 = 10;
        }
        return computeTagSize + i3;
    }

    public static int computeInt64Size(int i, long j) {
        int i2;
        int computeTagSize = computeTagSize(i);
        if (((-128) & j) == 0) {
            i2 = 1;
        } else if (((-16384) & j) == 0) {
            i2 = 2;
        } else if (((-2097152) & j) == 0) {
            i2 = 3;
        } else if (((-268435456) & j) == 0) {
            i2 = 4;
        } else if (((-34359738368L) & j) == 0) {
            i2 = 5;
        } else if (((-4398046511104L) & j) == 0) {
            i2 = 6;
        } else if (((-562949953421312L) & j) == 0) {
            i2 = 7;
        } else if (((-72057594037927936L) & j) == 0) {
            i2 = 8;
        } else if ((j & Long.MIN_VALUE) == 0) {
            i2 = 9;
        } else {
            i2 = 10;
        }
        return computeTagSize + i2;
    }

    public static int computeMessageSize(int i, MessageNano messageNano) {
        int computeTagSize = computeTagSize(i);
        int serializedSize = messageNano.getSerializedSize();
        return computeRawVarint32Size(serializedSize) + serializedSize + computeTagSize;
    }

    public static int computeRawVarint32Size(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        if ((i & (-268435456)) == 0) {
            return 4;
        }
        return 5;
    }

    public static int computeStringSize(int i, String str) {
        int computeTagSize = computeTagSize(i);
        int encodedLength = encodedLength(str);
        return computeRawVarint32Size(encodedLength) + encodedLength + computeTagSize;
    }

    public static int computeTagSize(int i) {
        return computeRawVarint32Size((i << 3) | 0);
    }

    public static void encode(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (!byteBuffer.isReadOnly()) {
            if (byteBuffer.hasArray()) {
                try {
                    byteBuffer.position(encode(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
                    return;
                } catch (ArrayIndexOutOfBoundsException e) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e);
                    throw bufferOverflowException;
                }
            }
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                char charAt = charSequence.charAt(i);
                if (charAt < 128) {
                    byteBuffer.put((byte) charAt);
                } else if (charAt < 2048) {
                    byteBuffer.put((byte) ((charAt >>> 6) | 960));
                    byteBuffer.put((byte) ((charAt & '?') | 128));
                } else {
                    if (charAt >= 55296 && 57343 >= charAt) {
                        int i2 = i + 1;
                        if (i2 != charSequence.length()) {
                            char charAt2 = charSequence.charAt(i2);
                            if (Character.isSurrogatePair(charAt, charAt2)) {
                                int codePoint = Character.toCodePoint(charAt, charAt2);
                                byteBuffer.put((byte) ((codePoint >>> 18) | IKnoxCustomManager.Stub.TRANSACTION_getFavoriteApp));
                                byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint & 63) | 128));
                                i = i2;
                            } else {
                                i = i2;
                            }
                        }
                        StringBuilder sb = new StringBuilder("Unpaired surrogate at index ");
                        sb.append(i - 1);
                        throw new IllegalArgumentException(sb.toString());
                    }
                    byteBuffer.put((byte) ((charAt >>> '\f') | VolteConstants.ErrorCode.TEMPORARILY_UNAVAILABLE));
                    byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                    byteBuffer.put((byte) ((charAt & '?') | 128));
                }
                i++;
            }
            return;
        }
        throw new ReadOnlyBufferException();
    }

    public static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char charAt2 = charSequence.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) >= 65536) {
                                i2++;
                            } else {
                                throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unpaired surrogate at index ", i2));
                            }
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + SemWallpaperColorsWrapper.LOCKSCREEN_STATUS_BAR));
    }

    public static CodedOutputByteBufferNano newInstance(byte[] bArr, int i, int i2) {
        return new CodedOutputByteBufferNano(bArr, i, i2);
    }

    public final void writeFixed64(int i, long j) {
        writeTag(i, 1);
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer.remaining() >= 8) {
            byteBuffer.putLong(j);
            return;
        }
        throw new OutOfSpaceException(byteBuffer.position(), byteBuffer.limit());
    }

    public final void writeInt32(int i, int i2) {
        writeTag(i, 0);
        if (i2 >= 0) {
            writeRawVarint32(i2);
            return;
        }
        long j = i2;
        while (((-128) & j) != 0) {
            writeRawByte((((int) j) & 127) | 128);
            j >>>= 7;
        }
        writeRawByte((int) j);
    }

    public final void writeMessage(int i, MessageNano messageNano) {
        writeTag(i, 2);
        writeRawVarint32(messageNano.getCachedSize());
        messageNano.writeTo(this);
    }

    public final void writeRawByte(int i) {
        byte b = (byte) i;
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer.hasRemaining()) {
            byteBuffer.put(b);
            return;
        }
        throw new OutOfSpaceException(byteBuffer.position(), byteBuffer.limit());
    }

    public final void writeRawVarint32(int i) {
        while ((i & (-128)) != 0) {
            writeRawByte((i & 127) | 128);
            i >>>= 7;
        }
        writeRawByte(i);
    }

    public final void writeString(int i, String str) {
        writeTag(i, 2);
        ByteBuffer byteBuffer = this.buffer;
        try {
            int computeRawVarint32Size = computeRawVarint32Size(str.length());
            if (computeRawVarint32Size == computeRawVarint32Size(str.length() * 3)) {
                int position = byteBuffer.position();
                if (byteBuffer.remaining() >= computeRawVarint32Size) {
                    byteBuffer.position(position + computeRawVarint32Size);
                    encode(str, byteBuffer);
                    int position2 = byteBuffer.position();
                    byteBuffer.position(position);
                    writeRawVarint32((position2 - position) - computeRawVarint32Size);
                    byteBuffer.position(position2);
                    return;
                }
                throw new OutOfSpaceException(position + computeRawVarint32Size, byteBuffer.limit());
            }
            writeRawVarint32(encodedLength(str));
            encode(str, byteBuffer);
        } catch (BufferOverflowException e) {
            OutOfSpaceException outOfSpaceException = new OutOfSpaceException(byteBuffer.position(), byteBuffer.limit());
            outOfSpaceException.initCause(e);
            throw outOfSpaceException;
        }
    }

    public final void writeTag(int i, int i2) {
        writeRawVarint32((i << 3) | i2);
    }

    private CodedOutputByteBufferNano(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r8 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int encode(java.lang.CharSequence r6, byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.nano.CodedOutputByteBufferNano.encode(java.lang.CharSequence, byte[], int, int):int");
    }
}
