package com.android.systemui.globalactions.presentation;

import com.android.systemui.plugins.GlobalActions;
import com.samsung.android.globalactions.presentation.SamsungGlobalActionsManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemUIGlobalActionsManager implements SamsungGlobalActionsManager {
    public final GlobalActions.GlobalActionsManager mWindowManagerFuncs;

    public SystemUIGlobalActionsManager(GlobalActions.GlobalActionsManager globalActionsManager) {
        this.mWindowManagerFuncs = globalActionsManager;
    }

    public final boolean isFOTAAvailableForGlobalActions() {
        return this.mWindowManagerFuncs.isFOTAAvailableForGlobalActions();
    }

    public final void onGlobalActionsHidden() {
        this.mWindowManagerFuncs.onGlobalActionsHidden();
    }

    public final void onGlobalActionsShown() {
        this.mWindowManagerFuncs.onGlobalActionsShown();
    }

    public final void reboot(boolean z) {
        this.mWindowManagerFuncs.reboot(z);
    }

    public final void shutdown() {
        this.mWindowManagerFuncs.shutdown();
    }
}
