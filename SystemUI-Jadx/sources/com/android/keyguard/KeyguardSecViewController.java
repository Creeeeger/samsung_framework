package com.android.keyguard;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeSurface;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.phone.BiometricUnlockController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.KeyguardBypassController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardSecViewController {
    default Bundle getBouncerMessage() {
        return null;
    }

    default Bundle getIncorrectBouncerMessage() {
        return null;
    }

    default ViewGroup getLockIconContainer() {
        return null;
    }

    default boolean interceptRestKey(KeyEvent keyEvent) {
        return false;
    }

    default boolean isLaunchEditMode() {
        return false;
    }

    default boolean isPanelFullyCollapsed() {
        return false;
    }

    default void onCoverSwitchStateChanged(boolean z) {
    }

    default void onTrimMemory(int i) {
    }

    default void postSetOccluded(boolean z) {
    }

    default void requestUnlock(String str) {
    }

    default void setShowSwipeBouncer(boolean z) {
    }

    default void updateBouncerNavigationBar(boolean z) {
    }

    default void folderOpenAndDismiss() {
    }

    default void onDismissCancelled() {
    }

    default void onWakeAndUnlock() {
    }

    default void prepareSafeUIBouncer() {
    }

    default void resetKeyguardDismissAction() {
    }

    default void setLaunchEditMode() {
    }

    default void updateDlsNaviBarVisibility() {
    }

    default void updateKeyguardUnlocking() {
    }

    default void updateLastCoverClosed() {
    }

    default void updateLastKeyguardUnlocking() {
    }

    default void updateLockoutWarningMessage() {
    }

    default void sendKeyguardViewState(boolean z, boolean z2, boolean z3) {
    }

    default void dismissWithAction(ActivityStarter.OnDismissAction onDismissAction, Runnable runnable, boolean z, boolean z2, boolean z3) {
    }

    default void registerCentralSurfaces(CentralSurfaces centralSurfaces, ShadeSurface shadeSurface, ShadeExpansionStateManager shadeExpansionStateManager, BiometricUnlockController biometricUnlockController, ViewGroup viewGroup, NotificationStackScrollLayout notificationStackScrollLayout, KeyguardBypassController keyguardBypassController) {
    }
}
