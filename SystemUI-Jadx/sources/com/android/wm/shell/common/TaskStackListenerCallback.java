package com.android.wm.shell.common;

import android.app.ActivityManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface TaskStackListenerCallback {
    default void onActivityDismissingSplitTask(String str) {
    }

    default void onTaskMovedToFront(int i) {
    }

    default void onActivityUnpinned() {
    }

    default void onRecentTaskListUpdated() {
    }

    default void onTaskCreated() {
    }

    default void onTaskStackChanged() {
    }

    default void onActivityPinned(String str, int i) {
    }

    default void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z) {
    }

    default void onActivityForcedResizable(String str, int i, int i2) {
    }
}
