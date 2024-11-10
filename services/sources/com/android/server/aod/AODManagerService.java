package com.android.server.aod;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.FactoryTest;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SemSystemProperties;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.util.Log;
import android.util.Slog;
import android.view.Display;
import com.android.internal.app.IBatteryStats;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.am.BatteryStatsService;
import com.samsung.android.aod.AODManager;
import com.samsung.android.aod.AODManagerInternal;
import com.samsung.android.aod.AODToast;
import com.samsung.android.aod.IAODCallback;
import com.samsung.android.aod.IAODDozeCallback;
import com.samsung.android.aod.IAODManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class AODManagerService extends SystemService {
    public static int AOD_SCREEN_TURNING_ON_TIMEOUT = 0;
    public static final String TAG = "AODManagerService";
    public AODDozeCallbackRecord mAODCallback;
    public AODManager.AODChangeListener mAODChangeListener;
    public final ArrayList mAODDozeLocks;
    public int mAODEndTime;
    public final AODHandler mAODHandler;
    public Handler mAODLogHandler;
    public HandlerThread mAODLogHandlerThread;
    public AODSettingHelper mAODSettingHelper;
    public int mAODStartTime;
    public AODLogger mAppLogger;
    public final IBatteryStats mBatteryStats;
    public List mCalendarDataDescription;
    public List mCalendarDataTimeInfo;
    public ContentObserver mContentObserver;
    public final Context mContext;
    public Context mContextForUser;
    public AODSCoverController mCoverController;
    public int mDefaultDisplayState;
    public DisplayManager.DisplayListener mDisplayListener;
    public final DisplayManager mDisplayManager;
    public SemInputDeviceManager mInputDeviceManager;
    public boolean mIsAODAnalogLiveClock;
    public boolean mIsAODAuto;
    public boolean mIsAODModeEnabled;
    public boolean mIsAODShowForNewNoti;
    public boolean mIsAODStartStop;
    public boolean mIsAODTapToShow;
    public boolean mIsEdgeShowWhenScreenOff;
    public boolean mIsFingerScreenLock;
    public boolean mIsFingerScreenOffIconAOD;
    public boolean mIsMPSMEnabled;
    public boolean mIsSingleTouchMode;
    public boolean mIsUPSMEnabled;
    public final ArrayList mListeners;
    public String mLiveClockImageInfo;
    public AODLogger mLiveClockLogger;
    public final Object mLock;
    public Looper mLooper;
    public final Object mScreenTurningOnLock;
    public final Runnable mScreenTurningOnRunnable;
    public String mSelfIconImageInfo;
    public SettingsObserver mSettingsObserver;
    public int mSpenUspLevel;
    public int mSystemUiUid;
    public int mTspH;
    public AODLogger mTspLogger;
    public final HashMap mTspRects;
    public int mTspW;
    public int mTspX;
    public int mTspY;
    public UserManager mUserManager;
    public boolean requestedReCalToTSP;
    public static final int DEBUG_TURNING_ON_DELAYED = SemSystemProperties.getInt("debug.aod.turningondelay", 0);
    public static final Uri AOD_SETTING_CLOCK_TYPE_URI_PARSED = Uri.parse("content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type");
    public static int GREAT_SPEN_USP_LEVEL = 30;
    public static final boolean SUPPORT_AOD = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM", "").contains("aodversion");
    public static final boolean SUPPORT_AOD_LIVE_CLOCK = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM", "").contains("activeclock");

    public static native int setActiveImage(int i, byte[] bArr);

    public static native int setAnalogClockInfo(int i, int i2, int i3, int i4);

    public static native int setAnalogClockInfoV4(int i, int i2, int i3, int i4, int i5, int i6);

    public static native int setCurrentTime(int i, int i2, int i3, int i4, int i5, int i6);

    public static native int setDigitalClockInfo(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20);

    public static native int setDigitalClockInfoV4(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16);

    public static native int setLiveClockCommand(int i, int i2, int i3, int[] iArr);

    public static native int setLiveClockImage(int i, int i2, byte[] bArr);

    public static native int setLiveClockInfo(int i, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8);

    public static native void setLiveClockNeedle(byte[] bArr);

    public static native int setSelfGridInfo(int i, int i2, int i3, int i4, int i5);

    public static native int setSelfIconInfo(int i, int i2, int i3, int i4, int i5, int i6);

    public static native int setSelfPartialHLPMScan(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    public static native int turnOffSelfMove();

    public static native int turnOnSelfMove();

    public final boolean isSystemUid(int i) {
        return i == 1000;
    }

    /* renamed from: com.android.server.aod.AODManagerService$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (AODManagerService.this.mScreenTurningOnLock) {
                Log.d(AODManagerService.TAG, "screenTurningOn");
                if (AODManagerService.this.mAODChangeListener != null) {
                    AODManagerService.this.mAODChangeListener.readyToScreenTurningOn();
                    AODManagerService.this.mAODChangeListener = null;
                } else {
                    Log.d(AODManagerService.TAG, "screenTurningOn : Do nothing, There is no Listener");
                }
            }
        }
    }

    public AODManagerService(Context context) {
        super(context);
        this.mListeners = new ArrayList();
        this.mAODDozeLocks = new ArrayList();
        this.mLock = new Object();
        this.mScreenTurningOnLock = new Object();
        this.mIsAODModeEnabled = false;
        this.mIsAODTapToShow = false;
        this.mIsAODAuto = false;
        this.mIsAODShowForNewNoti = false;
        this.mAODStartTime = 0;
        this.mAODEndTime = 0;
        this.mIsFingerScreenLock = false;
        this.mIsFingerScreenOffIconAOD = false;
        this.mIsMPSMEnabled = false;
        this.mIsUPSMEnabled = false;
        this.mIsEdgeShowWhenScreenOff = false;
        this.mIsAODStartStop = false;
        this.mCalendarDataTimeInfo = new ArrayList();
        this.mCalendarDataDescription = new ArrayList();
        this.mTspRects = new HashMap();
        this.mIsSingleTouchMode = false;
        this.mSpenUspLevel = -1;
        this.mAppLogger = new AODLogger("AODManagerService_App", 1000);
        this.mLiveClockLogger = new AODLogger("AODManagerService_LiveClock", 150);
        this.mTspLogger = new AODLogger("AODManagerService_TSP", 150);
        this.mScreenTurningOnRunnable = new Runnable() { // from class: com.android.server.aod.AODManagerService.1
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (AODManagerService.this.mScreenTurningOnLock) {
                    Log.d(AODManagerService.TAG, "screenTurningOn");
                    if (AODManagerService.this.mAODChangeListener != null) {
                        AODManagerService.this.mAODChangeListener.readyToScreenTurningOn();
                        AODManagerService.this.mAODChangeListener = null;
                    } else {
                        Log.d(AODManagerService.TAG, "screenTurningOn : Do nothing, There is no Listener");
                    }
                }
            }
        };
        this.requestedReCalToTSP = false;
        this.mContext = context;
        this.mContextForUser = context;
        this.mUserManager = UserManager.get(context);
        AODHandler aODHandler = new AODHandler(FgThread.get().getLooper());
        this.mAODHandler = aODHandler;
        this.mLooper = new Handler().getLooper();
        HandlerThread handlerThread = new HandlerThread("AODManagerService.LogThread", 10);
        this.mAODLogHandlerThread = handlerThread;
        handlerThread.start();
        this.mAODLogHandler = new Handler(this.mAODLogHandlerThread.getLooper()) { // from class: com.android.server.aod.AODManagerService.2
            public AnonymousClass2(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 100) {
                    return;
                }
                AODManagerService.this.addAODAppLog(message.getData().getStringArrayList("logs"));
            }
        };
        this.mInputDeviceManager = (SemInputDeviceManager) context.getSystemService("SemInputDeviceManagerService");
        this.mAODSettingHelper = new AODSettingHelper(context);
        this.mCoverController = new AODSCoverController(context, this.mAODSettingHelper);
        this.mSettingsObserver = new SettingsObserver(aODHandler);
        this.mBatteryStats = BatteryStatsService.getService();
        this.mSettingsObserver.observe();
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        this.mDisplayManager = displayManager;
        AnonymousClass3 anonymousClass3 = new DisplayManager.DisplayListener() { // from class: com.android.server.aod.AODManagerService.3
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int i) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int i) {
            }

            public AnonymousClass3() {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int i) {
                Display display;
                if (AODManagerService.this.mDisplayManager == null || (display = AODManagerService.this.mDisplayManager.getDisplay(i)) == null || i != 0) {
                    return;
                }
                AODManagerService.this.updateDefaultDisplayState(display.getState());
            }
        };
        this.mDisplayListener = anonymousClass3;
        if (displayManager != null) {
            displayManager.registerDisplayListener(anonymousClass3, null);
            Display display = displayManager.getDisplay(0);
            if (display != null) {
                updateDefaultDisplayState(display.getState());
            }
        }
        AOD_SCREEN_TURNING_ON_TIMEOUT = 0;
        Log.d(TAG, "AOD_SCREEN_TURNING_ON_TIMEOUT : " + AOD_SCREEN_TURNING_ON_TIMEOUT);
    }

    /* renamed from: com.android.server.aod.AODManagerService$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends Handler {
        public AnonymousClass2(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 100) {
                return;
            }
            AODManagerService.this.addAODAppLog(message.getData().getStringArrayList("logs"));
        }
    }

    /* renamed from: com.android.server.aod.AODManagerService$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements DisplayManager.DisplayListener {
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }

        public AnonymousClass3() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            Display display;
            if (AODManagerService.this.mDisplayManager == null || (display = AODManagerService.this.mDisplayManager.getDisplay(i)) == null || i != 0) {
                return;
            }
            AODManagerService.this.updateDefaultDisplayState(display.getState());
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        int systemUiUid = getSystemUiUid();
        this.mSystemUiUid = systemUiUid;
        if (systemUiUid <= 0) {
            Slog.wtf(TAG, "SysUI package not found!");
        }
        publishBinderService(TAG, new BinderService());
        publishLocalService(AODManagerInternal.class, new LocalService());
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int i) {
        super.onBootPhase(i);
        if (i == 600) {
            try {
                AODSCoverController aODSCoverController = this.mCoverController;
                if (aODSCoverController != null) {
                    aODSCoverController.register();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.mInputDeviceManager == null) {
                SemInputDeviceManager semInputDeviceManager = (SemInputDeviceManager) this.mContext.getSystemService("SemInputDeviceManagerService");
                this.mInputDeviceManager = semInputDeviceManager;
                if (semInputDeviceManager == null) {
                    Slog.e(TAG, "onBootPhase() mInputDeviceManager is null");
                }
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onUserSwitching(SystemService.TargetUser targetUser, SystemService.TargetUser targetUser2) {
        addAODTspLog("onUserSwitching from=" + targetUser + " to=" + targetUser2);
        this.mContextForUser = this.mContext.createContextAsUser(targetUser2.getUserHandle(), 0);
        if (SUPPORT_AOD_LIVE_CLOCK) {
            this.mIsAODAnalogLiveClock = false;
            if (this.mUserManager.isUserUnlocked(targetUser2.getUserIdentifier())) {
                registerAODClockContentObserver();
            }
        }
        updateSettings();
    }

    @Override // com.android.server.SystemService
    public void onUserUnlocked(SystemService.TargetUser targetUser) {
        Log.i(TAG, "onUserUnlocked: user=" + targetUser);
        if (SUPPORT_AOD_LIVE_CLOCK) {
            registerAODClockContentObserver();
        }
    }

    public final void updateDefaultDisplayState(int i) {
        int i2 = this.mDefaultDisplayState;
        this.mDefaultDisplayState = i;
        synchronized (this.mAODDozeLocks) {
            if (i == 1) {
                Iterator it = this.mAODDozeLocks.iterator();
                while (it.hasNext()) {
                    removeDozeLockLocked((AODDozeLock) it.next(), false);
                }
            } else if (i == 2) {
                String str = TAG;
                Log.d(str, "requestReCalToTSP IsSingleTouchMode = " + this.mIsSingleTouchMode + "requestedReCalToTSP = " + this.requestedReCalToTSP + " / previousDisplayState = " + displayStateToString(i2));
                if (this.requestedReCalToTSP && (i2 == 3 || i2 == 4)) {
                    requestReCalToTSP();
                    this.requestedReCalToTSP = false;
                }
                if (i2 != i && this.mAODSettingHelper.isAODShowState()) {
                    this.mAODSettingHelper.clearAODShowState();
                    Log.d(str, "updateDefaultDisplayState clear aod_show_state, previousDisplayState=" + displayStateToString(i2));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeAODCommandInternal(java.lang.String r2, java.lang.String r3, java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.aod.AODManagerService.writeAODCommandInternal(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final void updateAODTspRectInternal(int i, int i2, int i3, int i4, String str) {
        checkSystemUid();
        synchronized (this.mTspRects) {
            if (i3 < 0 && i4 < 0 && i < 0 && i2 < 0) {
                this.mTspRects.remove(str);
            } else {
                Rect rect = (Rect) this.mTspRects.get(str);
                if (rect == null) {
                    this.mTspRects.put(str, new Rect(i3, i4, i + i3, i2 + i4));
                } else {
                    rect.left = i3;
                    rect.top = i4;
                    rect.right = i3 + i;
                    rect.bottom = i4 + i2;
                }
            }
            if (this.mTspRects.size() > 0) {
                Rect rect2 = new Rect();
                for (Map.Entry entry : this.mTspRects.entrySet()) {
                    rect2.union((Rect) entry.getValue());
                    Slog.i(TAG, "updateAODTspRectInternal union: key : " + ((String) entry.getKey()) + " rect : " + rect2);
                }
                int i5 = rect2.left;
                this.mTspX = i5;
                int i6 = rect2.top;
                this.mTspY = i6;
                int i7 = rect2.right - i5;
                this.mTspW = i7;
                int i8 = rect2.bottom - i6;
                this.mTspH = i8;
                SemInputDeviceManager semInputDeviceManager = this.mInputDeviceManager;
                if (semInputDeviceManager != null) {
                    semInputDeviceManager.setAodRect(i7, i8, i5, i6);
                }
            }
        }
    }

    public final void updateAODTspState(boolean z) {
        checkSystemUid();
        if (AODConfig.isAODTouchDisabled) {
            addAODTspLog("updateAODTspState skip -- AOD TSP");
            return;
        }
        if (!z) {
            synchronized (this.mTspRects) {
                Rect rect = (Rect) this.mTspRects.get("com.samsung.android.app.aodservice");
                if (rect != null && !rect.isEmpty()) {
                    updateAODTspRectInternal(0, 0, 0, 0, "com.samsung.android.app.aodservice");
                }
            }
        }
        SemInputDeviceManager semInputDeviceManager = this.mInputDeviceManager;
        if (semInputDeviceManager != null) {
            semInputDeviceManager.setAodEnable(z ? 1 : 0);
        }
    }

    public final void requestReCalToTSP() {
        addAODTspLog("requestReCalToTSP");
        SemInputDeviceManager semInputDeviceManager = this.mInputDeviceManager;
        if (semInputDeviceManager != null) {
            semInputDeviceManager.setSyncChanged(1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.String] */
    public final void updateAODWacomState(String str, boolean z) {
        StringBuilder sb;
        File file;
        ?? r1;
        checkSystemUid();
        if (AODConfig.isAODTouchDisabled) {
            addAODTspLog("updateAODWacomState skip -- AOD Wacom");
            return;
        }
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                file = new File(str);
            } catch (FileNotFoundException e) {
                e = e;
            } catch (IOException e2) {
                e = e2;
            }
            if (file.exists() && file.canWrite()) {
                FileOutputStream fileOutputStream4 = new FileOutputStream(file);
                try {
                    r1 = "UTF-8";
                    fileOutputStream4.write((z ? "1" : "0").getBytes("UTF-8"));
                    fileOutputStream4.flush();
                } catch (FileNotFoundException e3) {
                    e = e3;
                    fileOutputStream2 = fileOutputStream4;
                    e.printStackTrace();
                    addAODTspLog("updateAODWacomState -- FileNotFoundException");
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            fileOutputStream = fileOutputStream2;
                        } catch (Exception e4) {
                            e = e4;
                            sb = new StringBuilder();
                            sb.append("updateAODWacomState -- ");
                            sb.append(e.toString());
                            addAODTspLog(sb.toString());
                        }
                    }
                } catch (IOException e5) {
                    e = e5;
                    fileOutputStream3 = fileOutputStream4;
                    e.printStackTrace();
                    addAODTspLog("updateAODWacomState -- IOException");
                    fileOutputStream = fileOutputStream3;
                    if (fileOutputStream3 != null) {
                        try {
                            fileOutputStream3.close();
                            fileOutputStream = fileOutputStream3;
                        } catch (Exception e6) {
                            e = e6;
                            sb = new StringBuilder();
                            sb.append("updateAODWacomState -- ");
                            sb.append(e.toString());
                            addAODTspLog(sb.toString());
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream4;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e7) {
                            addAODTspLog("updateAODWacomState -- " + e7.toString());
                        }
                    }
                    throw th;
                }
                try {
                    fileOutputStream4.close();
                    fileOutputStream = r1;
                } catch (Exception e8) {
                    e = e8;
                    sb = new StringBuilder();
                    sb.append("updateAODWacomState -- ");
                    sb.append(e.toString());
                    addAODTspLog(sb.toString());
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* loaded from: classes.dex */
    public class SettingsObserver extends ContentObserver {
        public final Uri mAODLowPowerUri;
        public final Uri mAODModeUri;
        public final Uri mAODPowerSavingModeUri;
        public final Uri mAODShowStateUri;
        public final Uri mDozeAlwaysOnUri;

        public SettingsObserver(Handler handler) {
            super(handler);
            this.mAODShowStateUri = Settings.System.getUriFor("aod_show_state");
            this.mAODModeUri = Settings.System.getUriFor("aod_mode");
            this.mDozeAlwaysOnUri = Settings.Secure.getUriFor("doze_always_on");
            this.mAODLowPowerUri = Settings.System.getUriFor("low_power");
            this.mAODPowerSavingModeUri = Settings.System.getUriFor("ultra_powersaving_mode");
        }

        public void observe() {
            ContentResolver contentResolver = AODManagerService.this.mContext.getContentResolver();
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_mode"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_show_state"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_tap_to_show_mode"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_display_mode_auto"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_show_for_new_noti"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_mode_start_time"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("aod_mode_end_time"), false, this, -1);
            contentResolver.registerContentObserver(Settings.Secure.getUriFor("fingerprint_screen_lock"), false, this, -1);
            contentResolver.registerContentObserver(Settings.Secure.getUriFor("fingerprint_screen_off_icon_aod"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("edge_lighting_show_condition"), false, this, -1);
            contentResolver.registerContentObserver(Settings.Secure.getUriFor("doze_always_on"), false, this, -1);
            contentResolver.registerContentObserver(Settings.Global.getUriFor("low_power"), false, this, -1);
            contentResolver.registerContentObserver(Settings.System.getUriFor("ultra_powersaving_mode"), false, this, -1);
            AODManagerService.this.addAODTspLog("observe");
            AODManagerService.this.updateSettings();
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        
            if (r2 != null) goto L87;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        
            r2.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
        
            if (r2 == null) goto L100;
         */
        /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
        @Override // android.database.ContentObserver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onChange(boolean r9, android.net.Uri r10) {
            /*
                Method dump skipped, instructions count: 291
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.aod.AODManagerService.SettingsObserver.onChange(boolean, android.net.Uri):void");
        }
    }

    public void updateBatteryStats() {
        boolean isAODShowState = this.mAODSettingHelper.isAODShowState();
        if (this.mIsAODStartStop != isAODShowState) {
            this.mIsAODStartStop = isAODShowState;
        }
    }

    public final void updateDozeAlwaysOn() {
        synchronized (this.mLock) {
            try {
                try {
                    boolean isDozeAlwaysOn = this.mAODSettingHelper.isDozeAlwaysOn();
                    addAODTspLog("updateDozeAlwaysOn: dozeAlwaysOn = " + isDozeAlwaysOn);
                    if (isDozeAlwaysOn != this.mAODSettingHelper.isAODEnabled()) {
                        this.mAODSettingHelper.setAODEnabled(isDozeAlwaysOn);
                    }
                    if (isDozeAlwaysOn != this.mAODSettingHelper.isAODChargingMode()) {
                        this.mAODSettingHelper.setAODChargingMode(isDozeAlwaysOn);
                    }
                } catch (Settings.SettingNotFoundException e) {
                    addAODTspLog("updateDozeAlwaysOn : doze_always_on doesn't exist. " + e.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void updateAODChargingMode(boolean z) {
        try {
            if (this.mAODSettingHelper.isDozeAlwaysOn() == z || this.mAODSettingHelper.isAODChargingMode()) {
                return;
            }
            this.mAODSettingHelper.setAODChargingMode(true);
            addAODTspLog("updateAODChargingMode: aodChargingMode = true");
        } catch (Settings.SettingNotFoundException e) {
            Log.d(TAG, "updateAODChargingMode : doze_always_on doesn't exist. " + e.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b9 A[Catch: all -> 0x023d, TryCatch #0 {, blocks: (B:9:0x0014, B:11:0x005a, B:13:0x005e, B:15:0x0062, B:17:0x0066, B:22:0x0070, B:24:0x0074, B:26:0x0078, B:28:0x007c, B:30:0x0080, B:32:0x0084, B:37:0x008f, B:39:0x009d, B:42:0x00b9, B:44:0x0133, B:47:0x0139, B:49:0x01b3, B:50:0x0093, B:52:0x01b9, B:53:0x023b), top: B:8:0x0014 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSettings() {
        /*
            Method dump skipped, instructions count: 576
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.aod.AODManagerService.updateSettings():void");
    }

    public final void updateAODTspState() {
        if (!SUPPORT_AOD || FactoryTest.isFactoryBinary()) {
            addAODTspLog("updateAODTspState do not need to update TSP state, Not support AOD");
            return;
        }
        addAODTspLog("updateAODTspState: mIsAODModeEnabled=" + this.mIsAODModeEnabled + ", mIsEdgeShowEnabled=" + this.mIsEdgeShowWhenScreenOff);
        updateAODTspState(this.mIsAODModeEnabled || this.mIsEdgeShowWhenScreenOff);
        if (this.mSpenUspLevel == -1) {
            this.mSpenUspLevel = SemFloatingFeature.getInstance().getInt("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION", -1);
            Log.d(TAG, "updateAODTspState: mSpenUspLevel = " + this.mSpenUspLevel);
        }
        if (this.mSpenUspLevel >= GREAT_SPEN_USP_LEVEL) {
            addAODTspLog("updateAODWacomState");
            updateAODWacomState("/sys/class/sec/sec_epen/aod_enable", this.mIsAODModeEnabled || this.mIsEdgeShowWhenScreenOff);
        }
    }

    public final void wakeUpInternal() {
        checkSystemUid();
        synchronized (this.mListeners) {
            if (this.mListeners.size() < 1) {
                return;
            }
            Iterator it = this.mListeners.iterator();
            while (it.hasNext()) {
                AODListenerRecord aODListenerRecord = (AODListenerRecord) it.next();
                if (aODListenerRecord != null) {
                    aODListenerRecord.onScreenTurningOn();
                }
            }
        }
    }

    public final void addLogTextInternal(List list) {
        checkSystemUid();
        Message obtainMessage = this.mAODLogHandler.obtainMessage(100);
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("logs", new ArrayList<>(list));
        obtainMessage.setData(bundle);
        this.mAODLogHandler.sendMessage(obtainMessage);
    }

    public final void readyToScreenTurningOnInternal() {
        checkSystemUid();
        if (!AODConfig.isNeedsScreenTurningOnDelayed()) {
            Log.w(TAG, "readyToScreenTurningOn : Not allowed");
            return;
        }
        synchronized (this.mScreenTurningOnLock) {
            String str = TAG;
            Log.d(str, "readyToScreenTurningOn");
            AODManager.AODChangeListener aODChangeListener = this.mAODChangeListener;
            if (aODChangeListener != null) {
                aODChangeListener.readyToScreenTurningOn();
                this.mAODChangeListener = null;
                this.mAODHandler.removeCallbacks(this.mScreenTurningOnRunnable);
            } else {
                Log.e(str, "readyToScreenTurningOn : Do nothing, There is no Listener");
            }
        }
    }

    public final void registerAODListenerInternal(IBinder iBinder) {
        synchronized (this.mListeners) {
            Iterator it = this.mListeners.iterator();
            while (it.hasNext()) {
                AODListenerRecord aODListenerRecord = (AODListenerRecord) it.next();
                if (aODListenerRecord != null && iBinder.equals(aODListenerRecord.token)) {
                    Log.w(TAG, "registerAODListenerInternal : already registered");
                    return;
                }
            }
            this.mListeners.add(new AODListenerRecord(iBinder, Binder.getCallingPid(), Binder.getCallingUid()));
        }
    }

    public final void unregisterAODListenerInternal(IBinder iBinder) {
        synchronized (this.mListeners) {
            Iterator it = this.mListeners.iterator();
            AODListenerRecord aODListenerRecord = null;
            while (it.hasNext()) {
                AODListenerRecord aODListenerRecord2 = (AODListenerRecord) it.next();
                if (aODListenerRecord2 != null && iBinder.equals(aODListenerRecord2.token)) {
                    aODListenerRecord = aODListenerRecord2;
                }
            }
            if (aODListenerRecord == null) {
                Log.e(TAG, "unregisterAODListenerInternal : cannot find the matched host");
                return;
            }
            if (!this.mListeners.isEmpty()) {
                this.mListeners.remove(aODListenerRecord);
            }
            iBinder.unlinkToDeath(aODListenerRecord, 0);
        }
    }

    public final void registerAODDozeCallbackInternal(IBinder iBinder) {
        synchronized (this.mAODDozeLocks) {
            if (this.mAODCallback == null) {
                Log.d(TAG, "registerAODDozeCallbackInternal");
                this.mAODCallback = new AODDozeCallbackRecord(iBinder, Binder.getCallingPid(), Binder.getCallingUid());
            } else {
                Log.w(TAG, "registerAODDozeCallbackInternal : already registered");
            }
        }
    }

    public final void unregisterAODDozeCallbackInternal(IBinder iBinder) {
        synchronized (this.mAODDozeLocks) {
            AODDozeCallbackRecord aODDozeCallbackRecord = this.mAODCallback;
            if (aODDozeCallbackRecord != null && iBinder.equals(aODDozeCallbackRecord.token)) {
                Log.d(TAG, "unregisterAODDozeCallbackInternal");
                iBinder.unlinkToDeath(this.mAODCallback, 0);
                this.mAODCallback = null;
            } else {
                Log.w(TAG, "unregisterAODDozeCallbackInternal : cannot find matched callback");
            }
        }
    }

    public final void acquireDozeInternal(IBinder iBinder, String str, String str2, int i, int i2) {
        AODDozeCallbackRecord aODDozeCallbackRecord;
        synchronized (this.mAODDozeLocks) {
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("acquireDozeInternal: mAODCallback ");
            sb.append(this.mAODCallback != null ? "existed" : "null");
            sb.append(", display = ");
            sb.append(this.mDefaultDisplayState);
            Log.d(str3, sb.toString());
            if (this.mDefaultDisplayState == 2) {
                return;
            }
            if (findAODDozeLockIndexLocked(iBinder) < 0) {
                AODDozeLock aODDozeLock = new AODDozeLock(iBinder, str, str2, i, i2);
                try {
                    iBinder.linkToDeath(aODDozeLock, 0);
                    boolean isEmpty = this.mAODDozeLocks.isEmpty();
                    this.mAODDozeLocks.add(aODDozeLock);
                    if (isEmpty) {
                        int i3 = this.mDefaultDisplayState;
                        if ((i3 == 1 || i3 == 3 || i3 == 4) && (aODDozeCallbackRecord = this.mAODCallback) != null) {
                            aODDozeCallbackRecord.onAODDozeAcquired();
                        }
                        return;
                    }
                    return;
                } catch (RemoteException unused) {
                    throw new IllegalArgumentException("AOD doze lock is already dead.");
                }
            }
            Log.d(str3, "acquireDozeInternal: already acquired");
        }
    }

    public final void releaseDozeInternal(IBinder iBinder) {
        synchronized (this.mAODDozeLocks) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("releaseDozeInternal: mAODCallback ");
            sb.append(this.mAODCallback != null ? "existed" : "null");
            sb.append(", display = ");
            sb.append(this.mDefaultDisplayState);
            Log.d(str, sb.toString());
            int i = this.mDefaultDisplayState;
            if (i != 2 && i != 1) {
                int findAODDozeLockIndexLocked = findAODDozeLockIndexLocked(iBinder);
                if (findAODDozeLockIndexLocked < 0) {
                    Log.d(str, "releaseDozeInternal: cannot find");
                    return;
                }
                AODDozeLock aODDozeLock = (AODDozeLock) this.mAODDozeLocks.get(findAODDozeLockIndexLocked);
                aODDozeLock.mLock.unlinkToDeath(aODDozeLock, 0);
                removeDozeLockLocked(findAODDozeLockIndexLocked);
            }
        }
    }

    public final void removeDozeLockLocked(int i) {
        AODDozeCallbackRecord aODDozeCallbackRecord;
        this.mAODDozeLocks.remove(i);
        if (!this.mAODDozeLocks.isEmpty() || (aODDozeCallbackRecord = this.mAODCallback) == null) {
            return;
        }
        aODDozeCallbackRecord.onAODDozeReleased();
    }

    public final void removeDozeLockLocked(AODDozeLock aODDozeLock, boolean z) {
        AODDozeCallbackRecord aODDozeCallbackRecord;
        this.mAODDozeLocks.remove(aODDozeLock);
        if (z && this.mAODDozeLocks.isEmpty() && (aODDozeCallbackRecord = this.mAODCallback) != null) {
            aODDozeCallbackRecord.onAODDozeReleased();
        }
    }

    public final void requestAODToastInternal(String str, AODToast aODToast) {
        synchronized (this.mAODDozeLocks) {
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("requestAODToastInternal: mAODCallback ");
            sb.append(this.mAODCallback != null ? "existed" : "null");
            sb.append(", toast: ");
            sb.append(aODToast);
            Log.d(str2, sb.toString());
            AODDozeCallbackRecord aODDozeCallbackRecord = this.mAODCallback;
            if (aODDozeCallbackRecord != null) {
                aODDozeCallbackRecord.onAODToastRequested(aODToast);
            }
        }
    }

    public final int findAODDozeLockIndexLocked(IBinder iBinder) {
        int size = this.mAODDozeLocks.size();
        for (int i = 0; i < size; i++) {
            if (((AODDozeLock) this.mAODDozeLocks.get(i)).mLock == iBinder) {
                return i;
            }
        }
        return -1;
    }

    public final int setLiveClockInfoInternal(int i, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
        checkSystemUid();
        return -1;
    }

    public final void setLiveClockNeedleInternal(byte[] bArr) {
        checkSystemUid();
    }

    public final String getActiveImageInfoInternal() {
        checkSystemUid();
        return null;
    }

    public final int setLiveClockImageInternal(int i, int i2, byte[] bArr, String str) {
        checkSystemUid();
        Log.e(TAG, "AODConfig.SUPPORT_ACTIVE_CLOCK is FALSE");
        return -1;
    }

    public final int setLiveClockCommandInternal(int i, int i2, int i3, int[] iArr) {
        checkSystemUid();
        Log.e(TAG, "AODConfig.SUPPORT_ACTIVE_CLOCK is FALSE");
        return -1;
    }

    public final void registerAODClockContentObserver() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        if (this.mContentObserver != null) {
            Log.i(TAG, "registerAODClockContentObserver unregister before ContentObserver");
            contentResolver.unregisterContentObserver(this.mContentObserver);
            this.mContentObserver = null;
        }
        this.mIsAODAnalogLiveClock = getAODClockType() / 10000 == 1;
        Log.i(TAG, "registerAODClockContentObserver: mIsAODAnalogLiveClock : " + this.mIsAODAnalogLiveClock);
        AnonymousClass4 anonymousClass4 = new ContentObserver(this.mAODHandler) { // from class: com.android.server.aod.AODManagerService.4
            public AnonymousClass4(Handler handler) {
                super(handler);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                if (uri != null && AODManagerService.AOD_SETTING_CLOCK_TYPE_URI_PARSED.equals(uri)) {
                    AODManagerService aODManagerService = AODManagerService.this;
                    aODManagerService.mIsAODAnalogLiveClock = aODManagerService.getAODClockType() / 10000 == 1;
                    Log.i(AODManagerService.TAG, "onChange: mIsAODAnalogLiveClock : " + AODManagerService.this.mIsAODAnalogLiveClock);
                }
            }
        };
        this.mContentObserver = anonymousClass4;
        contentResolver.registerContentObserver(AOD_SETTING_CLOCK_TYPE_URI_PARSED, false, anonymousClass4, -2);
    }

    /* renamed from: com.android.server.aod.AODManagerService$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends ContentObserver {
        public AnonymousClass4(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri != null && AODManagerService.AOD_SETTING_CLOCK_TYPE_URI_PARSED.equals(uri)) {
                AODManagerService aODManagerService = AODManagerService.this;
                aODManagerService.mIsAODAnalogLiveClock = aODManagerService.getAODClockType() / 10000 == 1;
                Log.i(AODManagerService.TAG, "onChange: mIsAODAnalogLiveClock : " + AODManagerService.this.mIsAODAnalogLiveClock);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r1 == null) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getAODClockType() {
        /*
            r8 = this;
            r0 = -1
            r1 = 0
            android.content.Context r8 = r8.mContextForUser     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            android.content.ContentResolver r2 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            android.net.Uri r3 = com.android.server.aod.AODManagerService.AOD_SETTING_CLOCK_TYPE_URI_PARSED     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r1 == 0) goto L23
            int r8 = r1.getCount()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r8 <= 0) goto L23
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            r8 = 0
            int r8 = r1.getInt(r8)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            r0 = r8
        L23:
            if (r1 == 0) goto L32
        L25:
            r1.close()
            goto L32
        L29:
            r8 = move-exception
            goto L33
        L2b:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L29
            if (r1 == 0) goto L32
            goto L25
        L32:
            return r0
        L33:
            if (r1 == 0) goto L38
            r1.close()
        L38:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.aod.AODManagerService.getAODClockType():int");
    }

    /* loaded from: classes.dex */
    public final class AODHandler extends Handler {
        public AODHandler(Looper looper) {
            super(looper, null, true);
        }
    }

    /* loaded from: classes.dex */
    public final class BinderService extends IAODManager.Stub {
        public /* synthetic */ BinderService(AODManagerService aODManagerService, BinderServiceIA binderServiceIA) {
            this();
        }

        public BinderService() {
        }

        public int setLiveClockInfo(int i, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return AODManagerService.this.setLiveClockInfoInternal(i, j, j2, j3, j4, j5, j6, j7, j8);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void setLiveClockNeedle(byte[] bArr) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.setLiveClockNeedleInternal(bArr);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public String getActiveImageInfo() {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return AODManagerService.this.getActiveImageInfoInternal();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public boolean isAODState() {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return AODManagerService.this.mAODSettingHelper.isAODShowState();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void writeAODCommand(String str, String str2, String str3, String str4, String str5) {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                if (isNeedUpdateTouchMode(str)) {
                    AODManagerService.this.mIsSingleTouchMode = isSingleTouchMode(str2);
                    if (setTspEnabled(str, str2)) {
                        return;
                    }
                }
                AODManagerService.this.writeAODCommandInternal(str, str2, str3, str4, str5);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public final boolean isNeedUpdateTouchMode(String str) {
            return "/sys/class/sec/tsp/input/enabled".equals(str) || "/sys/class/sec/sec_epen/input/enabled".equals(str) || "/sys/class/sec/tsp1/input/enabled".equals(str) || "/sys/class/sec/tsp2/input/enabled".equals(str);
        }

        public final boolean isSingleTouchMode(String str) {
            return "1".equals(str);
        }

        public final boolean setTspEnabled(String str, String str2) {
            int i;
            if (Build.VERSION.SEM_FIRST_SDK_INT < 31) {
                Slog.i(AODManagerService.TAG, "setTSPEnabled: First SDK version is less than S OS");
                return false;
            }
            if (AODManagerService.this.mInputDeviceManager == null) {
                Slog.i(AODManagerService.TAG, "setTSPEnabled: mInputDeviceManager is null");
                return false;
            }
            int i2 = AODManagerService.this.mIsSingleTouchMode ? 22 : 21;
            if ("/sys/class/sec/sec_epen/input/enabled".equals(str)) {
                i = 11;
                AODManagerService.this.mInputDeviceManager.setSpenEnabled(11, i2, false);
            } else {
                i = "/sys/class/sec/tsp2/input/enabled".equals(str) ? 2 : 1;
                AODManagerService.this.mInputDeviceManager.setTspEnabled(i, i2, false);
            }
            AODManagerService aODManagerService = AODManagerService.this;
            aODManagerService.requestedReCalToTSP = aODManagerService.mIsSingleTouchMode;
            Slog.i(AODManagerService.TAG, "setTspEnabled: location=" + str + ", cmd=" + str2 + ", devid=" + i + ", mode=" + i2 + ", mIsSingleTouchMode=" + AODManagerService.this.mIsSingleTouchMode);
            return true;
        }

        public void updateAODTspRect(int i, int i2, int i3, int i4, String str) {
            AODManagerService.this.checkSystemUidOrSystemUiUidOrSystemApp();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.updateAODTspRectInternal(i, i2, i3, i4, str);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public boolean isSViewCoverBrightnessHigh() {
            boolean z;
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                if (AODManagerService.this.mCoverController != null) {
                    if (AODManagerService.this.mCoverController.isSViewCoverBrightnessHigh()) {
                        z = true;
                        return z;
                    }
                }
                z = false;
                return z;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public int setLiveClockImage(int i, int i2, byte[] bArr, String str) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            int i3 = -1;
            if (bArr == null) {
                Slog.e(AODManagerService.TAG, "setLiveClockImage img_buf is null");
                return -1;
            }
            try {
                try {
                    i3 = AODManagerService.this.setLiveClockImageInternal(i, i2, bArr, str);
                } catch (Exception e) {
                    Slog.e(AODManagerService.TAG, "failed setLiveClockImage = " + e);
                }
                return i3;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public int setLiveClockCommand(int i, int i2, int i3, int[] iArr) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            int i4 = -1;
            if (iArr == null) {
                Slog.e(AODManagerService.TAG, "setLiveClockCommand dataArray is null");
                return -1;
            }
            try {
                try {
                    i4 = AODManagerService.this.setLiveClockCommandInternal(i, i2, i3, iArr);
                } catch (Exception e) {
                    Slog.e(AODManagerService.TAG, "failed setLiveClockCommand = " + e);
                }
                return i4;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public String getAodActiveArea(boolean z) {
            AODManagerService.this.checkSystemUidOrSystemUiUidOrSystemApp();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            int i = z ? 2 : 1;
            try {
                Log.i(AODManagerService.TAG, "getAodActiveArea isSubDisplay=" + z + " devid=" + i);
                return AODManagerService.this.mInputDeviceManager != null ? AODManagerService.this.mInputDeviceManager.getAodActiveArea(i) : "NG";
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void addLogText(List list) {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.addLogTextInternal(list);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void readyToScreenTurningOn() {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.readyToScreenTurningOnInternal();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void registerAODListener(IBinder iBinder) {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.registerAODListenerInternal(iBinder);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void unregisterAODListener(IBinder iBinder) {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.unregisterAODListenerInternal(iBinder);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void registerAODDozeCallback(IBinder iBinder) {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.registerAODDozeCallbackInternal(iBinder);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void unregisterAODDozeCallback(IBinder iBinder) {
            AODManagerService.this.checkSystemUidOrSystemUiUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.unregisterAODDozeCallbackInternal(iBinder);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void acquireDoze(IBinder iBinder, String str, String str2) {
            AODManagerService.this.checkSystemUidOrSystemUiUidOrSystemApp();
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.acquireDozeInternal(iBinder, str, str2, callingUid, callingPid);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void releaseDoze(IBinder iBinder) {
            AODManagerService.this.checkSystemUidOrSystemUiUidOrSystemApp();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.releaseDozeInternal(iBinder);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void requestAODToast(String str, AODToast aODToast) {
            AODManagerService.this.checkSystemUidOrSystemUiUidOrSystemApp();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.requestAODToastInternal(str, aODToast);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (AODManagerService.this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
                printWriter.println("Permission Denial: can't dump AODManagerService from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " without permission android.permission.DUMP");
                return;
            }
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AODManagerService.this.dumpInternal(printWriter);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public final boolean isCallerShell() {
            int callingUid = Binder.getCallingUid();
            return callingUid == 2000 || callingUid == 0;
        }

        public final void enforceShell() {
            if (!isCallerShell()) {
                throw new SecurityException("Caller must be shell");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
            enforceShell();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new AODManagerShellCommand(AODManagerService.this.mContext).exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class LocalService extends AODManagerInternal {
        public /* synthetic */ LocalService(AODManagerService aODManagerService, LocalServiceIA localServiceIA) {
            this();
        }

        public LocalService() {
        }

        public void screenTurningOn(AODManager.AODChangeListener aODChangeListener) {
            if (AODConfig.isNeedsScreenTurningOnDelayed() && AODManagerService.AOD_SCREEN_TURNING_ON_TIMEOUT + AODManagerService.DEBUG_TURNING_ON_DELAYED != 0) {
                if (AODManagerService.this.mAODHandler.hasCallbacks(AODManagerService.this.mScreenTurningOnRunnable)) {
                    AODManagerService.this.mAODHandler.removeCallbacks(AODManagerService.this.mScreenTurningOnRunnable);
                }
                Log.d(AODManagerService.TAG, "screenTurningOn post");
                if (AODManagerService.DEBUG_TURNING_ON_DELAYED != 0) {
                    Log.w(AODManagerService.TAG, "screenTurningOn post - add delay +" + AODManagerService.DEBUG_TURNING_ON_DELAYED);
                }
                synchronized (AODManagerService.this.mScreenTurningOnLock) {
                    AODManagerService.this.mAODChangeListener = aODChangeListener;
                }
                AODManagerService.this.mAODHandler.postDelayed(AODManagerService.this.mScreenTurningOnRunnable, AODManagerService.AOD_SCREEN_TURNING_ON_TIMEOUT + AODManagerService.DEBUG_TURNING_ON_DELAYED);
                AODManagerService.this.wakeUpInternal();
                return;
            }
            Log.d(AODManagerService.TAG, "screenTurningOn directly");
            if (aODChangeListener != null) {
                aODChangeListener.readyToScreenTurningOn();
            } else {
                Log.d(AODManagerService.TAG, "screenTurningOn : Do nothing, There is no Listener");
            }
        }

        public boolean isAODAnalogLiveClock() {
            Log.i(AODManagerService.TAG, "isAODAnalogLiveClock: mIsAODAnalogLiveClock : " + AODManagerService.this.mIsAODAnalogLiveClock);
            return AODManagerService.this.mIsAODAnalogLiveClock;
        }
    }

    /* loaded from: classes.dex */
    public class AODListenerRecord implements IBinder.DeathRecipient {
        public final int pid;
        public final IBinder token;
        public final int uid;

        public AODListenerRecord(IBinder iBinder, int i, int i2) {
            this.token = iBinder;
            this.pid = i;
            this.uid = i2;
            if (iBinder != null) {
                try {
                    iBinder.linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    Slog.e(AODManagerService.TAG, "AODListenerRecord : linkToDeath error");
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.v(AODManagerService.TAG, "binderDied");
            synchronized (AODManagerService.this.mListeners) {
                AODManagerService.this.mListeners.remove(this);
            }
            this.token.unlinkToDeath(this, 0);
        }

        public void onScreenTurningOn() {
            if (this.token == null) {
                Slog.w(AODManagerService.TAG, "onScreenTurningOn : token is null");
            } else {
                _onScreenTurningOn();
            }
        }

        public final void _onScreenTurningOn() {
            try {
                IAODCallback asInterface = IAODCallback.Stub.asInterface(this.token);
                if (asInterface != null) {
                    asInterface.onScreenTurningOn();
                }
            } catch (RemoteException e) {
                Slog.e(AODManagerService.TAG, "_onScreenTurningOn : RemoteException : ", e);
            }
        }

        public String toString() {
            return "  [Listener: pid:(" + this.pid + ") uid:(" + this.uid + ")]";
        }
    }

    /* loaded from: classes.dex */
    public class AODDozeCallbackRecord implements IBinder.DeathRecipient {
        public Handler mHandler;
        public final int pid;
        public final IBinder token;
        public final int uid;

        /* renamed from: com.android.server.aod.AODManagerService$AODDozeCallbackRecord$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends Handler {
            public AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int i = message.what;
                if (i == 1) {
                    AODDozeCallbackRecord.this.handleAODDozeAcquired();
                } else if (i == 2) {
                    AODDozeCallbackRecord.this.handleAODDozeReleased();
                } else {
                    if (i != 3) {
                        return;
                    }
                    AODDozeCallbackRecord.this.handleAODToastRequested((AODToast) message.obj);
                }
            }
        }

        public AODDozeCallbackRecord(IBinder iBinder, int i, int i2) {
            this.mHandler = new Handler(AODManagerService.this.mLooper) { // from class: com.android.server.aod.AODManagerService.AODDozeCallbackRecord.1
                public AnonymousClass1(Looper looper) {
                    super(looper);
                }

                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int i3 = message.what;
                    if (i3 == 1) {
                        AODDozeCallbackRecord.this.handleAODDozeAcquired();
                    } else if (i3 == 2) {
                        AODDozeCallbackRecord.this.handleAODDozeReleased();
                    } else {
                        if (i3 != 3) {
                            return;
                        }
                        AODDozeCallbackRecord.this.handleAODToastRequested((AODToast) message.obj);
                    }
                }
            };
            this.token = iBinder;
            this.pid = i;
            this.uid = i2;
            if (iBinder != null) {
                try {
                    iBinder.linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    Slog.e(AODManagerService.TAG, "AODListenerRecord : linkToDeath error");
                }
            }
        }

        public void onAODDozeAcquired() {
            if (this.token == null) {
                Slog.w(AODManagerService.TAG, "onAODDozeAcquired : token is null");
            } else {
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1));
            }
        }

        public void onAODDozeReleased() {
            if (this.token == null) {
                Slog.w(AODManagerService.TAG, "onAODDozeReleased : token is null");
            } else {
                this.mHandler.sendMessage(this.mHandler.obtainMessage(2));
            }
        }

        public void onAODToastRequested(AODToast aODToast) {
            if (this.token == null) {
                Slog.w(AODManagerService.TAG, "onAODDozeReleased : token is null");
                return;
            }
            Message obtainMessage = this.mHandler.obtainMessage(3);
            obtainMessage.obj = aODToast;
            this.mHandler.sendMessage(obtainMessage);
        }

        public final void handleAODDozeAcquired() {
            try {
                IAODDozeCallback asInterface = IAODDozeCallback.Stub.asInterface(this.token);
                if (asInterface != null) {
                    asInterface.onDozeAcquired();
                }
            } catch (RemoteException e) {
                Slog.e(AODManagerService.TAG, "handleAODDozeAcquired : RemoteException : ", e);
            }
        }

        public final void handleAODDozeReleased() {
            try {
                IAODDozeCallback asInterface = IAODDozeCallback.Stub.asInterface(this.token);
                if (asInterface != null) {
                    asInterface.onDozeReleased();
                }
            } catch (RemoteException e) {
                Slog.e(AODManagerService.TAG, "handleAODDozeReleased : RemoteException : ", e);
            }
        }

        public final void handleAODToastRequested(AODToast aODToast) {
            try {
                IAODDozeCallback asInterface = IAODDozeCallback.Stub.asInterface(this.token);
                if (asInterface != null) {
                    asInterface.onAODToastRequested(aODToast);
                }
            } catch (RemoteException e) {
                Slog.e(AODManagerService.TAG, "handleAODDozeReleased : RemoteException : ", e);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.v(AODManagerService.TAG, "binderDied");
            this.mHandler.removeCallbacksAndMessages(null);
            synchronized (AODManagerService.this.mAODDozeLocks) {
                AODManagerService.this.mAODCallback = null;
            }
            this.token.unlinkToDeath(this, 0);
        }

        public String toString() {
            return "[callback: pid:(" + this.pid + ") uid:(" + this.uid + ")]";
        }
    }

    /* loaded from: classes.dex */
    public final class AODDozeLock implements IBinder.DeathRecipient {
        public final IBinder mLock;
        public final int mOwnerPid;
        public final int mOwnerUid;
        public final String mPackageName;
        public String mTag;

        public AODDozeLock(IBinder iBinder, String str, String str2, int i, int i2) {
            this.mLock = iBinder;
            this.mTag = str;
            this.mPackageName = str2;
            this.mOwnerUid = i;
            this.mOwnerPid = i2;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.v(AODManagerService.TAG, "AODDozeLock : binderDied");
            synchronized (AODManagerService.this.mAODDozeLocks) {
                AODManagerService.this.mAODDozeLocks.remove(this);
            }
            this.mLock.unlinkToDeath(this, 0);
        }

        public String toString() {
            return "[AODDozeLock: tag:(" + this.mTag + ") packageName:(" + this.mPackageName + ") uid:(" + this.mOwnerUid + ") pid:(" + this.mOwnerPid + ")]";
        }
    }

    public final int getSystemUiUid() {
        return ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackageUid("com.android.systemui", 1048576L, 0);
    }

    public final boolean isSystemUiUid(int i) {
        return UserHandle.isSameApp(i, this.mSystemUiUid);
    }

    public final boolean isSystemApp(int i) {
        PackageManager packageManager = this.mContext.getPackageManager();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            String[] packagesForUid = packageManager.getPackagesForUid(i);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            if (packagesForUid != null) {
                for (String str : packagesForUid) {
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                        if (packageInfo != null && (packageInfo.applicationInfo.flags & 129) != 0) {
                            return true;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.w(TAG, String.format("Could not find package [%s]", str), e);
                    }
                }
            } else {
                Log.w(TAG, "No known packages with uid " + i);
            }
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public final void checkSystemUid() {
        if (isSystemUid(Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException("Disallowed call for uid " + Binder.getCallingUid());
    }

    public final void checkSystemUidOrSystemUiUid() {
        int callingUid = Binder.getCallingUid();
        if (isSystemUid(callingUid) || isSystemUiUid(callingUid)) {
            return;
        }
        throw new SecurityException("Disallowed call for uid " + Binder.getCallingUid());
    }

    public final void checkSystemUidOrSystemUiUidOrSystemApp() {
        int callingUid = Binder.getCallingUid();
        if (isSystemUid(callingUid) || isSystemUiUid(callingUid) || isSystemApp(callingUid)) {
            return;
        }
        throw new SecurityException("Disallowed call for uid " + Binder.getCallingUid());
    }

    public final void addAODAppLog(List list) {
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            this.mAppLogger.add((String) list.get(i), false);
        }
    }

    public final void addAODTspLog(String str) {
        Log.d(TAG, str);
        this.mTspLogger.add(str, true);
    }

    public final String displayStateToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? String.valueOf(i) : "DOZE_SUSPEND" : "DOZE" : "ON" : "OFF" : "UNKNOWN";
    }

    public final void dumpInternal(PrintWriter printWriter) {
        printWriter.println("AODMANAGER (dumpsys AODManagerService)");
        printWriter.println();
        AODConfig.dump(printWriter);
        printWriter.println("ActivityManager.getCurrentUser()=" + ActivityManager.getCurrentUser());
        printWriter.println();
        synchronized (this.mAODDozeLocks) {
            printWriter.println("mAODCallback= " + this.mAODCallback);
            Iterator it = this.mAODDozeLocks.iterator();
            while (it.hasNext()) {
                printWriter.println("AODDozeLock= " + ((AODDozeLock) it.next()));
            }
        }
        printWriter.println();
        printWriter.println("----- Regarding AOD TSP -----");
        printWriter.println("mIsAODModeEnabled(tsp.cmd aod_enable)=" + this.mIsAODModeEnabled);
        printWriter.println("mIsSingleTouchMode(tsp.input.enabled)=" + this.mIsSingleTouchMode);
        synchronized (this.mTspRects) {
            for (Map.Entry entry : this.mTspRects.entrySet()) {
                printWriter.println("tsp touch rect(uid :" + ((String) entry.getKey()) + "), " + entry.getValue());
            }
        }
        printWriter.println("tsp touch : x=" + this.mTspX + ", y=" + this.mTspY + ", w=" + this.mTspW + ", h=" + this.mTspH);
        StringBuilder sb = new StringBuilder();
        sb.append("live clock image info : ");
        sb.append(this.mLiveClockImageInfo);
        printWriter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Self Icon image info : ");
        sb2.append(this.mSelfIconImageInfo);
        printWriter.println(sb2.toString());
        this.mAppLogger.dump(printWriter);
        this.mLiveClockLogger.dump(printWriter);
        this.mTspLogger.dump(printWriter);
        AODSCoverController aODSCoverController = this.mCoverController;
        if (aODSCoverController != null) {
            aODSCoverController.dump(printWriter);
        }
    }
}
