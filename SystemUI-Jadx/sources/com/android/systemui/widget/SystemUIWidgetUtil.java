package com.android.systemui.widget;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.wallpaper.WallpaperUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemUIWidgetUtil {
    public static long convertFlag(String str) {
        if (str == null) {
            return 512L;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2070196511:
                if (str.equals("statusbar")) {
                    c = 0;
                    break;
                }
                break;
            case -1383228885:
                if (str.equals("bottom")) {
                    c = 1;
                    break;
                }
                break;
            case -1332194002:
                if (str.equals("background")) {
                    c = 2;
                    break;
                }
                break;
            case 108104:
                if (str.equals("mid")) {
                    c = 3;
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c = 4;
                    break;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    c = 5;
                    break;
                }
                break;
            case 1730385581:
                if (str.equals("navibar")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 16L;
            case 1:
                return 128L;
            case 2:
                return 512L;
            case 3:
                return 64L;
            case 4:
                return 32L;
            case 5:
                return 0L;
            case 6:
                return 256L;
            default:
                return -1L;
        }
    }

    public static boolean needsBlackComponent(Context context, long j, boolean z) {
        if (!z && WallpaperUtils.mSettingsHelper.isOpenThemeLockWallpaper()) {
            return context.getResources().getBoolean(R.bool.theme_use_clock_dark_as_default);
        }
        return WallpaperUtils.isWhiteKeyguardWallpaper(j);
    }

    public static void registerSystemUIWidgetCallback(SystemUIWidgetCallback systemUIWidgetCallback, long j) {
        if (j == 0) {
            return;
        }
        if (j != -1) {
            j |= 1;
        }
        if ((32 & j) != 0) {
            j |= 2;
        }
        if (WallpaperEventNotifier.getInstance() != null) {
            WallpaperEventNotifier.getInstance().registerCallback(false, systemUIWidgetCallback, j);
        }
    }
}
