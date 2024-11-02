package com.android.systemui.wallpapers;

import android.view.SurfaceHolder;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.wallpaper.glwallpaper.ImageWallpaperGifRenderer;
import com.android.systemui.wallpapers.ImageWallpaper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$GLEngine$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageWallpaper.BaseEngine f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ ImageWallpaper$GLEngine$$ExternalSyntheticLambda6(ImageWallpaper.BaseEngine baseEngine, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = baseEngine;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaper.GLEngine.$r8$lambda$MTjZ9OcqEdrPyZzafR7xU6HwKHk((ImageWallpaper.GLEngine) this.f$0, this.f$1);
                return;
            case 1:
                ImageWallpaper.CanvasEngine canvasEngine = (ImageWallpaper.CanvasEngine) this.f$0;
                boolean z2 = this.f$1;
                int i = ImageWallpaper.CanvasEngine.$r8$clinit;
                canvasEngine.updateOnSwitchDisplayChanged(z2);
                return;
            case 2:
                ImageWallpaper.GifGLEngine gifGLEngine = (ImageWallpaper.GifGLEngine) this.f$0;
                boolean z3 = this.f$1;
                int i2 = ImageWallpaper.GifGLEngine.MIN_SURFACE_WIDTH;
                gifGLEngine.getClass();
                StringBuilder sb = new StringBuilder("onVisibilityChanged : visible = ");
                sb.append(z3);
                sb.append(", AOD state = ");
                TooltipPopup$$ExternalSyntheticOutline0.m(sb, gifGLEngine.mAodState, "ImageWallpaper[GifGLEngine]");
                ImageWallpaperGifRenderer imageWallpaperGifRenderer = gifGLEngine.mRenderer;
                if (imageWallpaperGifRenderer != null) {
                    boolean isInteractive = ImageWallpaper.this.mPm.isInteractive();
                    int i3 = gifGLEngine.mAodState;
                    SurfaceHolder surfaceHolder = gifGLEngine.getSurfaceHolder();
                    TooltipPopup$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m(" onVisibilityChanged: ", z3, ", isInteractive : ", isInteractive, ", aodState : "), i3, "ImageWallpaperGifRenderer");
                    imageWallpaperGifRenderer.mSurfaceHolder = surfaceHolder;
                    imageWallpaperGifRenderer.mVisible = z3;
                    if (z3) {
                        if (i3 != 2 || isInteractive) {
                            imageWallpaperGifRenderer.start();
                            return;
                        }
                        return;
                    }
                    imageWallpaperGifRenderer.stop();
                    return;
                }
                return;
            default:
                ImageWallpaper.VideoGLEngine videoGLEngine = (ImageWallpaper.VideoGLEngine) this.f$0;
                boolean z4 = this.f$1;
                int i4 = ImageWallpaper.VideoGLEngine.MIN_SURFACE_WIDTH;
                videoGLEngine.getClass();
                StringBuilder sb2 = new StringBuilder("onVisibilityChanged : visible = ");
                sb2.append(z4);
                sb2.append(", isInteractive = ");
                sb2.append(ImageWallpaper.this.mPm.isInteractive());
                sb2.append(", AOD state = ");
                sb2.append(videoGLEngine.mAodState);
                sb2.append(" , mIsPauseByCommand = ");
                NotificationListener$$ExternalSyntheticOutline0.m(sb2, videoGLEngine.mIsPauseByCommand, "ImageWallpaper[VideoGLEngine]");
                if (z4) {
                    if (videoGLEngine.mAodState == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!(z & (true ^ ImageWallpaper.this.mPm.isInteractive())) && !videoGLEngine.mIsPauseByCommand) {
                        videoGLEngine.mRenderer.start();
                        ImageWallpaper.this.mWorker.getThreadHandler().post(new ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0(videoGLEngine, 2));
                        return;
                    }
                    return;
                }
                videoGLEngine.mRenderer.stop();
                ImageWallpaper.this.mWorker.getThreadHandler().post(new ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0(videoGLEngine, 3));
                return;
        }
    }
}
