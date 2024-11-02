package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.hct.Hct;
import com.android.systemui.monet.palettes.TonalPalette;
import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.Variant;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        double d;
        double d2;
        double d3 = 20.0d;
        double d4 = 80.0d;
        double d5 = 30.0d;
        boolean z = true;
        boolean z2 = false;
        double d6 = 10.0d;
        switch (this.$r8$classId) {
            case 0:
                return ((DynamicScheme) obj).neutralPalette;
            case 1:
                if (!((DynamicScheme) obj).isDark) {
                    d6 = 90.0d;
                }
                return Double.valueOf(d6);
            case 2:
                return ((DynamicScheme) obj).neutralVariantPalette;
            case 3:
                if (((DynamicScheme) obj).isDark) {
                    d4 = 30.0d;
                }
                return Double.valueOf(d4);
            case 4:
                return ((DynamicScheme) obj).secondaryPalette;
            case 5:
                return Double.valueOf(((DynamicScheme) obj).secondaryPalette.keyColor.tone);
            case 6:
                return ((DynamicScheme) obj).secondaryPalette;
            case 7:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    d4 = 70.0d;
                }
                return Double.valueOf(d4);
            case 8:
                return ((DynamicScheme) obj).primaryPalette;
            case 9:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    return Double.valueOf(90.0d);
                }
                return Double.valueOf(30.0d);
            case 10:
                return ((DynamicScheme) obj).primaryPalette;
            case 11:
                return ((DynamicScheme) obj).secondaryPalette;
            case 12:
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                if (dynamicScheme.variant == Variant.MONOCHROME) {
                    z2 = true;
                }
                boolean z3 = dynamicScheme.isDark;
                if (z2) {
                    if (!z3) {
                        d5 = 85.0d;
                    }
                    return Double.valueOf(d5);
                }
                if (!z3) {
                    d5 = 90.0d;
                }
                if (!MaterialDynamicColors.isFidelity(dynamicScheme)) {
                    return Double.valueOf(d5);
                }
                TonalPalette tonalPalette = dynamicScheme.secondaryPalette;
                double d7 = tonalPalette.hue;
                double d8 = tonalPalette.chroma;
                boolean z4 = true ^ z3;
                Hct from = Hct.from(d7, d8, d5);
                double d9 = from.chroma;
                if (d9 < d8) {
                    while (from.chroma < d8) {
                        if (z4) {
                            d = -1.0d;
                        } else {
                            d = 1.0d;
                        }
                        d5 += d;
                        double d10 = d8;
                        double d11 = d7;
                        Hct from2 = Hct.from(d7, d10, d5);
                        double d12 = from2.chroma;
                        if (d9 <= d12 && Math.abs(d12 - d10) >= 0.4d) {
                            if (Math.abs(from2.chroma - d10) < Math.abs(from.chroma - d10)) {
                                from = from2;
                            }
                            d9 = Math.max(d9, from2.chroma);
                            d8 = d10;
                            d7 = d11;
                        }
                    }
                }
                return Double.valueOf(MaterialDynamicColors.performAlbers(Hct.from(tonalPalette.hue, tonalPalette.chroma, d5), dynamicScheme));
            case 13:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 14:
                return Double.valueOf(((DynamicScheme) obj).tertiaryPalette.keyColor.tone);
            case 15:
                return ((DynamicScheme) obj).neutralPalette;
            case 16:
                if (((DynamicScheme) obj).isDark) {
                    d6 = 90.0d;
                }
                return Double.valueOf(d6);
            case 17:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 18:
                DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                if (dynamicScheme2.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z5 = dynamicScheme2.isDark;
                if (z) {
                    if (!z5) {
                        d6 = 90.0d;
                    }
                    return Double.valueOf(d6);
                }
                if (!z5) {
                    d3 = 100.0d;
                }
                return Double.valueOf(d3);
            case 19:
                return ((DynamicScheme) obj).neutralVariantPalette;
            case 20:
                if (((DynamicScheme) obj).isDark) {
                    d2 = 60.0d;
                } else {
                    d2 = 50.0d;
                }
                return Double.valueOf(d2);
            case 21:
                return ((DynamicScheme) obj).secondaryPalette;
            case 22:
                return Double.valueOf(10.0d);
            case 23:
                return ((DynamicScheme) obj).secondaryPalette;
            case 24:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z = false;
                }
                if (z) {
                    d5 = 25.0d;
                }
                return Double.valueOf(d5);
            case 25:
                return ((DynamicScheme) obj).errorPalette;
            case 26:
                if (!((DynamicScheme) obj).isDark) {
                    d3 = 100.0d;
                }
                return Double.valueOf(d3);
            case 27:
                return ((DynamicScheme) obj).neutralPalette;
            case 28:
                if (!((DynamicScheme) obj).isDark) {
                    d6 = 90.0d;
                }
                return Double.valueOf(d6);
            default:
                return ((DynamicScheme) obj).neutralVariantPalette;
        }
    }
}
