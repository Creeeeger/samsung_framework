package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.Variant;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda2 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        double d;
        double d2;
        double d3 = 100.0d;
        double d4 = 10.0d;
        double d5 = 40.0d;
        double d6 = 30.0d;
        double d7 = 80.0d;
        boolean z = true;
        double d8 = 90.0d;
        switch (this.$r8$classId) {
            case 0:
                return Double.valueOf(((DynamicScheme) obj).neutralVariantPalette.keyColor.tone);
            case 1:
                return ((DynamicScheme) obj).neutralVariantPalette;
            case 2:
                if (((DynamicScheme) obj).isDark) {
                    d6 = 80.0d;
                }
                return Double.valueOf(d6);
            case 3:
                return ((DynamicScheme) obj).secondaryPalette;
            case 4:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (!z) {
                    d7 = 90.0d;
                }
                return Double.valueOf(d7);
            case 5:
                return ((DynamicScheme) obj).errorPalette;
            case 6:
                if (((DynamicScheme) obj).isDark) {
                    d5 = 80.0d;
                }
                return Double.valueOf(d5);
            case 7:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 8:
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                if (dynamicScheme.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z2 = dynamicScheme.isDark;
                if (z) {
                    if (!z2) {
                        d8 = 25.0d;
                    }
                    return Double.valueOf(d8);
                }
                if (z2) {
                    d5 = 80.0d;
                }
                return Double.valueOf(d5);
            case 9:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 10:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    d6 = 90.0d;
                }
                return Double.valueOf(d6);
            case 11:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 12:
                return ((DynamicScheme) obj).neutralPalette;
            case 13:
                if (((DynamicScheme) obj).isDark) {
                    d = 12.0d;
                } else {
                    d = 94.0d;
                }
                return Double.valueOf(d);
            case 14:
                return ((DynamicScheme) obj).neutralPalette;
            case 15:
                return Double.valueOf(((DynamicScheme) obj).neutralPalette.keyColor.tone);
            case 16:
                return ((DynamicScheme) obj).neutralPalette;
            case 17:
                if (((DynamicScheme) obj).isDark) {
                    d2 = 6.0d;
                } else {
                    d2 = 98.0d;
                }
                return Double.valueOf(d2);
            case 18:
                return ((DynamicScheme) obj).neutralPalette;
            case 19:
                if (((DynamicScheme) obj).isDark) {
                    d4 = 90.0d;
                }
                return Double.valueOf(d4);
            case 20:
                return ((DynamicScheme) obj).primaryPalette;
            case 21:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    return Double.valueOf(30.0d);
                }
                return Double.valueOf(80.0d);
            case 22:
                return ((DynamicScheme) obj).primaryPalette;
            case 23:
                if (!((DynamicScheme) obj).isDark) {
                    d6 = 90.0d;
                }
                return Double.valueOf(d6);
            case 24:
                return ((DynamicScheme) obj).primaryPalette;
            case 25:
                DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                if (dynamicScheme2.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z3 = dynamicScheme2.isDark;
                if (z) {
                    if (!z3) {
                        d4 = 90.0d;
                    }
                    return Double.valueOf(d4);
                }
                if (z3) {
                    d3 = 20.0d;
                }
                return Double.valueOf(d3);
            case 26:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 27:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (!z) {
                    d5 = 90.0d;
                }
                return Double.valueOf(d5);
            case 28:
                return ((DynamicScheme) obj).neutralPalette;
            default:
                if (((DynamicScheme) obj).isDark) {
                    d3 = 4.0d;
                }
                return Double.valueOf(d3);
        }
    }
}
