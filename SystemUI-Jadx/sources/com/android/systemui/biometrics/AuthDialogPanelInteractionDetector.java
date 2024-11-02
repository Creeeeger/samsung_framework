package com.android.systemui.biometrics;

import android.util.Log;
import com.android.systemui.shade.ShadeExpansionStateManager;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthDialogPanelInteractionDetector {
    public Action action;
    public final Executor mainExecutor;
    public int panelState = -1;
    public final ShadeExpansionStateManager shadeExpansionStateManager;

    public AuthDialogPanelInteractionDetector(ShadeExpansionStateManager shadeExpansionStateManager, Executor executor) {
        this.shadeExpansionStateManager = shadeExpansionStateManager;
        this.mainExecutor = executor;
    }

    public final void disable() {
        if (this.action != null) {
            Log.i("AuthDialogPanelInteractionDetector", "Disable dectector");
            this.action = null;
            this.panelState = -1;
            AuthDialogPanelInteractionDetector$disable$1 authDialogPanelInteractionDetector$disable$1 = new AuthDialogPanelInteractionDetector$disable$1(this);
            ShadeExpansionStateManager shadeExpansionStateManager = this.shadeExpansionStateManager;
            shadeExpansionStateManager.stateListeners.remove(authDialogPanelInteractionDetector$disable$1);
            shadeExpansionStateManager.expansionListeners.remove(new AuthDialogPanelInteractionDetector$disable$2(this));
        }
    }
}
