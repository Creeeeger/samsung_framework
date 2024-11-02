package com.android.wm.shell.windowdecor.viewholder;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Color;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class DesktopModeWindowDecorationViewHolder {
    public final Context context;

    public DesktopModeWindowDecorationViewHolder(View view) {
        this.context = view.getContext();
    }

    public static boolean shouldUseLightCaptionColors(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (Color.valueOf(runningTaskInfo.taskDescription.getStatusBarColor()).luminance() < 0.5d) {
            return true;
        }
        return false;
    }

    public abstract void bindData(ActivityManager.RunningTaskInfo runningTaskInfo);
}
