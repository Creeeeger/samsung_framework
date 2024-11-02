package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.app.WallpaperManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.ParcelFileDescriptor;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.DisplayInfo;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WallpaperManagerWrapper {
    private static final String TAG = "WallpaperManagerWrapper";
    private Display mDisplay;
    private static final WallpaperManagerWrapper sInstance = new WallpaperManagerWrapper();
    private static final WallpaperManager mWallpaperManager = (WallpaperManager) AppGlobals.getInitialApplication().getSystemService("wallpaper");
    private static final DisplayManager mDisplayManager = (DisplayManager) AppGlobals.getInitialApplication().getSystemService("display");
    private final DisplayMetrics mDisplayMetrics = new DisplayMetrics();
    private final DisplayInfo mCurDisplayInfo = new DisplayInfo();

    private WallpaperManagerWrapper() {
    }

    private Bitmap checkDeviceDensity(Bitmap bitmap) {
        if (bitmap != null) {
            DisplayManager displayManager = mDisplayManager;
            if (displayManager != null) {
                this.mDisplay = displayManager.getDisplay(2);
            }
            Display display = this.mDisplay;
            if (display != null) {
                display.getRealMetrics(this.mDisplayMetrics);
                bitmap.setDensity(this.mDisplayMetrics.noncompatDensityDpi);
                this.mDisplay.getDisplayInfo(this.mCurDisplayInfo);
                DisplayInfo displayInfo = this.mCurDisplayInfo;
                int i = displayInfo.logicalHeight;
                int i2 = displayInfo.logicalWidth;
                int height = bitmap.getHeight();
                int width = bitmap.getWidth();
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("checkDeviceDensity deviceHeight = ", i, ", deviceWidth = ", i2, ", bitmapWidth = ");
                m.append(bitmap.getWidth());
                m.append(", bitmapHeight = ");
                m.append(bitmap.getHeight());
                Log.d(TAG, m.toString());
                if (i2 < width && i < height) {
                    float max = Math.max(i2 / width, i / height);
                    Bitmap resizeBitmap = resizeBitmap(bitmap, max);
                    Log.d(TAG, "resize scale down.:" + max);
                    bitmap.recycle();
                    return resizeBitmap;
                }
            }
        }
        return bitmap;
    }

    public static WallpaperManagerWrapper getInstance() {
        return sInstance;
    }

    private Bitmap resizeBitmap(Bitmap bitmap, float f) {
        return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * f), (int) (bitmap.getHeight() * f), true);
    }

    public Bitmap getBitmapForDex() {
        WallpaperManager wallpaperManager = mWallpaperManager;
        Bitmap bitmapForDex = wallpaperManager.getBitmapForDex();
        wallpaperManager.forgetLoadedWallpaper();
        return bitmapForDex;
    }

    public Bitmap getBitmapForDexLock() {
        ParcelFileDescriptor lockWallpaperFile = mWallpaperManager.getLockWallpaperFile(UserHandle.myUserId(), 10);
        if (lockWallpaperFile == null) {
            return null;
        }
        return checkDeviceDensity(BitmapFactory.decodeFileDescriptor(lockWallpaperFile.getFileDescriptor(), null, new BitmapFactory.Options()));
    }

    public Drawable getDrawableForDexLock(int i) {
        return mWallpaperManager.semGetDrawable(i);
    }
}
