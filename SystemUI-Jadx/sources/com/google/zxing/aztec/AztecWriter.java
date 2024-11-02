package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.aztec.encoder.AztecCode;
import com.google.zxing.aztec.encoder.Encoder;
import com.google.zxing.aztec.encoder.HighLevelEncoder;
import com.google.zxing.aztec.encoder.State;
import com.google.zxing.aztec.encoder.Token;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AztecWriter implements Writer {
    public static final Charset DEFAULT_CHARSET = Charset.forName("ISO-8859-1");

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map map) {
        Charset forName;
        int intValue;
        int intValue2;
        byte[] bArr;
        int i3;
        char c;
        int i4;
        boolean z;
        int i5;
        int i6;
        BitArray bitArray;
        int i7;
        boolean z2;
        int i8;
        int i9;
        BitArray generateCheckWords;
        int i10;
        int i11;
        int i12;
        int i13;
        byte b;
        int i14;
        int i15;
        boolean z3;
        int i16;
        String str2 = (String) ((HashMap) map).get(EncodeHintType.CHARACTER_SET);
        Number number = (Number) ((HashMap) map).get(EncodeHintType.ERROR_CORRECTION);
        Integer num = (Integer) ((HashMap) map).get(EncodeHintType.AZTEC_LAYERS);
        if (str2 == null) {
            forName = DEFAULT_CHARSET;
        } else {
            forName = Charset.forName(str2);
        }
        if (number == null) {
            intValue = 33;
        } else {
            intValue = number.intValue();
        }
        if (num == null) {
            intValue2 = 0;
        } else {
            intValue2 = num.intValue();
        }
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            HighLevelEncoder highLevelEncoder = new HighLevelEncoder(str.getBytes(forName));
            List<State> singletonList = Collections.singletonList(State.INITIAL_STATE);
            int i17 = 0;
            while (true) {
                bArr = highLevelEncoder.text;
                i3 = 3;
                c = '\n';
                int i18 = 4;
                int i19 = 2;
                boolean z4 = true;
                i4 = 32;
                if (i17 >= bArr.length) {
                    break;
                }
                int i20 = i17 + 1;
                if (i20 < bArr.length) {
                    b = bArr[i20];
                } else {
                    b = 0;
                }
                byte b2 = bArr[i17];
                if (b2 != 13) {
                    if (b2 != 44) {
                        if (b2 != 46) {
                            if (b2 == 58 && b == 32) {
                                i14 = 5;
                            }
                            i14 = 0;
                        } else {
                            if (b == 32) {
                                i14 = 3;
                            }
                            i14 = 0;
                        }
                    } else {
                        if (b == 32) {
                            i14 = 4;
                        }
                        i14 = 0;
                    }
                } else {
                    if (b == 10) {
                        i14 = 2;
                    }
                    i14 = 0;
                }
                if (i14 > 0) {
                    LinkedList linkedList = new LinkedList();
                    for (State state : singletonList) {
                        State endBinaryShift = state.endBinaryShift(i17);
                        linkedList.add(endBinaryShift.latchAndAppend(4, i14));
                        if (state.mode != 4) {
                            linkedList.add(endBinaryShift.shiftAndAppend(4, i14));
                        }
                        if (i14 == 3 || i14 == 4) {
                            linkedList.add(endBinaryShift.latchAndAppend(2, 16 - i14).latchAndAppend(2, 1));
                        }
                        if (state.binaryShiftByteCount > 0) {
                            linkedList.add(state.addBinaryShiftChar(i17).addBinaryShiftChar(i20));
                        }
                    }
                    singletonList = HighLevelEncoder.simplifyStates(linkedList);
                    i17 = i20;
                    i15 = 1;
                } else {
                    LinkedList linkedList2 = new LinkedList();
                    for (State state2 : singletonList) {
                        char c2 = (char) (bArr[i17] & 255);
                        int i21 = state2.mode;
                        int[][] iArr = HighLevelEncoder.CHAR_MAP;
                        if (iArr[i21][c2] > 0) {
                            z3 = z4;
                        } else {
                            z3 = false;
                        }
                        int i22 = 0;
                        State state3 = null;
                        while (true) {
                            i16 = state2.mode;
                            if (i22 > i18) {
                                break;
                            }
                            int i23 = iArr[i22][c2];
                            if (i23 > 0) {
                                if (state3 == null) {
                                    state3 = state2.endBinaryShift(i17);
                                }
                                if (!z3 || i22 == i16 || i22 == i19) {
                                    linkedList2.add(state3.latchAndAppend(i22, i23));
                                }
                                if (!z3 && HighLevelEncoder.SHIFT_TABLE[i16][i22] >= 0) {
                                    linkedList2.add(state3.shiftAndAppend(i22, i23));
                                }
                            }
                            i22++;
                            i18 = 4;
                            i19 = 2;
                        }
                        if (state2.binaryShiftByteCount > 0 || iArr[i16][c2] == 0) {
                            linkedList2.add(state2.addBinaryShiftChar(i17));
                        }
                        i18 = 4;
                        i19 = 2;
                        z4 = true;
                    }
                    singletonList = HighLevelEncoder.simplifyStates(linkedList2);
                    i15 = 1;
                }
                i17 += i15;
            }
            State state4 = (State) Collections.min(singletonList, new Comparator(highLevelEncoder) { // from class: com.google.zxing.aztec.encoder.HighLevelEncoder.1
                public AnonymousClass1(HighLevelEncoder highLevelEncoder2) {
                }

                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((State) obj).bitCount - ((State) obj2).bitCount;
                }
            });
            state4.getClass();
            LinkedList linkedList3 = new LinkedList();
            for (Token token = state4.endBinaryShift(bArr.length).token; token != null; token = token.previous) {
                linkedList3.addFirst(token);
            }
            BitArray bitArray2 = new BitArray();
            Iterator it = linkedList3.iterator();
            while (it.hasNext()) {
                ((Token) it.next()).appendTo(bitArray2, bArr);
            }
            int i24 = bitArray2.size;
            int i25 = ((intValue * i24) / 100) + 11;
            int i26 = i24 + i25;
            int[] iArr2 = Encoder.WORD_SIZE;
            if (intValue2 != 0) {
                if (intValue2 < 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                i8 = Math.abs(intValue2);
                if (z2) {
                    i4 = 4;
                }
                if (i8 <= i4) {
                    if (z2) {
                        i13 = 88;
                    } else {
                        i13 = 112;
                    }
                    i9 = ((i8 * 16) + i13) * i8;
                    i7 = iArr2[i8];
                    int i27 = i9 - (i9 % i7);
                    bitArray = Encoder.stuffBits(i7, bitArray2);
                    int i28 = bitArray.size;
                    if (i25 + i28 <= i27) {
                        if (z2 && i28 > i7 * 64) {
                            throw new IllegalArgumentException("Data to large for user specified layer");
                        }
                    } else {
                        throw new IllegalArgumentException("Data to large for user specified layer");
                    }
                } else {
                    throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(intValue2)));
                }
            } else {
                int i29 = 0;
                BitArray bitArray3 = null;
                int i30 = 0;
                while (i29 <= 32) {
                    if (i29 <= i3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        i5 = i29 + 1;
                    } else {
                        i5 = i29;
                    }
                    if (z) {
                        i6 = 88;
                    } else {
                        i6 = 112;
                    }
                    int i31 = ((i5 * 16) + i6) * i5;
                    if (i26 <= i31) {
                        int i32 = iArr2[i5];
                        if (i30 != i32) {
                            bitArray3 = Encoder.stuffBits(i32, bitArray2);
                            i30 = i32;
                        }
                        int i33 = i31 - (i31 % i30);
                        if ((!z || bitArray3.size <= i30 * 64) && bitArray3.size + i25 <= i33) {
                            bitArray = bitArray3;
                            i7 = i30;
                            z2 = z;
                            i8 = i5;
                            i9 = i31;
                        }
                    }
                    i29++;
                    c = c;
                    i3 = 3;
                }
                throw new IllegalArgumentException("Data too large for an Aztec code");
            }
            BitArray generateCheckWords2 = Encoder.generateCheckWords(bitArray, i9, i7);
            int i34 = bitArray.size / i7;
            BitArray bitArray4 = new BitArray();
            if (z2) {
                bitArray4.appendBits(i8 - 1, 2);
                bitArray4.appendBits(i34 - 1, 6);
                generateCheckWords = Encoder.generateCheckWords(bitArray4, 28, 4);
            } else {
                bitArray4.appendBits(i8 - 1, 5);
                bitArray4.appendBits(i34 - 1, 11);
                generateCheckWords = Encoder.generateCheckWords(bitArray4, 40, 4);
            }
            int i35 = i8 * 4;
            if (z2) {
                i10 = i35 + 11;
            } else {
                i10 = i35 + 14;
            }
            int[] iArr3 = new int[i10];
            if (z2) {
                for (int i36 = 0; i36 < i10; i36++) {
                    iArr3[i36] = i36;
                }
                i11 = i10;
            } else {
                int i37 = i10 / 2;
                i11 = (((i37 - 1) / 15) * 2) + i10 + 1;
                int i38 = i11 / 2;
                for (int i39 = 0; i39 < i37; i39++) {
                    int i40 = (i39 / 15) + i39;
                    iArr3[(i37 - i39) - 1] = (i38 - i40) - 1;
                    iArr3[i37 + i39] = i40 + i38 + 1;
                }
            }
            BitMatrix bitMatrix = new BitMatrix(i11);
            int i41 = 0;
            for (int i42 = 0; i42 < i8; i42++) {
                if (z2) {
                    i12 = ((i8 - i42) * 4) + 9;
                } else {
                    i12 = ((i8 - i42) * 4) + 12;
                }
                for (int i43 = 0; i43 < i12; i43++) {
                    int i44 = i43 * 2;
                    int i45 = 0;
                    for (int i46 = 2; i45 < i46; i46 = 2) {
                        if (generateCheckWords2.get(i41 + i44 + i45)) {
                            int i47 = i42 * 2;
                            bitMatrix.set(iArr3[i47 + i45], iArr3[i47 + i43]);
                        }
                        if (generateCheckWords2.get((i12 * 2) + i41 + i44 + i45)) {
                            int i48 = i42 * 2;
                            bitMatrix.set(iArr3[i48 + i43], iArr3[((i10 - 1) - i48) - i45]);
                        }
                        if (generateCheckWords2.get((i12 * 4) + i41 + i44 + i45)) {
                            int i49 = (i10 - 1) - (i42 * 2);
                            bitMatrix.set(iArr3[i49 - i45], iArr3[i49 - i43]);
                        }
                        if (generateCheckWords2.get((i12 * 6) + i41 + i44 + i45)) {
                            int i50 = i42 * 2;
                            bitMatrix.set(iArr3[((i10 - 1) - i50) - i43], iArr3[i50 + i45]);
                        }
                        i45++;
                    }
                }
                i41 += i12 * 8;
            }
            int i51 = i11 / 2;
            if (z2) {
                for (int i52 = 0; i52 < 7; i52++) {
                    int i53 = (i51 - 3) + i52;
                    if (generateCheckWords.get(i52)) {
                        bitMatrix.set(i53, i51 - 5);
                    }
                    if (generateCheckWords.get(i52 + 7)) {
                        bitMatrix.set(i51 + 5, i53);
                    }
                    if (generateCheckWords.get(20 - i52)) {
                        bitMatrix.set(i53, i51 + 5);
                    }
                    if (generateCheckWords.get(27 - i52)) {
                        bitMatrix.set(i51 - 5, i53);
                    }
                }
            } else {
                for (int i54 = 0; i54 < 10; i54++) {
                    int i55 = (i54 / 5) + (i51 - 5) + i54;
                    if (generateCheckWords.get(i54)) {
                        bitMatrix.set(i55, i51 - 7);
                    }
                    if (generateCheckWords.get(i54 + 10)) {
                        bitMatrix.set(i51 + 7, i55);
                    }
                    if (generateCheckWords.get(29 - i54)) {
                        bitMatrix.set(i55, i51 + 7);
                    }
                    if (generateCheckWords.get(39 - i54)) {
                        bitMatrix.set(i51 - 7, i55);
                    }
                }
            }
            if (z2) {
                Encoder.drawBullsEye(bitMatrix, i51, 5);
            } else {
                Encoder.drawBullsEye(bitMatrix, i51, 7);
                int i56 = 0;
                int i57 = 0;
                while (i56 < (i10 / 2) - 1) {
                    for (int i58 = i51 & 1; i58 < i11; i58 += 2) {
                        int i59 = i51 - i57;
                        bitMatrix.set(i59, i58);
                        int i60 = i51 + i57;
                        bitMatrix.set(i60, i58);
                        bitMatrix.set(i58, i59);
                        bitMatrix.set(i58, i60);
                    }
                    i56 += 15;
                    i57 += 16;
                }
            }
            new AztecCode();
            int i61 = bitMatrix.width;
            int max = Math.max(i, i61);
            int i62 = bitMatrix.height;
            int max2 = Math.max(i2, i62);
            int min = Math.min(max / i61, max2 / i62);
            int i63 = (max - (i61 * min)) / 2;
            int i64 = (max2 - (i62 * min)) / 2;
            BitMatrix bitMatrix2 = new BitMatrix(max, max2);
            int i65 = 0;
            while (i65 < i62) {
                int i66 = i63;
                int i67 = 0;
                while (i67 < i61) {
                    if (bitMatrix.get(i67, i65)) {
                        bitMatrix2.setRegion(i66, i64, min, min);
                    }
                    i67++;
                    i66 += min;
                }
                i65++;
                i64 += min;
            }
            return bitMatrix2;
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got " + barcodeFormat);
    }
}
