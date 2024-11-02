package com.google.zxing.pdf417;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.encoder.BarcodeMatrix;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.Dimensions;
import com.google.zxing.pdf417.encoder.PDF417;
import com.google.zxing.pdf417.encoder.PDF417ErrorCorrection;
import com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PDF417Writer implements Writer {
    public static BitMatrix bitMatrixFrombitArray(byte[][] bArr, int i) {
        int i2 = i * 2;
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + i2, bArr.length + i2);
        int[] iArr = bitMatrix.bits;
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = 0;
        }
        int i4 = (bitMatrix.height - i) - 1;
        int i5 = 0;
        while (i5 < bArr.length) {
            for (int i6 = 0; i6 < bArr[0].length; i6++) {
                if (bArr[i5][i6] == 1) {
                    bitMatrix.set(i6 + i, i4);
                }
            }
            i5++;
            i4--;
        }
        return bitMatrix;
    }

    public static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map map) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        int i8;
        boolean z2;
        int i9;
        boolean z3;
        boolean z4;
        boolean z5;
        int i10;
        boolean z6;
        boolean z7;
        boolean z8;
        int i11;
        int i12;
        int i13;
        int[][] iArr;
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            PDF417 pdf417 = new PDF417();
            EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
            HashMap hashMap = (HashMap) map;
            if (hashMap.containsKey(encodeHintType)) {
                pdf417.compact = ((Boolean) hashMap.get(encodeHintType)).booleanValue();
            }
            EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
            if (hashMap.containsKey(encodeHintType2)) {
                pdf417.compaction = (Compaction) hashMap.get(encodeHintType2);
            }
            EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
            if (hashMap.containsKey(encodeHintType3)) {
                Dimensions dimensions = (Dimensions) hashMap.get(encodeHintType3);
                pdf417.maxCols = dimensions.maxCols;
                pdf417.minCols = dimensions.minCols;
                pdf417.maxRows = dimensions.maxRows;
                pdf417.minRows = dimensions.minRows;
            }
            EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
            if (hashMap.containsKey(encodeHintType4)) {
                i3 = ((Number) hashMap.get(encodeHintType4)).intValue();
            } else {
                i3 = 30;
            }
            Compaction compaction = pdf417.compaction;
            byte[] bArr = PDF417HighLevelEncoder.TEXT_MIXED_RAW;
            StringBuilder sb = new StringBuilder(str.length());
            int length = str.length();
            int i14 = 0;
            if (compaction == Compaction.TEXT) {
                PDF417HighLevelEncoder.encodeText(str, 0, length, sb, 0);
            } else if (compaction == Compaction.BYTE) {
                byte[] bytes = str.getBytes();
                PDF417HighLevelEncoder.encodeBinary(bytes, 0, bytes.length, 1, sb);
            } else if (compaction == Compaction.NUMERIC) {
                sb.append((char) 902);
                PDF417HighLevelEncoder.encodeNumeric(0, length, str, sb);
            } else {
                byte[] bArr2 = null;
                int i15 = 0;
                int i16 = 0;
                char c = 902;
                int i17 = 0;
                while (i14 < length) {
                    int length2 = str.length();
                    char c2 = '0';
                    if (i14 < length2) {
                        i5 = i17;
                        char charAt = str.charAt(i14);
                        i4 = i3;
                        int i18 = i14;
                        while (true) {
                            if (charAt >= '0' && charAt <= '9') {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (!z5 || i18 >= length2) {
                                break;
                            }
                            i15++;
                            i18++;
                            if (i18 < length2) {
                                charAt = str.charAt(i18);
                            }
                        }
                    } else {
                        i4 = i3;
                        i5 = i17;
                        i15 = 0;
                    }
                    char c3 = '\r';
                    if (i15 >= 13) {
                        sb.append(c);
                        PDF417HighLevelEncoder.encodeNumeric(i14, i15, str, sb);
                        i14 += i15;
                        i16 = 2;
                        i17 = 0;
                    } else {
                        int length3 = str.length();
                        int i19 = i14;
                        while (i19 < length3) {
                            char charAt2 = str.charAt(i19);
                            int i20 = 0;
                            while (i20 < 13) {
                                if (charAt2 >= c2 && charAt2 <= '9') {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (!z4 || i19 >= length3) {
                                    break;
                                }
                                i20++;
                                i19++;
                                if (i19 < length3) {
                                    charAt2 = str.charAt(i19);
                                }
                                c2 = '0';
                            }
                            if (i20 >= 13) {
                                i6 = (i19 - i14) - i20;
                                break;
                            }
                            if (i20 <= 0) {
                                char charAt3 = str.charAt(i19);
                                if (charAt3 != '\t' && charAt3 != '\n' && charAt3 != '\r' && (charAt3 < ' ' || charAt3 > '~')) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                if (!z3) {
                                    break;
                                }
                                i19++;
                            }
                            c2 = '0';
                        }
                        i6 = i19 - i14;
                        int i21 = 5;
                        if (i6 < 5 && i15 != length) {
                            if (bArr2 == null) {
                                bArr2 = str.getBytes();
                            }
                            int length4 = str.length();
                            int i22 = i14;
                            while (i22 < length4) {
                                char charAt4 = str.charAt(i22);
                                int i23 = 0;
                                while (i23 < c3) {
                                    if (charAt4 >= '0' && charAt4 <= '9') {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (!z2 || (i9 = i22 + (i23 = i23 + 1)) >= length4) {
                                        break;
                                    }
                                    charAt4 = str.charAt(i9);
                                }
                                if (i23 >= c3) {
                                    break;
                                }
                                int i24 = 0;
                                while (i24 < i21) {
                                    if (charAt4 != '\t' && charAt4 != '\n' && charAt4 != c3 && (charAt4 < ' ' || charAt4 > '~')) {
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    if (!z || (i8 = i22 + (i24 = i24 + 1)) >= length4) {
                                        break;
                                    }
                                    charAt4 = str.charAt(i8);
                                    c3 = '\r';
                                }
                                if (i24 >= i21) {
                                    break;
                                }
                                char charAt5 = str.charAt(i22);
                                if (bArr2[i22] == 63 && charAt5 != '?') {
                                    throw new WriterException("Non-encodable character detected: " + charAt5 + " (Unicode: " + ((int) charAt5) + ')');
                                }
                                i22++;
                                i21 = 5;
                                c3 = '\r';
                            }
                            int i25 = i22 - i14;
                            if (i25 == 0) {
                                i25 = 1;
                            }
                            if (i25 == 1 && i16 == 0) {
                                PDF417HighLevelEncoder.encodeBinary(bArr2, i14, 1, 0, sb);
                                i17 = i5;
                            } else {
                                PDF417HighLevelEncoder.encodeBinary(bArr2, i14, i25, i16, sb);
                                i16 = 1;
                                i17 = 0;
                            }
                            i14 += i25;
                        } else {
                            if (i16 != 0) {
                                sb.append((char) 900);
                                i7 = 0;
                                i16 = 0;
                            } else {
                                i7 = i5;
                            }
                            int encodeText = PDF417HighLevelEncoder.encodeText(str, i14, i6, sb, i7);
                            i14 += i6;
                            i17 = encodeText;
                        }
                    }
                    i15 = 0;
                    c = 902;
                    i3 = i4;
                }
            }
            int i26 = i3;
            String sb2 = sb.toString();
            int length5 = sb2.length();
            float f = 0.0f;
            int[] iArr2 = null;
            for (int i27 = pdf417.minCols; i27 <= pdf417.maxCols; i27++) {
                int i28 = length5 + 1 + 8;
                int i29 = (i28 / i27) + 1;
                if (i27 * i29 >= i28 + i27) {
                    i29--;
                }
                if (i29 < pdf417.minRows) {
                    break;
                }
                if (i29 <= pdf417.maxRows) {
                    float f2 = (((i27 * 17) + 69) * 0.357f) / (i29 * 2.0f);
                    if (iArr2 == null || Math.abs(f2 - 3.0f) <= Math.abs(f - 3.0f)) {
                        iArr2 = new int[]{i27, i29};
                        f = f2;
                    }
                }
            }
            if (iArr2 == null) {
                int i30 = pdf417.minCols;
                int i31 = length5 + 1 + 8;
                int i32 = (i31 / i30) + 1;
                if (i30 * i32 >= i31 + i30) {
                    i32--;
                }
                int i33 = pdf417.minRows;
                if (i32 < i33) {
                    iArr2 = new int[]{i30, i33};
                }
            }
            if (iArr2 != null) {
                int i34 = iArr2[0];
                int i35 = iArr2[1];
                int i36 = (i34 * i35) - 8;
                int i37 = i36 > length5 + 1 ? (i36 - length5) - 1 : 0;
                if (length5 + 8 + 1 <= 929) {
                    int i38 = length5 + i37 + 1;
                    StringBuilder sb3 = new StringBuilder(i38);
                    sb3.append((char) i38);
                    sb3.append(sb2);
                    for (int i39 = 0; i39 < i37; i39++) {
                        sb3.append((char) 900);
                    }
                    String sb4 = sb3.toString();
                    char[] cArr = new char[8];
                    int length6 = sb4.length();
                    int i40 = 0;
                    while (true) {
                        i10 = 7;
                        if (i40 >= length6) {
                            break;
                        }
                        int charAt6 = (sb4.charAt(i40) + cArr[7]) % 929;
                        while (true) {
                            iArr = PDF417ErrorCorrection.EC_COEFFICIENTS;
                            if (i10 >= 1) {
                                int i41 = i10 - 1;
                                cArr[i10] = (char) ((cArr[i41] + (929 - ((iArr[2][i10] * charAt6) % 929))) % 929);
                                i10 = i41;
                            }
                        }
                        cArr[0] = (char) ((929 - ((charAt6 * iArr[2][0]) % 929)) % 929);
                        i40++;
                    }
                    StringBuilder sb5 = new StringBuilder(8);
                    while (i10 >= 0) {
                        char c4 = cArr[i10];
                        if (c4 != 0) {
                            cArr[i10] = (char) (929 - c4);
                        }
                        sb5.append(cArr[i10]);
                        i10--;
                    }
                    String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb4, sb5.toString());
                    BarcodeMatrix barcodeMatrix = new BarcodeMatrix(i35, i34);
                    pdf417.barcodeMatrix = barcodeMatrix;
                    int i42 = 0;
                    for (int i43 = 0; i43 < i35; i43++) {
                        int i44 = i43 % 3;
                        barcodeMatrix.currentRow++;
                        PDF417.encodeChar(130728, 17, barcodeMatrix.getCurrentRow());
                        if (i44 == 0) {
                            i12 = (i43 / 3) * 30;
                            i11 = ((i35 - 1) / 3) + i12;
                            i13 = i34 - 1;
                        } else if (i44 == 1) {
                            i12 = (i43 / 3) * 30;
                            int i45 = i35 - 1;
                            i11 = i12 + 6 + (i45 % 3);
                            i13 = i45 / 3;
                        } else {
                            int i46 = (i43 / 3) * 30;
                            i11 = (i34 - 1) + i46;
                            i12 = i46 + 6;
                            i13 = (i35 - 1) % 3;
                        }
                        int i47 = i13 + i12;
                        int[][] iArr3 = PDF417.CODEWORD_TABLE;
                        PDF417.encodeChar(iArr3[i44][i11], 17, barcodeMatrix.getCurrentRow());
                        for (int i48 = 0; i48 < i34; i48++) {
                            PDF417.encodeChar(iArr3[i44][m.charAt(i42)], 17, barcodeMatrix.getCurrentRow());
                            i42++;
                        }
                        if (pdf417.compact) {
                            PDF417.encodeChar(260649, 1, barcodeMatrix.getCurrentRow());
                        } else {
                            PDF417.encodeChar(iArr3[i44][i47], 17, barcodeMatrix.getCurrentRow());
                            PDF417.encodeChar(260649, 18, barcodeMatrix.getCurrentRow());
                        }
                    }
                    byte[][] scaledMatrix = pdf417.barcodeMatrix.getScaledMatrix(2, 8);
                    if (i2 > i) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (scaledMatrix[0].length < scaledMatrix.length) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (z6 ^ z7) {
                        scaledMatrix = rotateArray(scaledMatrix);
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    int length7 = i / scaledMatrix[0].length;
                    int length8 = i2 / scaledMatrix.length;
                    if (length7 >= length8) {
                        length7 = length8;
                    }
                    if (length7 > 1) {
                        byte[][] scaledMatrix2 = pdf417.barcodeMatrix.getScaledMatrix(length7 * 2, length7 * 4 * 2);
                        if (z8) {
                            scaledMatrix2 = rotateArray(scaledMatrix2);
                        }
                        return bitMatrixFrombitArray(scaledMatrix2, i26);
                    }
                    return bitMatrixFrombitArray(scaledMatrix, i26);
                }
                throw new WriterException("Encoded message contains to many code words, message to big (" + str.length() + " bytes)");
            }
            throw new WriterException("Unable to fit message in columns");
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
    }
}
