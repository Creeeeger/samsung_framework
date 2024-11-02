package com.samsung.android.desktopsystemui.sharedlib.recents.model;

import android.app.ActivityManager;
import android.app.PictureInPictureParams;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TaskInfoCompat {
    public static int getActivityType(TaskInfo taskInfo) {
        return taskInfo.configuration.windowConfiguration.getActivityType();
    }

    public static Rect getPipSourceRectHint(PictureInPictureParams pictureInPictureParams) {
        return pictureInPictureParams.getSourceRectHint();
    }

    public static ActivityManager.TaskDescription getTaskDescription(TaskInfo taskInfo) {
        return taskInfo.taskDescription;
    }

    public static ComponentName getTopActivity(TaskInfo taskInfo) {
        return taskInfo.topActivity;
    }

    public static ActivityInfo getTopActivityInfo(TaskInfo taskInfo) {
        return taskInfo.topActivityInfo;
    }

    public static int getUserId(TaskInfo taskInfo) {
        return taskInfo.userId;
    }

    public static Rect getWindowConfigurationBounds(TaskInfo taskInfo) {
        return taskInfo.configuration.windowConfiguration.getBounds();
    }

    public static int getWindowingMode(TaskInfo taskInfo) {
        return taskInfo.configuration.windowConfiguration.getWindowingMode();
    }

    public static boolean isAutoEnterPipEnabled(PictureInPictureParams pictureInPictureParams) {
        return pictureInPictureParams.isAutoEnterEnabled();
    }

    public static boolean isTopTransparentActivity(TaskInfo taskInfo) {
        return false;
    }

    public static boolean supportsSplitScreenMultiWindow(TaskInfo taskInfo) {
        return false;
    }
}
