package com.samsung.android.desktopsystemui.sharedlib.statusbar;

import android.graphics.Rect;
import android.view.KeyEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface CommandQueueCallbacks {
    default void animateExpandSettingsPanel(String str) {
    }

    default void handleSystemKey(KeyEvent keyEvent) {
    }

    default void onFocusedDisplayChanged(int i) {
    }

    default void sendKeyEventToDesktopTaskbar(KeyEvent keyEvent) {
    }

    default void showRecentApps(boolean z) {
    }

    default void toggleKeyboardShortcutsMenu(int i) {
    }

    default void animateExpandNotificationsPanel() {
    }

    default void toggleRecentApps() {
    }

    default void abortTransient(int i, int i2) {
    }

    default void animateCollapsePanels(int i, boolean z) {
    }

    default void hideRecentApps(boolean z, boolean z2) {
    }

    default void disable(int i, int i2, int i3) {
    }

    default void setWindowState(int i, int i2, int i3) {
    }

    default void showTransient(int i, int i2, Boolean bool) {
    }

    default void onSystemBarAttributesChanged(int i, int i2, Rect rect, Boolean bool, int i3, Boolean bool2, String str) {
    }
}
