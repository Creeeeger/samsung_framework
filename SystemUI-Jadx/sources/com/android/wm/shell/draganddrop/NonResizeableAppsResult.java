package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NonResizeableAppsResult implements AppResult {
    @Override // com.android.wm.shell.draganddrop.AppResult
    public final String getContentType() {
        return null;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final ApplicationInfo getDragAppApplicationInfo() {
        throw new UnsupportedOperationException("getDragAppApplicationInfo not implemented by NonResizeableAppsResult");
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean hasResizableResolveInfo() {
        return false;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean hasResolveInfoInFullscreenOnly(VisibleTasks visibleTasks) {
        throw new UnsupportedOperationException("hasResolveInfoInFullscreenOnly not implemented by NonResizeableAppsResult");
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final boolean isAlreadyRunningSingleInstanceTask(VisibleTasks visibleTasks) {
        throw new UnsupportedOperationException("isAlreadyRunningSingleInstanceTask not implemented by NonResizeableAppsResult");
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final AppInfo makeExecutableApp(Context context, int i, VisibleTasks visibleTasks) {
        throw new UnsupportedOperationException("makeExecutableApp not implemented by NonResizeableAppsResult");
    }
}
