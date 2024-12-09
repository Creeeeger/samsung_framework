package com.sun.mail.util;

import com.sec.internal.imscr.LogClass;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ASCIIUtility {
    public static int parseInt(byte[] bArr, int i, int i2, int i3) throws NumberFormatException {
        int i4;
        int i5;
        boolean z;
        if (bArr == null) {
            throw new NumberFormatException("null");
        }
        if (i2 > i) {
            int i6 = 0;
            if (bArr[i] == 45) {
                i5 = i + 1;
                i4 = Integer.MIN_VALUE;
                z = true;
            } else {
                i4 = LogClass.QEC_REGISTER_VOLTE_CALLBACK;
                i5 = i;
                z = false;
            }
            int i7 = i4 / i3;
            if (i5 < i2) {
                int i8 = i5 + 1;
                int digit = Character.digit((char) bArr[i5], i3);
                if (digit < 0) {
                    throw new NumberFormatException("illegal number: " + toString(bArr, i, i2));
                }
                i6 = -digit;
                i5 = i8;
            }
            while (i5 < i2) {
                int i9 = i5 + 1;
                int digit2 = Character.digit((char) bArr[i5], i3);
                if (digit2 < 0) {
                    throw new NumberFormatException("illegal number");
                }
                if (i6 < i7) {
                    throw new NumberFormatException("illegal number");
                }
                int i10 = i6 * i3;
                if (i10 < i4 + digit2) {
                    throw new NumberFormatException("illegal number");
                }
                i6 = i10 - digit2;
                i5 = i9;
            }
            if (!z) {
                return -i6;
            }
            if (i5 > i + 1) {
                return i6;
            }
            throw new NumberFormatException("illegal number");
        }
        throw new NumberFormatException("illegal number");
    }

    public static String toString(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        char[] cArr = new char[i3];
        int i4 = 0;
        while (i4 < i3) {
            cArr[i4] = (char) (bArr[i] & 255);
            i4++;
            i++;
        }
        return new String(cArr);
    }

    public static byte[] getBytes(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
    }

    public static byte[] getBytes(InputStream inputStream) throws IOException {
        if (inputStream instanceof ByteArrayInputStream) {
            int available = inputStream.available();
            byte[] bArr = new byte[available];
            inputStream.read(bArr, 0, available);
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr2, 0, 1024);
            if (read != -1) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
