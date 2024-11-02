package com.android.systemui.biometrics;

import android.util.Log;
import android.view.View;
import com.android.systemui.biometrics.AuthContainerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthBiometricView$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AuthBiometricView f$0;

    public /* synthetic */ AuthBiometricView$$ExternalSyntheticLambda1(AuthBiometricView authBiometricView, int i) {
        this.$r8$classId = i;
        this.f$0 = authBiometricView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                ((AuthContainerView.BiometricCallback) this.f$0.mCallback).onAction(3);
                return;
            case 1:
                ((AuthContainerView.BiometricCallback) this.f$0.mCallback).onAction(2);
                return;
            case 2:
                AuthBiometricView authBiometricView = this.f$0;
                int i = AuthBiometricView.$r8$clinit;
                authBiometricView.startTransitionToCredentialUI();
                return;
            case 3:
                AuthBiometricView authBiometricView2 = this.f$0;
                int i2 = AuthBiometricView.$r8$clinit;
                authBiometricView2.updateState(6);
                return;
            case 4:
                AuthBiometricView authBiometricView3 = this.f$0;
                int i3 = AuthBiometricView.$r8$clinit;
                authBiometricView3.updateState(2);
                ((AuthContainerView.BiometricCallback) authBiometricView3.mCallback).onAction(4);
                authBiometricView3.mTryAgainButton.setVisibility(8);
                Utils.notifyAccessibilityContentChanged(authBiometricView3.mAccessibilityManager, authBiometricView3);
                return;
            case 5:
                AuthBiometricView authBiometricView4 = this.f$0;
                if (authBiometricView4.mState == 5) {
                    authBiometricView4.updateState(6);
                    return;
                }
                return;
            case 6:
                AuthBiometricView authBiometricView5 = this.f$0;
                if (authBiometricView5.mState == 5) {
                    authBiometricView5.updateState(6);
                    return;
                }
                return;
            default:
                AuthBiometricView authBiometricView6 = this.f$0;
                if (authBiometricView6.mState == 6) {
                    Log.w("AuthBiometricView", "Ignoring background click after authenticated");
                    return;
                }
                int i4 = authBiometricView6.mSize;
                if (i4 == 1) {
                    Log.w("AuthBiometricView", "Ignoring background click during small dialog");
                    return;
                } else if (i4 == 3) {
                    Log.w("AuthBiometricView", "Ignoring background click during large dialog");
                    return;
                } else {
                    ((AuthContainerView.BiometricCallback) authBiometricView6.mCallback).onAction(2);
                    return;
                }
        }
    }
}
