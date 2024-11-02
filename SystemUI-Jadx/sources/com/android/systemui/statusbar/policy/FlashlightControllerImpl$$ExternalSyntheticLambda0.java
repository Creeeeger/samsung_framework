package com.android.systemui.statusbar.policy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FlashlightControllerImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FlashlightControllerImpl f$0;

    public /* synthetic */ FlashlightControllerImpl$$ExternalSyntheticLambda0(FlashlightControllerImpl flashlightControllerImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = flashlightControllerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.tryInitCamera();
                return;
            case 1:
                this.f$0.tryInitCamera();
                return;
            case 2:
                this.f$0.tryInitCamera();
                return;
            case 3:
                this.f$0.tryInitCamera();
                return;
            default:
                this.f$0.mSubscreenFlashlightController.finishFlashLightActivity();
                return;
        }
    }
}
