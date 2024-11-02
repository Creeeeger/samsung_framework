package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.Variant;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda3 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        double d;
        double d2;
        double d3;
        double d4 = 100.0d;
        double d5 = 80.0d;
        double d6 = 90.0d;
        double d7 = 10.0d;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                return ((DynamicScheme) obj).neutralPalette;
            case 1:
                if (((DynamicScheme) obj).isDark) {
                    d = 6.0d;
                } else {
                    d = 98.0d;
                }
                return Double.valueOf(d);
            case 2:
                return ((DynamicScheme) obj).primaryPalette;
            case 3:
                return Double.valueOf(((DynamicScheme) obj).primaryPalette.keyColor.tone);
            case 4:
                return ((DynamicScheme) obj).primaryPalette;
            case 5:
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                if (MaterialDynamicColors.isFidelity(dynamicScheme)) {
                    return Double.valueOf(MaterialDynamicColors.performAlbers(dynamicScheme.sourceColorHct, dynamicScheme));
                }
                if (dynamicScheme.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z2 = dynamicScheme.isDark;
                if (z) {
                    if (z2) {
                        d2 = 85.0d;
                    } else {
                        d2 = 25.0d;
                    }
                    return Double.valueOf(d2);
                }
                if (z2) {
                    d6 = 30.0d;
                }
                return Double.valueOf(d6);
            case 6:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 7:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    d5 = 30.0d;
                }
                return Double.valueOf(d5);
            case 8:
                return ((DynamicScheme) obj).secondaryPalette;
            case 9:
                DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                if (dynamicScheme2.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z3 = dynamicScheme2.isDark;
                if (z) {
                    if (z3) {
                        d4 = 10.0d;
                    }
                    return Double.valueOf(d4);
                }
                if (z3) {
                    d4 = 20.0d;
                }
                return Double.valueOf(d4);
            case 10:
                return ((DynamicScheme) obj).secondaryPalette;
            case 11:
                return ((DynamicScheme) obj).neutralPalette;
            case 12:
                if (((DynamicScheme) obj).isDark) {
                    d3 = 17.0d;
                } else {
                    d3 = 92.0d;
                }
                return Double.valueOf(d3);
            case 13:
                return ((DynamicScheme) obj).neutralPalette;
            case 14:
                if (!((DynamicScheme) obj).isDark) {
                    d7 = 96.0d;
                }
                return Double.valueOf(d7);
            case 15:
                return ((DynamicScheme) obj).neutralPalette;
            case 16:
                if (((DynamicScheme) obj).isDark) {
                    d6 = 10.0d;
                }
                return Double.valueOf(d6);
            case 17:
                return ((DynamicScheme) obj).errorPalette;
            case 18:
                if (((DynamicScheme) obj).isDark) {
                    d6 = 30.0d;
                }
                return Double.valueOf(d6);
            case 19:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 20:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (!z) {
                    d4 = 10.0d;
                }
                return Double.valueOf(d4);
            case 21:
                return ((DynamicScheme) obj).neutralVariantPalette;
            case 22:
                if (((DynamicScheme) obj).isDark) {
                    d5 = 30.0d;
                }
                return Double.valueOf(d5);
            case 23:
                return ((DynamicScheme) obj).primaryPalette;
            case 24:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    return Double.valueOf(100.0d);
                }
                return Double.valueOf(10.0d);
            case 25:
                return ((DynamicScheme) obj).neutralPalette;
            case 26:
                if (((DynamicScheme) obj).isDark) {
                    d6 = 22.0d;
                }
                return Double.valueOf(d6);
            case 27:
                return ((DynamicScheme) obj).neutralVariantPalette;
            case 28:
                if (!((DynamicScheme) obj).isDark) {
                    d5 = 30.0d;
                }
                return Double.valueOf(d5);
            default:
                return Double.valueOf(0.0d);
        }
    }
}
