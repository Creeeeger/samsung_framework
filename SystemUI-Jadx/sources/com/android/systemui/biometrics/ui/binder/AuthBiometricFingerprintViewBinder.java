package com.android.systemui.biometrics.ui.binder;

import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.biometrics.AuthBiometricFingerprintView;
import com.android.systemui.biometrics.ui.viewmodel.AuthBiometricFingerprintViewModel;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthBiometricFingerprintViewBinder {
    static {
        new AuthBiometricFingerprintViewBinder();
    }

    private AuthBiometricFingerprintViewBinder() {
    }

    public static final void bind(AuthBiometricFingerprintView authBiometricFingerprintView, AuthBiometricFingerprintViewModel authBiometricFingerprintViewModel) {
        if (authBiometricFingerprintView.isSfps) {
            LottieAnimationView lottieAnimationView = authBiometricFingerprintView.mIconView;
            int i = AuthBiometricFingerprintIconViewBinder.$r8$clinit;
            RepeatWhenAttachedKt.repeatWhenAttached(lottieAnimationView, EmptyCoroutineContext.INSTANCE, new AuthBiometricFingerprintIconViewBinder$bind$1(lottieAnimationView, authBiometricFingerprintViewModel, null));
        }
    }
}
