package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardStatusBarViewController$$ExternalSyntheticLambda11 implements Runnable {
    public final /* synthetic */ KeyguardStatusBarViewController f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ KeyguardStatusBarViewController$$ExternalSyntheticLambda11(KeyguardStatusBarViewController keyguardStatusBarViewController, boolean z) {
        this.f$0 = keyguardStatusBarViewController;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        KeyguardStatusBarViewController keyguardStatusBarViewController = this.f$0;
        boolean z = this.f$1;
        KeyguardStatusBarView keyguardStatusBarView = (KeyguardStatusBarView) keyguardStatusBarViewController.mView;
        keyguardStatusBarView.mHiddenByDeX = z;
        if (!z && ((KeyguardStateControllerImpl) keyguardStatusBarViewController.mKeyguardStateController).mShowing) {
            keyguardStatusBarView.setVisibility(0);
        } else {
            keyguardStatusBarView.setVisibility(keyguardStatusBarView.getVisibility());
        }
    }
}
