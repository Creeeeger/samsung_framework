package com.android.keyguard;

import android.content.Context;
import android.util.AttributeSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSecSimPinView extends KeyguardSimPinView {
    public KeyguardSecSimPinView(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputView, com.android.keyguard.KeyguardSecAbsKeyInputView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputView, com.android.keyguard.KeyguardSecAbsKeyInputView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public KeyguardSecSimPinView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
