package com.google.protobuf;

import com.android.systemui.ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.sec.ims.volte2.data.VolteConstants;
import java.nio.charset.Charset;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Utf8 {
    public static final Processor processor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DecodeUtil {
        private DecodeUtil() {
        }

        public static boolean isNotTrailingByte(byte b) {
            if (b > -65) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class Processor {
        public abstract String decodeUtf8(byte[] bArr, int i, int i2);

        public abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2);

        public abstract int partialIsValidUtf8(int i, int i2, byte[] bArr);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SafeProcessor extends Processor {
        @Override // com.google.protobuf.Utf8.Processor
        public final String decodeUtf8(byte[] bArr, int i, int i2) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            int i3;
            int i4;
            boolean z5;
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i5 = i + i2;
                char[] cArr = new char[i2];
                int i6 = 0;
                while (i < i5) {
                    byte b = bArr[i];
                    if (b >= 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (!z5) {
                        break;
                    }
                    i++;
                    cArr[i6] = (char) b;
                    i6++;
                }
                while (i < i5) {
                    int i7 = i + 1;
                    byte b2 = bArr[i];
                    if (b2 >= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        int i8 = i6 + 1;
                        cArr[i6] = (char) b2;
                        i = i7;
                        while (true) {
                            i6 = i8;
                            if (i >= i5) {
                                break;
                            }
                            byte b3 = bArr[i];
                            if (b3 >= 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (!z2) {
                                break;
                            }
                            i++;
                            i8 = i6 + 1;
                            cArr[i6] = (char) b3;
                        }
                    } else {
                        if (b2 < -32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            if (i7 < i5) {
                                int i9 = i7 + 1;
                                byte b4 = bArr[i7];
                                int i10 = i6 + 1;
                                if (b2 >= -62 && !DecodeUtil.isNotTrailingByte(b4)) {
                                    cArr[i6] = (char) (((b2 & 31) << 6) | (b4 & 63));
                                    i = i9;
                                    i6 = i10;
                                } else {
                                    throw InvalidProtocolBufferException.invalidUtf8();
                                }
                            } else {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                        } else {
                            if (b2 < -16) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (z4) {
                                if (i7 < i5 - 1) {
                                    int i11 = i7 + 1;
                                    byte b5 = bArr[i7];
                                    i3 = i11 + 1;
                                    byte b6 = bArr[i11];
                                    i4 = i6 + 1;
                                    if (!DecodeUtil.isNotTrailingByte(b5) && ((b2 != -32 || b5 >= -96) && ((b2 != -19 || b5 < -96) && !DecodeUtil.isNotTrailingByte(b6)))) {
                                        cArr[i6] = (char) (((b2 & 15) << 12) | ((b5 & 63) << 6) | (b6 & 63));
                                    } else {
                                        throw InvalidProtocolBufferException.invalidUtf8();
                                    }
                                } else {
                                    throw InvalidProtocolBufferException.invalidUtf8();
                                }
                            } else {
                                if (i7 < i5 - 2) {
                                    int i12 = i7 + 1;
                                    byte b7 = bArr[i7];
                                    int i13 = i12 + 1;
                                    byte b8 = bArr[i12];
                                    i3 = i13 + 1;
                                    byte b9 = bArr[i13];
                                    int i14 = i6 + 1;
                                    if (!DecodeUtil.isNotTrailingByte(b7)) {
                                        if ((((b7 + 112) + (b2 << 28)) >> 30) == 0 && !DecodeUtil.isNotTrailingByte(b8) && !DecodeUtil.isNotTrailingByte(b9)) {
                                            int i15 = ((b2 & 7) << 18) | ((b7 & 63) << 12) | ((b8 & 63) << 6) | (b9 & 63);
                                            cArr[i6] = (char) ((i15 >>> 10) + 55232);
                                            cArr[i14] = (char) ((i15 & 1023) + 56320);
                                            i4 = i14 + 1;
                                        }
                                    }
                                    throw InvalidProtocolBufferException.invalidUtf8();
                                }
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                            i = i3;
                            i6 = i4;
                        }
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        
            return r9 + r6;
         */
        @Override // com.google.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final int encodeUtf8(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
            /*
                Method dump skipped, instructions count: 250
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.SafeProcessor.encodeUtf8(java.lang.CharSequence, byte[], int, int):int");
        }

        @Override // com.google.protobuf.Utf8.Processor
        public final int partialIsValidUtf8(int i, int i2, byte[] bArr) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            if (i < i2) {
                while (i < i2) {
                    int i3 = i + 1;
                    byte b = bArr[i];
                    if (b < 0) {
                        if (b < -32) {
                            if (i3 >= i2) {
                                return b;
                            }
                            if (b >= -62) {
                                i = i3 + 1;
                                if (bArr[i3] > -65) {
                                }
                            }
                            return -1;
                        }
                        if (b < -16) {
                            if (i3 >= i2 - 1) {
                                return Utf8.access$1100(bArr, i3, i2);
                            }
                            int i4 = i3 + 1;
                            byte b2 = bArr[i3];
                            if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                                i = i4 + 1;
                                if (bArr[i4] > -65) {
                                }
                            }
                            return -1;
                        }
                        if (i3 >= i2 - 2) {
                            return Utf8.access$1100(bArr, i3, i2);
                        }
                        int i5 = i3 + 1;
                        byte b3 = bArr[i3];
                        if (b3 <= -65) {
                            if ((((b3 + 112) + (b << 28)) >> 30) == 0) {
                                int i6 = i5 + 1;
                                if (bArr[i5] <= -65) {
                                    i = i6 + 1;
                                    if (bArr[i6] > -65) {
                                    }
                                }
                            }
                        }
                        return -1;
                    }
                    i = i3;
                }
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super(ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("Unpaired surrogate at index ", i, " of ", i2));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class UnsafeProcessor extends Processor {
        public static int unsafeIncompleteStateFor(int i, int i2, long j, byte[] bArr) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j), UnsafeUtil.getByte(bArr, j + 1));
                    }
                    throw new AssertionError();
                }
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j));
            }
            Processor processor = Utf8.processor;
            if (i > -12) {
                return -1;
            }
            return i;
        }

        @Override // com.google.protobuf.Utf8.Processor
        public final String decodeUtf8(byte[] bArr, int i, int i2) {
            Charset charset = Internal.UTF_8;
            String str = new String(bArr, i, i2, charset);
            if (!str.contains("�")) {
                return str;
            }
            if (Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i, i2 + i))) {
                return str;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        @Override // com.google.protobuf.Utf8.Processor
        public final int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2) {
            long j;
            char c;
            long j2;
            long j3;
            char c2;
            int i3;
            char charAt;
            long j4 = i;
            long j5 = i2 + j4;
            int length = charSequence.length();
            if (length <= i2 && bArr.length - i2 >= i) {
                int i4 = 0;
                while (true) {
                    j = 1;
                    c = 128;
                    if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                        break;
                    }
                    UnsafeUtil.putByte(bArr, j4, (byte) charAt);
                    i4++;
                    j4 = 1 + j4;
                }
                if (i4 == length) {
                    return (int) j4;
                }
                while (i4 < length) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < c && j4 < j5) {
                        long j6 = j4 + j;
                        UnsafeUtil.putByte(bArr, j4, (byte) charAt2);
                        j3 = j;
                        j2 = j6;
                        c2 = c;
                    } else if (charAt2 < 2048 && j4 <= j5 - 2) {
                        long j7 = j4 + j;
                        UnsafeUtil.putByte(bArr, j4, (byte) ((charAt2 >>> 6) | 960));
                        long j8 = j7 + j;
                        UnsafeUtil.putByte(bArr, j7, (byte) ((charAt2 & '?') | 128));
                        long j9 = j;
                        c2 = 128;
                        j2 = j8;
                        j3 = j9;
                    } else if ((charAt2 < 55296 || 57343 < charAt2) && j4 <= j5 - 3) {
                        long j10 = j4 + j;
                        UnsafeUtil.putByte(bArr, j4, (byte) ((charAt2 >>> '\f') | VolteConstants.ErrorCode.TEMPORARILY_UNAVAILABLE));
                        long j11 = j10 + j;
                        UnsafeUtil.putByte(bArr, j10, (byte) (((charAt2 >>> 6) & 63) | 128));
                        UnsafeUtil.putByte(bArr, j11, (byte) ((charAt2 & '?') | 128));
                        j2 = j11 + 1;
                        j3 = 1;
                        c2 = 128;
                    } else {
                        if (j4 <= j5 - 4) {
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char charAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    long j12 = j4 + 1;
                                    UnsafeUtil.putByte(bArr, j4, (byte) ((codePoint >>> 18) | IKnoxCustomManager.Stub.TRANSACTION_getFavoriteApp));
                                    long j13 = j12 + 1;
                                    c2 = 128;
                                    UnsafeUtil.putByte(bArr, j12, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j14 = j13 + 1;
                                    UnsafeUtil.putByte(bArr, j13, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j2 = j14 + 1;
                                    UnsafeUtil.putByte(bArr, j14, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new UnpairedSurrogateException(i4 - 1, length);
                        }
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                            throw new UnpairedSurrogateException(i4, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j4);
                    }
                    i4++;
                    c = c2;
                    long j15 = j3;
                    j4 = j2;
                    j = j15;
                }
                return (int) j4;
            }
            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i + i2));
        }

        @Override // com.google.protobuf.Utf8.Processor
        public final int partialIsValidUtf8(int i, int i2, byte[] bArr) {
            int i3;
            long j;
            if ((i | i2 | (bArr.length - i2)) >= 0) {
                long j2 = i;
                int i4 = (int) (i2 - j2);
                if (i4 < 16) {
                    i3 = 0;
                } else {
                    int i5 = 8 - (((int) j2) & 7);
                    long j3 = j2;
                    i3 = 0;
                    while (true) {
                        if (i3 >= i5) {
                            while (true) {
                                int i6 = i3 + 8;
                                if (i6 > i4 || (UnsafeUtil.getLong(UnsafeUtil.BYTE_ARRAY_BASE_OFFSET + j3, bArr) & (-9187201950435737472L)) != 0) {
                                    break;
                                }
                                j3 += 8;
                                i3 = i6;
                            }
                            while (true) {
                                if (i3 < i4) {
                                    long j4 = j3 + 1;
                                    if (UnsafeUtil.getByte(bArr, j3) < 0) {
                                        break;
                                    }
                                    i3++;
                                    j3 = j4;
                                } else {
                                    i3 = i4;
                                    break;
                                }
                            }
                        } else {
                            long j5 = j3 + 1;
                            if (UnsafeUtil.getByte(bArr, j3) < 0) {
                                break;
                            }
                            i3++;
                            j3 = j5;
                        }
                    }
                }
                int i7 = i4 - i3;
                long j6 = j2 + i3;
                while (true) {
                    byte b = 0;
                    while (true) {
                        if (i7 <= 0) {
                            break;
                        }
                        long j7 = j6 + 1;
                        b = UnsafeUtil.getByte(bArr, j6);
                        if (b >= 0) {
                            i7--;
                            j6 = j7;
                        } else {
                            j6 = j7;
                            break;
                        }
                    }
                    if (i7 == 0) {
                        return 0;
                    }
                    int i8 = i7 - 1;
                    if (b < -32) {
                        if (i8 == 0) {
                            return b;
                        }
                        i7 = i8 - 1;
                        if (b < -62) {
                            break;
                        }
                        j = j6 + 1;
                        if (UnsafeUtil.getByte(bArr, j6) > -65) {
                            break;
                        }
                        j6 = j;
                    } else if (b < -16) {
                        if (i8 < 2) {
                            return unsafeIncompleteStateFor(b, i8, j6, bArr);
                        }
                        i7 = i8 - 2;
                        long j8 = j6 + 1;
                        byte b2 = UnsafeUtil.getByte(bArr, j6);
                        if (b2 > -65 || ((b == -32 && b2 < -96) || (b == -19 && b2 >= -96))) {
                            break;
                        }
                        j6 = j8 + 1;
                        if (UnsafeUtil.getByte(bArr, j8) > -65) {
                            break;
                        }
                    } else {
                        if (i8 < 3) {
                            return unsafeIncompleteStateFor(b, i8, j6, bArr);
                        }
                        i7 = i8 - 3;
                        long j9 = j6 + 1;
                        byte b3 = UnsafeUtil.getByte(bArr, j6);
                        if (b3 > -65) {
                            break;
                        }
                        if ((((b3 + 112) + (b << 28)) >> 30) != 0) {
                            break;
                        }
                        long j10 = j9 + 1;
                        if (UnsafeUtil.getByte(bArr, j9) > -65) {
                            break;
                        }
                        j = j10 + 1;
                        if (UnsafeUtil.getByte(bArr, j10) > -65) {
                            break;
                        }
                        j6 = j;
                    }
                }
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    static {
        boolean z;
        Processor safeProcessor;
        if (UnsafeUtil.HAS_UNSAFE_ARRAY_OPERATIONS && UnsafeUtil.HAS_UNSAFE_BYTEBUFFER_OPERATIONS) {
            z = true;
        } else {
            z = false;
        }
        if (z && !Android.isOnAndroidDevice()) {
            safeProcessor = new UnsafeProcessor();
        } else {
            safeProcessor = new SafeProcessor();
        }
        processor = safeProcessor;
    }

    private Utf8() {
    }

    public static int access$1100(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    return incompleteStateFor(b, bArr[i], bArr[i + 1]);
                }
                throw new AssertionError();
            }
            return incompleteStateFor(b, bArr[i]);
        }
        if (b > -12) {
            b = -1;
        }
        return b;
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
                                throw new UnpairedSurrogateException(i2, length2);
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

    public static int incompleteStateFor(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
