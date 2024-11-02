package com.android.systemui.aod;

import android.app.WallpaperManager;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.Log;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.view.SemWindowManager;
import dagger.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AODAmbientWallpaperHelper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean isFolded = SemWindowManager.getInstance().isFolded();
    public boolean isMainWonderLandWallpaper;
    public boolean isSubWonderLandWallpaper;
    public final Lazy keyguardViewMediatorLazy;
    public final SettingsHelper settingsHelper;
    public final Lazy statusBarWindowControllerLazy;
    public final UserTracker userTracker;
    public final WallpaperManager wallpaperManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public AODAmbientWallpaperHelper(SettingsHelper settingsHelper, Lazy lazy, WallpaperManager wallpaperManager, UserTracker userTracker, WakefulnessLifecycle wakefulnessLifecycle, Lazy lazy2) {
        this.settingsHelper = settingsHelper;
        this.keyguardViewMediatorLazy = lazy;
        this.wallpaperManager = wallpaperManager;
        this.userTracker = userTracker;
        this.statusBarWindowControllerLazy = lazy2;
        wakefulnessLifecycle.addObserver(new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.aod.AODAmbientWallpaperHelper.1
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedGoingToSleep() {
                AODAmbientWallpaperHelper aODAmbientWallpaperHelper = AODAmbientWallpaperHelper.this;
                boolean isAODAmbientWallpaperMode = aODAmbientWallpaperHelper.isAODAmbientWallpaperMode();
                Log.d("AODAmbientWallpaperHelper", "onStartedGoingToSleep isAODAmbientWallpaperMode=" + isAODAmbientWallpaperMode);
                if (isAODAmbientWallpaperMode) {
                    aODAmbientWallpaperHelper.setAODAmbientWallpaperState(false);
                }
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                int i = AODAmbientWallpaperHelper.$r8$clinit;
                AODAmbientWallpaperHelper aODAmbientWallpaperHelper = AODAmbientWallpaperHelper.this;
                aODAmbientWallpaperHelper.getClass();
                Log.d("AODAmbientWallpaperHelper", "onStartedWakingUp");
                aODAmbientWallpaperHelper.setAODAmbientWallpaperState(true);
            }
        });
    }

    public final boolean isAODAmbientWallpaperMode() {
        if (!isAODFullScreenMode()) {
            if (!(this.isSubWonderLandWallpaper | this.isMainWonderLandWallpaper)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isAODFullScreenMode() {
        boolean z;
        boolean z2 = LsRune.AOD_FULLSCREEN;
        if (!z2) {
            return false;
        }
        SettingsHelper settingsHelper = this.settingsHelper;
        if (!settingsHelper.isAODEnabled()) {
            return false;
        }
        if (z2 && settingsHelper.mItemLists.get("aod_show_lockscreen_wallpaper").getIntValue() != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        if (LsRune.AOD_SUB_FULLSCREEN && !this.isFolded) {
            return false;
        }
        return true;
    }

    public final boolean isWonderLandAmbientWallpaper() {
        boolean z = this.isFolded;
        boolean z2 = this.isMainWonderLandWallpaper;
        ActionBarContextView$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("isWonderLandAmbientWallpaper: isFolded=", z, ", isMainWonderLandWallpaper=", z2, ", isSubWonderLandWallpaper="), this.isSubWonderLandWallpaper, "AODAmbientWallpaperHelper");
        if (LsRune.AOD_SUB_DISPLAY_LOCK) {
            if (this.isFolded) {
                return this.isSubWonderLandWallpaper;
            }
            return this.isMainWonderLandWallpaper;
        }
        return this.isMainWonderLandWallpaper;
    }

    public final void setAODAmbientWallpaperState(boolean z) {
        StatusBarWindowController statusBarWindowController = (StatusBarWindowController) this.statusBarWindowControllerLazy.get();
        StatusBarWindowController.State state = statusBarWindowController.mCurrentState;
        if (state.mIsAODAmbientWallpaperWakingUp != z) {
            state.mIsAODAmbientWallpaperWakingUp = z;
            android.util.Log.d("StatusBarWindowController", "setAODAmbientWallpaperState: wakingUp=" + z);
            statusBarWindowController.apply(state, false);
        }
    }
}
