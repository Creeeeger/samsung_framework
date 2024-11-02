package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ReedSolomonEncoder {
    public final List cachedGenerators;
    public final GenericGF field;

    public ReedSolomonEncoder(GenericGF genericGF) {
        this.field = genericGF;
        ArrayList arrayList = new ArrayList();
        this.cachedGenerators = arrayList;
        arrayList.add(new GenericGFPoly(genericGF, new int[]{1}));
    }

    public final void encode(int i, int[] iArr) {
        GenericGFPoly genericGFPoly;
        if (i != 0) {
            int length = iArr.length - i;
            if (length > 0) {
                ArrayList arrayList = (ArrayList) this.cachedGenerators;
                int size = arrayList.size();
                int i2 = 1;
                GenericGF genericGF = this.field;
                if (i >= size) {
                    GenericGFPoly genericGFPoly2 = (GenericGFPoly) arrayList.get(arrayList.size() - 1);
                    int size2 = arrayList.size();
                    while (size2 <= i) {
                        int i3 = (size2 - 1) + genericGF.generatorBase;
                        genericGF.checkInit();
                        GenericGFPoly genericGFPoly3 = new GenericGFPoly(genericGF, new int[]{i2, genericGF.expTable[i3]});
                        genericGFPoly2.getClass();
                        GenericGF genericGF2 = genericGFPoly2.field;
                        if (genericGF2.equals(genericGFPoly3.field)) {
                            if (!genericGFPoly2.isZero() && !genericGFPoly3.isZero()) {
                                int[] iArr2 = genericGFPoly2.coefficients;
                                int length2 = iArr2.length;
                                int[] iArr3 = genericGFPoly3.coefficients;
                                int length3 = iArr3.length;
                                int[] iArr4 = new int[(length2 + length3) - 1];
                                for (int i4 = 0; i4 < length2; i4++) {
                                    int i5 = iArr2[i4];
                                    int i6 = 0;
                                    while (i6 < length3) {
                                        int i7 = i4 + i6;
                                        iArr4[i7] = iArr4[i7] ^ genericGF2.multiply(i5, iArr3[i6]);
                                        i6++;
                                        iArr2 = iArr2;
                                    }
                                }
                                genericGFPoly2 = new GenericGFPoly(genericGF2, iArr4);
                            } else {
                                genericGF2.checkInit();
                                genericGFPoly2 = genericGF2.zero;
                            }
                            arrayList.add(genericGFPoly2);
                            size2++;
                            i2 = 1;
                        } else {
                            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
                        }
                    }
                }
                GenericGFPoly genericGFPoly4 = (GenericGFPoly) arrayList.get(i);
                int[] iArr5 = new int[length];
                System.arraycopy(iArr, 0, iArr5, 0, length);
                GenericGFPoly multiplyByMonomial = new GenericGFPoly(genericGF, iArr5).multiplyByMonomial(i, 1);
                multiplyByMonomial.getClass();
                GenericGF genericGF3 = genericGFPoly4.field;
                GenericGF genericGF4 = multiplyByMonomial.field;
                if (genericGF4.equals(genericGF3)) {
                    if (!genericGFPoly4.isZero()) {
                        genericGF4.checkInit();
                        GenericGFPoly genericGFPoly5 = genericGF4.zero;
                        int i8 = genericGFPoly4.coefficients[(r7.length - 1) - (r7.length - 1)];
                        genericGF4.checkInit();
                        if (i8 != 0) {
                            int i9 = genericGF4.expTable[(genericGF4.size - genericGF4.logTable[i8]) - 1];
                            while (multiplyByMonomial.coefficients.length - 1 >= r7.length - 1 && !multiplyByMonomial.isZero()) {
                                int length4 = (r9.length - 1) - (r7.length - 1);
                                int multiply = genericGF4.multiply(multiplyByMonomial.coefficients[(r9.length - 1) - (r9.length - 1)], i9);
                                GenericGFPoly multiplyByMonomial2 = genericGFPoly4.multiplyByMonomial(length4, multiply);
                                genericGF4.checkInit();
                                if (length4 >= 0) {
                                    if (multiply == 0) {
                                        genericGFPoly = genericGF4.zero;
                                    } else {
                                        int[] iArr6 = new int[length4 + 1];
                                        iArr6[0] = multiply;
                                        genericGFPoly = new GenericGFPoly(genericGF4, iArr6);
                                    }
                                    genericGFPoly5 = genericGFPoly5.addOrSubtract(genericGFPoly);
                                    multiplyByMonomial = multiplyByMonomial.addOrSubtract(multiplyByMonomial2);
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            }
                            int[] iArr7 = new GenericGFPoly[]{genericGFPoly5, multiplyByMonomial}[1].coefficients;
                            int length5 = i - iArr7.length;
                            for (int i10 = 0; i10 < length5; i10++) {
                                iArr[length + i10] = 0;
                            }
                            System.arraycopy(iArr7, 0, iArr, length + length5, iArr7.length);
                            return;
                        }
                        throw new ArithmeticException();
                    }
                    throw new IllegalArgumentException("Divide by 0");
                }
                throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
            }
            throw new IllegalArgumentException("No data bytes provided");
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
