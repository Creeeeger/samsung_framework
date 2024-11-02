package com.android.systemui.biometrics;

import android.content.Context;
import android.hardware.face.FaceManager;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.systemui.R;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthBiometricFingerprintAndFaceView extends AuthBiometricFingerprintView {
    public boolean isFaceClass3;

    public AuthBiometricFingerprintAndFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricFingerprintView, com.android.systemui.biometrics.AuthBiometricView
    public final AuthIconController createIconController() {
        return new AuthBiometricFingerprintAndFaceIconController(((LinearLayout) this).mContext, this.mIconView, this.mIconViewOverlay);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final boolean forceRequireConfirmation(int i) {
        if (i == 8) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final int getConfirmationPrompt() {
        return R.string.biometric_dialog_tap_confirm_with_face;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final boolean ignoreUnsuccessfulEventsFrom(int i, String str) {
        boolean z;
        if (i != 8) {
            return false;
        }
        if (this.isFaceClass3) {
            if (!Intrinsics.areEqual(str, FaceManager.getErrorString(((LinearLayout) this).mContext, 7, 0)) && !Intrinsics.areEqual(str, FaceManager.getErrorString(((LinearLayout) this).mContext, 9, 0))) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                return false;
            }
        }
        return true;
    }

    public AuthBiometricFingerprintAndFaceView(Context context) {
        this(context, null);
    }
}
