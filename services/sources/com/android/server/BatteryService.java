package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.BroadcastOptions;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.hardware.health.HealthInfo;
import android.hardware.input.InputManager;
import android.os.BatteryManagerInternal;
import android.os.BatteryProperty;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBatteryPropertiesRegistrar;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UEventObserver;
import android.os.UserHandle;
import android.provider.Settings;
import android.sysprop.PowerProperties;
import android.telephony.TelephonyManager;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.IBatteryStats;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.FunctionalUtils;
import com.android.server.am.BatteryStatsService;
import com.android.server.battery.BattFeatures;
import com.android.server.battery.BattInfoManager;
import com.android.server.battery.BattUtils;
import com.android.server.battery.BatteryLogger;
import com.android.server.battery.sleepcharging.SleepChargingManager;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.health.HealthInfoCallback;
import com.android.server.health.HealthServiceWrapper;
import com.android.server.health.Utils;
import com.android.server.lights.LightsManager;
import com.android.server.lights.LogicalLight;
import com.android.server.power.PowerManagerUtil;
import com.android.server.power.ShutdownThread;
import com.android.server.power.Slog;
import com.att.iqi.lib.IQIManager;
import com.att.iqi.lib.metrics.hw.HW0E;
import com.att.iqi.lib.metrics.hw.HW12;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManager;
import com.samsung.android.knox.custom.LauncherConfigurationInternal;
import com.samsung.android.rune.CoreRune;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.time.LocalDate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.NoSuchElementException;
import vendor.samsung.hardware.health.SehHealthInfo;

/* loaded from: classes.dex */
public final class BatteryService extends SystemService {
    public static final int DEFAULT_PROTECTION_THRESHOLD_LEVEL;
    public static final boolean EUREKA_PROJECT;
    public static final boolean FEATURE_FULL_BATTERY_CYCLE;
    public static final boolean FEATURE_SUPPORTED_DAILY_BOARD;
    public static final boolean FEATURE_WIRELESS_FAST_CHARGER_CONTROL;
    public static final String PRODUCT_NAME;
    public static final String TAG = "BatteryService";
    public final String HEALTH_INSTANCE_VENDOR;
    public boolean isVideoCall;
    public ActivityManagerInternal mActivityManagerInternal;
    public boolean mActivityManagerReady;
    public final int mAdaptiveFastChargingOffset;
    public boolean mAdaptiveFastChargingSettingsEnable;
    public AdaptiveFastChargingSettingsObserver mAdaptiveFastChargingSettingsObserver;
    public String mAfcDisableSysFs;
    public BroadcastReceiver mAudioModeChangeReceiver;
    public BattInfoManager mBattInfoManager;
    public BroadcastReceiver mBattSlateModeControlReceiver;
    public int mBatteryCapacity;
    public Bundle mBatteryChangedOptions;
    public boolean mBatteryInputSuspended;
    public boolean mBatteryLevelCritical;
    public boolean mBatteryLevelLow;
    public ArrayDeque mBatteryLevelsEventQueue;
    public long mBatteryMaxCurrent;
    public long mBatteryMaxTemp;
    public int mBatteryNearlyFullLevel;
    public Bundle mBatteryOptions;
    public BatteryPropertiesRegistrar mBatteryPropertiesRegistrar;
    public final IBatteryStats mBatteryStats;
    public int mBatteryType;
    public int mBatteryUsageSinceLastAsocUpdate;
    public BinderService mBinderService;
    public boolean mBootCompleted;
    public BroadcastReceiver mBootCompletedReceiver;
    public Handler mCallHandler;
    public HandlerThread mCallHandlerThread;
    public int mChargeStartLevel;
    public long mChargeStartTime;
    public final Context mContext;
    public int mCriticalBatteryLevel;
    public long mCurrentBatteryUsage;
    public Calendar mCurrentCalendar;
    public DateChangedReceiver mDateChangedReceiver;
    public BroadcastReceiver mDexReceiver;
    public int mDischargeStartLevel;
    public long mDischargeStartTime;
    public boolean mEnableIqi;
    public BroadcastReceiver mFastWirelessAutoModeReceiver;
    public long mFullBatteryDuration;
    public long mFullBatteryStartTime;
    public boolean mFullCapacityEnable;
    public FullCapacityEnableSettingsObserver mFullCapacityEnableSettingsObserver;
    public final Handler mHandler;
    public final Handler mHandlerForBatteryInfoBackUp;
    public HealthInfo mHealthInfo;
    public HealthServiceWrapper mHealthServiceWrapper;
    public BroadcastReceiver mHiccupControlReceiver;
    public BroadcastReceiver mIntentReceiver;
    public int mInvalidCharger;
    public boolean mIsAuthQrEqualsEfs;
    public boolean mIsFirstIntentSended;
    public boolean mIsHiccupPopupShowing;
    public boolean mIsSbpFgQrEqualsEfs;
    public boolean mIsSkipActionBatteryChanged;
    public boolean mIsUnlockedBootCompleted;
    public boolean mIsWirelessTxSupported;
    public int mLastBatteryChargeType;
    public int mLastBatteryCurrentEvent;
    public int mLastBatteryCurrentNow;
    public int mLastBatteryCycleCount;
    public int mLastBatteryEvent;
    public boolean mLastBatteryEventWaterInConnector;
    public int mLastBatteryHealth;
    public int mLastBatteryHighVoltageCharger;
    public int mLastBatteryLevel;
    public long mLastBatteryLevelChangedSentMs;
    public boolean mLastBatteryLevelCritical;
    public int mLastBatteryOnline;
    public boolean mLastBatteryPowerSharingOnline;
    public boolean mLastBatteryPresent;
    public int mLastBatteryStatus;
    public int mLastBatteryTemperature;
    public int mLastBatteryVoltage;
    public int mLastCharingState;
    public int mLastDeterioration;
    public int mLastInvalidCharger;
    public int mLastLowBatteryWarningLevel;
    public int mLastMaxChargingCurrent;
    public int mLastMaxChargingVoltage;
    public int mLastPlugType;
    public int mLastSecPlugTypeSummary;
    public final SehHealthInfo mLastSehHealthInfo;
    public boolean mLastTxEventRxConnected;
    public boolean mLastTxEventTxEnabled;
    public int mLastWcTxId;
    public boolean mLastWirelessBackPackChargingStatus;
    public boolean mLastWirelessChargingStatus;
    public boolean mLastWirelessPinDetected;
    public int mLastWirelessPowerSharingExternelEvent;
    public int mLastWirelessPowerSharingTxEvent;
    public boolean mLastchargerPogoOnline;
    public int mLatestWirelessChargingMode;
    public Led mLed;
    public boolean mLedChargingSettingsEnable;
    public boolean mLedLowBatterySettingsEnable;
    public LedSettingsObserver mLedSettingsObserver;
    public boolean mLifeExtender;
    public LifeExtenderSettingsObserver mLifeExtenderSettingsObserver;
    public final Object mLock;
    public final Object mLockBatteryInfoBackUp;
    public int mLongBatteryRetryCnt;
    public int mLowBatteryCloseWarningLevel;
    public int mLowBatteryWarningLevel;
    public int mLtcHighSocDuration;
    public int mLtcHighThreshold;
    public int mLtcReleaseThreshold;
    public String mManufactureDate;
    public MetricsLogger mMetricsLogger;
    public boolean mNotifyWirelessEnabled;
    public boolean mPassThroughSettingsEnable;
    public PassThroughSettingsObserver mPassThroughSettingsObserver;
    public int mPlugType;
    public int mPogoCondition;
    public int mPogoDockState;
    public Bundle mPowerOptions;
    public int mProtectBatteryMode;
    public int mProtectionThreshold;
    public int mRefreshRateModeSetting;
    public RefreshRateModeSettingsObserver mRefreshRateModeSettingsObserver;
    public BroadcastReceiver mRequestOtgChargeBlockReceiver;
    public String mRfCalDate;
    public final Runnable mSaveBatteryMaxCurrentRunnable;
    public final Runnable mSaveBatteryMaxTempRunnable;
    public final Runnable mSaveBatteryUsageRunnable;
    public long mSavedBatteryAsoc;
    public int mSavedBatteryBeginningDate;
    public long mSavedBatteryMaxCurrent;
    public long mSavedBatteryMaxTemp;
    public long mSavedBatteryUsage;
    public long mSavedBatteryUsageForSbpFg;
    public int mSavedDiffWeek;
    public long mSavedFullBatteryDuration;
    public boolean mScreenOn;
    public int mSecPlugTypeSummary;
    public SehHealthInfo mSehHealthInfo;
    public SemInputDeviceManager mSemInputDeviceManager;
    public boolean mSentLowBatteryBroadcast;
    public int mSequence;
    public boolean mShouldCheckFirstUseDateRegularly;
    public int mShutdownBatteryTemperature;
    public Handler mSkipActionBatteryChangedHandler;
    public BroadcastReceiver mSleepChargingDismissReceiver;
    public Handler mSleepChargingHandler;
    public SleepChargingManager mSleepChargingManager;
    public final int mSuperFastChargingOffset;
    public boolean mSuperFastChargingSettingsEnable;
    public SuperFastChargingSettingsObserver mSuperFastChargingSettingsObserver;
    public int mTxBatteryLimit;
    public TxBatteryLimitSettingsObserver mTxBatteryLimitSettingsObserver;
    public final Runnable mUpdateBatteryAsocRunnable;
    public final Runnable mUpdateBatteryUsageExtenderRunnable;
    public final Runnable mUpdateBatteryUsageFullCapacityEnableRunnable;
    public boolean mUpdatesStopped;
    public boolean mWasUsedWirelessFastChargerPreviously;
    public WcParamInfoSettingsObserver mWcParamInfoSettingsObserver;
    public final int mWcParamOffset;
    public int mWcTxId;
    public final int mWirelessFastChargingOffset;
    public boolean mWirelessFastChargingSettingsEnable;
    public WirelessFastChargingSettingsObserver mWirelessFastChargingSettingsObserver;
    public BroadcastReceiver mWirelessPowerSharingReceiver;
    public TelephonyManager tm;
    public static final String TAG_SS = "[SS]" + BatteryService.class.getSimpleName();
    public static final String[] DUMPSYS_ARGS = {"--checkin", "--unplugged"};
    public static final String[] ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS = {"/sys/class/sec/switch/afc_disable", "sys/class/sec/afc/afc_disable"};
    public static final boolean FEATURE_HICCUP_CONTROL = isFileSupported("/sys/class/sec/switch/hiccup");
    public static final String PACKAGE_DEVICE_CARE = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME");
    public static String ACTION_ENTER_DESK_MODE = "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE";
    public static String ACTION_EXIT_DESK_MODE = "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE";
    public static final boolean FEATURE_SAVE_BATTERY_CYCLE = isFileSupported("/sys/class/power_supply/battery/battery_cycle");

    static {
        String trim = SystemProperties.get("ro.product.vendor.device", "NONE").trim();
        PRODUCT_NAME = trim;
        boolean z = trim.startsWith("e1") || trim.startsWith("e2") || trim.startsWith("e3");
        EUREKA_PROJECT = z;
        FEATURE_FULL_BATTERY_CYCLE = z || BattFeatures.isSupport("BFSU");
        FEATURE_SUPPORTED_DAILY_BOARD = isSupportedDailyBoard();
        DEFAULT_PROTECTION_THRESHOLD_LEVEL = Settings.Global.BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE;
        FEATURE_WIRELESS_FAST_CHARGER_CONTROL = isFileSupported("/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl");
    }

