package com.android.systemui.edgelighting.data;

import android.graphics.drawable.Drawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppInfo {
    public final String appName;
    public final String packageName;
    public final int priority;

    public AppInfo(String str, String str2, Drawable drawable, int i, boolean z) {
        this.appName = str;
        this.packageName = str2;
        this.priority = i;
    }
}
