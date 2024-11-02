package com.android.keyguard;

import com.android.keyguard.biometrics.KeyguardBiometricViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3 implements DualDarKeyguardSecurityCallback {
    public final /* synthetic */ KeyguardSecSecurityContainerController f$0;

    public /* synthetic */ KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3(KeyguardSecSecurityContainerController keyguardSecSecurityContainerController) {
        this.f$0 = keyguardSecSecurityContainerController;
    }

    public final void onSecurityModeChanged(boolean z) {
        KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = this.f$0;
        ViewMediatorCallback viewMediatorCallback = keyguardSecSecurityContainerController.mViewMediatorCallback;
        if (viewMediatorCallback != null) {
            viewMediatorCallback.setNeedsInput(z);
        }
        KeyguardBiometricViewController keyguardBiometricViewController = keyguardSecSecurityContainerController.mBiometricViewController;
        if (keyguardBiometricViewController != null) {
            keyguardBiometricViewController.startLockIconAnimation(true);
        }
    }
}
