package com.android.systemui.pluginlock.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BitmapUtils {
    public static Bitmap fitToScreen(Context context, Bitmap bitmap, boolean z) {
        int i;
        float f;
        Point realScreenSize = WallpaperUtils.getRealScreenSize(context, z);
        Log.d("BitmapUtils", "fitToScreen() screenSize: " + realScreenSize + ", cover: " + z);
        int i2 = realScreenSize.x;
        if (i2 > 0 && (i = realScreenSize.y) > 0) {
            int i3 = context.getResources().getConfiguration().orientation;
            ListPopupWindow$$ExternalSyntheticOutline0.m("fitToScreen() orientation:", i3, "BitmapUtils");
            if (!z && i3 == 2) {
                i2 = realScreenSize.y;
                i = realScreenSize.x;
            }
            if (bitmap == null) {
                Bitmap createBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                new Canvas(createBitmap).drawColor(EmergencyPhoneWidget.BG_COLOR);
                Log.w("BitmapUtils", "fitToScreen() bitmap is null, return blank bitmap");
                return createBitmap;
            }
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float f2 = width;
            float f3 = height;
            float f4 = i2;
            float f5 = i;
            if (f4 / f5 > f2 / f3) {
                f = f4 / f2;
            } else {
                f = f5 / f3;
            }
            Log.d("BitmapUtils", "fitToScreen() scale:" + f);
            if (f == 1.0f) {
                return bitmap;
            }
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("fitToScreen() original width:", width, ", height:", height, "BitmapUtils");
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (f2 * f), (int) (f3 * f), true);
            if (createScaledBitmap != bitmap) {
                bitmap.recycle();
            }
            Log.d("BitmapUtils", "fitToScreen() resized width:" + createScaledBitmap.getWidth() + ", height:" + createScaledBitmap.getHeight());
            return createScaledBitmap;
        }
        Log.w("BitmapUtils", "fitToScreen, can not resize");
        return bitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0058, code lost:
    
        if (r6 == null) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap getBitmapFromPath(android.content.Context r9, java.lang.String r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.utils.BitmapUtils.getBitmapFromPath(android.content.Context, java.lang.String, boolean, boolean):android.graphics.Bitmap");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap getBitmapFromUri(android.content.Context r6, android.net.Uri r7, boolean r8, boolean r9) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "getBitmapFromPath() uri:"
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "BitmapUtils"
            android.util.Log.d(r1, r0)
            r0 = 0
            if (r7 == 0) goto L72
            android.content.ContentResolver r1 = r6.getContentResolver()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r2 = "r"
            android.os.ParcelFileDescriptor r7 = r1.openFileDescriptor(r7, r2)     // Catch: java.lang.Throwable -> L5b
            if (r7 == 0) goto L50
            java.io.FileDescriptor r1 = r7.getFileDescriptor()     // Catch: java.lang.Throwable -> L4e
            android.graphics.BitmapFactory$Options r2 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Throwable -> L4e
            r2.<init>()     // Catch: java.lang.Throwable -> L4e
            r3 = 1
            r2.inJustDecodeBounds = r3     // Catch: java.lang.Throwable -> L4e
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.ARGB_8888     // Catch: java.lang.Throwable -> L4e
            r2.inPreferredConfig = r3     // Catch: java.lang.Throwable -> L4e
            android.graphics.BitmapFactory.decodeFileDescriptor(r1, r0, r2)     // Catch: java.lang.Throwable -> L4e
            int r3 = r2.outWidth     // Catch: java.lang.Throwable -> L4e
            int r2 = r2.outHeight     // Catch: java.lang.Throwable -> L4e
            android.graphics.Rect r4 = new android.graphics.Rect     // Catch: java.lang.Throwable -> L4e
            r5 = 0
            r4.<init>(r5, r5, r3, r2)     // Catch: java.lang.Throwable -> L4e
            android.graphics.BitmapFactory$Options r2 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Throwable -> L4e
            r2.<init>()     // Catch: java.lang.Throwable -> L4e
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.ARGB_8888     // Catch: java.lang.Throwable -> L4e
            r2.inPreferredConfig = r3     // Catch: java.lang.Throwable -> L4e
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFileDescriptor(r1, r4, r2)     // Catch: java.lang.Throwable -> L4e
            goto L50
        L4e:
            r1 = move-exception
            goto L5d
        L50:
            if (r7 == 0) goto L72
            r7.close()     // Catch: java.io.IOException -> L56
            goto L72
        L56:
            r7 = move-exception
            r7.printStackTrace()
            goto L72
        L5b:
            r1 = move-exception
            r7 = r0
        L5d:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L66
            if (r7 == 0) goto L72
            r7.close()     // Catch: java.io.IOException -> L56
            goto L72
        L66:
            r6 = move-exception
            if (r7 == 0) goto L71
            r7.close()     // Catch: java.io.IOException -> L6d
            goto L71
        L6d:
            r7 = move-exception
            r7.printStackTrace()
        L71:
            throw r6
        L72:
            if (r8 == 0) goto L78
            android.graphics.Bitmap r0 = fitToScreen(r6, r0, r9)
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.utils.BitmapUtils.getBitmapFromUri(android.content.Context, android.net.Uri, boolean, boolean):android.graphics.Bitmap");
    }
}
