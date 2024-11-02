package com.android.systemui.wallpaper.colors;

import android.app.SemWallpaperColors;
import android.app.WallpaperManager;
import android.util.Log;
import android.util.SparseArray;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemWallpaperColors {
    public final SparseArray mSystemWallpaperColors = new SparseArray();
    public final WallpaperManager mWallpaperManager;

    public SystemWallpaperColors(WallpaperManager wallpaperManager) {
        this.mWallpaperManager = wallpaperManager;
    }

    public final SemWallpaperColors getColor(int i) {
        ListPopupWindow$$ExternalSyntheticOutline0.m("getColor: which = ", i, "SystemWallpaperColors");
        if ((i & 1) == 0) {
            return null;
        }
        if ((i & 60) == 0) {
            i |= 4;
        }
        SparseArray sparseArray = this.mSystemWallpaperColors;
        SemWallpaperColors semWallpaperColors = (SemWallpaperColors) sparseArray.get(i);
        if (semWallpaperColors == null) {
            SemWallpaperColors semGetWallpaperColors = this.mWallpaperManager.semGetWallpaperColors(i);
            sparseArray.put(i, semGetWallpaperColors);
            Log.i("SystemWallpaperColors", "getColor : put color for which " + i + ", color = " + semGetWallpaperColors);
            return semGetWallpaperColors;
        }
        return semWallpaperColors;
    }
}
