package com.android.keyguard;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import com.android.systemui.R;
import com.android.systemui.util.PluralMessageFormaterKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSimPukView extends KeyguardSimInputView {
    public KeyguardSimPukView(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public final int getPasswordTextViewId() {
        return R.id.pukEntry;
    }

    @Override // com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardAbsKeyInputView
    public final int getPromptReasonStringRes(int i) {
        return 0;
    }

    public final String getPukPasswordErrorMessage(int i, boolean z, boolean z2) {
        int i2;
        String string;
        int i3;
        if (i == 0) {
            string = getContext().getString(R.string.kg_password_wrong_puk_code_dead);
        } else if (i > 0) {
            if (z) {
                i3 = R.string.kg_password_default_puk_message;
            } else {
                i3 = R.string.kg_password_wrong_puk_code;
            }
            string = PluralMessageFormaterKt.icuMessageFormat(getResources(), i3, i);
        } else {
            if (z) {
                i2 = R.string.kg_puk_enter_puk_hint;
            } else {
                i2 = R.string.kg_password_puk_failed;
            }
            string = getContext().getString(i2);
        }
        if (z2) {
            string = getResources().getString(R.string.kg_sim_lock_esim_instructions, string);
        }
        Log.d("KeyguardSimPukView", "getPukPasswordErrorMessage: attemptsRemaining=" + i + " displayMessage=" + string);
        return string;
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputView, com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardInputView
    public final CharSequence getTitle() {
        return getContext().getString(android.R.string.permlab_sdcardRead);
    }

    @Override // com.android.keyguard.KeyguardSimInputView, com.android.keyguard.KeyguardSecPinBasedInputView, com.android.keyguard.KeyguardPinBasedInputView, com.android.keyguard.KeyguardAbsKeyInputView, com.android.keyguard.KeyguardInputView, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
    }

    public KeyguardSimPukView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.android.keyguard.KeyguardInputView
    public final void startAppearAnimation() {
    }
}
