package okio;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import java.io.EOFException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import okio.internal.ByteStringKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    public static final Companion Companion = new Companion(null);
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    private final byte[] data;
    public transient int hashCode;
    public transient String utf8;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static final ByteString encodeUtf8(String str) {
        Companion.getClass();
        ByteString byteString = new ByteString(str.getBytes(Charsets.UTF_8));
        byteString.utf8 = str;
        return byteString;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        boolean z;
        int readInt = objectInputStream.readInt();
        Companion.getClass();
        int i = 0;
        if (readInt >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            byte[] bArr = new byte[readInt];
            while (i < readInt) {
                int read = objectInputStream.read(bArr, i, readInt - i);
                if (read != -1) {
                    i += read;
                } else {
                    throw new EOFException();
                }
            }
            ByteString byteString = new ByteString(bArr);
            Field declaredField = ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, byteString.data);
            return;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("byteCount < 0: ", readInt).toString());
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int compareTo(okio.ByteString r8) {
        /*
            r7 = this;
            okio.ByteString r8 = (okio.ByteString) r8
            int r0 = r7.getSize$okio()
            int r1 = r8.getSize$okio()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L10:
            if (r4 >= r2) goto L26
            byte r5 = r7.internalGet$okio(r4)
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r6 = r8.internalGet$okio(r4)
            r6 = r6 & 255(0xff, float:3.57E-43)
            if (r5 != r6) goto L23
            int r4 = r4 + 1
            goto L10
        L23:
            if (r5 >= r6) goto L2d
            goto L2b
        L26:
            if (r0 != r1) goto L29
            goto L2e
        L29:
            if (r0 >= r1) goto L2d
        L2b:
            r3 = -1
            goto L2e
        L2d:
            r3 = 1
        L2e:
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
            int size$okio = byteString.getSize$okio();
            byte[] bArr = this.data;
            if (size$okio == bArr.length && byteString.rangeEquals(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    public final byte[] getData$okio() {
        return this.data;
    }

    public int getSize$okio() {
        return this.data.length;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.data);
            this.hashCode = hashCode;
            return hashCode;
        }
        return i;
    }

    public String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = ByteStringKt.HEX_DIGIT_CHARS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public byte[] internalArray$okio() {
        return this.data;
    }

    public byte internalGet$okio(int i) {
        return this.data[i];
    }

    public boolean rangeEquals(int i, int i2, int i3, byte[] bArr) {
        boolean z;
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.data;
        if (i > bArr2.length - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
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

    /* JADX WARN: Code restructure failed: missing block: B:120:0x01a6, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01ad, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x019e, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0188, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0179, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0168, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0157, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01e2, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x00a1, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0096, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0087, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x011a, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x01e5, code lost:
    
        r7 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0111, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00ff, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00f0, code lost:
    
        if (r6 == 64) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00df, code lost:
    
        if (r6 == 64) goto L215;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 714
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.toString():java.lang.String");
    }

    public boolean rangeEquals(ByteString byteString, int i) {
        return byteString.rangeEquals(0, 0, i, this.data);
    }
}
