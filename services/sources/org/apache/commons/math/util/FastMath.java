package org.apache.commons.math.util;

import android.net.util.NetworkConstants;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class FastMath {
    public static final double[] FACT;
    public static final double[] EXP_INT_TABLE_A = new double[NetworkConstants.ETHER_MTU];
    public static final double[] EXP_INT_TABLE_B = new double[NetworkConstants.ETHER_MTU];
    public static final double[] EXP_FRAC_TABLE_A = new double[1025];
    public static final double[] EXP_FRAC_TABLE_B = new double[1025];
    public static final double[][] LN_MANT = new double[1024][];
    public static final double[][] LN_SPLIT_COEF = {new double[]{2.0d, 0.0d}, new double[]{0.6666666269302368d, 3.9736429850260626E-8d}, new double[]{0.3999999761581421d, 2.3841857910019882E-8d}, new double[]{0.2857142686843872d, 1.7029898543501842E-8d}, new double[]{0.2222222089767456d, 1.3245471311735498E-8d}, new double[]{0.1818181574344635d, 2.4384203044354907E-8d}, new double[]{0.1538461446762085d, 9.140260083262505E-9d}, new double[]{0.13333332538604736d, 9.220590270857665E-9d}, new double[]{0.11764700710773468d, 1.2393345855018391E-8d}, new double[]{0.10526403784751892d, 8.251545029714408E-9d}, new double[]{0.0952233225107193d, 1.2675934823758863E-8d}, new double[]{0.08713622391223907d, 1.1430250008909141E-8d}, new double[]{0.07842259109020233d, 2.404307984052299E-9d}, new double[]{0.08371849358081818d, 1.176342548272881E-8d}, new double[]{0.030589580535888672d, 1.2958646899018938E-9d}, new double[]{0.14982303977012634d, 1.225743062930824E-8d}};
    public static final double[][] LN_QUICK_COEF = {new double[]{1.0d, 5.669184079525E-24d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.986821492305628E-8d}, new double[]{-0.25d, -6.663542893624021E-14d}, new double[]{0.19999998807907104d, 1.1921056801463227E-8d}, new double[]{-0.1666666567325592d, -7.800414592973399E-9d}, new double[]{0.1428571343421936d, 5.650007086920087E-9d}, new double[]{-0.12502530217170715d, -7.44321345601866E-11d}, new double[]{0.11113807559013367d, 9.219544613762692E-9d}};
    public static final double[] SINE_TABLE_A = new double[14];
    public static final double[] SINE_TABLE_B = new double[14];
    public static final double[] COSINE_TABLE_A = new double[14];
    public static final double[] COSINE_TABLE_B = new double[14];
    public static final double[] TANGENT_TABLE_A = new double[14];
    public static final double[] TANGENT_TABLE_B = new double[14];

    static {
        double[] dArr;
        double[] dArr2;
        double[] dArr3;
        double[] dArr4;
        int i;
        double[] dArr5;
        double[] dArr6;
        double[] dArr7;
        double[] dArr8 = new double[20];
        FACT = dArr8;
        int i2 = 2;
        double d = 1.0d;
        dArr8[0] = 1.0d;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            double[] dArr9 = FACT;
            if (i4 >= 20) {
                break;
            }
            dArr9[i4] = dArr9[i4 - 1] * i4;
            i4++;
        }
        double[] dArr10 = new double[2];
        double[] dArr11 = new double[2];
        int i5 = 0;
        for (int i6 = 750; i5 < i6; i6 = 750) {
            double[] dArr12 = new double[2];
            double[] dArr13 = new double[2];
            double[] dArr14 = {2.718281828459045d, 1.4456468917292502E-16d};
            split(1.0d, dArr13);
            for (int i7 = i5; i7 > 0; i7 >>= 1) {
                if ((i7 & 1) != 0) {
                    quadMult(dArr13, dArr14, dArr12);
                    dArr13[0] = dArr12[0];
                    dArr13[1] = dArr12[1];
                }
                quadMult(dArr14, dArr14, dArr12);
                dArr14[0] = dArr12[0];
                dArr14[1] = dArr12[1];
            }
            dArr10[0] = dArr13[0];
            dArr10[1] = dArr13[1];
            resplit(dArr10);
            double[] dArr15 = EXP_INT_TABLE_A;
            int i8 = i5 + 750;
            dArr15[i8] = dArr10[0];
            double[] dArr16 = EXP_INT_TABLE_B;
            dArr16[i8] = dArr10[1];
            if (i5 != 0) {
                splitReciprocal(dArr10, dArr11);
                int i9 = 750 - i5;
                dArr15[i9] = dArr11[0];
                dArr16[i9] = dArr11[1];
            }
            i5++;
        }
        for (int i10 = 0; i10 < 1025; i10++) {
            double[] dArr17 = new double[2];
            double[] dArr18 = new double[2];
            double[] dArr19 = new double[2];
            split(i10 / 1024.0d, dArr17);
            double[] dArr20 = {0.0d, 0.0d};
            for (int i11 = 19; i11 >= 0; i11--) {
                splitMult(dArr17, dArr20, dArr19);
                dArr20[0] = dArr19[0];
                dArr20[1] = dArr19[1];
                split(FACT[i11], dArr19);
                splitReciprocal(dArr19, dArr18);
                splitAdd(dArr20, dArr18, dArr19);
                dArr20[0] = dArr19[0];
                dArr20[1] = dArr19[1];
            }
            double d2 = dArr20[0];
            dArr10[0] = d2;
            dArr10[1] = dArr20[1];
            EXP_FRAC_TABLE_A[i10] = d2;
            EXP_FRAC_TABLE_B[i10] = dArr10[1];
        }
        int i12 = 0;
        while (true) {
            double[][] dArr21 = LN_MANT;
            if (i12 >= 1024) {
                break;
            }
            double[] dArr22 = new double[2];
            double[] dArr23 = new double[2];
            double[] dArr24 = new double[2];
            split(Double.longBitsToDouble((i12 << 42) | 4607182418800017408L), dArr22);
            dArr22[0] = dArr22[0] + d;
            resplit(dArr22);
            splitReciprocal(dArr22, dArr24);
            dArr22[0] = dArr22[0] - 2.0d;
            resplit(dArr22);
            double[] dArr25 = {r11[0], r11[1]};
            splitMult(dArr22, dArr24, dArr25);
            dArr22[0] = dArr25[0];
            dArr22[1] = dArr25[1];
            splitMult(dArr22, dArr22, dArr23);
            double[][] dArr26 = LN_SPLIT_COEF;
            double[] dArr27 = dArr26[15];
            for (int i13 = 14; i13 >= 0; i13--) {
                splitMult(dArr25, dArr23, dArr24);
                dArr25[0] = dArr24[0];
                dArr25[1] = dArr24[1];
                splitAdd(dArr25, dArr26[i13], dArr24);
                dArr25[0] = dArr24[0];
                dArr25[1] = dArr24[1];
            }
            splitMult(dArr25, dArr22, dArr24);
            dArr25[0] = dArr24[0];
            dArr25[1] = dArr24[1];
            dArr21[i12] = dArr25;
            i12++;
            d = 1.0d;
        }
        double[] dArr28 = new double[2];
        int i14 = 0;
        while (true) {
            dArr = COSINE_TABLE_B;
            dArr2 = COSINE_TABLE_A;
            dArr3 = SINE_TABLE_B;
            dArr4 = SINE_TABLE_A;
            if (i14 >= 7) {
                break;
            }
            double d3 = i14 / 8.0d;
            double[] dArr29 = new double[i2];
            double[] dArr30 = new double[i2];
            double[] dArr31 = new double[i2];
            double[] dArr32 = new double[i2];
            split(d3, dArr29);
            dArr30[i3] = 0.0d;
            dArr30[0] = 0.0d;
            int i15 = 19;
            while (true) {
                dArr5 = FACT;
                if (i15 < 0) {
                    break;
                }
                splitMult(dArr29, dArr30, dArr32);
                dArr30[0] = dArr32[0];
                dArr30[i3] = dArr32[i3];
                if ((i15 & 1) == 0) {
                    dArr6 = dArr;
                    dArr7 = dArr4;
                } else {
                    dArr6 = dArr;
                    split(dArr5[i15], dArr32);
                    splitReciprocal(dArr32, dArr31);
                    if ((i15 & 2) != 0) {
                        dArr31[0] = -dArr31[0];
                        dArr7 = dArr4;
                        i3 = 1;
                        dArr31[1] = -dArr31[1];
                    } else {
                        dArr7 = dArr4;
                        i3 = 1;
                    }
                    splitAdd(dArr30, dArr31, dArr32);
                    dArr30[0] = dArr32[0];
                    dArr30[i3] = dArr32[i3];
                }
                i15--;
                dArr4 = dArr7;
                dArr = dArr6;
            }
            double[] dArr33 = dArr;
            double d4 = dArr30[0];
            dArr28[0] = d4;
            dArr28[i3] = dArr30[i3];
            dArr4[i14] = d4;
            dArr3[i14] = dArr28[i3];
            double[] dArr34 = new double[2];
            double[] dArr35 = new double[2];
            double[] dArr36 = new double[2];
            double[] dArr37 = new double[2];
            split(d3, dArr34);
            dArr35[i3] = 0.0d;
            dArr35[0] = 0.0d;
            for (int i16 = 19; i16 >= 0; i16--) {
                splitMult(dArr34, dArr35, dArr37);
                dArr35[0] = dArr37[0];
                dArr35[i3] = dArr37[i3];
                if ((i16 & 1) == 0) {
                    split(dArr5[i16], dArr37);
                    splitReciprocal(dArr37, dArr36);
                    if ((i16 & 2) != 0) {
                        dArr36[0] = -dArr36[0];
                        dArr36[i3] = -dArr36[i3];
                    }
                    splitAdd(dArr35, dArr36, dArr37);
                    dArr35[0] = dArr37[0];
                    dArr35[i3] = dArr37[i3];
                }
            }
            double d5 = dArr35[0];
            dArr28[0] = d5;
            dArr28[i3] = dArr35[i3];
            dArr2[i14] = d5;
            dArr33[i14] = dArr28[i3];
            i14 += i3;
            i2 = 2;
        }
        for (i = 7; i < 14; i += i3) {
            double[] dArr38 = new double[2];
            double[] dArr39 = new double[2];
            double[] dArr40 = new double[2];
            double[] dArr41 = new double[2];
            if ((i & 1) == 0) {
                int i17 = i / 2;
                dArr38[0] = dArr4[i17];
                dArr38[i3] = dArr3[i17];
                dArr39[0] = dArr2[i17];
                dArr39[i3] = dArr[i17];
                splitMult(dArr38, dArr39, dArr28);
                dArr4[i] = dArr28[0] * 2.0d;
                dArr3[i] = dArr28[i3] * 2.0d;
                splitMult(dArr39, dArr39, dArr40);
                splitMult(dArr38, dArr38, dArr41);
                dArr41[0] = -dArr41[0];
                dArr41[i3] = -dArr41[i3];
                splitAdd(dArr40, dArr41, dArr28);
                dArr2[i] = dArr28[0];
                dArr[i] = dArr28[i3];
            } else {
                int i18 = i / 2;
                dArr38[0] = dArr4[i18];
                dArr38[i3] = dArr3[i18];
                dArr39[0] = dArr2[i18];
                dArr39[i3] = dArr[i18];
                int i19 = i18 + i3;
                dArr40[0] = dArr4[i19];
                dArr40[i3] = dArr3[i19];
                double d6 = dArr2[i19];
                double d7 = dArr[i19];
                double[] dArr42 = new double[2];
                dArr42[0] = d6;
                dArr42[i3] = d7;
                splitMult(dArr38, dArr42, dArr41);
                splitMult(dArr39, dArr40, dArr28);
                splitAdd(dArr28, dArr41, dArr28);
                dArr4[i] = dArr28[0];
                dArr3[i] = dArr28[i3];
                splitMult(dArr39, dArr42, dArr28);
                splitMult(dArr38, dArr40, dArr41);
                dArr41[0] = -dArr41[0];
                dArr41[i3] = -dArr41[i3];
                splitAdd(dArr28, dArr41, dArr28);
                dArr2[i] = dArr28[0];
                dArr[i] = dArr28[i3];
            }
        }
        for (int i20 = 0; i20 < 14; i20 += i3) {
            double[] dArr43 = new double[2];
            double d8 = dArr2[i20];
            double d9 = dArr[i20];
            double[] dArr44 = new double[2];
            dArr44[0] = d8;
            dArr44[i3] = d9;
            splitReciprocal(dArr44, dArr43);
            double d10 = dArr4[i20];
            double d11 = dArr3[i20];
            double[] dArr45 = new double[2];
            dArr45[0] = d10;
            dArr45[i3] = d11;
            splitMult(dArr45, dArr43, dArr44);
            TANGENT_TABLE_A[i20] = dArr44[0];
            TANGENT_TABLE_B[i20] = dArr44[i3];
        }
    }

    public static double abs(double d) {
        if (d < 0.0d) {
            return -d;
        }
        if (d == 0.0d) {
            return 0.0d;
        }
        return d;
    }

    public static double exp(double d) {
        int i;
        double d2;
        double d3;
        double[] dArr = EXP_INT_TABLE_B;
        double[] dArr2 = EXP_INT_TABLE_A;
        if (d < 0.0d) {
            int i2 = (int) (-d);
            if (i2 > 746) {
                return 0.0d;
            }
            if (i2 > 709) {
                return exp(d + 40.19140625d) / 2.85040095144011776E17d;
            }
            if (i2 == 709) {
                return exp(d + 1.494140625d) / 4.455505956692757d;
            }
            int i3 = i2 + 1;
            int i4 = 750 - i3;
            d2 = dArr2[i4];
            d3 = dArr[i4];
            i = -i3;
        } else {
            i = (int) d;
            if (i > 709) {
                return Double.POSITIVE_INFINITY;
            }
            int i5 = i + 750;
            d2 = dArr2[i5];
            d3 = dArr[i5];
        }
        double d4 = i;
        int i6 = (int) ((d - d4) * 1024.0d);
        double d5 = EXP_FRAC_TABLE_A[i6];
        double d6 = EXP_FRAC_TABLE_B[i6];
        double d7 = d - ((i6 / 1024.0d) + d4);
        double d8 = (((((((0.04168701738764507d * d7) + 0.1666666505023083d) * d7) + 0.5000000000042687d) * d7) + 1.0d) * d7) - 3.940510424527919E-20d;
        double d9 = d2 * d5;
        double d10 = (d3 * d6) + (d5 * d3) + (d2 * d6);
        return ((d10 + d9) * d8) + d10 + d9;
    }

    public static double log(double d) {
        if (d == 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        long doubleToLongBits = Double.doubleToLongBits(d);
        if (((Long.MIN_VALUE & doubleToLongBits) != 0 || d != d) && d != 0.0d) {
            return Double.NaN;
        }
        if (d == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        int i = ((int) (doubleToLongBits >> 52)) - 1023;
        if ((9218868437227405312L & doubleToLongBits) == 0) {
            if (d == 0.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            doubleToLongBits <<= 1;
            while ((4503599627370496L & doubleToLongBits) == 0) {
                i--;
                doubleToLongBits <<= 1;
            }
        }
        if ((i != -1 && i != 0) || d >= 1.01d || d <= 0.99d) {
            long j = 4499201580859392L & doubleToLongBits;
            double[] dArr = LN_MANT[(int) (j >> 42)];
            double d2 = (doubleToLongBits & 4398046511103L) / (j + 4.503599627370496E15d);
            double d3 = (((((((((((-0.16624882440418567d) * d2) + 0.19999954120254515d) * d2) - 0.2499999997677497d) * d2) + 0.3333333333332802d) * d2) - 0.5d) * d2) + 1.0d) * d2;
            double d4 = i;
            double d5 = 0.6931470632553101d * d4;
            double d6 = dArr[0];
            double d7 = d5 + d6;
            double d8 = (-((d7 - d5) - d6)) + 0.0d;
            double d9 = d7 + d3;
            double d10 = d8 + (-((d9 - d7) - d3));
            double d11 = d4 * 1.1730463525082348E-7d;
            double d12 = d9 + d11;
            double d13 = d10 + (-((d12 - d9) - d11));
            double d14 = dArr[1];
            double d15 = d12 + d14;
            double d16 = d13 + (-((d15 - d12) - d14));
            double d17 = d15 + 0.0d;
            return d16 + (-((d17 - d15) - 0.0d)) + d17;
        }
        double d18 = d - 1.0d;
        double d19 = d18 * 1.073741824E9d;
        double d20 = (d18 + d19) - d19;
        double d21 = d18 - d20;
        double[][] dArr2 = LN_QUICK_COEF;
        double[] dArr3 = dArr2[8];
        double d22 = dArr3[0];
        double d23 = dArr3[1];
        for (int i2 = 7; i2 >= 0; i2--) {
            double d24 = d22 * d20;
            double d25 = (d23 * d21) + (d23 * d20) + (d22 * d21);
            double d26 = d24 * 1.073741824E9d;
            double d27 = (d24 + d26) - d26;
            double d28 = (d24 - d27) + d25;
            double[] dArr4 = dArr2[i2];
            double d29 = d27 + dArr4[0];
            double d30 = d28 + dArr4[1];
            double d31 = d29 * 1.073741824E9d;
            d22 = (d29 + d31) - d31;
            d23 = (d29 - d22) + d30;
        }
        double d32 = d22 * d20;
        double d33 = (d23 * d21) + (d20 * d23) + (d22 * d21);
        double d34 = 1.073741824E9d * d32;
        double d35 = (d32 + d34) - d34;
        return (d32 - d35) + d33 + d35;
    }

    public static double max(double d, double d2) {
        if (d > d2) {
            return d;
        }
        if (d < d2) {
            return d2;
        }
        if (d != d2) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d) == Long.MIN_VALUE ? d2 : d;
    }

    public static void quadMult(double[] dArr, double[] dArr2, double[] dArr3) {
        double[] dArr4 = new double[2];
        double[] dArr5 = new double[2];
        double[] dArr6 = new double[2];
        split(dArr[0], dArr4);
        split(dArr2[0], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        dArr3[0] = dArr6[0];
        dArr3[1] = dArr6[1];
        split(dArr2[1], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        double d = dArr3[0];
        double d2 = dArr6[0];
        double d3 = d + d2;
        double d4 = dArr3[1] - ((d3 - d) - d2);
        dArr3[1] = d4;
        dArr3[0] = d3;
        double d5 = dArr6[1];
        double d6 = d3 + d5;
        dArr3[1] = d4 - ((d6 - d3) - d5);
        dArr3[0] = d6;
        split(dArr[1], dArr4);
        split(dArr2[0], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        double d7 = dArr3[0];
        double d8 = dArr6[0];
        double d9 = d7 + d8;
        double d10 = dArr3[1] - ((d9 - d7) - d8);
        dArr3[1] = d10;
        dArr3[0] = d9;
        double d11 = dArr6[1];
        double d12 = d9 + d11;
        dArr3[1] = d10 - ((d12 - d9) - d11);
        dArr3[0] = d12;
        split(dArr[1], dArr4);
        split(dArr2[1], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        double d13 = dArr3[0];
        double d14 = dArr6[0];
        double d15 = d13 + d14;
        double d16 = dArr3[1] - ((d15 - d13) - d14);
        dArr3[1] = d16;
        dArr3[0] = d15;
        double d17 = dArr6[1];
        double d18 = d15 + d17;
        dArr3[1] = d16 - ((d18 - d15) - d17);
        dArr3[0] = d18;
    }

    public static void resplit(double[] dArr) {
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = d + d2;
        double d4 = -((d3 - d) - d2);
        if (d3 >= 8.0E298d || d3 <= -8.0E298d) {
            double d5 = (((9.313225746154785E-10d * d3) + d3) - d3) * 1.073741824E9d;
            dArr[0] = d5;
            dArr[1] = (d3 - d5) + d4;
        } else {
            double d6 = 1.073741824E9d * d3;
            double d7 = (d3 + d6) - d6;
            dArr[0] = d7;
            dArr[1] = (d3 - d7) + d4;
        }
    }

    public static void split(double d, double[] dArr) {
        if (d >= 8.0E298d || d <= -8.0E298d) {
            double d2 = (((9.313225746154785E-10d * d) + d) - d) * 1.073741824E9d;
            dArr[0] = d2;
            dArr[1] = d - d2;
        } else {
            double d3 = 1.073741824E9d * d;
            double d4 = (d + d3) - d3;
            dArr[0] = d4;
            dArr[1] = d - d4;
        }
    }

    public static void splitAdd(double[] dArr, double[] dArr2, double[] dArr3) {
        dArr3[0] = dArr[0] + dArr2[0];
        dArr3[1] = dArr[1] + dArr2[1];
        resplit(dArr3);
    }

    public static void splitMult(double[] dArr, double[] dArr2, double[] dArr3) {
        dArr3[0] = dArr[0] * dArr2[0];
        double d = dArr[0];
        double d2 = dArr2[1];
        double d3 = dArr[1];
        double d4 = dArr2[0] * d3;
        dArr3[1] = (d3 * d2) + d4 + (d * d2);
        resplit(dArr3);
    }

    public static void splitReciprocal(double[] dArr, double[] dArr2) {
        if (dArr[0] == 0.0d) {
            dArr[0] = dArr[1];
            dArr[1] = 0.0d;
        }
        dArr2[0] = 0.9999997615814209d / dArr[0];
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = ((2.384185791015625E-7d * d) - (0.9999997615814209d * d2)) / ((d * d2) + (d * d));
        dArr2[1] = d3;
        if (d3 != d3) {
            dArr2[1] = 0.0d;
        }
        resplit(dArr2);
        for (int i = 0; i < 2; i++) {
            double d4 = dArr2[0];
            double d5 = dArr[0];
            double d6 = dArr[1];
            double d7 = dArr2[1];
            dArr2[1] = ((d4 + d7) * ((((1.0d - (d4 * d5)) - (d4 * d6)) - (d5 * d7)) - (d6 * d7))) + d7;
        }
    }
}
