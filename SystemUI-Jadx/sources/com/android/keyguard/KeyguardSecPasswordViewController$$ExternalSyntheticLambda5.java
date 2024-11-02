package com.android.keyguard;

import android.widget.EditText;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecPasswordViewController$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ KeyguardSecPasswordViewController f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ KeyguardSecPasswordViewController$$ExternalSyntheticLambda5(KeyguardSecPasswordViewController keyguardSecPasswordViewController, int i) {
        this.f$0 = keyguardSecPasswordViewController;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final KeyguardSecPasswordViewController keyguardSecPasswordViewController = this.f$0;
        int i = this.f$1;
        if (((KeyguardSecPasswordView) keyguardSecPasswordViewController.mView).isShown()) {
            EditText editText = keyguardSecPasswordViewController.mPasswordEntry;
            if (editText.isEnabled()) {
                editText.requestFocus();
                if (!keyguardSecPasswordViewController.isHideKeyboardByDefault()) {
                    if ((i != 1 || keyguardSecPasswordViewController.mShowImeAtScreenOn) && !keyguardSecPasswordViewController.mInputMethodManager.showSoftInput(editText, 1)) {
                        ((KeyguardSecPasswordView) keyguardSecPasswordViewController.mView).postDelayed(new Runnable() { // from class: com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                KeyguardSecPasswordViewController keyguardSecPasswordViewController2 = KeyguardSecPasswordViewController.this;
                                keyguardSecPasswordViewController2.mInputMethodManager.showSoftInput(keyguardSecPasswordViewController2.mPasswordEntry, 1);
                            }
                        }, 100L);
                    }
                }
            }
        }
    }
}
