package com.android.systemui.monet.utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ColorUtils {
    public static final double[][] SRGB_TO_XYZ = {new double[]{0.41233895d, 0.35762064d, 0.18051042d}, new double[]{0.2126d, 0.7152d, 0.0722d}, new double[]{0.01932141d, 0.11916382d, 0.95034478d}};
    public static final double[] WHITE_POINT_D65 = {95.047d, 100.0d, 108.883d};

    private ColorUtils() {
    }

    public static int delinearized(double d) {
        double pow;
        double d2 = d / 100.0d;
        if (d2 <= 0.0031308d) {
            pow = d2 * 12.92d;
        } else {
            pow = (Math.pow(d2, 0.4166666666666667d) * 1.055d) - 0.055d;
        }
        int round = (int) Math.round(pow * 255.0d);
        if (round < 0) {
            return 0;
        }
        if (round > 255) {
            return 255;
        }
        return round;
    }

    public static double labF(double d) {
        if (d > 0.008856451679035631d) {
            return Math.pow(d, 0.3333333333333333d);
        }
        return ((d * 903.2962962962963d) + 16.0d) / 116.0d;
    }

    public static double linearized(int i) {
        double pow;
        double d = i / 255.0d;
        if (d <= 0.040449936d) {
            pow = d / 12.92d;
        } else {
            pow = Math.pow((d + 0.055d) / 1.055d, 2.4d);
        }
        return pow * 100.0d;
    }

    public static double yFromLstar(double d) {
        double d2 = (d + 16.0d) / 116.0d;
        double d3 = d2 * d2 * d2;
        if (d3 <= 0.008856451679035631d) {
            d3 = ((d2 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        return d3 * 100.0d;
    }
}
