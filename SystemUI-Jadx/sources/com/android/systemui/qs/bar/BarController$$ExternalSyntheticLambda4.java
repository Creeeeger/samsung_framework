package com.android.systemui.qs.bar;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BarController$$ExternalSyntheticLambda4 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BarType f$0;

    public /* synthetic */ BarController$$ExternalSyntheticLambda4(BarType barType, int i) {
        this.$r8$classId = i;
        this.f$0 = barType;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return this.f$0.getCls().isInstance((BarItemImpl) obj);
            default:
                return this.f$0.getCls().isInstance((BarItemImpl) obj);
        }
    }
}
