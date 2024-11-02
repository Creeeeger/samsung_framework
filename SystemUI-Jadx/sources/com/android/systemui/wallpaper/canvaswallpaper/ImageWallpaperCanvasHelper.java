package com.android.systemui.wallpaper.canvaswallpaper;

import android.app.ActivityManager;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.DisplayInfo;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.pluginlock.utils.BitmapUtils;
import com.android.systemui.wallpaper.CoverWallpaper;
import com.android.systemui.wallpaper.CoverWallpaperController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.colors.SystemWallpaperColors;
import com.android.systemui.wallpaper.effect.ColorDecorFilterHelper;
import com.android.systemui.wallpaper.effect.HighlightFilterHelper;
import com.android.systemui.wallpaper.glwallpaper.ImageDarkModeFilter;
import com.android.systemui.wallpaper.glwallpaper.ImageSmartCropper;
import com.android.systemui.wallpaper.log.WallpaperLogger;
import com.android.systemui.wallpaper.log.WallpaperLoggerImpl;
import com.android.systemui.wallpaper.utils.IntelligentCropHelper;
import com.android.systemui.wallpaper.utils.WhichChecker;
import com.android.systemui.wallpapers.ImageWallpaper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImageWallpaperCanvasHelper {
    public final String TAG;
    public Bitmap mBitmap;
    public Consumer mBitmapUpdateConsumer;
    public final Callback mCallback;
    public String mColorDecorFilterData;
    public final Context mContext;
    public final CoverWallpaper mCoverWallpaper;
    public int mCurDensityDpi;
    public int mCurrentUserId;
    public int mDeviceDisplayType;
    public final Rect mDimensions;
    public int mDisplayId;
    public int mHighlightFilterAmount;
    public final ImageSmartCropper mImageSmartCropper;
    public boolean mIsNightModeOn;
    public boolean mIsVirtualDisplay;
    public boolean mIsWcgContent;
    public final WallpaperLogger mLoggerWrapper;
    public int mOrientation;
    public final PowerManager mPm;
    public final AtomicInteger mRefCount;
    public int mSmartCropYOffset;
    public Bitmap mSubBitmap;
    public final SystemWallpaperColors mSystemWallpaperColors;
    public final WallpaperManager mWallpaperManager;
    public final Rect mSurfaceSize = new Rect();
    public boolean mIsSmartCropAllowed = true;
    public final float mYOffset = 0.5f;
    public int mLidState = -1;
    public boolean mIsFolded = false;
    public final HashMap mDownScaledSourceBitmapSet = new HashMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DownScaledSourceBitmap {
        public final Bitmap mBitmap;
        public final float mScale;

        public DownScaledSourceBitmap(int i, Bitmap bitmap, float f) {
            this.mBitmap = bitmap;
            this.mScale = f;
        }
    }

    public ImageWallpaperCanvasHelper(Context context, int i, WallpaperLogger wallpaperLogger, SystemWallpaperColors systemWallpaperColors, CoverWallpaper coverWallpaper, IntelligentCropHelper intelligentCropHelper, boolean z, Callback callback) {
        int i2;
        boolean z2;
        this.TAG = "ImageWallpaperCanvasHelper";
        this.mOrientation = -1;
        this.mCurDensityDpi = 0;
        this.mIsNightModeOn = false;
        this.mDeviceDisplayType = -1;
        this.mHighlightFilterAmount = -1;
        WallpaperManager wallpaperManager = (WallpaperManager) context.getSystemService(WallpaperManager.class);
        if (wallpaperManager == null) {
            Log.w("ImageWallpaperCanvasHelper", "WallpaperManager not available");
        }
        this.mSystemWallpaperColors = systemWallpaperColors;
        this.mContext = context;
        this.mLoggerWrapper = wallpaperLogger;
        this.mCurrentUserId = ActivityManager.getCurrentUser();
        this.mRefCount = new AtomicInteger();
        this.mDimensions = new Rect();
        this.mCoverWallpaper = coverWallpaper;
        this.mWallpaperManager = wallpaperManager;
        this.mCallback = callback;
        StringBuilder sb = new StringBuilder("ImageWallpaperCanvasHelper_");
        ImageWallpaper.CanvasEngine.AnonymousClass2 anonymousClass2 = (ImageWallpaper.CanvasEngine.AnonymousClass2) callback;
        anonymousClass2.getClass();
        int i3 = ImageWallpaper.CanvasEngine.$r8$clinit;
        if (ImageWallpaper.CanvasEngine.this.getWallpaperFlags() == 2) {
            i2 = 2;
        } else {
            i2 = 1;
        }
        sb.append(i2);
        String sb2 = sb.toString();
        this.TAG = sb2;
        this.mDisplayId = i;
        if (LsRune.COVER_VIRTUAL_DISPLAY) {
            this.mIsVirtualDisplay = WallpaperManager.isVirtualWallpaperDisplay(context, i);
        }
        boolean z3 = LsRune.WALLPAPER_CACHED_WALLPAPER;
        if (z3) {
            if (this.mDisplayId == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 && z3) {
                if (WallpaperUtils.isCachedWallpaperAvailable(1)) {
                    ((WallpaperLoggerImpl) wallpaperLogger).log(sb2, " Already exist in cache : main ");
                } else {
                    Bitmap bitmapFromWallpaperManager = getBitmapFromWallpaperManager(5);
                    if (bitmapFromWallpaperManager != null) {
                        ((WallpaperLoggerImpl) wallpaperLogger).log(sb2, "Load main bitmap save in cache " + bitmapFromWallpaperManager.getWidth() + "  , " + bitmapFromWallpaperManager.getHeight());
                        WallpaperUtils.setCachedWallpaper(bitmapFromWallpaperManager, 1);
                        WallpaperUtils.clearCachedSmartCroppedRect(1);
                    }
                }
                if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
                    if (WallpaperUtils.isCachedWallpaperAvailable(17)) {
                        ((WallpaperLoggerImpl) wallpaperLogger).log(sb2, " Already exist in cache :  sub");
                    } else {
                        Bitmap bitmapFromWallpaperManager2 = getBitmapFromWallpaperManager(17);
                        if (bitmapFromWallpaperManager2 != null) {
                            ((WallpaperLoggerImpl) wallpaperLogger).log(sb2, "Load sub bitmap save in cache " + bitmapFromWallpaperManager2.getWidth() + "  , " + bitmapFromWallpaperManager2.getHeight());
                            WallpaperUtils.setCachedWallpaper(bitmapFromWallpaperManager2, 17);
                            WallpaperUtils.clearCachedSmartCroppedRect(17);
                        }
                    }
                }
            }
        }
        this.mImageSmartCropper = new ImageSmartCropper(context, i);
        this.mCurDensityDpi = context.getResources().getConfiguration().densityDpi;
        this.mOrientation = context.getResources().getConfiguration().orientation;
        this.mSmartCropYOffset = -1000000;
        WallpaperUtils.clearCachedSmartCroppedRect(getCurrentWhich());
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
            int lidState = wallpaperManager.getLidState();
            this.mPm = (PowerManager) context.getSystemService("power");
            ((WallpaperLoggerImpl) wallpaperLogger).log(sb2, " initial lid state : " + convertLidStateToString(lidState) + " , " + context.getResources().getConfiguration().semDisplayDeviceType);
            int i4 = context.getResources().getConfiguration().semDisplayDeviceType;
            this.mDeviceDisplayType = i4;
            if (i4 == 5 && lidState != 0) {
                Log.i(sb2, " flex mode ".concat(convertLidStateToString(0)));
                lidState = 0;
            }
            setLidState(lidState);
        }
        this.mIsNightModeOn = (context.getResources().getConfiguration().uiMode & 32) != 0;
        int convertDisplayIdToMode = WhichChecker.convertDisplayIdToMode(i, context);
        if (convertDisplayIdToMode >= 0) {
            String filterData = ColorDecorFilterHelper.getFilterData(convertDisplayIdToMode | 1, context, context.getUserId());
            if (!TextUtils.isEmpty(filterData)) {
                this.mColorDecorFilterData = filterData;
            }
        }
        if (!(!TextUtils.isEmpty(this.mColorDecorFilterData))) {
            this.mHighlightFilterAmount = 60;
        }
    }

    public static String convertLidStateToString(int i) {
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
            if (i == 1) {
                return "LID_OPEN";
            }
            if (i == 0) {
                return "LID_CLOSED";
            }
            return "LID_UNKNOWN";
        }
        return "LID_UNKNOWN";
    }

    public final DownScaledSourceBitmap createDownScaledSourceBitmap(Bitmap bitmap, int i) {
        Bitmap createScaledBitmap;
        Point displaySize = getDisplaySize();
        int max = Math.max(displaySize.x, displaySize.y);
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        float max2 = ((int) Math.max(1024.0f, max * 0.5f)) / min;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("createDownScaledSourceBitmap: longDisplay=", max, ", shortBmpLen=", min, ", scale=");
        m.append(max2);
        String sb = m.toString();
        String str = this.TAG;
        Log.d(str, sb);
        if (max2 > 1.0f) {
            return null;
        }
        if (max2 == 1.0f) {
            createScaledBitmap = bitmap.copy(bitmap.getConfig(), false);
        } else {
            createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * max2), (int) (bitmap.getHeight() * max2), true);
        }
        if (createScaledBitmap != null && createScaledBitmap != bitmap) {
            return new DownScaledSourceBitmap(i, createScaledBitmap, max2);
        }
        Log.e(str, "createDownScaledSourceBitmap: Resized bitmap creation failed. org=" + bitmap + ", resized=" + createScaledBitmap);
        return null;
    }

    public final Bitmap getBitmapFromWallpaperManager(int i) {
        boolean z = LsRune.WALLPAPER_SUB_DISPLAY_MODE;
        Bitmap bitmap = null;
        WallpaperManager wallpaperManager = this.mWallpaperManager;
        if (z && wallpaperManager.semGetWallpaperType(i) != 0 && !wallpaperManager.isWaitingForUnlockUser(i, this.mCurrentUserId)) {
            Log.d(this.TAG, "getBitmapFromWallpaperManager: Wallpaper type is not image.");
            return null;
        }
        if (hasIntelligentCropHints(i)) {
            ParcelFileDescriptor wallpaperFile = wallpaperManager.getWallpaperFile(i, this.mCurrentUserId, false, 0);
            if (wallpaperFile != null) {
                bitmap = BitmapFactory.decodeFileDescriptor(wallpaperFile.getFileDescriptor());
                try {
                    wallpaperFile.close();
                } catch (IOException unused) {
                }
            }
        } else {
            bitmap = wallpaperManager.getBitmapAsUser(this.mCurrentUserId, false, i, false);
        }
        if (bitmap != null && bitmap.getByteCount() > RecordingCanvas.MAX_BITMAP_SIZE) {
            throw new RuntimeException("Wallpaper is too large! w=" + bitmap.getWidth() + ", h=" + bitmap.getHeight());
        }
        return bitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0011, code lost:
    
        if (r0 == 1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x001a, code lost:
    
        if (r4.mWallpaperManager.getLidState() == 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getCurrentWhich() {
        /*
            r4 = this;
            int r0 = r4.mDisplayId
            r1 = 1
            r2 = 2
            if (r0 != r2) goto L9
            r0 = 8
            goto L2b
        L9:
            boolean r3 = com.android.systemui.LsRune.WALLPAPER_SUB_DISPLAY_MODE
            if (r3 == 0) goto L1f
            boolean r3 = com.android.systemui.LsRune.WALLPAPER_SUB_WATCHFACE
            if (r3 == 0) goto L14
            if (r0 != r1) goto L2a
            goto L1c
        L14:
            android.app.WallpaperManager r0 = r4.mWallpaperManager
            int r0 = r0.getLidState()
            if (r0 != 0) goto L1f
        L1c:
            r0 = 16
            goto L2b
        L1f:
            boolean r0 = com.android.systemui.LsRune.COVER_VIRTUAL_DISPLAY
            if (r0 == 0) goto L2a
            boolean r0 = r4.mIsVirtualDisplay
            if (r0 == 0) goto L2a
            r0 = 32
            goto L2b
        L2a:
            r0 = 4
        L2b:
            com.android.systemui.wallpaper.canvaswallpaper.ImageWallpaperCanvasHelper$Callback r4 = r4.mCallback
            com.android.systemui.wallpapers.ImageWallpaper$CanvasEngine$2 r4 = (com.android.systemui.wallpapers.ImageWallpaper.CanvasEngine.AnonymousClass2) r4
            r4.getClass()
            int r3 = com.android.systemui.wallpapers.ImageWallpaper.CanvasEngine.$r8$clinit
            com.android.systemui.wallpapers.ImageWallpaper$CanvasEngine r4 = com.android.systemui.wallpapers.ImageWallpaper.CanvasEngine.this
            int r4 = r4.getWallpaperFlags()
            if (r4 != r2) goto L3d
            r1 = r2
        L3d:
            r4 = r1 & 3
            r4 = r4 | r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.canvaswallpaper.ImageWallpaperCanvasHelper.getCurrentWhich():int");
    }

    public final Integer getDimFilterColor(int i) {
        float[] wallpaperFilterColor = ImageDarkModeFilter.getWallpaperFilterColor(this.mContext, this.mSystemWallpaperColors.getColor(i));
        if (wallpaperFilterColor == null) {
            return null;
        }
        if (LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY && this.mDisplayId == 1) {
            return null;
        }
        return Integer.valueOf(Color.argb(wallpaperFilterColor[3], wallpaperFilterColor[0], wallpaperFilterColor[1], wallpaperFilterColor[2]));
    }

    public final Point getDisplaySize() {
        Display display = ((DisplayManager) this.mContext.getSystemService("display")).getDisplay(this.mDisplayId);
        if (display == null) {
            return null;
        }
        DisplayInfo displayInfo = new DisplayInfo();
        display.getDisplayInfo(displayInfo);
        return new Point(displayInfo.logicalWidth, displayInfo.logicalHeight);
    }

    public final Bitmap getFilterAppliedBitmap(Bitmap bitmap, int i) {
        boolean z;
        boolean z2;
        if (bitmap == null) {
            Log.w(this.TAG, "getFilterAppliedBitmap : bitmap == null || mHelper == null");
            return null;
        }
        if (!TextUtils.isEmpty(this.mColorDecorFilterData)) {
            bitmap = ColorDecorFilterHelper.createFilteredBitmap(bitmap, this.mColorDecorFilterData);
        } else {
            int i2 = this.mHighlightFilterAmount;
            if (i2 >= 0) {
                bitmap = HighlightFilterHelper.createFilteredBitmap(bitmap, i2);
            }
        }
        if (bitmap != null) {
            if (this.mDisplayId == 2) {
                z = true;
            } else {
                z = false;
            }
            if (!z && !this.mIsVirtualDisplay) {
                z2 = false;
            } else {
                z2 = true;
            }
            ImageSmartCropper imageSmartCropper = this.mImageSmartCropper;
            if (imageSmartCropper != null && !z2) {
                imageSmartCropper.updateSmartCropRectIfNeeded(bitmap, i);
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                Rect rect2 = imageSmartCropper.mCropResult;
                WallpaperManager wallpaperManager = this.mWallpaperManager;
                if (rect2 == null) {
                    wallpaperManager.semSetSmartCropRect(1, rect, rect);
                } else {
                    wallpaperManager.semSetSmartCropRect(1, rect, rect2);
                }
            }
        }
        return bitmap;
    }

    public final ArrayList getIntelligentCropHints(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        String string;
        boolean z4 = LsRune.WALLPAPER_SUB_WATCHFACE;
        boolean z5 = false;
        CoverWallpaper coverWallpaper = this.mCoverWallpaper;
        if (z4 || LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
            if ((i & 16) == 16) {
                z = true;
            } else {
                z = false;
            }
            if ((i & 32) == 32) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z && !z2) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (z3 && ((CoverWallpaperController) coverWallpaper).isCoverWallpaperRequired()) {
                z5 = true;
            }
        }
        if (z5) {
            string = ((CoverWallpaperController) coverWallpaper).getWallpaperIntelligentCrop();
            Log.i(this.TAG, KeyAttributes$$ExternalSyntheticOutline0.m("getIntelligentCropHints: From CoverWallpaper. json = ", string));
        } else {
            Bundle wallpaperExtras = this.mWallpaperManager.getWallpaperExtras(i, this.mCurrentUserId);
            if (wallpaperExtras == null) {
                return null;
            }
            string = wallpaperExtras.getString("cropHints");
        }
        return IntelligentCropHelper.parseCropHints(string);
    }

    public final boolean hasIntelligentCropHints(int i) {
        ArrayList intelligentCropHints = getIntelligentCropHints(i);
        if (intelligentCropHints != null && intelligentCropHints.size() > 0) {
            return true;
        }
        return false;
    }

    public final Bitmap loadBitmap(int i) {
        Bitmap bitmapFromWallpaperManager;
        boolean z;
        boolean z2;
        Rect nearestCropHint;
        WallpaperManager wallpaperManager = this.mWallpaperManager;
        if (wallpaperManager == null) {
            return null;
        }
        String str = "loadBitmap: displayId=" + this.mDisplayId + " which=" + i;
        String str2 = this.TAG;
        Log.i(str2, str);
        if (LsRune.WALLPAPER_PLAY_GIF) {
            boolean z3 = false;
            if ((i & 16) == 16) {
                z = true;
            } else {
                z = false;
            }
            if ((i & 32) == 32) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z || z2) {
                z3 = true;
            }
            if (z3) {
                CoverWallpaperController coverWallpaperController = (CoverWallpaperController) this.mCoverWallpaper;
                if (coverWallpaperController.isCoverWallpaperRequired()) {
                    Log.i(str2, "loadCachedBitmapByWhich: from cover wallpaper controller");
                    Bitmap wallpaperBitmap = coverWallpaperController.getWallpaperBitmap(!hasIntelligentCropHints(i));
                    if (hasIntelligentCropHints(i) && (nearestCropHint = IntelligentCropHelper.getNearestCropHint(getDisplaySize(), getIntelligentCropHints(i))) != null && wallpaperBitmap != null) {
                        Log.i(str2, "loadCachedBitmapByWhich: cropRect = " + nearestCropHint + ", bitmap w = " + wallpaperBitmap.getWidth() + ", h = " + wallpaperBitmap.getHeight());
                        if (wallpaperBitmap.getWidth() >= nearestCropHint.right && wallpaperBitmap.getHeight() >= nearestCropHint.bottom) {
                            bitmapFromWallpaperManager = Bitmap.createBitmap(wallpaperBitmap, nearestCropHint.left, nearestCropHint.top, nearestCropHint.width(), nearestCropHint.height());
                            return bitmapFromWallpaperManager;
                        }
                        return wallpaperBitmap;
                    }
                    return wallpaperBitmap;
                }
                if (wallpaperManager.semGetWallpaperType(i) == 3) {
                    Log.i(str2, "loadCachedBitmapByWhich: Just return null in case of custom pack.");
                    return null;
                }
            }
        }
        if (LsRune.WALLPAPER_CACHED_WALLPAPER) {
            if (WallpaperUtils.isCachedWallpaperAvailable(i)) {
                Log.i(str2, "loadCachedBitmapByWhich: get cached bitmap " + i);
                bitmapFromWallpaperManager = WallpaperUtils.getCachedWallpaper(i);
            } else {
                Log.i(str2, "loadCachedBitmapByWhich: from wallpaper manager " + i);
                bitmapFromWallpaperManager = getBitmapFromWallpaperManager(i);
                WallpaperUtils.clearCachedWallpaper(i);
                WallpaperUtils.setCachedWallpaper(bitmapFromWallpaperManager, i);
            }
        } else {
            bitmapFromWallpaperManager = getBitmapFromWallpaperManager(i);
        }
        return bitmapFromWallpaperManager;
    }

    public final Size reportSurfaceSize(int i) {
        Rect nearestCropHint = IntelligentCropHelper.getNearestCropHint(getDisplaySize(), getIntelligentCropHints(i));
        Rect rect = this.mSurfaceSize;
        if (nearestCropHint != null) {
            if (WhichChecker.isWatchFace(i) && ((CoverWallpaperController) this.mCoverWallpaper).isCoverWallpaperRequired()) {
                rect.set(new Rect(0, 0, getDisplaySize().x, getDisplaySize().y));
            } else {
                rect.set(new Rect(0, 0, nearestCropHint.width(), nearestCropHint.height()));
            }
        } else {
            useWallpaperBitmap(i, null);
            rect.set(this.mDimensions);
        }
        return new Size(rect.width(), rect.height());
    }

    public final void setLidState(int i) {
        boolean z = LsRune.WALLPAPER_SUB_DISPLAY_MODE;
        if (z) {
            this.mLidState = i;
            ImageSmartCropper imageSmartCropper = this.mImageSmartCropper;
            if (imageSmartCropper != null && z) {
                imageSmartCropper.mLidState = i;
            }
        }
    }

    public final void useWallpaperBitmap(int i, Consumer consumer) {
        boolean z;
        Bitmap bitmap;
        String str;
        String str2;
        boolean z2;
        int i2;
        this.mRefCount.incrementAndGet();
        synchronized (this.mRefCount) {
            int i3 = i & 60;
            if (i3 == 0) {
                try {
                    Log.e(this.TAG, "useWallpaperBitmap: mode is missing on which. which=" + i, new RuntimeException());
                } finally {
                }
            }
            boolean z3 = false;
            if (i3 == 16) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                bitmap = this.mSubBitmap;
            } else {
                bitmap = this.mBitmap;
            }
            if (bitmap == null) {
                bitmap = loadBitmap(i);
                if (WhichChecker.isWatchFace(i) && ((CoverWallpaperController) this.mCoverWallpaper).isCoverWallpaperRequired()) {
                    bitmap = BitmapUtils.fitToScreen(this.mContext, bitmap, true);
                }
                if (z) {
                    this.mSubBitmap = bitmap;
                } else {
                    this.mBitmap = bitmap;
                }
                this.mWallpaperManager.forgetLoadedWallpaper();
                if (bitmap != null) {
                    Log.i(this.TAG, "useWallpaperBitmap: w=" + bitmap.getWidth() + ", h=" + bitmap.getHeight());
                    this.mIsWcgContent = this.mWallpaperManager.wallpaperSupportsWcg(bitmap);
                    this.mDimensions.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    if (WhichChecker.isFlagEnabled(i, 1) && WhichChecker.isFlagEnabled(i, 2)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        i2 = i3 | 1;
                    } else {
                        i2 = i;
                    }
                    if (((DownScaledSourceBitmap) this.mDownScaledSourceBitmapSet.get(Integer.valueOf(i2))) == null) {
                        DownScaledSourceBitmap createDownScaledSourceBitmap = createDownScaledSourceBitmap(bitmap, i);
                        if (WhichChecker.isFlagEnabled(i, 1) && WhichChecker.isFlagEnabled(i, 2)) {
                            z3 = true;
                        }
                        if (z3) {
                            i = i3 | 1;
                        }
                        HashMap hashMap = this.mDownScaledSourceBitmapSet;
                        if (createDownScaledSourceBitmap == null) {
                            hashMap.remove(Integer.valueOf(i));
                        } else {
                            hashMap.put(Integer.valueOf(i), createDownScaledSourceBitmap);
                        }
                    }
                } else {
                    Log.w(this.TAG, "useWallpaperBitmap: Can't get bitmap");
                    this.mIsWcgContent = false;
                    if (WhichChecker.isFlagEnabled(i, 1) && WhichChecker.isFlagEnabled(i, 2)) {
                        z3 = true;
                    }
                    if (z3) {
                        i = i3 | 1;
                    }
                    this.mDownScaledSourceBitmapSet.remove(Integer.valueOf(i));
                }
            }
        }
        if (consumer != null) {
            consumer.accept(bitmap);
        }
        synchronized (this.mRefCount) {
            int decrementAndGet = this.mRefCount.decrementAndGet();
            if (decrementAndGet == 0 && bitmap != null) {
                if (!LsRune.WALLPAPER_CACHED_WALLPAPER) {
                    String str3 = this.TAG;
                    StringBuilder sb = new StringBuilder("useWallpaperBitmap: release 0x");
                    Bitmap bitmap2 = this.mBitmap;
                    if (bitmap2 != null) {
                        str = Integer.toHexString(bitmap2.hashCode());
                    } else {
                        str = "null";
                    }
                    sb.append(str);
                    sb.append(" , ");
                    Bitmap bitmap3 = this.mSubBitmap;
                    if (bitmap3 != null) {
                        str2 = Integer.toHexString(bitmap3.hashCode());
                    } else {
                        str2 = "null";
                    }
                    sb.append(str2);
                    sb.append(", refCount=");
                    sb.append(decrementAndGet);
                    Log.i(str3, sb.toString());
                    Bitmap bitmap4 = this.mBitmap;
                    if (bitmap4 != null) {
                        bitmap4.recycle();
                    }
                    Bitmap bitmap5 = this.mSubBitmap;
                    if (bitmap5 != null) {
                        bitmap5.recycle();
                    }
                }
                this.mBitmap = null;
                this.mSubBitmap = null;
            }
        }
    }
}
