package com.android.wm.shell.common.split;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Intent;
import com.android.internal.util.ArrayUtils;
import com.android.wm.shell.ShellTaskOrganizer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitScreenUtils {
    public static String getPackageName(Intent intent) {
        if (intent == null || intent.getComponent() == null) {
            return null;
        }
        return intent.getComponent().getPackageName();
    }

    public static boolean isValidToSplit(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo != null && runningTaskInfo.supportsMultiWindow && ArrayUtils.contains(SplitScreenConstants.CONTROLLED_ACTIVITY_TYPES, runningTaskInfo.getActivityType()) && ArrayUtils.contains(SplitScreenConstants.CONTROLLED_WINDOWING_MODES, runningTaskInfo.getWindowingMode())) {
            return true;
        }
        return false;
    }

    public static int reverseSplitPosition(int i) {
        if (i == 0) {
            return 1;
        }
        if (i != 1) {
            return -1;
        }
        return 0;
    }

    public static boolean samePackage(int i, int i2, String str, String str2) {
        if (str != null && str.equals(str2) && i == i2) {
            return true;
        }
        return false;
    }

    public static String getPackageName(PendingIntent pendingIntent) {
        if (pendingIntent == null || pendingIntent.getIntent() == null) {
            return null;
        }
        return getPackageName(pendingIntent.getIntent());
    }

    public static String getPackageName(int i, ShellTaskOrganizer shellTaskOrganizer) {
        ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.getRunningTaskInfo(i);
        if (runningTaskInfo != null) {
            return getPackageName(runningTaskInfo.baseIntent);
        }
        return null;
    }
}
