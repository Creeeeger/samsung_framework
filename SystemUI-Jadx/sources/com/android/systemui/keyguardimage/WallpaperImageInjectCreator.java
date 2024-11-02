package com.android.systemui.keyguardimage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.util.Log;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.keyguardimage.ImageOptionCreator;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.CoverWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperChangeObserver;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.samsung.android.wallpaper.utils.SemWallpaperProperties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WallpaperImageInjectCreator extends WallpaperImageCreator {
    public WallpaperImageInjectCreator(Context context, SettingsHelper settingsHelper, PluginWallpaperManager pluginWallpaperManager, CoverWallpaper coverWallpaper, KeyguardWallpaper keyguardWallpaper) {
        super("WallpaperImageInjectCreator", context, settingsHelper, pluginWallpaperManager, coverWallpaper, keyguardWallpaper, new WallpaperChangeObserver());
    }

    @Override // com.android.systemui.keyguardimage.WallpaperImageCreator, com.android.systemui.keyguardimage.ImageCreator
    public final Bitmap createImage(ImageOptionCreator.ImageOption imageOption, Point point) {
        int i;
        boolean isLiveWallpaperEnabled = WallpaperUtils.isLiveWallpaperEnabled();
        KeyguardWallpaperController keyguardWallpaperController = (KeyguardWallpaperController) this.mKeyguardWallpaper;
        int wallpaperViewType = keyguardWallpaperController.getWallpaperViewType();
        String str = this.TAG;
        Log.i(str, "createImage, isLiveWallpaperEnabled = " + isLiveWallpaperEnabled + " , wallpaperViewType = " + wallpaperViewType);
        Context context = this.mContext;
        if (!isLiveWallpaperEnabled && wallpaperViewType != 7) {
            if (wallpaperViewType != 8) {
                Bitmap wallpaperBitmap = keyguardWallpaperController.getWallpaperBitmap();
                boolean z = true;
                if (wallpaperBitmap != null && context != null && context.getResources() != null) {
                    int i2 = context.getResources().getConfiguration().orientation;
                    if (wallpaperBitmap.getHeight() >= wallpaperBitmap.getWidth()) {
                        i = 1;
                    } else {
                        i = 2;
                    }
                    Log.i(str, "isBitmapAndScreenOrientationSame, (w = " + wallpaperBitmap.getWidth() + " , h = " + wallpaperBitmap.getHeight() + ") orientation = " + i2);
                    if (i2 != i) {
                        z = false;
                    }
                }
                if (z) {
                    return wallpaperBitmap;
                }
                Log.w(str, "createImage failed");
                return null;
            }
        } else {
            int i3 = WallpaperUtils.sCurrentWhich;
            if ((i3 & 60) == 0) {
                i3 |= 4;
            }
            if (new SemWallpaperProperties(context, i3, KeyguardUpdateMonitor.getCurrentUser()).isFixedOrientationLiveWallpaper()) {
                imageOption.rotation = context.getDisplay().getRotation();
            }
        }
        return super.createImage(imageOption, point);
    }
}
