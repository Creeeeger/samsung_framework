package com.android.systemui.wallpapers;

import android.app.WallpaperManager;
import android.util.Log;
import com.android.systemui.LsRune;
import com.android.systemui.wallpaper.CoverWallpaperController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.glwallpaper.ImageWallpaperVideoRenderer;
import com.android.systemui.wallpapers.ImageWallpaper;
import com.samsung.android.nexus.base.layer.LayerContainer;
import com.samsung.android.nexus.video.VideoLayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageWallpaper.VideoGLEngine f$0;

    public /* synthetic */ ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0(ImageWallpaper.VideoGLEngine videoGLEngine, int i) {
        this.$r8$classId = i;
        this.f$0 = videoGLEngine;
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoLayer videoLayer;
        VideoLayer videoLayer2;
        VideoLayer videoLayer3;
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaper.VideoGLEngine videoGLEngine = this.f$0;
                ImageWallpaperVideoRenderer imageWallpaperVideoRenderer = videoGLEngine.mRenderer;
                if (imageWallpaperVideoRenderer != null) {
                    imageWallpaperVideoRenderer.stop();
                    ImageWallpaperVideoRenderer imageWallpaperVideoRenderer2 = videoGLEngine.mRenderer;
                    imageWallpaperVideoRenderer2.getClass();
                    Log.i("ImageWallpaperVideoRenderer", "onSurfaceDestroyed");
                    LayerContainer layerContainer = imageWallpaperVideoRenderer2.mLayerContainer;
                    if (layerContainer != null) {
                        layerContainer.removeAllLayers();
                    }
                    imageWallpaperVideoRenderer2.mLayerContainer = null;
                    imageWallpaperVideoRenderer2.mVideoLayer = null;
                    imageWallpaperVideoRenderer2.mEglHelper.finish();
                    videoGLEngine.mRenderer = null;
                    return;
                }
                return;
            case 1:
                ImageWallpaper.VideoGLEngine videoGLEngine2 = this.f$0;
                if (videoGLEngine2.mRenderer != null) {
                    Log.i("ImageWallpaper[VideoGLEngine]", " updatePluginWallpaper " + ImageWallpaper.this.mSubWallpaperType + " , " + ((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperType());
                    ImageWallpaper imageWallpaper = ImageWallpaper.this;
                    if (imageWallpaper.mSubWallpaperType != ((CoverWallpaperController) imageWallpaper.mCoverWallpaper).getWallpaperType()) {
                        ImageWallpaper imageWallpaper2 = ImageWallpaper.this;
                        imageWallpaper2.mSubWallpaperType = ((CoverWallpaperController) imageWallpaper2.mCoverWallpaper).getWallpaperType();
                        int i = ImageWallpaper.this.mSubWallpaperType;
                        if (i != -2 && 23 != i) {
                            if (LsRune.SUBSCREEN_WATCHFACE) {
                                WallpaperUtils.clearCachedWallpaper(17);
                                WallpaperUtils.clearCachedSmartCroppedRect(17);
                            }
                            WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).forceRebindWallpaper(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getCoverWhich());
                            return;
                        }
                        return;
                    }
                    ImageWallpaper imageWallpaper3 = ImageWallpaper.this;
                    if (imageWallpaper3.mSubWallpaperType == 23) {
                        imageWallpaper3.mWorker.getThreadHandler().post(new ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0(videoGLEngine2, 4));
                        return;
                    }
                    return;
                }
                return;
            case 2:
                ImageWallpaperVideoRenderer imageWallpaperVideoRenderer3 = this.f$0.mRenderer;
                if (imageWallpaperVideoRenderer3 != null && (videoLayer2 = imageWallpaperVideoRenderer3.mVideoLayer) != null) {
                    videoLayer2.setHsvValue(0.5f);
                    return;
                }
                return;
            case 3:
                ImageWallpaperVideoRenderer imageWallpaperVideoRenderer4 = this.f$0.mRenderer;
                if (imageWallpaperVideoRenderer4 != null && (videoLayer3 = imageWallpaperVideoRenderer4.mVideoLayer) != null) {
                    videoLayer3.setHsvValue(0.0f);
                    return;
                }
                return;
            case 4:
                ImageWallpaper.VideoGLEngine videoGLEngine3 = this.f$0;
                if (((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).isCoverWallpaperRequired()) {
                    videoGLEngine3.mRenderer.setBoundRect(videoGLEngine3.calculateCropHint(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperRect()));
                    videoGLEngine3.mRenderer.setMediaPath(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperPath());
                    videoGLEngine3.mRenderer.start();
                    return;
                } else {
                    String videoFilePath = WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).getVideoFilePath(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getCoverWhich());
                    if (videoFilePath == null) {
                        Log.e("ImageWallpaper[VideoGLEngine]", "videoFilePath is NULL");
                        return;
                    } else {
                        videoGLEngine3.mRenderer.setMediaPath(videoFilePath);
                        return;
                    }
                }
            case 5:
                ImageWallpaper.VideoGLEngine videoGLEngine4 = this.f$0;
                ImageWallpaperVideoRenderer imageWallpaperVideoRenderer5 = videoGLEngine4.mRenderer;
                if (imageWallpaperVideoRenderer5 != null) {
                    imageWallpaperVideoRenderer5.start();
                    VideoLayer videoLayer4 = videoGLEngine4.mRenderer.mVideoLayer;
                    if (videoLayer4 != null) {
                        videoLayer4.setHsvValue(0.5f);
                        return;
                    }
                    return;
                }
                return;
            default:
                ImageWallpaper.VideoGLEngine videoGLEngine5 = this.f$0;
                ImageWallpaperVideoRenderer imageWallpaperVideoRenderer6 = videoGLEngine5.mRenderer;
                if (imageWallpaperVideoRenderer6 != null) {
                    VideoLayer videoLayer5 = imageWallpaperVideoRenderer6.mVideoLayer;
                    if (videoLayer5 != null) {
                        videoLayer5.setHsvValue(0.5f);
                    }
                    ImageWallpaperVideoRenderer imageWallpaperVideoRenderer7 = videoGLEngine5.mRenderer;
                    imageWallpaperVideoRenderer7.getClass();
                    Log.i("ImageWallpaperVideoRenderer", "pause");
                    if (imageWallpaperVideoRenderer7.mLayerContainer != null && (videoLayer = imageWallpaperVideoRenderer7.mVideoLayer) != null) {
                        videoLayer.pausePlayer();
                        imageWallpaperVideoRenderer7.mLayerContainer.setRenderMode(0);
                        return;
                    } else {
                        Log.e("ImageWallpaperVideoRenderer", "pause: Layer is null.");
                        return;
                    }
                }
                return;
        }
    }
}
