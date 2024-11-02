package com.android.systemui.biometrics.ui.binder;

import android.view.KeyEvent;
import android.view.View;
import android.window.OnBackInvokedCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class OnBackButtonListener implements View.OnKeyListener {
    public final OnBackInvokedCallback onBackInvokedCallback;

    public OnBackButtonListener(OnBackInvokedCallback onBackInvokedCallback) {
        this.onBackInvokedCallback = onBackInvokedCallback;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        if (keyEvent.getAction() == 1) {
            this.onBackInvokedCallback.onBackInvoked();
        }
        return true;
    }
}
