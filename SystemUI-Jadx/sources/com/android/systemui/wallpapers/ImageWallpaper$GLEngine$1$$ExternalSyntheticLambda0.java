package com.android.systemui.wallpapers;

import android.app.WallpaperManager;
import android.os.Trace;
import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.subscreen.SubHomeActivity;
import com.android.systemui.subscreen.SubScreenManager;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.canvaswallpaper.ImageWallpaperCanvasHelper;
import com.android.systemui.wallpaper.glwallpaper.ImageWallpaperRenderer;
import com.android.systemui.wallpaper.log.WallpaperLoggerImpl;
import com.android.systemui.wallpapers.ImageWallpaper;
import com.samsung.android.nexus.video.VideoLayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaper.GLEngine gLEngine = ImageWallpaper.GLEngine.this;
                if (WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).getLidState() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                boolean z4 = LsRune.SUBSCREEN_WATCHFACE;
                if (z4 && z && gLEngine.getDisplayId() == 0) {
                    Log.i("ImageWallpaper[GLEngine]", "Ignore Waking up when closed in watch face mode. ");
                    return;
                }
                ImageWallpaperRenderer imageWallpaperRenderer = gLEngine.mRenderer;
                if (imageWallpaperRenderer != null) {
                    boolean z5 = LsRune.WALLPAPER_SUB_DISPLAY_MODE;
                    if (z5) {
                        int i = imageWallpaperRenderer.mLidState;
                        WallpaperManager wallpaperManager = imageWallpaperRenderer.mWallpaperManager;
                        if (i != wallpaperManager.getLidState()) {
                            ((WallpaperLoggerImpl) imageWallpaperRenderer.mLoggerWrapper).log("ImageWallpaperRenderer", "onStartedWakingUp lid state different. so update " + ImageWallpaperRenderer.showLidState(imageWallpaperRenderer.mLidState) + " , " + ImageWallpaperRenderer.showLidState(wallpaperManager.getLidState()) + " , " + imageWallpaperRenderer.mIsFolded);
                            if (imageWallpaperRenderer.mIsFolded) {
                                imageWallpaperRenderer.setLidState(0);
                            } else {
                                imageWallpaperRenderer.setLidState(1);
                            }
                            z3 = true;
                        }
                    }
                    if (z3) {
                        if (z5 && !z4) {
                            gLEngine.updateSurfaceSize();
                        }
                        gLEngine.updateWallpaperOffset(gLEngine.mRotation);
                        gLEngine.updateRendering();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                ImageWallpaper.CanvasEngine canvasEngine = (ImageWallpaper.CanvasEngine) this.f$0;
                synchronized (canvasEngine.mLock) {
                    Trace.beginSection("ImageWallpaper.CanvasEngine#unloadBitmap");
                    canvasEngine.getSurfaceHolder().getSurface().hwuiDestroy();
                    canvasEngine.mWallpaperManager.forgetLoadedWallpaper();
                    Trace.endSection();
                }
                return;
            case 2:
                ImageWallpaper.CanvasEngine canvasEngine2 = ImageWallpaper.CanvasEngine.this;
                if (WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).getLidState() == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z6 = LsRune.SUBSCREEN_WATCHFACE;
                if (z6 && z2 && canvasEngine2.getDisplayId() == 0) {
                    Log.i(canvasEngine2.TAG, "Ignore Waking up when closed in watch face mode. ");
                    return;
                }
                ImageWallpaperCanvasHelper imageWallpaperCanvasHelper = canvasEngine2.mHelper;
                imageWallpaperCanvasHelper.getClass();
                boolean z7 = LsRune.WALLPAPER_SUB_DISPLAY_MODE;
                if (z7) {
                    int i2 = imageWallpaperCanvasHelper.mLidState;
                    WallpaperManager wallpaperManager2 = imageWallpaperCanvasHelper.mWallpaperManager;
                    if (i2 != wallpaperManager2.getLidState()) {
                        ((WallpaperLoggerImpl) imageWallpaperCanvasHelper.mLoggerWrapper).log(imageWallpaperCanvasHelper.TAG, "onStartedWakingUp lid state different. so update " + ImageWallpaperCanvasHelper.convertLidStateToString(imageWallpaperCanvasHelper.mLidState) + " , " + ImageWallpaperCanvasHelper.convertLidStateToString(wallpaperManager2.getLidState()) + " , " + imageWallpaperCanvasHelper.mIsFolded);
                        if (imageWallpaperCanvasHelper.mIsFolded) {
                            imageWallpaperCanvasHelper.setLidState(0);
                        } else {
                            imageWallpaperCanvasHelper.setLidState(1);
                        }
                        z3 = true;
                    }
                }
                if (z3) {
                    int currentWhich = canvasEngine2.mHelper.getCurrentWhich();
                    if (z7 && !z6) {
                        canvasEngine2.updateSurfaceSize(currentWhich);
                    }
                    canvasEngine2.updateRendering(currentWhich);
                    return;
                }
                return;
            case 3:
                ImageWallpaper.GLEngine gLEngine2 = ImageWallpaper.GLEngine.this;
                gLEngine2.updateWallpaperOffset(gLEngine2.mRotation);
                return;
            default:
                ImageWallpaper.VideoGLEngine.AnonymousClass2 anonymousClass2 = (ImageWallpaper.VideoGLEngine.AnonymousClass2) this.f$0;
                anonymousClass2.getClass();
                SubHomeActivity subHomeActivity = ((SubScreenManager) Dependency.get(SubScreenManager.class)).mActivity;
                if (subHomeActivity != null && subHomeActivity.semIsResumed()) {
                    z3 = true;
                }
                StringBuilder sb = new StringBuilder("onStartedWakingUp : isSubDisplay = ");
                sb.append(WallpaperUtils.isSubDisplay());
                sb.append(" isResumed = ");
                sb.append(z3);
                sb.append(" , mIsPauseByCommand = ");
                ImageWallpaper.VideoGLEngine videoGLEngine = ImageWallpaper.VideoGLEngine.this;
                NotificationListener$$ExternalSyntheticOutline0.m(sb, videoGLEngine.mIsPauseByCommand, "ImageWallpaper[VideoGLEngine]");
                if (videoGLEngine.mRenderer != null && WallpaperUtils.isSubDisplay() && z3 && !videoGLEngine.mIsPauseByCommand) {
                    VideoLayer videoLayer = videoGLEngine.mRenderer.mVideoLayer;
                    if (videoLayer != null) {
                        videoLayer.setHsvValue(0.5f);
                    }
                    videoGLEngine.mRenderer.start();
                    return;
                }
                return;
        }
    }
}
