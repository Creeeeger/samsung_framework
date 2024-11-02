package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.ActivityManager;
import android.content.ComponentName;
import com.samsung.android.desktopsystemui.sharedlib.recents.model.ThumbnailData;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class TaskStackChangeListener {
    public void onActivityLaunchOnSecondaryDisplayFailed() {
    }

    public void onActivityLaunchOnSecondaryDisplayRerouted() {
    }

    public void onTaskMovedToFront(int i) {
    }

    public boolean onTaskSnapshotChanged(int i, ThumbnailData thumbnailData) {
        return false;
    }

    public void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo) {
        onActivityLaunchOnSecondaryDisplayFailed();
    }

    public void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo) {
        onActivityLaunchOnSecondaryDisplayRerouted();
    }

    public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
        onTaskMovedToFront(runningTaskInfo.taskId);
    }

    public void onActivityRotation(int i) {
    }

    public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    public void onLockTaskModeChanged(int i) {
    }

    public void onRecentTaskListFrozenChanged(boolean z) {
    }

    public void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    public void onTaskProfileLocked(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    public void onTaskRemoved(int i) {
    }

    public void onActivityDismissingDockedStack() {
    }

    public void onActivityUnpinned() {
    }

    public void onRecentTaskListUpdated() {
    }

    public void onTaskStackChanged() {
    }

    public void onTaskStackChangedBackground() {
    }

    public void onActivityRequestedOrientationChanged(int i, int i2) {
    }

    public void onTaskCreated(int i, ComponentName componentName) {
    }

    public void onTaskDisplayChanged(int i, int i2) {
    }

    public void onTaskFocusChanged(int i, boolean z) {
    }

    public void onActivityForcedResizable(String str, int i, int i2) {
    }

    public void onActivityPinned(String str, int i, int i2, int i3) {
    }

    public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) {
    }
}
