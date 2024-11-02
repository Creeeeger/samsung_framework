package com.android.systemui.biometrics;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.biometrics.AuthDialog;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AuthBiometricFingerprintView extends AuthBiometricView {
    public boolean isSfps;
    public boolean isUdfps;
    public AuthController.ScaleFactorProvider scaleFactorProvider;
    public UdfpsDialogMeasureAdapter udfpsAdapter;

    public /* synthetic */ AuthBiometricFingerprintView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public AuthIconController createIconController() {
        return new AuthBiometricFingerprintIconController(((LinearLayout) this).mContext, this.mIconView, this.mIconViewOverlay);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final int getDelayAfterAuthenticatedDurationMs() {
        return 500;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final int getStateForAfterError() {
        return 2;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final void handleResetAfterError() {
        this.mIndicatorView.setText(R.string.fingerprint_dialog_touch_sensor);
        this.mIndicatorView.setTextColor(this.mTextColorHint);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final void handleResetAfterHelp() {
        this.mIndicatorView.setText(R.string.fingerprint_dialog_touch_sensor);
        this.mIndicatorView.setTextColor(this.mTextColorHint);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIndicatorView.setText(R.string.fingerprint_dialog_touch_sensor);
        this.mIndicatorView.setTextColor(this.mTextColorHint);
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView, android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        UdfpsDialogMeasureAdapter udfpsDialogMeasureAdapter = this.udfpsAdapter;
        if (udfpsDialogMeasureAdapter != null) {
            int i5 = udfpsDialogMeasureAdapter.mBottomSpacerHeight;
            IconCompat$$ExternalSyntheticOutline0.m("bottomSpacerHeight: ", i5, "AuthBiometricFingerprintView");
            if (i5 < 0) {
                View findViewById = findViewById(R.id.biometric_icon_frame);
                Intrinsics.checkNotNull(findViewById);
                float f = -i5;
                ((FrameLayout) findViewById).setTranslationY(f);
                View findViewById2 = findViewById(R.id.indicator);
                Intrinsics.checkNotNull(findViewById2);
                ((TextView) findViewById2).setTranslationY(f);
            }
        }
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final AuthDialog.LayoutParams onMeasureInternal(int i, int i2) {
        float f;
        AuthDialog.LayoutParams layoutParams;
        AuthDialog.LayoutParams onMeasureInternal = super.onMeasureInternal(i, i2);
        AuthController.ScaleFactorProvider scaleFactorProvider = this.scaleFactorProvider;
        if (scaleFactorProvider != null) {
            f = scaleFactorProvider.provide();
        } else {
            f = 1.0f;
        }
        UdfpsDialogMeasureAdapter udfpsDialogMeasureAdapter = this.udfpsAdapter;
        if (udfpsDialogMeasureAdapter != null) {
            layoutParams = udfpsDialogMeasureAdapter.onMeasureInternal(i, i2, onMeasureInternal, f);
        } else {
            layoutParams = null;
        }
        if (layoutParams != null) {
            return layoutParams;
        }
        return onMeasureInternal;
    }

    @Override // com.android.systemui.biometrics.AuthBiometricView
    public final boolean supportsSmallDialog() {
        return false;
    }

    public final void updateOverrideIconLayoutParamsSize() {
        float f;
        AuthBiometricFingerprintIconController authBiometricFingerprintIconController;
        UdfpsDialogMeasureAdapter udfpsDialogMeasureAdapter = this.udfpsAdapter;
        if (udfpsDialogMeasureAdapter != null) {
            AuthController.ScaleFactorProvider scaleFactorProvider = this.scaleFactorProvider;
            if (scaleFactorProvider != null) {
                f = scaleFactorProvider.provide();
            } else {
                f = 1.0f;
            }
            int sensorDiameter = udfpsDialogMeasureAdapter.getSensorDiameter(f);
            AuthIconController authIconController = this.mIconController;
            if (authIconController instanceof AuthBiometricFingerprintIconController) {
                authBiometricFingerprintIconController = (AuthBiometricFingerprintIconController) authIconController;
            } else {
                authBiometricFingerprintIconController = null;
            }
            if (authBiometricFingerprintIconController != null) {
                authBiometricFingerprintIconController.setIconLayoutParamSize(new Pair(Integer.valueOf(sensorDiameter), Integer.valueOf(sensorDiameter)));
            }
        }
    }

    public AuthBiometricFingerprintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
