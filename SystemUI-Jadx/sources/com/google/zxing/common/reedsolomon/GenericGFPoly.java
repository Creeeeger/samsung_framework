package com.google.zxing.common.reedsolomon;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GenericGFPoly {
    public final int[] coefficients;
    public final GenericGF field;

    public GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = genericGF;
            int length = iArr.length;
            int i = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i < length && iArr[i] == 0) {
                    i++;
                }
                if (i == length) {
                    genericGF.checkInit();
                    this.coefficients = genericGF.zero.coefficients;
                    return;
                } else {
                    int[] iArr2 = new int[length - i];
                    this.coefficients = iArr2;
                    System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
                    return;
                }
            }
            this.coefficients = iArr;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        GenericGF genericGF = genericGFPoly.field;
        GenericGF genericGF2 = this.field;
        if (genericGF2.equals(genericGF)) {
            if (isZero()) {
                return genericGFPoly;
            }
            if (genericGFPoly.isZero()) {
                return this;
            }
            int[] iArr = this.coefficients;
            int length = iArr.length;
            int[] iArr2 = genericGFPoly.coefficients;
            if (length <= iArr2.length) {
                iArr2 = iArr;
                iArr = iArr2;
            }
            int[] iArr3 = new int[iArr.length];
            int length2 = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length2);
            for (int i = length2; i < iArr.length; i++) {
                iArr3[i] = iArr2[i - length2] ^ iArr[i];
            }
            return new GenericGFPoly(genericGF2, iArr3);
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    public final boolean isZero() {
        if (this.coefficients[0] != 0) {
            return false;
        }
        return true;
    }

    public final GenericGFPoly multiplyByMonomial(int i, int i2) {
        if (i >= 0) {
            GenericGF genericGF = this.field;
            if (i2 == 0) {
                genericGF.checkInit();
                return genericGF.zero;
            }
            int[] iArr = this.coefficients;
            int length = iArr.length;
            int[] iArr2 = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr2[i3] = genericGF.multiply(iArr[i3], i2);
            }
            return new GenericGFPoly(genericGF, iArr2);
        }
        throw new IllegalArgumentException();
    }

    public final String toString() {
        int[] iArr = this.coefficients;
        StringBuilder sb = new StringBuilder((iArr.length - 1) * 8);
        int length = iArr.length;
        while (true) {
            length--;
            if (length >= 0) {
                int i = iArr[(iArr.length - 1) - length];
                if (i != 0) {
                    if (i < 0) {
                        sb.append(" - ");
                        i = -i;
                    } else if (sb.length() > 0) {
                        sb.append(" + ");
                    }
                    if (length == 0 || i != 1) {
                        GenericGF genericGF = this.field;
                        genericGF.checkInit();
                        if (i != 0) {
                            int i2 = genericGF.logTable[i];
                            if (i2 == 0) {
                                sb.append('1');
                            } else if (i2 == 1) {
                                sb.append('a');
                            } else {
                                sb.append("a^");
                                sb.append(i2);
                            }
                        } else {
                            throw new IllegalArgumentException();
                        }
                    }
                    if (length != 0) {
                        if (length == 1) {
                            sb.append('x');
                        } else {
                            sb.append("x^");
                            sb.append(length);
                        }
                    }
                }
            } else {
                return sb.toString();
            }
        }
    }
}
