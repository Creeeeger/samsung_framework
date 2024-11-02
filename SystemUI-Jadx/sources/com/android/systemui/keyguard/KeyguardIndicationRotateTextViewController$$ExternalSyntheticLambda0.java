package com.android.systemui.keyguard;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (((Integer) obj).intValue() == this.f$0) {
                    return true;
                }
                return false;
            case 1:
                if (((Integer) obj).intValue() == this.f$0) {
                    return true;
                }
                return false;
            default:
                if (((Integer) obj).intValue() == this.f$0) {
                    return true;
                }
                return false;
        }
    }
}
