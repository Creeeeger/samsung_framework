package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.hct.Cam16;
import com.android.systemui.monet.hct.Hct;
import com.android.systemui.monet.hct.ViewingConditions;
import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.Variant;
import com.android.systemui.monet.utils.ColorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MaterialDynamicColors {
    public static DynamicColor highestSurface(DynamicScheme dynamicScheme) {
        if (dynamicScheme.isDark) {
            return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda5(13), new MaterialDynamicColors$$ExternalSyntheticLambda5(14), null, null);
        }
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda5(7), new MaterialDynamicColors$$ExternalSyntheticLambda5(8), null, null);
    }

    public static boolean isFidelity(DynamicScheme dynamicScheme) {
        Variant variant = dynamicScheme.variant;
        if (variant != Variant.FIDELITY && variant != Variant.CONTENT) {
            return false;
        }
        return true;
    }

    public static double performAlbers(Hct hct, DynamicScheme dynamicScheme) {
        double d;
        double d2;
        boolean z;
        if (dynamicScheme.isDark) {
            d = 30.0d;
        } else {
            d = 80.0d;
        }
        ViewingConditions defaultWithBackgroundLstar = ViewingConditions.defaultWithBackgroundLstar(d);
        Cam16 fromInt = Cam16.fromInt(hct.argb);
        double d3 = fromInt.chroma;
        double d4 = fromInt.j;
        if (d3 != 0.0d && d4 != 0.0d) {
            d2 = d3 / Math.sqrt(d4 / 100.0d);
        } else {
            d2 = 0.0d;
        }
        double pow = Math.pow(d2 / Math.pow(1.64d - Math.pow(0.29d, defaultWithBackgroundLstar.n), 0.73d), 1.1111111111111112d);
        double radians = Math.toRadians(fromInt.hue);
        double cos = (Math.cos(2.0d + radians) + 3.8d) * 0.25d;
        double pow2 = Math.pow(d4 / 100.0d, (1.0d / defaultWithBackgroundLstar.c) / defaultWithBackgroundLstar.z) * defaultWithBackgroundLstar.aw;
        double d5 = cos * 3846.153846153846d * defaultWithBackgroundLstar.nc * defaultWithBackgroundLstar.ncb;
        double d6 = pow2 / defaultWithBackgroundLstar.nbb;
        double sin = Math.sin(radians);
        double cos2 = Math.cos(radians);
        double d7 = (((d6 + 0.305d) * 23.0d) * pow) / (((pow * 108.0d) * sin) + (((11.0d * pow) * cos2) + (d5 * 23.0d)));
        double d8 = cos2 * d7;
        double d9 = d7 * sin;
        double d10 = d6 * 460.0d;
        double d11 = ((288.0d * d9) + ((451.0d * d8) + d10)) / 1403.0d;
        double d12 = ((d10 - (891.0d * d8)) - (261.0d * d9)) / 1403.0d;
        double d13 = ((d10 - (d8 * 220.0d)) - (d9 * 6300.0d)) / 1403.0d;
        double max = Math.max(0.0d, (Math.abs(d11) * 27.13d) / (400.0d - Math.abs(d11)));
        double signum = Math.signum(d11);
        double d14 = 100.0d / defaultWithBackgroundLstar.fl;
        double pow3 = Math.pow(max, 2.380952380952381d) * signum * d14;
        double pow4 = Math.pow(Math.max(0.0d, (Math.abs(d12) * 27.13d) / (400.0d - Math.abs(d12))), 2.380952380952381d) * Math.signum(d12) * d14;
        double pow5 = Math.pow(Math.max(0.0d, (Math.abs(d13) * 27.13d) / (400.0d - Math.abs(d13))), 2.380952380952381d) * Math.signum(d13) * d14;
        double[] dArr = defaultWithBackgroundLstar.rgbD;
        boolean z2 = false;
        double d15 = pow3 / dArr[0];
        double d16 = pow4 / dArr[1];
        double d17 = pow5 / dArr[2];
        double[][] dArr2 = Cam16.CAM16RGB_TO_XYZ;
        double[] dArr3 = dArr2[0];
        double d18 = (dArr3[2] * d17) + (dArr3[1] * d16) + (dArr3[0] * d15);
        double[] dArr4 = dArr2[1];
        double d19 = (dArr4[2] * d17) + (dArr4[1] * d16) + (dArr4[0] * d15);
        double[] dArr5 = dArr2[2];
        double d20 = (d17 * dArr5[2]) + (d16 * dArr5[1]) + (d15 * dArr5[0]);
        Cam16 fromXyzInViewingConditions = Cam16.fromXyzInViewingConditions(d18, d19, d20, ViewingConditions.DEFAULT);
        Hct from = Hct.from(fromXyzInViewingConditions.hue, fromXyzInViewingConditions.chroma, (ColorUtils.labF(new double[]{d18, d19, d20}[1] / 100.0d) * 116.0d) - 16.0d);
        if (Math.round(hct.tone) < 60) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (Math.round(from.tone) <= 49) {
                z2 = true;
            }
            if (!z2) {
                return DynamicColor.enableLightForeground(hct.tone);
            }
        }
        return DynamicColor.enableLightForeground(from.tone);
    }

    public final DynamicColor error() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda2(5), new MaterialDynamicColors$$ExternalSyntheticLambda2(6), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 12), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 13));
    }

    public final DynamicColor errorContainer() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda3(17), new MaterialDynamicColors$$ExternalSyntheticLambda3(18), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 28), null);
    }

    public final DynamicColor outlineVariant() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda3(21), new MaterialDynamicColors$$ExternalSyntheticLambda3(22), new MaterialDynamicColors$$ExternalSyntheticLambda4(this, 0), null);
    }

    public final DynamicColor primary() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda5(9), new MaterialDynamicColors$$ExternalSyntheticLambda5(10), new MaterialDynamicColors$$ExternalSyntheticLambda4(this, 3), new MaterialDynamicColors$$ExternalSyntheticLambda4(this, 4));
    }

    public final DynamicColor primaryContainer() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda3(4), new MaterialDynamicColors$$ExternalSyntheticLambda3(5), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 23), null);
    }

    public final DynamicColor primaryFixedDim() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda2(20), new MaterialDynamicColors$$ExternalSyntheticLambda2(21), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 20), null);
    }

    public final DynamicColor secondary() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda5(17), new MaterialDynamicColors$$ExternalSyntheticLambda5(18), new MaterialDynamicColors$$ExternalSyntheticLambda4(this, 7), new MaterialDynamicColors$$ExternalSyntheticLambda4(this, 8));
    }

    public final DynamicColor secondaryContainer() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda0(11), new MaterialDynamicColors$$ExternalSyntheticLambda0(12), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 4), null);
    }

    public final DynamicColor secondaryFixedDim() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda0(6), new MaterialDynamicColors$$ExternalSyntheticLambda0(7), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 0), null);
    }

    public final DynamicColor tertiary() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda2(7), new MaterialDynamicColors$$ExternalSyntheticLambda2(8), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 14), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 15));
    }

    public final DynamicColor tertiaryContainer() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda5(11), new MaterialDynamicColors$$ExternalSyntheticLambda5(12), new MaterialDynamicColors$$ExternalSyntheticLambda4(this, 5), null);
    }

    public final DynamicColor tertiaryFixedDim() {
        return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda3(6), new MaterialDynamicColors$$ExternalSyntheticLambda3(7), new MaterialDynamicColors$$ExternalSyntheticLambda1(this, 24), null);
    }
}
