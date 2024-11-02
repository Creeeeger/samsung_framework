package com.android.systemui.biometrics.ui.binder;

import android.view.KeyEvent;
import android.widget.TextView;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class OnImeSubmitListener implements TextView.OnEditorActionListener {
    public final Function1 onSubmit;

    public OnImeSubmitListener(Function1 function1) {
        this.onSubmit = function1;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        boolean z2;
        if (keyEvent == null && (i == 0 || i == 6 || i == 5)) {
            z = true;
        } else {
            z = false;
        }
        if (keyEvent != null && KeyEvent.isConfirmKey(keyEvent.getKeyCode()) && keyEvent.getAction() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z && !z2) {
            return false;
        }
        this.onSubmit.invoke(textView.getText());
        return true;
    }
}
