package com.android.server.wm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.devicestate.DeviceStateManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.BoostFramework;
import android.util.Slog;
import com.android.server.ServiceThread;
import com.android.server.SystemServerInitThreadPool$$ExternalSyntheticLambda1;
import com.android.server.am.DynamicHiddenApp;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.samsung.android.knox.analytics.activation.ActivationMonitor;
import com.samsung.android.os.SemDvfsManager;
import com.samsung.android.os.SemPerfManager;
import com.samsung.android.rune.CoreRune;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class ActivityManagerPerformance {
    public static boolean AMP_ENABLE;
    public static boolean AMP_PERF_ENABLE;
    public static boolean AMP_RELAUNCH_RESUME_ON;
    public static boolean DEBUG;
    public static boolean DEBUG_TRACE;
    public static boolean NOT_USER_BINARY;
    public static int TIMEOUT_ACT_RESUME;
    public static int TIMEOUT_ACT_START;
    public static int TIMEOUT_APP_SWITCH;
    public static int TIMEOUT_PREV_RESUME;
    public static final String[] WALLPAPER_PROFILE;
    public static ActivityManagerPerformance booster;
    public static ActivityRecord curTopAct;
    public static int curTopState;
    public static final String[] gBlockedPkgs;
    public static final String[] gHotLaunchBoosterPkgs;
    public static final String[] gSystemuiPkgs;
    public static boolean isChinaModel;
    public static boolean isPerfReserveSupport;
    public static long lastMultiWindowWorkTime;
    public static final String[] mAppLaunchPackagesTimeOutLM;
    public static final String[] mAppLaunchPackagesTimeOutM;
    public static DynamicHiddenApp mDynamicHiddenApp;
    public static long mFoldListenedTime;
    public static final Object mLockinit;
    public static Base64.Decoder pkgDecoder;
    public static ActivityRecord prevSwitchActivity;
    public static final String[] sLowPerformancePkgList;
    public static HashSet sLowPerformancePkgSet;
    public boolean isMultiWindowResume;
    public long lastHomeBoostedTime;
    public long lastHomePressedTime;
    public SemDvfsManager mBoosterActResume;
    public SemDvfsManager mBoosterActStart;
    public SemDvfsManager mBoosterAppLaunch;
    public SemDvfsManager mBoosterAppSwitch;
    public SemDvfsManager mBoosterHome;
    public SemDvfsManager mBoosterLazy;
    public SemDvfsManager mBoosterPrevResume;
    public SemDvfsManager mBoosterRelaunchResume;
    public SemDvfsManager mBoosterTail;
    public final Context mContext;
    public final MainHandler mHandler;
    public final ServiceThread mHandlerThread;
    public boolean mIsTaskBoostExist;
    public SemDvfsManager mLuckyMoneyBooster;
    public final ActivityTaskManagerService mService;
    public SemDvfsManager mTaskBoostManager;
    public boolean needSkipResume;
    public ActivityRecord rCurBoostActResume;
    public ActivityRecord rCurBoostActStart;
    public ActivityRecord rCurBoostAppSwitch;
    public ActivityRecord rLastActHome;
    public ActivityRecord rLastActTail;
    public ActivityRecord rLastRelaunchResume;
    public boolean mIsSdhmsInitCompleted = false;
    public boolean mIsMidGroundCpuSetEnable = false;
    public boolean mIsFolded = false;
    public DeviceStateManager mDeviceStateManager = null;
    public final DeviceStateManager.DeviceStateCallback mDeviceStateCallback = new DeviceStateManager.DeviceStateCallback() { // from class: com.android.server.wm.ActivityManagerPerformance.1
        public AnonymousClass1() {
        }

        public void onStateChanged(int i) {
            ActivityManagerPerformance.this.mIsFolded = i == 0;
            ActivityManagerPerformance.mFoldListenedTime = SystemClock.uptimeMillis();
            if (ActivityManagerPerformance.DEBUG) {
                Slog.d("ActivityManagerPerformance", "onDisplayFoldChanged: state = " + i);
            }
        }
    };
    public Object mLockActResume = new Object();
    public Object mLockActStart = new Object();
    public Object mLockAppSwitch = new Object();
    public Object mLockTail = new Object();
    public Object mLockHome = new Object();
    public Object mLockRelaunchResume = new Object();
    public Object mLockAppLaunch = new Object();
    public boolean mIsScreenOn = true;
    public final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.wm.ActivityManagerPerformance.2
        public AnonymousClass2() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.SCREEN_OFF")) {
                if (ActivityManagerPerformance.DEBUG) {
                    Slog.d("ActivityManagerPerformance", "Screen state changed. mIsScreenOn: false");
                }
                ActivityManagerPerformance.this.mIsScreenOn = false;
            } else {
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Screen state changed. mIsScreenOn: true");
                    }
                    ActivityManagerPerformance.this.mIsScreenOn = true;
                    ActivityManagerPerformance.this.needSkipResume = true;
                    return;
                }
                if (action.equals("com.sec.android.sdhms.action.INIT_COMPLETED")) {
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "SDHMS INIT_COMPLETED");
                    }
                    ActivityManagerPerformance.this.mIsSdhmsInitCompleted = true;
                }
            }
        }
    };

    static {
        boolean z = true;
        boolean z2 = ("user".equals(Build.TYPE) && "true".equals(SystemProperties.get("ro.product_ship", "false"))) ? false : true;
        NOT_USER_BINARY = z2;
        if (!z2 && !"true".equals(SystemProperties.get("sys.config.amp_debug", "false"))) {
            z = false;
        }
        DEBUG = z;
        DEBUG_TRACE = "true".equals(SystemProperties.get("sys.config.amp_debug_trace", "false"));
        AMP_ENABLE = "true".equals(SystemProperties.get("sys.config.amp_enable", "true"));
        AMP_PERF_ENABLE = "true".equals(SystemProperties.get("sys.config.amp_perf_enable", "true"));
        AMP_RELAUNCH_RESUME_ON = "true".equals(SystemProperties.get("sys.config.amp_relaunch_resume", "true"));
        TIMEOUT_ACT_RESUME = Integer.parseInt(SystemProperties.get("sys.config.amp_to_act_resume", "1000"));
        TIMEOUT_ACT_START = Integer.parseInt(SystemProperties.get("sys.config.amp_to_act_start", "2000"));
        TIMEOUT_APP_SWITCH = Integer.parseInt(SystemProperties.get("sys.config.amp_to_app_switch", "3000"));
        TIMEOUT_PREV_RESUME = Integer.parseInt(SystemProperties.get("sys.config.amp_to_prev_resume", "3000"));
        isChinaModel = ActivationMonitor.CHINA_COUNTRY_CODE.equalsIgnoreCase(SystemProperties.get(ActivationMonitor.COUNTRY_CODE_PROPERTY));
        mDynamicHiddenApp = null;
        pkgDecoder = Base64.getDecoder();
        sLowPerformancePkgList = new String[]{x("Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="), x("Y29tLmFuZHJvaWQuY2hyb21l")};
        mAppLaunchPackagesTimeOutLM = new String[]{x("Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="), x("Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"), x("Y29tLm5obi5hbmRyb2lkLnNlYXJjaA=="), x("Y29tLmdvb2dsZS5hbmRyb2lkLmdt"), x("Y29tLnNhbXN1bmcuYW5kcm9pZC5lbWFpbC51aQ=="), x("Y29tLmFuZHJvaWQudmVuZGluZw=="), x("Y29tLnNhbXN1bmcuZXZlcmdsYWRlcy52aWRlbw=="), x("Y29tLnNhbXN1bmcuYW5kcm9pZC52aWRlbw=="), x("Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="), x("Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="), x("Y29tLmJhaWR1LmFwcHNlYXJjaA=="), x("Y29tLnNpbmEud2VpYm8="), x("Y29tLmJhaWR1LkJhaWR1TWFw"), x("Y29tLnR3aXR0ZXIuYW5kcm9pZA==")};
        mAppLaunchPackagesTimeOutM = new String[]{x("Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE=")};
        gHotLaunchBoosterPkgs = new String[]{x("Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="), x("Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg==")};
        gBlockedPkgs = new String[]{x("Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ==")};
        isPerfReserveSupport = false;
        lastMultiWindowWorkTime = SystemClock.uptimeMillis();
        mFoldListenedTime = SystemClock.uptimeMillis();
        mLockinit = new Object();
        prevSwitchActivity = null;
        WALLPAPER_PROFILE = new String[]{"MidgroundProcess"};
        gSystemuiPkgs = new String[]{x("Y29tLmFuZHJvaWQuc3lzdGVtdWk="), x("Y29tLnNlYy5hbmRyb2lkLmRleHN5c3RlbXVp")};
    }

    public static int getAppLaunchHintIdByPkg(String str, boolean z) {
        if (str == null) {
            return -999;
        }
        for (String str2 : mAppLaunchPackagesTimeOutM) {
            if (str.contains(str2)) {
                return 27;
            }
        }
        for (String str3 : mAppLaunchPackagesTimeOutLM) {
            if (str.contains(str3)) {
                return z ? 35 : 28;
            }
        }
        return z ? -999 : 32;
    }

    /* renamed from: com.android.server.wm.ActivityManagerPerformance$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements DeviceStateManager.DeviceStateCallback {
        public AnonymousClass1() {
        }

        public void onStateChanged(int i) {
            ActivityManagerPerformance.this.mIsFolded = i == 0;
            ActivityManagerPerformance.mFoldListenedTime = SystemClock.uptimeMillis();
            if (ActivityManagerPerformance.DEBUG) {
                Slog.d("ActivityManagerPerformance", "onDisplayFoldChanged: state = " + i);
            }
        }
    }

    public final void registerFoldStateCallback() {
        if (this.mDeviceStateManager == null) {
            this.mDeviceStateManager = (DeviceStateManager) this.mContext.getSystemService(DeviceStateManager.class);
        }
        DeviceStateManager deviceStateManager = this.mDeviceStateManager;
        if (deviceStateManager != null) {
            deviceStateManager.registerCallback(new SystemServerInitThreadPool$$ExternalSyntheticLambda1(), this.mDeviceStateCallback);
        }
    }

    public final boolean isJustFoldedState() {
        if (!this.mIsFolded || SystemClock.uptimeMillis() - mFoldListenedTime >= 500) {
            return false;
        }
        if (!DEBUG) {
            return true;
        }
        Slog.d("ActivityManagerPerformance", "mIsFolded: true && Folded just now");
        return true;
    }

    public ActivityManagerPerformance(ActivityTaskManagerService activityTaskManagerService, Context context) {
        this.mIsTaskBoostExist = false;
        this.mTaskBoostManager = null;
        this.mService = activityTaskManagerService;
        this.mContext = context;
        sLowPerformancePkgSet = new HashSet();
        int i = 0;
        while (true) {
            String[] strArr = sLowPerformancePkgList;
            if (i >= strArr.length) {
                break;
            }
            sLowPerformancePkgSet.add(strArr[i]);
            i++;
        }
        ServiceThread serviceThread = new ServiceThread("AmpHandlerThread", -2, false);
        this.mHandlerThread = serviceThread;
        serviceThread.start();
        this.mHandler = new MainHandler(serviceThread.getLooper());
        isPerfReserveSupport = new File("/proc/perf_reserve").exists();
        registerReceiver();
        SemDvfsManager createInstance = SemDvfsManager.createInstance(this.mContext, "TASK_BOOST");
        this.mTaskBoostManager = createInstance;
        if (createInstance != null) {
            this.mIsTaskBoostExist = createInstance.checkSysfsIdExist(4204048);
        }
        registerFoldStateCallback();
        SluggishDetector.setLockContentionInfo((short) 1000, "thread_name | wait_ms[/0/] | file_name | line_number[/0/] | method_name");
    }

    public static ActivityManagerPerformance getBooster(ActivityTaskManagerService activityTaskManagerService, Context context) {
        ActivityManagerPerformance booster2;
        if (activityTaskManagerService == null || context == null) {
            return null;
        }
        synchronized (mLockinit) {
            if (AMP_ENABLE && booster == null) {
                booster = new ActivityManagerPerformance(activityTaskManagerService, context);
            }
            booster2 = getBooster();
        }
        return booster2;
    }

    public static ActivityManagerPerformance getBooster() {
        if (AMP_ENABLE) {
            return booster;
        }
        return null;
    }

    /* loaded from: classes3.dex */
    public final class MainHandler extends Handler {
        public MainHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            boolean z;
            if (message == null) {
                return;
            }
            Object obj = message.obj;
            ActivityRecord activityRecord = null;
            if (obj != null) {
                ActivityRecord activityRecord2 = obj instanceof ActivityRecord ? (ActivityRecord) obj : null;
                String str2 = obj instanceof String ? (String) obj : null;
                z = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
                ActivityRecord activityRecord3 = activityRecord2;
                str = str2;
                activityRecord = activityRecord3;
            } else {
                str = null;
                z = false;
            }
            switch (message.what) {
                case 1:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_DISABLE_APP_SWITCH, r: " + activityRecord);
                    }
                    ActivityManagerPerformance.this.setBoosterAppSwitch(false, activityRecord);
                    return;
                case 2:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_DISABLE_ACT_START, r: " + activityRecord);
                    }
                    ActivityManagerPerformance.this.setBoosterActStart(false, activityRecord);
                    return;
                case 3:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_DISABLE_ACT_RESUME, r: " + activityRecord);
                    }
                    ActivityManagerPerformance.this.setBoosterActResume(false, activityRecord);
                    return;
                case 4:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_ENABLE_ACT_RESUME_TAIL r: " + activityRecord);
                    }
                    ActivityManagerPerformance.this.setBoosterTail(false, activityRecord);
                    return;
                case 5:
                default:
                    return;
                case 6:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_CFMS_HINT_AMS_SWITCH pkgName: " + str);
                    }
                    SemPerfManager.sendCommandToSsrm("AMS_APP_SWITCH", str);
                    return;
                case 7:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_CFMS_HINT_AMS_HOME pkgName: " + str);
                    }
                    SemPerfManager.sendCommandToSsrm("AMS_APP_HOME", str);
                    return;
                case 8:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_ENABLE_APP_SWITCH, r: " + activityRecord);
                    }
                    ActivityManagerPerformance.this.setBoosterAppSwitch(true, activityRecord);
                    return;
                case 9:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_OLAF_FREEZE_ON_OFF  value: " + z);
                    }
                    ActivityManagerPerformance.this.olafFreezer(z);
                    return;
                case 10:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_OLAF_FREEZE_CLEAR");
                    }
                    ActivityManagerPerformance.this.olafFreezer(false);
                    return;
                case 11:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_PERF_RESERVE_ON_OFF  value: " + str);
                    }
                    ActivityManagerPerformance.this.perfReserveControl(str);
                    return;
                case 12:
                    int intValue = ((Integer) message.obj).intValue();
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_PERF_TASK_BOOST  pid: " + intValue);
                    }
                    ActivityManagerPerformance.this.taskBoostAcq(intValue);
                    return;
                case 13:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_PERF_TASK_BOOST_END");
                    }
                    ActivityManagerPerformance.this.taskBoostRel();
                    return;
                case 14:
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_DHA_BOOSTER_ON");
                    }
                    if (ActivityManagerPerformance.mDynamicHiddenApp == null) {
                        ActivityManagerPerformance.mDynamicHiddenApp = DynamicHiddenApp.getInstance();
                    }
                    ActivityManagerPerformance.mDynamicHiddenApp.doDhaBoosterOn(str);
                    return;
                case 15:
                    int intValue2 = ((Integer) message.obj).intValue();
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Received MSG_ANIMATION_BOOSTER  timeout: " + intValue2);
                    }
                    SemPerfManager.sendCommandToSsrm("ANIMATION_BOOST", Integer.toString(intValue2));
                    return;
            }
        }
    }

    public static String topStateToString(int i) {
        if (i == 0) {
            return "TOP_STATE_INIT";
        }
        if (i == 1) {
            return "TOP_STATE_IS_CREATING";
        }
        if (i == 2) {
            return "TOP_STATE_HOME";
        }
        if (i == 3) {
            return "TOP_STATE_RECENTS_APP";
        }
        if (i == 4) {
            return "TOP_STATE_APP";
        }
        return "NO_STATE_NUM_OF_" + i;
    }

    public static synchronized void notifyMultiWindowChanged(ActivityRecord activityRecord) {
        synchronized (ActivityManagerPerformance.class) {
            if (AMP_ENABLE && curTopAct != activityRecord) {
                if (DEBUG) {
                    Slog.d("ActivityManagerPerformance", "notifyMultiWindowChanged() focus changed\n[Activity] prev: " + curTopAct + ", cur: " + activityRecord);
                    if (DEBUG_TRACE) {
                        new Exception().printStackTrace();
                    }
                }
                curTopAct = activityRecord;
                lastMultiWindowWorkTime = SystemClock.uptimeMillis();
            }
        }
    }

    public static final boolean isBlockedApp(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : gBlockedPkgs) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSpeg(String str, String str2) {
        if (!CoreRune.SYSFW_APP_SPEG || !"com.samsung.speg".equals(str2)) {
            return false;
        }
        Slog.i("SPEG", "Skipping boost of " + str);
        return true;
    }

    public final boolean checkBoostDisabledByFold() {
        if (CoreRune.SYSPERF_BOOST_DISABLE_WHEN_FOLDED) {
            return this.mService.mWindowManager.isFolded();
        }
        return false;
    }

    public void notifyTaskBoost(int i) {
        MainHandler mainHandler = this.mHandler;
        mainHandler.sendMessage(mainHandler.obtainMessage(12, Integer.valueOf(i)));
    }

    public void notifyAnimationBoost(int i) {
        if (CoreRune.SYSPERF_VI_BOOST) {
            MainHandler mainHandler = this.mHandler;
            mainHandler.sendMessage(mainHandler.obtainMessage(15, Integer.valueOf(i)));
        }
    }

    public static synchronized void notifyCurTopAct(ActivityRecord activityRecord) {
        int i;
        ActivityRecord activityRecord2;
        HashSet hashSet;
        ActivityManagerPerformance activityManagerPerformance;
        ActivityRecord activityRecord3;
        synchronized (ActivityManagerPerformance.class) {
            if (AMP_ENABLE && curTopAct != activityRecord) {
                if (activityRecord == null) {
                    i = 1;
                } else if (activityRecord.isActivityTypeHome()) {
                    i = 2;
                } else {
                    i = activityRecord.isActivityTypeRecents() ? 3 : 4;
                }
                if (DEBUG) {
                    String str = "notifyCurTopAct() activity changed\n[Activity] prev: " + curTopAct + ", cur: " + activityRecord;
                    if (DEBUG_TRACE) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        sb.append("\n[Process] prev: ");
                        ActivityRecord activityRecord4 = curTopAct;
                        sb.append(activityRecord4 != null ? activityRecord4.processName : null);
                        sb.append(", cur: ");
                        sb.append(activityRecord != null ? activityRecord.processName : null);
                        String sb2 = sb.toString();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(sb2);
                        sb3.append("\n[Package] prev: ");
                        ActivityRecord activityRecord5 = curTopAct;
                        sb3.append(activityRecord5 != null ? activityRecord5.packageName : null);
                        sb3.append(", cur: ");
                        sb3.append(activityRecord != null ? activityRecord.packageName : null);
                        str = sb3.toString() + "\n[TOP_STATE] prev: " + topStateToString(curTopState) + ", cur: " + topStateToString(i);
                    }
                    Slog.d("ActivityManagerPerformance", str);
                    if (DEBUG_TRACE) {
                        new Exception().printStackTrace();
                    }
                }
                if (CoreRune.ALLIED_PROC_PROTECTION_LMKD && (activityRecord3 = curTopAct) != null && activityRecord != null) {
                    if (activityRecord.mLaunchSourceType == 4) {
                        if (!activityRecord.packageName.equals(activityRecord3.packageName)) {
                            synchronized (DynamicHiddenApp.alliedProtectedProcList) {
                                ActivityRecord activityRecord6 = activityRecord.resultTo;
                                if (activityRecord6 != null) {
                                    if (!DynamicHiddenApp.alliedProtectedProcList.contains(activityRecord6.packageName)) {
                                        DynamicHiddenApp.alliedProtectedProcList.add(activityRecord.resultTo.packageName);
                                    }
                                    if (DEBUG) {
                                        Slog.d("ActivityManagerPerformance", activityRecord.resultTo.packageName + " allied process eligble for LMKD kill protect");
                                    }
                                }
                                if (DynamicHiddenApp.alliedProtectedProcList.contains(activityRecord.packageName)) {
                                    DynamicHiddenApp.alliedProtectedProcList.remove(activityRecord.packageName);
                                }
                            }
                        }
                    } else {
                        synchronized (DynamicHiddenApp.alliedProtectedProcList) {
                            DynamicHiddenApp.alliedProtectedProcList.clear();
                        }
                    }
                }
                curTopAct = activityRecord;
                prevSwitchActivity = null;
                int i2 = curTopState;
                if (i2 != i) {
                    curTopState = i;
                    if (AMP_PERF_ENABLE && (activityManagerPerformance = booster) != null && activityManagerPerformance.mIsScreenOn) {
                        if (i == 2) {
                            if (DEBUG) {
                                Slog.d("ActivityManagerPerformance", "notifyCurTopAct() call setBoosterHome()");
                            }
                            booster.setBoosterHome(true, false, activityRecord);
                            return;
                        }
                        if (i2 == 3 && (i == 4 || i == 1)) {
                            try {
                                ActivityRecord activityRecord7 = activityManagerPerformance.rCurBoostAppSwitch;
                                if (activityRecord7 == null || (activityRecord7 != activityRecord && (activityRecord == null || !activityRecord.processName.equals(activityRecord7.processName)))) {
                                    ActivityManagerPerformance activityManagerPerformance2 = booster;
                                    if (activityManagerPerformance2.isMultiWindowResume && curTopState == 4) {
                                        activityManagerPerformance2.isMultiWindowResume = false;
                                        if (DEBUG) {
                                            Slog.d("ActivityManagerPerformance", "notifyCurTopAct() skipped. isMultiWindowResume: true");
                                        }
                                        return;
                                    } else {
                                        if (DEBUG) {
                                            Slog.d("ActivityManagerPerformance", "notifyCurTopAct() call setBoosterAppSwitch()");
                                        }
                                        booster.setBoosterAppSwitch(true, activityRecord);
                                        return;
                                    }
                                }
                            } catch (NullPointerException e) {
                                e.printStackTrace();
                                booster.isMultiWindowResume = false;
                                return;
                            }
                        }
                    }
                }
                ActivityManagerPerformance activityManagerPerformance3 = booster;
                if (activityManagerPerformance3 != null && (activityRecord2 = curTopAct) != null && (hashSet = sLowPerformancePkgSet) != null) {
                    activityManagerPerformance3.setLowPower(hashSet.contains(activityRecord2.packageName));
                }
            }
        }
    }

    public String getCurBoostInfoStr() {
        String str;
        String str2 = "===== ActivityManagerPerformance, getCurBoostInfoStr info =====\nAMP_ENABLE: " + AMP_ENABLE + ", AMP_PERF_ENABLE: " + AMP_PERF_ENABLE + ", mIsScreenOn: " + this.mIsScreenOn;
        if (AMP_PERF_ENABLE) {
            str = str2 + "\nTIMEOUT_ACT_RESUME: " + TIMEOUT_ACT_RESUME + ", TIMEOUT_ACT_START: " + TIMEOUT_ACT_START + ", TIMEOUT_APP_SWITCH: " + TIMEOUT_APP_SWITCH;
        } else {
            str = str2 + "\nTIMEOUT_PREV_RESUME: " + TIMEOUT_PREV_RESUME;
        }
        String str3 = (str + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE) + "\n[curTopState] " + topStateToString(curTopState);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append("\n[rCurBoostAppSwitch] procName: ");
        ActivityRecord activityRecord = this.rCurBoostAppSwitch;
        sb.append(activityRecord != null ? activityRecord.processName : null);
        sb.append(" (");
        sb.append(this.rCurBoostAppSwitch);
        sb.append(")");
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append("\n[rCurBoostActStart] procName: ");
        ActivityRecord activityRecord2 = this.rCurBoostActStart;
        sb3.append(activityRecord2 != null ? activityRecord2.processName : null);
        sb3.append(" (");
        sb3.append(this.rCurBoostActStart);
        sb3.append(")");
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append(sb4);
        sb5.append("\n[rCurBoostActResume] procName: ");
        ActivityRecord activityRecord3 = this.rCurBoostActResume;
        sb5.append(activityRecord3 != null ? activityRecord3.processName : null);
        sb5.append(" (");
        sb5.append(this.rCurBoostActResume);
        sb5.append(")");
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append(sb6);
        sb7.append("\n[rLastActTail] procName: ");
        ActivityRecord activityRecord4 = this.rLastActTail;
        sb7.append(activityRecord4 != null ? activityRecord4.processName : null);
        sb7.append(" (");
        sb7.append(this.rLastActTail);
        sb7.append(")");
        String sb8 = sb7.toString();
        StringBuilder sb9 = new StringBuilder();
        sb9.append(sb8);
        sb9.append("\n[rLastActHome] procName: ");
        ActivityRecord activityRecord5 = this.rLastActHome;
        sb9.append(activityRecord5 != null ? activityRecord5.processName : null);
        sb9.append(" (");
        sb9.append(this.rLastActHome);
        sb9.append(")");
        String sb10 = sb9.toString();
        StringBuilder sb11 = new StringBuilder();
        sb11.append(sb10);
        sb11.append("\n[rLastRelaunchResume] procName: ");
        ActivityRecord activityRecord6 = this.rLastRelaunchResume;
        sb11.append(activityRecord6 != null ? activityRecord6.processName : null);
        sb11.append(" (");
        sb11.append(this.rLastRelaunchResume);
        sb11.append(")");
        return sb11.toString() + "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  =====";
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setBoosterActResume(boolean r8, com.android.server.wm.ActivityRecord r9) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityManagerPerformance.setBoosterActResume(boolean, com.android.server.wm.ActivityRecord):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setBoosterActStart(boolean r7, com.android.server.wm.ActivityRecord r8) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityManagerPerformance.setBoosterActStart(boolean, com.android.server.wm.ActivityRecord):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setBoosterAppSwitch(boolean r9, com.android.server.wm.ActivityRecord r10) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityManagerPerformance.setBoosterAppSwitch(boolean, com.android.server.wm.ActivityRecord):void");
    }

    public final void setBoosterTail(boolean z, ActivityRecord activityRecord) {
        if (DEBUG) {
            String str = activityRecord != null ? activityRecord.processName : null;
            StringBuilder sb = new StringBuilder();
            sb.append("setBoosterTail() from ");
            sb.append(z ? "AppSwitch" : "ActStart");
            sb.append(", r: ");
            sb.append(str);
            sb.append(" (");
            sb.append(activityRecord);
            sb.append(")");
            Slog.d("ActivityManagerPerformance", sb.toString());
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "setBoosterTail() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (checkBoostDisabledByFold()) {
            if (DEBUG) {
                Slog.d("ActivityManagerPerformance", "setBoosterTail() skipped. Device folded : true");
                return;
            }
            return;
        }
        if (!this.mIsScreenOn) {
            if (DEBUG) {
                Slog.d("ActivityManagerPerformance", "setBoosterTail() skipped. mIsScreenOn: false");
                return;
            }
            return;
        }
        if ((z && this.rCurBoostActStart != null) || (!z && this.rCurBoostAppSwitch != null)) {
            if (DEBUG) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("setBoosterTail() skipped. ");
                sb2.append(!z ? "AppSwitch" : "ActStart");
                sb2.append(" is not finished");
                Slog.d("ActivityManagerPerformance", sb2.toString());
                return;
            }
            return;
        }
        if (this.mBoosterTail == null) {
            this.mBoosterTail = SemDvfsManager.createInstance(this.mContext, "AMS_RESUME_TAIL", 21);
        }
        if (this.mBoosterLazy == null) {
            this.mBoosterLazy = SemDvfsManager.createInstance(this.mContext, "AMS_ACT_LAZY", 21);
        }
        SemDvfsManager semDvfsManager = this.mBoosterTail;
        if (semDvfsManager == null) {
            Slog.e("ActivityManagerPerformance", "setBoosterTail() skipped. SemDvfsManager.createInstance() failed");
            return;
        }
        SemDvfsManager semDvfsManager2 = this.mBoosterLazy;
        if (semDvfsManager2 == null) {
            Slog.e("ActivityManagerPerformance", "setBoosterTail() skipped. SemDvfsManager.createInstance() failed");
            return;
        }
        try {
            synchronized (this.mLockTail) {
                semDvfsManager.acquire();
                semDvfsManager2.acquire();
                this.rLastActTail = activityRecord;
            }
            Slog.d("ActivityManagerPerformance", "AMP_acquire() TAIL");
        } catch (Exception e) {
            Slog.e("ActivityManagerPerformance", "AMP_acquire() TAIL failed");
            if (DEBUG) {
                Slog.e("ActivityManagerPerformance", "AMP_acquire() TAIL failed. e: " + e + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + getCurBoostInfoStr());
            }
            e.printStackTrace();
        }
    }

    public final void setBoosterHome(boolean z, boolean z2, ActivityRecord activityRecord) {
        String str = activityRecord != null ? activityRecord.packageName : null;
        if (DEBUG) {
            Slog.d("ActivityManagerPerformance", "setBoosterHome() fastBoost: " + z + ", startAct: " + z2 + ", curTopState: " + topStateToString(curTopState) + ", r: " + (activityRecord != null ? activityRecord.processName : null) + " (" + activityRecord + "), pkgName : " + str);
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "setBoosterHome() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (curTopState == 0) {
            Slog.w("ActivityManagerPerformance", "setBoosterHome() skipped. Method is called by non-system_server");
            return;
        }
        if (!this.mIsScreenOn) {
            if (DEBUG) {
                Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. mIsScreenOn: false");
                return;
            }
            return;
        }
        if (checkBoostDisabledByFold()) {
            if (DEBUG) {
                Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. Device folded : true");
                return;
            }
            return;
        }
        if (isJustFoldedState()) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (z) {
            if (activityRecord == null) {
                this.lastHomePressedTime = uptimeMillis;
            } else if (uptimeMillis - this.lastHomePressedTime < 200 || uptimeMillis - this.lastHomeBoostedTime < 200) {
                if (this.rLastActHome != activityRecord) {
                    this.rLastActHome = activityRecord;
                }
                if (DEBUG) {
                    Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. uninterrupted boosting");
                    return;
                }
                return;
            }
            if (activityRecord == null && curTopState == 2) {
                if (DEBUG) {
                    Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. Home key was pressed, but curTopState is already " + topStateToString(curTopState));
                    return;
                }
                return;
            }
        } else {
            if (uptimeMillis - this.lastHomePressedTime < 200 || uptimeMillis - this.lastHomeBoostedTime < 200) {
                if (this.rLastActHome != activityRecord && activityRecord != null) {
                    this.rLastActHome = activityRecord;
                }
                if (DEBUG) {
                    Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. uninterrupted boosting");
                    return;
                }
                return;
            }
            if (curTopState == 2) {
                try {
                    ActivityRecord activityRecord2 = this.rCurBoostAppSwitch;
                    ActivityRecord activityRecord3 = this.rCurBoostActStart;
                    if (activityRecord != null && (activityRecord2 == activityRecord || activityRecord3 == activityRecord || ((activityRecord2 != null && activityRecord.processName.equals(activityRecord2.processName)) || (activityRecord3 != null && activityRecord.processName.equals(activityRecord3.processName))))) {
                        if (DEBUG) {
                            Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. already boosted " + activityRecord.processName);
                            return;
                        }
                        return;
                    }
                    if (z2) {
                        if (DEBUG) {
                            Slog.d("ActivityManagerPerformance", "setBoosterHome() call setBoosterActStart()");
                        }
                        setBoosterActStart(true, activityRecord);
                        return;
                    }
                    try {
                        ActivityRecord activityRecord4 = this.rCurBoostActResume;
                        if (activityRecord != null && (activityRecord4 == activityRecord || (activityRecord4 != null && activityRecord.processName.equals(activityRecord4.processName)))) {
                            if (DEBUG) {
                                Slog.d("ActivityManagerPerformance", "setBoosterHome() skipped. already boosted " + activityRecord.processName);
                                return;
                            }
                            return;
                        }
                        if (DEBUG) {
                            Slog.d("ActivityManagerPerformance", "setBoosterHome() call setBoosterActResume()");
                        }
                        setBoosterActResume(true, activityRecord);
                        return;
                    } catch (NullPointerException e) {
                        e.printStackTrace();
                        return;
                    }
                } catch (NullPointerException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        if (this.mBoosterHome == null) {
            this.mBoosterHome = SemDvfsManager.createInstance(this.mContext, "AMS_APP_HOME", 21);
        }
        SemDvfsManager semDvfsManager = this.mBoosterHome;
        if (semDvfsManager == null) {
            Slog.e("ActivityManagerPerformance", "setBoosterHome() skipped. SemDvfsManager.createInstance() failed");
            return;
        }
        this.lastHomeBoostedTime = uptimeMillis;
        try {
            synchronized (this.mLockHome) {
                semDvfsManager.acquire();
                this.rLastActHome = activityRecord;
            }
            Slog.d("ActivityManagerPerformance", "AMP_acquire() HOME");
        } catch (Exception e3) {
            Slog.e("ActivityManagerPerformance", "AMP_acquire() HOME failed");
            if (DEBUG) {
                Slog.e("ActivityManagerPerformance", "AMP_acquire() HOME failed. e: " + e3 + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + getCurBoostInfoStr());
            }
            e3.printStackTrace();
        }
    }

    public final void setBoosterRelaunchResume(ActivityRecord activityRecord) {
        if (DEBUG) {
            Slog.d("ActivityManagerPerformance", "setBoosterRelaunchResume() r: " + (activityRecord != null ? activityRecord.processName : null) + " (" + activityRecord + ")");
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "setBoosterRelaunchResume() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (this.mBoosterRelaunchResume == null) {
            this.mBoosterRelaunchResume = SemDvfsManager.createInstance(this.mContext, "AMS_RELAUNCH_RESUME", 21);
        }
        SemDvfsManager semDvfsManager = this.mBoosterRelaunchResume;
        if (semDvfsManager == null) {
            Slog.e("ActivityManagerPerformance", "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed");
            return;
        }
        try {
            synchronized (this.mLockRelaunchResume) {
                semDvfsManager.acquire();
                this.rLastRelaunchResume = activityRecord;
            }
            Slog.d("ActivityManagerPerformance", "AMP_acquire() RELAUNCH_RESUME");
        } catch (Exception e) {
            Slog.e("ActivityManagerPerformance", "AMP_acquire() RELAUNCH_RESUME failed");
            if (DEBUG) {
                Slog.e("ActivityManagerPerformance", "AMP_acquire() RELAUNCH_RESUME failed. e: " + e + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + getCurBoostInfoStr());
            }
            e.printStackTrace();
        }
    }

    public void writeSysfs(String str, String str2) {
        StringBuilder sb;
        File file = new File(str);
        if (!file.exists() || !file.canWrite() || str2 == null) {
            Slog.e("ActivityManagerPerformance", "writeSysfs:: path() : " + str + " exist() : " + file.exists() + " canWrite() : " + file.canWrite());
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    fileOutputStream2.write(str2.getBytes("UTF-8"));
                    fileOutputStream2.flush();
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e) {
                        e = e;
                        sb = new StringBuilder();
                        sb.append("e = ");
                        sb.append(e.getMessage());
                        Slog.e("ActivityManagerPerformance", sb.toString());
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    Slog.e("ActivityManagerPerformance", "e = " + e.getMessage());
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e = e3;
                            sb = new StringBuilder();
                            sb.append("e = ");
                            sb.append(e.getMessage());
                            Slog.e("ActivityManagerPerformance", sb.toString());
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            Slog.e("ActivityManagerPerformance", "e = " + e4.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
    }

    public final void olafFreezer(boolean z) {
        Process.doSomethingOlaf(z);
    }

    public final void perfReserveControl(String str) {
        if (isPerfReserveSupport) {
            writeSysfs("/proc/perf_reserve", str);
        }
    }

    public void onAppLaunch(ActivityRecord activityRecord, boolean z) {
        if (activityRecord == null || isSpeg(activityRecord.packageName, activityRecord.launchedFromPackage) || isBlockedApp(activityRecord.packageName) || isJustFoldedState()) {
            return;
        }
        synchronized (this.mLockAppLaunch) {
            if (this.mBoosterAppLaunch == null) {
                this.mBoosterAppLaunch = SemDvfsManager.createInstance(this.mContext, "AMS_APP_LAUNCH", 21);
            }
            if (this.mBoosterAppLaunch != null) {
                this.mBoosterAppLaunch.setHint(getAppLaunchHintIdByPkg(activityRecord.packageName, z));
                this.mBoosterAppLaunch.acquire();
            }
        }
    }

    public final void taskBoostAcq(int i) {
        if (CoreRune.SYSPERF_QC_TASK_BOOST_ENABLE) {
            new BoostFramework().perfLockAcquire(2000, new int[]{1086849024, i});
        }
        if (this.mTaskBoostManager == null || !this.mIsTaskBoostExist) {
            return;
        }
        this.mHandler.removeMessages(13);
        String num = Integer.toString(i);
        Trace.traceBegin(1L, "taskBoostAcq pid : " + num);
        this.mTaskBoostManager.sysfsWrite(4204048, num);
        Trace.traceEnd(1L);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(13), 2000L);
    }

    public final void taskBoostRel() {
        SemDvfsManager semDvfsManager = this.mTaskBoostManager;
        if (semDvfsManager == null || !this.mIsTaskBoostExist) {
            return;
        }
        semDvfsManager.sysfsWrite(4204048, "0");
    }

    public void onActivityStartLocked(ActivityRecord activityRecord) {
        if (DEBUG) {
            Slog.d("ActivityManagerPerformance", "onActivityStartLocked() r: " + activityRecord.processName + " (" + activityRecord + ")");
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "onActivityStartLocked() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (!AMP_ENABLE || isSpeg(activityRecord.packageName, activityRecord.launchedFromPackage) || isBlockedApp(activityRecord.packageName)) {
            return;
        }
        if (this.isMultiWindowResume) {
            this.isMultiWindowResume = false;
        }
        if (!this.mIsScreenOn) {
            if (DEBUG) {
                Slog.d("ActivityManagerPerformance", "onActivityStartLocked() skipped. mIsScreenOn: false");
                return;
            }
            return;
        }
        if (isJustFoldedState()) {
            return;
        }
        if (this.needSkipResume) {
            this.needSkipResume = false;
        }
        if (!AMP_PERF_ENABLE) {
            setBoosterActStart(true, activityRecord);
            return;
        }
        if (activityRecord.isActivityTypeHome()) {
            setBoosterHome(false, true, activityRecord);
            return;
        }
        if (activityRecord.isActivityTypeRecents()) {
            setBoosterActStart(true, activityRecord);
            return;
        }
        ActivityRecord activityRecord2 = curTopAct;
        if (activityRecord2 != null && activityRecord2.processName.equals(activityRecord.processName)) {
            try {
                ActivityRecord activityRecord3 = this.rCurBoostAppSwitch;
                ActivityRecord activityRecord4 = this.rCurBoostActStart;
                if (activityRecord3 == activityRecord || activityRecord4 == activityRecord || ((activityRecord3 != null && activityRecord.processName.equals(activityRecord3.processName)) || (activityRecord4 != null && activityRecord.processName.equals(activityRecord4.processName)))) {
                    if (DEBUG) {
                        Slog.d("ActivityManagerPerformance", "onActivityStartLocked() skipped. already boosted " + activityRecord.processName);
                        return;
                    }
                    return;
                }
                setBoosterActStart(true, activityRecord);
                return;
            } catch (NullPointerException e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            ActivityRecord activityRecord5 = this.rCurBoostAppSwitch;
            if (activityRecord5 == activityRecord || (activityRecord5 != null && activityRecord.processName.equals(activityRecord5.processName))) {
                if (DEBUG) {
                    Slog.d("ActivityManagerPerformance", "onActivityStartLocked() skipped. already boosted " + activityRecord.processName);
                    return;
                }
                return;
            }
            MainHandler mainHandler = this.mHandler;
            mainHandler.sendMessage(mainHandler.obtainMessage(8, activityRecord));
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01d0, code lost:
    
        if (r8.processName.equals(r0.processName) != false) goto L280;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onActivityResumeLocked(com.android.server.wm.ActivityRecord r8) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityManagerPerformance.onActivityResumeLocked(com.android.server.wm.ActivityRecord):void");
    }

    public void onActivityRelaunchLocked(ActivityRecord activityRecord, boolean z) {
        if (DEBUG) {
            Slog.d("ActivityManagerPerformance", "onActivityRelaunchLocked() r: " + (activityRecord != null ? activityRecord.processName : null) + " (" + activityRecord + "), andResume: " + z);
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "onActivityRelaunchLocked() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (AMP_RELAUNCH_RESUME_ON) {
            if (!this.mIsScreenOn) {
                if (DEBUG) {
                    Slog.d("ActivityManagerPerformance", "onActivityRelaunchLocked() skipped. mIsScreenOn: false");
                }
            } else if (!isJustFoldedState() && z) {
                setBoosterRelaunchResume(activityRecord);
            }
        }
    }

    public void onActivityVisibleLocked(ActivityRecord activityRecord) {
        if (DEBUG) {
            if (activityRecord == null) {
                Slog.e("ActivityManagerPerformance", "onActivityVisibleLocked() ActivityRecord is Null");
                return;
            }
            if (activityRecord.processName == null) {
                Slog.e("ActivityManagerPerformance", "onActivityVisibleLocked() ActivityRecord's ProcessName is Null");
            } else {
                Slog.d("ActivityManagerPerformance", "onActivityVisibleLocked() r: " + activityRecord.processName + " (" + activityRecord + ")");
            }
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "onActivityVisibleLocked() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (AMP_ENABLE && !isJustFoldedState()) {
            if (this.isMultiWindowResume) {
                this.isMultiWindowResume = false;
            }
            if (this.rCurBoostActResume != null) {
                setBoosterActResume(false, activityRecord);
            }
            if (this.rCurBoostActStart != null) {
                setBoosterActStart(false, activityRecord);
            }
            if (this.rCurBoostAppSwitch == null || activityRecord == null || activityRecord.isActivityTypeHome() || activityRecord.isActivityTypeRecents()) {
                return;
            }
            setBoosterAppSwitch(false, activityRecord);
        }
    }

    public void isHomeKeyPressed() {
        if (DEBUG) {
            Slog.d("ActivityManagerPerformance", "isHomeKeyPressed() called");
            if (DEBUG_TRACE) {
                Slog.d("ActivityManagerPerformance", "isHomeKeyPressed() Trace\n" + getCurBoostInfoStr());
                new Exception().printStackTrace();
            }
        }
        if (AMP_ENABLE && AMP_PERF_ENABLE) {
            setBoosterHome(true, false, null);
        }
    }

    public final void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("com.sec.android.sdhms.action.INIT_COMPLETED");
        intentFilter.setPriority(999);
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
    }

    /* renamed from: com.android.server.wm.ActivityManagerPerformance$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends BroadcastReceiver {
        public AnonymousClass2() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.SCREEN_OFF")) {
                if (ActivityManagerPerformance.DEBUG) {
                    Slog.d("ActivityManagerPerformance", "Screen state changed. mIsScreenOn: false");
                }
                ActivityManagerPerformance.this.mIsScreenOn = false;
            } else {
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "Screen state changed. mIsScreenOn: true");
                    }
                    ActivityManagerPerformance.this.mIsScreenOn = true;
                    ActivityManagerPerformance.this.needSkipResume = true;
                    return;
                }
                if (action.equals("com.sec.android.sdhms.action.INIT_COMPLETED")) {
                    if (ActivityManagerPerformance.DEBUG) {
                        Slog.d("ActivityManagerPerformance", "SDHMS INIT_COMPLETED");
                    }
                    ActivityManagerPerformance.this.mIsSdhmsInitCompleted = true;
                }
            }
        }
    }

    public final void setLowPower(boolean z) {
        synchronized (this.mLockActStart) {
            SemDvfsManager semDvfsManager = this.mBoosterActStart;
            if (semDvfsManager != null) {
                if (z) {
                    semDvfsManager.setHint(29);
                } else {
                    semDvfsManager.setHint(4);
                }
            }
        }
        synchronized (this.mLockActResume) {
            SemDvfsManager semDvfsManager2 = this.mBoosterActResume;
            if (semDvfsManager2 != null) {
                if (z) {
                    semDvfsManager2.setHint(30);
                } else {
                    semDvfsManager2.setHint(3);
                }
            }
        }
        synchronized (this.mLockTail) {
            SemDvfsManager semDvfsManager3 = this.mBoosterTail;
            if (semDvfsManager3 != null) {
                if (z) {
                    semDvfsManager3.setHint(31);
                } else {
                    semDvfsManager3.setHint(5);
                }
            }
        }
    }

    public final boolean isMultiWindowScenario(ActivityRecord activityRecord, ActivityRecord activityRecord2) {
        String str;
        String str2;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (activityRecord != null && activityRecord.mLastReportedMultiWindowMode) {
            lastMultiWindowWorkTime = uptimeMillis;
        } else if (activityRecord2 != null && activityRecord2.mLastReportedMultiWindowMode) {
            lastMultiWindowWorkTime = uptimeMillis;
        } else if (activityRecord != null && (str2 = activityRecord.processName) != null && str2.contains("appsedge")) {
            lastMultiWindowWorkTime = uptimeMillis;
        } else if (activityRecord2 != null && (str = activityRecord2.processName) != null && str.contains("appsedge")) {
            lastMultiWindowWorkTime = uptimeMillis;
        }
        return uptimeMillis - lastMultiWindowWorkTime < 1000;
    }

    public void notifyPidOfWallpaper(int i, int i2, String str, boolean z) {
        if (isSystemui(str)) {
            return;
        }
        if (z) {
            Process.requestProcessProfile(i, i2, WALLPAPER_PROFILE);
            if (!this.mIsSdhmsInitCompleted || this.mIsMidGroundCpuSetEnable) {
                return;
            }
            SemPerfManager.sendCommandToSsrm("MIDGROUND_PROCESS_DETECT", "TRUE");
            this.mIsMidGroundCpuSetEnable = true;
            return;
        }
        if (this.mIsSdhmsInitCompleted) {
            SemPerfManager.sendCommandToSsrm("MIDGROUND_PROCESS_DETECT", "FALSE");
            this.mIsMidGroundCpuSetEnable = false;
        }
    }

    public static boolean isSystemui(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : gSystemuiPkgs) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public static String x(String str) {
        Base64.Decoder decoder = pkgDecoder;
        return decoder == null ? "" : new String(decoder.decode(str));
    }
}
