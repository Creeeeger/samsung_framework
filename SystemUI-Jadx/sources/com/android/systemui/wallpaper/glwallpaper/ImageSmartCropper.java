package com.android.systemui.wallpaper.glwallpaper;

import android.app.WindowConfiguration;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.hardware.display.SemWifiDisplayStatus;
import android.util.Log;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.WindowManager;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.wallpaper.WallpaperUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImageSmartCropper {
    public final Context mContext;
    public final int mDisplayId;
    public boolean mFromLandScape;
    public Rect mCropResult = null;
    public Display mDefaultDisplay = null;
    public final DisplayInfo mTmpDisplayInfo = new DisplayInfo();
    public int mLidState = 1;

    public ImageSmartCropper(Context context, int i) {
        this.mContext = context;
        this.mDisplayId = i;
    }

    public static void checkDisplaySize(Configuration configuration) {
        int i;
        WindowConfiguration windowConfiguration = configuration.windowConfiguration;
        int width = windowConfiguration.getBounds().width();
        int height = windowConfiguration.getBounds().height();
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && configuration.semDisplayDeviceType == 5) {
            i = 17;
        } else {
            i = 1;
        }
        Rect cachedSmartCroppedRect = WallpaperUtils.getCachedSmartCroppedRect(i);
        if (cachedSmartCroppedRect != null) {
            float f = width;
            float f2 = height;
            float f3 = f / f2;
            float f4 = f2 / f;
            float width2 = cachedSmartCroppedRect.width() / cachedSmartCroppedRect.height();
            if (Math.abs(f3 - width2) > 0.3f && Math.abs(f4 - width2) > 0.3f) {
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("Smart Crop ratio different display size.So clear cache. which : ", i, " display w: ", width, " , h: ");
                m.append(height);
                m.append(", cropRect : ");
                m.append(cachedSmartCroppedRect);
                Log.i("ImageSmartCropper", m.toString());
                WallpaperUtils.clearCachedSmartCroppedRect(i);
            }
        }
    }

    public final DisplayInfo getDefaultDisplayInfo() {
        if (this.mDefaultDisplay == null) {
            this.mDefaultDisplay = ((WindowManager) this.mContext.getSystemService(WindowManager.class)).getDefaultDisplay();
        }
        Display display = this.mDefaultDisplay;
        DisplayInfo displayInfo = this.mTmpDisplayInfo;
        display.getDisplayInfo(displayInfo);
        return displayInfo;
    }

    public final boolean needToExtractSmartCropRect(int i, int i2, int i3) {
        boolean z;
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            boolean z2 = WallpaperUtils.mIsEmergencyMode;
            SemWifiDisplayStatus semGetWifiDisplayStatus = ((DisplayManager) this.mContext.getSystemService("display")).semGetWifiDisplayStatus();
            if (semGetWifiDisplayStatus != null && semGetWifiDisplayStatus.getActiveDisplayState() == 2 && semGetWifiDisplayStatus.getConnectedState() == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Log.w("ImageSmartCropper", "SmartView is connected (fixed ratio), so extract rect");
                return true;
            }
            Log.d("ImageSmartCropper", "SmartView is not connected");
            if ((!WallpaperUtils.isSubDisplay(i) && !WallpaperUtils.isMainScreenRatio(i2, i3)) || (WallpaperUtils.isSubDisplay(i) && WallpaperUtils.isMainScreenRatio(i2, i3))) {
                Log.w("ImageSmartCropper", "Display info is not updated yet.");
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean needToSmartCrop() {
        /*
            r6 = this;
            boolean r0 = com.android.systemui.wallpaper.WallpaperUtils.isDexStandAloneMode()
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            android.content.Context r0 = r6.mContext
            android.content.ContentResolver r2 = r0.getContentResolver()
            java.lang.String r3 = "sehome_portrait_mode_only"
            r4 = 1
            int r2 = android.provider.Settings.Global.getInt(r2, r3, r4)
            if (r2 != r4) goto L19
            return r1
        L19:
            android.content.ContentResolver r0 = r0.getContentResolver()
            boolean r2 = com.android.systemui.LsRune.WALLPAPER_SUB_DISPLAY_MODE
            if (r2 == 0) goto L37
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = " getSettingKey "
            r2.<init>(r3)
            int r3 = r6.mLidState
            java.lang.String r5 = "ImageSmartCropper"
            androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0.m(r2, r3, r5)
            int r2 = r6.mLidState
            if (r2 != 0) goto L37
            java.lang.String r2 = "sub_display_system_wallpaper_transparency"
            goto L39
        L37:
            java.lang.String r2 = "android.wallpaper.settings_systemui_transparency"
        L39:
            int r6 = r6.mDisplayId
            r3 = 2
            if (r6 != r3) goto L40
            java.lang.String r2 = "dex_system_wallpaper_transparency"
        L40:
            int r6 = android.provider.Settings.System.getInt(r0, r2, r4)
            if (r6 != 0) goto L47
            r1 = r4
        L47:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.glwallpaper.ImageSmartCropper.needToSmartCrop():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b6 A[Catch: OutOfMemoryError -> 0x0208, LinkageError -> 0x021f, Exception -> 0x0236, TryCatch #2 {Exception -> 0x0236, LinkageError -> 0x021f, OutOfMemoryError -> 0x0208, blocks: (B:11:0x003e, B:13:0x0044, B:15:0x004a, B:17:0x0050, B:20:0x0097, B:27:0x00b6, B:28:0x00bb, B:31:0x00c2, B:32:0x00f6, B:34:0x00fc, B:38:0x0156, B:41:0x0159, B:43:0x015e, B:45:0x0186, B:46:0x01a4, B:47:0x01ad, B:49:0x01d5, B:50:0x01ea, B:52:0x01da, B:54:0x01de, B:56:0x01e6, B:57:0x019f, B:59:0x00b9), top: B:9:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fc A[Catch: OutOfMemoryError -> 0x0208, LinkageError -> 0x021f, Exception -> 0x0236, TryCatch #2 {Exception -> 0x0236, LinkageError -> 0x021f, OutOfMemoryError -> 0x0208, blocks: (B:11:0x003e, B:13:0x0044, B:15:0x004a, B:17:0x0050, B:20:0x0097, B:27:0x00b6, B:28:0x00bb, B:31:0x00c2, B:32:0x00f6, B:34:0x00fc, B:38:0x0156, B:41:0x0159, B:43:0x015e, B:45:0x0186, B:46:0x01a4, B:47:0x01ad, B:49:0x01d5, B:50:0x01ea, B:52:0x01da, B:54:0x01de, B:56:0x01e6, B:57:0x019f, B:59:0x00b9), top: B:9:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x015e A[Catch: OutOfMemoryError -> 0x0208, LinkageError -> 0x021f, Exception -> 0x0236, TryCatch #2 {Exception -> 0x0236, LinkageError -> 0x021f, OutOfMemoryError -> 0x0208, blocks: (B:11:0x003e, B:13:0x0044, B:15:0x004a, B:17:0x0050, B:20:0x0097, B:27:0x00b6, B:28:0x00bb, B:31:0x00c2, B:32:0x00f6, B:34:0x00fc, B:38:0x0156, B:41:0x0159, B:43:0x015e, B:45:0x0186, B:46:0x01a4, B:47:0x01ad, B:49:0x01d5, B:50:0x01ea, B:52:0x01da, B:54:0x01de, B:56:0x01e6, B:57:0x019f, B:59:0x00b9), top: B:9:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d5 A[Catch: OutOfMemoryError -> 0x0208, LinkageError -> 0x021f, Exception -> 0x0236, TryCatch #2 {Exception -> 0x0236, LinkageError -> 0x021f, OutOfMemoryError -> 0x0208, blocks: (B:11:0x003e, B:13:0x0044, B:15:0x004a, B:17:0x0050, B:20:0x0097, B:27:0x00b6, B:28:0x00bb, B:31:0x00c2, B:32:0x00f6, B:34:0x00fc, B:38:0x0156, B:41:0x0159, B:43:0x015e, B:45:0x0186, B:46:0x01a4, B:47:0x01ad, B:49:0x01d5, B:50:0x01ea, B:52:0x01da, B:54:0x01de, B:56:0x01e6, B:57:0x019f, B:59:0x00b9), top: B:9:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01da A[Catch: OutOfMemoryError -> 0x0208, LinkageError -> 0x021f, Exception -> 0x0236, TryCatch #2 {Exception -> 0x0236, LinkageError -> 0x021f, OutOfMemoryError -> 0x0208, blocks: (B:11:0x003e, B:13:0x0044, B:15:0x004a, B:17:0x0050, B:20:0x0097, B:27:0x00b6, B:28:0x00bb, B:31:0x00c2, B:32:0x00f6, B:34:0x00fc, B:38:0x0156, B:41:0x0159, B:43:0x015e, B:45:0x0186, B:46:0x01a4, B:47:0x01ad, B:49:0x01d5, B:50:0x01ea, B:52:0x01da, B:54:0x01de, B:56:0x01e6, B:57:0x019f, B:59:0x00b9), top: B:9:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b9 A[Catch: OutOfMemoryError -> 0x0208, LinkageError -> 0x021f, Exception -> 0x0236, TryCatch #2 {Exception -> 0x0236, LinkageError -> 0x021f, OutOfMemoryError -> 0x0208, blocks: (B:11:0x003e, B:13:0x0044, B:15:0x004a, B:17:0x0050, B:20:0x0097, B:27:0x00b6, B:28:0x00bb, B:31:0x00c2, B:32:0x00f6, B:34:0x00fc, B:38:0x0156, B:41:0x0159, B:43:0x015e, B:45:0x0186, B:46:0x01a4, B:47:0x01ad, B:49:0x01d5, B:50:0x01ea, B:52:0x01da, B:54:0x01de, B:56:0x01e6, B:57:0x019f, B:59:0x00b9), top: B:9:0x003c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSmartCropRect(android.graphics.Bitmap r21, int r22) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.glwallpaper.ImageSmartCropper.updateSmartCropRect(android.graphics.Bitmap, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
    
        if (android.text.TextUtils.isEmpty(new com.samsung.android.wallpaper.utils.SemWallpaperProperties(r5, r9, r5.getUserId()).getImageCategory()) == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSmartCropRectIfNeeded(android.graphics.Bitmap r8, int r9) {
        /*
            r7 = this;
            android.graphics.Rect r0 = com.android.systemui.wallpaper.WallpaperUtils.getCachedSmartCroppedRect(r9)
            r7.mCropResult = r0
            int r0 = r8.getWidth()
            int r1 = r8.getHeight()
            r2 = 1
            r3 = 0
            if (r0 <= r1) goto L15
            r7.mFromLandScape = r2
            goto L17
        L15:
            r7.mFromLandScape = r3
        L17:
            java.lang.String r0 = " updateSmartCropRectIfNeeded: which = "
            java.lang.String r1 = ", landscape = "
            java.lang.StringBuilder r0 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r0, r9, r1)
            boolean r1 = r7.mFromLandScape
            r0.append(r1)
            java.lang.String r1 = " , rect = "
            r0.append(r1)
            android.graphics.Rect r1 = r7.mCropResult
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "ImageSmartCropper"
            android.util.Log.i(r1, r0)
            android.graphics.Rect r0 = r7.mCropResult
            if (r0 != 0) goto L41
            boolean r0 = r7.mFromLandScape
            if (r0 != 0) goto L41
            r0 = r2
            goto L42
        L41:
            r0 = r3
        L42:
            if (r0 == 0) goto L6a
            boolean r4 = r7.needToSmartCrop()
            if (r4 != 0) goto L4b
            goto L60
        L4b:
            com.samsung.android.wallpaper.utils.SemWallpaperProperties r4 = new com.samsung.android.wallpaper.utils.SemWallpaperProperties
            android.content.Context r5 = r7.mContext
            int r6 = r5.getUserId()
            r4.<init>(r5, r9, r6)
            java.lang.String r4 = r4.getImageCategory()
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L61
        L60:
            r2 = r3
        L61:
            if (r2 != 0) goto L64
            goto L6a
        L64:
            if (r0 == 0) goto L69
            r7.updateSmartCropRect(r8, r9)
        L69:
            return
        L6a:
            java.lang.String r7 = "updateSmartCropRectIfNeeded: Do not update SmartCrop."
            android.util.Log.i(r1, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.glwallpaper.ImageSmartCropper.updateSmartCropRectIfNeeded(android.graphics.Bitmap, int):void");
    }
}
