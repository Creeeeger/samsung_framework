package com.android.server.wallpaper;

import android.graphics.ImageDecoder;
import android.graphics.Rect;
import com.android.server.utils.TimingsTraceAndSlog;
import com.samsung.server.wallpaper.SemWallpaperManagerService;

/* loaded from: classes3.dex */
public class WallpaperCropper {
    public static final String TAG = "WallpaperCropper";
    public SemWallpaperManagerService mSemService;
    public final WallpaperDisplayHelper mWallpaperDisplayHelper;

    public WallpaperCropper(WallpaperDisplayHelper wallpaperDisplayHelper, SemWallpaperManagerService semWallpaperManagerService) {
        this.mWallpaperDisplayHelper = wallpaperDisplayHelper;
        this.mSemService = semWallpaperManagerService;
    }

    public void generateCrop(WallpaperData wallpaperData) {
        TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog(TAG);
        timingsTraceAndSlog.traceBegin("WPMS.generateCrop");
        generateCropInternal(wallpaperData);
        timingsTraceAndSlog.traceEnd();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0353 A[LOOP:0: B:67:0x034f->B:69:0x0353, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0355 A[EDGE_INSN: B:70:0x0355->B:71:0x0355 BREAK  A[LOOP:0: B:67:0x034f->B:69:0x0353], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0380 A[Catch: all -> 0x04e6, Exception -> 0x04ef, TryCatch #5 {Exception -> 0x04ef, all -> 0x04e6, blocks: (B:66:0x0347, B:67:0x034f, B:71:0x0355, B:73:0x0380, B:74:0x03b9, B:77:0x0468, B:79:0x04af, B:81:0x04b7), top: B:65:0x0347 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04af A[Catch: all -> 0x04e6, Exception -> 0x04ef, TryCatch #5 {Exception -> 0x04ef, all -> 0x04e6, blocks: (B:66:0x0347, B:67:0x034f, B:71:0x0355, B:73:0x0380, B:74:0x03b9, B:77:0x0468, B:79:0x04af, B:81:0x04b7), top: B:65:0x0347 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x04b7 A[Catch: all -> 0x04e6, Exception -> 0x04ef, TRY_LEAVE, TryCatch #5 {Exception -> 0x04ef, all -> 0x04e6, blocks: (B:66:0x0347, B:67:0x034f, B:71:0x0355, B:73:0x0380, B:74:0x03b9, B:77:0x0468, B:79:0x04af, B:81:0x04b7), top: B:65:0x0347 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0466  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void generateCropInternal(com.android.server.wallpaper.WallpaperData r18) {
        /*
            Method dump skipped, instructions count: 1324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wallpaper.WallpaperCropper.generateCropInternal(com.android.server.wallpaper.WallpaperData):void");
    }

    public static /* synthetic */ void lambda$generateCropInternal$0(int i, Rect rect, ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        imageDecoder.setTargetSampleSize(i);
        imageDecoder.setCrop(rect);
    }

    public final void scaleEstimateCrop(Rect rect, int i) {
        float f = 1.0f / i;
        if (f != 1.0f) {
            rect.left = (int) ((rect.left * f) + 0.5f);
            rect.top = (int) ((rect.top * f) + 0.5f);
            rect.right = (int) (rect.right * f);
            rect.bottom = (int) (rect.bottom * f);
        }
    }
}
