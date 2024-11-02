package com.android.systemui.wallpaper.utils;

import android.app.WallpaperManager;
import android.content.Context;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.wallpaper.WallpaperUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WhichChecker {
    public static int convertDisplayIdToMode(int i, Context context) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (LsRune.COVER_VIRTUAL_DISPLAY) {
                        WallpaperManager.getInstance(context);
                        if (WallpaperManager.isVirtualWallpaperDisplay(context, i)) {
                            return 32;
                        }
                    }
                    NestedScrollView$$ExternalSyntheticOutline0.m("convertDisplayIdToMode: unexpected display id. id=", i, "WhichChecker");
                    return -1;
                }
                return 8;
            }
            return 16;
        }
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            return WallpaperUtils.getFolderStateBasedWhich(0, context);
        }
        return 4;
    }

    public static boolean isFlagEnabled(int i, int i2) {
        if ((i & i2) == i2) {
            return true;
        }
        return false;
    }

    public static boolean isSubDisplay(int i) {
        return isFlagEnabled(i, 16);
    }

    public static boolean isWatchFace(int i) {
        if (!LsRune.WALLPAPER_SUB_WATCHFACE || !isFlagEnabled(i, 1) || !isFlagEnabled(i, 16)) {
            return false;
        }
        return true;
    }
}
