package com.android.systemui.shade;

import android.util.Log;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.animator.KeyguardTouchAnimator;
import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecPanelBlockExpandingHelper {
    public final CentralSurfaces mCentralSurfaces;
    public final CommandQueue mCommandQueue;
    public final KeyguardStateController mKeyguardStateController;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public final NavigationBarController mNavigationBarController;
    public final StatusBarStateController mStatusBarStateController;
    public final StatusBarWindowController mStatusBarWindowController;

    public SecPanelBlockExpandingHelper(CentralSurfaces centralSurfaces, CommandQueue commandQueue, NavigationBarController navigationBarController, StatusBarWindowController statusBarWindowController, KnoxStateMonitor knoxStateMonitor, KeyguardTouchAnimator keyguardTouchAnimator, KeyguardStateController keyguardStateController, StatusBarStateController statusBarStateController) {
        this.mCentralSurfaces = centralSurfaces;
        this.mCommandQueue = commandQueue;
        this.mNavigationBarController = navigationBarController;
        this.mStatusBarWindowController = statusBarWindowController;
        this.mKnoxStateMonitor = knoxStateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mStatusBarStateController = statusBarStateController;
    }

    public final boolean isBlockedByKnoxPanel() {
        EdmMonitor edmMonitor;
        boolean z;
        KnoxStateMonitorImpl knoxStateMonitorImpl = (KnoxStateMonitorImpl) this.mKnoxStateMonitor;
        CustomSdkMonitor customSdkMonitor = knoxStateMonitorImpl.mCustomSdkMonitor;
        if ((customSdkMonitor != null && customSdkMonitor.mStatusBarNotificationsState) || ((edmMonitor = knoxStateMonitorImpl.mEdmMonitor) != null && edmMonitor.mStatusBarExpandAllowed && !edmMonitor.mIsStatusBarHidden)) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = !z;
        if (z2) {
            Log.d("SecPanelBlockExpandingHelper", "KnoxStateMonitor.isPanelExpandEnabled() is true");
        }
        return z2;
    }

    public final boolean isDisabledExpandingOnKeyguard() {
        boolean z;
        boolean z2;
        if (isBlockedByKnoxPanel()) {
            return true;
        }
        boolean z3 = false;
        if (this.mStatusBarStateController.getState() == 0) {
            z = true;
        } else {
            z = false;
        }
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        boolean z4 = keyguardStateControllerImpl.mShowing;
        boolean z5 = keyguardStateControllerImpl.mOccluded;
        if ((((CentralSurfacesImpl) this.mCentralSurfaces).mDisabled1 & QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z && ((z4 || z5) && z2)) {
            z3 = true;
        }
        if (z3) {
            StringBuilder sb = new StringBuilder("isDisabledExpandingOnKeyguard: !isShadeState[");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, !z, "] && (isShowing[", z4, "] || isOcculleded[");
            sb.append(z5);
            sb.append("]) && disabledByFlag[");
            sb.append(z2);
            sb.append("]");
            Log.d("SecPanelBlockExpandingHelper", sb.toString());
        }
        return z3;
    }
}
