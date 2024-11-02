package com.android.wm.shell.draganddrop;

import android.content.Intent;
import android.graphics.drawable.Drawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AppInfo {
    public final Drawable mIcon;
    public final Intent mIntent;
    public final boolean mIsDropResolver;

    public AppInfo(Intent intent, Drawable drawable, boolean z) {
        this.mIntent = intent;
        this.mIcon = drawable;
        this.mIsDropResolver = z;
    }
}
