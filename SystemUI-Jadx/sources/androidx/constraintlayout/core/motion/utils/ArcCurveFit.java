package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ArcCurveFit extends CurveFit {
    public final Arc[] mArcs;
    public final boolean mExtrapolate = true;
    public final double[] mTime;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Arc {
        public static final double[] ourPercent = new double[91];
        public final boolean linear;
        public double mArcDistance;
        public final double mArcVelocity;
        public final double mEllipseA;
        public final double mEllipseB;
        public final double mEllipseCenterX;
        public final double mEllipseCenterY;
        public final double[] mLut;
        public final double mOneOverDeltaTime;
        public final double mTime1;
        public final double mTime2;
        public double mTmpCosAngle;
        public double mTmpSinAngle;
        public final boolean mVertical;
        public final double mX1;
        public final double mX2;
        public final double mY1;
        public final double mY2;

        public Arc(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            int i2;
            double d7;
            double[] dArr;
            double d8 = d3;
            this.linear = false;
            boolean z = i == 1;
            this.mVertical = z;
            this.mTime1 = d;
            this.mTime2 = d2;
            double d9 = 1.0d / (d2 - d);
            this.mOneOverDeltaTime = d9;
            if (3 == i) {
                this.linear = true;
            }
            double d10 = d5 - d8;
            double d11 = d6 - d4;
            if (!this.linear && Math.abs(d10) >= 0.001d && Math.abs(d11) >= 0.001d) {
                this.mLut = new double[101];
                this.mEllipseA = (z ? -1 : 1) * d10;
                if (z) {
                    i2 = 1;
                } else {
                    i2 = -1;
                }
                this.mEllipseB = d11 * i2;
                this.mEllipseCenterX = z ? d5 : d8;
                if (z) {
                    d7 = d4;
                } else {
                    d7 = d6;
                }
                this.mEllipseCenterY = d7;
                double d12 = d4 - d6;
                int i3 = 0;
                double d13 = 0.0d;
                double d14 = 0.0d;
                double d15 = 0.0d;
                while (true) {
                    dArr = ourPercent;
                    if (i3 >= 91) {
                        break;
                    }
                    double d16 = d10;
                    double radians = Math.toRadians((i3 * 90.0d) / 90);
                    double sin = Math.sin(radians) * d16;
                    double cos = Math.cos(radians) * d12;
                    if (i3 > 0) {
                        d13 += Math.hypot(sin - d14, cos - d15);
                        dArr[i3] = d13;
                    }
                    i3++;
                    d15 = cos;
                    d14 = sin;
                    d10 = d16;
                }
                this.mArcDistance = d13;
                for (int i4 = 0; i4 < 91; i4++) {
                    dArr[i4] = dArr[i4] / d13;
                }
                int i5 = 0;
                while (true) {
                    double[] dArr2 = this.mLut;
                    if (i5 < dArr2.length) {
                        double length = i5 / (dArr2.length - 1);
                        int binarySearch = Arrays.binarySearch(dArr, length);
                        if (binarySearch >= 0) {
                            dArr2[i5] = binarySearch / 90;
                        } else if (binarySearch == -1) {
                            dArr2[i5] = 0.0d;
                        } else {
                            int i6 = -binarySearch;
                            int i7 = i6 - 2;
                            double d17 = dArr[i7];
                            dArr2[i5] = (((length - d17) / (dArr[i6 - 1] - d17)) + i7) / 90;
                        }
                        i5++;
                    } else {
                        this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                        return;
                    }
                }
            } else {
                this.linear = true;
                this.mX1 = d8;
                this.mX2 = d5;
                this.mY1 = d4;
                this.mY2 = d6;
                double hypot = Math.hypot(d11, d10);
                this.mArcDistance = hypot;
                this.mArcVelocity = hypot * d9;
                this.mEllipseCenterX = d10 / (d2 - d);
                this.mEllipseCenterY = d11 / (d2 - d);
            }
        }

        public final double getDX() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double hypot = this.mArcVelocity / Math.hypot(d, (-this.mEllipseB) * this.mTmpSinAngle);
            if (this.mVertical) {
                d = -d;
            }
            return d * hypot;
        }

        public final double getDY() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double d2 = (-this.mEllipseB) * this.mTmpSinAngle;
            double hypot = this.mArcVelocity / Math.hypot(d, d2);
            if (this.mVertical) {
                return (-d2) * hypot;
            }
            return d2 * hypot;
        }

        public final double getLinearX(double d) {
            double d2 = (d - this.mTime1) * this.mOneOverDeltaTime;
            double d3 = this.mX2;
            double d4 = this.mX1;
            return ((d3 - d4) * d2) + d4;
        }

        public final double getLinearY(double d) {
            double d2 = (d - this.mTime1) * this.mOneOverDeltaTime;
            double d3 = this.mY2;
            double d4 = this.mY1;
            return ((d3 - d4) * d2) + d4;
        }

        public final double getX() {
            return (this.mEllipseA * this.mTmpSinAngle) + this.mEllipseCenterX;
        }

        public final double getY() {
            return (this.mEllipseB * this.mTmpCosAngle) + this.mEllipseCenterY;
        }

        public final void setPoint(double d) {
            double d2;
            if (this.mVertical) {
                d2 = this.mTime2 - d;
            } else {
                d2 = d - this.mTime1;
            }
            double d3 = d2 * this.mOneOverDeltaTime;
            double d4 = 0.0d;
            if (d3 > 0.0d) {
                d4 = 1.0d;
                if (d3 < 1.0d) {
                    double[] dArr = this.mLut;
                    double length = d3 * (dArr.length - 1);
                    int i = (int) length;
                    double d5 = dArr[i];
                    d4 = ((dArr[i + 1] - d5) * (length - i)) + d5;
                }
            }
            double d6 = d4 * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(d6);
            this.mTmpCosAngle = Math.cos(d6);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0028, code lost:
    
        if (r5 == 1) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ArcCurveFit(int[] r25, double[] r26, double[][] r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = r26
            r24.<init>()
            r2 = 1
            r0.mExtrapolate = r2
            r0.mTime = r1
            int r3 = r1.length
            int r3 = r3 - r2
            androidx.constraintlayout.core.motion.utils.ArcCurveFit$Arc[] r3 = new androidx.constraintlayout.core.motion.utils.ArcCurveFit.Arc[r3]
            r0.mArcs = r3
            r3 = 0
            r5 = r2
            r6 = r5
            r4 = r3
        L16:
            androidx.constraintlayout.core.motion.utils.ArcCurveFit$Arc[] r7 = r0.mArcs
            int r8 = r7.length
            if (r4 >= r8) goto L4f
            r8 = r25[r4]
            r9 = 3
            if (r8 == 0) goto L2f
            if (r8 == r2) goto L2c
            r10 = 2
            if (r8 == r10) goto L2a
            if (r8 == r9) goto L28
            goto L30
        L28:
            if (r5 != r2) goto L2c
        L2a:
            r5 = r10
            goto L2d
        L2c:
            r5 = r2
        L2d:
            r6 = r5
            goto L30
        L2f:
            r6 = r9
        L30:
            androidx.constraintlayout.core.motion.utils.ArcCurveFit$Arc r22 = new androidx.constraintlayout.core.motion.utils.ArcCurveFit$Arc
            r10 = r1[r4]
            int r23 = r4 + 1
            r12 = r1[r23]
            r8 = r27[r4]
            r14 = r8[r3]
            r16 = r8[r2]
            r8 = r27[r23]
            r18 = r8[r3]
            r20 = r8[r2]
            r8 = r22
            r9 = r6
            r8.<init>(r9, r10, r12, r14, r16, r18, r20)
            r7[r4] = r22
            r4 = r23
            goto L16
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.ArcCurveFit.<init>(int[], double[], double[][]):void");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void getPos(double d, double[] dArr) {
        boolean z = this.mExtrapolate;
        Arc[] arcArr = this.mArcs;
        if (z) {
            Arc arc = arcArr[0];
            double d2 = arc.mTime1;
            if (d < d2) {
                double d3 = d - d2;
                if (arc.linear) {
                    double linearX = arc.getLinearX(d2);
                    Arc arc2 = arcArr[0];
                    dArr[0] = (arc2.mEllipseCenterX * d3) + linearX;
                    dArr[1] = (d3 * arcArr[0].mEllipseCenterY) + arc2.getLinearY(d2);
                    return;
                }
                arc.setPoint(d2);
                dArr[0] = (arcArr[0].getDX() * d3) + arcArr[0].getX();
                dArr[1] = (arcArr[0].getDY() * d3) + arcArr[0].getY();
                return;
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d4 = arcArr[arcArr.length - 1].mTime2;
                double d5 = d - d4;
                int length = arcArr.length - 1;
                Arc arc3 = arcArr[length];
                if (arc3.linear) {
                    double linearX2 = arc3.getLinearX(d4);
                    Arc arc4 = arcArr[length];
                    dArr[0] = (arc4.mEllipseCenterX * d5) + linearX2;
                    dArr[1] = (d5 * arcArr[length].mEllipseCenterY) + arc4.getLinearY(d4);
                    return;
                }
                arc3.setPoint(d);
                dArr[0] = (arcArr[length].getDX() * d5) + arcArr[length].getX();
                dArr[1] = (arcArr[length].getDY() * d5) + arcArr[length].getY();
                return;
            }
        } else {
            double d6 = arcArr[0].mTime1;
            if (d < d6) {
                d = d6;
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                d = arcArr[arcArr.length - 1].mTime2;
            }
        }
        for (int i = 0; i < arcArr.length; i++) {
            Arc arc5 = arcArr[i];
            if (d <= arc5.mTime2) {
                if (arc5.linear) {
                    dArr[0] = arc5.getLinearX(d);
                    dArr[1] = arcArr[i].getLinearY(d);
                    return;
                } else {
                    arc5.setPoint(d);
                    dArr[0] = arcArr[i].getX();
                    dArr[1] = arcArr[i].getY();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void getSlope(double d, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        double d2 = arcArr[0].mTime1;
        if (d < d2) {
            d = d2;
        } else if (d > arcArr[arcArr.length - 1].mTime2) {
            d = arcArr[arcArr.length - 1].mTime2;
        }
        for (int i = 0; i < arcArr.length; i++) {
            Arc arc = arcArr[i];
            if (d <= arc.mTime2) {
                if (arc.linear) {
                    dArr[0] = arc.mEllipseCenterX;
                    dArr[1] = arc.mEllipseCenterY;
                    return;
                } else {
                    arc.setPoint(d);
                    dArr[0] = arcArr[i].getDX();
                    dArr[1] = arcArr[i].getDY();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double[] getTimePoints() {
        return this.mTime;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double getSlope(double d) {
        Arc[] arcArr = this.mArcs;
        double d2 = arcArr[0].mTime1;
        if (d < d2) {
            d = d2;
        }
        if (d > arcArr[arcArr.length - 1].mTime2) {
            d = arcArr[arcArr.length - 1].mTime2;
        }
        for (int i = 0; i < arcArr.length; i++) {
            Arc arc = arcArr[i];
            if (d <= arc.mTime2) {
                if (arc.linear) {
                    return arc.mEllipseCenterX;
                }
                arc.setPoint(d);
                return arcArr[i].getDX();
            }
        }
        return Double.NaN;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void getPos(double d, float[] fArr) {
        boolean z = this.mExtrapolate;
        Arc[] arcArr = this.mArcs;
        if (z) {
            Arc arc = arcArr[0];
            double d2 = arc.mTime1;
            if (d < d2) {
                double d3 = d - d2;
                if (arc.linear) {
                    double linearX = arc.getLinearX(d2);
                    Arc arc2 = arcArr[0];
                    fArr[0] = (float) ((arc2.mEllipseCenterX * d3) + linearX);
                    fArr[1] = (float) ((d3 * arcArr[0].mEllipseCenterY) + arc2.getLinearY(d2));
                    return;
                }
                arc.setPoint(d2);
                fArr[0] = (float) ((arcArr[0].getDX() * d3) + arcArr[0].getX());
                fArr[1] = (float) ((arcArr[0].getDY() * d3) + arcArr[0].getY());
                return;
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d4 = arcArr[arcArr.length - 1].mTime2;
                double d5 = d - d4;
                int length = arcArr.length - 1;
                Arc arc3 = arcArr[length];
                if (arc3.linear) {
                    double linearX2 = arc3.getLinearX(d4);
                    Arc arc4 = arcArr[length];
                    fArr[0] = (float) ((arc4.mEllipseCenterX * d5) + linearX2);
                    fArr[1] = (float) ((d5 * arcArr[length].mEllipseCenterY) + arc4.getLinearY(d4));
                    return;
                }
                arc3.setPoint(d);
                fArr[0] = (float) arcArr[length].getX();
                fArr[1] = (float) arcArr[length].getY();
                return;
            }
        } else {
            double d6 = arcArr[0].mTime1;
            if (d < d6) {
                d = d6;
            } else if (d > arcArr[arcArr.length - 1].mTime2) {
                d = arcArr[arcArr.length - 1].mTime2;
            }
        }
        for (int i = 0; i < arcArr.length; i++) {
            Arc arc5 = arcArr[i];
            if (d <= arc5.mTime2) {
                if (arc5.linear) {
                    fArr[0] = (float) arc5.getLinearX(d);
                    fArr[1] = (float) arcArr[i].getLinearY(d);
                    return;
                } else {
                    arc5.setPoint(d);
                    fArr[0] = (float) arcArr[i].getX();
                    fArr[1] = (float) arcArr[i].getY();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double getPos(double d) {
        boolean z = this.mExtrapolate;
        Arc[] arcArr = this.mArcs;
        if (z) {
            Arc arc = arcArr[0];
            double d2 = arc.mTime1;
            if (d < d2) {
                double d3 = d - d2;
                if (arc.linear) {
                    return (d3 * arcArr[0].mEllipseCenterX) + arc.getLinearX(d2);
                }
                arc.setPoint(d2);
                return (arcArr[0].getDX() * d3) + arcArr[0].getX();
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d4 = arcArr[arcArr.length - 1].mTime2;
                double d5 = d - d4;
                int length = arcArr.length - 1;
                return (d5 * arcArr[length].mEllipseCenterX) + arcArr[length].getLinearX(d4);
            }
        } else {
            double d6 = arcArr[0].mTime1;
            if (d < d6) {
                d = d6;
            } else if (d > arcArr[arcArr.length - 1].mTime2) {
                d = arcArr[arcArr.length - 1].mTime2;
            }
        }
        for (int i = 0; i < arcArr.length; i++) {
            Arc arc2 = arcArr[i];
            if (d <= arc2.mTime2) {
                if (arc2.linear) {
                    return arc2.getLinearX(d);
                }
                arc2.setPoint(d);
                return arcArr[i].getX();
            }
        }
        return Double.NaN;
    }
}
