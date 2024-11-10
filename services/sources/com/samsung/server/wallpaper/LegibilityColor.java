package com.samsung.server.wallpaper;

import android.app.SemWallpaperColors;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.util.SparseArray;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.wallpaper.WallpaperManagerService;
import com.samsung.android.wallpaper.Rune;
import com.samsung.android.wallpaper.utils.WhichChecker;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes2.dex */
public class LegibilityColor {
    public final WallpaperManagerService.SemCallback mCallback;
    public ContentResolver mContentResolver;
    public final Context mContext;
    public final SemWallpaperManagerService mService;
    public SettingsObserver mSettingsObserver;
    public final SparseArray mColorExtractors = new SparseArray();
    public boolean mAllowScreenRotateSystem = false;
    public boolean mAllowScreenRotateLock = false;
    public final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.samsung.server.wallpaper.LegibilityColor.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1015) {
                return;
            }
            String[] strArr = {"need_dark_statusbar", "need_dark_font", "need_dark_navigationbar"};
            int[] iArr = (int[]) message.obj;
            int i = message.arg1;
            Log.d("LegibilityColor", "userId: " + i);
            String str = "setWhiteBgSettings";
            boolean z = false;
            for (int i2 = 0; i2 < iArr.length; i2++) {
                try {
                    int i3 = iArr[i2];
                    int intForUser = Settings.System.getIntForUser(LegibilityColor.this.mContext.getContentResolver(), strArr[i2], 0, i);
                    str = str + ", area[" + i2 + "] oldVal = " + intForUser + " newVal = " + i3;
                    if (intForUser != i3) {
                        Settings.System.putIntForUser(LegibilityColor.this.mContext.getContentResolver(), strArr[i2], i3, i);
                        Log.d("LegibilityColor", "set " + strArr[i2] + " :" + i3);
                        z = true;
                    }
                } catch (Exception e) {
                    Log.addLogString("LegibilityColor", "failed to get/put " + e);
                }
            }
            Log.addLogString("LegibilityColor", str);
            if (z) {
                LegibilityColor.this.mService.mDefaultWallpaper.sendWallpaperChangeIntent();
            }
        }
    };

    public static boolean support() {
        return true;
    }

    public LegibilityColor(Context context, WallpaperManagerService.SemCallback semCallback, SemWallpaperManagerService semWallpaperManagerService) {
        Log.d("LegibilityColor", "LegibilityColor");
        this.mContext = context;
        this.mCallback = semCallback;
        this.mService = semWallpaperManagerService;
    }

    public void extractColor(int i) {
        if (support()) {
            extractColor(i, false);
        }
    }

    public void extractColor(int i, boolean z) {
        try {
            AsyncTask colorExtractor = getColorExtractor(i, z);
            if (colorExtractor != null) {
                colorExtractor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        } catch (Exception e) {
            Log.d("LegibilityColor", "extractcolor: Error. " + e.getMessage());
        }
    }

    public final synchronized AsyncTask getColorExtractor(int i, boolean z) {
        AsyncTask makeColorExtractor;
        int i2 = (z ? 100 : 0) + i;
        AsyncTask asyncTask = (AsyncTask) this.mColorExtractors.get(i2);
        if (asyncTask != null && !asyncTask.isCancelled()) {
            Log.d("LegibilityColor", "getColorExtractor cancel");
            asyncTask.cancel(true);
            this.mColorExtractors.remove(i2);
        }
        makeColorExtractor = makeColorExtractor(i, z);
        this.mColorExtractors.put(i2, makeColorExtractor);
        return makeColorExtractor;
    }

    public final AsyncTask makeColorExtractor(final int i, final boolean z) {
        Log.i("LegibilityColor", "makeColorExtractor: " + Integer.toHexString(i));
        return new AsyncTask() { // from class: com.samsung.server.wallpaper.LegibilityColor.2
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r1) {
            }

            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                SemWallpaperColors[] semWallpaperColorsArr;
                Log.d("LegibilityColor", "extractColor start which = " + i + ", landscape = " + z);
                if (z) {
                    if (!Rune.WPAPER_SUPPORT_ROTATABLE_WALLPAPER || WhichChecker.isSubDisplay(i)) {
                        semWallpaperColorsArr = new SemWallpaperColors[]{LegibilityColor.this.mCallback.calcSemWallpaperColors(i, 90), LegibilityColor.this.mCallback.calcSemWallpaperColors(i, FrameworkStatsLog.CAMERA_SHOT_LATENCY_REPORTED__MODE__CONTROL_DS_MODE_AI_CLEAR_ZOOM_MERGE_ZSL_ANCHOR_6)};
                    } else {
                        semWallpaperColorsArr = new SemWallpaperColors[]{LegibilityColor.this.mCallback.calcSemWallpaperColors(i, 90)};
                    }
                } else {
                    semWallpaperColorsArr = new SemWallpaperColors[]{LegibilityColor.this.mCallback.calcSemWallpaperColors(i, 0)};
                }
                if (isCancelled()) {
                    Log.w("LegibilityColor", "doInBackground: this task is cancelled, which = " + i);
                    return null;
                }
                Log.d("LegibilityColor", "extractColor end which = " + i);
                if (semWallpaperColorsArr[0] == null) {
                    Log.e("LegibilityColor", "colors == null, return");
                    return null;
                }
                LegibilityColor.this.mCallback.saveSemWallpaperColors(i, z, semWallpaperColorsArr);
                LegibilityColor.this.mCallback.notifySemWallpaperColors(i);
                Log.d("LegibilityColor", "notifyColor end which = " + i);
                return null;
            }
        };
    }

    public void setAllowScreenRotateSystem(boolean z) {
        this.mAllowScreenRotateSystem = z;
    }

    public boolean getAllowScreenRotateSystem() {
        return this.mAllowScreenRotateSystem;
    }

    public void setAllowScreenRotateLock(boolean z) {
        this.mAllowScreenRotateLock = z;
    }

    public boolean getAllowScreenRotateLock() {
        return this.mAllowScreenRotateLock;
    }

    public void initSemWallpaperColors(int i, SemWallpaperData semWallpaperData) {
        if (semWallpaperData == null) {
            Log.d("LegibilityColor", "initSemWallpaperColors wallpaper == null");
            return;
        }
        int which = semWallpaperData.getWhich();
        Log.d("LegibilityColor", "initSemWallpaperColors which = " + which + ", version = " + SemWallpaperColors.getDeviceVersion());
        String wallpaperColorPath = getWallpaperColorPath(i, which, false);
        if (wallpaperColorPath == null) {
            return;
        }
        Log.addLogString("LegibilityColor", "initSemWallpaperColors:" + wallpaperColorPath);
        try {
            String stringFromFile = SemWallpaperManagerService.getStringFromFile(wallpaperColorPath);
            if (SemWallpaperColors.getXmlVersion(stringFromFile) != SemWallpaperColors.getDeviceVersion()) {
                Log.d("LegibilityColor", "fota, calSemWallpaperColors");
                extractColor(which);
            } else {
                SemWallpaperColors fromXml = SemWallpaperColors.fromXml(stringFromFile);
                if (fromXml != null && fromXml.getSeedColors() != null && fromXml.getSeedColors().length > 0) {
                    semWallpaperData.setPrimarySemColors(fromXml);
                    this.mCallback.notifySemWallpaperColors(which);
                }
                Log.d("LegibilityColor", "initSemWallpaperColors: SemWallpaperColor or its seed color is null. Extract color again!");
                extractColor(which);
            }
        } catch (Exception e) {
            if (e instanceof FileNotFoundException) {
                Log.d("LegibilityColor", "fota, calcSemWallpaperColors");
                extractColor(which);
            } else {
                Log.e("LegibilityColor", "exception " + e);
            }
        }
        Log.d("LegibilityColor", "initSemWallpaperColors done");
    }

    public static String getWallpaperColorPath(int i, int i2, boolean z) {
        String str;
        File file = new File(Environment.getUserSystemDirectory(i), "wallpaper_colors_info");
        if (!file.exists() && !file.mkdir()) {
            Log.e("LegibilityColor", "getWallpaperColorPath failed to mkdir");
        }
        String path = file.getPath();
        int type = WhichChecker.getType(i2);
        String str2 = null;
        if (type == 1) {
            str = path + "/home";
        } else if (type == 2) {
            str = path + "/lock";
        } else {
            Log.e("LegibilityColor", "unhandle type " + i2);
            str = null;
        }
        if (z) {
            str = str + "_landscape";
        }
        int mode = WhichChecker.getMode(i2);
        if (mode == 0 || mode == 4) {
            str2 = str + "_phone.xml";
        } else if (mode == 8) {
            str2 = str + "_dex.xml";
        } else if (mode == 16) {
            str2 = str + "_sub.xml";
        } else if (mode == 32) {
            str2 = str + "_virtual.xml";
        } else {
            Log.e("LegibilityColor", "unhandle mode " + i2);
        }
        Log.d("LegibilityColor", "getWallpaperColorPath, path = " + str2);
        return str2;
    }

    public void setWhiteBgSettings(SemWallpaperColors semWallpaperColors, int i, int i2, Integer num) {
        Log.d("LegibilityColor", "setWhiteBgSettings which: " + i + ", userId : " + i2 + ", homeBodyColor : " + num);
        if (WhichChecker.isDex(i) && !this.mService.mDesktopMode.isDesktopSingleMode()) {
            Log.d("LegibilityColor", "Dex dual mode, ignore SemWallpaperColors");
            return;
        }
        if (Rune.DESKTOP_STANDALONE_MODE_WALLPAPER && !WhichChecker.isDex(i) && this.mService.mDesktopMode.isDesktopSingleMode()) {
            Log.d("LegibilityColor", "Dex single mode, ignore SemWallpaperColors");
            return;
        }
        if (WhichChecker.isWatchFaceDisplay(i) || WhichChecker.isVirtualDisplay(i)) {
            Log.d("LegibilityColor", "Cover wallpaper, ignore SemWallpaperColors");
            return;
        }
        if ((!Rune.SUPPORT_SUB_DISPLAY_MODE && (i & 16) == 16) || (!Rune.VIRTUAL_DISPLAY_WALLPAPER && (i & 32) == 32)) {
            Log.d("LegibilityColor", "Unsupported sub wallpaper, ignore SemWallpaperColors");
            return;
        }
        if (Rune.SUPPORT_SUB_DISPLAY_MODE) {
            int lidState = this.mService.mSubDisplayMode.getLidState();
            if ((WhichChecker.isSubDisplay(i) && lidState != 0) || (!WhichChecker.isSubDisplay(i) && lidState == 0)) {
                Log.d("LegibilityColor", "setWhiteBgSettings() lidState: " + lidState + ", which : " + i + ", ignore SemWallpaperColors");
                return;
            }
        }
        int[] iArr = {0, 0, 0};
        SemWallpaperColors.Item item = semWallpaperColors.get(32L);
        if (item != null) {
            int fontColor = item.getFontColor();
            iArr[0] = fontColor;
            if (fontColor == 2) {
                iArr[0] = item.getFontColorRgb();
            }
        }
        if (num != null) {
            iArr[1] = num.intValue();
        } else {
            SemWallpaperColors.Item item2 = semWallpaperColors.get(64L);
            if (item2 != null) {
                iArr[1] = item2.getFontColor();
            }
        }
        SemWallpaperColors.Item item3 = semWallpaperColors.get(128L);
        if (item3 != null) {
            iArr[2] = item3.getFontColor();
        }
        Message obtainMessage = this.mHandler.obtainMessage(1015);
        obtainMessage.obj = iArr;
        obtainMessage.arg1 = i2;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void initWallpaperLegibilityColors() {
        this.mContentResolver = this.mContext.getContentResolver();
        SettingsObserver settingsObserver = new SettingsObserver();
        this.mSettingsObserver = settingsObserver;
        settingsObserver.init();
        setAllowScreenRotateSystem(allowScreenRotate(1));
        setAllowScreenRotateLock(allowScreenRotate(2));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0061 A[Catch: Exception -> 0x00af, TryCatch #0 {Exception -> 0x00af, blocks: (B:6:0x0011, B:8:0x0018, B:10:0x001e, B:14:0x002a, B:16:0x002e, B:21:0x003e, B:24:0x005a, B:26:0x0061, B:28:0x006b, B:31:0x0070, B:34:0x0076), top: B:5:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0076 A[Catch: Exception -> 0x00af, TRY_LEAVE, TryCatch #0 {Exception -> 0x00af, blocks: (B:6:0x0011, B:8:0x0018, B:10:0x001e, B:14:0x002a, B:16:0x002e, B:21:0x003e, B:24:0x005a, B:26:0x0061, B:28:0x006b, B:31:0x0070, B:34:0x0076), top: B:5:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Bitmap smartCropBitmap(android.graphics.Bitmap r12, com.samsung.server.wallpaper.SemWallpaperData r13, int r14) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.server.wallpaper.LegibilityColor.smartCropBitmap(android.graphics.Bitmap, com.samsung.server.wallpaper.SemWallpaperData, int):android.graphics.Bitmap");
    }

    public void doPackagesChangedLocked(SemWallpaperData semWallpaperData) {
        if (support()) {
            Log.d("LegibilityColor", "doPackagesChangedLocked " + semWallpaperData);
            if (semWallpaperData == null || semWallpaperData.getWpType() != 7) {
                return;
            }
            Log.addLogString("LegibilityColor", "external live wallpaper is removed");
            extractColor(semWallpaperData.getWhich());
            int mode = WhichChecker.getMode(semWallpaperData.getWhich());
            if (this.mService.hasLockscreenWallpaper(WhichChecker.isSubDisplay(mode))) {
                return;
            }
            this.mService.mDefaultWallpaper.setKWPTypeLiveWallpaper(1);
            extractColor(mode | 2);
        }
    }

    public final Bitmap centercropBitmap(Bitmap bitmap, int i, int i2) {
        Log.addLogString("LegibilityColor", "centercropBitmap, " + bitmap + ", " + i + ", " + i2);
        if (bitmap == null) {
            return null;
        }
        return cropBitmap(resizeBitmap(bitmap, i, i2), i, i2);
    }

    public final Bitmap resizeBitmap(Bitmap bitmap, int i, int i2) {
        float f;
        int height;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        if (i > i2) {
            f = i;
            height = bitmap.getWidth();
        } else {
            f = i2;
            height = bitmap.getHeight();
        }
        float f2 = f / height;
        return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * f2), (int) (bitmap.getHeight() * f2), false);
    }

    public final Bitmap cropBitmap(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        return Bitmap.createBitmap(bitmap, width > i ? (width - i) / 2 : 0, height > i2 ? (height - i2) / 2 : 0, i, i2);
    }

    public final boolean allowScreenRotate(int i) {
        int type = WhichChecker.getType(i);
        boolean z = Settings.System.getIntForUser(this.mContext.getContentResolver(), "accelerometer_rotation", 0, this.mContext.getUserId()) == 0;
        if (z) {
            return false;
        }
        if (Rune.WPAPER_SUPPORT_ROTATABLE_WALLPAPER && !WhichChecker.isSubDisplay(i)) {
            Log.i("LegibilityColor", "allowScreenRotate, allow rotate on tablet or dual main : " + i);
            return true;
        }
        if (type != 1 && type != 2) {
            Log.e("LegibilityColor", "allowScreenRoatate, unhandle type " + i);
        }
        return z;
    }

    /* loaded from: classes2.dex */
    public class SettingsObserver extends ContentObserver {
        public SettingsObserver() {
            super(new Handler());
        }

        public void init() {
            LegibilityColor.this.mContentResolver.registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            LegibilityColor legibilityColor = LegibilityColor.this;
            legibilityColor.setAllowScreenRotateSystem(legibilityColor.allowScreenRotate(1));
            LegibilityColor legibilityColor2 = LegibilityColor.this;
            legibilityColor2.setAllowScreenRotateLock(legibilityColor2.allowScreenRotate(2));
        }
    }
}
