package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.Variant;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda1 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MaterialDynamicColors f$0;

    public /* synthetic */ MaterialDynamicColors$$ExternalSyntheticLambda1(MaterialDynamicColors materialDynamicColors, int i) {
        this.$r8$classId = i;
        this.f$0 = materialDynamicColors;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        TonePolarity tonePolarity;
        TonePolarity tonePolarity2;
        double d = 0.0d;
        boolean z = true;
        double d2 = 90.0d;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 1:
                return this.f$0.primaryFixedDim();
            case 2:
                MaterialDynamicColors materialDynamicColors = this.f$0;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                materialDynamicColors.getClass();
                if (MaterialDynamicColors.isFidelity(dynamicScheme)) {
                    return Double.valueOf(DynamicColor.contrastingTone(((Double) materialDynamicColors.primaryContainer().tone.apply(dynamicScheme)).doubleValue(), 4.5d));
                }
                if (dynamicScheme.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z2 = dynamicScheme.isDark;
                if (z) {
                    if (!z2) {
                        d = 100.0d;
                    }
                    return Double.valueOf(d);
                }
                if (!z2) {
                    d2 = 10.0d;
                }
                return Double.valueOf(d2);
            case 3:
                return this.f$0.primaryContainer();
            case 4:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 5:
                this.f$0.getClass();
                return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda3(0), new MaterialDynamicColors$$ExternalSyntheticLambda3(1), null, null);
            case 6:
                return this.f$0.tertiary();
            case 7:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 8:
                return this.f$0.secondaryFixedDim();
            case 9:
                return this.f$0.secondaryFixedDim();
            case 10:
                return this.f$0.error();
            case 11:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 12:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 13:
                DynamicColor errorContainer = this.f$0.errorContainer();
                if (((DynamicScheme) obj).isDark) {
                    tonePolarity = TonePolarity.DARKER;
                } else {
                    tonePolarity = TonePolarity.LIGHTER;
                }
                return new ToneDeltaConstraint(15.0d, errorContainer, tonePolarity);
            case 14:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 15:
                DynamicColor tertiaryContainer = this.f$0.tertiaryContainer();
                if (((DynamicScheme) obj).isDark) {
                    tonePolarity2 = TonePolarity.DARKER;
                } else {
                    tonePolarity2 = TonePolarity.LIGHTER;
                }
                return new ToneDeltaConstraint(15.0d, tertiaryContainer, tonePolarity2);
            case 16:
                return this.f$0.tertiaryFixedDim();
            case 17:
                MaterialDynamicColors materialDynamicColors2 = this.f$0;
                DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                materialDynamicColors2.getClass();
                if (dynamicScheme2.variant != Variant.MONOCHROME) {
                    z = false;
                }
                boolean z3 = dynamicScheme2.isDark;
                if (z) {
                    if (!z3) {
                        d = 100.0d;
                    }
                    return Double.valueOf(d);
                }
                if (!MaterialDynamicColors.isFidelity(dynamicScheme2)) {
                    if (!z3) {
                        d2 = 10.0d;
                    }
                    return Double.valueOf(d2);
                }
                return Double.valueOf(DynamicColor.contrastingTone(((Double) materialDynamicColors2.tertiaryContainer().tone.apply(dynamicScheme2)).doubleValue(), 4.5d));
            case 18:
                return this.f$0.tertiaryContainer();
            case 19:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 20:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 21:
                return this.f$0.primary();
            case 22:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 23:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 24:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 25:
                return this.f$0.secondary();
            case 26:
                MaterialDynamicColors materialDynamicColors3 = this.f$0;
                DynamicScheme dynamicScheme3 = (DynamicScheme) obj;
                materialDynamicColors3.getClass();
                if (!MaterialDynamicColors.isFidelity(dynamicScheme3)) {
                    if (!dynamicScheme3.isDark) {
                        d2 = 10.0d;
                    }
                    return Double.valueOf(d2);
                }
                return Double.valueOf(DynamicColor.contrastingTone(((Double) materialDynamicColors3.secondaryContainer().tone.apply(dynamicScheme3)).doubleValue(), 4.5d));
            case 27:
                return this.f$0.secondaryContainer();
            case 28:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            default:
                return this.f$0.tertiaryFixedDim();
        }
    }
}
