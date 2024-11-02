package com.android.systemui.wallpaper.colors;

import android.content.Context;
import android.util.SparseArray;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardWallpaperColors {
    public static final int NUM_SEPARATED_AREA;
    public static final long[] UPDATE_FLAGS;
    public final SparseArray mSemWallpaperColors = new SparseArray();
    public final SparseArray mSemWallpaperColorsCover = new SparseArray();
    public final SettingsHelper mSettingsHelper;
    public static final long[] UPDATE_FLAGS_SHADOW = {4096, 8192, 16384, 32768, 65536, 131072};
    public static final long[] UPDATE_FLAGS_ADAPTIVE_CONTRAST = {1048576, 2097152, 4194304, 8388608, 16777216, 33554432};
    public static final String[] DEBUG_FLAG_NAMES = {"STATUSBAR ", "BODY_TOP ", "BODY_MID ", "BODY_BOTTOM ", "NAVIBAR ", "BACKGROUND "};

    static {
        long[] jArr = {16, 32, 64, 128, 256, 512};
        UPDATE_FLAGS = jArr;
        NUM_SEPARATED_AREA = jArr.length;
    }

    public KeyguardWallpaperColors(Context context, SettingsHelper settingsHelper) {
        this.mSettingsHelper = settingsHelper;
    }

    public static String getChangeFlagsString(long j) {
        StringBuilder sb = new StringBuilder("[ ");
        if ((1 & j) != 0) {
            sb.append("THEME ");
        }
        sb.append("| ");
        if ((1024 & j) != 0) {
            sb.append("COLOR_THEME ");
        }
        sb.append("| ");
        if ((2 & j) != 0) {
            sb.append("ADAPTIVE ");
        }
        sb.append("| ");
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            if ((UPDATE_FLAGS[i2] & j) != 0) {
                sb.append(DEBUG_FLAG_NAMES[i2]);
            }
        }
        sb.append("| ");
        while (true) {
            if (i >= 6) {
                break;
            }
            if ((UPDATE_FLAGS_SHADOW[i] & j) != 0) {
                sb.append("SHADOW ");
                break;
            }
            i++;
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long checkUpdates(com.android.systemui.wallpaper.colors.ColorData r18, com.android.systemui.wallpaper.colors.ColorData r19) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.colors.KeyguardWallpaperColors.checkUpdates(com.android.systemui.wallpaper.colors.ColorData, com.android.systemui.wallpaper.colors.ColorData):long");
    }
}
