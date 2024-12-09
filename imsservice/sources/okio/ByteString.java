package okio;

import com.sec.internal.ims.servicemodules.tapi.service.extension.utils.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.internal._ByteStringKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ByteString.kt */
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;

    @NotNull
    private final byte[] data;
    private transient int hashCode;

    @Nullable
    private transient String utf8;

    @NotNull
    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(internalArray$okio());
        setUtf8$okio(utf8String);
        return utf8String;
    }

    @NotNull
    public String base64() {
        return _Base64Kt.encodeBase64$default(getData$okio(), null, 1, null);
    }

    public ByteString(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    @NotNull
    public final byte[] getData$okio() {
        return this.data;
    }

    @NotNull
    public String hex() {
        String concatToString;
        char[] cArr = new char[getData$okio().length * 2];
        byte[] data$okio = getData$okio();
        int length = data$okio.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = data$okio[i];
            i++;
            int i3 = i2 + 1;
            cArr[i2] = _ByteStringKt.getHEX_DIGIT_CHARS()[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = _ByteStringKt.getHEX_DIGIT_CHARS()[b & 15];
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr);
        return concatToString;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    public final void setHashCode$okio(int i) {
        this.hashCode = i;
    }

    @Nullable
    public final String getUtf8$okio() {
        return this.utf8;
    }

    public final void setUtf8$okio(@Nullable String str) {
        this.utf8 = str;
    }

    @NotNull
    public final ByteString sha1() {
        return digest$okio(Constants.DIGEST_ALGORITHM_SHA1);
    }

    @NotNull
    public ByteString toAsciiLowercase() {
        byte b;
        for (int i = 0; i < getData$okio().length; i++) {
            byte b2 = getData$okio()[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b4 = copyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        copyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @NotNull
    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(getData$okio(), 0, size());
        byte[] digestBytes = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    public final byte getByte(int i) {
        return internalGet$okio(i);
    }

    public final int size() {
        return getSize$okio();
    }

    public byte internalGet$okio(int i) {
        return getData$okio()[i];
    }

    public void write$okio(@NotNull Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        _ByteStringKt.commonWrite(this, buffer, i, i2);
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    @NotNull
    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public boolean rangeEquals(int i, @NotNull ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        return other.rangeEquals(i2, getData$okio(), i, i3);
    }

    public boolean rangeEquals(int i, @NotNull byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        return i >= 0 && i <= getData$okio().length - i3 && i2 >= 0 && i2 <= other.length - i3 && _UtilKt.arrayRangeEquals(getData$okio(), i, other, i2, i3);
    }

    public final boolean startsWith(@NotNull ByteString prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString read = Companion.read(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, read.data);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    /* compiled from: ByteString.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            return companion.of(bArr, i, i2);
        }

        private Companion() {
        }

        @NotNull
        public final ByteString encodeString(@NotNull String str, @NotNull Charset charset) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Intrinsics.checkNotNullParameter(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        @NotNull
        public final ByteString of(@NotNull byte[] bArr, int i, int i2) {
            byte[] copyOfRange;
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            _UtilKt.checkOffsetAndCount(bArr.length, i, i2);
            copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(bArr, i, i2 + i);
            return new ByteString(copyOfRange);
        }

        @NotNull
        public final ByteString read(@NotNull InputStream inputStream, int i) throws IOException {
            Intrinsics.checkNotNullParameter(inputStream, "<this>");
            int i2 = 0;
            if (!(i >= 0)) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Integer.valueOf(i)).toString());
            }
            byte[] bArr = new byte[i];
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i2 += read;
            }
            return new ByteString(bArr);
        }

        @NotNull
        public final ByteString encodeUtf8(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        @NotNull
        public final ByteString decodeHex(@NotNull String str) {
            int decodeHexDigit;
            int decodeHexDigit2;
            Intrinsics.checkNotNullParameter(str, "<this>");
            int i = 0;
            if (!(str.length() % 2 == 0)) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected hex string: ", str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            int i2 = length - 1;
            if (i2 >= 0) {
                while (true) {
                    int i3 = i + 1;
                    int i4 = i * 2;
                    decodeHexDigit = _ByteStringKt.decodeHexDigit(str.charAt(i4));
                    decodeHexDigit2 = _ByteStringKt.decodeHexDigit(str.charAt(i4 + 1));
                    bArr[i] = (byte) ((decodeHexDigit << 4) + decodeHexDigit2);
                    if (i3 > i2) {
                        break;
                    }
                    i = i3;
                }
            }
            return new ByteString(bArr);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(hashCode);
        return hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r0 < r1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
    
        if (r7 < r8) goto L13;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int compareTo(@org.jetbrains.annotations.NotNull okio.ByteString r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L14:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2c
            byte r7 = r9.getByte(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.getByte(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L29
            int r4 = r4 + 1
            goto L14
        L29:
            if (r7 >= r8) goto L33
            goto L31
        L2c:
            if (r0 != r1) goto L2f
            goto L34
        L2f:
            if (r0 >= r1) goto L33
        L31:
            r3 = r5
            goto L34
        L33:
            r3 = r6
        L34:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(okio.ByteString):int");
    }

    @NotNull
    public String toString() {
        int codePointIndexToCharIndex;
        String replace$default;
        String replace$default2;
        String replace$default3;
        ByteString byteString;
        byte[] copyOfRange;
        if (getData$okio().length == 0) {
            return "[size=0]";
        }
        codePointIndexToCharIndex = _ByteStringKt.codePointIndexToCharIndex(getData$okio(), 64);
        if (codePointIndexToCharIndex == -1) {
            if (getData$okio().length <= 64) {
                return "[hex=" + hex() + ']';
            }
            StringBuilder sb = new StringBuilder();
            sb.append("[size=");
            sb.append(getData$okio().length);
            sb.append(" hex=");
            int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, 64);
            if (!(resolveDefaultParameter <= getData$okio().length)) {
                throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
            }
            if (!(resolveDefaultParameter + 0 >= 0)) {
                throw new IllegalArgumentException("endIndex < beginIndex".toString());
            }
            if (resolveDefaultParameter == getData$okio().length) {
                byteString = this;
            } else {
                copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(getData$okio(), 0, resolveDefaultParameter);
                byteString = new ByteString(copyOfRange);
            }
            sb.append(byteString.hex());
            sb.append("…]");
            return sb.toString();
        }
        String utf8 = utf8();
        if (utf8 != null) {
            String substring = utf8.substring(0, codePointIndexToCharIndex);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            replace$default = StringsKt__StringsJVMKt.replace$default(substring, "\\", "\\\\", false, 4, (Object) null);
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "\n", "\\n", false, 4, (Object) null);
            replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, "\r", "\\r", false, 4, (Object) null);
            if (codePointIndexToCharIndex < utf8.length()) {
                return "[size=" + getData$okio().length + " text=" + replace$default3 + "…]";
            }
            return "[text=" + replace$default3 + ']';
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }
}
