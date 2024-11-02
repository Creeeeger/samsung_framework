package com.android.systemui.statusbar.phone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class LightBarController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ LightBarController f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ LightBarController$$ExternalSyntheticLambda1(LightBarController lightBarController, String str) {
        this.f$0 = lightBarController;
        this.f$1 = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LightBarController lightBarController = this.f$0;
        lightBarController.updateStatus(lightBarController.mAppearanceRegions, this.f$1);
    }
}
