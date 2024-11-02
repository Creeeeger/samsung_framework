package com.samsung.android.desktopsystemui.sharedlib.system;

import android.content.pm.ApplicationInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ApplicationInfoCompat {
    private final ApplicationInfo mWrapper;

    public ApplicationInfoCompat(ApplicationInfo applicationInfo) {
        this.mWrapper = applicationInfo;
    }

    public boolean isInstantApp() {
        return this.mWrapper.isInstantApp();
    }
}