    public final void activateSleepChargingManager(boolean z) {
        String str = TAG_SS;
        Slog.i(str, "[activateSleepChargingManager]activate:" + z);
        if (z) {
            if (this.mSleepChargingManager != null) {
                Slog.e(str, "[activateSleepChargingManager]activated multiple times => ignored");
                return;
            }
            createSleepChargingHandler();
            SleepChargingManager sleepChargingManager = new SleepChargingManager(this.mContext, this.mSleepChargingHandler, this.mProtectionThreshold);
            this.mSleepChargingManager = sleepChargingManager;
            HealthInfo healthInfo = this.mHealthInfo;
            if (healthInfo != null) {
                sleepChargingManager.updateChargingInfo(this.mPlugType, this.mChargeStartTime, healthInfo.batteryLevel, healthInfo.batteryChargeTimeToFullNowSeconds);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED");
            createSleepChargingDismissReceiver();
            this.mContext.registerReceiver(this.mSleepChargingDismissReceiver, intentFilter, "com.samsung.permission.WRITE_SM_DATA", null);
            return;
        }
        BroadcastReceiver broadcastReceiver = this.mSleepChargingDismissReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mSleepChargingDismissReceiver = null;
        }
        SleepChargingManager sleepChargingManager2 = this.mSleepChargingManager;
        if (sleepChargingManager2 != null) {
            sleepChargingManager2.end();
            this.mSleepChargingManager = null;
        }
        Handler handler = this.mSleepChargingHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mSleepChargingHandler = null;
        }
    }

    public final void createSleepChargingHandler() {
        Slog.d(TAG_SS, "[createSleepChargingHandler]");
        this.mSleepChargingHandler = new Handler(Looper.myLooper()) { // from class: com.android.server.BatteryService.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String str;
                String str2;
                String str3;
                Slog.i(BatteryService.TAG_SS, "[bs_handleMessage]msg:" + message.what);
                if (BatteryService.this.mProtectBatteryMode != 4) {
                    Slog.e(BatteryService.TAG_SS, "[bs_handleMessage]Currently, Not Battery Adaptive Protect Mode");
                    return;
                }
                int i = message.what;
                if (i != 1) {
                    str = "";
                    if (i == 2) {
                        BatteryService.this.setSleepCharging(false);
                        r1 = message.arg1 == 1;
                        str2 = "off";
                    } else if (i == 3) {
                        str = (String) message.obj;
                        str2 = "update";
                    } else {
                        str3 = "";
                        Intent intent = new Intent("com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING");
                        intent.setFlags(16777216);
                        intent.putExtra("sleep_charging_event", str);
                        intent.putExtra("sleep_charging_finish_time", str3);
                        intent.putExtra("is_sleep_charging_complete_success", r1);
                        Slog.i(BatteryService.TAG_SS, "[bs_handleMessage]extraEvent:" + str + " ,extraSleepChargingFinishTime:" + str3 + " ,isSleepChargingCompleteSuccess:" + r1);
                        BatteryService.sendBroadcastToExplicitPackage(BatteryService.this.mContext, intent, "com.android.systemui");
                        BatteryService.sendBroadcastToExplicitPackage(BatteryService.this.mContext, intent, BatteryService.PACKAGE_DEVICE_CARE);
                    }
                } else {
                    BatteryService.this.setSleepCharging(true);
                    str = (String) message.obj;
                    str2 = "on";
                }
                String str4 = str;
                str = str2;
                str3 = str4;
                Intent intent2 = new Intent("com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING");
                intent2.setFlags(16777216);
                intent2.putExtra("sleep_charging_event", str);
                intent2.putExtra("sleep_charging_finish_time", str3);
                intent2.putExtra("is_sleep_charging_complete_success", r1);
                Slog.i(BatteryService.TAG_SS, "[bs_handleMessage]extraEvent:" + str + " ,extraSleepChargingFinishTime:" + str3 + " ,isSleepChargingCompleteSuccess:" + r1);
                BatteryService.sendBroadcastToExplicitPackage(BatteryService.this.mContext, intent2, "com.android.systemui");
                BatteryService.sendBroadcastToExplicitPackage(BatteryService.this.mContext, intent2, BatteryService.PACKAGE_DEVICE_CARE);
            }
        };
    }

    public final void createSleepChargingDismissReceiver() {
        Slog.d(TAG_SS, "[createSleepChargingDismissReceiver]");
        this.mSleepChargingDismissReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                Slog.i(BatteryService.TAG_SS, "[SleepChargingDismissReceiver_onReceive]action:" + action);
                if (BatteryService.this.mSleepChargingManager != null) {
                    BatteryService.this.mSleepChargingManager.updateDismiss();
                }
            }
        };
    }

    /* loaded from: classes.dex */
    public class FullCapacityEnableSettingsObserver extends ContentObserver {
        public FullCapacityEnableSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.FullCapacityEnableSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        ContentResolver contentResolver = BatteryService.this.mContext.getContentResolver();
                        if (BatteryService.this.mLifeExtender) {
                            Slog.d(BatteryService.TAG, "!@battery life extender used before!");
                            BatteryService.this.mLifeExtender = false;
                            BatteryService.this.mHandlerForBatteryInfoBackUp.post(BatteryService.this.mUpdateBatteryUsageExtenderRunnable);
                            Settings.System.putIntForUser(contentResolver, "protect_battery", 0, -2);
                        }
                        if (BattFeatures.SUPPORT_ECO_BATTERY) {
                            int i = BatteryService.this.mProtectBatteryMode;
                            BatteryService.this.mProtectBatteryMode = Settings.Global.getInt(contentResolver, "protect_battery", 0);
                            String str = i + " => " + BatteryService.this.mProtectBatteryMode;
                            Slog.i(BatteryService.TAG_SS, "Battery Protect Mode Changed: " + str);
                            BatteryLogger.writeToFile("/data/log/battery_service/sleep_charging_history", "Battery Protect Mode Changed", str);
                            BatteryService.this.writeProtectBatteryValues();
                            if (BatteryService.this.mIsUnlockedBootCompleted) {
                                if (BatteryService.this.mProtectBatteryMode == 4) {
                                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.FullCapacityEnableSettingsObserver.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            BatteryService.this.activateSleepChargingManager(true);
                                        }
                                    });
                                } else {
                                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.FullCapacityEnableSettingsObserver.1.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            BatteryService.this.activateSleepChargingManager(false);
                                        }
                                    });
                                }
                            } else {
                                Slog.w(BatteryService.TAG_SS, "Battery Protect Mode Changed before UnlockedBootCompleted => ignored");
                            }
                        } else {
                            BatteryService.this.mFullCapacityEnable = Settings.Global.getInt(contentResolver, "protect_battery", 0) == 1;
                            Slog.d(BatteryService.TAG_SS, "!@mFullCapacityEnable Settings = " + BatteryService.this.mFullCapacityEnable);
                            BatteryService.this.mHandlerForBatteryInfoBackUp.post(BatteryService.this.mUpdateBatteryUsageFullCapacityEnableRunnable);
                        }
                    }
                }
            });
        }
    }

    public final void setCallWirelessPowerSharingExternelEvent(boolean z) {
        if (z) {
            TelephonyManager telephonyManager = this.tm;
            if (telephonyManager != null) {
                this.isVideoCall = telephonyManager.semIsVideoCall();
                Slog.d(TAG, "isVideoCall: " + this.isVideoCall);
            }
            Slog.d(TAG, "call start, isVideoCall: " + this.isVideoCall);
            if (this.isVideoCall) {
                setWirelessPowerSharingExternelEventInternal(1, 1);
                return;
            } else {
                setWirelessPowerSharingExternelEventInternal(4, 4);
                return;
            }
        }
        Slog.d(TAG, "call end, isVideoCall: " + this.isVideoCall);
        if (this.isVideoCall) {
            setWirelessPowerSharingExternelEventInternal(1, 0);
        } else {
            setWirelessPowerSharingExternelEventInternal(4, 0);
        }
        this.isVideoCall = false;
    }

    public final void startCallThread() {
        HandlerThread handlerThread = new HandlerThread("CallThread");
        this.mCallHandlerThread = handlerThread;
        handlerThread.start();
        this.mCallHandler = new Handler(this.mCallHandlerThread.getLooper()) { // from class: com.android.server.BatteryService.10
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i != 0) {
                    if (i == 1) {
                        BatteryService.this.setCallWirelessPowerSharingExternelEvent(false);
                        return;
                    } else if (i != 2) {
                        return;
                    }
                }
                BatteryService.this.setCallWirelessPowerSharingExternelEvent(true);
            }
        };
    }

    /* loaded from: classes.dex */
    public class LedSettingsObserver extends ContentObserver {
        public LedSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            synchronized (BatteryService.this.mLock) {
                ContentResolver contentResolver = BatteryService.this.mContext.getContentResolver();
                boolean z2 = true;
                BatteryService.this.mLedChargingSettingsEnable = Settings.System.getIntForUser(contentResolver, "led_indicator_charing", 1, -2) == 1;
                BatteryService batteryService = BatteryService.this;
                if (Settings.System.getIntForUser(contentResolver, "led_indicator_low_battery", 1, -2) != 1) {
                    z2 = false;
                }
                batteryService.mLedLowBatterySettingsEnable = z2;
                Slog.d(BatteryService.TAG, "Led Charging Settings = " + BatteryService.this.mLedChargingSettingsEnable);
                Slog.d(BatteryService.TAG, "Led Low Battery Settings = " + BatteryService.this.mLedLowBatterySettingsEnable);
                BatteryService.this.mLed.updateLightsLocked();
            }
        }
    }

    /* loaded from: classes.dex */
    public class AdaptiveFastChargingSettingsObserver extends ContentObserver {
        public AdaptiveFastChargingSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.AdaptiveFastChargingSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        ContentResolver contentResolver = BatteryService.this.mContext.getContentResolver();
                        BatteryService batteryService = BatteryService.this;
                        boolean z2 = true;
                        if (Settings.System.getIntForUser(contentResolver, "adaptive_fast_charging", 1, -2) != 1) {
                            z2 = false;
                        }
                        batteryService.mAdaptiveFastChargingSettingsEnable = z2;
                        Slog.d(BatteryService.TAG, "AdaptiveFastCharging Settings = " + BatteryService.this.mAdaptiveFastChargingSettingsEnable);
                        BatteryService batteryService2 = BatteryService.this;
                        batteryService2.setAdaptiveFastCharging(batteryService2.mAdaptiveFastChargingSettingsEnable);
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class SuperFastChargingSettingsObserver extends ContentObserver {
        public SuperFastChargingSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.SuperFastChargingSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        ContentResolver contentResolver = BatteryService.this.mContext.getContentResolver();
                        BatteryService batteryService = BatteryService.this;
                        boolean z2 = true;
                        if (Settings.System.getIntForUser(contentResolver, "super_fast_charging", 1, -2) != 1) {
                            z2 = false;
                        }
                        batteryService.mSuperFastChargingSettingsEnable = z2;
                        Slog.d(BatteryService.TAG, "SuperFastCharging Settings = " + BatteryService.this.mSuperFastChargingSettingsEnable);
                        BatteryService batteryService2 = BatteryService.this;
                        batteryService2.setSuperFastCharging(batteryService2.mSuperFastChargingSettingsEnable);
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class PassThroughSettingsObserver extends ContentObserver {
        public PassThroughSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.PassThroughSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        BatteryService.this.mPassThroughSettingsEnable = Settings.System.getIntForUser(BatteryService.this.mContext.getContentResolver(), "pass_through", 0, -2) == 1;
                        Slog.d(BatteryService.TAG, "PassThrough Settings = " + BatteryService.this.mPassThroughSettingsEnable);
                        BatteryService batteryService = BatteryService.this;
                        batteryService.setPassThrough(batteryService.mPassThroughSettingsEnable);
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class WirelessFastChargingSettingsObserver extends ContentObserver {
        public WirelessFastChargingSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.WirelessFastChargingSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        ContentResolver contentResolver = BatteryService.this.mContext.getContentResolver();
                        BatteryService batteryService = BatteryService.this;
                        boolean z2 = true;
                        if (Settings.System.getIntForUser(contentResolver, "wireless_fast_charging", 1, -2) != 1) {
                            z2 = false;
                        }
                        batteryService.mWirelessFastChargingSettingsEnable = z2;
                        Slog.d(BatteryService.TAG, "WirelessFastCharging Settings = " + BatteryService.this.mWirelessFastChargingSettingsEnable);
                        BatteryService batteryService2 = BatteryService.this;
                        batteryService2.setWirelessFastCharging(batteryService2.mWirelessFastChargingSettingsEnable);
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class RefreshRateModeSettingsObserver extends ContentObserver {
        public RefreshRateModeSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.RefreshRateModeSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        BatteryService.this.mRefreshRateModeSetting = Settings.Secure.getIntForUser(BatteryService.this.mContext.getContentResolver(), "refresh_rate_mode", 0, -2);
                        Slog.d(BatteryService.TAG, "RefreshRateMode Setting = " + BatteryService.this.mRefreshRateModeSetting);
                        BatteryService batteryService = BatteryService.this;
                        batteryService.setRefreshRateMode(batteryService.mRefreshRateModeSetting);
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class LifeExtenderSettingsObserver extends ContentObserver {
        public LifeExtenderSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.LifeExtenderSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        BatteryService.this.mLifeExtender = Settings.System.getIntForUser(BatteryService.this.mContext.getContentResolver(), "protect_battery", 0, -2) == 1;
                        Slog.d(BatteryService.TAG, "!@mLifeExtender Settings changed = " + BatteryService.this.mLifeExtender);
                        BatteryService.this.mHandlerForBatteryInfoBackUp.post(BatteryService.this.mUpdateBatteryUsageExtenderRunnable);
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public class TxBatteryLimitSettingsObserver extends ContentObserver {
        public TxBatteryLimitSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.TxBatteryLimitSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        BatteryService.this.mTxBatteryLimit = Settings.System.getIntForUser(BatteryService.this.mContext.getContentResolver(), "tx_battery_limit", 30, -2);
                        Slog.d(BatteryService.TAG, "Tx Battery Limit Settings = " + BatteryService.this.mTxBatteryLimit);
                        BatteryService batteryService = BatteryService.this;
                        batteryService.setWirelessPowerSharingTxBatteryLimit(batteryService.mTxBatteryLimit);
                    }
                }
            });
        }
    }

    public final void writeProtectBatteryValues() {
        Slog.i(TAG_SS, "writeProtectBatteryValues:" + this.mProtectBatteryMode);
        int i = this.mProtectBatteryMode;
        if (i == 0) {
            fileWriteInt("/sys/class/power_supply/battery/batt_full_capacity", 100);
            fileWriteInt("/efs/Battery/batt_full_capacity", 100);
            fileWriteInt("/sys/class/power_supply/battery/batt_soc_rechg", 0);
            fileWriteInt("/efs/Battery/batt_soc_rechg", 0);
            return;
        }
        if (i == 1) {
            fileWriteString("/sys/class/power_supply/battery/batt_full_capacity", this.mProtectionThreshold + " OPTION");
            fileWriteInt("/efs/Battery/batt_full_capacity", this.mProtectionThreshold);
            fileWriteInt("/sys/class/power_supply/battery/batt_soc_rechg", 0);
            fileWriteInt("/efs/Battery/batt_soc_rechg", 0);
            return;
        }
        if (i != 2) {
            if (i == 3 || i == 4) {
                fileWriteInt("/sys/class/power_supply/battery/batt_full_capacity", 100);
                fileWriteInt("/efs/Battery/batt_full_capacity", 100);
                fileWriteInt("/sys/class/power_supply/battery/batt_soc_rechg", 1);
                fileWriteInt("/efs/Battery/batt_soc_rechg", 1);
                return;
            }
            return;
        }
        fileWriteString("/sys/class/power_supply/battery/batt_full_capacity", this.mProtectionThreshold + " HIGHSOC");
        fileWriteInt("/sys/class/power_supply/battery/batt_soc_rechg", 0);
        fileWriteInt("/efs/Battery/batt_soc_rechg", 0);
    }

    public final void setSleepCharging(boolean z) {
        Slog.i(TAG_SS, "[setSleepCharging]on:" + z);
        if (z) {
            fileWriteString("/sys/class/power_supply/battery/batt_full_capacity", this.mProtectionThreshold + " SLEEP");
            return;
        }
        fileWriteInt("/sys/class/power_supply/battery/batt_full_capacity", 100);
    }

    /* loaded from: classes.dex */
    public class WcParamInfoSettingsObserver extends ContentObserver {
        public WcParamInfoSettingsObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.WcParamInfoSettingsObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BatteryService.this.mLock) {
                        String readFromFile = BatteryService.this.readFromFile("/sys/class/power_supply/battery/wc_param_info");
                        int intForUser = Settings.System.getIntForUser(BatteryService.this.mContext.getContentResolver(), "wireless_wc_write", 0, -2);
                        if (BatteryService.this.mWcParamOffset != -1 && readFromFile != null && intForUser == 1) {
                            Slog.d(BatteryService.TAG, "wireless_wc_write onchanged");
                            BatteryService.this.setWcParamInfo(readFromFile);
                        }
                    }
                }
            });
        }
    }

    public BatteryService(Context context) {
        super(context);
        this.mIsHiccupPopupShowing = false;
        this.isVideoCall = false;
        this.mLock = new Object();
        this.mLockBatteryInfoBackUp = new Object();
        this.mLastSehHealthInfo = new SehHealthInfo();
        this.mSequence = 1;
        this.mLastPlugType = -1;
        this.mLastSecPlugTypeSummary = -1;
        this.mSentLowBatteryBroadcast = false;
        this.mBatteryChangedOptions = BroadcastOptions.makeBasic().setDeliveryGroupPolicy(1).setDeferralPolicy(2).toBundle();
        this.mPowerOptions = BroadcastOptions.makeBasic().setDeliveryGroupPolicy(1).setDeliveryGroupMatchingKey("android", "android.intent.action.ACTION_POWER_CONNECTED").setDeferralPolicy(2).toBundle();
        this.mBatteryOptions = BroadcastOptions.makeBasic().setDeliveryGroupPolicy(1).setDeliveryGroupMatchingKey("android", "android.intent.action.BATTERY_OKAY").setDeferralPolicy(2).toBundle();
        this.mBootCompleted = false;
        this.mIsUnlockedBootCompleted = false;
        this.mScreenOn = true;
        this.mLedChargingSettingsEnable = true;
        this.mLedLowBatterySettingsEnable = true;
        this.mAdaptiveFastChargingSettingsEnable = true;
        this.mSuperFastChargingSettingsEnable = true;
        this.mPassThroughSettingsEnable = false;
        this.mPogoDockState = 0;
        this.mPogoCondition = 0;
        this.mLastBatteryEventWaterInConnector = false;
        this.mLastTxEventTxEnabled = true;
        this.mLastTxEventRxConnected = false;
        this.mIsWirelessTxSupported = false;
        this.mBatteryCapacity = 280000;
        this.mActivityManagerReady = false;
        this.mSavedBatteryMaxTemp = -1L;
        this.mSavedBatteryMaxCurrent = -1L;
        this.mSavedBatteryAsoc = -1L;
        this.mSavedBatteryUsage = -1L;
        this.mSavedBatteryUsageForSbpFg = -1L;
        this.mSavedFullBatteryDuration = -1L;
        this.mBatteryMaxTemp = -1L;
        this.mBatteryMaxCurrent = -1L;
        this.mCurrentBatteryUsage = 0L;
        this.mBatteryUsageSinceLastAsocUpdate = 0;
        this.mFullBatteryStartTime = -1L;
        this.mFullBatteryDuration = 0L;
        this.mLongBatteryRetryCnt = 0;
        this.mSavedDiffWeek = -1;
        this.mLifeExtender = false;
        this.mFullCapacityEnable = false;
        this.mLastDeterioration = 0;
        this.mIsFirstIntentSended = false;
        this.mLastWirelessPinDetected = false;
        this.mNotifyWirelessEnabled = false;
        this.HEALTH_INSTANCE_VENDOR = "default";
        this.mSavedBatteryBeginningDate = 0;
        byte b = 0;
        byte b2 = 0;
        this.mSemInputDeviceManager = null;
        this.mLatestWirelessChargingMode = 0;
        this.mWcTxId = 0;
        this.mLastWcTxId = -1;
        this.mProtectionThreshold = 80;
        this.mShouldCheckFirstUseDateRegularly = false;
        this.mIsSkipActionBatteryChanged = false;
        this.mEnableIqi = false;
        this.mBootCompletedReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                Slog.i(BatteryService.TAG_SS, "[mBootCompletedReceiver]action:" + action);
                if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                    BatteryService.this.mIsUnlockedBootCompleted = true;
                    if (BatteryService.this.mProtectBatteryMode == 4) {
                        BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                BatteryService.this.activateSleepChargingManager(true);
                            }
                        });
                    } else {
                        Slog.e(BatteryService.TAG_SS, "Currently, Not Battery Adaptive Protect Mode");
                    }
                }
            }
        };
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (BatteryService.this.mLock) {
                                BatteryService.this.mScreenOn = true;
                                if (PowerManagerUtil.SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE) {
                                    BatteryService.this.sendScreenState();
                                }
                                BatteryService.this.mLed.updateLightsLocked();
                            }
                        }
                    });
                    return;
                }
                if (action.equals("android.intent.action.SCREEN_OFF")) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (BatteryService.this.mLock) {
                                BatteryService.this.mScreenOn = false;
                                if (PowerManagerUtil.SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE) {
                                    BatteryService.this.sendScreenState();
                                }
                                BatteryService.this.mLed.updateLightsLocked();
                            }
                        }
                    });
                    return;
                }
                if (action.equals("android.intent.action.USER_SWITCHED")) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.4.3
                        @Override // java.lang.Runnable
                        public void run() {
                            ContentResolver contentResolver = BatteryService.this.mContext.getContentResolver();
                            synchronized (BatteryService.this.mLock) {
                                boolean z = true;
                                BatteryService.this.mLedChargingSettingsEnable = Settings.System.getIntForUser(contentResolver, "led_indicator_charing", 1, -2) == 1;
                                BatteryService.this.mLedLowBatterySettingsEnable = Settings.System.getIntForUser(contentResolver, "led_indicator_low_battery", 1, -2) == 1;
                                BatteryService batteryService = BatteryService.this;
                                if (Settings.System.getIntForUser(contentResolver, "show_wireless_charger_menu", 0, -2) != 1) {
                                    z = false;
                                }
                                batteryService.mWasUsedWirelessFastChargerPreviously = z;
                                Slog.d(BatteryService.TAG, "ACTION_USER_SWITCHED: Led Charging: " + BatteryService.this.mLedChargingSettingsEnable + " Led Low Battery:" + BatteryService.this.mLedLowBatterySettingsEnable + " wfc: " + BatteryService.this.mWasUsedWirelessFastChargerPreviously);
                            }
                            synchronized (BatteryService.this.mLock) {
                                BatteryService.this.mLed.updateLightsLocked();
                                if (PowerManagerUtil.SEC_FEATURE_USE_AFC) {
                                    BatteryService.this.updateAdaptiveFastChargingSetting(contentResolver);
                                }
                            }
                        }
                    });
                    return;
                }
                if (action.equals("android.intent.action.ACTION_SHUTDOWN")) {
                    BatteryService.this.mHandlerForBatteryInfoBackUp.post(BatteryService.this.mSaveBatteryUsageRunnable);
                    synchronized (BatteryService.this.mLock) {
                        if (BatteryService.FEATURE_FULL_BATTERY_CYCLE) {
                            BatteryService.this.logFullBatteryDurationLocked(true);
                        }
                    }
                    if (BatteryService.this.mEnableIqi) {
                        SystemProperties.set("persist.sys.shutdown_received", "true");
                    }
                }
            }
        };
        this.mBattSlateModeControlReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("com.sec.intent.action.BATT_SLATE_MODE_CHANGE")) {
                    BatteryService.fileWriteInt("/sys/class/power_supply/battery/batt_slate_mode", intent.getIntExtra(LauncherConfigurationInternal.KEY_STATE_BOOLEAN, 0));
                }
            }
        };
        this.mRequestOtgChargeBlockReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("android.intent.action.REQUEST_OTG_CHARGE_BLOCK")) {
                    final boolean booleanExtra = intent.getBooleanExtra("OTG_CHARGE_BLOCK", false);
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BatteryService.this.setOTGEnableDisable(booleanExtra)) {
                                Slog.d(BatteryService.TAG, "success to set otgEnable as " + booleanExtra);
                                BatteryService.this.sendOTGIntentLocked();
                                return;
                            }
                            Slog.d(BatteryService.TAG, "fail to set otgEnable");
                        }
                    });
                }
            }
        };
        this.mHiccupControlReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals("com.samsung.systemui.power.action.WATER_POPUP_DISMISSED")) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BatteryService.this.setHiccupDisable()) {
                                Slog.d(BatteryService.TAG, "success to disable hiccup");
                            } else {
                                Slog.d(BatteryService.TAG, "fail to disable hiccup");
                            }
                            BatteryService.this.mIsHiccupPopupShowing = false;
                        }
                    });
                } else if (action.equals("com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW")) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.7.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Slog.d(BatteryService.TAG, "notify the misc event");
                            BatteryService.this.setResponseHiccupEvent();
                            BatteryService.this.mIsHiccupPopupShowing = true;
                        }
                    });
                }
            }
        };
        this.mWirelessPowerSharingReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.8
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                final boolean booleanExtra;
                if (!intent.getAction().equals("com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING") || BatteryService.this.mLastTxEventTxEnabled == (booleanExtra = intent.getBooleanExtra("enable", false))) {
                    return;
                }
                BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BatteryService.this.setWirelessPowerSharing(booleanExtra)) {
                            Slog.d(BatteryService.TAG, "success to set wirelssPowerSharingEnable as " + booleanExtra);
                            return;
                        }
                        Slog.d(BatteryService.TAG, "fail to disable wirelssPowerSharingEnable");
                    }
                });
            }
        };
        this.mDexReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.9
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals(BatteryService.ACTION_ENTER_DESK_MODE)) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Slog.d(BatteryService.TAG, "Dex Start");
                            BatteryService.this.setWirelessPowerSharingExternelEventInternal(2, 2);
                        }
                    });
                } else if (action.equals(BatteryService.ACTION_EXIT_DESK_MODE)) {
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.9.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Slog.d(BatteryService.TAG, "Dex Exit");
                            BatteryService.this.setWirelessPowerSharingExternelEventInternal(2, 0);
                        }
                    });
                }
            }
        };
        this.mAudioModeChangeReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.11
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("android.samsung.media.action.AUDIO_MODE")) {
                    final int intExtra = intent.getIntExtra("android.samsung.media.extra.AUDIO_MODE", 0);
                    Slog.d(BatteryService.TAG, "audio_mode : " + intExtra);
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int i = intExtra;
                            if (i == 2) {
                                BatteryService.this.mCallHandler.sendMessageDelayed(BatteryService.this.mCallHandler.obtainMessage(0), 500L);
                            } else if (i == 0) {
                                BatteryService.this.mCallHandler.removeMessages(0);
                                BatteryService.this.mCallHandler.sendMessage(BatteryService.this.mCallHandler.obtainMessage(1));
                            } else if (i == 3) {
                                BatteryService.this.mCallHandler.removeMessages(0);
                                BatteryService.this.mCallHandler.sendMessage(BatteryService.this.mCallHandler.obtainMessage(2));
                            }
                        }
                    });
                }
            }
        };
        this.mFastWirelessAutoModeReceiver = new BroadcastReceiver() { // from class: com.android.server.BatteryService.12
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL")) {
                    final boolean booleanExtra = intent.getBooleanExtra("write", false);
                    BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Slog.d(BatteryService.TAG, "fastWirelessAutoModeEnable : " + booleanExtra);
                            BatteryService.this.setWirelessFastCharging(booleanExtra ^ true);
                        }
                    });
                }
            }
        };
        this.mWirelessFastChargingSettingsEnable = true;
        this.mWasUsedWirelessFastChargerPreviously = false;
        this.mRefreshRateModeSetting = 0;
        this.mSaveBatteryUsageRunnable = new Runnable() { // from class: com.android.server.BatteryService.38
            /* JADX WARN: Removed duplicated region for block: B:21:0x00a3 A[Catch: all -> 0x0113, TryCatch #0 {, blocks: (B:13:0x0021, B:15:0x0031, B:17:0x003d, B:19:0x009d, B:21:0x00a3, B:23:0x00af, B:25:0x00bb, B:26:0x00c5, B:28:0x00cd, B:29:0x00d5, B:31:0x00d9, B:32:0x0105, B:33:0x0111, B:36:0x0049, B:38:0x005f, B:39:0x0076, B:41:0x007e, B:42:0x0090), top: B:12:0x0021 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 281
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.AnonymousClass38.run():void");
            }
        };
        this.mSaveBatteryMaxTempRunnable = new Runnable() { // from class: com.android.server.BatteryService.39
            @Override // java.lang.Runnable
            public void run() {
                long j;
                synchronized (BatteryService.this.mLock) {
                    j = BatteryService.this.mBatteryMaxTemp;
                }
                synchronized (BatteryService.this.mLockBatteryInfoBackUp) {
                    if (BatteryService.this.mSavedBatteryMaxTemp < 0) {
                        BatteryService batteryService = BatteryService.this;
                        batteryService.mSavedBatteryMaxTemp = batteryService.readBatteryMaxTempFromEfsLocked();
                    }
                    if (BatteryService.this.mSavedBatteryMaxTemp < j) {
                        BatteryService.this.mSavedBatteryMaxTemp = j;
                        BatteryService batteryService2 = BatteryService.this;
                        batteryService2.saveBatteryInfo("/efs/FactoryApp/max_temp", batteryService2.mSavedBatteryMaxTemp);
                    }
                }
            }
        };
        this.mSaveBatteryMaxCurrentRunnable = new Runnable() { // from class: com.android.server.BatteryService.40
            @Override // java.lang.Runnable
            public void run() {
                long j;
                synchronized (BatteryService.this.mLock) {
                    j = BatteryService.this.mBatteryMaxCurrent;
                }
                synchronized (BatteryService.this.mLockBatteryInfoBackUp) {
                    if (BatteryService.this.mSavedBatteryMaxCurrent < 0) {
                        BatteryService batteryService = BatteryService.this;
                        batteryService.mSavedBatteryMaxCurrent = batteryService.readBatteryMaxCurrentFromEfsLocked();
                    }
                    if (BatteryService.this.mSavedBatteryMaxCurrent < j) {
                        BatteryService.this.mSavedBatteryMaxCurrent = j;
                        BatteryService batteryService2 = BatteryService.this;
                        batteryService2.saveBatteryInfo("/efs/FactoryApp/max_current", batteryService2.mSavedBatteryMaxCurrent);
                    }
                }
            }
        };
        this.mUpdateBatteryAsocRunnable = new Runnable() { // from class: com.android.server.BatteryService.41
            @Override // java.lang.Runnable
            public void run() {
                synchronized (BatteryService.this.mLockBatteryInfoBackUp) {
                    if (BatteryService.this.mBattInfoManager.isDualAuth()) {
                        if (BatteryService.this.mBattInfoManager.isAuthAvailable()) {
                            BatteryService.this.mBattInfoManager.asocData.updateAndSet();
                        }
                    } else {
                        long readBatteryInfo = BatteryService.this.readBatteryInfo("/sys/class/power_supply/battery/fg_asoc");
                        Slog.d(BatteryService.TAG, "!@currentAsoc: " + readBatteryInfo);
                        BatteryService batteryService = BatteryService.this;
                        batteryService.mSavedBatteryAsoc = batteryService.readBatteryAsocFromEfsLocked();
                        if (BatteryService.this.mSavedBatteryAsoc < 0) {
                            BatteryService batteryService2 = BatteryService.this;
                            batteryService2.mSavedBatteryAsoc = batteryService2.initializeSavedAsoc(readBatteryInfo);
                        }
                        if (readBatteryInfo >= 0 && readBatteryInfo < BatteryService.this.mSavedBatteryAsoc && BatteryService.this.mSavedBatteryAsoc - readBatteryInfo < 10) {
                            BatteryService.this.mSavedBatteryAsoc--;
                            BatteryService batteryService3 = BatteryService.this;
                            batteryService3.saveBatteryInfo("/efs/FactoryApp/asoc", batteryService3.mSavedBatteryAsoc);
                            if (BatteryService.this.mBatteryType == 10) {
                                BatteryService batteryService4 = BatteryService.this;
                                batteryService4.saveBatteryInfo("/sys/class/power_supply/sec_auth/asoc", batteryService4.mSavedBatteryAsoc);
                            }
                        }
                        BatteryService batteryService5 = BatteryService.this;
                        batteryService5.saveBatteryInfo("/sys/class/power_supply/battery/fg_asoc", batteryService5.mSavedBatteryAsoc);
                    }
                }
            }
        };
        this.mUpdateBatteryUsageExtenderRunnable = new Runnable() { // from class: com.android.server.BatteryService.42
            /* JADX WARN: Removed duplicated region for block: B:11:0x003e A[Catch: all -> 0x005c, TryCatch #0 {, blocks: (B:4:0x0007, B:8:0x001e, B:11:0x003e, B:13:0x0050, B:14:0x005a, B:21:0x002d), top: B:3:0x0007 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    r7 = this;
                    com.android.server.BatteryService r0 = com.android.server.BatteryService.this
                    java.lang.Object r0 = com.android.server.BatteryService.m98$$Nest$fgetmLockBatteryInfoBackUp(r0)
                    monitor-enter(r0)
                    com.android.server.BatteryService r1 = com.android.server.BatteryService.this     // Catch: java.lang.Throwable -> L5c
                    java.lang.String r2 = "/efs/FactoryApp/batt_discharge_level"
                    long r1 = com.android.server.BatteryService.m168$$Nest$mreadBatteryUsageFromEfsLocked(r1, r2)     // Catch: java.lang.Throwable -> L5c
                    com.android.server.BatteryService r3 = com.android.server.BatteryService.this     // Catch: java.lang.Throwable -> L5c
                    boolean r3 = com.android.server.BatteryService.m96$$Nest$fgetmLifeExtender(r3)     // Catch: java.lang.Throwable -> L5c
                    r4 = 1000000(0xf4240, double:4.940656E-318)
                    if (r3 == 0) goto L29
                    int r3 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                    if (r3 >= 0) goto L39
                    long r4 = r4 + r1
                    java.lang.String r3 = com.android.server.BatteryService.m192$$Nest$sfgetTAG()     // Catch: java.lang.Throwable -> L5c
                    java.lang.String r6 = "!@ + 10000 cycle"
                    com.android.server.power.Slog.d(r3, r6)     // Catch: java.lang.Throwable -> L5c
                    goto L3a
                L29:
                    int r3 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                    if (r3 < 0) goto L39
                    long r4 = r1 - r4
                    java.lang.String r3 = com.android.server.BatteryService.m192$$Nest$sfgetTAG()     // Catch: java.lang.Throwable -> L5c
                    java.lang.String r6 = "!@ - 10000 cycle"
                    com.android.server.power.Slog.d(r3, r6)     // Catch: java.lang.Throwable -> L5c
                    goto L3a
                L39:
                    r4 = r1
                L3a:
                    int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                    if (r1 == 0) goto L5a
                    com.android.server.BatteryService r1 = com.android.server.BatteryService.this     // Catch: java.lang.Throwable -> L5c
                    java.lang.String r2 = "/efs/FactoryApp/batt_discharge_level"
                    com.android.server.BatteryService.m171$$Nest$msaveBatteryInfo(r1, r2, r4)     // Catch: java.lang.Throwable -> L5c
                    com.android.server.BatteryService r1 = com.android.server.BatteryService.this     // Catch: java.lang.Throwable -> L5c
                    com.android.server.BatteryService.m147$$Nest$fputmSavedBatteryUsage(r1, r4)     // Catch: java.lang.Throwable -> L5c
                    boolean r1 = com.android.server.BatteryService.m189$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()     // Catch: java.lang.Throwable -> L5c
                    if (r1 == 0) goto L5a
                    com.android.server.BatteryService r7 = com.android.server.BatteryService.this     // Catch: java.lang.Throwable -> L5c
                    java.lang.String r1 = "/sys/class/power_supply/battery/battery_cycle"
                    r2 = 100
                    long r4 = r4 / r2
                    com.android.server.BatteryService.m171$$Nest$msaveBatteryInfo(r7, r1, r4)     // Catch: java.lang.Throwable -> L5c
                L5a:
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L5c
                    return
                L5c:
                    r7 = move-exception
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L5c
                    throw r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.AnonymousClass42.run():void");
            }
        };
        this.mUpdateBatteryUsageFullCapacityEnableRunnable = new Runnable() { // from class: com.android.server.BatteryService.43
            @Override // java.lang.Runnable
            public void run() {
                if (BatteryService.this.mFullCapacityEnable) {
                    BatteryService.fileWriteInt("/sys/class/power_supply/battery/batt_full_capacity", 85);
                    BatteryService.this.saveBatteryInfo("/efs/Battery/batt_full_capacity", 85L);
                } else {
                    BatteryService.fileWriteInt("/sys/class/power_supply/battery/batt_full_capacity", 100);
                    BatteryService.this.saveBatteryInfo("/efs/Battery/batt_full_capacity", 100L);
                }
            }
        };
        this.mContext = context;
        Handler handler = new Handler(true);
        this.mHandler = handler;
        this.mHandlerForBatteryInfoBackUp = new Handler(true);
        this.mLed = new Led(context, (LightsManager) getLocalService(LightsManager.class));
        this.mBatteryStats = BatteryStatsService.getService();
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mCriticalBatteryLevel = context.getResources().getInteger(R.integer.config_dreamsBatteryLevelDrainCutoff);
        int integer = context.getResources().getInteger(R.integer.config_triplePressOnPowerBehavior);
        this.mLowBatteryWarningLevel = integer;
        this.mLowBatteryCloseWarningLevel = integer + context.getResources().getInteger(R.integer.config_tooltipAnimTime);
        this.mShutdownBatteryTemperature = context.getResources().getInteger(17695007);
        this.mBatteryLevelsEventQueue = new ArrayDeque();
        this.mMetricsLogger = new MetricsLogger();
        this.mLedSettingsObserver = new LedSettingsObserver();
        this.mAdaptiveFastChargingSettingsObserver = new AdaptiveFastChargingSettingsObserver();
        if (PowerManagerUtil.SEC_FEATURE_USE_SFC) {
            this.mSuperFastChargingSettingsObserver = new SuperFastChargingSettingsObserver();
        }
        if (PowerManagerUtil.SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH) {
            this.mPassThroughSettingsObserver = new PassThroughSettingsObserver();
        }
        boolean z = PowerManagerUtil.SEC_FEATURE_USE_WIRELESS_AFC;
        if (z) {
            this.mWirelessFastChargingSettingsObserver = new WirelessFastChargingSettingsObserver();
            if (PowerManagerUtil.SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR) {
                this.mRefreshRateModeSettingsObserver = new RefreshRateModeSettingsObserver();
            }
        }
        if (PowerManagerUtil.SEC_FEATURE_BATTERY_LIFE_EXTENDER) {
            this.mLifeExtenderSettingsObserver = new LifeExtenderSettingsObserver();
        }
        if (PowerManagerUtil.SEC_FEATURE_BATTERY_FULL_CAPACITY || BattFeatures.SUPPORT_ECO_BATTERY) {
            this.mFullCapacityEnableSettingsObserver = new FullCapacityEnableSettingsObserver();
        }
        boolean z2 = PowerManagerUtil.SEC_FEATURE_USE_WIRELESS_POWER_SHARING;
        if (z2) {
            this.mTxBatteryLimitSettingsObserver = new TxBatteryLimitSettingsObserver();
        }
        context.registerReceiver(this.mBootCompletedReceiver, new IntentFilter("android.intent.action.BOOT_COMPLETED"));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        BattInfoManager battInfoManager = new BattInfoManager(context);
        this.mBattInfoManager = battInfoManager;
        if (battInfoManager.isDualAuth()) {
            this.mBattInfoManager.init();
        } else {
            int batteryType = getBatteryType();
            this.mBatteryType = batteryType;
            if (batteryType == 10) {
                syncBatteryInfoAuthEfs();
            } else if (batteryType == 20) {
                syncBatteryInfoSbpFgEfs();
            }
            initBatteryInfo();
        }
        context.registerReceiver(this.mIntentReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.REQUEST_OTG_CHARGE_BLOCK");
        context.registerReceiver(this.mRequestOtgChargeBlockReceiver, intentFilter2, "com.sec.permission.OTG_CHARGE_BLOCK", null);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("com.sec.intent.action.BATT_SLATE_MODE_CHANGE");
        context.registerReceiverAsUser(this.mBattSlateModeControlReceiver, UserHandle.ALL, intentFilter3, "com.sec.permission.OTG_CHARGE_BLOCK", null);
        if (FEATURE_HICCUP_CONTROL) {
            IntentFilter intentFilter4 = new IntentFilter();
            intentFilter4.addAction("com.samsung.systemui.power.action.WATER_POPUP_DISMISSED");
            intentFilter4.addAction("com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW");
            context.registerReceiver(this.mHiccupControlReceiver, intentFilter4);
        }
        if (z2) {
            IntentFilter intentFilter5 = new IntentFilter();
            intentFilter5.addAction("com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING");
            context.registerReceiverAsUser(this.mWirelessPowerSharingReceiver, UserHandle.ALL, intentFilter5, "com.samsung.android.permission.wirelesspowersharing", null);
            if (PowerManagerUtil.SEC_FEATURE_DEX_DUAL_VIEW) {
                IntentFilter intentFilter6 = new IntentFilter();
                intentFilter6.addAction(ACTION_ENTER_DESK_MODE);
                intentFilter6.addAction(ACTION_EXIT_DESK_MODE);
                context.registerReceiverAsUser(this.mDexReceiver, UserHandle.ALL, intentFilter6, null, null);
            }
        }
        if (z) {
            IntentFilter intentFilter7 = new IntentFilter();
            intentFilter7.addAction("android.samsung.media.action.AUDIO_MODE");
            context.registerReceiverAsUser(this.mAudioModeChangeReceiver, UserHandle.ALL, intentFilter7, null, null);
            this.tm = (TelephonyManager) context.getSystemService("phone");
            startCallThread();
        }
        if (PowerManagerUtil.SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE) {
            IntentFilter intentFilter8 = new IntentFilter();
            intentFilter8.addAction("com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL");
            context.registerReceiverAsUser(this.mFastWirelessAutoModeReceiver, UserHandle.ALL, intentFilter8, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL", null);
        }
        if (new File("/sys/devices/virtual/switch/invalid_charger/state").exists()) {
            new UEventObserver() { // from class: com.android.server.BatteryService.13
                public void onUEvent(UEventObserver.UEvent uEvent) {
                    boolean equals = "1".equals(uEvent.get("SWITCH_STATE"));
                    synchronized (BatteryService.this.mLock) {
                        if (BatteryService.this.mInvalidCharger != equals) {
                            BatteryService.this.mInvalidCharger = equals ? 1 : 0;
                        }
                    }
                }
            }.startObserving("DEVPATH=/devices/virtual/switch/invalid_charger");
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null && packageManager.hasSystemFeature("att.devicehealth.support")) {
            this.mEnableIqi = true;
        }
        if (PowerManagerUtil.SEC_FEATURE_USE_AFC) {
            String[] strArr = ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS;
            this.mAfcDisableSysFs = isFileSupported(strArr[0]) ? strArr[0] : strArr[1];
            Slog.d(TAG, "!@ mAfcDisableSysFs : " + this.mAfcDisableSysFs);
        }
        int i = SystemProperties.getInt("ro.boot.cm.param.offset", -1);
        this.mWirelessFastChargingOffset = i;
        this.mAdaptiveFastChargingOffset = i != -1 ? i + 1 : -1;
        this.mSuperFastChargingOffset = SystemProperties.getInt("ro.boot.pd.param.offset", -1);
        int i2 = SystemProperties.getInt("ro.boot.wc.param.offset", -1);
        this.mWcParamOffset = i2;
        String readFromFile = readFromFile("/sys/class/power_supply/battery/wc_param_info");
        if (i2 != -1 && readFromFile != null) {
            this.mWcParamInfoSettingsObserver = new WcParamInfoSettingsObserver();
        }
        IntentFilter intentFilter9 = new IntentFilter();
        intentFilter9.addAction("android.intent.action.TIME_SET");
        context.registerReceiver(new TimeChangedReceiver(), intentFilter9, null, handler);
        IntentFilter intentFilter10 = new IntentFilter();
        intentFilter10.addAction("com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE");
        intentFilter10.addAction("com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE");
        context.registerReceiver(new SetupWizardCompleteReceiver(), intentFilter10, null, handler);
        if (!this.mBattInfoManager.isDualAuth() && this.mBatteryType == 10) {
            String readFromFile2 = readFromFile("/sys/class/power_supply/sec_auth/fai_expired");
            String str = TAG;
            Slog.i(str, "[BatteryService]faiExpiredStr:" + readFromFile2);
            BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "Check FAI Expiered When Boot", "faiExpiredStr:" + readFromFile2);
            if (!"1".equals(readFromFile2)) {
                if (!"0".equals(readFromFile2)) {
                    writeToFile("/sys/class/power_supply/sec_auth/fai_expired", "0");
                }
                IntentFilter intentFilter11 = new IntentFilter();
                intentFilter11.addAction("android.intent.action.DATE_CHANGED");
                DateChangedReceiver dateChangedReceiver = new DateChangedReceiver();
                this.mDateChangedReceiver = dateChangedReceiver;
                context.registerReceiver(dateChangedReceiver, intentFilter11, null, handler);
                Slog.i(str, "[BatteryService]DateChangedReceiver Registered For FAI Expired");
            }
        }
        this.mBatteryInputSuspended = ((Boolean) PowerProperties.battery_input_suspended().orElse(Boolean.FALSE)).booleanValue();
        BatteryLogger.writeToFile("/data/log/battery_service/sleep_charging_history", "BatteryService Created", "");
        this.mSkipActionBatteryChangedHandler = new Handler(Looper.myLooper()) { // from class: com.android.server.BatteryService.14
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                Slog.d(BatteryService.TAG, "SkipActionBatteryChangedHandler : MSG_RECOVER_SEND_ACTION_BATTERY_CHANGED");
                BatteryService.this.mSkipActionBatteryChangedHandler.removeCallbacksAndMessages(null);
                synchronized (BatteryService.this.mLock) {
                    if (BatteryService.this.mIsSkipActionBatteryChanged) {
                        BatteryService.this.sendBatteryChangedIntentLocked();
                        BatteryService.this.mIsSkipActionBatteryChanged = false;
                    }
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.server.BatteryService$BatteryPropertiesRegistrar, android.os.IBinder] */
    @Override // com.android.server.SystemService
    public void onStart() {
        registerHealthCallback();
        BinderService binderService = new BinderService();
        this.mBinderService = binderService;
        publishBinderService("battery", binderService);
        ?? batteryPropertiesRegistrar = new BatteryPropertiesRegistrar();
        this.mBatteryPropertiesRegistrar = batteryPropertiesRegistrar;
        publishBinderService("batteryproperties", batteryPropertiesRegistrar);
        publishLocalService(BatteryManagerInternal.class, new LocalService());
        checkLongLifeBattery();
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int i) {
        int i2;
        String str = TAG;
        Slog.d(str, "[onBootPhase]phase:" + i);
        if (i == 550) {
            synchronized (this.mLock) {
                this.mActivityManagerReady = true;
                ContentObserver contentObserver = new ContentObserver(this.mHandler) { // from class: com.android.server.BatteryService.15
                    @Override // android.database.ContentObserver
                    public void onChange(boolean z) {
                        synchronized (BatteryService.this.mLock) {
                            BatteryService.this.updateBatteryWarningLevelLocked();
                        }
                    }
                };
                ContentResolver contentResolver = this.mContext.getContentResolver();
                contentResolver.registerContentObserver(Settings.Global.getUriFor("low_power_trigger_level"), false, contentObserver, -1);
                updateBatteryWarningLevelLocked();
                registerContentObserver(contentResolver);
                SemInputDeviceManager semInputDeviceManager = (SemInputDeviceManager) this.mContext.getSystemService("SemInputDeviceManagerService");
                this.mSemInputDeviceManager = semInputDeviceManager;
                if (semInputDeviceManager != null && (i2 = this.mLatestWirelessChargingMode) != 0) {
                    semInputDeviceManager.setWirelessChargingMode(11, i2);
                    this.mSemInputDeviceManager.setWirelessChargingMode(1, this.mLatestWirelessChargingMode);
                    Slog.d(str, "setWirelessChargingMode(All): " + this.mLatestWirelessChargingMode);
                }
            }
            return;
        }
        if (i == 1000) {
            ContentResolver contentResolver2 = this.mContext.getContentResolver();
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.16
                @Override // java.lang.Runnable
                public void run() {
                    Slog.d(BatteryService.TAG, "!@bootCompleted");
                    synchronized (BatteryService.this.mLock) {
                        BatteryService.this.mBootCompleted = true;
                        BatteryService.this.mLed.updateLightsLocked();
                    }
                }
            });
            synchronized (this.mLock) {
                sendDeteriorationIntentLocked(true);
            }
            if (this.mEnableIqi) {
                boolean z = SystemProperties.getBoolean("persist.sys.shutdown_received", true);
                SystemProperties.set("persist.sys.shutdown_received", "false");
                if (!z) {
                    this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.BatteryService.17
                        @Override // java.lang.Runnable
                        public void run() {
                            IQIManager iQIManager = IQIManager.getInstance();
                            if (iQIManager == null || !iQIManager.shouldSubmitMetric(HW12.ID)) {
                                return;
                            }
                            HW12 hw12 = new HW12();
                            hw12.setCause((byte) 0);
                            hw12.setProcessor((byte) 0);
                            iQIManager.submitMetric(hw12);
                            if ("eng".equals(Build.TYPE)) {
                                Slog.d(BatteryService.TAG, "submit HW12");
                            }
                        }
                    }, 50000L);
                }
            }
            if (FEATURE_HICCUP_CONTROL && this.mIsHiccupPopupShowing) {
                int i3 = this.mLastBatteryEvent;
                if ((i3 & 32) != 0 || (i3 & IInstalld.FLAG_FORCE) != 0) {
                    Slog.d(str, "bootCompleted and HiccupPopup");
                    fileWriteInt("/sys/class/power_supply/battery/batt_misc_event", this.mLastBatteryEvent);
                }
            }
            if (PowerManagerUtil.SEC_FEATURE_USE_WIRELESS_POWER_SHARING) {
                this.mIsWirelessTxSupported = isSupportedWirelessTx();
            }
            if (PowerManagerUtil.SEC_FEATURE_BATTERY_LIFE_EXTENDER) {
                this.mLifeExtender = Settings.System.getIntForUser(contentResolver2, "protect_battery", 0, -2) == 1;
                Slog.d(str, "!@mLifeExtender Settings = " + this.mLifeExtender + " mLifeExtenderSettingsObserver register");
                contentResolver2.registerContentObserver(Settings.System.getUriFor("protect_battery"), false, this.mLifeExtenderSettingsObserver, -1);
                this.mHandlerForBatteryInfoBackUp.post(this.mUpdateBatteryUsageExtenderRunnable);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0036 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateBatteryDate() {
        /*
            Method dump skipped, instructions count: 503
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.updateBatteryDate():void");
    }

    public final boolean writeBatteryDate(String str) {
        int parseInt;
        String str2 = SystemProperties.get("ril.rfcal_date");
        String str3 = SystemProperties.get("ril.manufacturedate");
        String str4 = TAG;
        Slog.d(str4, "[writeBatteryDate]strRfCalDate:" + str2 + " ,strManufactureDate:" + str3);
        try {
            int parseInt2 = Integer.parseInt(str);
            if (str2 != null) {
                str2 = str2.replace(".", "");
            }
            if (str2 != null && str2.length() == 8) {
                parseInt = Integer.parseInt(str2);
                Slog.d(str4, "!@[B_DATE] rfcal date will be used for compare");
            } else if (str3 != null && str3.length() == 8) {
                parseInt = Integer.parseInt(str3);
                Slog.d(str4, "!@[B_DATE] manufacture date will be used for compare");
            } else {
                Slog.d(str4, "!@[B_DATE] fail - no date for compare");
                int i = this.mBatteryType;
                if (i == 10 || i == 20) {
                    this.mShouldCheckFirstUseDateRegularly = false;
                }
                return false;
            }
            if (parseInt <= parseInt2) {
                this.mSavedBatteryBeginningDate = parseInt2;
                fileWriteInt("/efs/FactoryApp/batt_beginning_date", parseInt2);
                int i2 = this.mBatteryType;
                if (i2 == 10) {
                    fileWriteInt("/sys/class/power_supply/sec_auth/first_use_date", parseInt2);
                    this.mShouldCheckFirstUseDateRegularly = false;
                } else if (i2 == 20) {
                    fileWriteInt("/sys/class/power_supply/sbp-fg/first_use_date", parseInt2);
                    this.mShouldCheckFirstUseDateRegularly = false;
                }
                BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "BatteryFirstUseDate", "write batteryDate:" + parseInt2);
                return true;
            }
            Slog.d(str4, "!@[B_DATE] date error");
            return false;
        } catch (NumberFormatException e) {
            Slog.d(TAG, "NumberFormatException");
            e.printStackTrace();
            return false;
        }
    }

    /* loaded from: classes.dex */
    public final class TimeChangedReceiver extends BroadcastReceiver {
        public TimeChangedReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Slog.d(BatteryService.TAG, "!@[B_DATE] Time Changed !!");
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.TimeChangedReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BatteryService.this.mBattInfoManager.isDualAuth()) {
                        if (BatteryService.this.mBattInfoManager.isAuthAvailable() && BatteryService.this.mBattInfoManager.firstUseDateData.shouldCheck) {
                            BatteryService.this.mBattInfoManager.firstUseDateData.updateDate();
                            return;
                        }
                        return;
                    }
                    BatteryService.this.updateBatteryDate();
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public final class SetupWizardCompleteReceiver extends BroadcastReceiver {
        public SetupWizardCompleteReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Slog.d(BatteryService.TAG, "!@[B_DATE] SetupWizard is completed !!");
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.SetupWizardCompleteReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BatteryService.this.mBattInfoManager.isDualAuth()) {
                        if (BatteryService.this.mBattInfoManager.isAuthAvailable() && BatteryService.this.mBattInfoManager.firstUseDateData.shouldCheck) {
                            BatteryService.this.mBattInfoManager.firstUseDateData.updateDate();
                            return;
                        }
                        return;
                    }
                    BatteryService.this.updateBatteryDate();
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public final class DateChangedReceiver extends BroadcastReceiver {
        public DateChangedReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Slog.d(BatteryService.TAG, "!@[B_DATE] Date Changed !!");
            BatteryService.this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.DateChangedReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    BatteryService.this.checkFaiExpired();
                }
            });
        }
    }

    public final void checkFaiExpired() {
        DateChangedReceiver dateChangedReceiver;
        LocalDate convertDateStringToLocalDate = BattUtils.convertDateStringToLocalDate(readFromFile("/sys/class/power_supply/sec_auth/first_use_date"));
        String str = TAG;
        Slog.d(str, "[checkFaiExpired]firstUseDate:" + convertDateStringToLocalDate);
        if (convertDateStringToLocalDate == null) {
            return;
        }
        LocalDate plusDays = convertDateStringToLocalDate.plusDays(14L);
        LocalDate now = LocalDate.now();
        Slog.d(str, "[checkFaiExpired]currentDate:" + now + " ,thresholdDate:" + plusDays);
        if (now.isBefore(plusDays)) {
            return;
        }
        writeToFile("/sys/class/power_supply/sec_auth/fai_expired", "1");
        boolean equals = "1".equals(readFromFile("/sys/class/power_supply/sec_auth/fai_expired"));
        Slog.d(str, "[checkFaiExpired]check write result - isFaiExpired:" + equals);
        if (equals && (dateChangedReceiver = this.mDateChangedReceiver) != null) {
            this.mContext.unregisterReceiver(dateChangedReceiver);
            this.mDateChangedReceiver = null;
        }
        BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "FAI Expired Written", "isFaiExpired:" + equals);
    }

    public final void checkLongLifeBattery() {
        if (!isFileSupported("/efs/FactoryApp/batt_after_manufactured")) {
            fileWriteInt("/efs/FactoryApp/batt_after_manufactured", 0);
            fileWriteInt("/sys/class/power_supply/battery/batt_after_manufactured", 0);
            this.mSavedDiffWeek = 0;
        } else {
            String readFromFile = readFromFile("/efs/FactoryApp/batt_after_manufactured");
            if (readFromFile != null) {
                try {
                    if (Integer.parseInt(readFromFile) >= 0) {
                        Slog.d(TAG, "!@[LLB] Write weeklyDiff EFS ->  Sys : " + readFromFile);
                        fileWriteInt("/sys/class/power_supply/battery/batt_after_manufactured", Integer.parseInt(readFromFile));
                        this.mSavedDiffWeek = Integer.parseInt(readFromFile);
                    }
                } catch (NumberFormatException e) {
                    Slog.d(TAG, "!@[LLB] can not change. value: " + readFromFile + ", e: " + e);
                    return;
                }
            }
        }
        this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.18
            @Override // java.lang.Runnable
            public void run() {
                synchronized (BatteryService.this.mLock) {
                    BatteryService.this.mLongBatteryRetryCnt++;
                }
                int checkLongLifeBatteryInternal = BatteryService.this.checkLongLifeBatteryInternal();
                if (checkLongLifeBatteryInternal == 1) {
                    Slog.d(BatteryService.TAG, "!@[LLB] success to check weekly diff ");
                    return;
                }
                if (checkLongLifeBatteryInternal == 2) {
                    Slog.d(BatteryService.TAG, "!@[LLB] Calc error! check date!  ");
                    return;
                }
                if (checkLongLifeBatteryInternal != 3) {
                    return;
                }
                Slog.d(BatteryService.TAG, "!@[LLB] Faild to get property values, longBatteryRetryCnt= " + BatteryService.this.mLongBatteryRetryCnt);
                if (BatteryService.this.mLongBatteryRetryCnt < 5) {
                    BatteryService.this.mHandler.postDelayed(this, 3000L);
                } else {
                    Slog.d(BatteryService.TAG, "!@[LLB] Faild to calc checkLongLifeBatteryInternal, Do not try anymore");
                }
            }
        });
    }

    public final int checkLongLifeBatteryInternal() {
        String substring;
        String substring2;
        String substring3;
        int i;
        String str = SystemProperties.get("ril.rfcal_date");
        this.mManufactureDate = SystemProperties.get("ril.manufacturedate");
        if (str != null) {
            this.mRfCalDate = str.replace(".", "");
        }
        String str2 = this.mRfCalDate;
        if (str2 != null && str2.length() == 8) {
            substring = this.mRfCalDate.substring(0, 4);
            substring2 = this.mRfCalDate.substring(4, 6);
            substring3 = this.mRfCalDate.substring(6, 8);
            Slog.d(TAG, "!@[LLB] rfcal_date " + this.mRfCalDate);
        } else {
            String str3 = this.mManufactureDate;
            if (str3 != null && str3.length() == 8) {
                substring = this.mManufactureDate.substring(0, 4);
                substring2 = this.mManufactureDate.substring(4, 6);
                substring3 = this.mManufactureDate.substring(6, 8);
                Slog.d(TAG, "!@[LLB] manufacture_date " + this.mManufactureDate);
            } else {
                Slog.d(TAG, "!@[LLB] mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff");
                return 3;
            }
        }
        this.mCurrentCalendar = Calendar.getInstance();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Integer.parseInt(substring), Integer.parseInt(substring2), Integer.parseInt(substring3));
        if (Integer.parseInt(substring) == 0) {
            return 3;
        }
        int i2 = this.mCurrentCalendar.get(1) - gregorianCalendar.get(1);
        int i3 = gregorianCalendar.get(3) - 4;
        int i4 = this.mCurrentCalendar.get(3);
        if (i2 == 0) {
            i = i4 - i3;
            if (i > 0) {
                Slog.d(TAG, "!@[LLB] same year diff_Week= " + i);
            } else {
                Slog.d(TAG, "!@[LLB] same year but error month!!!");
                return 2;
            }
        } else {
            if (i2 < 0) {
                Slog.d(TAG, "!@[LLB] error year");
                return 2;
            }
            i = i4 + ((i2 - 1) * 52) + (52 - i3);
        }
        if (checkWeeklyDiffIsValid("/efs/FactoryApp/batt_after_manufactured", i)) {
            fileWriteInt("/sys/class/power_supply/battery/batt_after_manufactured", i);
            fileWriteInt("/efs/FactoryApp/batt_after_manufactured", i);
            this.mSavedDiffWeek = i;
        }
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0089 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean checkWeeklyDiffIsValid(java.lang.String r6, int r7) {
        /*
            r5 = this;
            java.lang.String r0 = "!@[LLB] "
            r1 = 0
            if (r6 != 0) goto L1f
            java.lang.String r5 = com.android.server.BatteryService.TAG
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r0)
            r7.append(r6)
            java.lang.String r6 = " path string is nul"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.android.server.power.Slog.d(r5, r6)
            return r1
        L1f:
            java.lang.String r5 = r5.readFromFile(r6)
            if (r5 != 0) goto L40
            java.lang.String r5 = com.android.server.BatteryService.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r6)
            java.lang.String r6 = " is null, It looks first time, just make it."
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            com.android.server.power.Slog.d(r5, r6)
            r0 = r1
            goto L87
        L40:
            int r0 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.NumberFormatException -> L63
            java.lang.String r2 = com.android.server.BatteryService.TAG     // Catch: java.lang.NumberFormatException -> L64
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L64
            r3.<init>()     // Catch: java.lang.NumberFormatException -> L64
            java.lang.String r4 = "!@[LLB] EFS values: "
            r3.append(r4)     // Catch: java.lang.NumberFormatException -> L64
            r3.append(r0)     // Catch: java.lang.NumberFormatException -> L64
            java.lang.String r4 = ", Diff_week: "
            r3.append(r4)     // Catch: java.lang.NumberFormatException -> L64
            r3.append(r7)     // Catch: java.lang.NumberFormatException -> L64
            java.lang.String r3 = r3.toString()     // Catch: java.lang.NumberFormatException -> L64
            com.android.server.power.Slog.d(r2, r3)     // Catch: java.lang.NumberFormatException -> L64
            goto L87
        L63:
            r0 = -1
        L64:
            java.lang.String r2 = com.android.server.BatteryService.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "!@[LLB] !@[BatteryInfo] "
            r3.append(r4)
            r3.append(r6)
            java.lang.String r6 = " : data is \""
            r3.append(r6)
            r3.append(r5)
            java.lang.String r5 = "\""
            r3.append(r5)
            java.lang.String r5 = r3.toString()
            com.android.server.power.Slog.e(r2, r5)
        L87:
            if (r0 >= r7) goto L8a
            r1 = 1
        L8a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.checkWeeklyDiffIsValid(java.lang.String, int):boolean");
    }

    public final void registerContentObserver(ContentResolver contentResolver) {
        this.mLedChargingSettingsEnable = Settings.System.getIntForUser(contentResolver, "led_indicator_charing", 1, -2) == 1;
        this.mLedLowBatterySettingsEnable = Settings.System.getIntForUser(contentResolver, "led_indicator_low_battery", 1, -2) == 1;
        String str = TAG;
        Slog.d(str, "!@Led Charging Settings = " + this.mLedChargingSettingsEnable);
        Slog.d(str, "!@Led Low Battery Settings = " + this.mLedLowBatterySettingsEnable);
        contentResolver.registerContentObserver(Settings.System.getUriFor("led_indicator_charing"), false, this.mLedSettingsObserver, -1);
        contentResolver.registerContentObserver(Settings.System.getUriFor("led_indicator_low_battery"), false, this.mLedSettingsObserver, -1);
        if (PowerManagerUtil.SEC_FEATURE_USE_AFC) {
            updateAdaptiveFastChargingSetting(contentResolver);
            contentResolver.registerContentObserver(Settings.System.getUriFor("adaptive_fast_charging"), false, this.mAdaptiveFastChargingSettingsObserver, -1);
        }
        if (PowerManagerUtil.SEC_FEATURE_USE_SFC) {
            this.mSuperFastChargingSettingsEnable = Settings.System.getIntForUser(contentResolver, "super_fast_charging", 1, -2) == 1;
            Slog.d(str, "!@SuperFastCharging Settings = " + this.mSuperFastChargingSettingsEnable);
            setSuperFastCharging(this.mSuperFastChargingSettingsEnable);
            contentResolver.registerContentObserver(Settings.System.getUriFor("super_fast_charging"), false, this.mSuperFastChargingSettingsObserver, -1);
        }
        if (PowerManagerUtil.SEC_FEATURE_USE_WIRELESS_AFC) {
            this.mWasUsedWirelessFastChargerPreviously = Settings.System.getIntForUser(contentResolver, "show_wireless_charger_menu", 0, -2) == 1;
            this.mWirelessFastChargingSettingsEnable = Settings.System.getIntForUser(contentResolver, "wireless_fast_charging", 1, -2) == 1;
            Slog.d(str, "!@WirelessFastCharging Settings = " + this.mWirelessFastChargingSettingsEnable);
            setWirelessFastCharging(this.mWirelessFastChargingSettingsEnable);
            contentResolver.registerContentObserver(Settings.System.getUriFor("wireless_fast_charging"), false, this.mWirelessFastChargingSettingsObserver, -1);
            if (PowerManagerUtil.SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR) {
                this.mRefreshRateModeSetting = Settings.Secure.getIntForUser(contentResolver, "refresh_rate_mode", 0, -2);
                Slog.d(str, "!@RefreshRateMode Setting = " + this.mRefreshRateModeSetting);
                setRefreshRateMode(this.mRefreshRateModeSetting);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("refresh_rate_mode"), false, this.mRefreshRateModeSettingsObserver, -1);
            }
        }
        if (PowerManagerUtil.SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH) {
            this.mPassThroughSettingsEnable = Settings.System.getIntForUser(contentResolver, "pass_through", 0, -2) == 1;
            Slog.d(str, "!@mPassThroughSettingsEnable Settings = " + this.mPassThroughSettingsEnable);
            setPassThrough(this.mPassThroughSettingsEnable);
            contentResolver.registerContentObserver(Settings.System.getUriFor("pass_through"), false, this.mPassThroughSettingsObserver, -1);
        }
        if (BattFeatures.SUPPORT_ECO_BATTERY) {
            contentResolver.registerContentObserver(Settings.Global.getUriFor("protect_battery"), false, this.mFullCapacityEnableSettingsObserver, -1);
            ContentResolver contentResolver2 = this.mContext.getContentResolver();
            this.mProtectBatteryMode = Settings.Global.getInt(contentResolver2, "protect_battery", 0);
            writeProtectBatteryValues();
            Slog.d(TAG_SS, "mProtectBatteryMode:" + this.mProtectBatteryMode);
            this.mProtectionThreshold = Settings.Global.getInt(contentResolver2, "battery_protection_threshold", DEFAULT_PROTECTION_THRESHOLD_LEVEL);
            Slog.d(str, "mProtectionThreshold:" + this.mProtectionThreshold);
            this.mLtcHighThreshold = Settings.Global.getInt(contentResolver2, "ltc_highsoc_threshold", 95);
            Slog.d(str, "mLtcHighThreshold:" + this.mLtcHighThreshold);
            fileWriteInt("/efs/Battery/batt_ltc_highsoc_threshold", this.mLtcHighThreshold);
            this.mLtcHighSocDuration = Settings.Global.getInt(contentResolver2, "ltc_highsoc_duration", FrameworkStatsLog.SETTING_SNAPSHOT);
            Slog.d(str, "mLtcHighSocDuration:" + this.mLtcHighSocDuration);
            fileWriteInt("/efs/Battery/batt_ltc_highsoc_duration", this.mLtcHighSocDuration);
            this.mLtcReleaseThreshold = Settings.Global.getInt(contentResolver2, "ltc_release_threshold", 75);
            Slog.d(str, "mLtcReleaseThreshold:" + this.mLtcReleaseThreshold);
            fileWriteInt("/efs/Battery/batt_ltc_release_threshold", this.mLtcReleaseThreshold);
        } else if (PowerManagerUtil.SEC_FEATURE_BATTERY_FULL_CAPACITY) {
            this.mLifeExtender = Settings.System.getIntForUser(contentResolver, "protect_battery", 0, -2) == 1;
            this.mHandlerForBatteryInfoBackUp.post(this.mUpdateBatteryUsageExtenderRunnable);
            this.mFullCapacityEnable = Settings.Global.getInt(contentResolver, "protect_battery", 0) == 1;
            Slog.d(str, "!@mFullCapacityEnable Settings = " + this.mFullCapacityEnable);
            this.mHandlerForBatteryInfoBackUp.post(this.mUpdateBatteryUsageFullCapacityEnableRunnable);
            contentResolver.registerContentObserver(Settings.Global.getUriFor("protect_battery"), false, this.mFullCapacityEnableSettingsObserver, -1);
        }
        if (PowerManagerUtil.SEC_FEATURE_USE_WIRELESS_POWER_SHARING) {
            this.mTxBatteryLimit = Settings.System.getIntForUser(contentResolver, "tx_battery_limit", 30, -2);
            Slog.d(str, "!@Tx Battery Limit Settings = " + this.mTxBatteryLimit);
            setWirelessPowerSharingTxBatteryLimit(this.mTxBatteryLimit);
            contentResolver.registerContentObserver(Settings.System.getUriFor("tx_battery_limit"), false, this.mTxBatteryLimitSettingsObserver, -1);
        }
        String readFromFile = readFromFile("/sys/class/power_supply/battery/wc_param_info");
        if (this.mWcParamOffset == -1 || readFromFile == null) {
            return;
        }
        Settings.System.putInt(this.mContext.getContentResolver(), "wireless_wc_write", 0);
        contentResolver.registerContentObserver(Settings.System.getUriFor("wireless_wc_write"), false, this.mWcParamInfoSettingsObserver, -1);
        setWcParamInfo(readFromFile);
    }

    public final void registerHealthCallback() {
        traceBegin("HealthInitWrapper");
        try {
            try {
                this.mHealthServiceWrapper = HealthServiceWrapper.create(new HealthInfoCallback() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda5
                    @Override // com.android.server.health.HealthInfoCallback
                    public final void update(SehHealthInfo sehHealthInfo) {
                        BatteryService.this.update(sehHealthInfo);
                    }
                });
                traceEnd();
                traceBegin("HealthInitWaitUpdate");
                long uptimeMillis = SystemClock.uptimeMillis();
                synchronized (this.mLock) {
                    while (this.mHealthInfo == null) {
                        Slog.i(TAG, "health: Waited " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms for callbacks. Waiting another 1000 ms...");
                        try {
                            this.mLock.wait(1000L);
                        } catch (InterruptedException unused) {
                            Slog.i(TAG, "health: InterruptedException when waiting for update.  Continuing...");
                        }
                    }
                }
                Slog.i(TAG, "health: Waited " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms and received the update.");
            } catch (RemoteException e) {
                Slog.e(TAG, "health: cannot register callback. (RemoteException)");
                throw e.rethrowFromSystemServer();
            } catch (NoSuchElementException e2) {
                Slog.e(TAG, "health: cannot register callback. (no supported health HAL service)");
                throw e2;
            }
        } finally {
            traceEnd();
        }
    }

    public final void updateBatteryWarningLevelLocked() {
        this.mContext.getContentResolver();
        this.mContext.getResources().getInteger(R.integer.config_triplePressOnPowerBehavior);
        int i = this.mLowBatteryWarningLevel;
        this.mLastLowBatteryWarningLevel = i;
        int i2 = this.mCriticalBatteryLevel;
        if (i < i2) {
            this.mLowBatteryWarningLevel = i2;
        }
        this.mLowBatteryCloseWarningLevel = this.mLowBatteryWarningLevel + this.mContext.getResources().getInteger(R.integer.config_tooltipAnimTime);
        lambda$setChargerAcOnline$3(true);
    }

    public final boolean isPoweredLocked(int i) {
        HealthInfo healthInfo = this.mHealthInfo;
        if (healthInfo.batteryStatus == 1) {
            return true;
        }
        int i2 = i & 1;
        if (i2 != 0 && healthInfo.chargerAcOnline) {
            return true;
        }
        if ((i & 2) != 0 && healthInfo.chargerUsbOnline) {
            return true;
        }
        if ((i & 4) != 0 && healthInfo.chargerWirelessOnline) {
            return true;
        }
        if ((i & 8) == 0 || !healthInfo.chargerDockOnline) {
            return i2 != 0 && this.mSehHealthInfo.chargerPogoOnline;
        }
        return true;
    }

    public final void setWirelessFastCharging(boolean z) {
        int i = this.mWirelessFastChargingOffset;
        if (i != -1) {
            this.mHealthServiceWrapper.sehWriteEnableToParam(i, !z, "wfc");
        }
        if (z) {
            fileWriteInt("/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl", 2);
        } else {
            fileWriteInt("/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl", 1);
        }
    }

    public final void setRefreshRateMode(int i) {
        if (i == 0) {
            fileWriteInt("/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl", 5);
        } else {
            fileWriteInt("/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl", 6);
        }
    }

    public final void setWcParamInfo(String str) {
        this.mHealthServiceWrapper.sehWriteEnableToParam(-2, true, "wc param");
        Settings.System.putInt(this.mContext.getContentResolver(), "wireless_wc_write", 0);
    }

    public final boolean shouldSendBatteryLowLocked() {
        int i;
        int i2;
        boolean z = this.mPlugType != 0;
        boolean z2 = this.mLastPlugType != 0;
        if (z) {
            return false;
        }
        HealthInfo healthInfo = this.mHealthInfo;
        if (healthInfo.batteryStatus == 1 || (i = healthInfo.batteryLevel) > (i2 = this.mLowBatteryWarningLevel)) {
            return false;
        }
        return z2 || this.mLastBatteryLevel > i2 || i > this.mLastLowBatteryWarningLevel;
    }

    public final boolean shouldShutdownLocked() {
        SemEmergencyManager semEmergencyManager;
        HealthInfo healthInfo = this.mHealthInfo;
        int i = healthInfo.batteryCapacityLevel;
        if (i != -1) {
            return i == 1;
        }
        int i2 = healthInfo.batteryLevel;
        if (i2 > 0 || !healthInfo.batteryPresent) {
            return false;
        }
        if (i2 != 0 || !this.mBootCompleted) {
            return false;
        }
        if (healthInfo.batteryCurrentAverageMicroamps >= 0 && isPoweredLocked(15)) {
            Slog.d(TAG, "!@ BatteryService plug type: 0x" + Integer.toHexString(this.mSecPlugTypeSummary) + " battery current avg: " + this.mHealthInfo.batteryCurrentAverageMicroamps + ", so doesn't shutdown");
            return false;
        }
        if (!CoreRune.EM_SUPPORTED || (semEmergencyManager = SemEmergencyManager.getInstance(this.mContext)) == null || !semEmergencyManager.isEmergencyMode()) {
            return true;
        }
        Slog.d(TAG, "Emergency mode is on so doesn't shutdown");
        return false;
    }

    public final void shutdownIfNoPowerLocked() {
        if (shouldShutdownLocked()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.19
                @Override // java.lang.Runnable
                public void run() {
                    IQIManager iQIManager;
                    if (BatteryService.this.mActivityManagerInternal.isSystemReady()) {
                        ShutdownThread.systemShutdown(BatteryService.this.getUiContext(), "no power");
                        if (BatteryService.this.mEnableIqi && (iQIManager = IQIManager.getInstance()) != null && iQIManager.shouldSubmitMetric(HW0E.ID)) {
                            HW0E hw0e = new HW0E();
                            hw0e.setEvent((byte) 1);
                            iQIManager.submitMetric(hw0e);
                            if ("eng".equals(Build.TYPE)) {
                                Slog.d(BatteryService.TAG, "submit HW0E");
                            }
                        }
                        Slog.d(BatteryService.TAG, "!@ BatteryService No power and call shutdown thread");
                    }
                }
            });
        }
        if (this.mHealthInfo.batteryLevel == 0) {
            if (this.mBootCompleted && this.mActivityManagerInternal.isSystemReady()) {
                return;
            }
            Slog.d(TAG, "!@ BatteryService mBootCompleted: " + this.mBootCompleted + " am.isSystemReady: " + this.mActivityManagerInternal.isSystemReady() + ", so doesn't shutdown");
        }
    }

    public final void update(SehHealthInfo sehHealthInfo) {
        HealthInfo healthInfo = sehHealthInfo.aospHealthInfo;
        traceBegin("HealthInfoUpdate");
        Trace.traceCounter(131072L, "BatteryChargeCounter", healthInfo.batteryChargeCounterUah);
        Trace.traceCounter(131072L, "BatteryCurrent", healthInfo.batteryCurrentMicroamps);
        Trace.traceCounter(131072L, "PlugType", plugType(sehHealthInfo));
        Trace.traceCounter(131072L, "BatteryStatus", healthInfo.batteryStatus);
        synchronized (this.mLock) {
            if (!this.mUpdatesStopped) {
                this.mHealthInfo = healthInfo;
                this.mSehHealthInfo = sehHealthInfo;
                lambda$setChargerAcOnline$3(false);
                this.mLock.notifyAll();
            } else {
                Utils.copySehV1Battery(this.mLastSehHealthInfo, sehHealthInfo);
            }
        }
        traceEnd();
    }

    public static int plugType(SehHealthInfo sehHealthInfo) {
        HealthInfo healthInfo = sehHealthInfo.aospHealthInfo;
        if (healthInfo.chargerAcOnline) {
            return 1;
        }
        if (healthInfo.chargerWirelessOnline) {
            return 4;
        }
        if (healthInfo.chargerUsbOnline) {
            return 2;
        }
        if (sehHealthInfo.chargerPogoOnline) {
            return 1;
        }
        return healthInfo.chargerDockOnline ? 8 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0139, code lost:
    
        if (r3.batteryCurrentNow == r0.mLastBatteryCurrentNow) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0169, code lost:
    
        if (r0.mWcTxId == r0.mLastWcTxId) goto L225;
     */
    /* renamed from: processValuesLocked, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void lambda$setChargerAcOnline$3(boolean r22) {
        /*
            Method dump skipped, instructions count: 1542
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.lambda$setChargerAcOnline$3(boolean):void");
    }

    public final void sendBatteryChangedIntentLocked() {
        int i;
        int i2;
        final Intent intent = new Intent("android.intent.action.BATTERY_CHANGED");
        intent.addFlags(1610612736);
        final Intent intent2 = new Intent("android.intent.action.DOCK_EVENT");
        intent2.addFlags(536870912);
        int i3 = this.mPogoCondition;
        int i4 = this.mPogoDockState;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        if (this.mSehHealthInfo.chargerPogoOnline) {
            HealthInfo healthInfo = this.mHealthInfo;
            if (healthInfo.chargerAcOnline || healthInfo.chargerUsbOnline || healthInfo.chargerWirelessOnline) {
                this.mPogoCondition = 2;
            } else {
                this.mPogoCondition = 1;
            }
            this.mPogoDockState = 1;
        } else {
            this.mPogoDockState = 0;
            this.mPogoCondition = 0;
        }
        if (i4 != this.mPogoDockState || i3 != this.mPogoCondition) {
            if (this.mActivityManagerReady) {
                i = Settings.Global.getInt(contentResolver, "device_provisioned", 0);
                i2 = Settings.System.getInt(this.mContext.getContentResolver(), "kids_home_mode", 0);
            } else {
                i = 0;
                i2 = 0;
            }
            if (i != 0 && i2 == 0) {
                intent2.putExtra("android.intent.extra.DOCK_STATE", this.mPogoDockState);
                intent2.putExtra("pogo_plugged", this.mPogoCondition);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.26
                    @Override // java.lang.Runnable
                    public void run() {
                        Slog.d(BatteryService.TAG, "Sending ACTION_DOCK_EVENT. dock_state:" + BatteryService.this.mPogoDockState + ", pogo_plugged:" + BatteryService.this.mPogoCondition);
                        ActivityManager.broadcastStickyIntent(intent2, -1);
                    }
                });
            } else {
                Slog.d(TAG, "device_provisioned: " + i + "kids_home_mode: " + i2);
            }
        }
        int iconLocked = getIconLocked(this.mHealthInfo.batteryLevel);
        boolean z = this.mSehHealthInfo.batteryHighVoltageCharger != 0;
        intent.putExtra("seq", this.mSequence);
        intent.putExtra("status", this.mHealthInfo.batteryStatus);
        intent.putExtra("health", this.mHealthInfo.batteryHealth);
        intent.putExtra("present", this.mHealthInfo.batteryPresent);
        intent.putExtra("level", this.mHealthInfo.batteryLevel);
        intent.putExtra("battery_low", this.mSentLowBatteryBroadcast);
        intent.putExtra("scale", 100);
        intent.putExtra("icon-small", iconLocked);
        intent.putExtra("plugged", this.mPlugType);
        intent.putExtra("voltage", this.mHealthInfo.batteryVoltageMillivolts);
        intent.putExtra("temperature", this.mHealthInfo.batteryTemperatureTenthsCelsius);
        intent.putExtra("technology", this.mHealthInfo.batteryTechnology);
        intent.putExtra("invalid_charger", this.mInvalidCharger);
        intent.putExtra("max_charging_current", this.mHealthInfo.maxChargingCurrentMicroamps);
        intent.putExtra("max_charging_voltage", this.mHealthInfo.maxChargingVoltageMicrovolts);
        intent.putExtra("charge_counter", this.mHealthInfo.batteryChargeCounterUah);
        intent.putExtra("android.os.extra.CYCLE_COUNT", this.mHealthInfo.batteryCycleCount);
        intent.putExtra("android.os.extra.CHARGING_STATUS", this.mHealthInfo.chargingState);
        intent.putExtra("online", this.mSehHealthInfo.batteryOnline);
        intent.putExtra("charge_type", this.mSehHealthInfo.batteryChargeType);
        intent.putExtra("power_sharing", this.mSehHealthInfo.batteryPowerSharingOnline);
        intent.putExtra("hv_charger", z);
        intent.putExtra("charger_type", this.mSehHealthInfo.batteryHighVoltageCharger);
        intent.putExtra("capacity", this.mBatteryCapacity);
        intent.putExtra("current_now", this.mSehHealthInfo.batteryCurrentNow);
        intent.putExtra("pogo_plugged", this.mPogoCondition);
        intent.putExtra("misc_event", this.mSehHealthInfo.batteryEvent);
        intent.putExtra("current_event", this.mSehHealthInfo.batteryCurrentEvent);
        Slog.d(TAG, "Sending ACTION_BATTERY_CHANGED: level:" + this.mHealthInfo.batteryLevel + ", status:" + this.mHealthInfo.batteryStatus + ", health:" + this.mHealthInfo.batteryHealth + ", remain:" + this.mHealthInfo.batteryChargeTimeToFullNowSeconds + ", ac:" + this.mHealthInfo.chargerAcOnline + ", usb:" + this.mHealthInfo.chargerUsbOnline + ", wireless:" + this.mHealthInfo.chargerWirelessOnline + ", pogo:" + this.mSehHealthInfo.chargerPogoOnline + ", misc:0x" + Integer.toHexString(this.mSehHealthInfo.batteryEvent) + ", charge_type:" + this.mSehHealthInfo.batteryChargeType + ", charger_type:" + this.mSehHealthInfo.batteryHighVoltageCharger + ", voltage:" + this.mHealthInfo.batteryVoltageMillivolts + ", temperature:" + this.mHealthInfo.batteryTemperatureTenthsCelsius + ", online:" + this.mSehHealthInfo.batteryOnline + ", charging_status:" + this.mHealthInfo.chargingState + ", cycle_count:" + this.mHealthInfo.batteryCycleCount + ", current_avg:" + this.mHealthInfo.batteryCurrentAverageMicroamps + ", ps:" + this.mSehHealthInfo.batteryPowerSharingOnline + ", hvc:" + z + ", capacity:" + this.mBatteryCapacity + ", current_event:0x" + Integer.toHexString(this.mSehHealthInfo.batteryCurrentEvent) + ", current_now:" + this.mSehHealthInfo.batteryCurrentNow + ", mcc:" + this.mHealthInfo.maxChargingCurrentMicroamps + ", mcv:" + this.mHealthInfo.maxChargingVoltageMicrovolts + ", cc:" + this.mHealthInfo.batteryChargeCounterUah + ", present:" + this.mHealthInfo.batteryPresent + ", scale:100, technology:" + this.mHealthInfo.batteryTechnology);
        this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BatteryService.this.lambda$sendBatteryChangedIntentLocked$0(intent);
            }
        });
        if (this.mShouldCheckFirstUseDateRegularly && SystemClock.elapsedRealtime() > 180000) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.27
                @Override // java.lang.Runnable
                public void run() {
                    BatteryService.this.updateBatteryDate();
                }
            });
        }
        if (this.mBattInfoManager.isDualAuth() && SystemClock.elapsedRealtime() > 90000 && this.mBattInfoManager.isAuthAvailable()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.28
                @Override // java.lang.Runnable
                public void run() {
                    if (BatteryService.this.mBattInfoManager.firstUseDateData.shouldCheck) {
                        BatteryService.this.mBattInfoManager.firstUseDateData.updateDate();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendBatteryChangedIntentLocked$0(Intent intent) {
        ActivityManager.broadcastStickyIntent(intent, -1, this.mBatteryChangedOptions, -1);
    }

    public final void sendBatteryEventIntentLocked() {
        int i = this.mSehHealthInfo.batteryEvent;
        if (i == this.mLastBatteryEvent && this.mSecPlugTypeSummary == this.mLastSecPlugTypeSummary && this.mWcTxId == this.mLastWcTxId) {
            return;
        }
        final boolean z = (i & 1) != 0;
        if (this.mLastBatteryEventWaterInConnector != z) {
            final Intent intent = new Intent("com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR");
            intent.addFlags(603979776);
            intent.putExtra("water", z);
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.29
                @Override // java.lang.Runnable
                public void run() {
                    Slog.d(BatteryService.TAG, "Sending ACTION_SEC_BATTERY_WATER_IN_CONNECTOR. water : " + z);
                    ActivityManager.broadcastStickyIntent(intent, -1);
                }
            });
            this.mLastBatteryEventWaterInConnector = z;
        }
        if (this.mSehHealthInfo.batteryEvent == this.mLastBatteryEvent && this.mSecPlugTypeSummary == this.mLastSecPlugTypeSummary) {
            return;
        }
        final Intent intent2 = new Intent("com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT");
        intent2.addFlags(603979776);
        intent2.putExtra("misc_event", this.mSehHealthInfo.batteryEvent);
        intent2.putExtra("sec_plug_type", this.mSecPlugTypeSummary);
        intent2.putExtra("wc_tx_id", this.mWcTxId);
        this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.30
            @Override // java.lang.Runnable
            public void run() {
                Slog.d(BatteryService.TAG, "misc_event:0x" + Integer.toHexString(BatteryService.this.mSehHealthInfo.batteryEvent) + ", sec plug type:" + BatteryService.this.mSecPlugTypeSummary + ", wc_tx_id:" + BatteryService.this.mWcTxId);
                ActivityManager.broadcastStickyIntent(intent2, -1);
            }
        });
    }

    public final void sendDeteriorationIntentLocked(boolean z) {
        if ("r0q,r0s,g0q,g0s,b0q,b0s".contains(Build.DEVICE)) {
            sendBroadcastDeterioration(z);
        } else {
            sendBroadcastDeteriorationLegacy(z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void sendBroadcastDeterioration(boolean r9) {
        /*
            r8 = this;
            java.lang.String r0 = "/efs/FactoryApp/cisd_data"
            boolean r1 = isFileSupported(r0)
            if (r1 == 0) goto L2a
            java.lang.String r0 = r8.readFromFile(r0, r9)
            if (r0 == 0) goto L2a
            java.lang.String r1 = " "
            java.lang.String[] r0 = r0.split(r1)
            r1 = 10
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L21
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L21
            goto L2b
        L21:
            r0 = move-exception
            java.lang.String r1 = com.android.server.BatteryService.TAG
            java.lang.String r2 = "sendDeteriorationIntentLocked highSwellingCnt"
            com.android.server.power.Slog.e(r1, r2, r0)
        L2a:
            r0 = -1
        L2b:
            java.lang.String r1 = "/efs/FactoryApp/bsoh"
            boolean r2 = isFileSupported(r1)
            if (r2 == 0) goto L4b
            java.lang.String r1 = r8.readFromFile(r1, r9)
            if (r1 == 0) goto L4b
            java.lang.String r1 = r1.trim()     // Catch: java.lang.NumberFormatException -> L42
            double r1 = java.lang.Double.parseDouble(r1)     // Catch: java.lang.NumberFormatException -> L42
            goto L50
        L42:
            r1 = move-exception
            java.lang.String r2 = com.android.server.BatteryService.TAG
            java.lang.String r3 = "sendDeteriorationIntentLocked nfe"
            com.android.server.power.Slog.e(r2, r3, r1)
        L4b:
            r1 = 4636807660098813952(0x4059400000000000, double:101.0)
        L50:
            r3 = 5000(0x1388, float:7.006E-42)
            r4 = 15
            r5 = 1
            if (r0 > r3) goto L65
            r6 = 4632937379169042432(0x404b800000000000, double:55.0)
            int r3 = java.lang.Double.compare(r1, r6)
            if (r3 >= 0) goto L63
            goto L65
        L63:
            r0 = r5
            goto L85
        L65:
            java.lang.String r3 = com.android.server.BatteryService.TAG
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "sendBroadcastDeterioration hsc : "
            r6.append(r7)
            r6.append(r0)
            java.lang.String r0 = ", bsoh : "
            r6.append(r0)
            r6.append(r1)
            java.lang.String r0 = r6.toString()
            com.android.server.power.Slog.e(r3, r0)
            r0 = r4
        L85:
            r1 = 10000(0x2710, double:4.9407E-320)
            if (r9 == 0) goto L8a
            goto La1
        L8a:
            int r9 = r8.mLastDeterioration
            r6 = 10
            if (r9 == r0) goto L9f
            boolean r9 = r8.mBootCompleted
            if (r9 == 0) goto L9f
            if (r0 != r4) goto L9f
            boolean r9 = r8.mIsFirstIntentSended
            if (r9 != 0) goto L9b
            goto L9c
        L9b:
            r1 = r6
        L9c:
            r8.mLastDeterioration = r0
            goto La1
        L9f:
            r5 = 0
            r1 = r6
        La1:
            if (r5 == 0) goto Lc3
            android.content.Intent r9 = new android.content.Intent
            java.lang.String r3 = "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"
            r9.<init>(r3)
            java.lang.String r3 = "deterioration"
            r9.putExtra(r3, r0)
            r3 = 268435456(0x10000000, float:2.5243549E-29)
            r9.addFlags(r3)
            java.lang.String r3 = com.android.server.BatteryService.PACKAGE_DEVICE_CARE
            r9.setPackage(r3)
            android.os.Handler r3 = r8.mHandler
            com.android.server.BatteryService$31 r4 = new com.android.server.BatteryService$31
            r4.<init>()
            r3.postDelayed(r4, r1)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.sendBroadcastDeterioration(boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0022, code lost:
    
        if (r7.mIsFirstIntentSended == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0011, code lost:
    
        if (r0 != 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void sendBroadcastDeteriorationLegacy(boolean r8) {
        /*
            r7 = this;
            vendor.samsung.hardware.health.SehHealthInfo r0 = r7.mSehHealthInfo
            int r0 = r0.batteryEvent
            r1 = 983040(0xf0000, float:1.377532E-39)
            r0 = r0 & r1
            int r0 = r0 >> 16
            r1 = 1
            r2 = 10000(0x2710, double:4.9407E-320)
            r4 = 0
            r5 = 10
            if (r8 == 0) goto L14
            if (r0 == 0) goto L2a
            goto L2c
        L14:
            int r8 = r7.mLastDeterioration
            if (r8 == r0) goto L2a
            boolean r8 = r7.mBootCompleted
            if (r8 == 0) goto L25
            r8 = 15
            if (r0 != r8) goto L25
            boolean r8 = r7.mIsFirstIntentSended
            if (r8 != 0) goto L26
            goto L27
        L25:
            r1 = r4
        L26:
            r2 = r5
        L27:
            r7.mLastDeterioration = r0
            goto L2c
        L2a:
            r1 = r4
            r2 = r5
        L2c:
            if (r1 == 0) goto L4e
            android.content.Intent r8 = new android.content.Intent
            java.lang.String r1 = "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"
            r8.<init>(r1)
            java.lang.String r1 = "deterioration"
            r8.putExtra(r1, r0)
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            r8.addFlags(r1)
            java.lang.String r1 = com.android.server.BatteryService.PACKAGE_DEVICE_CARE
            r8.setPackage(r1)
            android.os.Handler r1 = r7.mHandler
            com.android.server.BatteryService$32 r4 = new com.android.server.BatteryService$32
            r4.<init>()
            r1.postDelayed(r4, r2)
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.sendBroadcastDeteriorationLegacy(boolean):void");
    }

    public final void sendOTGIntentLocked() {
        final Intent intent = new Intent("android.intent.action.RESPONSE_OTG_CHARGE_BLOCK");
        this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.33
            @Override // java.lang.Runnable
            public void run() {
                Slog.d(BatteryService.TAG, "Sending RESPONSE_OTG_CHARGE_BLOCK.");
                ActivityManager.broadcastStickyIntent(intent, -1);
            }
        });
    }

    public final void sendWirelessPowerSharingIntentLocked() {
        SemInputDeviceManager semInputDeviceManager;
        synchronized (this.mLock) {
            final int i = this.mSehHealthInfo.wirelessPowerSharingTxEvent;
            final boolean z = (i & 1) != 0;
            if (this.mLastTxEventTxEnabled != z) {
                final Intent intent = new Intent("com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED");
                intent.putExtra("enabled", z);
                intent.addFlags(268435456);
                intent.setPackage(PACKAGE_DEVICE_CARE);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.34
                    @Override // java.lang.Runnable
                    public void run() {
                        Slog.d(BatteryService.TAG, "Sending ACTION_WIRELESS_POWER_SHARING_ENABLED. enabled : " + z);
                        ActivityManager.broadcastStickyIntent(intent, -1);
                    }
                });
                this.mLastTxEventTxEnabled = z;
                int i2 = z ? 1 : 0;
                this.mLatestWirelessChargingMode = i2;
                SemInputDeviceManager semInputDeviceManager2 = this.mSemInputDeviceManager;
                if (semInputDeviceManager2 != null) {
                    semInputDeviceManager2.setWirelessChargingMode(11, i2);
                    Slog.d(TAG, "setWirelessChargingMode(DEVID_SPEN): " + this.mLatestWirelessChargingMode);
                }
                if (this.mIsWirelessTxSupported && this.mBootCompleted && (semInputDeviceManager = this.mSemInputDeviceManager) != null) {
                    semInputDeviceManager.setWirelessChargingMode(1, this.mLatestWirelessChargingMode);
                    Slog.d(TAG, "setWirelessChargingMode(TSP): " + this.mLatestWirelessChargingMode);
                }
            }
            final boolean z2 = (i & 2) != 0;
            if (this.mLastTxEventRxConnected != z2) {
                final Intent intent2 = new Intent("com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED");
                intent2.putExtra("connected", z2);
                intent2.addFlags(268435456);
                intent2.setPackage(PACKAGE_DEVICE_CARE);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.35
                    @Override // java.lang.Runnable
                    public void run() {
                        Slog.d(BatteryService.TAG, "Sending ACTION_WIRELESS_POWER_SHARING_CONNECTED. connected : " + z2);
                        BatteryService.this.mContext.sendBroadcastAsUser(intent2, UserHandle.ALL);
                        try {
                            if (z2) {
                                BatteryService.this.mBatteryStats.noteStartTxPowerSharing();
                            } else {
                                BatteryService.this.mBatteryStats.noteStopTxPowerSharing();
                            }
                        } catch (RemoteException unused) {
                            Slog.e(BatteryService.TAG, "Failed to note battery stats in BatteryService");
                        }
                    }
                });
                this.mLastTxEventRxConnected = z2;
            }
            if (i != this.mLastWirelessPowerSharingTxEvent) {
                final Intent intent3 = new Intent("com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT");
                intent3.putExtra("tx_event", i);
                intent3.addFlags(268435456);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.36
                    @Override // java.lang.Runnable
                    public void run() {
                        Slog.d(BatteryService.TAG, "tx_event:0x" + Integer.toHexString(i));
                        ActivityManager.broadcastStickyIntent(intent3, -1);
                        Intent intent4 = (Intent) intent3.clone();
                        intent4.setPackage(BatteryService.PACKAGE_DEVICE_CARE);
                        ActivityManager.broadcastStickyIntent(intent4, -1);
                    }
                });
                this.mLastWirelessPowerSharingTxEvent = i;
            }
        }
    }

    public final void sendBatteryLevelChangedIntentLocked() {
        Bundle bundle = new Bundle();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        bundle.putInt("seq", this.mSequence);
        bundle.putInt("status", this.mHealthInfo.batteryStatus);
        bundle.putInt("health", this.mHealthInfo.batteryHealth);
        bundle.putBoolean("present", this.mHealthInfo.batteryPresent);
        bundle.putInt("level", this.mHealthInfo.batteryLevel);
        bundle.putBoolean("battery_low", this.mSentLowBatteryBroadcast);
        bundle.putInt("scale", 100);
        bundle.putInt("plugged", this.mPlugType);
        bundle.putInt("voltage", this.mHealthInfo.batteryVoltageMillivolts);
        bundle.putInt("temperature", this.mHealthInfo.batteryTemperatureTenthsCelsius);
        bundle.putInt("charge_counter", this.mHealthInfo.batteryChargeCounterUah);
        bundle.putLong("android.os.extra.EVENT_TIMESTAMP", elapsedRealtime);
        bundle.putInt("android.os.extra.CYCLE_COUNT", this.mHealthInfo.batteryCycleCount);
        bundle.putInt("android.os.extra.CHARGING_STATUS", this.mHealthInfo.chargingState);
        boolean isEmpty = this.mBatteryLevelsEventQueue.isEmpty();
        this.mBatteryLevelsEventQueue.add(bundle);
        if (this.mBatteryLevelsEventQueue.size() > 100) {
            this.mBatteryLevelsEventQueue.removeFirst();
        }
        if (isEmpty) {
            long j = this.mLastBatteryLevelChangedSentMs;
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    BatteryService.this.sendEnqueuedBatteryLevelChangedEvents();
                }
            }, elapsedRealtime - j > 60000 ? 0L : (j + 60000) - elapsedRealtime);
        }
    }

    public final void sendEnqueuedBatteryLevelChangedEvents() {
        ArrayList<? extends Parcelable> arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList<>(this.mBatteryLevelsEventQueue);
            this.mBatteryLevelsEventQueue.clear();
        }
        Intent intent = new Intent("android.intent.action.BATTERY_LEVEL_CHANGED");
        intent.addFlags(16777216);
        intent.putParcelableArrayListExtra("android.os.extra.EVENTS", arrayList);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.BATTERY_STATS");
        this.mLastBatteryLevelChangedSentMs = SystemClock.elapsedRealtime();
    }

    public final void logBatteryStatsLocked() {
        DropBoxManager dropBoxManager;
        File file;
        String str;
        StringBuilder sb;
        IBinder service = ServiceManager.getService("batterystats");
        if (service == null || (dropBoxManager = (DropBoxManager) this.mContext.getSystemService("dropbox")) == null || !dropBoxManager.isTagEnabled("BATTERY_DISCHARGE_INFO")) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                file = new File("/data/system/batterystats.dump");
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        service.dump(fileOutputStream2.getFD(), DUMPSYS_ARGS);
                        FileUtils.sync(fileOutputStream2);
                        dropBoxManager.addFile("BATTERY_DISCHARGE_INFO", file, 2);
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused) {
                            Slog.e(TAG, "failed to close dumpsys output stream");
                        }
                    } catch (RemoteException e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        Slog.e(TAG, "failed to dump battery service", e);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                                Slog.e(TAG, "failed to close dumpsys output stream");
                            }
                        }
                        if (file == null || file.delete()) {
                            return;
                        }
                        str = TAG;
                        sb = new StringBuilder();
                        sb.append("failed to delete temporary dumpsys file: ");
                        sb.append(file.getAbsolutePath());
                        Slog.e(str, sb.toString());
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        Slog.e(TAG, "failed to write dumpsys file", e);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused3) {
                                Slog.e(TAG, "failed to close dumpsys output stream");
                            }
                        }
                        if (file == null || file.delete()) {
                            return;
                        }
                        str = TAG;
                        sb = new StringBuilder();
                        sb.append("failed to delete temporary dumpsys file: ");
                        sb.append(file.getAbsolutePath());
                        Slog.e(str, sb.toString());
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused4) {
                                Slog.e(TAG, "failed to close dumpsys output stream");
                            }
                        }
                        if (file == null) {
                            throw th;
                        }
                        if (file.delete()) {
                            throw th;
                        }
                        Slog.e(TAG, "failed to delete temporary dumpsys file: " + file.getAbsolutePath());
                        throw th;
                    }
                } catch (RemoteException e3) {
                    e = e3;
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (RemoteException e5) {
                e = e5;
                file = null;
            } catch (IOException e6) {
                e = e6;
                file = null;
            } catch (Throwable th2) {
                th = th2;
                file = null;
            }
            if (file.delete()) {
                return;
            }
            str = TAG;
            sb = new StringBuilder();
            sb.append("failed to delete temporary dumpsys file: ");
            sb.append(file.getAbsolutePath());
            Slog.e(str, sb.toString());
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void logOutlierLocked(long j) {
        String str;
        String str2;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        if (this.mActivityManagerReady) {
            str = Settings.Global.getString(contentResolver, "battery_discharge_threshold");
            str2 = Settings.Global.getString(contentResolver, "battery_discharge_duration_threshold");
        } else {
            str = null;
            str2 = null;
        }
        if (str == null || str2 == null) {
            return;
        }
        try {
            long parseLong = Long.parseLong(str2);
            int parseInt = Integer.parseInt(str);
            if (j > parseLong || this.mDischargeStartLevel - this.mHealthInfo.batteryLevel < parseInt) {
                return;
            }
            logBatteryStatsLocked();
        } catch (NumberFormatException unused) {
            Slog.e(TAG, "Invalid DischargeThresholds GService string: " + str2 + " or " + str);
        }
    }

    public final int getIconLocked(int i) {
        int i2 = this.mHealthInfo.batteryStatus;
        if (i2 == 2) {
            return 17304234;
        }
        if (i2 == 3) {
            return 17304220;
        }
        if (i2 == 4 || i2 == 5) {
            return (!isPoweredLocked(15) || this.mHealthInfo.batteryLevel < 100) ? 17304220 : 17304234;
        }
        return 17304248;
    }

    public final String getDeviceSecurityPackageName() {
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME", "com.samsung.android.sm.devicesecurity");
        try {
            this.mContext.getPackageManager().getPackageInfo(string, 128);
            return string;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public boolean setOTGEnableDisable(boolean z) {
        return writeToFile("/sys/class/power_supply/otg/online", 0L, z);
    }

    public void updateAdaptiveFastChargingSetting(ContentResolver contentResolver) {
        this.mAdaptiveFastChargingSettingsEnable = Settings.System.getIntForUser(contentResolver, "adaptive_fast_charging", 1, -2) == 1;
        Slog.d(TAG, "!@AdaptiveFastCharging Settings = " + this.mAdaptiveFastChargingSettingsEnable);
        setAdaptiveFastCharging(this.mAdaptiveFastChargingSettingsEnable);
    }

    public void setAdaptiveFastCharging(boolean z) {
        this.mHealthServiceWrapper.sehWriteEnableToParam(this.mAdaptiveFastChargingOffset, !z, "afc");
        if (writeToFile(this.mAfcDisableSysFs, 0L, !z)) {
            Slog.d(TAG, "success to set AFC sysfs as " + z);
            return;
        }
        Slog.d(TAG, "fail to set AFC sysfs");
    }

    public void setSuperFastCharging(boolean z) {
        this.mHealthServiceWrapper.sehWriteEnableToParam(this.mSuperFastChargingOffset, !z, "sfc");
        if (writeToFile("/sys/class/power_supply/battery/pd_disable", 0L, !z)) {
            Slog.d(TAG, "success to set SFC sysfs as " + z);
            return;
        }
        Slog.d(TAG, "fail to set SFC sysfs");
    }

    public void setPassThrough(boolean z) {
        if (writeToFile("/sys/class/power_supply/battery/pass_through", 0L, z)) {
            Slog.d(TAG, "success to set PassThrough sysfs as " + z);
            return;
        }
        Slog.d(TAG, "fail to set PassThrough sysfs");
    }

    public boolean setHiccupDisable() {
        return fileWriteString("/sys/class/sec/switch/hiccup", "DISABLE");
    }

    public void setResponseHiccupEvent() {
        fileWriteInt("/sys/class/power_supply/battery/batt_misc_event", IInstalld.FLAG_FORCE);
    }

    public boolean setWirelessPowerSharing(boolean z) {
        return writeToFile("/sys/class/power_supply/battery/wc_tx_en", 0L, z);
    }

    public final void setWirelessPowerSharingExternelEventInternal(int i, int i2) {
        synchronized (this.mLock) {
            Slog.i(TAG, "setWirelessPowerSharingExternelEventInternal packageNum: " + i + " value: " + i2);
            int i3 = this.mLastWirelessPowerSharingExternelEvent;
            int i4 = ((~i) & i3) | i2;
            if (i4 != i3) {
                fileWriteInt("/sys/class/power_supply/battery/ext_event", i4);
                this.mLastWirelessPowerSharingExternelEvent = i4;
            }
        }
    }

    public final void setWirelessPowerSharingTxBatteryLimit(int i) {
        fileWriteInt("/sys/class/power_supply/battery/wc_tx_stop_capacity", i);
    }

    public boolean isSupportedWirelessTx() {
        InputManager inputManager = InputManager.getInstance();
        return (inputManager == null || (inputManager.semCheckInputFeature() & 16) == 0) ? false : true;
    }

    public void setWirelessChargingState(boolean z) {
        String str = TAG;
        Slog.d(str, "wirelessChargingState: " + z + ", notifyWirelessEnabled: " + this.mNotifyWirelessEnabled);
        if (z && !this.mNotifyWirelessEnabled) {
            Slog.d(str, "notify wireless on");
            this.mLatestWirelessChargingMode = 1;
            this.mNotifyWirelessEnabled = true;
            writeToFile("/sys/class/sec/switch/wireless", 0L, true);
        } else if (!z && this.mNotifyWirelessEnabled && !this.mLastWirelessChargingStatus && !this.mLastWirelessPinDetected) {
            Slog.d(str, "notify wireless off");
            this.mLatestWirelessChargingMode = 0;
            this.mNotifyWirelessEnabled = false;
            writeToFile("/sys/class/sec/switch/wireless", 0L, false);
        }
        SemInputDeviceManager semInputDeviceManager = this.mSemInputDeviceManager;
        if (semInputDeviceManager != null) {
            semInputDeviceManager.setWirelessChargingMode(11, this.mLatestWirelessChargingMode);
            this.mSemInputDeviceManager.setWirelessChargingMode(1, this.mLatestWirelessChargingMode);
            Slog.d(str, "setWirelessChargingMode(All): " + this.mLatestWirelessChargingMode);
        }
    }

    public void sendScreenState() {
        fileWriteInt("/sys/class/power_supply/battery/lcd", this.mScreenOn ? 1 : 0);
    }

    public final boolean fileWriteString(String str, String str2) {
        FileOutputStream fileOutputStream;
        IOException e;
        if (!new File(str).exists()) {
            Slog.d(TAG, "fileWriteString : file not found:" + str);
            return false;
        }
        if (str2 == null) {
            Slog.e(TAG, "fileWriteString : value null");
            return false;
        }
        Slog.i(TAG, "fileWriteString : " + str + "  value : " + str2);
        try {
            try {
                fileOutputStream = new FileOutputStream(new File(str));
                try {
                    fileOutputStream.write(str2.getBytes());
                    fileOutputStream.close();
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    try {
                        fileOutputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    return false;
                }
            } catch (FileNotFoundException unused) {
                Slog.d(TAG, "fileWriteString : FileNotFoundException");
                return false;
            }
        } catch (IOException e4) {
            fileOutputStream = null;
            e = e4;
        }
    }

    public boolean writeToFile(String str, long j, boolean z) {
        RandomAccessFile randomAccessFile;
        IOException e;
        if (!new File(str).exists()) {
            Slog.d(TAG, str + " is not found");
            return false;
        }
        try {
            try {
                randomAccessFile = new RandomAccessFile(new File(str), "rw");
                try {
                    randomAccessFile.seek(j);
                    randomAccessFile.write((z ? "1" : "0").getBytes());
                    randomAccessFile.close();
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    try {
                        randomAccessFile.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    return false;
                }
            } catch (FileNotFoundException e4) {
                e4.printStackTrace();
                return false;
            }
        } catch (IOException e5) {
            randomAccessFile = null;
            e = e5;
        }
    }

    public static void fileWriteInt(String str, int i) {
        FileOutputStream fileOutputStream;
        Slog.i(TAG, "fileWriteInt : " + str + "  value : " + i);
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(new File(str));
        } catch (FileNotFoundException unused) {
            return;
        } catch (IOException e) {
            e = e;
        }
        try {
            fileOutputStream.write(Integer.toString(i).getBytes());
            fileOutputStream.close();
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            try {
                fileOutputStream2.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public static void sendBroadcastToExplicitPackage(Context context, Intent intent, String str) {
        Slog.d(TAG, "sendBroadcastToExplicitPackage: " + intent + " -> " + str);
        Intent intent2 = (Intent) intent.clone();
        intent2.setPackage(str);
        context.sendBroadcastAsUser(intent2, UserHandle.ALL);
    }

    public static boolean isSupportedDailyBoard() {
        String[] split;
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD");
        if (string == null || (split = string.split(",")) == null) {
            return false;
        }
        for (String str : split) {
            if (str.equalsIgnoreCase("TA")) {
                return true;
            }
        }
        return false;
    }

    public static boolean isFileSupported(String str) {
        if (new File(str).exists()) {
            return true;
        }
        Slog.d(TAG, str + " is not found");
        return false;
    }

    public final int getBatteryType() {
        int i;
        long readBatteryInfo = readBatteryInfo("/sys/class/power_supply/sec_auth/presence");
        long readBatteryInfo2 = readBatteryInfo("/sys/class/power_supply/sec_auth/batt_auth");
        String str = TAG;
        Slog.d(str, "[getBatteryType]presence:" + readBatteryInfo + " ,auth:" + readBatteryInfo2);
        boolean isFileSupported = isFileSupported("/sys/class/power_supply/sbp-fg/type");
        StringBuilder sb = new StringBuilder();
        sb.append("[getBatteryType]sbp_fg:");
        sb.append(isFileSupported);
        Slog.d(str, sb.toString());
        if (readBatteryInfo == 1 && readBatteryInfo2 == 1) {
            String readFromFile = readFromFile("/sys/class/power_supply/sec_auth/qr_code");
            String readFromFile2 = readFromFile("/efs/FactoryApp/HwParamBattQR");
            if (readFromFile != null) {
                this.mIsAuthQrEqualsEfs = readFromFile.equals(readFromFile2);
                Slog.i(str, "[getBatteryType]mIsAuthQrEqualsEfs:" + this.mIsAuthQrEqualsEfs);
                BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "getBatteryType QR", "mIsAuthQrEqualsEfs:" + this.mIsAuthQrEqualsEfs + " ,authQR:" + readFromFile + " ,efsQR:" + readFromFile2);
                i = 10;
            } else {
                i = 13;
            }
        } else if (readBatteryInfo == 0 && readBatteryInfo2 == 0) {
            i = 11;
        } else if (readBatteryInfo == 1 && readBatteryInfo2 == 0) {
            i = 12;
        } else if (isFileSupported) {
            String readFromFile3 = readFromFile("/sys/class/power_supply/sbp-fg/qr_code");
            String readFromFile4 = readFromFile("/efs/FactoryApp/HwParamBattQR");
            if (readFromFile3 != null) {
                this.mIsSbpFgQrEqualsEfs = readFromFile3.equals(readFromFile4);
                Slog.i(str, "[getBatteryType]SBP-FG mIsSbpFgQrEqualsEfs:" + this.mIsSbpFgQrEqualsEfs);
            } else {
                Slog.i(str, "[getBatteryType]SBP-FG QR read failed!!");
            }
            i = 20;
        } else {
            i = 0;
        }
        Slog.i(str, "[getBatteryType]type:" + i);
        BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "BatteryType", "type:" + i);
        return i;
    }

    public final void syncBatteryInfoAuthEfs() {
        long j;
        String str = TAG;
        Slog.i(str, "[syncBatteryInfoAuthEfs]mIsAuthQrEqualsEfs:" + this.mIsAuthQrEqualsEfs);
        String readFromFile = readFromFile("/sys/class/power_supply/sec_auth/first_use_date");
        if (readFromFile != null && readFromFile.length() == 8 && readFromFile.startsWith("20")) {
            Slog.i(str, "[syncBatteryInfoAuthEfs]authFirstUseDate valid => sync to efs");
            saveBatteryInfo("/efs/FactoryApp/batt_beginning_date", readFromFile);
            this.mShouldCheckFirstUseDateRegularly = false;
        } else {
            Slog.i(str, "[syncBatteryInfoAuthEfs]authFirstUseDate invalid => Not sync to efs");
            this.mShouldCheckFirstUseDateRegularly = true;
        }
        BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "syncBatteryInfoAuthEfs", "authFirstUseDate:" + readFromFile + " ,mShouldCheckFirstUseDateRegularly:" + this.mShouldCheckFirstUseDateRegularly);
        if (this.mIsAuthQrEqualsEfs) {
            long readBatteryUsageFromEfsLocked = readBatteryUsageFromEfsLocked("/efs/FactoryApp/batt_discharge_level");
            long readBatteryInfo = readBatteryInfo("/sys/class/power_supply/sec_auth/batt_discharge_level");
            if (readBatteryInfo == 16777215 || readBatteryInfo <= readBatteryUsageFromEfsLocked) {
                Slog.d(str, "[syncBatteryInfoAuthEfs]efsDischargeLevel is worse");
                j = readBatteryUsageFromEfsLocked;
            } else {
                Slog.d(str, "[syncBatteryInfoAuthEfs]authDischargeLevel is worse");
                j = readBatteryInfo;
            }
            saveBatteryInfo("/efs/FactoryApp/batt_discharge_level", j);
            saveBatteryInfo("/sys/class/power_supply/sec_auth/batt_discharge_level", j);
            if (FEATURE_FULL_BATTERY_CYCLE) {
                long readBatteryUsageFromEfsLocked2 = readBatteryUsageFromEfsLocked("/efs/FactoryApp/batt_full_status_usage");
                long readBatteryInfo2 = readBatteryInfo("/sys/class/power_supply/sec_auth/batt_full_status_usage");
                if (readBatteryInfo2 == 16777215 || readBatteryInfo2 <= readBatteryUsageFromEfsLocked2) {
                    Slog.d(str, "[syncBatteryInfoAuthEfs]efsFullStatusUsage is worse");
                } else {
                    Slog.d(str, "[syncBatteryInfoAuthEfs]authFullStatusUsage is worse");
                    readBatteryUsageFromEfsLocked2 = readBatteryInfo2;
                }
                saveBatteryInfo("/efs/FactoryApp/batt_full_status_usage", readBatteryUsageFromEfsLocked2);
                saveBatteryInfo("/sys/class/power_supply/sec_auth/batt_full_status_usage", readBatteryUsageFromEfsLocked2);
            }
            long readBatteryInfo3 = readBatteryInfo("/sys/class/power_supply/sec_auth/asoc");
            long readBatteryInfo4 = readBatteryInfo("/efs/FactoryApp/asoc");
            if (readBatteryInfo3 < 0 || readBatteryInfo3 > 100 || readBatteryInfo3 >= readBatteryInfo4) {
                Slog.d(str, "[syncBatteryInfoAuthEfs]efsAsoc is worse");
                readBatteryInfo3 = readBatteryInfo4;
            } else {
                Slog.d(str, "[syncBatteryInfoAuthEfs]authAsoc is worse");
            }
            saveBatteryInfo("/efs/FactoryApp/asoc", readBatteryInfo3);
            saveBatteryInfo("/sys/class/power_supply/sec_auth/asoc", readBatteryInfo3);
            return;
        }
        String readFromFile2 = readFromFile("/sys/class/power_supply/sec_auth/qr_code");
        if (readFromFile2 != null) {
            saveBatteryInfo("/efs/FactoryApp/HwParamBattQR", readFromFile2);
        } else {
            Slog.e(str, "[syncBatteryInfoAuthEfs]QR read fail");
            saveBatteryInfo("/efs/FactoryApp/HwParamBattQR", "");
        }
        long readBatteryInfo5 = readBatteryInfo("/sys/class/power_supply/sec_auth/batt_discharge_level");
        long j2 = 1;
        if (readBatteryInfo5 == 16777215 || readBatteryInfo5 < 0) {
            saveBatteryInfo("/sys/class/power_supply/sec_auth/batt_discharge_level", 1L);
            readBatteryInfo5 = 1;
        }
        saveBatteryInfo("/efs/FactoryApp/batt_discharge_level", readBatteryInfo5);
        long readBatteryInfo6 = readBatteryInfo("/sys/class/power_supply/sec_auth/batt_full_status_usage");
        if (readBatteryInfo6 == 16777215 || readBatteryInfo6 < 0) {
            saveBatteryInfo("/sys/class/power_supply/sec_auth/batt_full_status_usage", 1L);
        } else {
            j2 = readBatteryInfo6;
        }
        saveBatteryInfo("/efs/FactoryApp/batt_full_status_usage", j2);
        long readBatteryInfo7 = readBatteryInfo("/sys/class/power_supply/sec_auth/asoc");
        if (readBatteryInfo7 == 65535 || readBatteryInfo7 < 0) {
            readBatteryInfo7 = 100;
            saveBatteryInfo("/sys/class/power_supply/sec_auth/asoc", 100L);
        }
        saveBatteryInfo("/efs/FactoryApp/asoc", readBatteryInfo7);
    }

    public final void syncBatteryInfoSbpFgEfs() {
        String str = TAG;
        Slog.i(str, "[syncBatteryInfoSbpFgEfs]mIsSbpFgQrEqualsEfs:" + this.mIsSbpFgQrEqualsEfs);
        String readFromFile = readFromFile("/sys/class/power_supply/sbp-fg/first_use_date");
        if (readFromFile != null && readFromFile.length() == 8 && readFromFile.startsWith("20")) {
            Slog.i(str, "[syncBatteryInfoSbpFgEfs]sbpfgFirstUseDate valid => sync to efs");
            saveBatteryInfo("/efs/FactoryApp/batt_beginning_date", readFromFile);
            this.mShouldCheckFirstUseDateRegularly = false;
        } else {
            Slog.i(str, "[syncBatteryInfoSbpFgEfs]sbpfgFirstUseDate invalid => Not sync to efs");
            saveBatteryInfo("/efs/FactoryApp/batt_beginning_date", "FFFF");
            this.mShouldCheckFirstUseDateRegularly = true;
        }
        BatteryLogger.writeToFile("/data/log/battery_service/battery_service_main_history", "syncBatteryInfoSbpFgEfs", "sbpfgFirstUseDate:" + readFromFile + " ,mShouldCheckFirstUseDateRegularly:" + this.mShouldCheckFirstUseDateRegularly);
        if (this.mIsSbpFgQrEqualsEfs) {
            return;
        }
        String readFromFile2 = readFromFile("/sys/class/power_supply/sbp-fg/qr_code");
        if (readFromFile2 != null) {
            saveBatteryInfo("/efs/FactoryApp/HwParamBattQR", readFromFile2);
        } else {
            Slog.e(str, "[syncBatteryInfoSbpFgEfs]QR read fail");
            saveBatteryInfo("/efs/FactoryApp/HwParamBattQR", "");
        }
    }

    public final void initBatteryInfo() {
        this.mHandlerForBatteryInfoBackUp.post(new Runnable() { // from class: com.android.server.BatteryService.37
            @Override // java.lang.Runnable
            public void run() {
                long j;
                synchronized (BatteryService.this.mLockBatteryInfoBackUp) {
                    Slog.d(BatteryService.TAG, "!@[BatteryInfo] initBatteryInfo()");
                    if (BatteryService.this.mBatteryType == 20) {
                        j = BatteryService.this.readBatteryInfo("/sys/class/power_supply/sbp-fg/cycle");
                        long j2 = j * 100;
                        BatteryService.this.saveBatteryInfo("/efs/FactoryApp/batt_discharge_level", j2);
                        BatteryService.this.mSavedBatteryUsageForSbpFg = j2;
                    } else {
                        BatteryService batteryService = BatteryService.this;
                        batteryService.mSavedBatteryUsage = batteryService.readBatteryUsageFromEfsLocked("/efs/FactoryApp/batt_discharge_level");
                        j = -1;
                    }
                    boolean z = BatteryService.FEATURE_FULL_BATTERY_CYCLE;
                    if (z) {
                        BatteryService batteryService2 = BatteryService.this;
                        batteryService2.mSavedFullBatteryDuration = batteryService2.readBatteryUsageFromEfsLocked("/efs/FactoryApp/batt_full_status_usage");
                    }
                    if (BatteryService.FEATURE_SAVE_BATTERY_CYCLE) {
                        if (BatteryService.this.mBatteryType == 20) {
                            BatteryService.this.saveBatteryInfo("/sys/class/power_supply/battery/battery_cycle", j);
                        } else if (z) {
                            BatteryService.this.saveBatteryInfo("/sys/class/power_supply/battery/battery_cycle", (BatteryService.this.mSavedBatteryUsage / 100) + " " + (BatteryService.this.mSavedFullBatteryDuration / 720));
                        } else {
                            BatteryService batteryService3 = BatteryService.this;
                            batteryService3.saveBatteryInfo("/sys/class/power_supply/battery/battery_cycle", batteryService3.mSavedBatteryUsage / 100);
                        }
                    }
                    BatteryService batteryService4 = BatteryService.this;
                    batteryService4.mSavedBatteryMaxCurrent = batteryService4.readBatteryMaxCurrentFromEfsLocked();
                    BatteryService batteryService5 = BatteryService.this;
                    batteryService5.mSavedBatteryMaxTemp = batteryService5.readBatteryMaxTempFromEfsLocked();
                }
            }
        });
    }

    public final long readBatteryUsageFromEfsLocked(String str) {
        long readBatteryInfo = readBatteryInfo(str);
        if (readBatteryInfo > 0) {
            return readBatteryInfo;
        }
        saveBatteryInfo(str, 1L);
        return 1L;
    }

    public final void logFullBatteryDurationLocked(boolean z) {
        if (this.mHealthInfo.batteryLevel != 100) {
            if (this.mFullBatteryStartTime != -1) {
                this.mFullBatteryDuration = SystemClock.elapsedRealtime() - this.mFullBatteryStartTime;
                Slog.d(TAG, "logFullBatteryDurationLocked : save duration, mFullBatteryDuration=" + this.mFullBatteryDuration);
                final long j = this.mFullBatteryDuration;
                this.mFullBatteryDuration = 0L;
                this.mFullBatteryStartTime = -1L;
                this.mHandlerForBatteryInfoBackUp.post(new Runnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        BatteryService.this.lambda$logFullBatteryDurationLocked$2(j);
                    }
                });
                return;
            }
            return;
        }
        if (this.mFullBatteryStartTime == -1) {
            this.mFullBatteryStartTime = SystemClock.elapsedRealtime();
        }
        this.mFullBatteryDuration = SystemClock.elapsedRealtime() - this.mFullBatteryStartTime;
        String str = TAG;
        Slog.d(str, "logFullBatteryDurationLocked : mFullBatteryStartTime=" + this.mFullBatteryStartTime + " mFullBatteryDuration=" + this.mFullBatteryDuration);
        final long j2 = this.mFullBatteryDuration;
        if (j2 >= 600000 || z) {
            Slog.d(str, "logFullBatteryDurationLocked : save duration, mFullBatteryDuration=" + this.mFullBatteryDuration);
            this.mFullBatteryDuration = 0L;
            this.mFullBatteryStartTime = SystemClock.elapsedRealtime();
            this.mHandlerForBatteryInfoBackUp.post(new Runnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BatteryService.this.lambda$logFullBatteryDurationLocked$1(j2);
                }
            });
        }
    }

    /* renamed from: saveFullBatteryDuration, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$logFullBatteryDurationLocked$2(long j) {
        synchronized (this.mLockBatteryInfoBackUp) {
            String str = TAG;
            Slog.d(str, "saveFullBatteryDuration : duration=" + j);
            if (this.mBattInfoManager.isDualAuth()) {
                if (this.mBattInfoManager.isAuthAvailable()) {
                    this.mBattInfoManager.fullStatusUsageData.addValueAndSave(j / 60000);
                }
            } else {
                long readBatteryUsageFromEfsLocked = readBatteryUsageFromEfsLocked("/efs/FactoryApp/batt_full_status_usage") + (j / 60000);
                this.mSavedFullBatteryDuration = readBatteryUsageFromEfsLocked;
                saveBatteryInfo("/efs/FactoryApp/batt_full_status_usage", readBatteryUsageFromEfsLocked);
                if (this.mBatteryType == 10) {
                    saveBatteryInfo("/sys/class/power_supply/sec_auth/batt_full_status_usage", this.mSavedFullBatteryDuration);
                }
                Slog.d(str, "saveFullBatteryDuration : mSavedFullBatteryDuration(min)=" + this.mSavedFullBatteryDuration);
                if (FEATURE_SAVE_BATTERY_CYCLE) {
                    if (this.mBattInfoManager.isDualAuth()) {
                        if (this.mBattInfoManager.isAuthAvailable()) {
                            this.mBattInfoManager.setCycle();
                        }
                    } else {
                        saveBatteryInfo("/sys/class/power_supply/battery/battery_cycle", (this.mSavedBatteryUsage / 100) + " " + (this.mSavedFullBatteryDuration / 720));
                    }
                }
            }
        }
    }

    public final long readBatteryMaxTempFromEfsLocked() {
        long readBatteryInfo = readBatteryInfo("/efs/FactoryApp/max_temp");
        if (readBatteryInfo >= 0) {
            return readBatteryInfo;
        }
        saveBatteryInfo("/efs/FactoryApp/max_temp", -1L);
        return -1L;
    }

    public final long readBatteryMaxCurrentFromEfsLocked() {
        long readBatteryInfo = readBatteryInfo("/efs/FactoryApp/max_current");
        if (readBatteryInfo >= 0) {
            return readBatteryInfo;
        }
        saveBatteryInfo("/efs/FactoryApp/max_current", -1L);
        return -1L;
    }

    public final long initializeSavedAsoc(long j) {
        long j2 = j < 0 ? -1L : 100L;
        Slog.d(TAG, "!@initializeSavedAsoc: " + j2);
        saveBatteryInfo("/efs/FactoryApp/asoc", j2);
        if (this.mBatteryType == 10) {
            saveBatteryInfo("/sys/class/power_supply/sec_auth/asoc", j2);
        }
        return j2;
    }

    public final long readBatteryAsocFromEfsLocked() {
        if (!isFileSupported("/efs/FactoryApp/asoc")) {
            Slog.d(TAG, "!@readBatteryAsocFromEfsLocked: not exist");
            return -1L;
        }
        return readBatteryInfo("/efs/FactoryApp/asoc");
    }

    public final long readBatteryInfo(String str) {
        if (str == null) {
            return -1L;
        }
        String readFromFile = readFromFile(str);
        if (readFromFile == null) {
            Slog.d(TAG, "!@[BatteryInfo] " + str + " : data is null.");
            return -1L;
        }
        try {
            return Long.parseLong(readFromFile);
        } catch (NumberFormatException unused) {
            Slog.e(TAG, "!@[BatteryInfo] " + str + " : data is \"" + readFromFile + "\"");
            return -1L;
        }
    }

    public final String readFromFile(String str) {
        return readFromFile(str, true);
    }

    public final String readFromFile(String str, boolean z) {
        String str2;
        RandomAccessFile randomAccessFile = null;
        String str3 = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(new File(str), "r");
            try {
                str3 = randomAccessFile2.readLine();
                randomAccessFile2.close();
                if (z) {
                    Slog.d(TAG, "!@[BatteryInfo] readFromFile " + str + ": " + str3);
                }
                if (!"/efs/FactoryApp/batt_discharge_level".equals(str) && !"/efs/FactoryApp/batt_full_status_usage".equals(str)) {
                    return str3;
                }
                FileUtils.setPermissions(str, FrameworkStatsLog.HOTWORD_DETECTION_SERVICE_RESTARTED, 1000, 1007);
                return str3;
            } catch (IOException unused) {
                str2 = str3;
                randomAccessFile = randomAccessFile2;
                Slog.e(TAG, "!@[BatteryInfo] IOException in readFromFile:" + str);
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (Exception unused2) {
                        Slog.e(TAG, "!@[BatteryInfo] Exception in readFromFile" + str);
                    }
                }
                return str2;
            }
        } catch (IOException unused3) {
            str2 = null;
        }
    }

    public final int saveBatteryInfo(String str, long j) {
        return writeToFile(str, j);
    }

    public final int saveBatteryInfo(String str, String str2) {
        return writeToFile(str, str2);
    }

    public final int writeToFile(String str, long j) {
        return writeToFile(str, Long.toString(j));
    }

    public final int writeToFile(String str, String str2) {
        RandomAccessFile randomAccessFile;
        char c;
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(new File(str), "rw");
        } catch (IOException unused) {
        }
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.writeBytes(str2 + System.getProperty("line.separator"));
            Slog.d(TAG, "!@[BatteryInfo] writeToFile " + str + ": " + str2);
            randomAccessFile.close();
            switch (str.hashCode()) {
                case -729583085:
                    if (str.equals("/efs/FactoryApp/batt_discharge_level")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 247185424:
                    if (str.equals("/efs/FactoryApp/batt_full_status_usage")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 911734546:
                    if (str.equals("/efs/FactoryApp/asoc")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1200499602:
                    if (str.equals("/efs/FactoryApp/HwParamBattQR")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1597920260:
                    if (str.equals("/efs/FactoryApp/batt_beginning_date")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0 || c == 1 || c == 2) {
                FileUtils.setPermissions(str, FrameworkStatsLog.HOTWORD_DETECTION_SERVICE_RESTARTED, 1000, 1007);
            } else if (c == 3 || c == 4) {
                FileUtils.setPermissions(str, FrameworkStatsLog.HOTWORD_DETECTION_SERVICE_RESTARTED, 1000, 1000);
            }
            return 0;
        } catch (IOException unused2) {
            randomAccessFile2 = randomAccessFile;
            Slog.e(TAG, "!@[BatteryInfo] IOException in writeToFile");
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Exception unused3) {
                    Slog.e(TAG, "!@[BatteryInfo] Exception in writeToFile");
                }
            }
            return -1;
        }
    }

    /* loaded from: classes.dex */
    public class Shell extends ShellCommand {
        public Shell() {
        }

        public int onCommand(String str) {
            return BatteryService.this.onShellCommand(this, str);
        }

        public void onHelp() {
            BatteryService.dumpHelp(getOutPrintWriter());
        }
    }

    public static void dumpHelp(PrintWriter printWriter) {
        printWriter.println("Battery service (battery) commands:");
        printWriter.println("  help");
        printWriter.println("    Print this help text.");
        printWriter.println("  get [-f] [ac|usb|wireless|dock|status|level|temp|present|counter|invalid]");
        printWriter.println("  set [-f] [ac|usb|wireless|dock|status|level|temp|present|counter|invalid] <value>");
        printWriter.println("    Force a battery property value, freezing battery state.");
        printWriter.println("    -f: force a battery change broadcast be sent, prints new sequence.");
        printWriter.println("  unplug [-f]");
        printWriter.println("    Force battery unplugged, freezing battery state.");
        printWriter.println("    -f: force a battery change broadcast be sent, prints new sequence.");
        printWriter.println("  reset [-f]");
        printWriter.println("    Unfreeze battery state, returning to current hardware values.");
        printWriter.println("    -f: force a battery change broadcast be sent, prints new sequence.");
        if (Build.IS_DEBUGGABLE) {
            printWriter.println("  suspend_input");
            printWriter.println("    Suspend charging even if plugged in. ");
        }
    }

    public int parseOptions(Shell shell) {
        int i = 0;
        while (true) {
            String nextOption = shell.getNextOption();
            if (nextOption == null) {
                return i;
            }
            if ("-f".equals(nextOption)) {
                i |= 1;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int onShellCommand(Shell shell, String str) {
        char c;
        char c2;
        char c3;
        boolean z;
        if (str == null) {
            return shell.handleDefaultCommands(str);
        }
        PrintWriter outPrintWriter = shell.getOutPrintWriter();
        switch (str.hashCode()) {
            case -840325209:
                if (str.equals("unplug")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -541966841:
                if (str.equals("suspend_input")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -11780572:
                if (str.equals("sleeptime")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 102230:
                if (str.equals("get")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 113762:
                if (str.equals("set")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 108404047:
                if (str.equals("reset")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1544962441:
                if (str.equals("sleepstatus")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                int parseOptions = parseOptions(shell);
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                unplugBattery((parseOptions & 1) != 0, outPrintWriter);
                return 0;
            case 1:
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                suspendBatteryInput();
                return 0;
            case 2:
            case 6:
                String str2 = TAG_SS;
                Slog.e(str2, "[onShellCommand]cmd:" + str);
                StringBuilder sb = new StringBuilder();
                sb.append("[onShellCommand]Build.TYPE:");
                String str3 = Build.TYPE;
                sb.append(str3);
                Slog.e(str2, sb.toString());
                if ("user".equals(str3)) {
                    Slog.e(str2, "user build cannot use this cmd");
                    outPrintWriter.println("user build cannot use this cmd");
                    return 0;
                }
                if (this.mSleepChargingManager == null) {
                    Slog.e(str2, "Curretly, Not Adaptive Mode");
                    outPrintWriter.println("Curretly, Not Adaptive Mode");
                    return 0;
                }
                if ("sleeptime".equals(str)) {
                    String nextArg = shell.getNextArg();
                    Slog.e(str2, "sleeptime input weekType:" + nextArg);
                    String nextArg2 = shell.getNextArg();
                    Slog.e(str2, "sleeptime input confidence:" + nextArg2);
                    String nextArg3 = shell.getNextArg();
                    Slog.e(str2, "sleeptime input bedTime:" + nextArg3);
                    String nextArg4 = shell.getNextArg();
                    Slog.e(str2, "sleeptime input wakeupTime:" + nextArg4);
                    if (nextArg == null || nextArg.isEmpty() || nextArg2 == null || nextArg2.isEmpty() || nextArg3 == null || nextArg3.isEmpty() || nextArg4 == null || nextArg4.isEmpty()) {
                        Slog.e(str2, "Args Error");
                        outPrintWriter.println("Args Error");
                        return 0;
                    }
                    this.mSleepChargingManager.modifySleepPatternsForTest(nextArg, nextArg2, nextArg3, nextArg4);
                    return 0;
                }
                if (!"sleepstatus".equals(str)) {
                    return 0;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("[" + TAG + "]\n");
                sb2.append("mProtectBatteryMode:" + this.mProtectBatteryMode + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                sb2.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                sb2.append(this.mSleepChargingManager.getInfoAll(true));
                outPrintWriter.println(sb2.toString());
                return 0;
            case 3:
                String nextArg5 = shell.getNextArg();
                if (nextArg5 == null) {
                    outPrintWriter.println("No property specified");
                    return -1;
                }
                switch (nextArg5.hashCode()) {
                    case -1000044642:
                        if (nextArg5.equals("wireless")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -892481550:
                        if (nextArg5.equals("status")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -318277445:
                        if (nextArg5.equals("present")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3106:
                        if (nextArg5.equals("ac")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 116100:
                        if (nextArg5.equals("usb")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3088947:
                        if (nextArg5.equals("dock")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3556308:
                        if (nextArg5.equals("temp")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 102865796:
                        if (nextArg5.equals("level")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 957830652:
                        if (nextArg5.equals("counter")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1959784951:
                        if (nextArg5.equals("invalid")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        outPrintWriter.println(this.mHealthInfo.chargerWirelessOnline);
                        return 0;
                    case 1:
                        outPrintWriter.println(this.mHealthInfo.batteryStatus);
                        return 0;
                    case 2:
                        outPrintWriter.println(this.mHealthInfo.batteryPresent);
                        return 0;
                    case 3:
                        outPrintWriter.println(this.mHealthInfo.chargerAcOnline);
                        return 0;
                    case 4:
                        outPrintWriter.println(this.mHealthInfo.chargerUsbOnline);
                        return 0;
                    case 5:
                        outPrintWriter.println(this.mHealthInfo.chargerDockOnline);
                        return 0;
                    case 6:
                        outPrintWriter.println(this.mHealthInfo.batteryTemperatureTenthsCelsius);
                        return 0;
                    case 7:
                        outPrintWriter.println(this.mHealthInfo.batteryLevel);
                        return 0;
                    case '\b':
                        outPrintWriter.println(this.mHealthInfo.batteryChargeCounterUah);
                        return 0;
                    case '\t':
                        outPrintWriter.println(this.mInvalidCharger);
                        return 0;
                    default:
                        outPrintWriter.println("Unknown get option: " + nextArg5);
                        return 0;
                }
            case 4:
                int parseOptions2 = parseOptions(shell);
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                String nextArg6 = shell.getNextArg();
                if (nextArg6 == null) {
                    outPrintWriter.println("No property specified");
                    return -1;
                }
                String nextArg7 = shell.getNextArg();
                if (nextArg7 == null) {
                    outPrintWriter.println("No value specified");
                    return -1;
                }
                try {
                    if (!this.mUpdatesStopped) {
                        Utils.copySehV1Battery(this.mLastSehHealthInfo, this.mSehHealthInfo);
                    }
                    switch (nextArg6.hashCode()) {
                        case -1000044642:
                            if (nextArg6.equals("wireless")) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -892481550:
                            if (nextArg6.equals("status")) {
                                c3 = 5;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -318277445:
                            if (nextArg6.equals("present")) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3106:
                            if (nextArg6.equals("ac")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 116100:
                            if (nextArg6.equals("usb")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3088947:
                            if (nextArg6.equals("dock")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3556308:
                            if (nextArg6.equals("temp")) {
                                c3 = '\b';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 102865796:
                            if (nextArg6.equals("level")) {
                                c3 = 6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 957830652:
                            if (nextArg6.equals("counter")) {
                                c3 = 7;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 1959784951:
                            if (nextArg6.equals("invalid")) {
                                c3 = '\t';
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            this.mHealthInfo.batteryPresent = Integer.parseInt(nextArg7) != 0;
                            z = true;
                            break;
                        case 1:
                            this.mHealthInfo.chargerAcOnline = Integer.parseInt(nextArg7) != 0;
                            z = true;
                            break;
                        case 2:
                            this.mHealthInfo.chargerUsbOnline = Integer.parseInt(nextArg7) != 0;
                            z = true;
                            break;
                        case 3:
                            this.mHealthInfo.chargerWirelessOnline = Integer.parseInt(nextArg7) != 0;
                            z = true;
                            break;
                        case 4:
                            this.mHealthInfo.chargerDockOnline = Integer.parseInt(nextArg7) != 0;
                            z = true;
                            break;
                        case 5:
                            this.mHealthInfo.batteryStatus = Integer.parseInt(nextArg7);
                            z = true;
                            break;
                        case 6:
                            this.mHealthInfo.batteryLevel = Integer.parseInt(nextArg7);
                            z = true;
                            break;
                        case 7:
                            this.mHealthInfo.batteryChargeCounterUah = Integer.parseInt(nextArg7);
                            z = true;
                            break;
                        case '\b':
                            this.mHealthInfo.batteryTemperatureTenthsCelsius = Integer.parseInt(nextArg7);
                            z = true;
                            break;
                        case '\t':
                            this.mInvalidCharger = Integer.parseInt(nextArg7);
                            z = true;
                            break;
                        default:
                            outPrintWriter.println("Unknown set option: " + nextArg6);
                            z = false;
                            break;
                    }
                    if (!z) {
                        return 0;
                    }
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        this.mUpdatesStopped = true;
                        lambda$unplugBattery$5((parseOptions2 & 1) != 0, outPrintWriter);
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return 0;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th;
                    }
                } catch (NumberFormatException unused) {
                    outPrintWriter.println("Bad value: " + nextArg7);
                    return -1;
                }
            case 5:
                int parseOptions3 = parseOptions(shell);
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                resetBattery((parseOptions3 & 1) != 0, outPrintWriter);
                return 0;
            default:
                return shell.handleDefaultCommands(str);
        }
    }

    public final void setChargerAcOnline(boolean z, final boolean z2) {
        if (!this.mUpdatesStopped) {
            Utils.copySehV1Battery(this.mLastSehHealthInfo, this.mSehHealthInfo);
        }
        this.mHealthInfo.chargerAcOnline = z;
        this.mUpdatesStopped = true;
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda8
            public final void runOrThrow() {
                BatteryService.this.lambda$setChargerAcOnline$3(z2);
            }
        });
    }

    public final void setBatteryLevel(int i, final boolean z) {
        if (!this.mUpdatesStopped) {
            Utils.copySehV1Battery(this.mLastSehHealthInfo, this.mSehHealthInfo);
        }
        this.mHealthInfo.batteryLevel = i;
        this.mUpdatesStopped = true;
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda7
            public final void runOrThrow() {
                BatteryService.this.lambda$setBatteryLevel$4(z);
            }
        });
    }

    public final void unplugBattery(final boolean z, final PrintWriter printWriter) {
        if (!this.mUpdatesStopped) {
            Utils.copySehV1Battery(this.mLastSehHealthInfo, this.mSehHealthInfo);
        }
        HealthInfo healthInfo = this.mHealthInfo;
        healthInfo.chargerAcOnline = false;
        healthInfo.chargerUsbOnline = false;
        healthInfo.chargerWirelessOnline = false;
        healthInfo.chargerDockOnline = false;
        this.mUpdatesStopped = true;
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda6
            public final void runOrThrow() {
                BatteryService.this.lambda$unplugBattery$5(z, printWriter);
            }
        });
    }

    public final void resetBattery(final boolean z, final PrintWriter printWriter) {
        if (this.mUpdatesStopped) {
            this.mUpdatesStopped = false;
            Utils.copySehV1Battery(this.mSehHealthInfo, this.mLastSehHealthInfo);
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.BatteryService$$ExternalSyntheticLambda4
                public final void runOrThrow() {
                    BatteryService.this.lambda$resetBattery$6(z, printWriter);
                }
            });
        }
        if (this.mBatteryInputSuspended) {
            PowerProperties.battery_input_suspended(Boolean.FALSE);
            this.mBatteryInputSuspended = false;
        }
    }

    public final void suspendBatteryInput() {
        if (!Build.IS_DEBUGGABLE) {
            throw new SecurityException("battery suspend_input is only supported on debuggable builds");
        }
        PowerProperties.battery_input_suspended(Boolean.TRUE);
        this.mBatteryInputSuspended = true;
    }

    /* renamed from: processValuesLocked, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$unplugBattery$5(boolean z, PrintWriter printWriter) {
        lambda$setChargerAcOnline$3(z);
        if (printWriter == null || !z) {
            return;
        }
        printWriter.println(this.mSequence);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0461, code lost:
    
        if ("-a".equals(r14[0]) == false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dumpInternal(java.io.FileDescriptor r12, java.io.PrintWriter r13, java.lang.String[] r14) {
        /*
            Method dump skipped, instructions count: 1430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BatteryService.dumpInternal(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    public final void dumpProto(FileDescriptor fileDescriptor) {
        int i;
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(fileDescriptor);
        synchronized (this.mLock) {
            protoOutputStream.write(1133871366145L, this.mUpdatesStopped);
            HealthInfo healthInfo = this.mHealthInfo;
            if (healthInfo.chargerAcOnline) {
                i = 1;
            } else if (healthInfo.chargerUsbOnline) {
                i = 2;
            } else if (healthInfo.chargerWirelessOnline) {
                i = 4;
            } else {
                i = healthInfo.chargerDockOnline ? 8 : 0;
            }
            protoOutputStream.write(1159641169922L, i);
            protoOutputStream.write(1120986464259L, this.mHealthInfo.maxChargingCurrentMicroamps);
            protoOutputStream.write(1120986464260L, this.mHealthInfo.maxChargingVoltageMicrovolts);
            protoOutputStream.write(1120986464261L, this.mHealthInfo.batteryChargeCounterUah);
            protoOutputStream.write(1159641169926L, this.mHealthInfo.batteryStatus);
            protoOutputStream.write(1159641169927L, this.mHealthInfo.batteryHealth);
            protoOutputStream.write(1133871366152L, this.mHealthInfo.batteryPresent);
            protoOutputStream.write(1120986464265L, this.mHealthInfo.batteryLevel);
            protoOutputStream.write(1120986464266L, 100);
            protoOutputStream.write(1120986464267L, this.mHealthInfo.batteryVoltageMillivolts);
            protoOutputStream.write(1120986464268L, this.mHealthInfo.batteryTemperatureTenthsCelsius);
            protoOutputStream.write(1138166333453L, this.mHealthInfo.batteryTechnology);
        }
        protoOutputStream.flush();
    }

    public static void traceBegin(String str) {
        Trace.traceBegin(524288L, str);
    }

    public static void traceEnd() {
        Trace.traceEnd(524288L);
    }

    /* loaded from: classes.dex */
    public final class Led {
        public final int mBatteryFullARGB;
        public final int mBatteryLedOff;
        public final int mBatteryLedOn;
        public final LogicalLight mBatteryLight;
        public final int mBatteryLowARGB;
        public final int mBatteryLowBehavior;
        public final int mBatteryMediumARGB;
        public int mLedStatus = 0;

        public Led(Context context, LightsManager lightsManager) {
            this.mBatteryLight = lightsManager.getLight(3);
            this.mBatteryLowARGB = context.getResources().getInteger(R.integer.leanback_setup_translation_content_cliff_v4);
            this.mBatteryMediumARGB = context.getResources().getInteger(R.integer.leanback_setup_translation_forward_in_content_delay);
            this.mBatteryFullARGB = context.getResources().getInteger(R.integer.leanback_setup_base_animation_duration);
            this.mBatteryLedOn = context.getResources().getInteger(R.integer.leanback_setup_translation_backward_out_content_duration);
            this.mBatteryLedOff = context.getResources().getInteger(R.integer.leanback_setup_translation_backward_out_content_delay);
            BatteryService.this.mBatteryNearlyFullLevel = context.getResources().getInteger(R.integer.leanback_setup_translation_forward_in_content_duration);
            this.mBatteryLowBehavior = context.getResources().getInteger(R.integer.leanback_setup_translation_content_resting_point_v4);
        }

        public void updateLightsLocked() {
            if (this.mBatteryLight == null || !BatteryService.this.mBootCompleted) {
                return;
            }
            int i = BatteryService.this.mHealthInfo.batteryLevel;
            int i2 = BatteryService.this.mHealthInfo.batteryStatus;
            int i3 = BatteryService.this.mHealthInfo.batteryHealth;
            if (4 == i2 && ((3 == i3 || 6 == i3 || 7 == i3 || 8 == i3) && BatteryService.this.mLedChargingSettingsEnable)) {
                if (11 != this.mLedStatus) {
                    this.mBatteryLight.setFlashing(0, 11, 0, 0);
                    this.mLedStatus = 11;
                    Slog.d(BatteryService.TAG, "turn on LED for not charging");
                    return;
                }
                Slog.d(BatteryService.TAG, "stay LED for not charging");
                return;
            }
            if (2 == i2 && !BatteryService.this.mScreenOn && BatteryService.this.mLedChargingSettingsEnable) {
                if (10 != this.mLedStatus) {
                    this.mBatteryLight.setFlashing(0, 10, 0, 0);
                    this.mLedStatus = 10;
                    Slog.d(BatteryService.TAG, "turn on LED for charging");
                    return;
                }
                Slog.d(BatteryService.TAG, "stay LED for charging");
                return;
            }
            if (5 == i2 && !BatteryService.this.mScreenOn && BatteryService.this.mLedChargingSettingsEnable) {
                if (14 != this.mLedStatus) {
                    this.mBatteryLight.setFlashing(0, 14, 0, 0);
                    this.mLedStatus = 14;
                    Slog.d(BatteryService.TAG, "turn on LED for fully charged");
                    return;
                }
                Slog.d(BatteryService.TAG, "stay LED for fully charged");
                return;
            }
            if (i <= BatteryService.this.mLowBatteryWarningLevel && !BatteryService.this.mScreenOn && BatteryService.this.mLedLowBatterySettingsEnable) {
                if (13 != this.mLedStatus) {
                    this.mBatteryLight.setFlashing(0, 13, 0, 0);
                    this.mLedStatus = 13;
                    Slog.d(BatteryService.TAG, "turn on LED for low battery");
                    return;
                }
                Slog.d(BatteryService.TAG, "stay LED for low battery");
                return;
            }
            if (this.mLedStatus != 0) {
                this.mBatteryLight.turnOff();
                this.mLedStatus = 0;
                Slog.d(BatteryService.TAG, "turn off LED");
            }
        }
    }

    /* loaded from: classes.dex */
    public final class BinderService extends Binder {
        public BinderService() {
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (DumpUtils.checkDumpPermission(BatteryService.this.mContext, BatteryService.TAG, printWriter)) {
                if (strArr.length > 0 && "--proto".equals(strArr[0])) {
                    BatteryService.this.dumpProto(fileDescriptor);
                } else {
                    BatteryService.this.dumpInternal(fileDescriptor, printWriter, strArr);
                }
            }
        }

        public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
            new Shell().exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
        }
    }

    /* loaded from: classes.dex */
    public final class BatteryPropertiesRegistrar extends IBatteryPropertiesRegistrar.Stub {
        public BatteryPropertiesRegistrar() {
        }

        public int getProperty(int i, BatteryProperty batteryProperty) {
            switch (i) {
                case 7:
                case 8:
                case 9:
                case 10:
                    BatteryService.this.mContext.enforceCallingPermission("android.permission.BATTERY_STATS", null);
                    break;
            }
            return BatteryService.this.mHealthServiceWrapper.getProperty(i, batteryProperty);
        }

        public void scheduleUpdate() {
            BatteryService.this.mHealthServiceWrapper.scheduleUpdate();
        }
    }

    /* loaded from: classes.dex */
    public final class LocalService extends BatteryManagerInternal {
        public LocalService() {
        }

        public boolean isPowered(int i) {
            boolean isPoweredLocked;
            synchronized (BatteryService.this.mLock) {
                isPoweredLocked = BatteryService.this.isPoweredLocked(i);
            }
            return isPoweredLocked;
        }

        public int getPlugType() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mPlugType;
            }
            return i;
        }

        public int getBatteryLevel() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryLevel;
            }
            return i;
        }

        public int getBatteryChargeCounter() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryChargeCounterUah;
            }
            return i;
        }

        public int getBatteryFullCharge() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryFullChargeUah;
            }
            return i;
        }

        public int getBatteryHealth() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryHealth;
            }
            return i;
        }

        public boolean getBatteryLevelLow() {
            boolean z;
            synchronized (BatteryService.this.mLock) {
                z = BatteryService.this.mBatteryLevelLow;
            }
            return z;
        }

        public int getInvalidCharger() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mInvalidCharger;
            }
            return i;
        }

        public void setChargerAcOnline(boolean z, boolean z2) {
            BatteryService.this.setChargerAcOnline(z, z2);
        }

        public void setBatteryLevel(int i, boolean z) {
            BatteryService.this.setBatteryLevel(i, z);
        }

        public void unplugBattery(boolean z) {
            BatteryService.this.unplugBattery(z, null);
        }

        public void resetBattery(boolean z) {
            BatteryService.this.resetBattery(z, null);
        }

        public void suspendBatteryInput() {
            BatteryService.this.suspendBatteryInput();
        }

        public boolean getBatteryLevelCritical() {
            boolean z;
            synchronized (BatteryService.this.mLock) {
                z = BatteryService.this.mBatteryLevelCritical;
            }
            return z;
        }

        public void setWirelessPowerSharingExternelEvent(int i, int i2) {
            Slog.i(BatteryService.TAG, "setWirelessPowerSharingExternelEvent packageNum: " + i + " value: " + i2);
            BatteryService.this.setWirelessPowerSharingExternelEventInternal(i, i2);
        }

        public int getBatteryOnline() {
            return BatteryService.this.mSehHealthInfo.batteryOnline;
        }

        public int getBatteryLevelRaw() {
            return BattUtils.readNodeAsInt("/sys/class/power_supply/battery/batt_read_raw_soc");
        }
    }
}
