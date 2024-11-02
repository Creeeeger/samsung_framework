package com.android.systemui.keyguardimage;

import android.content.Context;
import com.android.systemui.Dependency;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.CoverWallpaperController;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperChangeObserver;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WallpaperImageProviderCreator extends WallpaperImageCreator {
    public WallpaperImageProviderCreator(Context context) {
        super("WallpaperImageCreator", context, (SettingsHelper) Dependency.get(SettingsHelper.class), (PluginWallpaperManager) Dependency.get(PluginWallpaperManager.class), CoverWallpaperController.sInstance, KeyguardWallpaperController.sController, new WallpaperChangeObserver());
    }
}
