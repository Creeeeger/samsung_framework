package com.android.systemui.keyguardimage;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.util.Size;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.keyguardimage.ImageOptionCreator;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.pluginlock.PluginWallpaperManagerImpl;
import com.android.systemui.pluginlock.utils.BitmapUtils;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.CoverWallpaper;
import com.android.systemui.wallpaper.CoverWallpaperController;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperChangeObserver;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.utils.IntelligentCropHelper;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.android.wallpaper.Rune;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class WallpaperImageCreator implements ImageCreator {
    public final String TAG;
    public final Context mContext;
    public final CoverWallpaper mCoverWallpaper;
    public final KeyguardWallpaper mKeyguardWallpaper;
    public final WallpaperChangeObserver mObserver;
    public final PluginWallpaperManager mPluginWallpaperManager;
    public final SettingsHelper mSettingsHelper;

    public WallpaperImageCreator(String str, Context context, SettingsHelper settingsHelper, PluginWallpaperManager pluginWallpaperManager, CoverWallpaper coverWallpaper, KeyguardWallpaper keyguardWallpaper, WallpaperChangeObserver wallpaperChangeObserver) {
        this.TAG = str;
        this.mContext = context;
        this.mSettingsHelper = settingsHelper;
        this.mPluginWallpaperManager = pluginWallpaperManager;
        this.mCoverWallpaper = coverWallpaper;
        this.mKeyguardWallpaper = keyguardWallpaper;
        this.mObserver = wallpaperChangeObserver;
    }

    @Override // com.android.systemui.keyguardimage.ImageCreator
    public Bitmap createImage(ImageOptionCreator.ImageOption imageOption, Point point) {
        KeyguardWallpaper keyguardWallpaper;
        boolean isMatching;
        String string;
        Rect nearestCropHint;
        Context context = this.mContext;
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
        boolean z = WallpaperUtils.mIsUltraPowerSavingMode;
        String str = this.TAG;
        if (!z && !WallpaperUtils.mIsEmergencyMode) {
            int i = WallpaperUtils.sCurrentWhich;
            if (imageOption.type == 5) {
                try {
                    boolean isCoverWallpaperRequired = ((CoverWallpaperController) this.mCoverWallpaper).isCoverWallpaperRequired();
                    int semGetWallpaperType = wallpaperManager.semGetWallpaperType(imageOption.displayType);
                    Log.d(str, "createImage, imageOption.type:" + imageOption.type + ", displayType:" + imageOption.displayType + ", wallpaperType:" + semGetWallpaperType + ", isMultipleWallpaper:" + isCoverWallpaperRequired);
                    if (isCoverWallpaperRequired) {
                        return getDlsCoverWallpaperBitmap();
                    }
                    return BitmapUtils.fitToScreen(context, getCoverWallpaperBitmap(semGetWallpaperType, imageOption.displayType), true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    if (!this.mSettingsHelper.isLiveWallpaperEnabled()) {
                        int wallpaperType = WallpaperUtils.getWallpaperType();
                        if (Rune.SUPPORT_PREVIEW_LOCK_ONLY_LIVE_WALLPAPER && wallpaperType == 7 && imageOption.rotation != -1 && !imageOption.useThumbnail) {
                            int rotation = context.getDisplay().getRotation();
                            imageOption.rotation = rotation;
                            return WallpaperUtils.getScreenShot(context, imageOption.width, imageOption.height, rotation, 2040);
                        }
                        this.mObserver.await();
                        if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled()) {
                            Log.d(str, "bitmap from dls");
                            return makeResult(getDlsWallpaperBitmap(imageOption), imageOption.width, imageOption.height, imageOption.rotation);
                        }
                        if (WallpaperUtils.isCachedWallpaperAvailable(i)) {
                            Bitmap cachedWallpaper = WallpaperUtils.getCachedWallpaper(i);
                            Bundle wallpaperExtras = WallpaperManager.getInstance(context).getWallpaperExtras(i, KeyguardUpdateMonitor.getCurrentUser());
                            String str2 = null;
                            if (wallpaperExtras == null) {
                                string = null;
                            } else {
                                string = wallpaperExtras.getString("cropHints");
                            }
                            if ((!TextUtils.isEmpty(string)) && cachedWallpaper != null) {
                                Point point2 = new Point(imageOption.width, imageOption.height);
                                Bundle wallpaperExtras2 = WallpaperManager.getInstance(context).getWallpaperExtras(i, KeyguardUpdateMonitor.getCurrentUser());
                                if (wallpaperExtras2 != null) {
                                    str2 = wallpaperExtras2.getString("cropHints");
                                }
                                ArrayList parseCropHints = IntelligentCropHelper.parseCropHints(str2);
                                if (parseCropHints != null && !parseCropHints.isEmpty() && (nearestCropHint = IntelligentCropHelper.getNearestCropHint(point2, parseCropHints)) != null) {
                                    nearestCropHint.intersect(new Rect(0, 0, cachedWallpaper.getWidth(), cachedWallpaper.getHeight()));
                                    cachedWallpaper = Bitmap.createBitmap(cachedWallpaper, nearestCropHint.left, nearestCropHint.top, nearestCropHint.width(), nearestCropHint.height());
                                }
                            }
                            if (cachedWallpaper != null) {
                                Log.d(str, "bitmap from cache");
                                return makeResult(cachedWallpaper, imageOption.width, imageOption.height, imageOption.rotation);
                            }
                        } else if (wallpaperType != 0 && wallpaperType != 7 && (keyguardWallpaper = this.mKeyguardWallpaper) != null) {
                            KeyguardWallpaperController keyguardWallpaperController = (KeyguardWallpaperController) keyguardWallpaper;
                            if (keyguardWallpaperController.mWallpaperView == null) {
                                isMatching = false;
                            } else {
                                isMatching = KeyguardWallpaperController.isMatching(WallpaperUtils.getWallpaperType(), keyguardWallpaperController.mWallpaperView);
                            }
                            if (isMatching) {
                                Bitmap wallpaperBitmap = ((KeyguardWallpaperController) keyguardWallpaper).getWallpaperBitmap();
                                if (wallpaperBitmap != null) {
                                    Log.d(str, "bitmap from view");
                                    return makeResult(wallpaperBitmap, imageOption.width, imageOption.height, imageOption.rotation);
                                }
                                Log.w(str, "bitmap from view is null");
                            }
                        }
                    } else if (imageOption.rotation != -1 && !imageOption.useThumbnail) {
                        int rotation2 = context.getDisplay().getRotation();
                        imageOption.rotation = rotation2;
                        return WallpaperUtils.getScreenShot(context, imageOption.width, imageOption.height, rotation2, 2000);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            Drawable semGetDrawable = wallpaperManager.semGetDrawable(i);
            if (semGetDrawable instanceof BitmapDrawable) {
                Log.d(str, "bitmap from wallpaper manager");
                return makeResult(((BitmapDrawable) semGetDrawable).getBitmap(), imageOption.width, imageOption.height, imageOption.rotation);
            }
            Bitmap createBitmap = Bitmap.createBitmap(imageOption.width, imageOption.height, Bitmap.Config.ARGB_8888);
            if (semGetDrawable == null) {
                Log.w(str, "no bitmap.");
                return createBitmap;
            }
            Canvas canvas = new Canvas(createBitmap);
            semGetDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            semGetDrawable.draw(canvas);
            return makeResult(createBitmap, imageOption.width, imageOption.height, imageOption.rotation);
        }
        Log.i(str, "black bitmap");
        Bitmap createBitmap2 = Bitmap.createBitmap(imageOption.width, imageOption.height, Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap2).drawColor(EmergencyPhoneWidget.BG_COLOR);
        return createBitmap2;
    }

    public final Bitmap decodeGif(String str) {
        Bitmap bitmap = null;
        String str2 = this.TAG;
        if (str != null && !str.isEmpty()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = false;
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                    try {
                        bitmap = BitmapFactory.decodeStream(bufferedInputStream, null, options);
                        if (bitmap == null && !options.inJustDecodeBounds) {
                            Log.w(str2, "decodeGif() bitmap is null");
                        }
                        bufferedInputStream.close();
                        fileInputStream.close();
                    } finally {
                    }
                } finally {
                }
            } catch (Exception e) {
                EmergencyButton$$ExternalSyntheticOutline0.m("decodeGif() Exception occurs ", e, str2);
            }
            return bitmap;
        }
        Log.w(str2, "decodeGif() bitmap return null");
        return null;
    }

    public final Bitmap getCoverWallpaperBitmap(int i, int i2) {
        boolean z;
        String str = this.TAG;
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(this.mContext);
        if (i == 5) {
            z = true;
        } else {
            z = false;
        }
        Bitmap bitmap = null;
        try {
            Log.d(str, "getCoverWallpaperBitmap() wallpaperType:" + i + ", display:" + i2);
            if (z) {
                bitmap = decodeGif(getGifWallpaperPath(i2));
            } else {
                ParcelFileDescriptor wallpaperFile = wallpaperManager.getWallpaperFile(i2, ActivityManager.semGetCurrentUser(), i);
                if (wallpaperFile != null) {
                    bitmap = BitmapFactory.decodeFileDescriptor(wallpaperFile.getFileDescriptor(), null, new BitmapFactory.Options());
                    wallpaperFile.close();
                } else {
                    Log.e(str, "wallpaper is null");
                }
            }
        } catch (Throwable th) {
            Log.e(str, "getCoverWallpaperBitmap() " + th);
        }
        return bitmap;
    }

    public final Bitmap getDlsCoverWallpaperBitmap() {
        boolean z;
        boolean z2;
        CoverWallpaper coverWallpaper = this.mCoverWallpaper;
        CoverWallpaperController coverWallpaperController = (CoverWallpaperController) coverWallpaper;
        int wallpaperType = coverWallpaperController.getWallpaperType();
        boolean z3 = false;
        if (wallpaperType != 12 && wallpaperType != 22) {
            z = false;
        } else {
            z = true;
        }
        int wallpaperType2 = coverWallpaperController.getWallpaperType();
        if (wallpaperType2 != 13 && wallpaperType2 != 23) {
            z2 = false;
        } else {
            z2 = true;
        }
        ArrayList parseCropHints = IntelligentCropHelper.parseCropHints(((CoverWallpaperController) coverWallpaper).getWallpaperIntelligentCrop());
        if (parseCropHints != null && parseCropHints.size() > 0) {
            z3 = true;
        }
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("getDlsCoverWallpaperBitmap, isGif:", z, ", isVideo:", z2, ", hasDlsCoverCropHints = ");
        m.append(z3);
        String sb = m.toString();
        String str = this.TAG;
        Log.d(str, sb);
        Context context = this.mContext;
        if (z2) {
            Bitmap videoFrame = WallpaperUtils.getVideoFrame(context, null, coverWallpaperController.getWallpaperPath(), null, 0L);
            Rect wallpaperRect = coverWallpaperController.getWallpaperRect();
            if (wallpaperRect != null && wallpaperRect.width() > 0 && wallpaperRect.height() > 0 && videoFrame != null) {
                if (wallpaperRect.isEmpty()) {
                    Log.d(str, "getCroppedBitmapForCoverScreen: Invalid params.");
                    return videoFrame;
                }
                Point realScreenSize = WallpaperUtils.getRealScreenSize(context, true);
                Bitmap createBitmap = Bitmap.createBitmap(realScreenSize.x, realScreenSize.y, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                float width = videoFrame.getWidth() / wallpaperRect.width();
                float f = 1.0f / width;
                canvas.scale(f, f);
                canvas.translate(wallpaperRect.left * width, wallpaperRect.top * width);
                canvas.drawBitmap(videoFrame, 0.0f, 0.0f, (Paint) null);
                videoFrame.recycle();
                return createBitmap;
            }
            return videoFrame;
        }
        Bitmap wallpaperBitmap = coverWallpaperController.getWallpaperBitmap(!z3);
        if (z3) {
            Rect nearestCropHint = IntelligentCropHelper.getNearestCropHint(WallpaperUtils.getRealScreenSize(context, true), IntelligentCropHelper.parseCropHints(((CoverWallpaperController) coverWallpaper).getWallpaperIntelligentCrop()));
            Log.i(str, "getDlsCoverWallpaperBitmap: cropRect = " + nearestCropHint);
            if (nearestCropHint != null) {
                return Bitmap.createBitmap(wallpaperBitmap, nearestCropHint.left, nearestCropHint.top, nearestCropHint.width(), nearestCropHint.height());
            }
        }
        return wallpaperBitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Bitmap getDlsWallpaperBitmap(ImageOptionCreator.ImageOption imageOption) {
        Rect rect;
        boolean z;
        byte b;
        Bitmap bitmap;
        boolean isSubDisplay = WallpaperUtils.isSubDisplay();
        PluginWallpaperManagerImpl pluginWallpaperManagerImpl = (PluginWallpaperManagerImpl) this.mPluginWallpaperManager;
        String wallpaperIntelligentCrop = pluginWallpaperManagerImpl.getWallpaperIntelligentCrop(isSubDisplay ? 1 : 0);
        String m = KeyAttributes$$ExternalSyntheticOutline0.m("getDlsWallpaperBitmap: iCrops = ", wallpaperIntelligentCrop);
        String str = this.TAG;
        Log.d(str, m);
        Context context = this.mContext;
        Size logicalDisplaySize = WallpaperUtils.getLogicalDisplaySize(context);
        if (DeviceType.isTablet()) {
            Point realScreenSize = WallpaperUtils.getRealScreenSize(context, false);
            logicalDisplaySize = new Size(realScreenSize.x, realScreenSize.y);
        }
        Bitmap bitmap2 = null;
        if (!TextUtils.isEmpty(wallpaperIntelligentCrop)) {
            rect = IntelligentCropHelper.getNearestCropHint(new Point(logicalDisplaySize.getWidth(), logicalDisplaySize.getHeight()), IntelligentCropHelper.parseCropHints(wallpaperIntelligentCrop));
        } else {
            rect = null;
        }
        boolean z2 = true;
        if (rect != null && !rect.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        if (pluginWallpaperManagerImpl.isVideoWallpaperEnabled()) {
            String wallpaperPath = pluginWallpaperManagerImpl.getWallpaperPath();
            Uri wallpaperUri = pluginWallpaperManagerImpl.getWallpaperUri();
            if (wallpaperPath == null && wallpaperUri == null) {
                Log.w(str, "no video wallpaper data");
            } else {
                KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
                Log.d(str, "getDlsWallpaperBitmap: kgm.semIsKeyguardShowingAndNotOccluded() = " + keyguardManager.semIsKeyguardShowingAndNotOccluded());
                if (!keyguardManager.semIsKeyguardShowingAndNotOccluded()) {
                    bitmap = ((KeyguardWallpaperController) this.mKeyguardWallpaper).getWallpaperBitmap();
                } else {
                    bitmap = null;
                }
                if (bitmap == null) {
                    Log.w(str, "View or player is null, get frame from retriever : path = " + wallpaperPath + " , uri = " + wallpaperUri);
                    bitmap = WallpaperUtils.getVideoFrame(context, null, wallpaperPath, wallpaperUri, 0L);
                }
                bitmap2 = bitmap;
            }
        } else {
            if (pluginWallpaperManagerImpl.getWallpaperPath() != null) {
                b = true;
            } else {
                b = false;
            }
            if (b != false) {
                bitmap2 = BitmapUtils.getBitmapFromPath(pluginWallpaperManagerImpl.mContext, pluginWallpaperManagerImpl.getWallpaperPath(), !z, false);
            } else {
                if (pluginWallpaperManagerImpl.getWallpaperUri() == null) {
                    z2 = false;
                }
                if (z2) {
                    Uri wallpaperUri2 = pluginWallpaperManagerImpl.getWallpaperUri();
                    pluginWallpaperManagerImpl.getClass();
                    bitmap2 = BitmapUtils.getBitmapFromUri(pluginWallpaperManagerImpl.mContext, wallpaperUri2, !z, false);
                } else {
                    bitmap2 = pluginWallpaperManagerImpl.getWallpaperBitmap();
                }
            }
        }
        if (bitmap2 != null && z) {
            try {
                Matrix matrix = new Matrix();
                Paint paint = new Paint(2);
                Bitmap createBitmap = Bitmap.createBitmap(logicalDisplaySize.getWidth(), logicalDisplaySize.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                float max = Math.max(logicalDisplaySize.getWidth() / rect.width(), logicalDisplaySize.getHeight() / rect.height());
                matrix.postScale(max, max);
                matrix.postTranslate(Math.round(r9), Math.round(r10));
                canvas.drawBitmap(bitmap2, matrix, paint);
                Log.d(str, "getDlsWallpaperBitmap: src = " + rect + ", dx = " + ((-rect.left) * max) + ", dy = " + ((-rect.top) * max) + ", displaySize.getWidth() = " + logicalDisplaySize.getWidth() + ", displaySize.getHeight() = " + logicalDisplaySize.getHeight() + ", scale = " + max);
                bitmap2.recycle();
                return createBitmap;
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
        if (bitmap2 == null) {
            return Bitmap.createBitmap(imageOption.width, imageOption.height, Bitmap.Config.ARGB_8888);
        }
        return bitmap2;
    }

    public final String getGifWallpaperPath(int i) {
        String str = this.TAG;
        String str2 = null;
        try {
            str2 = WallpaperManager.getInstance(this.mContext).semGetUri(i).getPath();
            Log.d(str, "getGifWallpaperPath() display: " + i + " , gifPath:" + str2);
            return str2;
        } catch (Throwable th) {
            Log.e(str, "getGifWallpaperPath() " + th);
            return str2;
        }
    }

    public final Bitmap makeResult(Bitmap bitmap, int i, int i2, int i3) {
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("makeResult, w: ", i, ", h: ", i2, ", rotation: ");
        m.append(i3);
        Log.d(this.TAG, m.toString());
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(WallpaperUtils.cropBitmap(bitmap, i, i2), i, i2, true);
        if (i3 != -1 && i3 != 0) {
            return WallpaperUtils.getRotatedBitmap(createScaledBitmap, i3);
        }
        return createScaledBitmap;
    }
}
