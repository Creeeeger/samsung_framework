package com.android.systemui.wallpaper;

import android.app.SemWallpaperColors;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.content.APKContents;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Debug;
import android.os.IBinder;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockPatternUtils;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.widget.SystemUIWidgetCallback;
import com.android.systemui.widget.SystemUIWidgetUtil;
import com.samsung.android.view.SemWindowManager;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WallpaperUtils {
    public static boolean mIsEmergencyMode = false;
    public static boolean mIsUltraPowerSavingMode = false;
    public static SettingsHelper mSettingsHelper = null;
    public static boolean sDrawState = false;
    public static float sScreenDensityRateFromBase;
    public static final boolean[] mIsLiveWallpaper = {false, false};
    public static float sLastAmount = 0.0f;
    public static boolean mIsAdaptiveColorMode = false;
    public static boolean mIsAdaptiveColorModeSub = false;
    public static int sCurrentWhich = 2;
    public static final SparseArray sCachedWallpaper = new SparseArray();
    public static final SparseArray sCachedSmartCroppedRect = new SparseArray();
    public static final SparseArray sCachedWallpaperColors = new SparseArray();
    public static final int[] sWallpaperType = {-1, -1};

    static {
        Debug.semIsProductDev();
    }

    public static Bitmap applyPreviewVisibility(Context context, Bitmap bitmap, Bitmap bitmap2) {
        int fontColorRgb = SemWallpaperColors.fromBitmap(context, bitmap, 2, false, (Rect[]) null).get(32L).getFontColorRgb();
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(fontColorRgb, PorterDuff.Mode.SRC_ATOP);
        Bitmap copy = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(copy);
        Paint paint = new Paint();
        paint.setColorFilter(porterDuffColorFilter);
        canvas.drawBitmap(copy, new Rect(0, 0, copy.getWidth(), copy.getHeight() / 2), new Rect(0, 0, copy.getWidth(), copy.getHeight() / 2), paint);
        Log.d("WallpaperUtils", "applyPreviewVisibility 0x" + Integer.toHexString(fontColorRgb));
        return copy;
    }

    public static void clearCachedSmartCroppedRect(int i) {
        sCachedSmartCroppedRect.put(i, null);
    }

    public static void clearCachedWallpaper(int i) {
        if (isCachedWallpaperAvailable(i)) {
            setCachedWallpaper(null, i);
        }
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int i, int i2) {
        float f;
        if (bitmap != null && !bitmap.isRecycled()) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float f2 = width;
            float f3 = f2 / 2.0f;
            float f4 = height;
            float f5 = f4 / 2.0f;
            if (width * i2 > i * height) {
                f = (i2 / f4) * 1.0f;
            } else {
                f = (i / f2) * 1.0f;
            }
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("metricsHeight=", i2, " metricsWidth=", i, "WallpaperUtils");
            float f6 = (i * 1.0f) / f;
            float f7 = (i2 * 1.0f) / f;
            float f8 = f3 - (f6 / 2.0f);
            float f9 = 0.0f;
            if (f8 < 0.0f) {
                f8 = 0.0f;
            }
            float f10 = f5 - (f7 / 2.0f);
            if (f10 >= 0.0f) {
                f9 = f10;
            }
            Log.d("WallpaperUtils", "widthOrigin = " + width);
            Log.d("WallpaperUtils", "heightOrigin = " + height);
            Log.d("WallpaperUtils", "scale = " + f);
            Log.d("WallpaperUtils", "centerX = " + f3);
            Log.d("WallpaperUtils", "centerY = " + f5);
            Log.d("WallpaperUtils", "startX = " + f8);
            Log.d("WallpaperUtils", "startY = " + f9);
            Log.d("WallpaperUtils", "width = " + f6);
            Log.d("WallpaperUtils", "height = " + f7);
            if (Math.round(f8) == 0 && Math.round(f9) == 0 && width == Math.round(f6) && height == Math.round(f7)) {
                Log.d("WallpaperUtils", "It doesn't need to crop bitmap");
                return bitmap;
            }
            if (Math.round(f6) >= 1 && Math.round(f7) >= 1 && i >= 1 && i2 >= 1) {
                if (Math.round(f8) + Math.round(f6) <= width) {
                    if (Math.round(f9) + Math.round(f7) <= height) {
                        Log.d("WallpaperUtils", "Cropping...");
                        return Bitmap.createBitmap(bitmap, Math.round(f8), Math.round(f9), Math.round(f6), Math.round(f7));
                    }
                }
                Log.d("WallpaperUtils", "Calculated crop size error");
                return null;
            }
            Log.d("WallpaperUtils", "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1");
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|2|3|4|(6:8|9|(4:11|12|13|(3:15|16|(1:18)))(2:37|(1:41))|23|24|25)|42|9|(0)(0)|23|24|25|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008b, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008c, code lost:
    
        r11.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap decodeStreamConsiderQMG(java.io.InputStream r11, android.graphics.Rect r12, android.graphics.BitmapFactory.Options r13) {
        /*
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream
            r0.<init>(r11)
            r1 = 2
            r0.mark(r1)
            r2 = 0
            r3 = 1
            int r4 = r0.read()     // Catch: java.io.IOException -> L20
            int r5 = r0.read()     // Catch: java.io.IOException -> L20
            r0.reset()     // Catch: java.io.IOException -> L20
            r6 = 81
            if (r4 != r6) goto L24
            r4 = 71
            if (r5 != r4) goto L24
            r4 = r3
            goto L25
        L20:
            r4 = move-exception
            r4.printStackTrace()
        L24:
            r4 = r2
        L25:
            java.lang.String r5 = "decodeStream() bitmap is null"
            java.lang.String r6 = "WallpaperUtils"
            if (r4 == 0) goto L77
            r4 = 0
            java.lang.String r7 = "android.graphics.BitmapFactory"
            java.lang.Class r7 = java.lang.Class.forName(r7)     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.String r8 = "decodeStreamQMG"
            r9 = 3
            java.lang.Class[] r9 = new java.lang.Class[r9]     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.Class<java.io.InputStream> r10 = java.io.InputStream.class
            r9[r2] = r10     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.Class<android.graphics.Rect> r2 = android.graphics.Rect.class
            r9[r3] = r2     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.Class<android.graphics.BitmapFactory$Options> r2 = android.graphics.BitmapFactory.Options.class
            r9[r1] = r2     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.reflect.Method r1 = r7.getMethod(r8, r9)     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            r1.setAccessible(r3)     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.Object[] r2 = new java.lang.Object[]{r0, r12, r13}     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            java.lang.Object r1 = r1.invoke(r4, r2)     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1     // Catch: java.lang.Exception -> L63 java.lang.NoSuchMethodException -> L69
            if (r1 != 0) goto L84
            boolean r2 = r13.inJustDecodeBounds     // Catch: java.lang.Exception -> L60 java.lang.NoSuchMethodException -> L69
            if (r2 != 0) goto L84
            java.lang.String r2 = "decodeStreamQMG() bitmap is null"
            android.util.Log.w(r6, r2)     // Catch: java.lang.Exception -> L60 java.lang.NoSuchMethodException -> L69
            goto L84
        L60:
            r12 = move-exception
            r4 = r1
            goto L64
        L63:
            r12 = move-exception
        L64:
            r12.printStackTrace()
            r1 = r4
            goto L84
        L69:
            android.graphics.Bitmap r1 = android.graphics.BitmapFactory.decodeStream(r0, r12, r13)
            if (r1 != 0) goto L84
            boolean r12 = r13.inJustDecodeBounds
            if (r12 != 0) goto L84
            android.util.Log.w(r6, r5)
            goto L84
        L77:
            android.graphics.Bitmap r1 = android.graphics.BitmapFactory.decodeStream(r0, r12, r13)
            if (r1 != 0) goto L84
            boolean r12 = r13.inJustDecodeBounds
            if (r12 != 0) goto L84
            android.util.Log.w(r6, r5)
        L84:
            r0.close()     // Catch: java.lang.Exception -> L8b
            r11.close()     // Catch: java.lang.Exception -> L8b
            goto L8f
        L8b:
            r11 = move-exception
            r11.printStackTrace()
        L8f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.WallpaperUtils.decodeStreamConsiderQMG(java.io.InputStream, android.graphics.Rect, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
    }

    public static Bitmap getBlurredBitmap(Context context, Bitmap bitmap, int i, int i2) {
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config != config2) {
            bitmap = bitmap.copy(config2, true);
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int round = Math.round(i * 0.1f);
        int round2 = Math.round(i2 * 0.1f);
        if (width > round || height > round2) {
            bitmap = Bitmap.createScaledBitmap(bitmap, round, round2, true);
        }
        try {
            RenderScript create = RenderScript.create(context);
            Allocation createFromBitmap = Allocation.createFromBitmap(create, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
            Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            create2.setRadius(25.0f);
            create2.setInput(createFromBitmap);
            create2.forEach(createTyped);
            createTyped.copyTo(bitmap);
            create.destroy();
            createFromBitmap.destroy();
            createTyped.destroy();
            create2.destroy();
        } catch (RSRuntimeException e) {
            e.printStackTrace();
        }
        return bitmap;
    }

    public static SemWallpaperColors getCachedSemWallpaperColors(boolean z) {
        int i;
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            SparseArray sparseArray = sCachedWallpaperColors;
            if (sparseArray.size() > 0) {
                if (z) {
                    i = 16;
                } else {
                    i = 4;
                }
                return (SemWallpaperColors) sparseArray.get(i);
            }
        }
        return SemWallpaperColors.getBlankWallpaperColors();
    }

    public static Rect getCachedSmartCroppedRect(int i) {
        return (Rect) sCachedSmartCroppedRect.get(i);
    }

    public static Bitmap getCachedWallpaper(int i) {
        return (Bitmap) sCachedWallpaper.get(i & (-5));
    }

    public static int getFolderStateBasedWhich(int i, Context context) {
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
            if (wallpaperManager.getLidState() == 0) {
                return i | 16;
            }
            return i | 4;
        }
        return i;
    }

    public static Size getLogicalDisplaySize(Context context) {
        boolean z;
        int i;
        Configuration configuration = context.getResources().getConfiguration();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i2 = configuration.orientation;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i3 = point.x;
        int i4 = point.y;
        if (configuration.semMobileKeyboardCovered == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = displayMetrics.widthPixels;
        } else if (i2 == 1) {
            i = i3;
        } else {
            i = i4;
        }
        if (z) {
            i3 = displayMetrics.heightPixels;
        } else if (i2 == 1) {
            i3 = i4;
        }
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("getLogicalDisplaySize: ", i, " x ", i3, " dm ");
        m.append(displayMetrics.widthPixels);
        m.append(" x ");
        m.append(displayMetrics.heightPixels);
        m.append(" orientation:");
        m.append(i2);
        Log.d("WallpaperUtils", m.toString());
        return new Size(i, i3);
    }

    public static Size[] getPhysicalDisplaySizes(Display... displayArr) {
        Size[] sizeArr = new Size[displayArr.length];
        try {
            Object invoke = Class.forName("android.view.IWindowManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("checkService", String.class).invoke(null, "window"));
            Method method = Class.forName("android.view.IWindowManager").getMethod("getInitialDisplaySize", Integer.TYPE, Point.class);
            for (int i = 0; i < displayArr.length; i++) {
                int displayId = displayArr[i].getDisplayId();
                Point point = new Point();
                method.invoke(invoke, Integer.valueOf(displayId), point);
                Log.i("WallpaperUtils", "getPhysicalDisplaySizes: " + displayId + " " + point);
                sizeArr[i] = new Size(point.x, point.y);
            }
            return sizeArr;
        } catch (Exception e) {
            Log.e("WallpaperUtils", "getPhysicalDisplaySizes: ", e);
            return null;
        }
    }

    public static Point getRealScreenSize(Context context, boolean z) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        Point point = new Point();
        if (z) {
            if (LsRune.WALLPAPER_SUB_WATCHFACE) {
                Display[] displays = displayManager.getDisplays("com.samsung.android.hardware.display.category.BUILTIN");
                for (Display display : displays) {
                    if (display.getDisplayId() == 1) {
                        display.getRealSize(point);
                    }
                }
            } else if (LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
                Display[] displays2 = displayManager.getDisplays("com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY");
                if (displays2.length > 0) {
                    displays2[0].getRealSize(point);
                }
            }
        } else {
            context.getDisplay().getRealSize(point);
        }
        LogUtil.i("WallpaperUtils", "getScreenSize: " + point, new Object[0]);
        return point;
    }

    public static Bitmap getRotatedBitmap(Bitmap bitmap, int i) {
        int i2;
        if (i == 1) {
            i2 = 90;
        } else {
            i2 = 270;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(-i2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap getScreenShot(Context context, int i, int i2, int i3, int i4) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        SemWindowManager semWindowManager = SemWindowManager.getInstance();
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("getScreenShot: start, width = ", i, " , height = ", i2, " , mRotation = ");
        m.append(i3);
        Log.i("WallpaperUtils", m.toString());
        Bitmap screenshot = semWindowManager.screenshot(windowManager.getDefaultDisplay().getDisplayId(), i4, false, new Rect(0, 0, 0, 0), Math.min(i, i2), Math.max(i, i2), true, 0, true);
        Log.i("WallpaperUtils", "getScreenShot: end bitmap = " + screenshot);
        if (i3 != 0 && screenshot != null) {
            Bitmap rotatedBitmap = getRotatedBitmap(screenshot, i3);
            screenshot.recycle();
            return rotatedBitmap;
        }
        return screenshot;
    }

    public static AssetFileDescriptor getVideoFDFromPackage(Context context, String str, String str2) {
        Context context2;
        Resources resources;
        AssetManager assets;
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getVideoFDFromPackage() pkgName = ", str, "WallpaperUtils");
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                context2 = context.createPackageContext(str, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("WallpaperUtils", "Can not found package name");
                context2 = null;
            }
            if (context2 == null) {
                APKContents aPKContents = new APKContents(APKContents.getMainThemePackagePath(str));
                resources = aPKContents.getResources();
                assets = aPKContents.getAssets();
                if (resources == null || assets == null) {
                    Log.e("WallpaperUtils", "getVideoFDFromPackage() otherContext is null");
                    return null;
                }
            } else {
                resources = context2.getResources();
                assets = context2.getAssets();
            }
            try {
                if ("com.samsung.android.wallpaper.res".equals(str)) {
                    return resources.openRawResourceFd(resources.getIdentifier(str2.substring(0, str2.lastIndexOf(46)), "raw", str));
                }
                if (assets == null) {
                    Log.e("WallpaperUtils", "getVideoFDFromPackage() assetManager is null");
                    return null;
                }
                return assets.openFd(str2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static Bitmap getVideoFrame(Context context, AssetFileDescriptor assetFileDescriptor, String str, Uri uri, long j) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
        bitmapParams.setPreferredConfig(Bitmap.Config.RGBA_F16);
        try {
            if (!TextUtils.isEmpty(str)) {
                mediaMetadataRetriever.setDataSource(str);
            } else if (assetFileDescriptor != null) {
                mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            } else if (uri != null) {
                mediaMetadataRetriever.setDataSource(context, uri);
            }
            return mediaMetadataRetriever.getFrameAtTime(j, 2, bitmapParams);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                try {
                    mediaMetadataRetriever.close();
                    return null;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    return null;
                }
            } finally {
                try {
                    mediaMetadataRetriever.close();
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        }
    }

    public static int getWallpaperType() {
        isSubDisplay();
        return sWallpaperType[isSubDisplay() ? 1 : 0];
    }

    public static boolean isAODShowLockWallpaperAndLockDisabled(int i, Context context) {
        if (!isAODShowLockWallpaperEnabled()) {
            return false;
        }
        return new LockPatternUtils(context).isLockScreenDisabled(i);
    }

    public static boolean isAODShowLockWallpaperEnabled() {
        boolean z;
        boolean z2 = LsRune.AOD_FULLSCREEN;
        if (!z2) {
            return false;
        }
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !isSubDisplay(sCurrentWhich)) {
            return false;
        }
        SettingsHelper settingsHelper = mSettingsHelper;
        settingsHelper.getClass();
        if (z2 && settingsHelper.mItemLists.get("aod_show_lockscreen_wallpaper").getIntValue() != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z || !mSettingsHelper.isAODEnabled()) {
            return false;
        }
        return true;
    }

    public static boolean isCachedWallpaperAvailable(int i) {
        Bitmap cachedWallpaper = getCachedWallpaper(i & (-5));
        if (cachedWallpaper != null && !cachedWallpaper.isRecycled()) {
            return true;
        }
        if (cachedWallpaper == null) {
            IconCompat$$ExternalSyntheticOutline0.m("isCachedWallpaperAvailable cached wallpaper is null. which = ", i, "WallpaperUtils");
            return false;
        }
        if (cachedWallpaper.isRecycled()) {
            IconCompat$$ExternalSyntheticOutline0.m("isCachedWallpaperAvailable cached wallpaper is recycled. which = ", i, "WallpaperUtils");
            return false;
        }
        return false;
    }

    public static boolean isCarUiMode(Context context) {
        int activeProjectionTypes = ((UiModeManager) context.getSystemService(UiModeManager.class)).getActiveProjectionTypes();
        ListPopupWindow$$ExternalSyntheticOutline0.m("isCarUiMode type = ", activeProjectionTypes, "WallpaperUtils");
        if ((activeProjectionTypes & 1) == 1) {
            return true;
        }
        return false;
    }

    public static boolean isCoverScreen(int i) {
        if (LsRune.WALLPAPER_SUB_WATCHFACE) {
            if ((i & 2) == 0 && (i & 16) != 0) {
                return true;
            }
            return false;
        }
        if (!LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
            return false;
        }
        if ((i & 2) == 0 && (i & 32) != 0) {
            return true;
        }
        return false;
    }

    public static boolean isDexStandAloneMode() {
        try {
            return ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).isStandalone();
        } catch (Exception e) {
            Log.d("WallpaperUtils", "isDexStandAloneMode: " + e.getMessage());
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        if (android.app.WallpaperManager.isDefaultOperatorWallpaper(r7, 2) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isEnableTilt(android.content.Context r7) {
        /*
            android.app.WallpaperManager r0 = android.app.WallpaperManager.getInstance(r7)
            int r1 = com.android.systemui.wallpaper.WallpaperUtils.sCurrentWhich
            int r1 = r0.semGetWallpaperType(r1)
            r2 = 1
            r3 = 3
            r4 = 2
            r5 = 0
            if (r1 == r3) goto L2d
            r6 = -1
            if (r1 != r6) goto L2c
            android.app.WallpaperManager r1 = android.app.WallpaperManager.getInstance(r7)
            int r1 = r1.getDefaultWallpaperType(r4)
            if (r1 != r3) goto L1f
            r1 = r2
            goto L20
        L1f:
            r1 = r5
        L20:
            if (r1 == 0) goto L2c
            android.app.WallpaperManager.getInstance(r7)
            boolean r7 = android.app.WallpaperManager.isDefaultOperatorWallpaper(r7, r4)
            if (r7 == 0) goto L2c
            goto L2d
        L2c:
            r2 = r5
        L2d:
            if (r2 != 0) goto L37
            java.lang.String r7 = "WallpaperUtils"
            java.lang.String r0 = "isEnableTilt: false (multipack is not applied.)"
            android.util.Log.i(r7, r0)
            return r5
        L37:
            android.net.Uri r7 = r0.semGetUri(r4)
            if (r7 != 0) goto L3e
            return r5
        L3e:
            java.lang.String r0 = "tilt"
            java.lang.String r7 = r7.getQueryParameter(r0)
            boolean r5 = java.lang.Boolean.parseBoolean(r7)     // Catch: java.lang.Exception -> L4a
            goto L4e
        L4a:
            r7 = move-exception
            r7.printStackTrace()
        L4e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.WallpaperUtils.isEnableTilt(android.content.Context):boolean");
    }

    public static boolean isExternalLiveWallpaper() {
        if (!LsRune.WALLPAPER_SUB_WATCHFACE && !LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
            return mSettingsHelper.isLiveWallpaperEnabled(isSubDisplay());
        }
        return mSettingsHelper.isLiveWallpaperEnabled(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isLiveWallpaperAppliedOnLock(Context context) {
        byte b;
        int i;
        isSubDisplay();
        if (sWallpaperType[isSubDisplay() ? 1 : 0] == 7) {
            b = true;
        } else {
            b = false;
        }
        if (b != false) {
            return true;
        }
        if (isSubDisplay()) {
            i = 16;
        } else {
            i = 4;
        }
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
        if (wallpaperManager.isSystemAndLockPaired(i) && wallpaperManager.semGetWallpaperType(i | 1) == 7) {
            return true;
        }
        return false;
    }

    public static boolean isLiveWallpaperEnabled() {
        return isLiveWallpaperEnabled((sCurrentWhich & 60) == 16);
    }

    public static boolean isMainScreenRatio(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return false;
        }
        if (Math.max(i, i2) / Math.min(i, i2) > 2.0f) {
            return false;
        }
        return true;
    }

    public static boolean isOpenThemeLook() {
        return mSettingsHelper.isOpenThemeLook();
    }

    public static boolean isStatusBarHeight(Context context, View view, int i) {
        WindowInsets windowInsets;
        int i2;
        if (context == null) {
            return false;
        }
        DisplayCutout displayCutout = null;
        if (view != null) {
            windowInsets = view.getRootWindowInsets();
        } else {
            windowInsets = null;
        }
        if (windowInsets != null) {
            displayCutout = windowInsets.getDisplayCutout();
        }
        if (displayCutout != null) {
            i2 = displayCutout.getSafeInsetTop() - displayCutout.getSafeInsetBottom();
            Log.d("WallpaperUtils", "updateStatusBarHeight - dc = " + displayCutout);
        } else {
            i2 = -1;
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("Height from dc = ", i2, "WallpaperUtils");
        if (i2 <= 0) {
            i2 = context.getResources().getDimensionPixelOffset(17106177);
            ListPopupWindow$$ExternalSyntheticOutline0.m("Height from resource = ", i2, "WallpaperUtils");
        }
        Log.i("WallpaperUtils", "statusbar statusBarSize = " + i2 + ", view height = " + i);
        if (i != i2) {
            return false;
        }
        return true;
    }

    public static boolean isSubDisplay(int i) {
        return (i & 60) == 16;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isVideoWallpaper() {
        int i;
        byte b;
        int intValue;
        isSubDisplay();
        boolean isSubDisplay = isSubDisplay();
        if (isSubDisplay()) {
            i = 18;
        } else {
            i = 6;
        }
        if (sWallpaperType[isSubDisplay ? 1 : 0] == 8) {
            return true;
        }
        SettingsHelper settingsHelper = mSettingsHelper;
        settingsHelper.getClass();
        if ((i & 60) == 16) {
            b = true;
        } else {
            b = false;
        }
        SettingsHelper.ItemMap itemMap = settingsHelper.mItemLists;
        if (b != false) {
            intValue = itemMap.get("plugin_lock_wallpaper_type_sub").getIntValue();
        } else {
            intValue = itemMap.get("plugin_lock_wallpaper_type").getIntValue();
        }
        if (intValue == 2) {
            return true;
        }
        return false;
    }

    public static boolean isWhiteKeyguardWallpaper(long j) {
        KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
        SemWallpaperColors.Item hint = keyguardWallpaperController != null ? keyguardWallpaperController.getHint(j, false) : null;
        return hint != null ? hint.getFontColor() == 1 : mSettingsHelper.isWhiteKeyguardWallpaper();
    }

    public static void loadDeviceState(int i, Context context) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            sCurrentWhich = getFolderStateBasedWhich(2, context);
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
            if (wallpaperManager != null) {
                SemWallpaperColors semGetWallpaperColors = wallpaperManager.semGetWallpaperColors(6);
                SparseArray sparseArray = sCachedWallpaperColors;
                sparseArray.put(4, semGetWallpaperColors);
                sparseArray.put(16, wallpaperManager.semGetWallpaperColors(18));
                int semGetWallpaperType = wallpaperManager.semGetWallpaperType(6);
                int[] iArr = sWallpaperType;
                iArr[0] = semGetWallpaperType;
                iArr[1] = wallpaperManager.semGetWallpaperType(18);
            }
        }
        if (LsRune.WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER && isDexStandAloneMode()) {
            sCurrentWhich = (sCurrentWhich | 8) & (-5);
        }
        if (Settings.System.getIntForUser(context.getContentResolver(), "emergency_mode", 0, i) == 1) {
            z = true;
        } else {
            z = false;
        }
        mIsEmergencyMode = z;
        int intForUser = Settings.System.getIntForUser(context.getContentResolver(), "ultra_powersaving_mode", 0, i);
        int intForUser2 = Settings.System.getIntForUser(context.getContentResolver(), "minimal_battery_use", 0, i);
        if (intForUser != 1 && intForUser2 != 1) {
            z2 = false;
        } else {
            z2 = true;
        }
        mIsUltraPowerSavingMode = z2;
        mIsAdaptiveColorMode = mSettingsHelper.isAdaptiveColorMode();
        if (LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY) {
            if (mSettingsHelper.mItemLists.get("lock_adaptive_color_sub").getIntValue() != 0) {
                z3 = true;
            }
            mIsAdaptiveColorModeSub = z3;
        }
        loadLiveWallpaperSettings(i, context);
    }

    public static void loadLiveWallpaperSettings(int i, Context context) {
        boolean z;
        boolean[] zArr = mIsLiveWallpaper;
        boolean z2 = false;
        if (Settings.System.getIntForUser(context.getContentResolver(), "lockscreen_wallpaper", 1, i) == 0) {
            z = true;
        } else {
            z = false;
        }
        zArr[0] = z;
        if (Settings.System.getIntForUser(context.getContentResolver(), "lockscreen_wallpaper_sub", 1, i) == 0) {
            z2 = true;
        }
        zArr[1] = z2;
    }

    public static void registerSystemUIWidgetCallback(SystemUIWidgetCallback systemUIWidgetCallback, long j) {
        if (j == 0) {
            return;
        }
        if (j != -1) {
            j |= 1;
        }
        if ((32 & j) != 0) {
            j |= 2;
        }
        if (WallpaperEventNotifier.getInstance() != null) {
            WallpaperEventNotifier.getInstance().registerCallback(false, systemUIWidgetCallback, j);
        }
    }

    public static void removeSystemUIWidgetCallback(SystemUIWidgetCallback systemUIWidgetCallback) {
        if (WallpaperEventNotifier.getInstance() != null) {
            WallpaperEventNotifier.getInstance().removeCallback(false, systemUIWidgetCallback);
        }
    }

    public static void setCachedWallpaper(Bitmap bitmap, int i) {
        sCachedWallpaper.put(i & (-5), bitmap);
    }

    public static void setScaledView(float f, View view) {
        if (view != null && 1.0f != f) {
            Object tag = view.getTag();
            if (tag != null && -1 == ((Integer) tag).intValue() && -1 == ((Integer) view.getTag()).intValue()) {
                Log.d("WallpaperUtils", "setScaledView: skip");
                return;
            }
            boolean z = false;
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    setScaledView(f, viewGroup.getChildAt(i));
                }
            }
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                textView.setTextSize(0, textView.getTextSize() * f);
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                int i2 = layoutParams.width;
                if (i2 > 0) {
                    layoutParams.width = Math.round(i2 * f);
                }
                int i3 = layoutParams.height;
                if (i3 > 0) {
                    layoutParams.height = Math.round(i3 * f);
                }
            }
            int minimumHeight = view.getMinimumHeight();
            int minimumWidth = view.getMinimumWidth();
            if (minimumHeight > 0) {
                int i4 = (int) (minimumHeight * f);
                view.setMinimumHeight(i4);
                if (view instanceof TextView) {
                    ((TextView) view).setMinHeight(i4);
                }
            }
            if (minimumWidth > 0) {
                int i5 = (int) (minimumWidth * f);
                view.setMinimumWidth(i5);
                if (view instanceof TextView) {
                    ((TextView) view).setMinWidth(i5);
                }
            }
            if (layoutParams != null && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                Rect rect = new Rect();
                if (marginLayoutParams.isMarginRelative()) {
                    rect.left = Math.round(marginLayoutParams.getMarginStart() * f);
                    rect.top = Math.round(marginLayoutParams.topMargin * f);
                    rect.right = Math.round(marginLayoutParams.getMarginEnd() * f);
                    rect.bottom = Math.round(marginLayoutParams.bottomMargin * f);
                    marginLayoutParams.setMarginStart(rect.left);
                    marginLayoutParams.setMarginEnd(rect.right);
                    marginLayoutParams.setMargins(rect.left, rect.top, rect.right, rect.bottom);
                } else {
                    rect.left = Math.round(marginLayoutParams.leftMargin * f);
                    rect.top = Math.round(marginLayoutParams.topMargin * f);
                    rect.right = Math.round(marginLayoutParams.rightMargin * f);
                    int round = Math.round(marginLayoutParams.bottomMargin * f);
                    rect.bottom = round;
                    marginLayoutParams.setMargins(rect.left, rect.top, rect.right, round);
                }
            }
            Rect rect2 = new Rect();
            if (view.isPaddingRelative()) {
                rect2.left = Math.round(view.getPaddingStart() * f);
                rect2.top = Math.round(view.getPaddingTop() * f);
                rect2.right = Math.round(view.getPaddingEnd() * f);
                rect2.bottom = Math.round(view.getPaddingBottom() * f);
                if (rect2.left != view.getPaddingStart() || rect2.top != view.getPaddingTop() || rect2.right != view.getPaddingEnd() || rect2.bottom != view.getPaddingBottom()) {
                    z = true;
                }
                view.setPaddingRelative(rect2.left, rect2.top, rect2.right, rect2.bottom);
            } else {
                rect2.left = Math.round(view.getPaddingLeft() * f);
                rect2.top = Math.round(view.getPaddingTop() * f);
                rect2.right = Math.round(view.getPaddingRight() * f);
                rect2.bottom = Math.round(view.getPaddingBottom() * f);
                if (rect2.left != view.getPaddingLeft() || rect2.top != view.getPaddingTop() || rect2.right != view.getPaddingRight() || rect2.bottom != view.getPaddingBottom()) {
                    z = true;
                }
                view.setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
            }
            if (!z) {
                view.requestLayout();
            }
        }
    }

    public static boolean isSubDisplay() {
        return LsRune.WALLPAPER_SUB_DISPLAY_MODE && (sCurrentWhich & 16) == 16;
    }

    public static boolean isLiveWallpaperEnabled(boolean z) {
        boolean[] zArr = mIsLiveWallpaper;
        if (z) {
            return zArr[1];
        }
        return zArr[0];
    }

    public static boolean isWhiteKeyguardWallpaper(String str) {
        long convertFlag = SystemUIWidgetUtil.convertFlag(str);
        if (convertFlag < 0) {
            return false;
        }
        return isWhiteKeyguardWallpaper(convertFlag);
    }
}
