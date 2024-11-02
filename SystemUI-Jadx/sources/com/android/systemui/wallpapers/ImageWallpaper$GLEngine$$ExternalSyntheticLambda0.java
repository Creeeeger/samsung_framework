package com.android.systemui.wallpapers;

import android.app.WallpaperManager;
import com.android.systemui.wallpaper.CoverWallpaperController;
import com.android.systemui.wallpaper.glwallpaper.EglHelper;
import com.android.systemui.wallpapers.ImageWallpaper;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$GLEngine$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageWallpaper.GLEngine f$0;

    public /* synthetic */ ImageWallpaper$GLEngine$$ExternalSyntheticLambda0(ImageWallpaper.GLEngine gLEngine, int i) {
        this.$r8$classId = i;
        this.f$0 = gLEngine;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaper.GLEngine gLEngine = this.f$0;
                gLEngine.updateWallpaperOffset(gLEngine.mRotation);
                return;
            case 1:
                ImageWallpaper.GLEngine gLEngine2 = this.f$0;
                gLEngine2.getClass();
                gLEngine2.computeAndNotifyLocalColors(new ArrayList(ImageWallpaper.this.mColorAreas), ImageWallpaper.this.mMiniBitmap);
                return;
            case 2:
                this.f$0.drawFrame();
                return;
            case 3:
                this.f$0.drawFrame();
                return;
            case 4:
                this.f$0.finishRendering();
                return;
            case 5:
                ImageWallpaper.GLEngine gLEngine3 = this.f$0;
                if (((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperType() != 21) {
                    WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).forceRebindWallpaper(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getCoverWhich());
                    return;
                } else {
                    if (!gLEngine3.updateSurfaceSizeIfNeed() && gLEngine3.mSurfaceCreated) {
                        gLEngine3.finishRendering();
                        gLEngine3.drawFrame();
                        return;
                    }
                    return;
                }
            case 6:
                ImageWallpaper.GLEngine gLEngine4 = this.f$0;
                EglHelper eglHelper = gLEngine4.mEglHelper;
                if (eglHelper != null) {
                    eglHelper.destroyEglSurface();
                    gLEngine4.mEglHelper.destroyEglContext();
                }
                gLEngine4.drawFrame();
                return;
            case 7:
                ImageWallpaper.GLEngine gLEngine5 = this.f$0;
                gLEngine5.finishRendering();
                gLEngine5.updateRendering();
                return;
            case 8:
                ImageWallpaper.GLEngine.m2448$r8$lambda$gvSO08LSV1OEOlvWqQf1uysZ84(this.f$0);
                return;
            default:
                ImageWallpaper.GLEngine.$r8$lambda$InHMzcxP9yIB3NrHGHisYRbdVpE(this.f$0);
                return;
        }
    }
}
