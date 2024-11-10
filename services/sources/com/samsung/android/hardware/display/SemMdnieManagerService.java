package com.samsung.android.hardware.display;

import android.R;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.FactoryTest;
import android.os.Handler;
import android.os.IInstalld;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Slog;
import android.view.Display;
import com.samsung.android.displaysolution.SemDisplaySolutionManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.hardware.display.ISemMdnieManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public class SemMdnieManagerService extends ISemMdnieManager.Stub {
    public static final String COUNTRYISO_CODE;
    public static final boolean isBangladeshCountryCode;
    public static final boolean isIndiaCountryCode;
    public static final boolean isMaldivesCountryCode;
    public static final boolean isNepalCountryCode;
    public static final boolean isSrilankaCountryCode;
    public final int FACTORY_DEFAULT_INDEX_VALUE;
    public final int FACTORY_WHITE_INDEX_SIZE;
    public final String FP_FEATURE_SENSOR_IS_OPTICAL;
    public final String MDNIE_SCREEN_ADJUSTMENT_MODE;
    public final int MDNIE_SUPPORT_FUNCTION;
    public int NIGHT_MODE_MAX_INDEX;
    public final boolean NIGHT_MODE_NEW_SYSFS_USE;
    public final int PRESET_WHITE_INDEX_SIZE;
    public final int WEAKNESS_SOLUTION_FUNCTION;
    public AfterimageCompensationService afterimageCompensation;
    public boolean mAdaptiveBlueLightFilterSupported;
    public boolean mAlwaysOnDisplayEnabled;
    public boolean mAutoModeEnabled;
    public int mBlueFilterIndex;
    public boolean mBlueLightFilterEnabled;
    public boolean mBrowserScenarioEnabled;
    public boolean mColorBlindEnabled;
    public boolean mColorVision;
    public int mColorVisionColor;
    public int mColorVisionLevel;
    public int mContentMode;
    public final Context mContext;
    public boolean mCurtainModeIsRunning;
    public int mCustomScrBIndex;
    public int mCustomScrGIndex;
    public int mCustomScrRIndex;
    public DisplayManager.DisplayListener mDisplayListener;
    public DisplayManager mDisplayManager;
    public boolean mDisplayOn;
    public int mDisplayState;
    public int mDisplayStatePrev;
    public boolean mEbookScenarioEnabled;
    public boolean mEnvironmentAdaptiveDisplayEnabled;
    public boolean mEnvironmentAdaptiveDisplaySupported;
    public int mFactoryScrBIndex;
    public int mFactoryScrBIndexSub;
    public int mFactoryScrGIndex;
    public int mFactoryScrGIndexSub;
    public int mFactoryScrIndex;
    public int mFactoryScrIndexSub;
    public int mFactoryScrRIndex;
    public int mFactoryScrRIndexSub;
    public boolean mMdnieCustomized;
    public boolean mMdnieFactorySupported;
    public boolean mMdnieWhiteRGBSupported;
    public boolean mMdnieWorkingCondition;
    public boolean mNegativeColorEnabled;
    public boolean mNightDimModeEnabled;
    public boolean mNightDimSupported;
    public boolean mNightMode;
    public boolean mNightModeBlock;
    public int mNightModeIndex;
    public int[][][] mPresetAdjustWhiteRGB;
    public int mPrevScreenModeForReadingMode;
    public boolean mReadingModeEnabled;
    public boolean mScreenCurtainEnabled;
    public int mScreenMode;
    public int mScreenModeForReadingMode;
    public SettingsObserver mSettingsObserver;
    public boolean mSupportBlueFilter;
    public boolean mSupportColorAdjustment;
    public boolean mSupportContentMode;
    public boolean mSupportContentModeGame;
    public boolean mSupportContentModeSWA;
    public boolean mSupportContentModeVideoEnhance;
    public boolean mSupportGrayscale;
    public boolean mSupportHDR;
    public boolean mSupportHMT;
    public boolean mSupportLightNotificationMode;
    public boolean mSupportNegative;
    public boolean mSupportScreeenReadingMode;
    public boolean mSupportScreenCurtain;
    public boolean mSupportScreenMode;
    public boolean mUseAfterimageCompensationServiceConfig;
    public int mVividnessIndex;
    public boolean mWorkBlueFilter;
    public final boolean DEBUG = "eng".equals(Build.TYPE);
    public final String SCREEN_MODE_AUTOMATIC_SETTING = "screen_mode_automatic_setting";
    public final String SCREEN_MODE_SETTING = "screen_mode_setting";
    public final String AOD_SHOW_STATE_SETTINGS = "aod_show_state";
    public final String SEC_DISPLAY_TEMPERATURE_R = "sec_display_temperature_red";
    public final String SEC_DISPLAY_TEMPERATURE_G = "sec_display_temperature_green";
    public final String SEC_DISPLAY_TEMPERATURE_B = "sec_display_temperature_blue";
    public final String SEC_DISPLAY_PRESET_INDEX = "sec_display_preset_index";
    public final String ENVIRONMENT_ADAPTIVE_DISPLAY = "setting_sead_enable";
    public final String VIVIDNESS_INTENSITY = "vividness_intensity";
    public final String SYSFS_MDNIE_VISION_MODE = "/sys/class/mdnie/mdnie/accessibility";
    public final String SYSFS_MDNIE_SCREEN_MODE = "/sys/class/mdnie/mdnie/mode";
    public final String SYSFS_MDNIE_CONTENT_MODE = "/sys/class/mdnie/mdnie/scenario";
    public final String SYSFS_MDNIE_VIVIDNESS_MODE = "/sys/class/mdnie/mdnie/vividness";
    public final String SYSFS_MDNIE_NEGATIVE = "/sys/class/mdnie/mdnie/negative";
    public final String SYSFS_MDNIE_OUTDOOR = "/sys/class/mdnie/mdnie/outdoor";
    public final String SYSFS_MDNIE_PLAYSPEED = "/sys/class/mdnie/mdnie/playspeed";
    public final String SYSFS_MDNIE_NIGHT_MODE = "/sys/class/mdnie/mdnie/night_mode";
    public final String SYSFS_MDNIE_ADAPTIVE_MODE = "/sys/class/mdnie/mdnie/adaptive_mode";
    public final String SYSFS_MDNIE_COLOR_LENS = "/sys/class/mdnie/mdnie/color_lens";
    public final String SYSFS_MDNIE_WHITE_RGB = "/sys/class/mdnie/mdnie/whiteRGB";
    public final String SYSFS_MDNIE_LIGHT_NOTIFICATION = "/sys/class/mdnie/mdnie/light_notification";
    public final String SYSFS_MDNIE_VISION_MODE_SUB = "/sys/class/mdnie/mdnie1/accessibility";
    public final String SYSFS_MDNIE_SCREEN_MODE_SUB = "/sys/class/mdnie/mdnie1/mode";
    public final String SYSFS_MDNIE_CONTENT_MODE_SUB = "/sys/class/mdnie/mdnie1/scenario";
    public final String SYSFS_MDNIE_VIVIDNESS_MODE_SUB = "/sys/class/mdnie/mdnie1/vividness";
    public final String SYSFS_MDNIE_NEGATIVE_SUB = "/sys/class/mdnie/mdnie1/negative";
    public final String SYSFS_MDNIE_OUTDOOR_SUB = "/sys/class/mdnie/mdnie1/outdoor";
    public final String SYSFS_MDNIE_PLAYSPEED_SUB = "/sys/class/mdnie/mdnie1/playspeed";
    public final String SYSFS_MDNIE_NIGHT_MODE_SUB = "/sys/class/mdnie/mdnie1/night_mode";
    public final String SYSFS_MDNIE_ADAPTIVE_MODE_SUB = "/sys/class/mdnie/mdnie1/adaptive_mode";
    public final String SYSFS_MDNIE_COLOR_LENS_SUB = "/sys/class/mdnie/mdnie1/color_lens";
    public final String SYSFS_MDNIE_WHITE_RGB_SUB = "/sys/class/mdnie/mdnie1/whiteRGB";
    public final String SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB = "/sys/class/mdnie/mdnie1/light_notification";
    public final String SYSFS_MDNIE_BYPASS_NODE = "/sys/class/mdnie/mdnie/bypass";
    public final String SYSFS_MDNIE_BYPASS_NODE_SUB = "/sys/class/mdnie/mdnie1/bypass";
    public final String SYSFS_MDNIE_NIGHT_READING_MODE = "/sys/class/lcd/panel/reading_mode";
    public final String SYSFS_MDNIE_FACTORY_MDNIE = "/efs/FactoryApp/mdnie";
    public final String SYSFS_MDNIE_FACTORY_MDNIE_SUB = "/efs/FactoryApp/mdnie1";
    public final int LCD_SRGB_MODE = 3;
    public final int COLOR_LENS_MAX_COLOR = 12;
    public final int COLOR_LENS_MAX_LEVEL = 9;
    public final Object mLock = new Object();

    static {
        String str = SystemProperties.get("ro.csc.countryiso_code");
        COUNTRYISO_CODE = str;
        isIndiaCountryCode = "IN".equals(str);
        isBangladeshCountryCode = "BD".equals(str);
        isNepalCountryCode = "NP".equals(str);
        isSrilankaCountryCode = "LK".equals(str);
        isMaldivesCountryCode = "MV".equals(str);
    }

    public SemMdnieManagerService(Context context) {
        int i;
        this.afterimageCompensation = null;
        int intValue = Integer.valueOf("65303").intValue();
        this.MDNIE_SUPPORT_FUNCTION = intValue;
        this.WEAKNESS_SOLUTION_FUNCTION = Integer.valueOf("3").intValue();
        this.NIGHT_MODE_NEW_SYSFS_USE = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_FOR_TFT");
        this.MDNIE_SCREEN_ADJUSTMENT_MODE = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_SCREEN_ADJUSTMENT_MODE");
        this.FP_FEATURE_SENSOR_IS_OPTICAL = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES");
        this.FACTORY_WHITE_INDEX_SIZE = 7;
        this.FACTORY_DEFAULT_INDEX_VALUE = 0;
        this.PRESET_WHITE_INDEX_SIZE = 5;
        this.mSupportContentMode = false;
        this.mSupportContentModeGame = false;
        this.mSupportContentModeVideoEnhance = false;
        this.mSupportContentModeSWA = false;
        this.mSupportScreenMode = false;
        this.mSupportScreeenReadingMode = false;
        this.mSupportNegative = false;
        this.mSupportGrayscale = false;
        this.mSupportScreenCurtain = false;
        this.mSupportColorAdjustment = false;
        this.mSupportBlueFilter = false;
        this.mSupportHMT = false;
        this.mSupportHDR = false;
        this.mSupportLightNotificationMode = false;
        this.mWorkBlueFilter = true;
        this.mNightModeBlock = true;
        this.mBlueFilterIndex = 0;
        this.mDisplayStatePrev = -1;
        this.mDisplayState = 0;
        this.mMdnieCustomized = false;
        this.mNightMode = false;
        this.mNightModeIndex = 0;
        this.mColorVision = false;
        this.mColorVisionColor = 0;
        this.mColorVisionLevel = 0;
        this.mVividnessIndex = 0;
        this.mMdnieFactorySupported = false;
        this.NIGHT_MODE_MAX_INDEX = 0;
        this.mFactoryScrIndex = 0;
        this.mFactoryScrIndexSub = 0;
        this.mFactoryScrRIndex = 0;
        this.mFactoryScrGIndex = 0;
        this.mFactoryScrBIndex = 0;
        this.mFactoryScrRIndexSub = 0;
        this.mFactoryScrGIndexSub = 0;
        this.mFactoryScrBIndexSub = 0;
        this.mCustomScrRIndex = 0;
        this.mCustomScrGIndex = 0;
        this.mCustomScrBIndex = 0;
        this.mAdaptiveBlueLightFilterSupported = false;
        this.mNightDimSupported = false;
        this.mBlueLightFilterEnabled = false;
        this.mNightDimModeEnabled = false;
        this.mAlwaysOnDisplayEnabled = false;
        this.mMdnieWorkingCondition = false;
        this.mDisplayOn = false;
        this.mScreenCurtainEnabled = false;
        this.mNegativeColorEnabled = false;
        this.mColorBlindEnabled = false;
        this.mAutoModeEnabled = false;
        this.mReadingModeEnabled = false;
        this.mEbookScenarioEnabled = false;
        this.mBrowserScenarioEnabled = false;
        this.mMdnieWhiteRGBSupported = false;
        this.mEnvironmentAdaptiveDisplayEnabled = false;
        this.mEnvironmentAdaptiveDisplaySupported = false;
        this.mUseAfterimageCompensationServiceConfig = false;
        this.mPresetAdjustWhiteRGB = new int[][][]{new int[][]{new int[]{0, -6, -20}, new int[]{0, -3, -10}, new int[]{0, 0, 0}, new int[]{-7, -5, 0}, new int[]{-14, -10, 0}}, new int[][]{new int[]{0, -3, -20}, new int[]{0, 0, -10}, new int[]{-3, 0, -3}, new int[]{-7, -2, 0}, new int[]{-14, -7, 0}}, new int[][]{new int[]{0, 0, -20}, new int[]{-3, 0, -13}, new int[]{-6, 0, -6}, new int[]{-8, 0, -1}, new int[]{-14, -4, 0}}, new int[][]{new int[]{-3, 0, -23}, new int[]{-6, 0, -16}, new int[]{-9, 0, -9}, new int[]{-11, 0, -4}, new int[]{-14, -1, 0}}, new int[][]{new int[]{-6, 0, -26}, new int[]{-9, 0, -19}, new int[]{-12, 0, -12}, new int[]{-14, 0, -7}, new int[]{-16, 0, -2}}};
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: com.samsung.android.hardware.display.SemMdnieManagerService.1
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int i2) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int i2) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int i2) {
                Display display;
                boolean isBlueLightFilterScheduledTime;
                ContentResolver contentResolver = SemMdnieManagerService.this.mContext.getContentResolver();
                if (SemMdnieManagerService.this.mDisplayManager == null || SemMdnieManagerService.this.FP_FEATURE_SENSOR_IS_OPTICAL.contains("optical") || (display = SemMdnieManagerService.this.mDisplayManager.getDisplay(i2)) == null || i2 != 0) {
                    return;
                }
                SemMdnieManagerService.this.mDisplayState = display.getState();
                if (SemMdnieManagerService.this.mDisplayState == 3 || SemMdnieManagerService.this.mDisplayState == 4 || SemMdnieManagerService.this.mDisplayState == 1) {
                    SemMdnieManagerService.this.mDisplayState = 1;
                } else {
                    SemMdnieManagerService.this.mDisplayState = 2;
                }
                if (SemMdnieManagerService.this.mDisplayState != SemMdnieManagerService.this.mDisplayStatePrev) {
                    SemMdnieManagerService semMdnieManagerService = SemMdnieManagerService.this;
                    semMdnieManagerService.mDisplayStatePrev = semMdnieManagerService.mDisplayState;
                    Slog.i("SemMdnieManagerService", "DisplayListener onDisplayChanged. mAlwaysOnDisplayEnabled : " + SemMdnieManagerService.this.mAlwaysOnDisplayEnabled + " , mDisplayOn : " + SemMdnieManagerService.this.mDisplayOn + " , mDisplayState : " + SemMdnieManagerService.this.mDisplayState + " , mWorkBlueFilter : " + SemMdnieManagerService.this.mWorkBlueFilter + " , mNightModeBlock : " + SemMdnieManagerService.this.mNightModeBlock);
                    SemDisplaySolutionManager semDisplaySolutionManager = (SemDisplaySolutionManager) SemMdnieManagerService.this.mContext.getSystemService("DisplaySolution");
                    if (semDisplaySolutionManager == null) {
                        Slog.d("SemMdnieManagerService", "SemDisplaySolutionManager is null");
                        isBlueLightFilterScheduledTime = true;
                    } else {
                        isBlueLightFilterScheduledTime = semDisplaySolutionManager.isBlueLightFilterScheduledTime();
                    }
                    if (!SemMdnieManagerService.this.mNightMode && isBlueLightFilterScheduledTime && Settings.System.getIntForUser(contentResolver, "blue_light_filter", 0, -2) == 1 && !SemMdnieManagerService.this.mNightModeBlock) {
                        SemMdnieManagerService.this.mNightMode = true;
                    }
                    if (SemMdnieManagerService.this.mDisplayState == 1) {
                        SemMdnieManagerService semMdnieManagerService2 = SemMdnieManagerService.this;
                        semMdnieManagerService2.setNightDimOffMode(semMdnieManagerService2.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                    } else {
                        SemMdnieManagerService semMdnieManagerService3 = SemMdnieManagerService.this;
                        semMdnieManagerService3.setNightMode(semMdnieManagerService3.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                    }
                }
            }
        };
        this.mCurtainModeIsRunning = false;
        this.mContext = context;
        ContentResolver contentResolver = context.getContentResolver();
        this.mSettingsObserver = new SettingsObserver();
        this.mSupportContentMode = (intValue & 1) != 0;
        this.mSupportContentModeGame = (intValue & 2) != 0;
        this.mSupportContentModeVideoEnhance = (intValue & 4) != 0;
        this.mSupportContentModeSWA = (intValue & 8) != 0;
        this.mSupportScreenMode = (intValue & 16) != 0;
        this.mSupportScreeenReadingMode = (intValue & 32) != 0;
        this.mSupportNegative = (intValue & 256) != 0;
        this.mSupportGrayscale = (intValue & 512) != 0;
        this.mSupportScreenCurtain = (intValue & 1024) != 0;
        this.mSupportColorAdjustment = (intValue & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) != 0;
        this.mSupportBlueFilter = (intValue & IInstalld.FLAG_USE_QUOTA) != 0;
        this.mSupportHMT = (intValue & IInstalld.FLAG_FORCE) != 0;
        this.mSupportHDR = (intValue & 16384) != 0;
        this.mSupportLightNotificationMode = (32768 & intValue) != 0;
        this.mMdnieWhiteRGBSupported = true;
        this.mEnvironmentAdaptiveDisplaySupported = false;
        contentResolver.registerContentObserver(Settings.System.getUriFor("screen_mode_setting"), false, this.mSettingsObserver, -2);
        contentResolver.registerContentObserver(Settings.System.getUriFor("screen_mode_automatic_setting"), false, this.mSettingsObserver, -2);
        contentResolver.registerContentObserver(Settings.System.getUriFor("sec_display_temperature_red"), false, this.mSettingsObserver, -2);
        contentResolver.registerContentObserver(Settings.System.getUriFor("sec_display_temperature_green"), false, this.mSettingsObserver, -2);
        contentResolver.registerContentObserver(Settings.System.getUriFor("sec_display_temperature_blue"), false, this.mSettingsObserver, -2);
        contentResolver.registerContentObserver(Settings.System.getUriFor("sec_display_preset_index"), false, this.mSettingsObserver, 0);
        contentResolver.registerContentObserver(Settings.System.getUriFor("vividness_intensity"), false, this.mSettingsObserver, -1);
        contentResolver.registerContentObserver(Settings.System.getUriFor("blue_light_filter_night_dim"), false, this.mSettingsObserver, -1);
        contentResolver.registerContentObserver(Settings.System.getUriFor("aod_show_state"), false, this.mSettingsObserver, -1);
        contentResolver.registerContentObserver(Settings.System.getUriFor("ead_enabled"), false, this.mSettingsObserver, -1);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        context.registerReceiver(new ScreenWatchingReceiver(), intentFilter);
        if (new File("/efs/FactoryApp/mdnie").exists()) {
            this.mMdnieFactorySupported = true;
        }
        if (this.mMdnieFactorySupported & this.mMdnieWhiteRGBSupported) {
            setFactoryWhiteRGB();
        }
        Slog.d("SemMdnieManagerService", "SYSFS_MDNIE_FACTORY_MDNIE : " + this.mMdnieFactorySupported + ", mMdnieWhiteRGBSupported - " + this.mMdnieWhiteRGBSupported + ", S_EAD - " + this.mEnvironmentAdaptiveDisplaySupported);
        this.mAutoModeEnabled = Settings.System.getInt(context.getContentResolver(), "screen_mode_automatic_setting", 1) == 1;
        this.mScreenMode = Settings.System.getIntForUser(context.getContentResolver(), "screen_mode_setting", 0, -2);
        if (this.mAutoModeEnabled) {
            this.mScreenMode = 4;
        }
        if (this.mScreenMode == 3) {
            this.mScreenMode = 0;
        }
        this.mContentMode = 0;
        this.mDisplayOn = true;
        this.mMdnieWorkingCondition = true;
        setScreenMode(this.mScreenMode);
        setContentMode(this.mContentMode);
        if (SemFloatingFeature.getInstance().getInt("SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE", 0) > 0) {
            this.mAdaptiveBlueLightFilterSupported = true;
        }
        if (SemFloatingFeature.getInstance().getInt("SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM", 0) > 0) {
            this.mNightDimSupported = true;
        }
        boolean z = this.mAdaptiveBlueLightFilterSupported;
        if (z && this.mNightDimSupported) {
            this.NIGHT_MODE_MAX_INDEX = 306;
        } else if (z && !this.mNightDimSupported) {
            this.NIGHT_MODE_MAX_INDEX = 102;
        } else {
            this.NIGHT_MODE_MAX_INDEX = 11;
        }
        Slog.d("SemMdnieManagerService", "SemMdnieMdnieManager Night mode Index : " + this.NIGHT_MODE_MAX_INDEX);
        this.mUseAfterimageCompensationServiceConfig = context.getResources().getBoolean(R.bool.config_allowSeamlessRotationDespiteNavBarMoving);
        if (FactoryTest.isFactoryBinary()) {
            if (new File("/sys/class/mdnie/mdnie/bypass").exists()) {
                i = 1;
                sysfsWrite("/sys/class/mdnie/mdnie/bypass", 1);
            } else {
                i = 1;
            }
            if (new File("/sys/class/mdnie/mdnie1/bypass").exists()) {
                sysfsWrite("/sys/class/mdnie/mdnie1/bypass", i);
            }
        }
        if (this.mUseAfterimageCompensationServiceConfig && !FactoryTest.isFactoryBinary()) {
            this.afterimageCompensation = new AfterimageCompensationService(context);
        }
        Slog.d("SemMdnieManagerService", "SemMdnieMdnieManager AFC config : " + this.mUseAfterimageCompensationServiceConfig);
        registerProcessObserver();
        setting_is_changed();
        Slog.i("SemMdnieManagerService", "SemMdnieMdnieManagerService Init Success");
    }

    /* loaded from: classes2.dex */
    public final class ScreenWatchingReceiver extends BroadcastReceiver {
        public ScreenWatchingReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                SemMdnieManagerService semMdnieManagerService = SemMdnieManagerService.this;
                semMdnieManagerService.mAutoModeEnabled = Settings.System.getInt(semMdnieManagerService.mContext.getContentResolver(), "screen_mode_automatic_setting", 1) == 1;
                SemMdnieManagerService semMdnieManagerService2 = SemMdnieManagerService.this;
                semMdnieManagerService2.mScreenMode = Settings.System.getIntForUser(semMdnieManagerService2.mContext.getContentResolver(), "screen_mode_setting", 0, -2);
                if (SemMdnieManagerService.this.mAutoModeEnabled) {
                    SemMdnieManagerService.this.mScreenMode = 4;
                }
                Slog.d("SemMdnieManagerService", "BOOT_ON - mScreenMode : " + SemMdnieManagerService.this.mScreenMode + " , mAutoModeEnabled - " + SemMdnieManagerService.this.mAutoModeEnabled);
                if (SemMdnieManagerService.this.mSupportScreenMode || SemMdnieManagerService.this.mSupportScreeenReadingMode) {
                    SemMdnieManagerService semMdnieManagerService3 = SemMdnieManagerService.this;
                    if (semMdnieManagerService3.checkScreenMode(semMdnieManagerService3.mScreenMode)) {
                        synchronized (SemMdnieManagerService.this.mLock) {
                            SemMdnieManagerService.sysfsWrite("/sys/class/mdnie/mdnie/mode", SemMdnieManagerService.this.mScreenMode);
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if ("android.intent.action.SCREEN_ON".equals(action)) {
                SemMdnieManagerService.this.mDisplayOn = true;
                SemMdnieManagerService semMdnieManagerService4 = SemMdnieManagerService.this;
                semMdnieManagerService4.mMdnieWorkingCondition = semMdnieManagerService4.mDisplayOn;
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                SemMdnieManagerService.this.mDisplayOn = false;
                SemMdnieManagerService semMdnieManagerService5 = SemMdnieManagerService.this;
                semMdnieManagerService5.mMdnieWorkingCondition = semMdnieManagerService5.mDisplayOn;
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class SettingsObserver extends ContentObserver {
        public final Uri AOD_SHOW_STATE_URI;
        public final Uri NIGHT_DIM_URI;
        public ContentResolver resolver;

        public SettingsObserver() {
            super(new Handler());
            this.resolver = SemMdnieManagerService.this.mContext.getContentResolver();
            this.NIGHT_DIM_URI = Settings.System.getUriFor("blue_light_filter_night_dim");
            this.AOD_SHOW_STATE_URI = Settings.System.getUriFor("aod_show_state");
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (!SemMdnieManagerService.this.FP_FEATURE_SENSOR_IS_OPTICAL.contains("optical")) {
                SemMdnieManagerService.this.mAlwaysOnDisplayEnabled = Settings.System.getIntForUser(this.resolver, "aod_show_state", 0, -2) == 1;
                if (this.AOD_SHOW_STATE_URI.equals(uri)) {
                    Slog.i("SemMdnieManagerService", "AOD_SHOW_STATE_SETTINGS onChange. mAlwaysOnDisplayEnabled : " + SemMdnieManagerService.this.mAlwaysOnDisplayEnabled + " , mDisplayOn : " + SemMdnieManagerService.this.mDisplayOn + " , mDisplayState : " + SemMdnieManagerService.this.mDisplayState);
                    if (SemMdnieManagerService.this.mAlwaysOnDisplayEnabled) {
                        SemMdnieManagerService semMdnieManagerService = SemMdnieManagerService.this;
                        semMdnieManagerService.setNightDimOffMode(semMdnieManagerService.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                        return;
                    }
                    if (SemMdnieManagerService.this.mDisplayOn) {
                        SemMdnieManagerService semMdnieManagerService2 = SemMdnieManagerService.this;
                        semMdnieManagerService2.setNightMode(semMdnieManagerService2.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                        return;
                    } else if (SemMdnieManagerService.this.mDisplayState == 1) {
                        SemMdnieManagerService semMdnieManagerService3 = SemMdnieManagerService.this;
                        semMdnieManagerService3.setNightDimOffMode(semMdnieManagerService3.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                        return;
                    } else {
                        if (SemMdnieManagerService.this.mDisplayState == 2) {
                            SemMdnieManagerService semMdnieManagerService4 = SemMdnieManagerService.this;
                            semMdnieManagerService4.setNightMode(semMdnieManagerService4.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                            return;
                        }
                        return;
                    }
                }
                if (this.NIGHT_DIM_URI.equals(uri)) {
                    Slog.i("SemMdnieManagerService", "BLUE_LIGHT_FILTER_NIGHT_DIM onChange");
                    SemMdnieManagerService semMdnieManagerService5 = SemMdnieManagerService.this;
                    semMdnieManagerService5.setNightMode(semMdnieManagerService5.mNightMode, SemMdnieManagerService.this.mNightModeIndex);
                    return;
                }
                SemMdnieManagerService.this.setting_is_changed();
                return;
            }
            SemMdnieManagerService.this.setting_is_changed();
        }
    }

    public final void setting_is_changed() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        this.mPrevScreenModeForReadingMode = this.mScreenModeForReadingMode;
        this.mScreenModeForReadingMode = Settings.System.getIntForUser(this.mContext.getContentResolver(), "screen_mode_setting", 0, -2);
        this.mVividnessIndex = Settings.System.getIntForUser(this.mContext.getContentResolver(), "vividness_intensity", 0, 0);
        int intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), "sec_display_temperature_red", 0, -2);
        int intForUser2 = Settings.System.getIntForUser(this.mContext.getContentResolver(), "sec_display_temperature_green", 0, -2);
        int intForUser3 = Settings.System.getIntForUser(this.mContext.getContentResolver(), "sec_display_temperature_blue", 0, -2);
        int intForUser4 = Settings.System.getIntForUser(this.mContext.getContentResolver(), "sec_display_preset_index", 2, 0);
        this.mAutoModeEnabled = Settings.System.getInt(this.mContext.getContentResolver(), "screen_mode_automatic_setting", 1) == 1;
        this.mEnvironmentAdaptiveDisplayEnabled = Settings.System.getIntForUser(this.mContext.getContentResolver(), "ead_enabled", 0, -2) == 1;
        Slog.i("SemMdnieManagerService", "setting_is_changed - mAutoModeEnabled : " + this.mAutoModeEnabled + " , mMdnieWhiteRGBSupported : " + this.mMdnieWhiteRGBSupported + " , mEnvironmentAdaptiveDisplayEnabled : " + this.mEnvironmentAdaptiveDisplayEnabled);
        if (this.mEnvironmentAdaptiveDisplaySupported) {
            Slog.i("SemMdnieManagerService", "setting_is_changed - EAD(" + this.mEnvironmentAdaptiveDisplayEnabled + ")");
            if (new File("/sys/class/mdnie/mdnie/adaptive_mode").exists()) {
                sysfsWrite("/sys/class/mdnie/mdnie/adaptive_mode", Settings.System.getIntForUser(this.mContext.getContentResolver(), "ead_enabled", 0, -2));
            }
            if (new File("/sys/class/mdnie/mdnie1/adaptive_mode").exists()) {
                sysfsWrite("/sys/class/mdnie/mdnie1/adaptive_mode", Settings.System.getIntForUser(this.mContext.getContentResolver(), "ead_enabled", 0, -2));
            }
        }
        if (!this.mEnvironmentAdaptiveDisplayEnabled) {
            boolean z = this.mMdnieWhiteRGBSupported;
            if (z && this.mAutoModeEnabled) {
                Slog.i("SemMdnieManagerService", "setting_is_changed - white balance(" + intForUser4 + "), R(" + intForUser + "), G(" + intForUser2 + "), B(" + intForUser3 + ")");
                if (intForUser4 < 0 || intForUser4 >= 5) {
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                } else {
                    int[][][] iArr = this.mPresetAdjustWhiteRGB;
                    int[] iArr2 = iArr[this.mFactoryScrIndex][intForUser4];
                    i5 = iArr2[0] + intForUser;
                    i6 = iArr2[1] + intForUser2;
                    i4 = iArr2[2] + intForUser3;
                    int[] iArr3 = iArr[this.mFactoryScrIndexSub][intForUser4];
                    i = intForUser + iArr3[0];
                    i2 = intForUser2 + iArr3[1];
                    i3 = intForUser3 + iArr3[2];
                }
                if (i5 <= 0 && i5 >= -250 && i6 <= 0 && i6 >= -250 && i4 <= 0 && i4 >= -250 && new File("/sys/class/mdnie/mdnie/whiteRGB").exists()) {
                    sysfsWriteSting("/sys/class/mdnie/mdnie/whiteRGB", Integer.toString(i5) + " " + Integer.toString(i6) + " " + Integer.toString(i4));
                }
                if (new File("/sys/class/mdnie/mdnie1/whiteRGB").exists() && i <= 0 && i >= -250 && i2 <= 0 && i2 >= -250 && i3 <= 0 && i3 >= -250) {
                    sysfsWriteSting("/sys/class/mdnie/mdnie1/whiteRGB", Integer.toString(i) + " " + Integer.toString(i2) + " " + Integer.toString(i3));
                }
            } else if (z && !this.mAutoModeEnabled) {
                if (new File("/sys/class/mdnie/mdnie/whiteRGB").exists()) {
                    sysfsWriteSting("/sys/class/mdnie/mdnie/whiteRGB", "0 0 0");
                }
                if (new File("/sys/class/mdnie/mdnie1/whiteRGB").exists()) {
                    sysfsWriteSting("/sys/class/mdnie/mdnie1/whiteRGB", "0 0 0");
                }
            }
        }
        if (SemFloatingFeature.getInstance().getInt("SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDNESS", 0) <= 0 || !this.mAutoModeEnabled) {
            return;
        }
        Slog.i("SemMdnieManagerService", "setting_is_changed - vividness(" + this.mVividnessIndex + ")");
        if (new File("/sys/class/mdnie/mdnie/vividness").exists()) {
            sysfsWrite("/sys/class/mdnie/mdnie/vividness", this.mVividnessIndex);
        }
        if (new File("/sys/class/mdnie/mdnie1/vividness").exists()) {
            sysfsWrite("/sys/class/mdnie/mdnie1/vividness", this.mVividnessIndex);
        }
    }

    public final void registerProcessObserver() {
        try {
            if (this.mDisplayManager == null) {
                DisplayManager displayManager = (DisplayManager) this.mContext.getSystemService("display");
                this.mDisplayManager = displayManager;
                displayManager.registerDisplayListener(this.mDisplayListener, null);
            }
        } catch (Exception unused) {
            Slog.d("SemMdnieManagerService", "failed to registerProcessObserver");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02ec A[Catch: IOException -> 0x02e8, TRY_LEAVE, TryCatch #38 {IOException -> 0x02e8, blocks: (B:142:0x02e4, B:124:0x02ec), top: B:141:0x02e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0310 A[Catch: IOException -> 0x030c, TRY_LEAVE, TryCatch #36 {IOException -> 0x030c, blocks: (B:140:0x0308, B:131:0x0310), top: B:139:0x0308 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0308 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0291 A[Catch: IOException -> 0x028d, TRY_LEAVE, TryCatch #33 {IOException -> 0x028d, blocks: (B:164:0x0289, B:149:0x0291), top: B:163:0x0289 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02b5 A[Catch: IOException -> 0x02b1, TRY_LEAVE, TryCatch #7 {IOException -> 0x02b1, blocks: (B:162:0x02ad, B:156:0x02b5), top: B:161:0x02ad }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0289 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0395 A[Catch: IOException -> 0x0391, TRY_LEAVE, TryCatch #25 {IOException -> 0x0391, blocks: (B:37:0x038d, B:18:0x0395), top: B:36:0x038d }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x03b9 A[Catch: IOException -> 0x03b5, TRY_LEAVE, TryCatch #2 {IOException -> 0x03b5, blocks: (B:35:0x03b1, B:25:0x03b9), top: B:34:0x03b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x03b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x038d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x031f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x035a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v47 */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v67 */
    /* JADX WARN: Type inference failed for: r6v68 */
    /* JADX WARN: Type inference failed for: r6v69 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v70 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setFactoryWhiteRGB() {
        /*
            Method dump skipped, instructions count: 980
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.hardware.display.SemMdnieManagerService.setFactoryWhiteRGB():void");
    }

    public int getScreenMode() {
        return this.mScreenMode;
    }

    public int getContentMode() {
        return this.mContentMode;
    }

    public boolean isScreenModeSupported() {
        return this.mSupportScreenMode || this.mSupportScreeenReadingMode;
    }

    public int[] getSupportedScreenMode() {
        int i;
        boolean z = this.mSupportScreenMode;
        if (z) {
            i = this.mSupportScreeenReadingMode ? 5 : 4;
        } else {
            i = this.mSupportScreeenReadingMode ? 2 : 0;
        }
        int[] iArr = new int[i];
        if (z) {
            iArr[0] = 0;
            iArr[1] = 1;
            iArr[2] = 2;
            iArr[3] = 4;
            if (this.mSupportScreeenReadingMode) {
                iArr[4] = 5;
            }
        } else if (this.mSupportScreeenReadingMode) {
            iArr[0] = 4;
            iArr[1] = 5;
        }
        return iArr;
    }

    public boolean isContentModeSupported() {
        return this.mSupportContentMode;
    }

    public int[] getSupportedContentMode() {
        Slog.i("SemMdnieManagerService", "MDNIE_SUPPORT_FUNCTION (" + this.MDNIE_SUPPORT_FUNCTION + "), mSupportContentMode (" + this.mSupportContentMode + ")");
        boolean z = this.mSupportContentMode;
        int[] iArr = new int[z ? 6 : 0];
        if (z) {
            iArr[0] = 0;
            iArr[1] = 1;
            iArr[2] = 4;
            iArr[3] = 6;
            iArr[4] = 8;
            iArr[5] = 9;
        }
        return iArr;
    }

    public boolean setScreenMode(int i) {
        if ((!this.mSupportScreenMode && !this.mSupportScreeenReadingMode) || !this.mMdnieWorkingCondition || !checkScreenMode(i)) {
            return false;
        }
        synchronized (this.mLock) {
            if (!sysfsWrite("/sys/class/mdnie/mdnie/mode", i)) {
                return false;
            }
            if (new File("/sys/class/mdnie/mdnie1/mode").exists()) {
                sysfsWrite("/sys/class/mdnie/mdnie1/mode", i);
            }
            Slog.i("SemMdnieManagerService", "setScreenMode : " + i);
            this.mScreenMode = i;
            return true;
        }
    }

    public boolean setContentMode(int i) {
        if (!this.mSupportContentMode || !checkContentMode(i)) {
            return false;
        }
        synchronized (this.mLock) {
            if (!sysfsWrite("/sys/class/mdnie/mdnie/scenario", i)) {
                return false;
            }
            if ((i == 4 || i == 6) && ((isIndiaCountryCode || isBangladeshCountryCode || isNepalCountryCode || isSrilankaCountryCode || isMaldivesCountryCode) && this.mSupportContentModeSWA)) {
                i++;
            }
            if (new File("/sys/class/mdnie/mdnie1/scenario").exists()) {
                sysfsWrite("/sys/class/mdnie/mdnie1/scenario", i);
            }
            Slog.i("SemMdnieManagerService", "setContentMode : " + i);
            this.mContentMode = i;
            return true;
        }
    }

    public boolean setAmoledACL(int i) {
        boolean sysfsWrite;
        if (!this.mMdnieWorkingCondition) {
            return false;
        }
        if (i != 0) {
            i = 1;
        }
        synchronized (this.mLock) {
            sysfsWrite = sysfsWrite("/sys/class/lcd/panel/power_reduce", i);
        }
        return sysfsWrite;
    }

    public boolean setWhiteRGB(int i, int i2, int i3, int i4, int i5, int i6) {
        Slog.i("SemMdnieManagerService", "setWhiteRGB(" + i + "," + i2 + "," + i3 + "," + i4 + "," + i5 + "," + i6 + ")");
        if (!this.mEnvironmentAdaptiveDisplaySupported || !this.mEnvironmentAdaptiveDisplayEnabled) {
            return false;
        }
        synchronized (this.mLock) {
            if (new File("/sys/class/mdnie/mdnie/whiteRGB").exists()) {
                sysfsWriteSting("/sys/class/mdnie/mdnie/whiteRGB", Integer.toString(i) + " " + Integer.toString(i2) + " " + Integer.toString(i3));
            }
            if (new File("/sys/class/mdnie/mdnie1/whiteRGB").exists()) {
                sysfsWriteSting("/sys/class/mdnie/mdnie1/whiteRGB", Integer.toString(i4) + " " + Integer.toString(i5) + " " + Integer.toString(i6));
            }
        }
        return true;
    }

    public final boolean checkScreenMode(int i) {
        boolean z = false;
        if (this.mSupportScreenMode && (i == 0 || i == 1 || i == 2 || i == 4 || (i == 5 && this.mSupportScreeenReadingMode))) {
            z = true;
        }
        if (this.mSupportScreeenReadingMode) {
            if (i == 5) {
                z = true;
            }
            if (i == 4) {
                return true;
            }
        }
        return z;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x001c. Please report as an issue. */
    public final boolean checkContentMode(int i) {
        if (!this.mSupportContentMode) {
            return false;
        }
        if (i != 0 && i != 1 && i != 4 && i != 6 && i != 20 && i != 8 && i != 9) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                    if (!this.mSupportContentModeGame) {
                        return false;
                    }
                    break;
                case 14:
                case 15:
                    if (!this.mSupportContentModeVideoEnhance) {
                        return false;
                    }
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public boolean isNightModeSupported() {
        return this.mSupportBlueFilter;
    }

    public boolean enableNightMode(int i) {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "enableNightMode");
        return setNightMode(true, i);
    }

    public boolean disableNightMode() {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "disableNightMode");
        return setNightMode(false, this.mNightModeIndex);
    }

    public boolean setNightModeBlock(boolean z) {
        this.mNightModeBlock = true;
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "setNightModeBlock");
        Slog.i("SemMdnieManagerService", "setNightModeBlock : " + this.mWorkBlueFilter + " - " + z);
        if (!z) {
            disableNightMode();
        }
        this.mNightModeBlock = false;
        this.mWorkBlueFilter = z;
        return true;
    }

    public boolean getNightModeBlock() {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "getNightModeBlock");
        Slog.i("SemMdnieManagerService", "getNightModeBlock : " + this.mWorkBlueFilter);
        return this.mWorkBlueFilter;
    }

    public boolean setNightModeStep(int i) {
        Slog.i("SemMdnieManagerService", "setNightModeStep : " + i);
        this.mBlueFilterIndex = i;
        return true;
    }

    public int getNightModeStep() {
        Slog.i("SemMdnieManagerService", "getNightModeStep : " + this.mWorkBlueFilter);
        return this.mBlueFilterIndex;
    }

    public boolean setNightMode(boolean z, int i) {
        String str;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        this.mNightDimModeEnabled = Settings.System.getIntForUser(contentResolver, "blue_light_filter_night_dim", 0, -2) == 1;
        boolean z2 = Settings.System.getIntForUser(contentResolver, "aod_show_state", 0, -2) == 1;
        this.mAlwaysOnDisplayEnabled = z2;
        if (!this.mNightDimModeEnabled) {
            str = Integer.toString(z ? 1 : 0) + " " + Integer.toString(i);
        } else if (!z2) {
            str = Integer.toString(z ? 1 : 0) + " " + Integer.toString(i + 204);
        } else {
            str = Integer.toString(z ? 1 : 0) + " " + Integer.toString(i + 102);
        }
        if (this.mSupportBlueFilter && this.mWorkBlueFilter && i >= 0 && i <= this.NIGHT_MODE_MAX_INDEX) {
            synchronized (this.mLock) {
                if (this.NIGHT_MODE_NEW_SYSFS_USE) {
                    if (sysfsWriteSting("/sys/class/lcd/panel/reading_mode", str)) {
                        Slog.i("SemMdnieManagerService", "setNightMode_1 : " + z + ", index : " + i + ", str : (" + str + ")");
                        this.mNightMode = z;
                        this.mNightModeIndex = i;
                        return true;
                    }
                } else if (sysfsWriteSting("/sys/class/mdnie/mdnie/night_mode", str)) {
                    if (new File("/sys/class/mdnie/mdnie1/night_mode").exists()) {
                        sysfsWriteSting("/sys/class/mdnie/mdnie1/night_mode", str);
                    }
                    Slog.i("SemMdnieManagerService", "setNightMode_2 : " + z + ", index : " + i + ", str : (" + str + ")");
                    this.mNightMode = z;
                    this.mNightModeIndex = i;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean setColorFadeNightDim(boolean z) {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        this.mBlueLightFilterEnabled = Settings.System.getIntForUser(contentResolver, "blue_light_filter", 0, -2) == 1;
        boolean z2 = Settings.System.getIntForUser(contentResolver, "blue_light_filter_night_dim", 0, -2) == 1;
        this.mNightDimModeEnabled = z2;
        if (this.mBlueLightFilterEnabled && z2) {
            Slog.i("SemMdnieManagerService", "setColorFadeNightDim");
            if (z) {
                return setNightDimOffMode(this.mNightMode, this.mNightModeIndex);
            }
            if (this.mDisplayState == 2) {
                return setNightMode(this.mNightMode, this.mNightModeIndex);
            }
        }
        return false;
    }

    public final boolean setNightDimOffMode(boolean z, int i) {
        String str;
        boolean z2 = Settings.System.getIntForUser(this.mContext.getContentResolver(), "blue_light_filter_night_dim", 0, -2) == 1;
        this.mNightDimModeEnabled = z2;
        if (z2) {
            str = Integer.toString(z ? 1 : 0) + " " + Integer.toString(i + 102);
        } else {
            str = Integer.toString(z ? 1 : 0) + " " + Integer.toString(i);
        }
        if (this.mSupportBlueFilter && this.mWorkBlueFilter && i >= 0 && i <= this.NIGHT_MODE_MAX_INDEX) {
            synchronized (this.mLock) {
                if (this.NIGHT_MODE_NEW_SYSFS_USE) {
                    if (sysfsWriteSting("/sys/class/lcd/panel/reading_mode", str)) {
                        Slog.i("SemMdnieManagerService", "setNightDimOffMode_1 : " + z + ", index : " + i + ", str : (" + str + ")");
                        this.mNightMode = z;
                        this.mNightModeIndex = i;
                        return true;
                    }
                } else if (sysfsWriteSting("/sys/class/mdnie/mdnie/night_mode", str)) {
                    if (new File("/sys/class/mdnie/mdnie1/night_mode").exists()) {
                        sysfsWriteSting("/sys/class/mdnie/mdnie1/night_mode", str);
                    }
                    Slog.i("SemMdnieManagerService", "setNightDimOffMode_2 : " + z + ", index : " + i + ", str : (" + str + ")");
                    this.mNightMode = z;
                    this.mNightModeIndex = i;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean setColorVision(boolean z, int i, int i2) {
        String str = Integer.toString(z ? 1 : 0) + " " + Integer.toString(i) + " " + Integer.toString(i2);
        if (i < 0 || i > 12 || i2 < 0 || i2 > 9) {
            return false;
        }
        synchronized (this.mLock) {
            if (!sysfsWriteSting("/sys/class/mdnie/mdnie/color_lens", str)) {
                return false;
            }
            if (new File("/sys/class/mdnie/mdnie1/color_lens").exists()) {
                sysfsWriteSting("/sys/class/mdnie/mdnie1/color_lens", str);
            }
            Slog.i("SemMdnieManagerService", "setColorVision : " + z + " - " + i + " - " + i2);
            this.mColorVision = z;
            this.mColorVisionColor = i;
            this.mColorVisionLevel = i2;
            return true;
        }
    }

    public boolean setLightNotificationMode(boolean z) {
        boolean sysfsWrite;
        if (!this.mSupportLightNotificationMode) {
            return false;
        }
        synchronized (this.mLock) {
            if (new File("/sys/class/mdnie/mdnie1/light_notification").exists()) {
                sysfsWrite("/sys/class/mdnie/mdnie1/light_notification", z ? 1 : 0);
            }
            Slog.i("SemMdnieManagerService", "setLightNotificationMode : " + z);
            sysfsWrite = sysfsWrite("/sys/class/mdnie/mdnie/light_notification", z ? 1 : 0);
        }
        return sysfsWrite;
    }

    public void updateAlwaysOnDisplay(boolean z, int i) {
        synchronized (this.mLock) {
            if (z) {
                AfterimageCompensationService afterimageCompensationService = this.afterimageCompensation;
                if (afterimageCompensationService != null) {
                    afterimageCompensationService.updateAlwaysOnDisplayForBurnInService(z, i);
                }
            }
        }
    }

    public boolean afpcDataVerify() {
        Slog.d("SemMdnieManagerService", "afpcDataVerify");
        AfterimageCompensationService afterimageCompensationService = this.afterimageCompensation;
        if (afterimageCompensationService != null) {
            return afterimageCompensationService.afpcDataVerify();
        }
        return false;
    }

    public boolean afpcDataWrite() {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "afpcDataWrite");
        Slog.d("SemMdnieManagerService", "afpcDataWrite");
        AfterimageCompensationService afterimageCompensationService = this.afterimageCompensation;
        if (afterimageCompensationService != null) {
            return afterimageCompensationService.afpcDataWrite();
        }
        return false;
    }

    public boolean afpcDataApply() {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "afpcDataApply");
        Slog.d("SemMdnieManagerService", "afpcDataApply");
        AfterimageCompensationService afterimageCompensationService = this.afterimageCompensation;
        if (afterimageCompensationService != null) {
            return afterimageCompensationService.afpcDataApply();
        }
        return false;
    }

    public boolean afpcDataOff() {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "afpcDataOff");
        Slog.d("SemMdnieManagerService", "afpcDataOff");
        AfterimageCompensationService afterimageCompensationService = this.afterimageCompensation;
        if (afterimageCompensationService != null) {
            return afterimageCompensationService.afpcDataOff();
        }
        return false;
    }

    public boolean afpcWorkOff() {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "afpcWorkOff");
        Slog.d("SemMdnieManagerService", "afpcWorkOff");
        AfterimageCompensationService afterimageCompensationService = this.afterimageCompensation;
        if (afterimageCompensationService != null) {
            return afterimageCompensationService.afpcWorkOff();
        }
        return false;
    }

    public static boolean sysfsWrite(String str, int i) {
        FileOutputStream fileOutputStream;
        IOException e;
        File file = new File(str);
        if (file.exists()) {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(Integer.toString(i).getBytes(Charset.forName("UTF-8")));
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
                } catch (FileNotFoundException e4) {
                    e4.printStackTrace();
                    return false;
                }
            } catch (IOException e5) {
                fileOutputStream = null;
                e = e5;
            }
        }
        return false;
    }

    public static boolean sysfsWriteSting(String str, String str2) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str));
                try {
                    fileOutputStream2.write(str2.getBytes(Charset.forName("UTF-8")));
                    fileOutputStream2.close();
                    return true;
                } catch (IOException e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    try {
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return false;
                }
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    public static boolean sysfsWrite_CB(String str, int i, int[] iArr) {
        String str2 = Integer.toString(i) + " " + Integer.toHexString(iArr[0]) + " " + Integer.toHexString(iArr[1]) + " " + Integer.toHexString(iArr[2]) + " " + Integer.toHexString(iArr[3]) + " " + Integer.toHexString(iArr[4]) + " " + Integer.toHexString(iArr[5]) + " " + Integer.toHexString(iArr[6]) + " " + Integer.toHexString(iArr[7]) + " " + Integer.toHexString(iArr[8]);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str));
                try {
                    fileOutputStream2.write(str2.getBytes(Charset.forName("UTF-8")));
                    fileOutputStream2.close();
                    return true;
                } catch (IOException e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    try {
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return false;
                }
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    public static boolean sysfsWrite_CB_HBM(String str, int i, int[] iArr) {
        String str2 = Integer.toString(i) + " " + Integer.toHexString(iArr[0]) + " " + Integer.toHexString(iArr[1]) + " " + Integer.toHexString(iArr[2]) + " " + Integer.toHexString(iArr[3]) + " " + Integer.toHexString(iArr[4]) + " " + Integer.toHexString(iArr[5]) + " " + Integer.toHexString(iArr[6]) + " " + Integer.toHexString(iArr[7]) + " " + Integer.toHexString(iArr[8]) + " " + Integer.toHexString(iArr[9]) + " " + Integer.toHexString(iArr[10]) + " " + Integer.toHexString(iArr[11]);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str));
                try {
                    fileOutputStream2.write(str2.getBytes(Charset.forName("UTF-8")));
                    fileOutputStream2.close();
                    return true;
                } catch (IOException e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    try {
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return false;
                }
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    public boolean setmDNIeColorBlind(boolean z, int[] iArr) {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "setmDNIeColorBlind");
        Slog.i("SemMdnieManagerService", "setmDNIeColorBlind (" + z + ")");
        if (this.mCurtainModeIsRunning) {
            return false;
        }
        if (this.WEAKNESS_SOLUTION_FUNCTION > 0) {
            if (new File("/sys/class/mdnie/mdnie1/accessibility").exists()) {
                if (sysfsWrite_CB_HBM("/sys/class/mdnie/mdnie/accessibility", z ? 6 : 0, iArr)) {
                    return sysfsWrite_CB_HBM("/sys/class/mdnie/mdnie1/accessibility", z ? 6 : 0, iArr);
                }
                return false;
            }
            return sysfsWrite_CB_HBM("/sys/class/mdnie/mdnie/accessibility", z ? 6 : 0, iArr);
        }
        if (new File("/sys/class/mdnie/mdnie1/accessibility").exists()) {
            if (sysfsWrite_CB("/sys/class/mdnie/mdnie/accessibility", z ? 2 : 0, iArr)) {
                return sysfsWrite_CB("/sys/class/mdnie/mdnie1/accessibility", z ? 2 : 0, iArr);
            }
            return false;
        }
        return sysfsWrite_CB("/sys/class/mdnie/mdnie/accessibility", z ? 2 : 0, iArr);
    }

    public boolean setmDNIeNegative(boolean z) {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "setmDNIeNegative");
        Slog.i("SemMdnieManagerService", "setmDNIeNegative (" + z + ")");
        if (this.mCurtainModeIsRunning) {
            return false;
        }
        if (new File("/sys/class/mdnie/mdnie1/accessibility").exists()) {
            return sysfsWrite("/sys/class/mdnie/mdnie/accessibility", z ? 1 : 0) && sysfsWrite("/sys/class/mdnie/mdnie1/accessibility", z ? 1 : 0);
        }
        return sysfsWrite("/sys/class/mdnie/mdnie/accessibility", z ? 1 : 0);
    }

    public boolean setmDNIeScreenCurtain(boolean z) {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "setmDNIeScreenCurtain");
        Slog.i("SemMdnieManagerService", "setmDNIeScreenCurtain (" + z + ")");
        this.mCurtainModeIsRunning = z;
        boolean sysfsWrite = sysfsWrite("/sys/class/mdnie/mdnie/accessibility", z ? 3 : 0);
        if (new File("/sys/class/mdnie/mdnie1/accessibility").exists()) {
            return sysfsWrite & sysfsWrite("/sys/class/mdnie/mdnie1/accessibility", z ? 3 : 0);
        }
        return sysfsWrite;
    }

    public boolean setmDNIeEmergencyMode(boolean z) {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "setmDNIeEmergencyMode");
        Slog.i("SemMdnieManagerService", "setmDNIeEmergencyMode (" + z + ")");
        boolean sysfsWrite = sysfsWrite("/sys/class/mdnie/mdnie/accessibility", z ? 4 : 0);
        if (new File("/sys/class/mdnie/mdnie1/accessibility").exists()) {
            return sysfsWrite & sysfsWrite("/sys/class/mdnie/mdnie1/accessibility", z ? 4 : 0);
        }
        return sysfsWrite;
    }

    public boolean setmDNIeAccessibilityMode(int i, boolean z) {
        this.mContext.enforceCallingOrSelfPermission("com.samsung.android.permission.CHANGE_DISPLAY_COLOR", "setmDNIeAccessibilityMode");
        Slog.i("SemMdnieManagerService", "setmDNIeAccessibilityMode(" + i + ", " + z + ")");
        if (this.mCurtainModeIsRunning) {
            return false;
        }
        if (i != 10) {
            if (new File("/sys/class/mdnie/mdnie1/accessibility").exists()) {
                if (!sysfsWrite("/sys/class/mdnie/mdnie/accessibility", z ? i : 0)) {
                    return false;
                }
                if (!z) {
                    i = 0;
                }
                return sysfsWrite("/sys/class/mdnie/mdnie1/accessibility", i);
            }
            if (!z) {
                i = 0;
            }
            return sysfsWrite("/sys/class/mdnie/mdnie/accessibility", i);
        }
        return sysfsWrite("/sys/class/backlight/panel/weakness_hbm_comp", z ? 1 : 0);
    }
}
