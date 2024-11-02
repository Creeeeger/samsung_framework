package com.android.systemui.wallpapers;

import android.app.WallpaperManager;
import android.util.Log;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.wallpaper.glwallpaper.ImageWallpaperGifRenderer;
import com.android.systemui.wallpapers.ImageWallpaper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageWallpaper.GifGLEngine.AnonymousClass2 f$0;

    public /* synthetic */ ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0(ImageWallpaper.GifGLEngine.AnonymousClass2 anonymousClass2, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaper.GifGLEngine gifGLEngine = ImageWallpaper.GifGLEngine.this;
                if (WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).getLidState() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("onStartedWakingUp : isSubDisplay = ", z, "ImageWallpaper[GifGLEngine]");
                ImageWallpaperGifRenderer imageWallpaperGifRenderer = gifGLEngine.mRenderer;
                if (imageWallpaperGifRenderer != null && z) {
                    imageWallpaperGifRenderer.updateGif(gifGLEngine.getSurfaceHolder());
                    if (gifGLEngine.isVisible()) {
                        Log.i("ImageWallpaper[GifGLEngine]", "onStartedWakingUp : wake up in visible state");
                        gifGLEngine.mRenderer.start();
                        return;
                    }
                    return;
                }
                return;
            default:
                ImageWallpaper.GifGLEngine.AnonymousClass2 anonymousClass2 = this.f$0;
                anonymousClass2.getClass();
                Log.i("ImageWallpaper[GifGLEngine]", "onFinishedGoingToSleep");
                ImageWallpaperGifRenderer imageWallpaperGifRenderer2 = ImageWallpaper.GifGLEngine.this.mRenderer;
                if (imageWallpaperGifRenderer2 != null) {
                    imageWallpaperGifRenderer2.stop();
                    return;
                }
                return;
        }
    }
}
