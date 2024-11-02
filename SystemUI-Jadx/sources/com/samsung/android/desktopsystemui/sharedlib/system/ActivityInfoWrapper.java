package com.samsung.android.desktopsystemui.sharedlib.system;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ActivityInfoWrapper {
    private static final ActivityInfoWrapper sInstance = new ActivityInfoWrapper();

    public static ActivityInfoWrapper getInstance() {
        return sInstance;
    }

    public ComponentName getComponentName(ActivityInfo activityInfo) {
        return activityInfo.getComponentName();
    }
}
