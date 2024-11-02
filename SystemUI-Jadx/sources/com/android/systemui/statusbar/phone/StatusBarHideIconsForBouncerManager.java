package com.android.systemui.statusbar.phone;

import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeFullExpansionListener;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.window.StatusBarWindowStateController;
import com.android.systemui.statusbar.window.StatusBarWindowStateListener;
import com.android.systemui.util.concurrency.DelayableExecutor;
import java.io.PrintWriter;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarHideIconsForBouncerManager implements Dumpable {
    public boolean bouncerShowing;
    public boolean bouncerWasShowingWhenHidden;
    public final CommandQueue commandQueue;
    public int displayId;
    public boolean hideIconsForBouncer;
    public boolean isOccluded;
    public final DelayableExecutor mainExecutor;
    public boolean panelExpanded;
    public boolean statusBarWindowHidden;
    public boolean topAppHidesStatusBar;
    public boolean wereIconsJustHidden;

    public StatusBarHideIconsForBouncerManager(CommandQueue commandQueue, DelayableExecutor delayableExecutor, StatusBarWindowStateController statusBarWindowStateController, ShadeExpansionStateManager shadeExpansionStateManager, DumpManager dumpManager) {
        this.commandQueue = commandQueue;
        this.mainExecutor = delayableExecutor;
        dumpManager.registerDumpable(this);
        ((HashSet) statusBarWindowStateController.listeners).add(new StatusBarWindowStateListener() { // from class: com.android.systemui.statusbar.phone.StatusBarHideIconsForBouncerManager.1
            @Override // com.android.systemui.statusbar.window.StatusBarWindowStateListener
            public final void onStatusBarWindowStateChanged(int i) {
                boolean z;
                StatusBarHideIconsForBouncerManager statusBarHideIconsForBouncerManager = StatusBarHideIconsForBouncerManager.this;
                statusBarHideIconsForBouncerManager.getClass();
                if (i == 2) {
                    z = true;
                } else {
                    z = false;
                }
                statusBarHideIconsForBouncerManager.statusBarWindowHidden = z;
                statusBarHideIconsForBouncerManager.updateHideIconsForBouncer(false);
            }
        });
        shadeExpansionStateManager.addFullExpansionListener(new ShadeFullExpansionListener() { // from class: com.android.systemui.statusbar.phone.StatusBarHideIconsForBouncerManager.2
            @Override // com.android.systemui.shade.ShadeFullExpansionListener
            public final void onShadeExpansionFullyChanged(boolean z) {
                StatusBarHideIconsForBouncerManager statusBarHideIconsForBouncerManager = StatusBarHideIconsForBouncerManager.this;
                if (statusBarHideIconsForBouncerManager.panelExpanded != z) {
                    statusBarHideIconsForBouncerManager.panelExpanded = z;
                    statusBarHideIconsForBouncerManager.updateHideIconsForBouncer(false);
                }
            }
        });
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("---- State variables set externally ----");
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("panelExpanded=", this.panelExpanded, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("isOccluded=", this.isOccluded, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("bouncerShowing=", this.bouncerShowing, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("topAppHideStatusBar=", this.topAppHidesStatusBar, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("statusBarWindowHidden=", this.statusBarWindowHidden, printWriter);
        printWriter.println("displayId=" + this.displayId);
        printWriter.println("---- State variables calculated internally ----");
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("hideIconsForBouncer=", this.hideIconsForBouncer, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("bouncerWasShowingWhenHidden=", this.bouncerWasShowingWhenHidden, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("wereIconsJustHidden=", this.wereIconsJustHidden, printWriter);
    }

    public final boolean getShouldHideStatusBarIconsForBouncer() {
        boolean z = this.hideIconsForBouncer;
        if (z || this.wereIconsJustHidden) {
            EmergencyButtonController$$ExternalSyntheticOutline0.m("hideIconsForBouncer=", z, " wereIconsJustHidden=", this.wereIconsJustHidden, "StatusBarHideIconsForBouncerManager");
        }
        if (!this.hideIconsForBouncer && !this.wereIconsJustHidden) {
            return false;
        }
        return true;
    }

    public final void updateHideIconsForBouncer(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (this.topAppHidesStatusBar && this.isOccluded && (this.statusBarWindowHidden || this.bouncerShowing)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!this.panelExpanded && !this.isOccluded && this.bouncerShowing) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 || z3) {
            z4 = true;
        }
        if (this.hideIconsForBouncer != z4) {
            this.hideIconsForBouncer = z4;
            if (!z4 && this.bouncerWasShowingWhenHidden) {
                this.wereIconsJustHidden = true;
                this.mainExecutor.executeDelayed(500L, new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarHideIconsForBouncerManager$updateHideIconsForBouncer$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        StatusBarHideIconsForBouncerManager statusBarHideIconsForBouncerManager = StatusBarHideIconsForBouncerManager.this;
                        statusBarHideIconsForBouncerManager.wereIconsJustHidden = false;
                        statusBarHideIconsForBouncerManager.commandQueue.recomputeDisableFlags(statusBarHideIconsForBouncerManager.displayId, true);
                    }
                });
            } else {
                this.commandQueue.recomputeDisableFlags(this.displayId, z);
            }
        }
        if (z4) {
            this.bouncerWasShowingWhenHidden = this.bouncerShowing;
        }
    }
}
