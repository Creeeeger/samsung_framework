package com.android.systemui.keyguardimage;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.android.systemui.keyguardimage.ImageOptionCreator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardImageProvider extends ContentProvider {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ImageCreator[] mClockImageCreator;
    public ImageCreator[] mCreatorsForFixedShortcut;
    public ImageCreator[] mCreatorsForWallpaper;
    public final Handler mHandler = new Handler(Looper.getMainLooper());
    public boolean mWasShortcutEnabled = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MyWriter implements ContentProvider.PipeDataWriter {
        private MyWriter() {
        }

        public /* synthetic */ MyWriter(int i) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        
            if (r6.isLiveWallpaperEnabled() == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x008d, code lost:
        
            android.util.Log.w("KeyguardImageProvider", "writer, recycled");
            r10.recycle();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x008b, code lost:
        
            if (r6.isLiveWallpaperEnabled() == false) goto L42;
         */
        @Override // android.content.ContentProvider.PipeDataWriter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void writeDataToPipe(android.os.ParcelFileDescriptor r6, android.net.Uri r7, java.lang.String r8, android.os.Bundle r9, java.lang.Object r10) {
            /*
                r5 = this;
                android.graphics.Bitmap r10 = (android.graphics.Bitmap) r10
                java.lang.String r5 = "writer, recycled"
                java.lang.Class<com.android.systemui.util.SettingsHelper> r7 = com.android.systemui.util.SettingsHelper.class
                java.lang.String r9 = "KeyguardImageProvider"
                java.lang.String r0 = "writer, mimeType: "
                r1 = -1
                int r1 = com.android.systemui.util.LogUtil.startTime(r1)
                r2 = 1
                r3 = 0
                android.os.ParcelFileDescriptor$AutoCloseOutputStream r4 = new android.os.ParcelFileDescriptor$AutoCloseOutputStream     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
                r4.<init>(r6)     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5b
                r6.<init>(r0)     // Catch: java.lang.Throwable -> L5b
                r6.append(r8)     // Catch: java.lang.Throwable -> L5b
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5b
                android.util.Log.i(r9, r6)     // Catch: java.lang.Throwable -> L5b
                java.lang.String r6 = "image/jpeg"
                boolean r6 = r6.equals(r8)     // Catch: java.lang.Throwable -> L5b
                if (r6 == 0) goto L32
                android.graphics.Bitmap$CompressFormat r6 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.lang.Throwable -> L5b
                goto L34
            L32:
                android.graphics.Bitmap$CompressFormat r6 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L5b
            L34:
                r8 = 100
                r10.compress(r6, r8, r4)     // Catch: java.lang.Throwable -> L5b
                r4.close()     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
                int r6 = com.android.systemui.wallpaper.WallpaperUtils.sCurrentWhich
                android.graphics.Bitmap r6 = com.android.systemui.wallpaper.WallpaperUtils.getCachedWallpaper(r6)
                if (r6 != r10) goto L45
                goto L46
            L45:
                r2 = r3
            L46:
                java.lang.Object r6 = com.android.systemui.Dependency.get(r7)
                com.android.systemui.util.SettingsHelper r6 = (com.android.systemui.util.SettingsHelper) r6
                if (r2 != 0) goto L93
                boolean r7 = r10.isRecycled()
                if (r7 != 0) goto L93
                boolean r6 = r6.isLiveWallpaperEnabled()
                if (r6 != 0) goto L93
                goto L8d
            L5b:
                r6 = move-exception
                r4.close()     // Catch: java.lang.Throwable -> L60
                goto L64
            L60:
                r8 = move-exception
                r6.addSuppressed(r8)     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
            L64:
                throw r6     // Catch: java.lang.Throwable -> L65 java.lang.Exception -> L67
            L65:
                r6 = move-exception
                goto L9c
            L67:
                r6 = move-exception
                java.lang.String r8 = "MyWriter, fail to write to pipe"
                android.util.Log.w(r9, r8, r6)     // Catch: java.lang.Throwable -> L65
                int r6 = com.android.systemui.wallpaper.WallpaperUtils.sCurrentWhich
                android.graphics.Bitmap r6 = com.android.systemui.wallpaper.WallpaperUtils.getCachedWallpaper(r6)
                if (r6 != r10) goto L76
                goto L77
            L76:
                r2 = r3
            L77:
                java.lang.Object r6 = com.android.systemui.Dependency.get(r7)
                com.android.systemui.util.SettingsHelper r6 = (com.android.systemui.util.SettingsHelper) r6
                if (r2 != 0) goto L93
                if (r10 == 0) goto L93
                boolean r7 = r10.isRecycled()
                if (r7 != 0) goto L93
                boolean r6 = r6.isLiveWallpaperEnabled()
                if (r6 != 0) goto L93
            L8d:
                android.util.Log.w(r9, r5)
                r10.recycle()
            L93:
                java.lang.String r5 = "writing done"
                java.lang.Object[] r6 = new java.lang.Object[r3]
                com.android.systemui.util.LogUtil.endTime(r1, r9, r5, r6)
                return
            L9c:
                int r8 = com.android.systemui.wallpaper.WallpaperUtils.sCurrentWhich
                android.graphics.Bitmap r8 = com.android.systemui.wallpaper.WallpaperUtils.getCachedWallpaper(r8)
                if (r8 != r10) goto La5
                goto La6
            La5:
                r2 = r3
            La6:
                java.lang.Object r7 = com.android.systemui.Dependency.get(r7)
                com.android.systemui.util.SettingsHelper r7 = (com.android.systemui.util.SettingsHelper) r7
                if (r2 != 0) goto Lc2
                if (r10 == 0) goto Lc2
                boolean r8 = r10.isRecycled()
                if (r8 != 0) goto Lc2
                boolean r7 = r7.isLiveWallpaperEnabled()
                if (r7 != 0) goto Lc2
                android.util.Log.w(r9, r5)
                r10.recycle()
            Lc2:
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguardimage.KeyguardImageProvider.MyWriter.writeDataToPipe(android.os.ParcelFileDescriptor, android.net.Uri, java.lang.String, android.os.Bundle, java.lang.Object):void");
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        ImageOptionCreator.ImageOption createImageOption = ImageOptionCreator.createImageOption(getContext(), uri, true);
        if (createImageOption != null && createImageOption.type == 1) {
            return "image/jpeg";
        }
        return "image/png";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.ParcelFileDescriptor openFile(android.net.Uri r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguardimage.KeyguardImageProvider.openFile(android.net.Uri, java.lang.String):android.os.ParcelFileDescriptor");
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
