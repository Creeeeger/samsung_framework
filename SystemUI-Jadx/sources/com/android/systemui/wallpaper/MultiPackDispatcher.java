package com.android.systemui.wallpaper;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;
import com.android.systemui.pluginlock.PluginLockUtils;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.log.WallpaperLogger;
import com.android.systemui.wallpaper.log.WallpaperLoggerImpl;
import com.samsung.systemui.splugins.pluginlock.PluginLock;
import java.util.regex.Pattern;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiPackDispatcher {
    public static int mRetryCount;
    public static int mRetryCountSub;
    public final Context mContext;
    public MyHandler mHandler;
    public Uri mLastUri;
    public final WallpaperLogger mLoggerWrapper;
    public KeyguardWallpaperController.AnonymousClass9 mOnApplyMultipackListener = null;
    public final PluginLockUtils mPluginLockUtils;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void handleMessage(android.os.Message r20) {
            /*
                Method dump skipped, instructions count: 395
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.MultiPackDispatcher.MyHandler.handleMessage(android.os.Message):void");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: -$$Nest$mrequestImageWallpaper, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m2445$$Nest$mrequestImageWallpaper(com.android.systemui.wallpaper.MultiPackDispatcher r8, java.lang.String r9) {
        /*
            com.android.systemui.wallpaper.log.WallpaperLogger r0 = r8.mLoggerWrapper
            com.android.systemui.wallpaper.log.WallpaperLoggerImpl r0 = (com.android.systemui.wallpaper.log.WallpaperLoggerImpl) r0
            java.lang.String r1 = "MultiPackDispatcher"
            java.lang.String r2 = "requestImageWallpaper for subuser."
            r0.log(r1, r2)
            android.content.Context r8 = r8.mContext
            android.app.WallpaperManager r2 = android.app.WallpaperManager.getInstance(r8)
            java.io.File r8 = new java.io.File
            r8.<init>(r9)
            boolean r0 = r8.exists()
            r3 = 0
            if (r0 == 0) goto L46
            java.io.File[] r8 = r8.listFiles()
            if (r8 == 0) goto L40
            int r0 = r8.length
            if (r0 > 0) goto L28
            goto L40
        L28:
            int r0 = r8.length
            r4 = 0
        L2a:
            if (r4 >= r0) goto L46
            r5 = r8[r4]
            if (r5 == 0) goto L3d
            java.lang.String r6 = r5.getName()
            java.lang.String r7 = "1"
            boolean r6 = r6.contains(r7)
            if (r6 == 0) goto L3d
            goto L47
        L3d:
            int r4 = r4 + 1
            goto L2a
        L40:
            java.lang.String r8 = "getFirstImage list is empty."
            android.util.Log.e(r1, r8)
            goto L7c
        L46:
            r5 = r3
        L47:
            if (r5 != 0) goto L4f
            java.lang.String r8 = "getFirstImage firstFile is null"
            android.util.Log.d(r1, r8)
            goto L7c
        L4f:
            java.lang.String r8 = r5.getPath()
            java.lang.String r0 = "getFirstImage path = "
            java.lang.String r4 = ", firstFilePath"
            com.android.systemui.keyguard.CustomizationProvider$$ExternalSyntheticOutline0.m(r0, r9, r4, r8, r1)
            if (r9 == 0) goto L77
            java.io.File r9 = new java.io.File     // Catch: java.lang.Exception -> L73
            r9.<init>(r8)     // Catch: java.lang.Exception -> L73
            boolean r0 = r9.exists()     // Catch: java.lang.Exception -> L73
            if (r0 == 0) goto L77
            boolean r9 = r9.canRead()     // Catch: java.lang.Exception -> L73
            if (r9 == 0) goto L77
            android.graphics.Bitmap r8 = android.graphics.BitmapFactory.decodeFile(r8)     // Catch: java.lang.Exception -> L73
            r3 = r8
            goto L7c
        L73:
            r8 = move-exception
            r8.printStackTrace()
        L77:
            java.lang.String r8 = "getFirstImage return null"
            android.util.Log.e(r1, r8)
        L7c:
            if (r3 != 0) goto L85
            java.lang.String r8 = "requestImageWallpaper bitmap is null"
            android.util.Log.e(r1, r8)
            goto L9a
        L85:
            java.lang.String r8 = "requestImageWallpaper setBitmap"
            android.util.Log.d(r1, r8)     // Catch: java.io.IOException -> L96
            r4 = 0
            r5 = 0
            r6 = 2
            int r7 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()     // Catch: java.io.IOException -> L96
            r2.setBitmap(r3, r4, r5, r6, r7)     // Catch: java.io.IOException -> L96
            goto L9a
        L96:
            r8 = move-exception
            r8.printStackTrace()
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.MultiPackDispatcher.m2445$$Nest$mrequestImageWallpaper(com.android.systemui.wallpaper.MultiPackDispatcher, java.lang.String):void");
    }

    public MultiPackDispatcher(Context context, WallpaperLogger wallpaperLogger, PluginLockUtils pluginLockUtils) {
        this.mContext = context;
        this.mLoggerWrapper = wallpaperLogger;
        this.mPluginLockUtils = pluginLockUtils;
    }

    public static boolean enableDlsIfDisabled(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            int applicationEnabledSetting = packageManager.getApplicationEnabledSetting("com.samsung.android.dynamiclock");
            if (applicationEnabledSetting == 2) {
                Log.d("MultiPackDispatcher", "enableDlsIfDisabled: state = " + applicationEnabledSetting);
                packageManager.setApplicationEnabledSetting("com.samsung.android.dynamiclock", 1, 0);
                if (packageManager.getApplicationEnabledSetting("com.samsung.android.dynamiclock") == 2) {
                    Log.e("MultiPackDispatcher", "enableDlsIfDisabled: Failed to enable dls.");
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0.m(e, new StringBuilder("enableDlsIfDisabled: "), "MultiPackDispatcher");
            return false;
        }
    }

    public static int getContentType(int i, String str) {
        boolean z;
        if ((i & 48) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (Pattern.matches("^\\S+.(?i)(gif)$", str)) {
            if (z) {
                return 22;
            }
            return 12;
        }
        if (Pattern.matches("^\\S+.(?i)(jpg|jpeg|png)$", str)) {
            if (z) {
                return 21;
            }
            return 11;
        }
        if (z) {
            return 23;
        }
        return 13;
    }

    public final boolean startMultipack(int i) {
        boolean z;
        Context context = this.mContext;
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
        String m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("startMultipack: which =", i);
        WallpaperLoggerImpl wallpaperLoggerImpl = (WallpaperLoggerImpl) this.mLoggerWrapper;
        wallpaperLoggerImpl.log("MultiPackDispatcher", m);
        int i2 = 0;
        if (!enableDlsIfDisabled(context)) {
            Log.e("MultiPackDispatcher", "startMultipack: Cannot start multipack. DLS is diabled.");
            return false;
        }
        Uri semGetUri = wallpaperManager.semGetUri(i);
        if (semGetUri == null) {
            wallpaperLoggerImpl.log("MultiPackDispatcher", "startMultipack: uri is null., uid = " + context.getUserId());
            return false;
        }
        if (this.mHandler == null) {
            this.mHandler = new MyHandler(Looper.myLooper());
        }
        this.mLastUri = semGetUri;
        String m2 = KeyAttributes$$ExternalSyntheticOutline0.m("/data/overlays/homewallpaper/", semGetUri.getHost() + semGetUri.getPath());
        wallpaperLoggerImpl.log("MultiPackDispatcher", "startMultipack: uri = " + semGetUri + ", fullPath = " + m2 + ", which = " + i);
        int i3 = i & 48;
        if (i3 != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            mRetryCountSub = 0;
        } else {
            mRetryCount = 0;
        }
        Message message = new Message();
        Bundle bundle = new Bundle();
        message.what = 0;
        if (i3 != 0) {
            i2 = 1;
        }
        bundle.putInt(PluginLock.KEY_SCREEN, i2);
        bundle.putString("wallpaper_path", m2);
        bundle.putParcelable("uri", semGetUri);
        message.setData(bundle);
        this.mHandler.sendMessageDelayed(message, 100L);
        return true;
    }
}
