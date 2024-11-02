package com.android.systemui.statusbar.phone;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardStatusBarViewController$$ExternalSyntheticLambda9 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardStatusBarViewController f$0;

    public /* synthetic */ KeyguardStatusBarViewController$$ExternalSyntheticLambda9(KeyguardStatusBarViewController keyguardStatusBarViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardStatusBarViewController;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        KeyguardStatusBarViewController keyguardStatusBarViewController = this.f$0;
        switch (i) {
            case 0:
                keyguardStatusBarViewController.mHiddenByKnox = ((Boolean) obj).booleanValue();
                keyguardStatusBarViewController.updateViewState();
                return Unit.INSTANCE;
            case 1:
                Float f = (Float) obj;
                if (!keyguardStatusBarViewController.mNotificationMediaManager.isLockscreenWallpaperOnNotificationShade()) {
                    keyguardStatusBarViewController.mSystemEventAnimatorAlpha = f.floatValue();
                } else {
                    keyguardStatusBarViewController.mSystemEventAnimatorAlpha = 1.0f;
                }
                keyguardStatusBarViewController.updateViewState();
                return Unit.INSTANCE;
            default:
                Float f2 = (Float) obj;
                if (!keyguardStatusBarViewController.mNotificationMediaManager.isLockscreenWallpaperOnNotificationShade()) {
                    ((KeyguardStatusBarView) keyguardStatusBarViewController.mView).setTranslationX(f2.floatValue());
                } else {
                    ((KeyguardStatusBarView) keyguardStatusBarViewController.mView).setTranslationX(0.0f);
                }
                return Unit.INSTANCE;
        }
    }
}
