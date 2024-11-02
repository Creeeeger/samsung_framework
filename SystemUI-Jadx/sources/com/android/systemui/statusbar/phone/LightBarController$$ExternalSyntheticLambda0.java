package com.android.systemui.statusbar.phone;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class LightBarController$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LightBarController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                LightBarController lightBarController = (LightBarController) this.f$0;
                LightBarTransitionsController lightBarTransitionsController = (LightBarTransitionsController) obj;
                if (lightBarTransitionsController != null) {
                    lightBarTransitionsController.setIconsDark(lightBarController.mNavigationLight, lightBarController.animateChange());
                    return;
                } else {
                    lightBarController.getClass();
                    return;
                }
            default:
                Consumer consumer = (Consumer) this.f$0;
                LightBarTransitionsController lightBarTransitionsController2 = (LightBarTransitionsController) obj;
                if (lightBarTransitionsController2 != null) {
                    consumer.accept(lightBarTransitionsController2);
                    return;
                }
                return;
        }
    }
}
