package com.android.systemui.wallpapers;

import android.app.WallpaperManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import com.android.systemui.LsRune;
import com.android.systemui.wallpaper.CoverWallpaperController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.glwallpaper.ImageWallpaperGifRenderer;
import com.android.systemui.wallpapers.ImageWallpaper;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageWallpaper.GifGLEngine f$0;

    public /* synthetic */ ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0(ImageWallpaper.GifGLEngine gifGLEngine, int i) {
        this.$r8$classId = i;
        this.f$0 = gifGLEngine;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InputStream fileInputStream;
        switch (this.$r8$classId) {
            case 0:
                ImageWallpaperGifRenderer imageWallpaperGifRenderer = this.f$0.mRenderer;
                imageWallpaperGifRenderer.getClass();
                Log.i("ImageWallpaperGifRenderer", "pause");
                imageWallpaperGifRenderer.mIsPaused = true;
                return;
            case 1:
                ImageWallpaperGifRenderer imageWallpaperGifRenderer2 = this.f$0.mRenderer;
                imageWallpaperGifRenderer2.getClass();
                Log.i("ImageWallpaperGifRenderer", "resume");
                imageWallpaperGifRenderer2.mIsPaused = false;
                if (imageWallpaperGifRenderer2.mVisible) {
                    imageWallpaperGifRenderer2.mStartedMovieTime = SystemClock.uptimeMillis() - imageWallpaperGifRenderer2.mPausedMovieTime;
                    imageWallpaperGifRenderer2.mOnDrawHandler.sendEmptyMessageDelayed(1001, 50L);
                    return;
                }
                return;
            case 2:
                ImageWallpaper.GifGLEngine gifGLEngine = this.f$0;
                gifGLEngine.mRenderer.stop();
                gifGLEngine.mRenderer = null;
                return;
            case 3:
                ImageWallpaper.GifGLEngine gifGLEngine2 = this.f$0;
                if (gifGLEngine2.mRenderer != null) {
                    Log.i("ImageWallpaper[GifGLEngine]", " updatePlugInWallpaper " + ImageWallpaper.this.mSubWallpaperType + " , " + ((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperType());
                    ImageWallpaper imageWallpaper = ImageWallpaper.this;
                    if (imageWallpaper.mSubWallpaperType != ((CoverWallpaperController) imageWallpaper.mCoverWallpaper).getWallpaperType()) {
                        ImageWallpaper imageWallpaper2 = ImageWallpaper.this;
                        imageWallpaper2.mSubWallpaperType = ((CoverWallpaperController) imageWallpaper2.mCoverWallpaper).getWallpaperType();
                        int i = ImageWallpaper.this.mSubWallpaperType;
                        if (i != -2 && 22 != i) {
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
                    if (imageWallpaper3.mSubWallpaperType == 22) {
                        Bitmap wallpaperBitmap = ((CoverWallpaperController) imageWallpaper3.mCoverWallpaper).getWallpaperBitmap(true);
                        if (wallpaperBitmap != null) {
                            gifGLEngine2.mRenderer.setThumbnail(wallpaperBitmap, gifGLEngine2.getSurfaceHolder());
                        } else {
                            Log.i("ImageWallpaper[GifGLEngine]", " bitmap is null");
                        }
                        gifGLEngine2.mRenderer.setMediaPath(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperPath());
                        gifGLEngine2.mRenderer.updateGif(gifGLEngine2.getSurfaceHolder());
                        return;
                    }
                    return;
                }
                return;
            default:
                ImageWallpaper.GifGLEngine gifGLEngine3 = this.f$0;
                if (((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).isCoverWallpaperRequired()) {
                    Bitmap wallpaperBitmap2 = ((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperBitmap(true);
                    if (wallpaperBitmap2 != null) {
                        gifGLEngine3.mRenderer.setThumbnail(wallpaperBitmap2, gifGLEngine3.getSurfaceHolder());
                    } else {
                        Log.i("ImageWallpaper[GifGLEngine]", " bitmap is null");
                    }
                    gifGLEngine3.mRenderer.setMediaPath(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getWallpaperPath());
                } else {
                    Uri semGetUri = WallpaperManager.getInstance(ImageWallpaper.this.getApplicationContext()).semGetUri(((CoverWallpaperController) ImageWallpaper.this.mCoverWallpaper).getCoverWhich());
                    ImageWallpaperGifRenderer imageWallpaperGifRenderer3 = gifGLEngine3.mRenderer;
                    imageWallpaperGifRenderer3.getClass();
                    Log.i("ImageWallpaperGifRenderer", " setMediaUri : ");
                    try {
                        if ("content".equals(semGetUri.getScheme())) {
                            fileInputStream = imageWallpaperGifRenderer3.mContext.getContentResolver().openInputStream(semGetUri);
                        } else {
                            fileInputStream = new FileInputStream(new File(semGetUri.getPath()));
                        }
                        imageWallpaperGifRenderer3.setInputStreamToMovie(fileInputStream);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                gifGLEngine3.mRenderer.updateGif(gifGLEngine3.getSurfaceHolder());
                return;
        }
    }
}
