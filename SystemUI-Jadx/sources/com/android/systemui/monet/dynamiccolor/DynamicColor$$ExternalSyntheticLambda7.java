package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.scheme.DynamicScheme;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DynamicColor$$ExternalSyntheticLambda7 implements BiFunction {
    public final /* synthetic */ Function f$0;
    public final /* synthetic */ DynamicScheme f$1;

    public /* synthetic */ DynamicColor$$ExternalSyntheticLambda7(Function function, DynamicScheme dynamicScheme) {
        this.f$0 = function;
        this.f$1 = dynamicScheme;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        boolean z;
        Function function = this.f$0;
        DynamicScheme dynamicScheme = this.f$1;
        Double d = (Double) obj;
        Double d2 = (Double) obj2;
        if (function != null && function.apply(dynamicScheme) != null && ((DynamicColor) function.apply(dynamicScheme)).background != null && ((DynamicColor) function.apply(dynamicScheme)).background.apply(dynamicScheme) != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return Double.valueOf(DynamicColor.contrastingTone(d2.doubleValue(), 7.0d));
        }
        return Double.valueOf(DynamicColor.contrastingTone(d2.doubleValue(), Math.max(7.0d, d.doubleValue())));
    }
}
