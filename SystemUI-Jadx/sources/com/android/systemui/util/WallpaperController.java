package com.android.systemui.util;

import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.os.IBinder;
import android.util.Log;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WallpaperController {
    public View rootView;
    public WallpaperInfo wallpaperInfo;
    public final WallpaperManager wallpaperManager;

    public WallpaperController(WallpaperManager wallpaperManager) {
        this.wallpaperManager = wallpaperManager;
    }

    public final void setUnfoldTransitionZoom(float f) {
        boolean z;
        IBinder iBinder;
        WallpaperInfo wallpaperInfo = this.wallpaperInfo;
        if (wallpaperInfo != null) {
            z = wallpaperInfo.shouldUseDefaultUnfoldTransition();
        } else {
            z = true;
        }
        if (z) {
            float max = Math.max(0.0f, f);
            try {
                View view = this.rootView;
                if (view != null) {
                    if (view.isAttachedToWindow() && view.getWindowToken() != null) {
                        this.wallpaperManager.setWallpaperZoomOut(view.getWindowToken(), max);
                    } else {
                        Log.i("WallpaperController", "Won't set zoom. Window not attached " + view);
                    }
                }
            } catch (IllegalArgumentException e) {
                View view2 = this.rootView;
                if (view2 != null) {
                    iBinder = view2.getWindowToken();
                } else {
                    iBinder = null;
                }
                Log.w("WallpaperController", "Can't set zoom. Window is gone: " + iBinder, e);
            }
        }
    }
}
