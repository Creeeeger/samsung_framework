package com.android.systemui.biometrics;

import com.android.systemui.biometrics.AuthContainerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthBiometricView$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AuthBiometricView f$0;

    public /* synthetic */ AuthBiometricView$$ExternalSyntheticLambda2(AuthBiometricView authBiometricView, int i) {
        this.$r8$classId = i;
        this.f$0 = authBiometricView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((AuthContainerView.BiometricCallback) this.f$0.mCallback).onAction(8);
                return;
            case 1:
                ((AuthContainerView.BiometricCallback) this.f$0.mCallback).onAction(1);
                return;
            case 2:
                AuthBiometricView authBiometricView = this.f$0;
                int i = AuthBiometricView.$r8$clinit;
                authBiometricView.updateState(authBiometricView.getStateForAfterError());
                authBiometricView.handleResetAfterError();
                Utils.notifyAccessibilityContentChanged(authBiometricView.mAccessibilityManager, authBiometricView);
                return;
            case 3:
                AuthBiometricView authBiometricView2 = this.f$0;
                int i2 = AuthBiometricView.$r8$clinit;
                authBiometricView2.updateState(2);
                authBiometricView2.handleResetAfterHelp();
                Utils.notifyAccessibilityContentChanged(authBiometricView2.mAccessibilityManager, authBiometricView2);
                return;
            default:
                ((AuthContainerView.BiometricCallback) this.f$0.mCallback).onAction(5);
                return;
        }
    }
}
