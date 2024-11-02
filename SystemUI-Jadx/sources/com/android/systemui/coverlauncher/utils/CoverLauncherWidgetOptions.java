package com.android.systemui.coverlauncher.utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverLauncherWidgetOptions {
    public String mAppIconPkgOption;
    public final int mType;
    public int mUiModeOption;
    public boolean mVisibleOption;

    public CoverLauncherWidgetOptions(boolean z, String str, int i, int i2) {
        this.mVisibleOption = z;
        this.mAppIconPkgOption = str;
        this.mUiModeOption = i;
        this.mType = i2;
    }
}
