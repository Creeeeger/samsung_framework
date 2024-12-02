package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public final class LinearCurveFit extends CurveFit {
    double[] mSlopeTemp;
    private double[] mT;
    private double[][] mY;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr2[0].length;
        this.mSlopeTemp = new double[length];
        this.mT = dArr;
        this.mY = dArr2;
        if (length > 2) {
            double d = 0.0d;
            int i = 0;
            while (i < dArr.length) {
                double d2 = dArr2[i][0];
                if (i > 0) {
                    double d3 = d2 - d;
                    Math.hypot(d3, d3);
                }
                i++;
                d = d2;
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void getPos(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int i = 0;
        int length2 = this.mY[0].length;
        double d2 = dArr2[0];
        if (d <= d2) {
            getSlope(d2, this.mSlopeTemp);
            for (int i2 = 0; i2 < length2; i2++) {
                dArr[i2] = ((d - this.mT[0]) * this.mSlopeTemp[i2]) + this.mY[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        double d3 = dArr2[i3];
        if (d >= d3) {
            getSlope(d3, this.mSlopeTemp);
            while (i < length2) {
                dArr[i] = ((d - this.mT[i3]) * this.mSlopeTemp[i]) + this.mY[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < length - 1) {
            if (d == this.mT[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.mY[i4][i5];
                }
            }
            double[] dArr3 = this.mT;
            int i6 = i4 + 1;
            double d4 = dArr3[i6];
            if (d < d4) {
                double d5 = dArr3[i4];
                double d6 = (d - d5) / (d4 - d5);
                while (i < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[i] = (dArr4[i6][i] * d6) + ((1.0d - d6) * dArr4[i4][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0017, code lost:
    
        if (r11 >= r4) goto L4;
     */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getSlope(double r11, double[] r13) {
        /*
            r10 = this;
            double[] r0 = r10.mT
            int r1 = r0.length
            double[][] r2 = r10.mY
            r3 = 0
            r2 = r2[r3]
            int r2 = r2.length
            r4 = r0[r3]
            int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r6 > 0) goto L11
        Lf:
            r11 = r4
            goto L1a
        L11:
            int r4 = r1 + (-1)
            r4 = r0[r4]
            int r0 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r0 < 0) goto L1a
            goto Lf
        L1a:
            r0 = r3
        L1b:
            int r4 = r1 + (-1)
            if (r0 >= r4) goto L41
            double[] r4 = r10.mT
            int r5 = r0 + 1
            r6 = r4[r5]
            int r8 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
            if (r8 > 0) goto L3f
            r11 = r4[r0]
            double r6 = r6 - r11
        L2c:
            if (r3 >= r2) goto L41
            double[][] r11 = r10.mY
            r12 = r11[r0]
            r8 = r12[r3]
            r11 = r11[r5]
            r11 = r11[r3]
            double r11 = r11 - r8
            double r11 = r11 / r6
            r13[r3] = r11
            int r3 = r3 + 1
            goto L2c
        L3f:
            r0 = r5
            goto L1b
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.LinearCurveFit.getSlope(double, double[]):void");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double[] getTimePoints() {
        return this.mT;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0012, code lost:
    
        if (r9 >= r3) goto L4;
     */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final double getSlope(double r9) {
        /*
            r8 = this;
            double[] r0 = r8.mT
            int r1 = r0.length
            r2 = 0
            r3 = r0[r2]
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 >= 0) goto Lc
        La:
            r9 = r3
            goto L15
        Lc:
            int r3 = r1 + (-1)
            r3 = r0[r3]
            int r0 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r0 < 0) goto L15
            goto La
        L15:
            r0 = r2
        L16:
            int r3 = r1 + (-1)
            if (r0 >= r3) goto L36
            double[] r3 = r8.mT
            int r4 = r0 + 1
            r5 = r3[r4]
            int r7 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r7 > 0) goto L34
            r9 = r3[r0]
            double r5 = r5 - r9
            double[][] r8 = r8.mY
            r9 = r8[r0]
            r9 = r9[r2]
            r8 = r8[r4]
            r0 = r8[r2]
            double r0 = r0 - r9
            double r0 = r0 / r5
            return r0
        L34:
            r0 = r4
            goto L16
        L36:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.LinearCurveFit.getSlope(double):double");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void getPos(double d, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i = 0;
        int length2 = this.mY[0].length;
        double d2 = dArr[0];
        if (d <= d2) {
            getSlope(d2, this.mSlopeTemp);
            for (int i2 = 0; i2 < length2; i2++) {
                fArr[i2] = (float) (((d - this.mT[0]) * this.mSlopeTemp[i2]) + this.mY[0][i2]);
            }
            return;
        }
        int i3 = length - 1;
        double d3 = dArr[i3];
        if (d >= d3) {
            getSlope(d3, this.mSlopeTemp);
            while (i < length2) {
                fArr[i] = (float) (((d - this.mT[i3]) * this.mSlopeTemp[i]) + this.mY[i3][i]);
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == this.mT[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.mY[i4][i5];
                }
            }
            double[] dArr2 = this.mT;
            int i6 = i4 + 1;
            double d4 = dArr2[i6];
            if (d < d4) {
                double d5 = dArr2[i4];
                double d6 = (d - d5) / (d4 - d5);
                while (i < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[i] = (float) ((dArr3[i6][i] * d6) + ((1.0d - d6) * dArr3[i4][i]));
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double getPos(double d) {
        double[] dArr = this.mT;
        int length = dArr.length;
        double d2 = dArr[0];
        if (d <= d2) {
            return (getSlope(d2) * (d - d2)) + this.mY[0][0];
        }
        int i = length - 1;
        double d3 = dArr[i];
        if (d >= d3) {
            return (getSlope(d3) * (d - d3)) + this.mY[i][0];
        }
        int i2 = 0;
        while (i2 < i) {
            double[] dArr2 = this.mT;
            double d4 = dArr2[i2];
            if (d == d4) {
                return this.mY[i2][0];
            }
            int i3 = i2 + 1;
            double d5 = dArr2[i3];
            if (d < d5) {
                double d6 = (d - d4) / (d5 - d4);
                double[][] dArr3 = this.mY;
                return (dArr3[i3][0] * d6) + ((1.0d - d6) * dArr3[i2][0]);
            }
            i2 = i3;
        }
        return 0.0d;
    }
}
