package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.scheme.DynamicScheme;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda4 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MaterialDynamicColors f$0;

    public /* synthetic */ MaterialDynamicColors$$ExternalSyntheticLambda4(MaterialDynamicColors materialDynamicColors, int i) {
        this.$r8$classId = i;
        this.f$0 = materialDynamicColors;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        TonePolarity tonePolarity;
        TonePolarity tonePolarity2;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 1:
                return this.f$0.primaryFixedDim();
            case 2:
                this.f$0.getClass();
                return DynamicColor.fromPalette(new MaterialDynamicColors$$ExternalSyntheticLambda5(21), new MaterialDynamicColors$$ExternalSyntheticLambda5(22), null, null);
            case 3:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 4:
                DynamicColor primaryContainer = this.f$0.primaryContainer();
                if (((DynamicScheme) obj).isDark) {
                    tonePolarity = TonePolarity.DARKER;
                } else {
                    tonePolarity = TonePolarity.LIGHTER;
                }
                return new ToneDeltaConstraint(15.0d, primaryContainer, tonePolarity);
            case 5:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 6:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 7:
                this.f$0.getClass();
                return MaterialDynamicColors.highestSurface((DynamicScheme) obj);
            case 8:
                DynamicColor secondaryContainer = this.f$0.secondaryContainer();
                if (((DynamicScheme) obj).isDark) {
                    tonePolarity2 = TonePolarity.DARKER;
                } else {
                    tonePolarity2 = TonePolarity.LIGHTER;
                }
                return new ToneDeltaConstraint(15.0d, secondaryContainer, tonePolarity2);
            default:
                return this.f$0.errorContainer();
        }
    }
}
