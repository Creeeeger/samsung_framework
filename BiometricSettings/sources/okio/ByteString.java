package okio;

import androidx.appcompat.view.menu.SubMenuBuilder$$ExternalSyntheticOutline0;
import androidx.constraintlayout.helper.widget.LogJson$JsonWriter$$ExternalSyntheticOutline0;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;
    final byte[] data;
    transient int hashCode;
    transient String utf8;
    static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ByteString EMPTY = new ByteString((byte[]) new byte[0].clone());

    ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static ByteString encodeUtf8(String str) {
        ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
        byteString.utf8 = str;
        return byteString;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            throw new IllegalArgumentException(SubMenuBuilder$$ExternalSyntheticOutline0.m("byteCount < 0: ", readInt));
        }
        byte[] bArr = new byte[readInt];
        int i = 0;
        while (i < readInt) {
            int read = objectInputStream.read(bArr, i, readInt - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
        ByteString byteString = new ByteString(bArr);
        try {
            Field declaredField = ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, byteString.data);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        if (r0 < r1) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        if (r7 < r8) goto L9;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int compareTo(okio.ByteString r10) {
        /*
            r9 = this;
            okio.ByteString r10 = (okio.ByteString) r10
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L10:
            r5 = 1
            r6 = -1
            if (r4 >= r2) goto L2b
            byte r7 = r9.getByte(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.getByte(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L25
            int r4 = r4 + 1
            goto L10
        L25:
            if (r7 >= r8) goto L29
        L27:
            r3 = r6
            goto L31
        L29:
            r3 = r5
            goto L31
        L2b:
            if (r0 != r1) goto L2e
            goto L31
        L2e:
            if (r0 >= r1) goto L29
            goto L27
        L31:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(java.lang.Object):int");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size = byteString.size();
            byte[] bArr = this.data;
            if (size == bArr.length && byteString.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.data);
        this.hashCode = hashCode;
        return hashCode;
    }

    public String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public boolean rangeEquals(ByteString byteString, int i) {
        return byteString.rangeEquals(0, this.data, 0, i);
    }

    public int size() {
        return this.data.length;
    }

    public ByteString substring() {
        byte[] bArr = this.data;
        if (64 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.data.length + ")");
        }
        if (64 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, 64);
        return new ByteString(bArr2);
    }

    public String toString() {
        if (this.data.length == 0) {
            return "[size=0]";
        }
        String utf8 = utf8();
        int length = utf8.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                i = utf8.length();
                break;
            }
            if (i2 == 64) {
                break;
            }
            int codePointAt = utf8.codePointAt(i);
            if ((!Character.isISOControl(codePointAt) || codePointAt == 10 || codePointAt == 13) && codePointAt != 65533) {
                i2++;
                i += Character.charCount(codePointAt);
            }
        }
        i = -1;
        if (i != -1) {
            String replace = utf8.substring(0, i).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (i >= utf8.length()) {
                return LogJson$JsonWriter$$ExternalSyntheticOutline0.m("[text=", replace, "]");
            }
            return "[size=" + this.data.length + " text=" + replace + "…]";
        }
        if (this.data.length <= 64) {
            return "[hex=" + hex() + "]";
        }
        return "[size=" + this.data.length + " hex=" + substring().hex() + "…]";
    }

    public String utf8() {
        String str = this.utf8;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.data, Util.UTF_8);
        this.utf8 = str2;
        return str2;
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.data;
        if (i > bArr2.length - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        Charset charset = Util.UTF_8;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z = true;
                break;
            }
            if (bArr2[i4 + i] != bArr[i4 + i2]) {
                z = false;
                break;
            }
            i4++;
        }
        return z;
    }
}
