package com.android.systemui.qp.flashlight;

import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SubscreenFlashLightController$$ExternalSyntheticLambda0 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        ((FlashlightControllerImpl) ((FlashlightController) Dependency.get(FlashlightController.class))).showUnavailableMessage();
    }
}
