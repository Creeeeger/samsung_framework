package com.samsung.android.desktopsystemui.sharedlib.recents.model;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class RunningTaskInfoCompat {
    private ActivityManager.RunningTaskInfo mInfo;

    public RunningTaskInfoCompat(ActivityManager.RunningTaskInfo runningTaskInfo) {
        this.mInfo = runningTaskInfo;
    }

    public Intent getBaseIntent() {
        return this.mInfo.baseIntent;
    }

    public int getDisplayId() {
        return this.mInfo.displayId;
    }

    public long getLastActiveTime() {
        return this.mInfo.lastActiveTime;
    }

    public long getLastGainFocusTime() {
        return this.mInfo.lastGainFocusTime;
    }

    public ComponentName getSourceComponent() {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mInfo;
        ComponentName componentName = runningTaskInfo.origActivity;
        if (componentName == null) {
            return runningTaskInfo.realActivity;
        }
        return componentName;
    }

    public int getTaskId() {
        return this.mInfo.taskId;
    }

    public int getUserId() {
        return this.mInfo.userId;
    }

    public int getWindowingMode() {
        return this.mInfo.configuration.windowConfiguration.getWindowingMode();
    }

    public boolean isRunning() {
        return this.mInfo.isRunning;
    }
}
