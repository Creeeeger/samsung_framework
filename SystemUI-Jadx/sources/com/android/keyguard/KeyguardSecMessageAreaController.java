package com.android.keyguard;

import android.text.method.MovementMethod;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import com.android.systemui.R;
import com.android.systemui.statusbar.policy.ConfigurationController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecMessageAreaController extends KeyguardMessageAreaController {
    public KeyguardSecMessageAreaController(BouncerKeyguardMessageArea bouncerKeyguardMessageArea, KeyguardUpdateMonitor keyguardUpdateMonitor, ConfigurationController configurationController) {
        super(bouncerKeyguardMessageArea, keyguardUpdateMonitor, configurationController);
    }

    public final void announceForAccessibility(CharSequence charSequence) {
        ((BouncerKeyguardMessageArea) this.mView).announceForAccessibility(charSequence);
    }

    public final void displayFailedAnimation() {
        boolean z;
        BouncerKeyguardMessageArea bouncerKeyguardMessageArea = (BouncerKeyguardMessageArea) this.mView;
        if (bouncerKeyguardMessageArea.getScaleX() == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            bouncerKeyguardMessageArea.startAnimation(AnimationUtils.loadAnimation(bouncerKeyguardMessageArea.getContext(), R.anim.giggle));
        }
    }

    public final void formatMessage(int i, Object... objArr) {
        String str;
        BouncerKeyguardMessageArea bouncerKeyguardMessageArea = (BouncerKeyguardMessageArea) this.mView;
        if (i != 0) {
            str = bouncerKeyguardMessageArea.getContext().getString(i, objArr);
        } else {
            str = null;
        }
        bouncerKeyguardMessageArea.setMessage(str, false);
    }

    public final ViewGroup.LayoutParams getLayoutParams() {
        return ((BouncerKeyguardMessageArea) this.mView).getLayoutParams();
    }

    public final void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        ((BouncerKeyguardMessageArea) this.mView).setLayoutParams(layoutParams);
    }

    @Override // com.android.keyguard.KeyguardMessageAreaController
    public final void setMessage(CharSequence charSequence) {
        setMessage(charSequence, false);
    }

    public final void setMovementMethod(MovementMethod movementMethod) {
        ((BouncerKeyguardMessageArea) this.mView).setMovementMethod(movementMethod);
    }

    public final void setVisibility(int i) {
        ((BouncerKeyguardMessageArea) this.mView).setVisibility(i);
    }
}
