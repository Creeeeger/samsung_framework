package com.android.systemui.statusbar.phone;

import android.app.SemWallpaperColors;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.widget.SystemUIWidgetCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardStatusBarWallpaperHelper implements WakefulnessLifecycle.Observer, SystemUIWidgetCallback {
    public int fontColorFromWallPaper;
    public int fontColorType;
    public float intensity;
    public final KeyguardWallpaper keyguardWallpaper;
    public KeyguardStatusBarViewController$$ExternalSyntheticLambda2 listener;
    public final SettingsHelper settingsHelper;
    public final WakefulnessLifecycle wakefulnessLifecycle;
    public final WallpaperEventNotifier wallpaperEventNotifier;

    public KeyguardStatusBarWallpaperHelper(WakefulnessLifecycle wakefulnessLifecycle, WallpaperEventNotifier wallpaperEventNotifier, SettingsHelper settingsHelper, KeyguardWallpaper keyguardWallpaper) {
        this.wakefulnessLifecycle = wakefulnessLifecycle;
        this.wallpaperEventNotifier = wallpaperEventNotifier;
        this.settingsHelper = settingsHelper;
        this.keyguardWallpaper = keyguardWallpaper;
    }

    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
    public final void onFinishedWakingUp() {
        updateIconsAndTextColors();
    }

    public final void updateIconsAndTextColors() {
        int i;
        float f;
        this.fontColorType = 0;
        SemWallpaperColors.Item hint = ((KeyguardWallpaperController) this.keyguardWallpaper).getHint(16L, false);
        int fontColor = hint.getFontColor();
        this.fontColorType = fontColor;
        int i2 = 1;
        if (fontColor != 1) {
            if (fontColor != 2) {
                i = -301989889;
            } else {
                i = hint.getFontColorRgb();
            }
        } else {
            i = DarkIconDispatcher.DEFAULT_DARK_ICON_TINT;
        }
        this.fontColorFromWallPaper = i;
        if (this.fontColorType == 1) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.intensity = f;
        KeyguardStatusBarViewController$$ExternalSyntheticLambda2 keyguardStatusBarViewController$$ExternalSyntheticLambda2 = this.listener;
        if (keyguardStatusBarViewController$$ExternalSyntheticLambda2 != null) {
            KeyguardStatusBarViewController keyguardStatusBarViewController = keyguardStatusBarViewController$$ExternalSyntheticLambda2.f$0;
            keyguardStatusBarViewController.getClass();
            keyguardStatusBarViewController.mMainExecutor.execute(new KeyguardStatusBarViewController$$ExternalSyntheticLambda3(keyguardStatusBarViewController, i2));
        }
    }

    @Override // com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        boolean z;
        if ((j & 16) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && !this.settingsHelper.isOpenThemeLockWallpaper()) {
            return;
        }
        updateIconsAndTextColors();
    }
}
