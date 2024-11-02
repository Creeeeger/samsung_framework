package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HighLevelEncoder {
    private HighLevelEncoder() {
    }

    public static int findMinimums(float[] fArr, int[] iArr, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < 6; i2++) {
            int ceil = (int) Math.ceil(fArr[i2]);
            iArr[i2] = ceil;
            if (i > ceil) {
                Arrays.fill(bArr, (byte) 0);
                i = ceil;
            }
            if (i == ceil) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    public static void illegalCharacter(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    public static boolean isExtendedASCII(char c) {
        if (c >= 128 && c <= 255) {
            return true;
        }
        return false;
    }

    public static boolean isNativeX12(char c) {
        boolean z;
        if (c != '\r' && c != '*' && c != '>') {
            z = false;
        } else {
            z = true;
        }
        if (!z && c != ' ' && ((c < '0' || c > '9') && (c < 'A' || c > 'Z'))) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x01f6, code lost:
    
        return 5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int lookAheadTest(int r18, int r19, java.lang.CharSequence r20) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.encoder.HighLevelEncoder.lookAheadTest(int, int, java.lang.CharSequence):int");
    }
}
