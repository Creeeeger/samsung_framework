package com.android.keyguard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.HapticFeedbackConstants;
import android.view.KeyEvent;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class KeyguardSecAbsKeyInputView extends KeyguardAbsKeyInputView {
    public KeyguardSecAbsKeyInputView(Context context) {
        this(context, null);
    }

    public final void doHapticKeyClick() {
        int i;
        if (LsRune.SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isHapticFeedbackEnabled()) {
            i = 3;
        } else {
            i = 1;
        }
        performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(1), i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        enableTouch();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        enableTouch();
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 25 && i != 24) {
            super.onKeyDown(i, keyEvent);
            return false;
        }
        return false;
    }

    public KeyguardSecAbsKeyInputView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void disableTouch() {
    }

    public void enableTouch() {
    }
}
