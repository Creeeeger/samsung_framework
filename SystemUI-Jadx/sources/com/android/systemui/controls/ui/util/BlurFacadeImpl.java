package com.android.systemui.controls.ui.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.android.systemui.BasicRune;
import com.android.systemui.controls.util.ControlsRuneWrapper;
import com.android.systemui.controls.util.ControlsRuneWrapperImpl;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;
import com.samsung.android.app.SemMultiWindowManager;
import com.samsung.android.view.SemWindowManager;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BlurFacadeImpl implements BlurFacade {
    public final ControlsRuneWrapper controlsRuneWrapper;
    public final KeyguardWallpaper keyguardWallpaper;
    public final SemMultiWindowManager multiWindowManager = new SemMultiWindowManager();
    public final SettingsHelper settingsHelper;
    public final StatusBarStateController statusBarStateController;

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

    public BlurFacadeImpl(ControlsRuneWrapper controlsRuneWrapper, KeyguardWallpaper keyguardWallpaper, StatusBarStateController statusBarStateController, SettingsHelper settingsHelper) {
        this.controlsRuneWrapper = controlsRuneWrapper;
        this.keyguardWallpaper = keyguardWallpaper;
        this.statusBarStateController = statusBarStateController;
        this.settingsHelper = settingsHelper;
    }

    public static void addView(ViewGroup viewGroup, String str, int i, int i2) {
        View findViewWithTag = viewGroup.findViewWithTag(str);
        if (findViewWithTag != null) {
            Log.d("BlurFacadeImpl", str.concat(" is already done"));
        } else {
            findViewWithTag = new View(viewGroup.getContext());
            findViewWithTag.setTag(str);
            findViewWithTag.setBackgroundColor(Color.rgb((i >> 16) & 255, (i >> 8) & 255, i & 255));
            findViewWithTag.setAlpha(((i >> 24) & 255) / 255.0f);
        }
        viewGroup.addView(findViewWithTag, i2);
    }

    public final void removeCustomBackgroundView(ViewGroup viewGroup) {
        View findViewWithTag;
        View findViewWithTag2 = viewGroup.findViewWithTag("SolidColorViewTag");
        if (findViewWithTag2 != null) {
            viewGroup.removeView(findViewWithTag2);
        }
        View findViewWithTag3 = viewGroup.findViewWithTag("DimViewTag");
        if (findViewWithTag3 != null) {
            viewGroup.removeView(findViewWithTag3);
        }
        ((ControlsRuneWrapperImpl) this.controlsRuneWrapper).getClass();
        if (BasicRune.CONTROLS_CAPTURED_BLUR && (findViewWithTag = viewGroup.findViewWithTag("BlurViewTag")) != null) {
            viewGroup.removeView(findViewWithTag);
        }
    }

    public final Bitmap takeScreenshot$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Context context) {
        Bitmap bitmap;
        if (this.statusBarStateController.getState() == 1 && !this.settingsHelper.isUltraPowerSavingMode()) {
            KeyguardWallpaperController keyguardWallpaperController = (KeyguardWallpaperController) this.keyguardWallpaper;
            SystemUIWallpaperBase systemUIWallpaperBase = keyguardWallpaperController.mWallpaperView;
            if (systemUIWallpaperBase != null) {
                bitmap = systemUIWallpaperBase.getCapturedWallpaper();
            } else {
                bitmap = null;
            }
            if (bitmap == null) {
                Log.e("BlurFacadeImpl", "Try to get wallpaper bitmap");
                bitmap = keyguardWallpaperController.getWallpaperBitmap();
                if (bitmap == null) {
                    Log.e("BlurFacadeImpl", "Wallpaper capture failed.");
                    return null;
                }
            }
            bitmap.getColor(bitmap.getWidth() / 2, bitmap.getHeight() / 2).toArgb();
            return Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 5, bitmap.getHeight() / 5, true);
        }
        Point point = new Point();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        defaultDisplay.getRealSize(point);
        Bitmap screenshot = SemWindowManager.getInstance().screenshot(defaultDisplay.getDisplayId(), 2000, false, new Rect(), point.x / 5, point.y / 5, false, 0, true);
        if (screenshot == null) {
            Log.d("BlurFacadeImpl", "bitmap is null!!");
            return null;
        }
        return screenshot;
    }
}
