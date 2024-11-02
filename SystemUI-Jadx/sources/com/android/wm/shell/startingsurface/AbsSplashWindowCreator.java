package com.android.wm.shell.startingsurface;

import android.R;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.hardware.display.DisplayManager;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda0;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.startingsurface.StartingSurfaceDrawer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class AbsSplashWindowCreator {
    public final Context mContext;
    public final DisplayManager mDisplayManager;
    public final ShellExecutor mSplashScreenExecutor;
    public final SplashscreenContentDrawer mSplashscreenContentDrawer;
    public final StartingSurfaceDrawer.StartingWindowRecordManager mStartingWindowRecordManager;
    public CentralSurfacesImpl$$ExternalSyntheticLambda0 mSysuiProxy;

    public AbsSplashWindowCreator(SplashscreenContentDrawer splashscreenContentDrawer, Context context, ShellExecutor shellExecutor, DisplayManager displayManager, StartingSurfaceDrawer.StartingWindowRecordManager startingWindowRecordManager) {
        this.mSplashscreenContentDrawer = splashscreenContentDrawer;
        this.mContext = context;
        this.mSplashScreenExecutor = shellExecutor;
        this.mDisplayManager = displayManager;
        this.mStartingWindowRecordManager = startingWindowRecordManager;
    }

    public static int getSplashScreenTheme(int i, ActivityInfo activityInfo) {
        if (i == 0) {
            if (activityInfo.getThemeResource() != 0) {
                return activityInfo.getThemeResource();
            }
            return R.style.Theme.DeviceDefault.DayNight;
        }
        return i;
    }
}
