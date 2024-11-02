package com.google.zxing.oned;

import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {
    public static final char[] START_END_CHARS = {'A', 'B', 'C', 'D'};
    public static final char[] ALT_START_END_CHARS = {'T', 'N', '*', 'E'};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public final boolean[] encode(String str) {
        boolean z;
        boolean z2;
        int i;
        if (str.length() >= 2) {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = START_END_CHARS;
            if (CodaBarReader.arrayContains(upperCase, cArr) && CodaBarReader.arrayContains(upperCase2, cArr)) {
                z = true;
            } else {
                z = false;
            }
            char[] cArr2 = ALT_START_END_CHARS;
            if (CodaBarReader.arrayContains(upperCase, cArr2) && CodaBarReader.arrayContains(upperCase2, cArr2)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z && !z2) {
                throw new IllegalArgumentException("Codabar should start/end with " + Arrays.toString(cArr) + ", or start/end with " + Arrays.toString(cArr2));
            }
            char[] cArr3 = {'/', ':', '+', '.'};
            int i2 = 20;
            for (int i3 = 1; i3 < str.length() - 1; i3++) {
                if (!Character.isDigit(str.charAt(i3)) && str.charAt(i3) != '-' && str.charAt(i3) != '$') {
                    if (CodaBarReader.arrayContains(str.charAt(i3), cArr3)) {
                        i2 += 10;
                    } else {
                        throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + '\'');
                    }
                } else {
                    i2 += 9;
                }
            }
            boolean[] zArr = new boolean[(str.length() - 1) + i2];
            int i4 = 0;
            for (int i5 = 0; i5 < str.length(); i5++) {
                char upperCase3 = Character.toUpperCase(str.charAt(i5));
                if (i5 == str.length() - 1) {
                    if (upperCase3 != '*') {
                        if (upperCase3 != 'E') {
                            if (upperCase3 != 'N') {
                                if (upperCase3 == 'T') {
                                    upperCase3 = 'A';
                                }
                            } else {
                                upperCase3 = 'B';
                            }
                        } else {
                            upperCase3 = 'D';
                        }
                    } else {
                        upperCase3 = 'C';
                    }
                }
                int i6 = 0;
                while (true) {
                    char[] cArr4 = CodaBarReader.ALPHABET;
                    if (i6 < cArr4.length) {
                        if (upperCase3 == cArr4[i6]) {
                            i = CodaBarReader.CHARACTER_ENCODINGS[i6];
                            break;
                        }
                        i6++;
                    } else {
                        i = 0;
                        break;
                    }
                }
                int i7 = 0;
                int i8 = 0;
                boolean z3 = true;
                while (i7 < 7) {
                    zArr[i4] = z3;
                    i4++;
                    if (((i >> (6 - i7)) & 1) != 0 && i8 != 1) {
                        i8++;
                    } else {
                        z3 = !z3;
                        i7++;
                        i8 = 0;
                    }
                }
                if (i5 < str.length() - 1) {
                    zArr[i4] = false;
                    i4++;
                }
            }
            return zArr;
        }
        throw new IllegalArgumentException("Codabar should start/end with start/stop symbols");
    }
}
