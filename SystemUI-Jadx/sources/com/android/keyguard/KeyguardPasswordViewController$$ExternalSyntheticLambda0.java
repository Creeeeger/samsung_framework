package com.android.keyguard;

import android.widget.EditText;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardPasswordViewController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardPasswordViewController f$0;

    public /* synthetic */ KeyguardPasswordViewController$$ExternalSyntheticLambda0(KeyguardPasswordViewController keyguardPasswordViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardPasswordViewController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                KeyguardPasswordViewController keyguardPasswordViewController = this.f$0;
                EditText editText = keyguardPasswordViewController.mPasswordEntry;
                editText.requestFocus();
                keyguardPasswordViewController.mInputMethodManager.showSoftInput(editText, 1);
                return;
            case 1:
                this.f$0.updateSwitchImeButton();
                return;
            default:
                KeyguardPasswordViewController.$r8$lambda$LhbF6YAKV9pHtOhdlBcgE_uPvik(this.f$0);
                return;
        }
    }
}
