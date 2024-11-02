package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Dimension;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.ASCIIEncoder;
import com.google.zxing.datamatrix.encoder.Base256Encoder;
import com.google.zxing.datamatrix.encoder.C40Encoder;
import com.google.zxing.datamatrix.encoder.DefaultPlacement;
import com.google.zxing.datamatrix.encoder.EdifactEncoder;
import com.google.zxing.datamatrix.encoder.Encoder;
import com.google.zxing.datamatrix.encoder.EncoderContext;
import com.google.zxing.datamatrix.encoder.ErrorCorrection;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.datamatrix.encoder.TextEncoder;
import com.google.zxing.datamatrix.encoder.X12Encoder;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataMatrixWriter implements Writer {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map map) {
        int i3;
        int i4;
        byte[] bArr;
        int i5;
        boolean z;
        boolean z2;
        boolean z3;
        int i6;
        int i7;
        if (!str.isEmpty()) {
            if (barcodeFormat == BarcodeFormat.DATA_MATRIX) {
                if (i >= 0 && i2 >= 0) {
                    SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
                    HashMap hashMap = (HashMap) map;
                    SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) hashMap.get(EncodeHintType.DATA_MATRIX_SHAPE);
                    if (symbolShapeHint2 != null) {
                        symbolShapeHint = symbolShapeHint2;
                    }
                    Dimension dimension = (Dimension) hashMap.get(EncodeHintType.MIN_SIZE);
                    Dimension dimension2 = null;
                    if (dimension == null) {
                        dimension = null;
                    }
                    Dimension dimension3 = (Dimension) hashMap.get(EncodeHintType.MAX_SIZE);
                    if (dimension3 != null) {
                        dimension2 = dimension3;
                    }
                    Encoder[] encoderArr = {new ASCIIEncoder(), new C40Encoder(), new TextEncoder(), new X12Encoder(), new EdifactEncoder(), new Base256Encoder()};
                    EncoderContext encoderContext = new EncoderContext(str);
                    encoderContext.shape = symbolShapeHint;
                    encoderContext.minSize = dimension;
                    encoderContext.maxSize = dimension2;
                    int i8 = 2;
                    if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
                        encoderContext.writeCodeword((char) 236);
                        encoderContext.skipAtEnd = 2;
                        encoderContext.pos += 7;
                    } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
                        encoderContext.writeCodeword((char) 237);
                        encoderContext.skipAtEnd = 2;
                        encoderContext.pos += 7;
                    }
                    int i9 = 0;
                    int i10 = 0;
                    while (encoderContext.hasMoreCharacters()) {
                        encoderArr[i10].encode(encoderContext);
                        int i11 = encoderContext.newEncoding;
                        if (i11 >= 0) {
                            encoderContext.newEncoding = -1;
                            i10 = i11;
                        }
                    }
                    int codewordCount = encoderContext.getCodewordCount();
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount());
                    int i12 = encoderContext.symbolInfo.dataCapacity;
                    int i13 = 5;
                    if (codewordCount < i12 && i10 != 0 && i10 != 5) {
                        encoderContext.writeCodeword((char) 254);
                    }
                    StringBuilder sb = encoderContext.codewords;
                    if (sb.length() < i12) {
                        sb.append((char) 129);
                    }
                    while (sb.length() < i12) {
                        int length = (((sb.length() + 1) * 149) % IKnoxCustomManager.Stub.TRANSACTION_getDexForegroundModePackageList) + 1 + 129;
                        if (length > 254) {
                            length -= 254;
                        }
                        sb.append((char) length);
                    }
                    String sb2 = sb.toString();
                    SymbolInfo lookup = SymbolInfo.lookup(sb2.length(), symbolShapeHint, dimension, dimension2);
                    int[] iArr = ErrorCorrection.FACTOR_SETS;
                    int length2 = sb2.length();
                    int i14 = lookup.dataCapacity;
                    if (length2 == i14) {
                        int i15 = lookup.errorCodewords;
                        StringBuilder sb3 = new StringBuilder(i14 + i15);
                        sb3.append(sb2);
                        int interleavedBlockCount = lookup.getInterleavedBlockCount();
                        if (interleavedBlockCount == 1) {
                            sb3.append(ErrorCorrection.createECCBlock(i15, sb2));
                        } else {
                            sb3.setLength(sb3.capacity());
                            int[] iArr2 = new int[interleavedBlockCount];
                            int[] iArr3 = new int[interleavedBlockCount];
                            int[] iArr4 = new int[interleavedBlockCount];
                            int i16 = 0;
                            while (i16 < interleavedBlockCount) {
                                int i17 = i16 + 1;
                                iArr2[i16] = lookup.getDataLengthForInterleavedBlock(i17);
                                iArr3[i16] = lookup.rsBlockError;
                                iArr4[i16] = 0;
                                if (i16 > 0) {
                                    iArr4[i16] = iArr4[i16 - 1] + iArr2[i16];
                                }
                                i16 = i17;
                            }
                            for (int i18 = 0; i18 < interleavedBlockCount; i18++) {
                                StringBuilder sb4 = new StringBuilder(iArr2[i18]);
                                for (int i19 = i18; i19 < i14; i19 += interleavedBlockCount) {
                                    sb4.append(sb2.charAt(i19));
                                }
                                String createECCBlock = ErrorCorrection.createECCBlock(iArr3[i18], sb4.toString());
                                int i20 = 0;
                                int i21 = i18;
                                while (i21 < iArr3[i18] * interleavedBlockCount) {
                                    sb3.setCharAt(i14 + i21, createECCBlock.charAt(i20));
                                    i21 += interleavedBlockCount;
                                    i20++;
                                }
                            }
                        }
                        String sb5 = sb3.toString();
                        int horizontalDataRegions = lookup.getHorizontalDataRegions();
                        int i22 = lookup.matrixWidth;
                        int verticalDataRegions = lookup.getVerticalDataRegions();
                        int i23 = lookup.matrixHeight;
                        DefaultPlacement defaultPlacement = new DefaultPlacement(sb5, horizontalDataRegions * i22, verticalDataRegions * i23);
                        int i24 = 4;
                        int i25 = 0;
                        int i26 = 0;
                        int i27 = 4;
                        while (true) {
                            i3 = defaultPlacement.numcols;
                            i4 = defaultPlacement.numrows;
                            if (i27 == i4 && i25 == 0) {
                                int i28 = i4 - 1;
                                defaultPlacement.module(i28, i9, i26, 1);
                                defaultPlacement.module(i28, 1, i26, i8);
                                defaultPlacement.module(i28, i8, i26, 3);
                                defaultPlacement.module(i9, i3 - 2, i26, i24);
                                int i29 = i3 - 1;
                                defaultPlacement.module(i9, i29, i26, i13);
                                defaultPlacement.module(1, i29, i26, 6);
                                defaultPlacement.module(i8, i29, i26, 7);
                                defaultPlacement.module(3, i29, i26, 8);
                                i26++;
                            }
                            int i30 = i4 - 2;
                            if (i27 == i30 && i25 == 0 && i3 % 4 != 0) {
                                defaultPlacement.module(i4 - 3, i9, i26, 1);
                                defaultPlacement.module(i30, i9, i26, i8);
                                defaultPlacement.module(i4 - 1, i9, i26, 3);
                                defaultPlacement.module(i9, i3 - 4, i26, 4);
                                defaultPlacement.module(i9, i3 - 3, i26, 5);
                                defaultPlacement.module(i9, i3 - 2, i26, 6);
                                int i31 = i3 - 1;
                                defaultPlacement.module(i9, i31, i26, 7);
                                defaultPlacement.module(1, i31, i26, 8);
                                i26++;
                            }
                            if (i27 == i30 && i25 == 0 && i3 % 8 == 4) {
                                defaultPlacement.module(i4 - 3, i9, i26, 1);
                                defaultPlacement.module(i30, i9, i26, i8);
                                defaultPlacement.module(i4 - 1, i9, i26, 3);
                                defaultPlacement.module(i9, i3 - 2, i26, 4);
                                int i32 = i3 - 1;
                                defaultPlacement.module(i9, i32, i26, 5);
                                defaultPlacement.module(1, i32, i26, 6);
                                defaultPlacement.module(i8, i32, i26, 7);
                                defaultPlacement.module(3, i32, i26, 8);
                                i26++;
                            }
                            if (i27 == i4 + 4 && i25 == i8 && i3 % 8 == 0) {
                                int i33 = i4 - 1;
                                defaultPlacement.module(i33, i9, i26, 1);
                                int i34 = i3 - 1;
                                defaultPlacement.module(i33, i34, i26, i8);
                                int i35 = i3 - 3;
                                defaultPlacement.module(i9, i35, i26, 3);
                                int i36 = i3 - 2;
                                defaultPlacement.module(i9, i36, i26, 4);
                                defaultPlacement.module(i9, i34, i26, 5);
                                defaultPlacement.module(1, i35, i26, 6);
                                defaultPlacement.module(1, i36, i26, 7);
                                defaultPlacement.module(1, i34, i26, 8);
                                i26++;
                            }
                            do {
                                bArr = defaultPlacement.bits;
                                if (i27 < i4 && i25 >= 0) {
                                    if (bArr[(i27 * i3) + i25] >= 0) {
                                        i7 = 1;
                                    } else {
                                        i7 = i9;
                                    }
                                    if (i7 == 0) {
                                        defaultPlacement.utah(i27, i25, i26);
                                        i26++;
                                    }
                                }
                                i27 -= 2;
                                i25 += 2;
                                if (i27 < 0) {
                                    break;
                                }
                            } while (i25 < i3);
                            int i37 = i27 + 1;
                            int i38 = i25 + 3;
                            do {
                                if (i37 >= 0 && i38 < i3) {
                                    if (bArr[(i37 * i3) + i38] >= 0) {
                                        i6 = 1;
                                    } else {
                                        i6 = i9;
                                    }
                                    if (i6 == 0) {
                                        defaultPlacement.utah(i37, i38, i26);
                                        i26++;
                                    }
                                }
                                i37 += 2;
                                i38 -= 2;
                                if (i37 >= i4) {
                                    break;
                                }
                            } while (i38 >= 0);
                            i27 = i37 + 3;
                            i25 = i38 + 1;
                            if (i27 >= i4 && i25 >= i3) {
                                break;
                            }
                            i9 = i9;
                            i8 = 2;
                            i24 = 4;
                            i13 = 5;
                        }
                        int i39 = i3 - 1;
                        int i40 = i4 - 1;
                        if (bArr[(i40 * i3) + i39] >= 0) {
                            i5 = 1;
                        } else {
                            i5 = i9;
                        }
                        if (i5 == 0) {
                            bArr[(i40 * i3) + i39] = 1;
                            bArr[((i4 - 2) * i3) + (i3 - 2)] = 1;
                        }
                        int horizontalDataRegions2 = lookup.getHorizontalDataRegions() * i22;
                        int verticalDataRegions2 = lookup.getVerticalDataRegions() * i23;
                        ByteMatrix byteMatrix = new ByteMatrix(lookup.getSymbolWidth(), (lookup.getVerticalDataRegions() * 2) + (lookup.getVerticalDataRegions() * i23));
                        int i41 = i9;
                        int i42 = i41;
                        while (i41 < verticalDataRegions2) {
                            int i43 = i41 % i23;
                            if (i43 == 0) {
                                int i44 = i9;
                                int i45 = i44;
                                while (i44 < lookup.getSymbolWidth()) {
                                    if (i44 % 2 == 0) {
                                        z3 = 1;
                                    } else {
                                        z3 = i9;
                                    }
                                    byteMatrix.set(i45, i42, z3);
                                    i45++;
                                    i44++;
                                }
                                i42++;
                            }
                            int i46 = i9;
                            int i47 = i46;
                            while (i46 < horizontalDataRegions2) {
                                int i48 = i46 % i22;
                                if (i48 == 0) {
                                    byteMatrix.set(i47, i42, true);
                                    i47++;
                                }
                                if (bArr[(i3 * i41) + i46] == 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                byteMatrix.set(i47, i42, z);
                                i47++;
                                if (i48 == i22 - 1) {
                                    if (i41 % 2 == 0) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    byteMatrix.set(i47, i42, z2);
                                    i47++;
                                }
                                i46++;
                            }
                            i42++;
                            if (i43 == i23 - 1) {
                                int i49 = 0;
                                for (int i50 = 0; i50 < lookup.getSymbolWidth(); i50++) {
                                    byteMatrix.set(i49, i42, true);
                                    i49++;
                                }
                                i42++;
                            }
                            i41++;
                            i9 = 0;
                        }
                        int i51 = byteMatrix.width;
                        int i52 = byteMatrix.height;
                        BitMatrix bitMatrix = new BitMatrix(i51, i52);
                        int[] iArr5 = bitMatrix.bits;
                        int length3 = iArr5.length;
                        for (int i53 = 0; i53 < length3; i53++) {
                            iArr5[i53] = 0;
                        }
                        for (int i54 = 0; i54 < i51; i54++) {
                            for (int i55 = 0; i55 < i52; i55++) {
                                if (byteMatrix.get(i54, i55) == 1) {
                                    bitMatrix.set(i54, i55);
                                }
                            }
                        }
                        return bitMatrix;
                    }
                    throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
                }
                throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
            }
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + barcodeFormat);
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
