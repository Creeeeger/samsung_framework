package com.android.systemui.pluginlock.listener;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.os.Bundle;
import com.samsung.systemui.splugins.pluginlock.PluginLock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginLockListener$State {
    default boolean isNoUnlockNeed(String str) {
        return false;
    }

    default boolean isSecure() {
        return false;
    }

    default Bundle onUiInfoRequested(boolean z) {
        return null;
    }

    default void onClockChanged(Bundle bundle) {
    }

    default void onLockStarEnabled(boolean z) {
    }

    default void onMusicChanged(Bundle bundle) {
    }

    default void onUnNeedLockAppStarted(ComponentName componentName) {
    }

    default void onViewModeChanged(int i) {
    }

    default void setDynamicLockData(String str) {
    }

    default void setPluginLock(PluginLock pluginLock) {
    }

    default void startPendingIntentDismissingKeyguard(PendingIntent pendingIntent) {
    }

    default void updateDynamicLockData(String str) {
    }

    default void goToLockedShade() {
    }

    default void makeExpandedInvisible() {
    }

    default void onPluginLockReset() {
    }

    default void onUserActivity() {
    }

    default void resetDynamicLock() {
    }
}
