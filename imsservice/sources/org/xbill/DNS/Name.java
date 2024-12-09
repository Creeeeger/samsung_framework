package org.xbill.DNS;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import java.io.PrintStream;
import java.io.Serializable;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class Name implements Comparable, Serializable {
    private static final DecimalFormat byteFormat;
    public static final Name empty;
    private static final byte[] lowercase;
    public static final Name root;
    private static final long serialVersionUID = -7257019940971525644L;
    private static final Name wild;
    private int hashcode;
    private byte[] name;
    private long offsets;
    private static final byte[] emptyLabel = {0};
    private static final byte[] wildLabel = {1, 42};

    static {
        DecimalFormat decimalFormat = new DecimalFormat();
        byteFormat = decimalFormat;
        lowercase = new byte[256];
        decimalFormat.setMinimumIntegerDigits(3);
        int i = 0;
        while (true) {
            byte[] bArr = lowercase;
            if (i >= bArr.length) {
                Name name = new Name();
                root = name;
                name.appendSafe(emptyLabel, 0, 1);
                Name name2 = new Name();
                empty = name2;
                name2.name = new byte[0];
                Name name3 = new Name();
                wild = name3;
                name3.appendSafe(wildLabel, 0, 1);
                return;
            }
            if (i < 65 || i > 90) {
                bArr[i] = (byte) i;
            } else {
                bArr[i] = (byte) ((i - 65) + 97);
            }
            i++;
        }
    }

    private Name() {
    }

    private final void setoffset(int i, int i2) {
        if (i >= 7) {
            return;
        }
        int i3 = (7 - i) * 8;
        this.offsets = (i2 << i3) | (this.offsets & (~(255 << i3)));
    }

    private final int offset(int i) {
        if (i == 0 && getlabels() == 0) {
            return 0;
        }
        if (i < 0 || i >= getlabels()) {
            throw new IllegalArgumentException("label out of range");
        }
        if (i < 7) {
            return ((int) (this.offsets >>> ((7 - i) * 8))) & 255;
        }
        int offset = offset(6);
        for (int i2 = 6; i2 < i; i2++) {
            offset += this.name[offset] + 1;
        }
        return offset;
    }

    private final void setlabels(int i) {
        this.offsets = (this.offsets & (-256)) | i;
    }

    private final int getlabels() {
        return (int) (this.offsets & 255);
    }

    private static final void copy(Name name, Name name2) {
        if (name.offset(0) == 0) {
            name2.name = name.name;
            name2.offsets = name.offsets;
            return;
        }
        int offset = name.offset(0);
        int length = name.name.length - offset;
        int labels = name.labels();
        byte[] bArr = new byte[length];
        name2.name = bArr;
        System.arraycopy(name.name, offset, bArr, 0, length);
        for (int i = 0; i < labels && i < 7; i++) {
            name2.setoffset(i, name.offset(i) - offset);
        }
        name2.setlabels(labels);
    }

    private final void append(byte[] bArr, int i, int i2) throws NameTooLongException {
        byte[] bArr2 = this.name;
        int length = bArr2 == null ? 0 : bArr2.length - offset(0);
        int i3 = i;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = bArr[i3];
            if (i6 > 63) {
                throw new IllegalStateException("invalid label");
            }
            int i7 = i6 + 1;
            i3 += i7;
            i4 += i7;
        }
        int i8 = length + i4;
        if (i8 > 255) {
            throw new NameTooLongException();
        }
        int i9 = getlabels();
        int i10 = i9 + i2;
        if (i10 > 128) {
            throw new IllegalStateException("too many labels");
        }
        byte[] bArr3 = new byte[i8];
        if (length != 0) {
            System.arraycopy(this.name, offset(0), bArr3, 0, length);
        }
        System.arraycopy(bArr, i, bArr3, length, i4);
        this.name = bArr3;
        for (int i11 = 0; i11 < i2; i11++) {
            setoffset(i9 + i11, length);
            length += bArr3[length] + 1;
        }
        setlabels(i10);
    }

    private static TextParseException parseException(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("'");
        stringBuffer.append(str);
        stringBuffer.append("': ");
        stringBuffer.append(str2);
        return new TextParseException(stringBuffer.toString());
    }

    private final void appendFromString(String str, byte[] bArr, int i, int i2) throws TextParseException {
        try {
            append(bArr, i, i2);
        } catch (NameTooLongException unused) {
            throw parseException(str, "Name too long");
        }
    }

    private final void appendSafe(byte[] bArr, int i, int i2) {
        try {
            append(bArr, i, i2);
        } catch (NameTooLongException unused) {
        }
    }

    public Name(String str, Name name) throws TextParseException {
        int i;
        boolean z;
        int i2;
        if (str.equals("")) {
            throw parseException(str, "empty name");
        }
        if (str.equals("@")) {
            if (name == null) {
                copy(empty, this);
                return;
            } else {
                copy(name, this);
                return;
            }
        }
        if (str.equals(".")) {
            copy(root, this);
            return;
        }
        byte[] bArr = new byte[64];
        int i3 = 0;
        boolean z2 = false;
        int i4 = -1;
        int i5 = 1;
        int i6 = 0;
        for (int i7 = 0; i7 < str.length(); i7++) {
            byte charAt = (byte) str.charAt(i7);
            if (z2) {
                if (charAt >= 48 && charAt <= 57 && i3 < 3) {
                    i3++;
                    i6 = (i6 * 10) + (charAt - 48);
                    if (i6 > 255) {
                        throw parseException(str, "bad escape");
                    }
                    if (i3 < 3) {
                        continue;
                    } else {
                        charAt = (byte) i6;
                    }
                } else if (i3 > 0 && i3 < 3) {
                    throw parseException(str, "bad escape");
                }
                if (i5 > 63) {
                    throw parseException(str, "label too long");
                }
                i2 = i5 + 1;
                bArr[i5] = charAt;
                i4 = i5;
                z2 = false;
                i5 = i2;
            } else {
                if (charAt == 92) {
                    i3 = 0;
                    z2 = true;
                    i6 = 0;
                } else if (charAt == 46) {
                    if (i4 == -1) {
                        throw parseException(str, "invalid empty label");
                    }
                    bArr[0] = (byte) (i5 - 1);
                    appendFromString(str, bArr, 0, 1);
                    i4 = -1;
                    i5 = 1;
                } else {
                    i4 = i4 == -1 ? i7 : i4;
                    if (i5 > 63) {
                        throw parseException(str, "label too long");
                    }
                    i2 = i5 + 1;
                    bArr[i5] = charAt;
                    i5 = i2;
                }
            }
        }
        if (i3 > 0 && i3 < 3) {
            throw parseException(str, "bad escape");
        }
        if (z2) {
            throw parseException(str, "bad escape");
        }
        if (i4 == -1) {
            z = true;
            i = 0;
            appendFromString(str, emptyLabel, 0, 1);
        } else {
            i = 0;
            bArr[0] = (byte) (i5 - 1);
            appendFromString(str, bArr, 0, 1);
            z = false;
        }
        if (name == null || z) {
            return;
        }
        appendFromString(str, name.name, name.offset(i), name.getlabels());
    }

    public static Name fromString(String str, Name name) throws TextParseException {
        if (str.equals("@") && name != null) {
            return name;
        }
        if (str.equals(".")) {
            return root;
        }
        return new Name(str, name);
    }

    public static Name fromString(String str) throws TextParseException {
        return fromString(str, null);
    }

    public Name(DNSInput dNSInput) throws WireParseException {
        byte[] bArr = new byte[64];
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            int readU8 = dNSInput.readU8();
            int i = readU8 & MNO.TELEFONICA_SPAIN;
            if (i != 0) {
                if (i == 192) {
                    int readU82 = dNSInput.readU8() + ((readU8 & (-193)) << 8);
                    if (Options.check("verbosecompression")) {
                        PrintStream printStream = System.err;
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("currently ");
                        stringBuffer.append(dNSInput.current());
                        stringBuffer.append(", pointer to ");
                        stringBuffer.append(readU82);
                        printStream.println(stringBuffer.toString());
                    }
                    if (readU82 >= dNSInput.current() - 2) {
                        throw new WireParseException("bad compression");
                    }
                    if (!z2) {
                        dNSInput.save();
                        z2 = true;
                    }
                    dNSInput.jump(readU82);
                    if (Options.check("verbosecompression")) {
                        PrintStream printStream2 = System.err;
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("current name '");
                        stringBuffer2.append(this);
                        stringBuffer2.append("', seeking to ");
                        stringBuffer2.append(readU82);
                        printStream2.println(stringBuffer2.toString());
                    }
                } else {
                    throw new WireParseException("bad label type");
                }
            } else {
                if (getlabels() >= 128) {
                    throw new WireParseException("too many labels");
                }
                if (readU8 == 0) {
                    append(emptyLabel, 0, 1);
                    z = true;
                } else {
                    bArr[0] = (byte) readU8;
                    dNSInput.readByteArray(bArr, 1, readU8);
                    append(bArr, 0, 1);
                }
            }
        }
        if (z2) {
            dNSInput.restore();
        }
    }

    public Name(Name name, int i) {
        int labels = name.labels();
        if (i > labels) {
            throw new IllegalArgumentException("attempted to remove too many labels");
        }
        this.name = name.name;
        int i2 = labels - i;
        setlabels(i2);
        for (int i3 = 0; i3 < 7 && i3 < i2; i3++) {
            setoffset(i3, name.offset(i3 + i));
        }
    }

    public boolean isAbsolute() {
        int labels = labels();
        return labels != 0 && this.name[offset(labels - 1)] == 0;
    }

    public int labels() {
        return getlabels();
    }

    private String byteString(byte[] bArr, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = i + 1;
        int i3 = bArr[i];
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            int i5 = bArr[i4] & 255;
            if (i5 <= 32 || i5 >= 127) {
                stringBuffer.append('\\');
                stringBuffer.append(byteFormat.format(i5));
            } else if (i5 == 34 || i5 == 40 || i5 == 41 || i5 == 46 || i5 == 59 || i5 == 92 || i5 == 64 || i5 == 36) {
                stringBuffer.append('\\');
                stringBuffer.append((char) i5);
            } else {
                stringBuffer.append((char) i5);
            }
        }
        return stringBuffer.toString();
    }

    public String toString(boolean z) {
        int labels = labels();
        if (labels == 0) {
            return "@";
        }
        int i = 0;
        if (labels == 1 && this.name[offset(0)] == 0) {
            return ".";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int offset = offset(0);
        while (true) {
            if (i >= labels) {
                break;
            }
            byte b = this.name[offset];
            if (b > 63) {
                throw new IllegalStateException("invalid label");
            }
            if (b != 0) {
                if (i > 0) {
                    stringBuffer.append('.');
                }
                stringBuffer.append(byteString(this.name, offset));
                offset += b + 1;
                i++;
            } else if (!z) {
                stringBuffer.append('.');
            }
        }
        return stringBuffer.toString();
    }

    public String toString() {
        return toString(false);
    }

    public void toWire(DNSOutput dNSOutput, Compression compression) {
        if (!isAbsolute()) {
            throw new IllegalArgumentException("toWire() called on non-absolute name");
        }
        int labels = labels();
        int i = 0;
        while (i < labels - 1) {
            Name name = i == 0 ? this : new Name(this, i);
            int i2 = compression != null ? compression.get(name) : -1;
            if (i2 >= 0) {
                dNSOutput.writeU16(49152 | i2);
                return;
            }
            if (compression != null) {
                compression.add(dNSOutput.current(), name);
            }
            int offset = offset(i);
            byte[] bArr = this.name;
            dNSOutput.writeByteArray(bArr, offset, bArr[offset] + 1);
            i++;
        }
        dNSOutput.writeU8(0);
    }

    public void toWireCanonical(DNSOutput dNSOutput) {
        dNSOutput.writeByteArray(toWireCanonical());
    }

    public byte[] toWireCanonical() {
        int labels = labels();
        if (labels == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[this.name.length - offset(0)];
        int offset = offset(0);
        int i = 0;
        for (int i2 = 0; i2 < labels; i2++) {
            byte b = this.name[offset];
            if (b > 63) {
                throw new IllegalStateException("invalid label");
            }
            offset++;
            bArr[i] = b;
            i++;
            int i3 = 0;
            while (i3 < b) {
                bArr[i] = lowercase[this.name[offset] & 255];
                i3++;
                i++;
                offset++;
            }
        }
        return bArr;
    }

    public void toWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        if (z) {
            toWireCanonical(dNSOutput);
        } else {
            toWire(dNSOutput, compression);
        }
    }

    private final boolean equals(byte[] bArr, int i) {
        int labels = labels();
        int offset = offset(0);
        for (int i2 = 0; i2 < labels; i2++) {
            byte b = this.name[offset];
            if (b != bArr[i]) {
                return false;
            }
            offset++;
            i++;
            if (b > 63) {
                throw new IllegalStateException("invalid label");
            }
            int i3 = 0;
            while (i3 < b) {
                byte[] bArr2 = lowercase;
                int i4 = offset + 1;
                int i5 = i + 1;
                if (bArr2[this.name[offset] & 255] != bArr2[bArr[i] & 255]) {
                    return false;
                }
                i3++;
                i = i5;
                offset = i4;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof Name)) {
            return false;
        }
        Name name = (Name) obj;
        if (name.hashcode == 0) {
            name.hashCode();
        }
        if (this.hashcode == 0) {
            hashCode();
        }
        if (name.hashcode == this.hashcode && name.labels() == labels()) {
            return equals(name.name, name.offset(0));
        }
        return false;
    }

    public int hashCode() {
        int i = this.hashcode;
        if (i != 0) {
            return i;
        }
        int i2 = 0;
        int offset = offset(0);
        while (true) {
            byte[] bArr = this.name;
            if (offset < bArr.length) {
                i2 += (i2 << 3) + lowercase[bArr[offset] & 255];
                offset++;
            } else {
                this.hashcode = i2;
                return i2;
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Name name = (Name) obj;
        if (this == name) {
            return 0;
        }
        int labels = labels();
        int labels2 = name.labels();
        int i = labels > labels2 ? labels2 : labels;
        for (int i2 = 1; i2 <= i; i2++) {
            int offset = offset(labels - i2);
            int offset2 = name.offset(labels2 - i2);
            byte b = this.name[offset];
            byte b2 = name.name[offset2];
            for (int i3 = 0; i3 < b && i3 < b2; i3++) {
                byte[] bArr = lowercase;
                int i4 = bArr[this.name[(i3 + offset) + 1] & 255] - bArr[name.name[(i3 + offset2) + 1] & 255];
                if (i4 != 0) {
                    return i4;
                }
            }
            if (b != b2) {
                return b - b2;
            }
        }
        return labels - labels2;
    }
}
