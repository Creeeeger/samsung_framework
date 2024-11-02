package com.samsung.android.desktopsystemui.sharedlib.system;

import android.content.pm.LauncherApps;
import android.os.UserHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class LauncherAppsCompat {
    private final LauncherApps mWrapper;

    public LauncherAppsCompat(LauncherApps launcherApps) {
        this.mWrapper = launcherApps;
    }

    public AppUsageLimitCompat getAppUsageLimit(String str, UserHandle userHandle) {
        LauncherApps.AppUsageLimit appUsageLimit = this.mWrapper.getAppUsageLimit(str, userHandle);
        if (appUsageLimit != null) {
            return new AppUsageLimitCompat(appUsageLimit);
        }
        return null;
    }
}
