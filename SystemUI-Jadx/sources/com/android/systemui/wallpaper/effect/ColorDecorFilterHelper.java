package com.android.systemui.wallpaper.effect;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0;
import com.samsung.android.wallpaper.imageprocessing.WallpaperFilter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ColorDecorFilterHelper {
    public static Bitmap createFilteredBitmap(Bitmap bitmap, String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        try {
            new WallpaperFilter().applyFilter(copy, str);
            Log.d("ColorDecorFilterHelper", "createFilteredBitmap : elapsed=" + (SystemClock.elapsedRealtime() - elapsedRealtime) + ", filter = " + str);
        } catch (Exception e) {
            EmergencyButton$$ExternalSyntheticOutline0.m("createFilteredBitmap: e=", e, "ColorDecorFilterHelper");
        }
        return copy;
    }

    public static String getFilterData(int i, Context context, int i2) {
        Bundle wallpaperExtras = WallpaperManager.getInstance(context).getWallpaperExtras(i, i2);
        if (wallpaperExtras == null) {
            return null;
        }
        return wallpaperExtras.getString("imageFilterParams");
    }
}
