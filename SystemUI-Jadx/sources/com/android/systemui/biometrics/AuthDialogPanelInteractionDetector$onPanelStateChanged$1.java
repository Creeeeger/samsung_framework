package com.android.systemui.biometrics;

import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthDialogPanelInteractionDetector$onPanelStateChanged$1 implements Runnable {
    public final /* synthetic */ int $state;
    public final /* synthetic */ AuthDialogPanelInteractionDetector this$0;

    public AuthDialogPanelInteractionDetector$onPanelStateChanged$1(AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector, int i) {
        this.this$0 = authDialogPanelInteractionDetector;
        this.$state = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector = this.this$0;
        int i = this.$state;
        authDialogPanelInteractionDetector.panelState = i;
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("onPanelStateChanged, state: ", i, "AuthDialogPanelInteractionDetector");
    }
}
