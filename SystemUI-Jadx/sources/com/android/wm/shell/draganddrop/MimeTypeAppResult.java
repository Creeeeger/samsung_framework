package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import com.android.wm.shell.draganddrop.ExecutableAppHolder;
import com.samsung.android.multiwindow.MultiWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MimeTypeAppResult extends BaseAppResult {
    public final ActivityInfo mActivityInfo;

    public MimeTypeAppResult(ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList, ExecutableAppHolder.MultiInstanceAllowList multiInstanceAllowList, ActivityInfo activityInfo, String str) {
        super(multiInstanceBlockList, multiInstanceAllowList, str);
        this.mActivityInfo = activityInfo;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final ApplicationInfo getDragAppApplicationInfo() {
        ActivityInfo activityInfo = this.mActivityInfo;
        if (activityInfo == null) {
            return null;
        }
        return activityInfo.applicationInfo;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean hasResizableResolveInfo() {
        ActivityInfo activityInfo = this.mActivityInfo;
        if (activityInfo == null || (MultiWindowManager.getInstance().getSupportedMultiWindowModes(activityInfo) & 3) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean hasResolveInfoInFullscreenOnly(VisibleTasks visibleTasks) {
        ActivityInfo activityInfo = this.mActivityInfo;
        if (activityInfo == null) {
            return false;
        }
        return isVisibleSingleInstance(visibleTasks.getFullscreenTasks(), activityInfo);
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean isAlreadyRunningSingleInstanceTask(VisibleTasks visibleTasks) {
        ActivityInfo activityInfo = this.mActivityInfo;
        if (activityInfo == null) {
            return false;
        }
        return isVisibleSingleInstance(visibleTasks.getVisibleTasks(), activityInfo);
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final AppInfo makeExecutableApp(Context context, int i, VisibleTasks visibleTasks) {
        ActivityInfo activityInfo = this.mActivityInfo;
        if (activityInfo == null) {
            return new AppInfo(null, null, false);
        }
        if (isVisibleSingleInstance(visibleTasks.getTasksException(i), activityInfo)) {
            return null;
        }
        return new AppInfo(null, null, false);
    }
}
