package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface AppResult {
    String getContentType();

    ApplicationInfo getDragAppApplicationInfo();

    boolean hasResizableResolveInfo();

    boolean hasResolveInfoInFullscreenOnly(VisibleTasks visibleTasks);

    boolean isAlreadyRunningSingleInstanceTask(VisibleTasks visibleTasks);

    AppInfo makeExecutableApp(Context context, int i, VisibleTasks visibleTasks);
}
