package com.android.systemui.plugins.keyguardstatusview;

import com.android.systemui.plugins.annotations.SupportVersionChecker;
import com.android.systemui.plugins.annotations.VersionCheck;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@SupportVersionChecker
/* loaded from: classes2.dex */
public interface PluginKeyguardSidePadding {
    int getClockSidePadding();

    @VersionCheck(version = 1023)
    int getClockSidePadding(boolean z);

    int getShortCutSidePadding();

    @VersionCheck(version = 1022)
    int getShortCutSidePadding(boolean z);

    int getSidePaddingWhenIndisplayFP();

    int getTabletClockSidePadding(int i, int i2, boolean z);

    boolean needToSidePaddingForClock();
}
