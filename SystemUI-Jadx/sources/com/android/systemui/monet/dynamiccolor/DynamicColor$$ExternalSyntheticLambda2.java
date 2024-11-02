package com.android.systemui.monet.dynamiccolor;

import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DynamicColor$$ExternalSyntheticLambda2 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ double f$0;

    public /* synthetic */ DynamicColor$$ExternalSyntheticLambda2(double d, int i) {
        this.$r8$classId = i;
        this.f$0 = d;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return Double.valueOf(this.f$0);
            default:
                return Double.valueOf(this.f$0);
        }
    }
}
