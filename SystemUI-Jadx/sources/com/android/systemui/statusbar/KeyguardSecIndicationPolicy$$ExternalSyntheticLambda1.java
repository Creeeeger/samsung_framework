package com.android.systemui.statusbar;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = (KeyguardSecIndicationPolicy) this.f$0;
                IndicationPosition indicationPosition = (IndicationPosition) obj;
                ((KeyguardSecIndicationController) ((IndicationChangeListener) this.f$1)).onIndicationChanged(indicationPosition, (IndicationItem) keyguardSecIndicationPolicy.mTopItemMap.get(indicationPosition));
                return;
            default:
                ((KeyguardSecIndicationController) ((IndicationChangeListener) obj)).onIndicationChanged((IndicationPosition) this.f$0, (IndicationItem) this.f$1);
                return;
        }
    }
}
