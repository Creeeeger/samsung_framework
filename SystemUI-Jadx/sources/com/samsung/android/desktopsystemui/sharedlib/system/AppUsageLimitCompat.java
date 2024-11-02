package com.samsung.android.desktopsystemui.sharedlib.system;

import android.content.pm.LauncherApps;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AppUsageLimitCompat {
    private final LauncherApps.AppUsageLimit mWrapper;

    public AppUsageLimitCompat(LauncherApps.AppUsageLimit appUsageLimit) {
        this.mWrapper = appUsageLimit;
    }

    public long getTotalUsageLimit() {
        return this.mWrapper.getTotalUsageLimit();
    }

    public long getUsageRemaining() {
        return this.mWrapper.getUsageRemaining();
    }
}
