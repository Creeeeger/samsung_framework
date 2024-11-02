package com.android.keyguard;

import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardKnoxDualDarInnerPinView extends KeyguardSecPINView {
    public KeyguardKnoxDualDarInnerPinView(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.KeyguardPINView, com.android.keyguard.KeyguardAbsKeyInputView
    public final int getPasswordTextViewId() {
        return R.id.dualdar_inner_pinEntry;
    }

    public KeyguardKnoxDualDarInnerPinView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
