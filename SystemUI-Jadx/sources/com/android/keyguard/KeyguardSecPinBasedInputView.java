package com.android.keyguard;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockscreenCredential;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.samsung.android.tsp.SemTspStateManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class KeyguardSecPinBasedInputView extends KeyguardPinBasedInputView {
    public boolean mAttached;
    public ViewGroup mContainer;
    public ViewGroup mPasswordEntryBoxLayout;
    public boolean mTouchEnabled;

    public KeyguardSecPinBasedInputView(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputView
    public final void disableTouch() {
        this.mTouchEnabled = false;
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputView
    public final void enableTouch() {
        this.mTouchEnabled = true;
    }

    @Override // com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardAbsKeyInputView
    public final LockscreenCredential getEnteredCredential() {
        PasswordTextView passwordTextView = this.mPasswordEntry;
        if (passwordTextView instanceof SecPasswordTextView) {
            return LockscreenCredential.createPinOrNone(((SecPasswordTextView) passwordTextView).mText);
        }
        return LockscreenCredential.createPinOrNone(passwordTextView.getText());
    }

    @Override // com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardInputView
    public CharSequence getTitle() {
        return null;
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (LsRune.SECURITY_DEAD_ZONE) {
            this.mAttached = true;
        }
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (LsRune.SECURITY_DEAD_ZONE) {
            this.mAttached = false;
        }
    }

    @Override // com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardAbsKeyInputView, com.android.keyguard.KeyguardInputView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mContainer = (ViewGroup) findViewById(R.id.container);
        this.mPasswordEntryBoxLayout = (ViewGroup) findViewById(R.id.password_entry_box);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.mTouchEnabled) {
            Log.d("KeyguardSecPinBasedInputView", "Touch event intercepted");
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (LsRune.SECURITY_DEAD_ZONE && this.mAttached) {
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m("onVisibilityChanged() Visibility : ", i, "KeyguardSecPinBasedInputView");
            if (i == 0) {
                Bundle bundle = new Bundle();
                bundle.putString("deadzone_v2", "3.33%,3.33%,0%");
                SemTspStateManager.setDeadZone(getRootView(), bundle);
            } else if (!LsRune.SECURITY_BOUNCER_WINDOW) {
                SemTspStateManager.clearDeadZone(getRootView());
            }
        }
    }

    @Override // com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardAbsKeyInputView
    public final void setPasswordEntryEnabled(boolean z) {
        int i;
        super.setPasswordEntryEnabled(z);
        ViewGroup viewGroup = this.mContainer;
        if (viewGroup != null && this.mPasswordEntryBoxLayout != null) {
            int i2 = 0;
            if (z) {
                i = 0;
            } else {
                i = 4;
            }
            viewGroup.setVisibility(i);
            ViewGroup viewGroup2 = this.mPasswordEntryBoxLayout;
            if (!z) {
                i2 = 4;
            }
            viewGroup2.setVisibility(i2);
        }
        if (z) {
            this.mTouchEnabled = true;
        }
    }

    public KeyguardSecPinBasedInputView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchEnabled = true;
    }
}
