package com.android.systemui.biometrics;

import android.content.Context;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthBiometricFaceIconController extends AuthIconController {
    public boolean lastPulseLightToDark;
    public int state;

    public AuthBiometricFaceIconController(Context context, LottieAnimationView lottieAnimationView) {
        super(context, lottieAnimationView);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.biometric_dialog_face_icon_size);
        lottieAnimationView.getLayoutParams().width = dimensionPixelSize;
        lottieAnimationView.getLayoutParams().height = dimensionPixelSize;
        this.iconView.setImageDrawable(this.context.getDrawable(R.drawable.face_dialog_pulse_dark_to_light));
    }

    @Override // com.android.systemui.biometrics.AuthIconController
    public final void handleAnimationEnd() {
        int i;
        int i2 = this.state;
        if (i2 == 2 || i2 == 3) {
            if (this.lastPulseLightToDark) {
                i = R.drawable.face_dialog_pulse_dark_to_light;
            } else {
                i = R.drawable.face_dialog_pulse_light_to_dark;
            }
            animateIcon(i, true);
            this.lastPulseLightToDark = !this.lastPulseLightToDark;
        }
    }

    @Override // com.android.systemui.biometrics.AuthIconController
    public final void updateIcon(int i, int i2) {
        boolean z;
        if (i != 4 && i != 3) {
            z = false;
        } else {
            z = true;
        }
        if (i2 == 1) {
            this.iconView.setImageDrawable(this.context.getDrawable(R.drawable.face_dialog_pulse_dark_to_light));
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_authenticating));
        } else if (i2 == 2) {
            this.lastPulseLightToDark = false;
            animateIcon(R.drawable.face_dialog_pulse_dark_to_light, true);
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_authenticating));
        } else if (i == 5 && i2 == 6) {
            animateIcon(R.drawable.face_dialog_dark_to_checkmark, false);
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_confirmed));
        } else if (z && i2 == 0) {
            animateIcon(R.drawable.face_dialog_error_to_idle, false);
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_idle));
        } else if (z && i2 == 6) {
            animateIcon(R.drawable.face_dialog_dark_to_checkmark, false);
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_authenticated));
        } else if (i2 == 4 && i != 4) {
            animateIcon(R.drawable.face_dialog_dark_to_error, false);
        } else if (i == 2 && i2 == 6) {
            animateIcon(R.drawable.face_dialog_dark_to_checkmark, false);
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_authenticated));
        } else if (i2 == 5) {
            animateIcon(R.drawable.face_dialog_wink_from_dark, false);
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_authenticated));
        } else if (i2 == 0) {
            this.iconView.setImageDrawable(this.context.getDrawable(R.drawable.face_dialog_idle_static));
            this.iconView.setContentDescription(this.context.getString(R.string.biometric_dialog_face_icon_description_idle));
        } else {
            IconCompat$$ExternalSyntheticOutline0.m("Unhandled state: ", i2, "AuthBiometricFaceIconController");
        }
        this.state = i2;
    }
}
