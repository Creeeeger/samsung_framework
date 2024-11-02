package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.scheme.DynamicScheme;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DynamicColor$$ExternalSyntheticLambda5 implements BiFunction {
    public final /* synthetic */ Function f$0;
    public final /* synthetic */ DynamicScheme f$1;
    public final /* synthetic */ Function f$2;

    public /* synthetic */ DynamicColor$$ExternalSyntheticLambda5(Function function, DynamicScheme dynamicScheme, Function function2) {
        this.f$0 = function;
        this.f$1 = dynamicScheme;
        this.f$2 = function2;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        boolean z;
        Function function = this.f$0;
        DynamicScheme dynamicScheme = this.f$1;
        Function function2 = this.f$2;
        Double d = (Double) obj;
        Double d2 = (Double) obj2;
        double doubleValue = ((Double) function.apply(dynamicScheme)).doubleValue();
        if (d.doubleValue() >= 7.0d) {
            doubleValue = DynamicColor.contrastingTone(d2.doubleValue(), 4.5d);
        } else if (d.doubleValue() >= 3.0d) {
            doubleValue = DynamicColor.contrastingTone(d2.doubleValue(), 3.0d);
        } else {
            if (function2 != null && function2.apply(dynamicScheme) != null && ((DynamicColor) function2.apply(dynamicScheme)).background != null && ((DynamicColor) function2.apply(dynamicScheme)).background.apply(dynamicScheme) != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                doubleValue = DynamicColor.contrastingTone(d2.doubleValue(), d.doubleValue());
            }
        }
        return Double.valueOf(doubleValue);
    }
}
