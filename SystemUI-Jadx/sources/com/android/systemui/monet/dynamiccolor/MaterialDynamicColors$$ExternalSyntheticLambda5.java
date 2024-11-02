package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.hct.Hct;
import com.android.systemui.monet.palettes.TonalPalette;
import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.Variant;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda5 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MaterialDynamicColors$$ExternalSyntheticLambda5(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        double d;
        double d2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        double d3;
        double d4;
        double d5 = 30.0d;
        double d6 = 80.0d;
        double d7 = 10.0d;
        boolean z5 = true;
        double d8 = 100.0d;
        switch (this.$r8$classId) {
            case 0:
                return Double.valueOf(0.0d);
            case 1:
                if (!((DynamicScheme) obj).isDark) {
                    d8 = 0.0d;
                }
                return Double.valueOf(d8);
            case 2:
                if (((DynamicScheme) obj).isDark) {
                    d = 0.2d;
                } else {
                    d = 0.12d;
                }
                return Double.valueOf(d);
            case 3:
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                MaterialDynamicColors$$ExternalSyntheticLambda5 materialDynamicColors$$ExternalSyntheticLambda5 = new MaterialDynamicColors$$ExternalSyntheticLambda5(24);
                return Double.valueOf(DynamicColor.calculateDynamicTone(dynamicScheme, materialDynamicColors$$ExternalSyntheticLambda5, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme, 1), new DynamicColor$$ExternalSyntheticLambda5(materialDynamicColors$$ExternalSyntheticLambda5, dynamicScheme, null), null, null, null, new DynamicColor$$ExternalSyntheticLambda6()));
            case 4:
                DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                return Double.valueOf(DynamicColor.calculateDynamicTone(dynamicScheme2, new MaterialDynamicColors$$ExternalSyntheticLambda5(23), new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme2, 2), new DynamicColor$$ExternalSyntheticLambda7(null, dynamicScheme2), null, null, null, null));
            case 5:
                return ((DynamicScheme) obj).neutralPalette;
            case 6:
                if (!((DynamicScheme) obj).isDark) {
                    d7 = 90.0d;
                }
                return Double.valueOf(d7);
            case 7:
                return ((DynamicScheme) obj).neutralPalette;
            case 8:
                if (((DynamicScheme) obj).isDark) {
                    d2 = 6.0d;
                } else {
                    d2 = 87.0d;
                }
                return Double.valueOf(d2);
            case 9:
                return ((DynamicScheme) obj).primaryPalette;
            case 10:
                DynamicScheme dynamicScheme3 = (DynamicScheme) obj;
                if (dynamicScheme3.variant != Variant.MONOCHROME) {
                    z5 = false;
                }
                boolean z6 = dynamicScheme3.isDark;
                if (z5) {
                    if (!z6) {
                        d8 = 0.0d;
                    }
                    return Double.valueOf(d8);
                }
                if (!z6) {
                    d6 = 40.0d;
                }
                return Double.valueOf(d6);
            case 11:
                return ((DynamicScheme) obj).tertiaryPalette;
            case 12:
                DynamicScheme dynamicScheme4 = (DynamicScheme) obj;
                if (dynamicScheme4.variant == Variant.MONOCHROME) {
                    z = true;
                } else {
                    z = false;
                }
                boolean z7 = dynamicScheme4.isDark;
                if (z) {
                    if (z7) {
                        d3 = 60.0d;
                    } else {
                        d3 = 49.0d;
                    }
                    return Double.valueOf(d3);
                }
                if (!MaterialDynamicColors.isFidelity(dynamicScheme4)) {
                    if (!z7) {
                        d5 = 90.0d;
                    }
                    return Double.valueOf(d5);
                }
                double d9 = dynamicScheme4.sourceColorHct.tone;
                TonalPalette tonalPalette = dynamicScheme4.tertiaryPalette;
                Hct from = Hct.from(tonalPalette.hue, tonalPalette.chroma, MaterialDynamicColors.performAlbers(Hct.from(tonalPalette.hue, tonalPalette.chroma, d9), dynamicScheme4));
                if (Math.round(from.hue) >= 90.0d && Math.round(from.hue) <= 111.0d) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (Math.round(from.chroma) > 16.0d) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (Math.round(from.tone) < 70.0d) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z2 || !z3 || !z4) {
                    z5 = false;
                }
                if (z5) {
                    from = Hct.from(from.hue, from.chroma, 70.0d);
                }
                return Double.valueOf(from.tone);
            case 13:
                return ((DynamicScheme) obj).neutralPalette;
            case 14:
                if (((DynamicScheme) obj).isDark) {
                    d4 = 24.0d;
                } else {
                    d4 = 98.0d;
                }
                return Double.valueOf(d4);
            case 15:
                return ((DynamicScheme) obj).primaryPalette;
            case 16:
                if (((DynamicScheme) obj).variant != Variant.MONOCHROME) {
                    z5 = false;
                }
                if (z5) {
                    return Double.valueOf(40.0d);
                }
                return Double.valueOf(90.0d);
            case 17:
                return ((DynamicScheme) obj).secondaryPalette;
            case 18:
                if (!((DynamicScheme) obj).isDark) {
                    d6 = 40.0d;
                }
                return Double.valueOf(d6);
            case 19:
                return ((DynamicScheme) obj).errorPalette;
            case 20:
                if (((DynamicScheme) obj).isDark) {
                    d7 = 90.0d;
                }
                return Double.valueOf(d7);
            case 21:
                return ((DynamicScheme) obj).neutralVariantPalette;
            case 22:
                if (!((DynamicScheme) obj).isDark) {
                    d5 = 90.0d;
                }
                return Double.valueOf(d5);
            case 23:
                if (!((DynamicScheme) obj).isDark) {
                    d8 = 0.0d;
                }
                return Double.valueOf(d8);
            default:
                if (!((DynamicScheme) obj).isDark) {
                    d8 = 0.0d;
                }
                return Double.valueOf(d8);
        }
    }
}
