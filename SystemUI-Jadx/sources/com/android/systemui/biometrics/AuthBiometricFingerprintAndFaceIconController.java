package com.android.systemui.biometrics;

import android.content.Context;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AuthBiometricFingerprintAndFaceIconController extends AuthBiometricFingerprintIconController {
    public final boolean actsAsConfirmButton;

    public AuthBiometricFingerprintAndFaceIconController(Context context, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2) {
        super(context, lottieAnimationView, lottieAnimationView2);
        this.actsAsConfirmButton = true;
    }

    @Override // com.android.systemui.biometrics.AuthIconController
    public final boolean getActsAsConfirmButton() {
        return this.actsAsConfirmButton;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricFingerprintIconController
    public final Integer getAnimationForTransition(int i, int i2) {
        int i3;
        if (i2 != 5) {
            if (i2 != 6) {
                return super.getAnimationForTransition(i, i2);
            }
            if (i == 5) {
                return Integer.valueOf(R.raw.fingerprint_dialogue_unlocked_to_checkmark_success_lottie);
            }
            return super.getAnimationForTransition(i, i2);
        }
        if (i != 3 && i != 4) {
            i3 = R.raw.fingerprint_dialogue_fingerprint_to_unlock_lottie;
        } else {
            i3 = R.raw.fingerprint_dialogue_error_to_unlock_lottie;
        }
        return Integer.valueOf(i3);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricFingerprintIconController
    public final boolean shouldAnimateIconViewForTransition(int i, int i2) {
        if (i2 == 5) {
            return true;
        }
        return super.shouldAnimateIconViewForTransition(i, i2);
    }
}
