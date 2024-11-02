package com.android.systemui.monet.hct;

import com.android.systemui.monet.utils.ColorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Cam16 {
    public final double chroma;
    public final double hue;
    public final double j;
    public static final double[][] XYZ_TO_CAM16RGB = {new double[]{0.401288d, 0.650173d, -0.051461d}, new double[]{-0.250268d, 1.204414d, 0.045854d}, new double[]{-0.002079d, 0.048952d, 0.953127d}};
    public static final double[][] CAM16RGB_TO_XYZ = {new double[]{1.8620678d, -1.0112547d, 0.14918678d}, new double[]{0.38752654d, 0.62144744d, -0.00897398d}, new double[]{-0.0158415d, -0.03412294d, 1.0499644d}};

    private Cam16(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.hue = d;
        this.chroma = d2;
        this.j = d3;
    }

    public static Cam16 fromInt(int i) {
        ViewingConditions viewingConditions = ViewingConditions.DEFAULT;
        double linearized = ColorUtils.linearized((16711680 & i) >> 16);
        double linearized2 = ColorUtils.linearized((65280 & i) >> 8);
        double linearized3 = ColorUtils.linearized(i & 255);
        return fromXyzInViewingConditions((0.18051042d * linearized3) + (0.35762064d * linearized2) + (0.41233895d * linearized), (0.0722d * linearized3) + (0.7152d * linearized2) + (0.2126d * linearized), (linearized3 * 0.95034478d) + (linearized2 * 0.11916382d) + (linearized * 0.01932141d), viewingConditions);
    }

    public static Cam16 fromXyzInViewingConditions(double d, double d2, double d3, ViewingConditions viewingConditions) {
        double d4;
        double[][] dArr = XYZ_TO_CAM16RGB;
        double[] dArr2 = dArr[0];
        double d5 = (dArr2[2] * d3) + (dArr2[1] * d2) + (dArr2[0] * d);
        double[] dArr3 = dArr[1];
        double d6 = (dArr3[2] * d3) + (dArr3[1] * d2) + (dArr3[0] * d);
        double[] dArr4 = dArr[2];
        double d7 = (dArr4[2] * d3) + (dArr4[1] * d2) + (dArr4[0] * d);
        double[] dArr5 = viewingConditions.rgbD;
        double d8 = dArr5[0] * d5;
        double d9 = dArr5[1] * d6;
        double d10 = dArr5[2] * d7;
        double abs = Math.abs(d8);
        double d11 = viewingConditions.fl;
        double pow = Math.pow((abs * d11) / 100.0d, 0.42d);
        double pow2 = Math.pow((Math.abs(d9) * d11) / 100.0d, 0.42d);
        double pow3 = Math.pow((Math.abs(d10) * d11) / 100.0d, 0.42d);
        double signum = ((Math.signum(d8) * 400.0d) * pow) / (pow + 27.13d);
        double signum2 = ((Math.signum(d9) * 400.0d) * pow2) / (pow2 + 27.13d);
        double signum3 = ((Math.signum(d10) * 400.0d) * pow3) / (pow3 + 27.13d);
        double d12 = ((((-12.0d) * signum2) + (signum * 11.0d)) + signum3) / 11.0d;
        double d13 = ((signum + signum2) - (signum3 * 2.0d)) / 9.0d;
        double d14 = signum2 * 20.0d;
        double d15 = ((21.0d * signum3) + ((signum * 20.0d) + d14)) / 20.0d;
        double d16 = (((signum * 40.0d) + d14) + signum3) / 20.0d;
        double degrees = Math.toDegrees(Math.atan2(d13, d12));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        } else if (degrees >= 360.0d) {
            degrees -= 360.0d;
        }
        double d17 = degrees;
        double radians = Math.toRadians(d17);
        double d18 = d16 * viewingConditions.nbb;
        double d19 = viewingConditions.aw;
        double d20 = viewingConditions.z;
        double d21 = viewingConditions.c;
        double pow4 = Math.pow(d18 / d19, d20 * d21) * 100.0d;
        double d22 = pow4 / 100.0d;
        double sqrt = Math.sqrt(d22);
        double d23 = d19 + 4.0d;
        double d24 = viewingConditions.flRoot;
        double d25 = sqrt * (4.0d / d21) * d23 * d24;
        if (d17 < 20.14d) {
            d4 = d17 + 360.0d;
        } else {
            d4 = d17;
        }
        double hypot = (Math.hypot(d12, d13) * (((((Math.cos(Math.toRadians(d4) + 2.0d) + 3.8d) * 0.25d) * 3846.153846153846d) * viewingConditions.nc) * viewingConditions.ncb)) / (d15 + 0.305d);
        double pow5 = Math.pow(hypot, 0.9d) * Math.pow(1.64d - Math.pow(0.29d, viewingConditions.n), 0.73d);
        double sqrt2 = Math.sqrt(d22) * pow5;
        double d26 = sqrt2 * d24;
        double sqrt3 = Math.sqrt((pow5 * d21) / d23) * 50.0d;
        double d27 = (1.7000000000000002d * pow4) / ((0.007d * pow4) + 1.0d);
        double log1p = Math.log1p(d26 * 0.0228d) * 43.859649122807014d;
        return new Cam16(d17, sqrt2, pow4, d25, d26, sqrt3, d27, Math.cos(radians) * log1p, Math.sin(radians) * log1p);
    }
}
