package com.android.systemui.statusbar;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ IndicationEventType f$0;

    public /* synthetic */ KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0(IndicationEventType indicationEventType, int i) {
        this.$r8$classId = i;
        this.f$0 = indicationEventType;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean z;
        boolean z2;
        switch (this.$r8$classId) {
            case 0:
                if (((IndicationItem) obj).mEventType == this.f$0) {
                    return true;
                }
                return false;
            case 1:
                IndicationItem indicationItem = (IndicationItem) obj;
                if (indicationItem.mEventType == this.f$0) {
                    if (indicationItem.mDurationTime == -1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        return true;
                    }
                }
                return false;
            default:
                IndicationItem indicationItem2 = (IndicationItem) obj;
                if (indicationItem2.mEventType == this.f$0) {
                    if (indicationItem2.mDurationTime == -1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        return true;
                    }
                }
                return false;
        }
    }
}
