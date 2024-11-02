package com.android.systemui.qp.flashlight;

import com.android.systemui.qp.SubscreenQSControllerContract$FlashLightView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SubscreenFlashLightController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SubscreenFlashLightController f$0;

    public /* synthetic */ SubscreenFlashLightController$$ExternalSyntheticLambda1(SubscreenFlashLightController subscreenFlashLightController, int i) {
        this.$r8$classId = i;
        this.f$0 = subscreenFlashLightController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.finishFlashLightActivity();
                return;
            case 1:
                SubscreenQSControllerContract$FlashLightView subscreenQSControllerContract$FlashLightView = this.f$0.mFlashLightPresentationView;
                if (subscreenQSControllerContract$FlashLightView != null) {
                    ((SubroomFlashLightSettingsActivity) subscreenQSControllerContract$FlashLightView).showTurnOffView();
                    return;
                }
                return;
            default:
                this.f$0.finishFlashLightActivity();
                return;
        }
    }
}
