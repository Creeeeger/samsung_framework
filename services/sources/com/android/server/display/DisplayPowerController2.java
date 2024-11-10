package com.android.server.display;

import android.R;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ParceledListSlice;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.hardware.display.BrightnessConfiguration;
import android.hardware.display.BrightnessInfo;
import android.hardware.display.DisplayManagerInternal;
import android.metrics.LogMaker;
import android.net.Uri;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.Settings;
import android.util.FloatProperty;
import android.util.Log;
import android.util.MathUtils;
import android.util.MutableBoolean;
import android.util.MutableFloat;
import android.util.MutableInt;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.PathInterpolator;
import com.android.internal.app.IBatteryStats;
import com.android.internal.display.BrightnessSynchronizer;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.RingBuffer;
import com.android.server.LocalServices;
import com.android.server.am.BatteryStatsService;
import com.android.server.clipboard.ClipboardService;
import com.android.server.display.AdaptiveBrightnessLongtermModelBuilder;
import com.android.server.display.AutomaticBrightnessController;
import com.android.server.display.BrightnessSetting;
import com.android.server.display.DisplayDeviceConfig;
import com.android.server.display.HighBrightnessModeController;
import com.android.server.display.RampAnimator;
import com.android.server.display.ScreenOffBrightnessSensorController;
import com.android.server.display.brightness.BrightnessEvent;
import com.android.server.display.brightness.BrightnessReason;
import com.android.server.display.brightness.BrightnessUtils;
import com.android.server.display.brightness.DisplayBrightnessController;
import com.android.server.display.brightness.strategy.AutomaticBrightnessStrategy;
import com.android.server.display.color.ColorDisplayService;
import com.android.server.display.state.DisplayStateController;
import com.android.server.display.utils.SensorUtils;
import com.android.server.display.whitebalance.DisplayWhiteBalanceController;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.power.HqmDataDispatcher;
import com.android.server.power.PowerHistorian;
import com.android.server.power.PowerManagerUtil;
import com.android.server.power.Slog;
import com.samsung.android.aod.AODManager;
import com.samsung.android.aod.AODManagerInternal;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class DisplayPowerController2 implements AutomaticBrightnessController.Callbacks, DisplayPowerControllerInterface {
    public static final float[] BRIGHTNESS_RANGE_BOUNDARIES;
    public static final int DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION;
    public static final int MAX_AUTO_BRIGHTNESS_TRANSITION_TIME;
    public static final float RATE_FROM_DOZE_TO_ON;
    public static boolean SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED = true;
    public final AdaptiveBrightnessLongtermModelBuilder mAdaptiveBrightnessLongtermModelBuilder;
    public AODManagerInternal mAodManagerInternal;
    public boolean mAppliedDimming;
    public boolean mAppliedForceDimming;
    public boolean mAppliedLowPower;
    public boolean mAppliedThrottling;
    public boolean mAutoBrightnessEnabled;
    public AutomaticBrightnessController mAutomaticBrightnessController;
    public final AutomaticBrightnessStrategy mAutomaticBrightnessStrategy;
    public boolean mAwakenFromDozingInAutoBrightness;
    public boolean mBatteryLevelCritical;
    public final IBatteryStats mBatteryStats;
    public final DisplayBlanker mBlanker;
    public boolean mBootCompleted;
    public boolean mBrightnessAnimationConsumerInvoked;
    public final boolean mBrightnessBucketsInDozeConfig;
    public boolean mBrightnessChangedByUser;
    public RingBuffer mBrightnessEventRingBuffer;
    public long mBrightnessRampDecreaseMaxTimeMillis;
    public long mBrightnessRampIncreaseMaxTimeMillis;
    public float mBrightnessRampRateFastDecrease;
    public float mBrightnessRampRateFastIncrease;
    public float mBrightnessRampRateHdrDecrease;
    public float mBrightnessRampRateHdrIncrease;
    public float mBrightnessRampRateSlowDecrease;
    public float mBrightnessRampRateSlowIncrease;
    public final BrightnessThrottler mBrightnessThrottler;
    public final BrightnessTracker mBrightnessTracker;
    public final DisplayManagerInternal.DisplayPowerCallbacks mCallbacks;
    public final ColorDisplayService.ColorDisplayServiceInternal mCdsi;
    public final Clock mClock;
    public final boolean mColorFadeEnabled;
    public final boolean mColorFadeFadesConfig;
    public ObjectAnimator mColorFadeOffAnimator;
    public ObjectAnimator mColorFadeOnAnimator;
    public final Context mContext;
    public boolean mCoverDisplayDemoEnabled;
    public final boolean mDisplayBlanksAfterDozeConfig;
    public final DisplayBrightnessController mDisplayBrightnessController;
    public DisplayDevice mDisplayDevice;
    public DisplayDeviceConfig mDisplayDeviceConfig;
    public final int mDisplayId;
    public final DisplayPowerProximityStateController mDisplayPowerProximityStateController;
    public boolean mDisplayReadyLocked;
    public final DisplayStateController mDisplayStateController;
    public int mDisplayStatsId;
    public boolean mDozing;
    public EarlyWakeUpManager mEarlyWakeUpManager;
    public final boolean mEarlyWakeupEnabled;
    public float mFollowerRampSpeed;
    public float mFollowerRampSpeedAtHbm;
    public boolean mForceSlowChange;
    public boolean mFreezeBrightnessMode;
    public int mFreezeBrightnessModeSelector;
    public final DisplayControllerHandler mHandler;
    public final HighBrightnessModeController mHbmController;
    public final HighBrightnessModeMetadata mHighBrightnessModeMetadata;
    public HqmDataDispatcher mHqmDataDispatcher;
    public BrightnessMappingStrategy mIdleModeBrightnessMapper;
    public float mInitialAutoBrightness;
    public boolean mInitialAutoBrightnessUpdated;
    public final Injector mInjector;
    public BrightnessMappingStrategy mInteractiveModeBrightnessMapper;
    public final boolean mIsCoverDisplay;
    public boolean mIsDisplayInternal;
    public boolean mIsEnabled;
    public boolean mIsInTransition;
    public boolean mIsRbcActive;
    public boolean mIsSupportedAodMode;
    public long mLastBatteryLevelCriticalTime;
    public long mLastBrightnessConfigurationTime;
    public final BrightnessEvent mLastBrightnessEvent;
    public boolean mLastCoverClosedState;
    public float mLastScreenBrightnessSettingBeforeForceDim;
    public Sensor mLightSensor;
    public final LogicalDisplay mLogicalDisplay;
    public final float mMoreFastRampRate;
    public boolean mNeedPrepareColorFade;
    public float[] mNitsRange;
    public Consumer mOnBrightnessAnimationConsumer;
    public final Runnable mOnBrightnessChangeRunnable;
    public final Runnable mOnBrightnessModeChangeRunnable;
    public boolean mPendingEarlyWakeUpRequestLocked;
    public boolean mPendingForceSlowChangeLocked;
    public boolean mPendingForceUpdateAb;
    public boolean mPendingRequestChangedLocked;
    public DisplayManagerInternal.DisplayPowerRequest mPendingRequestLocked;
    public boolean mPendingScreenOff;
    public ScreenOffUnblocker mPendingScreenOffUnblocker;
    public ScreenOnUnblocker mPendingScreenOnUnblocker;
    public boolean mPendingTransitionOffInDualCase;
    public boolean mPendingUpdatePowerStateLocked;
    public DisplayManagerInternal.DisplayPowerRequest mPowerRequest;
    public DisplayPowerState mPowerState;
    public boolean mResetBrightnessConfiguration;
    public final float mScreenBrightnessDimConfig;
    public final float mScreenBrightnessDozeConfig;
    public final float mScreenBrightnessMinimumDimAmount;
    public String mScreenBrightnessModeSettingName;
    public RampAnimator.DualRampAnimator mScreenBrightnessRampAnimator;
    public final float mScreenExtendedBrightnessRangeMaximum;
    public long mScreenOffBlockStartRealTime;
    public Sensor mScreenOffBrightnessSensor;
    public ScreenOffBrightnessSensorController mScreenOffBrightnessSensorController;
    public long mScreenOnBlockStartRealTime;
    public SeamlessAodReadyListener mSeamlessAodReadyListener;
    public final SensorManager mSensorManager;
    public final SettingsObserver mSettingsObserver;
    public ShutdownReceiver mShutdownReceiver;
    public final boolean mSkipScreenOnBrightnessRamp;
    public boolean mStopped;
    public final String mTag;
    public final BrightnessEvent mTempBrightnessEvent;
    public String mThermalBrightnessThrottlingDataId;
    public String mUniqueDisplayId;
    public boolean mUseSoftwareAutoBrightnessConfig;
    public boolean mWaitingAutoBrightnessFromDoze;
    public final WakelockController mWakelockController;
    public final WindowManagerPolicy mWindowManagerPolicy;
    public static final PathInterpolator COLOR_FADE_PATH_INTERPOLATOR = new PathInterpolator(0.45f, 0.18f, 0.35f, 1.0f);
    public static final AccelerateDecelerateInterpolator COLOR_FADE_DEFAULT_INTERPOLATOR = new AccelerateDecelerateInterpolator();
    public static final int[] BRIGHTNESS_RANGE_INDEX = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37};
    public static long sLastScreenBrightnessSettingChangedTime = -1;
    public final Object mLock = new Object();
    public int mLeadDisplayId = -1;
    public final CachedBrightnessInfo mCachedBrightnessInfo = new CachedBrightnessInfo();
    public int mReportedScreenStateToPolicy = -1;
    public final BrightnessReason mBrightnessReason = new BrightnessReason();
    public final BrightnessReason mBrightnessReasonTemp = new BrightnessReason();
    public float mLastStatsBrightness = RATE_FROM_DOZE_TO_ON;
    public final RingBuffer mRbcEventRingBuffer = new RingBuffer(BrightnessEvent.class, 20);
    public int mSkipRampState = 0;
    public SparseArray mDisplayBrightnessFollowers = new SparseArray();
    public int mDualScreenPolicy = -1;
    public boolean mLcdFlashModeEnabled = false;
    public boolean mPassRampAnimation = false;
    public boolean mIsOutdoorModeEnabled = false;
    public boolean mSeamlessAodReady = false;
    public boolean mPendingScreenOnByAodReady = false;
    public float mLastOriginalTarget = Float.NaN;
    public float mLastAutomaticScreenBrightness = Float.NaN;
    public float mLastAmbientLux = Float.NaN;
    public int mActualDisplayState = 0;
    public float mLastNotifiedBrightness = Float.NaN;
    public int mExtraDimStrength = -1;
    public boolean mExtraDimIsActive = false;
    public final PowerHistorian mPowerHistorian = PowerHistorian.getInstance();
    public float mPrevScreenBrightness = Float.NaN;
    public final Animator.AnimatorListener mAnimatorListener = new Animator.AnimatorListener() { // from class: com.android.server.display.DisplayPowerController2.4
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            PowerManagerUtil.sCurrentScreenOffProfiler.noteCfAnimationStart();
            Slog.d(DisplayPowerController2.this.mTag, "ColorFade: onAnimationStart");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PowerManagerUtil.sCurrentScreenOffProfiler.noteCfAnimationEnd();
            Slog.d(DisplayPowerController2.this.mTag, "ColorFade: onAnimationEnd");
            DisplayPowerController2.this.sendUpdatePowerState();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            Slog.d(DisplayPowerController2.this.mTag, "ColorFade: onAnimationRepeat");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            Slog.d(DisplayPowerController2.this.mTag, "ColorFade: onAnimationCancel");
        }
    };
    public Runnable mBrightnessAnimationEndRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerController2.5
        @Override // java.lang.Runnable
        public void run() {
            if (!DisplayPowerController2.this.mBrightnessAnimationConsumerInvoked || DisplayPowerController2.this.mScreenBrightnessRampAnimator.isAnimating()) {
                return;
            }
            DisplayPowerController2.this.mBrightnessAnimationConsumerInvoked = false;
            DisplayPowerController2.this.mOnBrightnessAnimationConsumer.accept(Boolean.FALSE);
            DisplayPowerController2.this.mWakelockController.releaseWakelock(6);
        }
    };
    public final RampAnimator.Listener mRampAnimatorListener = new RampAnimator.Listener() { // from class: com.android.server.display.DisplayPowerController2.6
        @Override // com.android.server.display.RampAnimator.Listener
        public void onAnimationEnd() {
            if (CoreRune.FW_VRR_REFRESH_RATE_TOKEN) {
                DisplayPowerController2.this.mHandler.removeCallbacks(DisplayPowerController2.this.mBrightnessAnimationEndRunnable);
                DisplayPowerController2.this.mHandler.postDelayed(DisplayPowerController2.this.mBrightnessAnimationEndRunnable, 200L);
            }
            DisplayPowerController2.this.sendUpdatePowerState();
            DisplayPowerController2.this.mHandler.sendMessageAtTime(DisplayPowerController2.this.mHandler.obtainMessage(10), DisplayPowerController2.this.mClock.uptimeMillis());
        }
    };
    public final Runnable mCleanListener = new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            DisplayPowerController2.this.sendUpdatePowerState();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Clock {
        long uptimeMillis();
    }

    public final int convertBrightnessReasonToStatsEnum(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            default:
                return 0;
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setAmbientColorTemperatureOverride(float f) {
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setDisplayWhiteBalanceLoggingEnabled(boolean z) {
    }

    public final void updateForceUpdateAbJob() {
    }

    static {
        BRIGHTNESS_RANGE_BOUNDARIES = new float[]{RATE_FROM_DOZE_TO_ON, 1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f, 10.0f, 20.0f, 30.0f, 40.0f, 50.0f, 60.0f, 70.0f, 80.0f, 90.0f, 100.0f, 200.0f, 300.0f, 400.0f, 500.0f, 600.0f, 700.0f, 800.0f, 900.0f, 1000.0f, 1200.0f, 1400.0f, 1600.0f, 1800.0f, 2000.0f, 2250.0f, 2500.0f, 2750.0f, 3000.0f};
        RATE_FROM_DOZE_TO_ON = PowerManagerUtil.SEC_FEATURE_FULLSCREEN_AOD ? 0.03f : RATE_FROM_DOZE_TO_ON;
        DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION = 180;
        MAX_AUTO_BRIGHTNESS_TRANSITION_TIME = 60000;
    }

    public DisplayPowerController2(Context context, Injector injector, DisplayManagerInternal.DisplayPowerCallbacks displayPowerCallbacks, Handler handler, SensorManager sensorManager, DisplayBlanker displayBlanker, LogicalDisplay logicalDisplay, BrightnessTracker brightnessTracker, BrightnessSetting brightnessSetting, Runnable runnable, HighBrightnessModeMetadata highBrightnessModeMetadata, boolean z, Runnable runnable2, Consumer consumer) {
        BrightnessMappingStrategy brightnessMappingStrategy;
        this.mScreenBrightnessModeSettingName = "screen_brightness_mode";
        Injector injector2 = injector != null ? injector : new Injector();
        this.mInjector = injector2;
        this.mClock = injector2.getClock();
        this.mLogicalDisplay = logicalDisplay;
        int displayIdLocked = logicalDisplay.getDisplayIdLocked();
        this.mDisplayId = displayIdLocked;
        this.mSensorManager = sensorManager;
        DisplayControllerHandler displayControllerHandler = new DisplayControllerHandler(handler.getLooper());
        this.mHandler = displayControllerHandler;
        this.mDisplayDeviceConfig = logicalDisplay.getPrimaryDisplayDeviceLocked().getDisplayDeviceConfig();
        this.mIsEnabled = logicalDisplay.isEnabledLocked();
        this.mIsInTransition = logicalDisplay.isInTransitionLocked();
        this.mIsDisplayInternal = logicalDisplay.getPrimaryDisplayDeviceLocked().getDisplayDeviceInfoLocked().type == 1;
        WakelockController wakelockController = injector2.getWakelockController(displayIdLocked, displayPowerCallbacks);
        this.mWakelockController = wakelockController;
        DisplayPowerProximityStateController displayPowerProximityStateController = injector2.getDisplayPowerProximityStateController(wakelockController, this.mDisplayDeviceConfig, displayControllerHandler.getLooper(), new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$new$0();
            }
        }, displayIdLocked, sensorManager);
        this.mDisplayPowerProximityStateController = displayPowerProximityStateController;
        this.mHighBrightnessModeMetadata = highBrightnessModeMetadata;
        this.mDisplayStateController = new DisplayStateController(displayPowerProximityStateController, displayIdLocked);
        AutomaticBrightnessStrategy automaticBrightnessStrategy = new AutomaticBrightnessStrategy(context, displayIdLocked);
        this.mAutomaticBrightnessStrategy = automaticBrightnessStrategy;
        String str = "DisplayPowerController2[" + displayIdLocked + "]";
        this.mTag = str;
        this.mThermalBrightnessThrottlingDataId = logicalDisplay.getDisplayInfoLocked().thermalBrightnessThrottlingDataId;
        this.mDisplayDevice = logicalDisplay.getPrimaryDisplayDeviceLocked();
        String uniqueId = logicalDisplay.getPrimaryDisplayDeviceLocked().getUniqueId();
        this.mUniqueDisplayId = uniqueId;
        this.mDisplayStatsId = uniqueId.hashCode();
        this.mLastBrightnessEvent = new BrightnessEvent(displayIdLocked);
        this.mTempBrightnessEvent = new BrightnessEvent(displayIdLocked);
        byte b = 0;
        if (displayIdLocked == 0 || (PowerManagerUtil.SEC_FEATURE_FLIP_COVER_DISPLAY && displayIdLocked == 1)) {
            this.mBatteryStats = BatteryStatsService.getService();
        } else {
            this.mBatteryStats = null;
        }
        this.mSettingsObserver = new SettingsObserver(displayControllerHandler);
        this.mCallbacks = displayPowerCallbacks;
        this.mWindowManagerPolicy = (WindowManagerPolicy) LocalServices.getService(WindowManagerPolicy.class);
        this.mAodManagerInternal = (AODManagerInternal) LocalServices.getService(AODManagerInternal.class);
        this.mBlanker = displayBlanker;
        this.mContext = context;
        this.mOnBrightnessChangeRunnable = runnable;
        if (displayIdLocked == 0 && consumer != null) {
            this.mOnBrightnessAnimationConsumer = consumer;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        Resources resources = context.getResources();
        this.mScreenBrightnessDozeConfig = BrightnessUtils.clampAbsoluteBrightness(powerManager.getBrightnessConstraint(4));
        this.mScreenBrightnessDimConfig = BrightnessUtils.clampAbsoluteBrightness(powerManager.getBrightnessConstraint(3));
        this.mScreenBrightnessMinimumDimAmount = resources.getFloat(R.dimen.date_picker_day_text_size);
        float f = BrightnessUtils.sScreenExtendedBrightnessRangeMaximum;
        this.mScreenExtendedBrightnessRangeMaximum = f;
        boolean z2 = PowerManagerUtil.SEC_FEATURE_FLIP_COVER_DISPLAY && displayIdLocked == 1;
        this.mIsCoverDisplay = z2;
        if (z2) {
            this.mScreenBrightnessModeSettingName = "sub_screen_brightness_mode";
        }
        loadBrightnessRampRates();
        this.mMoreFastRampRate = f;
        this.mBrightnessRampRateHdrIncrease = 0.3f;
        this.mBrightnessRampRateHdrDecrease = 0.9f;
        this.mSkipScreenOnBrightnessRamp = false;
        this.mHbmController = createHbmControllerLocked();
        this.mBrightnessThrottler = createBrightnessThrottlerLocked();
        Injector injector3 = injector2;
        this.mDisplayBrightnessController = new DisplayBrightnessController(context, null, displayIdLocked, logicalDisplay.getDisplayInfoLocked().brightnessDefault, brightnessSetting, new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$new$1();
            }
        }, new HandlerExecutor(displayControllerHandler));
        saveBrightnessInfo(getScreenBrightnessSetting());
        loadNitsRange(resources);
        this.mCdsi = null;
        setUpAutoBrightness(resources, handler);
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL && (brightnessMappingStrategy = this.mInteractiveModeBrightnessMapper) != null && displayIdLocked == 0) {
            this.mBrightnessTracker = null;
            this.mAdaptiveBrightnessLongtermModelBuilder = injector3.getAdaptiveBrightnessLongtermModelBuilder(context, null, brightnessMappingStrategy);
        } else {
            this.mBrightnessTracker = brightnessTracker;
            this.mAdaptiveBrightnessLongtermModelBuilder = null;
        }
        this.mColorFadeEnabled = !ActivityManager.isLowRamDeviceStatic();
        this.mColorFadeFadesConfig = resources.getBoolean(R.bool.config_batterymeterDualTone);
        this.mDisplayBlanksAfterDozeConfig = resources.getBoolean(17891623);
        this.mBrightnessBucketsInDozeConfig = resources.getBoolean(17891624);
        this.mBootCompleted = z;
        if (this.mIsDisplayInternal) {
            this.mShutdownReceiver = new ShutdownReceiver();
            displayControllerHandler.post(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayPowerController2.this.lambda$new$2();
                }
            });
        }
        this.mOnBrightnessModeChangeRunnable = runnable2;
        boolean z3 = this.mIsDisplayInternal;
        this.mEarlyWakeupEnabled = z3;
        if (z3) {
            this.mEarlyWakeUpManager = new EarlyWakeUpManager();
        }
        boolean z4 = PowerManagerUtil.SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE && this.mIsDisplayInternal;
        this.mIsSupportedAodMode = z4;
        if (z4) {
            this.mSeamlessAodReadyListener = new SeamlessAodReadyListener();
        }
        automaticBrightnessStrategy.setUseAutoBrightness(Settings.System.getIntForUser(context.getContentResolver(), this.mScreenBrightnessModeSettingName, 0, -2) == 1);
        Slog.d(str, "Create new DPC2 instance, mDisplayId=" + displayIdLocked + " AutomaticBrightnessController=" + this.mAutomaticBrightnessController + " mInteractiveModeBrightnessMapper=" + this.mInteractiveModeBrightnessMapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        this.mContext.registerReceiver(this.mShutdownReceiver, intentFilter, null, this.mHandler);
    }

    public final void applyReduceBrightColorsSplineAdjustment() {
        this.mHandler.obtainMessage(9).sendToTarget();
        sendUpdatePowerState();
    }

    public final void handleRbcChanged() {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController == null) {
            return;
        }
        if ((!automaticBrightnessController.isInIdleMode() && this.mInteractiveModeBrightnessMapper == null) || (this.mAutomaticBrightnessController.isInIdleMode() && this.mIdleModeBrightnessMapper == null)) {
            Log.w(this.mTag, "No brightness mapping available to recalculate splines for this mode");
            return;
        }
        float[] fArr = new float[this.mNitsRange.length];
        int i = 0;
        while (true) {
            float[] fArr2 = this.mNitsRange;
            if (i < fArr2.length) {
                fArr[i] = this.mCdsi.getReduceBrightColorsAdjustedBrightnessNits(fArr2[i]);
                i++;
            } else {
                boolean isReduceBrightColorsActivated = this.mCdsi.isReduceBrightColorsActivated();
                this.mIsRbcActive = isReduceBrightColorsActivated;
                this.mAutomaticBrightnessController.recalculateSplines(isReduceBrightColorsActivated, fArr);
                return;
            }
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public boolean isProximitySensorAvailable() {
        return this.mDisplayPowerProximityStateController.isProximitySensorAvailable();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public ParceledListSlice getBrightnessEvents(int i, boolean z) {
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL) {
            Slog.e(this.mTag, "getBrightnessEvents: not supported");
        }
        BrightnessTracker brightnessTracker = this.mBrightnessTracker;
        if (brightnessTracker == null) {
            return null;
        }
        return brightnessTracker.getEvents(i, z);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void onSwitchUser(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(12, Integer.valueOf(i)));
    }

    public final void handleOnSwitchUser(int i) {
        BrightnessTracker brightnessTracker;
        handleSettingsChange(true);
        handleBrightnessModeChange();
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL || (brightnessTracker = this.mBrightnessTracker) == null) {
            return;
        }
        brightnessTracker.onSwitchUser(i);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public ParceledListSlice getAmbientBrightnessStats(int i) {
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL) {
            Slog.e(this.mTag, "getAmbientBrightnessStats: not supported");
        }
        BrightnessTracker brightnessTracker = this.mBrightnessTracker;
        if (brightnessTracker == null) {
            return null;
        }
        return brightnessTracker.getAmbientBrightnessStats(i);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void persistBrightnessTrackerState() {
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL) {
            AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
            if (adaptiveBrightnessLongtermModelBuilder != null) {
                adaptiveBrightnessLongtermModelBuilder.persistAdaptiveBrightnessLongtermModelBuilderState();
                return;
            }
            return;
        }
        BrightnessTracker brightnessTracker = this.mBrightnessTracker;
        if (brightnessTracker != null) {
            brightnessTracker.persistBrightnessTrackerState();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0041 A[Catch: all -> 0x0051, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x000a, B:11:0x0014, B:13:0x0029, B:15:0x002d, B:17:0x0031, B:18:0x0034, B:20:0x0038, B:22:0x003c, B:24:0x0041, B:26:0x0048, B:27:0x004d, B:28:0x004f, B:30:0x001d, B:32:0x0023), top: B:3:0x0003 }] */
    @Override // com.android.server.display.DisplayPowerControllerInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean requestPowerState(android.hardware.display.DisplayManagerInternal.DisplayPowerRequest r4, boolean r5) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.mLock
            monitor-enter(r0)
            boolean r1 = r3.mStopped     // Catch: java.lang.Throwable -> L51
            r2 = 1
            if (r1 == 0) goto La
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            return r2
        La:
            com.android.server.display.DisplayPowerProximityStateController r1 = r3.mDisplayPowerProximityStateController     // Catch: java.lang.Throwable -> L51
            boolean r5 = r1.setPendingWaitForNegativeProximityLocked(r5)     // Catch: java.lang.Throwable -> L51
            android.hardware.display.DisplayManagerInternal$DisplayPowerRequest r1 = r3.mPendingRequestLocked     // Catch: java.lang.Throwable -> L51
            if (r1 != 0) goto L1d
            android.hardware.display.DisplayManagerInternal$DisplayPowerRequest r5 = new android.hardware.display.DisplayManagerInternal$DisplayPowerRequest     // Catch: java.lang.Throwable -> L51
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L51
            r3.mPendingRequestLocked = r5     // Catch: java.lang.Throwable -> L51
        L1b:
            r5 = r2
            goto L29
        L1d:
            boolean r1 = r1.equals(r4)     // Catch: java.lang.Throwable -> L51
            if (r1 != 0) goto L29
            android.hardware.display.DisplayManagerInternal$DisplayPowerRequest r5 = r3.mPendingRequestLocked     // Catch: java.lang.Throwable -> L51
            r5.copyFrom(r4)     // Catch: java.lang.Throwable -> L51
            goto L1b
        L29:
            boolean r1 = r4.forceSlowChange     // Catch: java.lang.Throwable -> L51
            if (r1 == 0) goto L34
            boolean r1 = r3.mPendingForceSlowChangeLocked     // Catch: java.lang.Throwable -> L51
            if (r1 != 0) goto L34
            r3.mPendingForceSlowChangeLocked = r2     // Catch: java.lang.Throwable -> L51
            r5 = r2
        L34:
            boolean r4 = r4.earlyWakeUp     // Catch: java.lang.Throwable -> L51
            if (r4 == 0) goto L3f
            boolean r4 = r3.mPendingEarlyWakeUpRequestLocked     // Catch: java.lang.Throwable -> L51
            if (r4 != 0) goto L3f
            r3.mPendingEarlyWakeUpRequestLocked = r2     // Catch: java.lang.Throwable -> L51
            r5 = r2
        L3f:
            if (r5 == 0) goto L4d
            r4 = 0
            r3.mDisplayReadyLocked = r4     // Catch: java.lang.Throwable -> L51
            boolean r4 = r3.mPendingRequestChangedLocked     // Catch: java.lang.Throwable -> L51
            if (r4 != 0) goto L4d
            r3.mPendingRequestChangedLocked = r2     // Catch: java.lang.Throwable -> L51
            r3.sendUpdatePowerStateLocked()     // Catch: java.lang.Throwable -> L51
        L4d:
            boolean r3 = r3.mDisplayReadyLocked     // Catch: java.lang.Throwable -> L51
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            return r3
        L51:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerController2.requestPowerState(android.hardware.display.DisplayManagerInternal$DisplayPowerRequest, boolean):boolean");
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public BrightnessConfiguration getDefaultBrightnessConfiguration() {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController == null) {
            return null;
        }
        return automaticBrightnessController.getDefaultConfig();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public BrightnessConfiguration getAppliedBackupConfiguration(BrightnessConfiguration brightnessConfiguration) {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            return automaticBrightnessController.getAppliedBackupConfig(brightnessConfiguration);
        }
        return null;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void onDisplayChanged(final HighBrightnessModeMetadata highBrightnessModeMetadata, int i) {
        this.mLeadDisplayId = i;
        final DisplayDevice primaryDisplayDeviceLocked = this.mLogicalDisplay.getPrimaryDisplayDeviceLocked();
        if (primaryDisplayDeviceLocked == null) {
            Slog.wtf(this.mTag, "Display Device is null in DisplayPowerController2 for display: " + this.mLogicalDisplay.getDisplayIdLocked());
            return;
        }
        final String uniqueId = primaryDisplayDeviceLocked.getUniqueId();
        final DisplayDeviceConfig displayDeviceConfig = primaryDisplayDeviceLocked.getDisplayDeviceConfig();
        final IBinder displayTokenLocked = primaryDisplayDeviceLocked.getDisplayTokenLocked();
        final DisplayDeviceInfo displayDeviceInfoLocked = primaryDisplayDeviceLocked.getDisplayDeviceInfoLocked();
        DisplayInfo displayInfoLocked = this.mLogicalDisplay.getDisplayInfoLocked();
        final int i2 = displayInfoLocked.logicalWidth;
        final int i3 = displayInfoLocked.logicalHeight;
        final boolean isEnabledLocked = this.mLogicalDisplay.isEnabledLocked();
        final boolean isInTransitionLocked = this.mLogicalDisplay.isInTransitionLocked();
        final boolean z = this.mLogicalDisplay.getPrimaryDisplayDeviceLocked() != null && this.mLogicalDisplay.getPrimaryDisplayDeviceLocked().getDisplayDeviceInfoLocked().type == 1;
        final String str = this.mLogicalDisplay.getDisplayInfoLocked().thermalBrightnessThrottlingDataId;
        this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$onDisplayChanged$3(primaryDisplayDeviceLocked, uniqueId, displayDeviceConfig, str, displayTokenLocked, displayDeviceInfoLocked, highBrightnessModeMetadata, i2, i3, isEnabledLocked, isInTransitionLocked, z);
            }
        }, this.mClock.uptimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ void lambda$onDisplayChanged$3(com.android.server.display.DisplayDevice r3, java.lang.String r4, com.android.server.display.DisplayDeviceConfig r5, java.lang.String r6, android.os.IBinder r7, com.android.server.display.DisplayDeviceInfo r8, com.android.server.display.HighBrightnessModeMetadata r9, int r10, int r11, boolean r12, boolean r13, boolean r14) {
        /*
            r2 = this;
            com.android.server.display.DisplayDevice r0 = r2.mDisplayDevice
            r1 = 1
            if (r0 == r3) goto L29
            r2.mDisplayDevice = r3
            r2.mUniqueDisplayId = r4
            int r3 = r4.hashCode()
            r2.mDisplayStatsId = r3
            r2.mDisplayDeviceConfig = r5
            r2.mThermalBrightnessThrottlingDataId = r6
            r2.loadFromDisplayDeviceConfig(r7, r8, r9)
            com.android.server.display.DisplayPowerProximityStateController r3 = r2.mDisplayPowerProximityStateController
            r3.notifyDisplayDeviceChanged(r5)
            com.android.server.display.DisplayPowerState r3 = r2.mPowerState
            r3.resetScreenState()
            com.android.server.display.DisplayPowerController2$EarlyWakeUpManager r3 = r2.mEarlyWakeUpManager
            if (r3 == 0) goto L27
            r3.invalidateCurrentRequest()
        L27:
            r3 = r1
            goto L53
        L29:
            java.lang.String r3 = r2.mThermalBrightnessThrottlingDataId
            boolean r3 = java.util.Objects.equals(r3, r6)
            if (r3 != 0) goto L41
            r2.mThermalBrightnessThrottlingDataId = r6
            com.android.server.display.BrightnessThrottler r3 = r2.mBrightnessThrottler
            java.util.HashMap r4 = r5.getThermalBrightnessThrottlingDataMapByThrottlingId()
            java.lang.String r5 = r2.mThermalBrightnessThrottlingDataId
            java.lang.String r6 = r2.mUniqueDisplayId
            r3.loadThermalBrightnessThrottlingDataFromDisplayDeviceConfig(r4, r5, r6)
            goto L27
        L41:
            boolean r3 = com.android.server.power.PowerManagerUtil.SEC_FEATURE_DUAL_DISPLAY
            if (r3 != 0) goto L52
            com.android.server.display.HighBrightnessModeController r3 = r2.mHbmController
            boolean r3 = r3.isResolutionChanged(r10, r11)
            if (r3 == 0) goto L52
            com.android.server.display.HighBrightnessModeController r3 = r2.mHbmController
            r3.handleResolutionChange(r10, r11)
        L52:
            r3 = 0
        L53:
            boolean r4 = r2.mIsEnabled
            if (r4 != r12) goto L5e
            boolean r4 = r2.mIsInTransition
            if (r4 == r13) goto L5c
            goto L5e
        L5c:
            r1 = r3
            goto L62
        L5e:
            r2.mIsEnabled = r12
            r2.mIsInTransition = r13
        L62:
            r2.mIsDisplayInternal = r14
            if (r1 == 0) goto L69
            r2.lambda$new$0()
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerController2.lambda$onDisplayChanged$3(com.android.server.display.DisplayDevice, java.lang.String, com.android.server.display.DisplayDeviceConfig, java.lang.String, android.os.IBinder, com.android.server.display.DisplayDeviceInfo, com.android.server.display.HighBrightnessModeMetadata, int, int, boolean, boolean, boolean):void");
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void stop() {
        synchronized (this.mLock) {
            clearDisplayBrightnessFollowersLocked();
            this.mStopped = true;
            this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(7), this.mClock.uptimeMillis());
            AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
            if (automaticBrightnessController != null) {
                automaticBrightnessController.stop();
            }
            this.mDisplayBrightnessController.stop();
            this.mContext.getContentResolver().unregisterContentObserver(this.mSettingsObserver);
        }
    }

    public final void loadFromDisplayDeviceConfig(IBinder iBinder, DisplayDeviceInfo displayDeviceInfo, HighBrightnessModeMetadata highBrightnessModeMetadata) {
        if (PowerManagerUtil.SEC_FEATURE_DUAL_DISPLAY && this.mIsDisplayInternal) {
            reloadReduceBrightColours();
            this.mHbmController.setHighBrightnessModeMetadata(highBrightnessModeMetadata);
            this.mHbmController.resetHbmData(displayDeviceInfo.width, displayDeviceInfo.height, iBinder, displayDeviceInfo.uniqueId, this.mDisplayDeviceConfig.getHighBrightnessModeData(), new HighBrightnessModeController.HdrBrightnessDeviceConfig() { // from class: com.android.server.display.DisplayPowerController2.2
                @Override // com.android.server.display.HighBrightnessModeController.HdrBrightnessDeviceConfig
                public float getHdrBrightnessFromSdr(float f, float f2) {
                    return DisplayPowerController2.this.mDisplayDeviceConfig.getHdrBrightnessFromSdr(f, f2);
                }
            });
            return;
        }
        loadBrightnessRampRates();
        loadNitsRange(this.mContext.getResources());
        setUpAutoBrightness(this.mContext.getResources(), this.mHandler);
        reloadReduceBrightColours();
        RampAnimator.DualRampAnimator dualRampAnimator = this.mScreenBrightnessRampAnimator;
        if (dualRampAnimator != null) {
            dualRampAnimator.setAnimationTimeLimits(this.mBrightnessRampIncreaseMaxTimeMillis, this.mBrightnessRampDecreaseMaxTimeMillis);
        }
        this.mHbmController.setHighBrightnessModeMetadata(highBrightnessModeMetadata);
        this.mHbmController.resetHbmData(displayDeviceInfo.width, displayDeviceInfo.height, iBinder, displayDeviceInfo.uniqueId, this.mDisplayDeviceConfig.getHighBrightnessModeData(), new HighBrightnessModeController.HdrBrightnessDeviceConfig() { // from class: com.android.server.display.DisplayPowerController2.3
            @Override // com.android.server.display.HighBrightnessModeController.HdrBrightnessDeviceConfig
            public float getHdrBrightnessFromSdr(float f, float f2) {
                return DisplayPowerController2.this.mDisplayDeviceConfig.getHdrBrightnessFromSdr(f, f2);
            }
        });
        this.mBrightnessThrottler.loadThermalBrightnessThrottlingDataFromDisplayDeviceConfig(this.mDisplayDeviceConfig.getThermalBrightnessThrottlingDataMapByThrottlingId(), this.mThermalBrightnessThrottlingDataId, this.mUniqueDisplayId);
    }

    public final void sendUpdatePowerState() {
        synchronized (this.mLock) {
            sendUpdatePowerStateLocked();
        }
    }

    public final void sendUpdatePowerStateLocked() {
        if (this.mStopped || this.mPendingUpdatePowerStateLocked) {
            return;
        }
        this.mPendingUpdatePowerStateLocked = true;
        this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(1), this.mClock.uptimeMillis());
    }

    public final void initialize(int i) {
        DisplayPowerState displayPowerState = this.mInjector.getDisplayPowerState(this.mBlanker, this.mColorFadeEnabled ? new ColorFade(this.mDisplayId) : null, this.mDisplayId, i);
        this.mPowerState = displayPowerState;
        if (this.mColorFadeEnabled) {
            FloatProperty floatProperty = DisplayPowerState.COLOR_FADE_LEVEL;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(displayPowerState, floatProperty, RATE_FROM_DOZE_TO_ON, 1.0f);
            this.mColorFadeOnAnimator = ofFloat;
            ofFloat.setDuration(160L);
            this.mColorFadeOnAnimator.addListener(this.mAnimatorListener);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mPowerState, floatProperty, 1.0f, RATE_FROM_DOZE_TO_ON);
            this.mColorFadeOffAnimator = ofFloat2;
            ofFloat2.setDuration(320L);
            this.mColorFadeOffAnimator.addListener(this.mAnimatorListener);
        }
        RampAnimator.DualRampAnimator dualRampAnimator = this.mInjector.getDualRampAnimator(this.mPowerState, DisplayPowerState.SCREEN_BRIGHTNESS_FLOAT, DisplayPowerState.SCREEN_SDR_BRIGHTNESS_FLOAT);
        this.mScreenBrightnessRampAnimator = dualRampAnimator;
        dualRampAnimator.setAnimationTimeLimits(this.mBrightnessRampIncreaseMaxTimeMillis, this.mBrightnessRampDecreaseMaxTimeMillis);
        this.mScreenBrightnessRampAnimator.setListener(this.mRampAnimatorListener);
        this.mHqmDataDispatcher = this.mInjector.getHqmDataDispatcher();
        noteScreenState(this.mPowerState.getScreenState());
        noteScreenBrightness(this.mPowerState.getScreenBrightness());
        float convertToAdjustedNits = this.mDisplayBrightnessController.convertToAdjustedNits(this.mPowerState.getScreenBrightness());
        if (convertToAdjustedNits >= RATE_FROM_DOZE_TO_ON) {
            if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL) {
                AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
                if (adaptiveBrightnessLongtermModelBuilder != null) {
                    adaptiveBrightnessLongtermModelBuilder.start(convertToAdjustedNits);
                }
            } else {
                this.mBrightnessTracker.start(convertToAdjustedNits);
            }
        }
        this.mDisplayBrightnessController.registerBrightnessSettingChangeListener(new BrightnessSetting.BrightnessSettingListener() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda8
            @Override // com.android.server.display.BrightnessSetting.BrightnessSettingListener
            public final void onBrightnessChanged(float f) {
                DisplayPowerController2.this.lambda$initialize$4(f);
            }
        });
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_auto_brightness_adj"), false, this.mSettingsObserver, -1);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor(this.mScreenBrightnessModeSettingName), false, this.mSettingsObserver, -1);
        if (this.mIsDisplayInternal) {
            this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("game_autobrightness_lock"), false, this.mSettingsObserver, -1);
        }
        if (this.mIsCoverDisplay && !PowerManagerUtil.SHIP_BUILD) {
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("cover_screen_demo_mode"), false, this.mSettingsObserver, -1);
        }
        handleBrightnessModeChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initialize$4(float f) {
        this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(8, Float.valueOf(f)), this.mClock.uptimeMillis());
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x018e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setUpAutoBrightness(android.content.res.Resources r36, android.os.Handler r37) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerController2.setUpAutoBrightness(android.content.res.Resources, android.os.Handler):void");
    }

    public final void loadBrightnessRampRates() {
        this.mBrightnessRampRateFastDecrease = this.mDisplayDeviceConfig.getBrightnessRampFastDecrease();
        this.mBrightnessRampRateFastIncrease = this.mDisplayDeviceConfig.getBrightnessRampFastIncrease();
        this.mBrightnessRampRateSlowDecrease = this.mDisplayDeviceConfig.getBrightnessRampSlowDecrease();
        this.mBrightnessRampRateSlowIncrease = this.mDisplayDeviceConfig.getBrightnessRampSlowIncrease();
        this.mBrightnessRampDecreaseMaxTimeMillis = this.mDisplayDeviceConfig.getBrightnessRampDecreaseMaxMillis();
        this.mBrightnessRampIncreaseMaxTimeMillis = this.mDisplayDeviceConfig.getBrightnessRampIncreaseMaxMillis();
    }

    public final void loadNitsRange(Resources resources) {
        DisplayDeviceConfig displayDeviceConfig = this.mDisplayDeviceConfig;
        if (displayDeviceConfig != null && displayDeviceConfig.getNits() != null) {
            this.mNitsRange = this.mDisplayDeviceConfig.getNits();
        } else {
            Slog.w(this.mTag, "Screen brightness nits configuration is unavailable; falling back");
            this.mNitsRange = BrightnessMappingStrategy.getFloatArray(resources.obtainTypedArray(17236294));
        }
    }

    public final void reloadReduceBrightColours() {
        ColorDisplayService.ColorDisplayServiceInternal colorDisplayServiceInternal = this.mCdsi;
        if (colorDisplayServiceInternal == null || !colorDisplayServiceInternal.isReduceBrightColorsActivated()) {
            return;
        }
        applyReduceBrightColorsSplineAdjustment();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setAutomaticScreenBrightnessMode(boolean z) {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            if (z) {
                automaticBrightnessController.switchToIdleMode();
            } else {
                automaticBrightnessController.switchToInteractiveScreenBrightnessMode();
            }
        }
    }

    public final void cleanupHandlerThreadAfterStop() {
        this.mDisplayPowerProximityStateController.cleanup();
        this.mHbmController.stop();
        this.mBrightnessThrottler.stop();
        this.mHandler.removeCallbacksAndMessages(null);
        this.mWakelockController.releaseAll();
        DisplayPowerState displayPowerState = this.mPowerState;
        reportStats(displayPowerState != null ? displayPowerState.getScreenBrightness() : RATE_FROM_DOZE_TO_ON);
        DisplayPowerState displayPowerState2 = this.mPowerState;
        if (displayPowerState2 != null) {
            displayPowerState2.stop();
            this.mPowerState = null;
        }
        ScreenOffBrightnessSensorController screenOffBrightnessSensorController = this.mScreenOffBrightnessSensorController;
        if (screenOffBrightnessSensorController != null) {
            screenOffBrightnessSensorController.stop();
        }
        ShutdownReceiver shutdownReceiver = this.mShutdownReceiver;
        if (shutdownReceiver != null) {
            this.mContext.unregisterReceiver(shutdownReceiver);
        }
    }

    /* renamed from: updatePowerState, reason: merged with bridge method [inline-methods] */
    public final void lambda$new$0() {
        Trace.traceBegin(131072L, "DisplayPowerController#updatePowerState");
        updatePowerStateInternal();
        Trace.traceEnd(131072L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:228:0x040c, code lost:
    
        if (r43.mWaitingAutoBrightnessFromDoze == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x040e, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x042e, code lost:
    
        if (r43.mWaitingAutoBrightnessFromDoze == false) goto L257;
     */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x04a3 A[LOOP:0: B:245:0x049d->B:247:0x04a3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0600  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0613  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0637  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x06d2  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x06d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x06fc  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x077d  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0782  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x078c  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0795  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x07a7  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x07be A[LOOP:1: B:416:0x07b8->B:418:0x07be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x07fa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:429:0x080c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0839 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0848 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:449:0x08f9  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x093e  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x095b  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0968 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:466:0x098e  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x09a4  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x09b8  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x09bd  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x09c6  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x09d1  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x09f8  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0a05  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0a1a  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0a27  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0a37 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0a3e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0a87  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0a94  */
    /* JADX WARN: Removed duplicated region for block: B:547:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0a89  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0a83  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0991  */
    /* JADX WARN: Removed duplicated region for block: B:557:0x095d  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0909  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x0807  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:570:0x0779  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:593:0x06a9  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0822  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:634:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:641:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:642:0x0363  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updatePowerStateInternal() {
        /*
            Method dump skipped, instructions count: 2715
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerController2.updatePowerStateInternal():void");
    }

    public final boolean shouldEnableMoreFastRampRateCase() {
        if (!this.mBrightnessReasonTemp.hasModifier(1) && this.mBrightnessReason.hasModifier(1)) {
            return true;
        }
        BrightnessReason brightnessReason = this.mBrightnessReasonTemp;
        return (brightnessReason.mReason == 4 && this.mBrightnessReason.mReason != 4) || brightnessReason.isReasonChanged(this.mBrightnessReason, 6);
    }

    public final boolean shouldEnableHdrRampRateCase() {
        return this.mBrightnessReasonTemp.isModifierChanged(this.mBrightnessReason, 4);
    }

    @Override // com.android.server.display.AutomaticBrightnessController.Callbacks
    public void updateBrightness() {
        sendUpdatePowerState();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void ignoreProximitySensorUntilChanged() {
        this.mDisplayPowerProximityStateController.ignoreProximitySensorUntilChanged();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setBrightnessConfiguration(BrightnessConfiguration brightnessConfiguration, boolean z) {
        Slog.d(this.mTag, "setBrightnessConfiguration: " + brightnessConfiguration + " shouldResetShortTermModel: " + z + " (" + Debug.getCallers(5) + ")");
        this.mHandler.obtainMessage(4, z ? 1 : 0, brightnessConfiguration == null ? 1 : 0, brightnessConfiguration).sendToTarget();
        this.mPendingForceUpdateAb = false;
        if (brightnessConfiguration == null || !"sec-backup".equals(brightnessConfiguration.getDescription())) {
            this.mBrightnessChangedByUser = false;
        }
        this.mLastBrightnessConfigurationTime = SystemClock.elapsedRealtime();
        this.mHandler.removeMessages(15);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(15), ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setTemporaryBrightness(float f) {
        this.mHandler.obtainMessage(5, Float.floatToIntBits(f), 0).sendToTarget();
        if (f >= RATE_FROM_DOZE_TO_ON) {
            updateLastBrightnessSettingChangedTime();
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setTemporaryBrightnessForSlowChange(float f, boolean z) {
        this.mHandler.obtainMessage(5, Float.floatToIntBits(f), z ? 1 : 0, 0).sendToTarget();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setTemporaryAutoBrightnessAdjustment(float f) {
        this.mHandler.obtainMessage(6, Float.floatToIntBits(f), 0).sendToTarget();
        updateLastBrightnessSettingChangedTime();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public BrightnessInfo getBrightnessInfo() {
        BrightnessInfo brightnessInfo;
        synchronized (this.mCachedBrightnessInfo) {
            CachedBrightnessInfo cachedBrightnessInfo = this.mCachedBrightnessInfo;
            brightnessInfo = new BrightnessInfo(cachedBrightnessInfo.brightness.value, cachedBrightnessInfo.adjustedBrightness.value, cachedBrightnessInfo.brightnessMin.value, cachedBrightnessInfo.brightnessMax.value, cachedBrightnessInfo.hbmMode.value, cachedBrightnessInfo.hbmTransitionPoint.value, cachedBrightnessInfo.brightnessMaxReason.value, cachedBrightnessInfo.isAnimating.value);
        }
        return brightnessInfo;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void onBootCompleted() {
        this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(13), this.mClock.uptimeMillis());
    }

    public final boolean saveBrightnessInfo(float f) {
        return saveBrightnessInfo(f, f);
    }

    public final boolean saveBrightnessInfo(float f, float f2) {
        boolean checkAndSetBoolean;
        synchronized (this.mCachedBrightnessInfo) {
            float min = Math.min(this.mHbmController.getCurrentBrightnessMin(), this.mBrightnessThrottler.getBrightnessCap());
            float min2 = Math.min(this.mHbmController.getCurrentBrightnessMax(), this.mBrightnessThrottler.getBrightnessCap());
            CachedBrightnessInfo cachedBrightnessInfo = this.mCachedBrightnessInfo;
            boolean checkAndSetFloat = cachedBrightnessInfo.checkAndSetFloat(cachedBrightnessInfo.brightness, f);
            boolean z = false;
            CachedBrightnessInfo cachedBrightnessInfo2 = this.mCachedBrightnessInfo;
            boolean checkAndSetFloat2 = checkAndSetFloat | false | cachedBrightnessInfo2.checkAndSetFloat(cachedBrightnessInfo2.adjustedBrightness, f2);
            CachedBrightnessInfo cachedBrightnessInfo3 = this.mCachedBrightnessInfo;
            boolean checkAndSetFloat3 = checkAndSetFloat2 | cachedBrightnessInfo3.checkAndSetFloat(cachedBrightnessInfo3.brightnessMin, min);
            CachedBrightnessInfo cachedBrightnessInfo4 = this.mCachedBrightnessInfo;
            boolean checkAndSetFloat4 = checkAndSetFloat3 | cachedBrightnessInfo4.checkAndSetFloat(cachedBrightnessInfo4.brightnessMax, min2);
            CachedBrightnessInfo cachedBrightnessInfo5 = this.mCachedBrightnessInfo;
            boolean checkAndSetInt = checkAndSetFloat4 | cachedBrightnessInfo5.checkAndSetInt(cachedBrightnessInfo5.hbmMode, this.mHbmController.getHighBrightnessMode());
            CachedBrightnessInfo cachedBrightnessInfo6 = this.mCachedBrightnessInfo;
            boolean checkAndSetFloat5 = checkAndSetInt | cachedBrightnessInfo6.checkAndSetFloat(cachedBrightnessInfo6.hbmTransitionPoint, this.mHbmController.getTransitionPoint());
            CachedBrightnessInfo cachedBrightnessInfo7 = this.mCachedBrightnessInfo;
            boolean checkAndSetInt2 = checkAndSetFloat5 | cachedBrightnessInfo7.checkAndSetInt(cachedBrightnessInfo7.brightnessMaxReason, this.mBrightnessThrottler.getBrightnessMaxReason());
            CachedBrightnessInfo cachedBrightnessInfo8 = this.mCachedBrightnessInfo;
            MutableBoolean mutableBoolean = cachedBrightnessInfo8.isAnimating;
            RampAnimator.DualRampAnimator dualRampAnimator = this.mScreenBrightnessRampAnimator;
            checkAndSetBoolean = checkAndSetInt2 | cachedBrightnessInfo8.checkAndSetBoolean(mutableBoolean, dualRampAnimator != null && dualRampAnimator.isAnimating());
            if (checkAndSetBoolean) {
                String str = this.mTag;
                StringBuilder sb = new StringBuilder();
                sb.append("saveBrightnessInfo: brt:");
                sb.append(f);
                sb.append(" adjBrt:");
                sb.append(f2);
                sb.append(" min:");
                sb.append(min);
                sb.append(" max:");
                sb.append(min2);
                sb.append(" hbm:");
                sb.append(this.mHbmController.getHighBrightnessMode());
                sb.append(" tp:");
                sb.append(this.mHbmController.getTransitionPoint());
                sb.append(" throttler:");
                sb.append(this.mBrightnessThrottler.getBrightnessMaxReason());
                sb.append(" isAnimating:");
                RampAnimator.DualRampAnimator dualRampAnimator2 = this.mScreenBrightnessRampAnimator;
                if (dualRampAnimator2 != null && dualRampAnimator2.isAnimating()) {
                    z = true;
                }
                sb.append(z);
                Slog.d(str, sb.toString());
            }
        }
        return checkAndSetBoolean;
    }

    /* renamed from: postBrightnessChangeRunnable, reason: merged with bridge method [inline-methods] */
    public void lambda$new$1() {
        this.mHandler.post(this.mOnBrightnessChangeRunnable);
    }

    public final HighBrightnessModeController createHbmControllerLocked() {
        DisplayDeviceConfig displayDeviceConfig = this.mLogicalDisplay.getPrimaryDisplayDeviceLocked().getDisplayDeviceConfig();
        IBinder displayTokenLocked = this.mLogicalDisplay.getPrimaryDisplayDeviceLocked().getDisplayTokenLocked();
        String uniqueId = this.mLogicalDisplay.getPrimaryDisplayDeviceLocked().getUniqueId();
        DisplayDeviceConfig.HighBrightnessModeData highBrightnessModeData = displayDeviceConfig != null ? displayDeviceConfig.getHighBrightnessModeData() : null;
        DisplayInfo displayInfoLocked = this.mLogicalDisplay.getDisplayInfoLocked();
        return new HighBrightnessModeController(this.mHandler, displayInfoLocked.logicalWidth, displayInfoLocked.logicalHeight, displayTokenLocked, uniqueId, Math.min(((PowerManager) this.mContext.getSystemService(PowerManager.class)).getBrightnessConstraint(0), this.mScreenBrightnessDimConfig), this.mScreenExtendedBrightnessRangeMaximum, highBrightnessModeData, new HighBrightnessModeController.HdrBrightnessDeviceConfig() { // from class: com.android.server.display.DisplayPowerController2.7
            @Override // com.android.server.display.HighBrightnessModeController.HdrBrightnessDeviceConfig
            public float getHdrBrightnessFromSdr(float f, float f2) {
                return DisplayPowerController2.this.mDisplayDeviceConfig.getHdrBrightnessFromSdr(f, f2);
            }
        }, new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$createHbmControllerLocked$5();
            }
        }, this.mHighBrightnessModeMetadata, this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createHbmControllerLocked$5() {
        sendUpdatePowerState();
        lambda$new$1();
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            automaticBrightnessController.update();
        }
    }

    public final BrightnessThrottler createBrightnessThrottlerLocked() {
        return new BrightnessThrottler(this.mHandler, new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$createBrightnessThrottlerLocked$6();
            }
        }, this.mUniqueDisplayId, this.mLogicalDisplay.getDisplayInfoLocked().thermalBrightnessThrottlingDataId, this.mLogicalDisplay.getPrimaryDisplayDeviceLocked().getDisplayDeviceConfig().getThermalBrightnessThrottlingDataMapByThrottlingId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createBrightnessThrottlerLocked$6() {
        sendUpdatePowerState();
        lambda$new$1();
    }

    public final void blockScreenOn() {
        if (this.mPendingScreenOnUnblocker == null) {
            Trace.asyncTraceBegin(131072L, "Screen on blocked", 0);
            this.mPendingScreenOnUnblocker = new ScreenOnUnblocker();
            this.mScreenOnBlockStartRealTime = SystemClock.elapsedRealtime();
            Slog.i(this.mTag, "Blocking screen on until initial contents have been drawn.");
            PowerManagerUtil.sCurrentScreenOnProfiler.noteWmsStart();
        }
    }

    public final void unblockScreenOn() {
        if (this.mPendingScreenOnUnblocker != null) {
            this.mPendingScreenOnUnblocker = null;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.mScreenOnBlockStartRealTime;
            Slog.i(this.mTag, "Unblocked screen on after " + elapsedRealtime + " ms");
            Trace.asyncTraceEnd(131072L, "Screen on blocked", 0);
            PowerManagerUtil.sCurrentScreenOnProfiler.noteWmsEnd();
        }
    }

    public final void blockScreenOff() {
        if (this.mPendingScreenOffUnblocker == null) {
            Trace.asyncTraceBegin(131072L, "Screen off blocked", 0);
            this.mPendingScreenOffUnblocker = new ScreenOffUnblocker();
            this.mScreenOffBlockStartRealTime = SystemClock.elapsedRealtime();
            Slog.i(this.mTag, "Blocking screen off");
        }
    }

    public final void unblockScreenOff() {
        if (this.mPendingScreenOffUnblocker != null) {
            this.mPendingScreenOffUnblocker = null;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.mScreenOffBlockStartRealTime;
            Slog.i(this.mTag, "Unblocked screen off after " + elapsedRealtime + " ms");
            Trace.asyncTraceEnd(131072L, "Screen off blocked", 0);
        }
    }

    public final boolean setScreenState(int i) {
        return setScreenState(i, false);
    }

    public final boolean setScreenState(int i, boolean z) {
        int i2;
        boolean z2 = i == 1;
        if (this.mPowerState.getScreenState() != i || this.mReportedScreenStateToPolicy == -1) {
            boolean z3 = this.mPowerState.getScreenState() == 3 || this.mPowerState.getScreenState() == 4;
            if (this.mIsSupportedAodMode) {
                if (z3 && i == 2 && !this.mSeamlessAodReady) {
                    Slog.d(this.mTag, "setScreenState(): mSeamlessAodReady : false AOD");
                    if (!this.mPendingScreenOnByAodReady) {
                        this.mAodManagerInternal.screenTurningOn(this.mSeamlessAodReadyListener);
                        this.mPendingScreenOnByAodReady = true;
                    }
                    return false;
                }
                this.mSeamlessAodReady = false;
                this.mPendingScreenOnByAodReady = false;
            }
            if (z2 && !this.mDisplayPowerProximityStateController.isScreenOffBecauseOfProximity()) {
                int i3 = this.mReportedScreenStateToPolicy;
                if (i3 == 2 || i3 == -1) {
                    setReportedScreenState(3);
                    blockScreenOff();
                    Slog.d(this.mTag, "mWindowManagerPolicy.screenTurningOff()");
                    this.mWindowManagerPolicy.screenTurningOff(this.mDisplayId, this.mPendingScreenOffUnblocker);
                    unblockScreenOff();
                } else if (this.mPendingScreenOffUnblocker != null) {
                    return false;
                }
            }
            if (!z && this.mPowerState.getScreenState() != i && readyToUpdateDisplayState()) {
                Trace.traceCounter(131072L, "ScreenState", i);
                SystemProperties.set("debug.tracing.screen_state", String.valueOf(i));
                this.mPowerState.setScreenState(i);
                noteScreenState(i);
            }
        }
        if (z2 && this.mReportedScreenStateToPolicy != 0 && !this.mDisplayPowerProximityStateController.isScreenOffBecauseOfProximity()) {
            setReportedScreenState(0);
            unblockScreenOn();
            Slog.d(this.mTag, "mWindowManagerPolicy.screenTurnedOff()");
            this.mWindowManagerPolicy.screenTurnedOff(this.mDisplayId, this.mIsInTransition);
        } else if (!z2 && this.mReportedScreenStateToPolicy == 3) {
            unblockScreenOff();
            Slog.d(this.mTag, "mWindowManagerPolicy.screenTurnedOff()(transitional)");
            this.mWindowManagerPolicy.screenTurnedOff(this.mDisplayId, this.mIsInTransition);
            setReportedScreenState(0);
        }
        if (!z2 && ((i2 = this.mReportedScreenStateToPolicy) == 0 || i2 == -1)) {
            setReportedScreenState(1);
            if (this.mPowerState.getColorFadeLevel() == RATE_FROM_DOZE_TO_ON) {
                blockScreenOn();
            } else {
                unblockScreenOn();
            }
            Slog.d(this.mTag, "mWindowManagerPolicy.screenTurningOn() +");
            this.mWindowManagerPolicy.screenTurningOn(this.mDisplayId, this.mPendingScreenOnUnblocker);
            Slog.d(this.mTag, "mWindowManagerPolicy.screenTurningOn() -");
        }
        return this.mPendingScreenOnUnblocker == null;
    }

    public final void setReportedScreenState(int i) {
        Trace.traceCounter(131072L, "ReportedScreenStateToPolicy", i);
        this.mReportedScreenStateToPolicy = i;
    }

    public final void loadAmbientLightSensor() {
        if (this.mDisplayId == 0 || this.mIsCoverDisplay) {
            this.mLightSensor = this.mSensorManager.getDefaultSensor(65601);
        }
        if (this.mDisplayId == 0 && this.mLightSensor == null) {
            this.mLightSensor = this.mSensorManager.getDefaultSensor(65604);
        }
    }

    public final void loadScreenOffBrightnessSensor() {
        DisplayDeviceConfig.SensorData screenOffBrightnessSensor = this.mDisplayDeviceConfig.getScreenOffBrightnessSensor();
        this.mScreenOffBrightnessSensor = SensorUtils.findSensor(this.mSensorManager, screenOffBrightnessSensor.type, screenOffBrightnessSensor.name, 0);
    }

    public final float clampScreenBrightnessForFinal(float f) {
        if (Float.isNaN(f)) {
            f = RATE_FROM_DOZE_TO_ON;
        }
        return MathUtils.constrain(f, this.mHbmController.getCurrentBrightnessMin(), this.mScreenExtendedBrightnessRangeMaximum);
    }

    public final float clampScreenBrightness(float f) {
        if (Float.isNaN(f)) {
            f = RATE_FROM_DOZE_TO_ON;
        }
        return MathUtils.constrain(f, this.mHbmController.getCurrentBrightnessMin(), this.mHbmController.getCurrentBrightnessMax());
    }

    public final void animateScreenBrightness(float f, float f2, float f3, float f4) {
        String str;
        String str2 = this.mTag;
        StringBuilder sb = new StringBuilder();
        sb.append("Animating brightness: target=");
        sb.append(PowerManagerUtil.brightnessToString(f));
        if (f != f2) {
            str = ", sdrTarget=" + PowerManagerUtil.brightnessToString(f2);
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(String.format(", rate=%.3f", Float.valueOf(f3)));
        sb.append(Float.isNaN(f4) ? "" : String.format(", rateAtHbm=%.3f", Float.valueOf(f4)));
        sb.append(", reason=");
        sb.append(this.mBrightnessReasonTemp.changesToString());
        Slog.d(str2, sb.toString());
        if (this.mBrightnessReasonTemp.hasLoggableChanges(this.mBrightnessReason)) {
            this.mPowerHistorian.onBrightnessReasonChanged(this.mBrightnessReasonTemp.changesToString());
        }
        if (this.mScreenBrightnessRampAnimator.animateTo(f, f2, f3, f4)) {
            if (CoreRune.FW_VRR_REFRESH_RATE_TOKEN && this.mOnBrightnessAnimationConsumer != null && this.mScreenBrightnessRampAnimator.isAnimating() && !this.mBrightnessAnimationConsumerInvoked) {
                this.mWakelockController.acquireWakelock(6);
                this.mBrightnessAnimationConsumerInvoked = true;
                this.mOnBrightnessAnimationConsumer.accept(Boolean.TRUE);
            }
            Trace.traceCounter(131072L, "TargetScreenBrightness", (int) f);
            SystemProperties.set("debug.tracing.screen_brightness", String.valueOf(f));
            noteScreenBrightness(f);
        }
    }

    public final void animateScreenStateChange(int i, boolean z) {
        int i2;
        Slog.d(this.mTag, "animateScreenStateChange: target=" + Display.stateToString(i) + ", mIsEnabled=" + this.mIsEnabled);
        if (this.mColorFadeEnabled && (this.mColorFadeOnAnimator.isStarted() || this.mColorFadeOffAnimator.isStarted())) {
            if (PowerManagerUtil.SEC_FEATURE_FOLD_COVER_DISPLAY || i != 2) {
                return;
            }
            this.mPendingScreenOff = false;
            if (this.mColorFadeOffAnimator.isStarted()) {
                Slog.d(this.mTag, "animateScreenStateChange: mColorFadeOffAnimator.cancel()");
                this.mColorFadeOffAnimator.cancel();
            }
        }
        if (this.mDisplayBlanksAfterDozeConfig && Display.isDozeState(this.mPowerState.getScreenState()) && !Display.isDozeState(i)) {
            this.mPowerState.prepareColorFade(this.mContext, this.mColorFadeFadesConfig ? 2 : 0);
            ObjectAnimator objectAnimator = this.mColorFadeOffAnimator;
            if (objectAnimator != null) {
                objectAnimator.end();
            }
            setScreenState(1, i != 1);
        }
        if (this.mPendingScreenOff && i != 1) {
            setScreenState(1);
            this.mPendingScreenOff = false;
            this.mPowerState.dismissColorFadeResources();
        }
        if (i == 2) {
            if (this.mIsSupportedAodMode && PowerManagerUtil.SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION && this.mPowerState.getScreenState() == 4) {
                setScreenState(3);
            }
            if (this.mNeedPrepareColorFade && this.mPowerRequest.lastWakeUpReason == 9) {
                if (this.mPowerState.getColorFadeLevel() == RATE_FROM_DOZE_TO_ON && this.mPowerState.prepareColorFade(this.mContext, 2)) {
                    Slog.d(this.mTag, "draw ColorFade due to unfolding");
                    this.mPowerState.setColorFadeLevel(RATE_FROM_DOZE_TO_ON);
                }
                this.mNeedPrepareColorFade = false;
            }
            if (setScreenState(2)) {
                if (this.mAutomaticBrightnessController != null && this.mAutomaticBrightnessStrategy.isAutoBrightnessEnabled() && !this.mAutomaticBrightnessController.isAmbientLuxValid() && this.mPowerState.getScreenState() == 2 && Float.isNaN(this.mPowerRequest.screenBrightnessOverride) && !isLightSensorCovered() && (!this.mIsCoverDisplay || this.mDualScreenPolicy == 1)) {
                    Slog.d(this.mTag, "animateScreenStateChange is returned because lux is not yet valid!");
                    return;
                } else {
                    this.mPowerState.setColorFadeLevel(1.0f);
                    this.mPowerState.dismissColorFade();
                    return;
                }
            }
            return;
        }
        if (i == 3) {
            if (!(this.mScreenBrightnessRampAnimator.isAnimating() && this.mPowerState.getScreenState() == 2) && setScreenState(3)) {
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        if (i == 4) {
            if (!this.mScreenBrightnessRampAnimator.isAnimating() || this.mPowerState.getScreenState() == 4) {
                if (this.mPowerState.getScreenState() != 4) {
                    if (!setScreenState(3)) {
                        return;
                    } else {
                        setScreenState(4);
                    }
                }
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        if (i == 6) {
            if (!this.mScreenBrightnessRampAnimator.isAnimating() || this.mPowerState.getScreenState() == 6) {
                if (this.mPowerState.getScreenState() != 6) {
                    if (!setScreenState(2)) {
                        return;
                    } else {
                        setScreenState(6);
                    }
                }
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        this.mPendingScreenOff = true;
        if (!this.mColorFadeEnabled) {
            this.mPowerState.setColorFadeLevel(RATE_FROM_DOZE_TO_ON);
        }
        if (this.mPowerState.getColorFadeLevel() == RATE_FROM_DOZE_TO_ON) {
            setScreenState(1);
            this.mPendingScreenOff = false;
            this.mPowerState.dismissColorFadeResources();
            return;
        }
        if (this.mColorFadeFadesConfig) {
            i2 = 2;
        } else {
            i2 = SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED ? 3 : 1;
        }
        if (z && this.mPowerState.prepareColorFade(this.mContext, i2) && this.mPowerState.getScreenState() != 1) {
            if (i2 == 3) {
                this.mColorFadeOffAnimator.setInterpolator(COLOR_FADE_PATH_INTERPOLATOR);
            } else {
                this.mColorFadeOffAnimator.setInterpolator(COLOR_FADE_DEFAULT_INTERPOLATOR);
            }
            this.mColorFadeOffAnimator.start();
            return;
        }
        this.mPowerState.prepareColorFade(this.mContext, 2);
        this.mColorFadeOffAnimator.end();
    }

    public final void sendOnStateChangedWithWakelock() {
        if (this.mWakelockController.acquireWakelock(4)) {
            this.mHandler.post(this.mWakelockController.getOnStateChangedRunnable());
        }
    }

    public final void logDisplayPolicyChanged(int i) {
        LogMaker logMaker = new LogMaker(1696);
        logMaker.setType(6);
        logMaker.setSubtype(i);
        MetricsLogger.action(logMaker);
    }

    public final void handleSettingsChange(boolean z) {
        AutomaticBrightnessController automaticBrightnessController;
        DisplayBrightnessController displayBrightnessController = this.mDisplayBrightnessController;
        displayBrightnessController.setPendingScreenBrightness(displayBrightnessController.getScreenBrightnessSetting());
        this.mAutomaticBrightnessStrategy.updatePendingAutoBrightnessAdjustments(z);
        this.mAutomaticBrightnessStrategy.updateGameAutoBrightnessLock();
        if (z) {
            DisplayBrightnessController displayBrightnessController2 = this.mDisplayBrightnessController;
            displayBrightnessController2.setAndNotifyCurrentScreenBrightness(displayBrightnessController2.getPendingScreenBrightness());
            if (!PowerManagerUtil.USE_SEC_LONG_TERM_MODEL && (automaticBrightnessController = this.mAutomaticBrightnessController) != null) {
                automaticBrightnessController.resetShortTermModel();
            }
        }
        if (!PowerManagerUtil.SHIP_BUILD && this.mIsCoverDisplay) {
            this.mCoverDisplayDemoEnabled = getCoverDisplayDemoSetting();
        }
        this.mPrevScreenBrightness = this.mDisplayBrightnessController.getCurrentBrightness();
        String format = String.format(" sb: %.3f abAdj: %.3f sbLock: %s", Float.valueOf(this.mDisplayBrightnessController.getPendingScreenBrightness()), Float.valueOf(this.mAutomaticBrightnessStrategy.getPendingAutoBrightnessAdjustment()), Boolean.valueOf(this.mAutomaticBrightnessStrategy.isGameAutoBrightnessLocked()));
        String str = this.mTag;
        StringBuilder sb = new StringBuilder();
        sb.append("[api] handleSettingsChange:");
        sb.append(z ? " userSwitch" : "");
        sb.append(format);
        Slog.d(str, sb.toString());
        sendUpdatePowerState();
    }

    public final void handleBrightnessModeChange() {
        final int intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), this.mScreenBrightnessModeSettingName, 0, -2);
        this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$handleBrightnessModeChange$7(intForUser);
            }
        }, this.mClock.uptimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleBrightnessModeChange$7(int i) {
        boolean shouldUseAutoBrightness = this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness();
        this.mAutomaticBrightnessStrategy.setUseAutoBrightness(i == 1);
        if (shouldUseAutoBrightness != this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness()) {
            if (!this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness() && this.mAutomaticBrightnessController != null) {
                this.mPowerHistorian.onAutoBrightnessEvent("ShortTermModel: reset data, manual");
                this.mAutomaticBrightnessController.resetShortTermModel();
            }
            updateLastBrightnessSettingChangedTime();
            if (PowerManagerUtil.SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY) {
                postBrightnessModeChangeRunnable();
            }
        }
        Slog.d(this.mTag, "[api] handleBrightnessModeChange: shouldUseAutoBrightness= " + this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness());
        lambda$new$0();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public float getScreenBrightnessSetting() {
        return this.mDisplayBrightnessController.getScreenBrightnessSetting();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setBrightness(float f) {
        this.mDisplayBrightnessController.setBrightness(f);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public int getDisplayId() {
        return this.mDisplayId;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public int getLeadDisplayId() {
        return this.mLeadDisplayId;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setBrightnessToFollow(float f, float f2, float f3) {
        this.mHbmController.onAmbientLuxChange(f3);
        if (f2 < RATE_FROM_DOZE_TO_ON) {
            this.mDisplayBrightnessController.setBrightnessToFollow(Float.valueOf(f));
        } else {
            float convertToFloatScale = this.mDisplayBrightnessController.convertToFloatScale(f2);
            if (BrightnessUtils.isValidBrightnessValue(convertToFloatScale)) {
                this.mDisplayBrightnessController.setBrightnessToFollow(Float.valueOf(convertToFloatScale));
            } else {
                this.mDisplayBrightnessController.setBrightnessToFollow(Float.valueOf(f));
            }
        }
        sendUpdatePowerState();
    }

    public final void notifyBrightnessTrackerChanged(float f, boolean z, boolean z2, boolean z3, boolean z4) {
        AutomaticBrightnessController automaticBrightnessController;
        AutomaticBrightnessController automaticBrightnessController2;
        float convertToAdjustedNits = this.mDisplayBrightnessController.convertToAdjustedNits(f);
        if (z4 || (automaticBrightnessController = this.mAutomaticBrightnessController) == null || automaticBrightnessController.isInIdleMode() || !z3) {
            return;
        }
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL) {
            if (this.mAdaptiveBrightnessLongtermModelBuilder == null) {
                return;
            }
        } else if (this.mBrightnessTracker == null) {
            return;
        }
        if (!this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness() || convertToAdjustedNits < RATE_FROM_DOZE_TO_ON) {
            return;
        }
        if ((z && ((automaticBrightnessController2 = this.mAutomaticBrightnessController) == null || !automaticBrightnessController2.hasValidAmbientLux())) || this.mAutomaticBrightnessController.isHbmLux()) {
            z = false;
        }
        boolean z5 = z;
        if (BrightnessSynchronizer.floatEquals(this.mLastNotifiedBrightness, f)) {
            return;
        }
        DisplayManagerInternal.DisplayPowerRequest displayPowerRequest = this.mPowerRequest;
        float f2 = displayPowerRequest.screenBrightnessScaleFactor;
        if (f2 < RATE_FROM_DOZE_TO_ON || f2 == 1.0f) {
            this.mLastNotifiedBrightness = f;
            float f3 = displayPowerRequest.lowPowerMode ? displayPowerRequest.screenLowPowerBrightnessFactor : 1.0f;
            if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL) {
                this.mAdaptiveBrightnessLongtermModelBuilder.notifyBrightnessChanged(convertToAdjustedNits, z5, f3, z2, this.mAutomaticBrightnessController.isDefaultConfig(), this.mUniqueDisplayId, this.mAutomaticBrightnessController.getBrightnessSpline());
            } else {
                this.mBrightnessTracker.notifyBrightnessChanged(convertToAdjustedNits, z5, f3, z2, this.mAutomaticBrightnessController.isDefaultConfig(), this.mUniqueDisplayId, this.mAutomaticBrightnessController.getLastSensorValues(), this.mAutomaticBrightnessController.getLastSensorTimestamps());
            }
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void addDisplayBrightnessFollower(DisplayPowerControllerInterface displayPowerControllerInterface) {
        synchronized (this.mLock) {
            this.mDisplayBrightnessFollowers.append(displayPowerControllerInterface.getDisplayId(), displayPowerControllerInterface);
            sendUpdatePowerStateLocked();
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void removeDisplayBrightnessFollower(final DisplayPowerControllerInterface displayPowerControllerInterface) {
        synchronized (this.mLock) {
            this.mDisplayBrightnessFollowers.remove(displayPowerControllerInterface.getDisplayId());
            this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayPowerControllerInterface.this.setBrightnessToFollow(Float.NaN, -1.0f, DisplayPowerController2.RATE_FROM_DOZE_TO_ON);
                }
            }, this.mClock.uptimeMillis());
        }
    }

    public final void clearDisplayBrightnessFollowersLocked() {
        for (int i = 0; i < this.mDisplayBrightnessFollowers.size(); i++) {
            final DisplayPowerControllerInterface displayPowerControllerInterface = (DisplayPowerControllerInterface) this.mDisplayBrightnessFollowers.valueAt(i);
            this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayPowerControllerInterface.this.setBrightnessToFollow(Float.NaN, -1.0f, DisplayPowerController2.RATE_FROM_DOZE_TO_ON);
                }
            }, this.mClock.uptimeMillis());
        }
        this.mDisplayBrightnessFollowers.clear();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void dump(final PrintWriter printWriter) {
        synchronized (this.mLock) {
            Slog.d(this.mTag, "dump");
            printWriter.println();
            printWriter.println("Display Power Controller:");
            printWriter.println("  mDisplayId=" + this.mDisplayId);
            printWriter.println("  mLeadDisplayId=" + this.mLeadDisplayId);
            printWriter.println("  mLightSensor=" + this.mLightSensor);
            printWriter.println("  mDisplayBrightnessFollowers=" + this.mDisplayBrightnessFollowers);
            printWriter.println();
            printWriter.println("Display Power Controller Locked State:");
            printWriter.println("  mDisplayReadyLocked=" + this.mDisplayReadyLocked);
            printWriter.println("  mPendingRequestLocked=" + this.mPendingRequestLocked);
            printWriter.println("  mPendingRequestChangedLocked=" + this.mPendingRequestChangedLocked);
            printWriter.println("  mPendingUpdatePowerStateLocked=" + this.mPendingUpdatePowerStateLocked);
        }
        printWriter.println();
        printWriter.println("Display Power Controller Configuration:");
        printWriter.println("  mScreenBrightnessDozeConfig=" + this.mScreenBrightnessDozeConfig);
        printWriter.println("  mScreenBrightnessDimConfig=" + this.mScreenBrightnessDimConfig);
        printWriter.println("  mUseSoftwareAutoBrightnessConfig=" + this.mUseSoftwareAutoBrightnessConfig);
        printWriter.println("  mSkipScreenOnBrightnessRamp=" + this.mSkipScreenOnBrightnessRamp);
        printWriter.println("  mColorFadeFadesConfig=" + this.mColorFadeFadesConfig);
        printWriter.println("  mColorFadeEnabled=" + this.mColorFadeEnabled);
        printWriter.println("  mIsDisplayInternal=" + this.mIsDisplayInternal);
        synchronized (this.mCachedBrightnessInfo) {
            printWriter.println("  mCachedBrightnessInfo.brightness=" + this.mCachedBrightnessInfo.brightness.value);
            printWriter.println("  mCachedBrightnessInfo.adjustedBrightness=" + this.mCachedBrightnessInfo.adjustedBrightness.value);
            printWriter.println("  mCachedBrightnessInfo.brightnessMin=" + this.mCachedBrightnessInfo.brightnessMin.value);
            printWriter.println("  mCachedBrightnessInfo.brightnessMax=" + this.mCachedBrightnessInfo.brightnessMax.value);
            printWriter.println("  mCachedBrightnessInfo.hbmMode=" + this.mCachedBrightnessInfo.hbmMode.value);
            printWriter.println("  mCachedBrightnessInfo.hbmTransitionPoint=" + this.mCachedBrightnessInfo.hbmTransitionPoint.value);
            printWriter.println("  mCachedBrightnessInfo.brightnessMaxReason =" + this.mCachedBrightnessInfo.brightnessMaxReason.value);
        }
        printWriter.println("  mDisplayBlanksAfterDozeConfig=" + this.mDisplayBlanksAfterDozeConfig);
        printWriter.println("  mBrightnessBucketsInDozeConfig=" + this.mBrightnessBucketsInDozeConfig);
        printWriter.println("  --SEC_PMS");
        printWriter.println("  AUTO_BRIGHTNESS_TYPE=" + PowerManagerUtil.AUTO_BRIGHTNESS_TYPE);
        printWriter.println("  USE_SEC_LONG_TERM_MODEL=" + PowerManagerUtil.USE_SEC_LONG_TERM_MODEL);
        printWriter.println("  USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL=" + PowerManagerUtil.USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL);
        printWriter.println("  extraDim mExtraDimStrength= " + this.mExtraDimStrength);
        printWriter.println("  extraDim mExtraDimIsActive= " + this.mExtraDimIsActive);
        this.mHandler.runWithScissors(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$dump$10(printWriter);
            }
        }, 1000L);
    }

    /* renamed from: dumpLocal, reason: merged with bridge method [inline-methods] */
    public final void lambda$dump$10(PrintWriter printWriter) {
        printWriter.println();
        printWriter.println("Display Power Controller Thread State:");
        printWriter.println("  mPowerRequest=" + this.mPowerRequest);
        printWriter.println("  mBrightnessReason=" + this.mBrightnessReason);
        printWriter.println("  mAppliedDimming=" + this.mAppliedDimming);
        printWriter.println("  mAppliedLowPower=" + this.mAppliedLowPower);
        printWriter.println("  mAppliedThrottling=" + this.mAppliedThrottling);
        printWriter.println("  mDozing=" + this.mDozing);
        printWriter.println("  mSkipRampState=" + skipRampStateToString(this.mSkipRampState));
        printWriter.println("  mScreenOnBlockStartRealTime=" + this.mScreenOnBlockStartRealTime);
        printWriter.println("  mScreenOffBlockStartRealTime=" + this.mScreenOffBlockStartRealTime);
        printWriter.println("  mPendingScreenOnUnblocker=" + this.mPendingScreenOnUnblocker);
        printWriter.println("  mPendingScreenOffUnblocker=" + this.mPendingScreenOffUnblocker);
        printWriter.println("  mPendingScreenOff=" + this.mPendingScreenOff);
        printWriter.println("  mReportedToPolicy=" + reportedToPolicyToString(this.mReportedScreenStateToPolicy));
        printWriter.println("  mIsRbcActive=" + this.mIsRbcActive);
        this.mAutomaticBrightnessStrategy.dump(new IndentingPrintWriter(printWriter, "    "));
        if (this.mScreenBrightnessRampAnimator != null) {
            printWriter.println("  mScreenBrightnessRampAnimator.isAnimating()=" + this.mScreenBrightnessRampAnimator.isAnimating());
        }
        if (this.mColorFadeOnAnimator != null) {
            printWriter.println("  mColorFadeOnAnimator.isStarted()=" + this.mColorFadeOnAnimator.isStarted());
        }
        if (this.mColorFadeOffAnimator != null) {
            printWriter.println("  mColorFadeOffAnimator.isStarted()=" + this.mColorFadeOffAnimator.isStarted());
        }
        DisplayPowerState displayPowerState = this.mPowerState;
        if (displayPowerState != null) {
            displayPowerState.dump(printWriter);
        }
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            automaticBrightnessController.dump(printWriter);
            dumpBrightnessEvents(printWriter);
        }
        dumpRbcEvents(printWriter);
        HighBrightnessModeController highBrightnessModeController = this.mHbmController;
        if (highBrightnessModeController != null) {
            highBrightnessModeController.dump(printWriter);
        }
        BrightnessThrottler brightnessThrottler = this.mBrightnessThrottler;
        if (brightnessThrottler != null) {
            brightnessThrottler.dump(printWriter);
        }
        printWriter.println();
        printWriter.println();
        WakelockController wakelockController = this.mWakelockController;
        if (wakelockController != null) {
            wakelockController.dumpLocal(printWriter);
        }
        printWriter.println();
        DisplayBrightnessController displayBrightnessController = this.mDisplayBrightnessController;
        if (displayBrightnessController != null) {
            displayBrightnessController.dump(printWriter);
        }
        printWriter.println();
        DisplayStateController displayStateController = this.mDisplayStateController;
        if (displayStateController != null) {
            displayStateController.dumpsys(printWriter);
        }
        printWriter.println("  mLastBrightnessConfigurationTime=" + this.mLastBrightnessConfigurationTime);
        printWriter.println("  mPendingForceUpdateAb=" + this.mPendingForceUpdateAb);
        if (PowerManagerUtil.USE_SEC_LONG_TERM_MODEL && this.mAdaptiveBrightnessLongtermModelBuilder != null) {
            printWriter.println();
            this.mAdaptiveBrightnessLongtermModelBuilder.dump(printWriter);
        }
        if (PowerManagerUtil.SEC_FEATURE_DUAL_DISPLAY) {
            printWriter.println("  mDualScreenPolicy=" + this.mDualScreenPolicy);
        }
        printWriter.println("  SEC_FEATURE_EARLY_WAKEUP=true");
        EarlyWakeUpManager earlyWakeUpManager = this.mEarlyWakeUpManager;
        if (earlyWakeUpManager != null) {
            earlyWakeUpManager.dump(printWriter);
        }
        printWriter.println();
        printWriter.println("  USE_LONG_RAMP_RATE_FOR_NON_HBM=true");
        printWriter.println("  SEC_FEATURE_BRIGHTNESS_CONTROL_BY_EXTRA_DIM=false");
    }

    public static String reportedToPolicyToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? Integer.toString(i) : "REPORTED_TO_POLICY_SCREEN_ON" : "REPORTED_TO_POLICY_SCREEN_TURNING_ON" : "REPORTED_TO_POLICY_SCREEN_OFF";
    }

    public static String skipRampStateToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? Integer.toString(i) : "RAMP_STATE_SKIP_AUTOBRIGHT" : "RAMP_STATE_SKIP_INITIAL" : "RAMP_STATE_SKIP_NONE";
    }

    public final void dumpBrightnessEvents(PrintWriter printWriter) {
        int size = this.mBrightnessEventRingBuffer.size();
        if (size < 1) {
            printWriter.println("No Automatic Brightness Adjustments");
            return;
        }
        printWriter.println("Automatic Brightness Adjustments Last " + size + " Events: ");
        BrightnessEvent[] brightnessEventArr = (BrightnessEvent[]) this.mBrightnessEventRingBuffer.toArray();
        for (int i = 0; i < this.mBrightnessEventRingBuffer.size(); i++) {
            printWriter.println("  " + brightnessEventArr[i].toString());
        }
    }

    public final void dumpRbcEvents(PrintWriter printWriter) {
        int size = this.mRbcEventRingBuffer.size();
        if (size < 1) {
            printWriter.println("No Reduce Bright Colors Adjustments");
            return;
        }
        printWriter.println("Reduce Bright Colors Adjustments Last " + size + " Events: ");
        BrightnessEvent[] brightnessEventArr = (BrightnessEvent[]) this.mRbcEventRingBuffer.toArray();
        for (int i = 0; i < this.mRbcEventRingBuffer.size(); i++) {
            printWriter.println("  " + brightnessEventArr[i]);
        }
    }

    public final void noteScreenState(int i) {
        int i2;
        FrameworkStatsLog.write(FrameworkStatsLog.SCREEN_STATE_CHANGED_V2, i, this.mDisplayStatsId);
        IBatteryStats iBatteryStats = this.mBatteryStats;
        if (iBatteryStats != null) {
            try {
                if (PowerManagerUtil.SEC_FEATURE_DUAL_DISPLAY) {
                    if (!(PowerManagerUtil.SEC_FEATURE_FLIP_COVER_DISPLAY && (((i2 = this.mDisplayId) == 0 && this.mDualScreenPolicy == 1) || (i2 == 1 && this.mDualScreenPolicy == 0)))) {
                        Slog.d(this.mTag, "noteDualScreenState: State=" + Display.stateToString(i) + ", dualScreenPolicy=" + this.mDualScreenPolicy);
                        this.mBatteryStats.noteDualScreenState(i, this.mDisplayId, this.mDualScreenPolicy);
                    }
                } else {
                    iBatteryStats.noteScreenState(i);
                }
            } catch (RemoteException unused) {
            }
        }
        if (!this.mIsDisplayInternal || this.mHqmDataDispatcher == null) {
            return;
        }
        int i3 = this.mDisplayId;
        if (PowerManagerUtil.SEC_FEATURE_FOLD_COVER_DISPLAY) {
            i3 = !this.mDisplayDeviceConfig.isFirstDisplay() ? 1 : 0;
        }
        this.mHqmDataDispatcher.noteScreenState(i, i3);
    }

    public final void noteScreenBrightness(float f) {
        IBatteryStats iBatteryStats = this.mBatteryStats;
        if (iBatteryStats != null) {
            try {
                if (PowerManagerUtil.SEC_FEATURE_DUAL_DISPLAY) {
                    iBatteryStats.noteDualScreenBrightness(BrightnessSynchronizer.brightnessFloatToInt(f), this.mDisplayId, this.mDualScreenPolicy);
                } else {
                    iBatteryStats.noteScreenBrightness(BrightnessSynchronizer.brightnessFloatToInt(f));
                }
            } catch (RemoteException unused) {
            }
        }
        if (!this.mIsDisplayInternal || this.mHqmDataDispatcher == null) {
            return;
        }
        int i = this.mDisplayId;
        if (PowerManagerUtil.SEC_FEATURE_FOLD_COVER_DISPLAY) {
            i = !this.mDisplayDeviceConfig.isFirstDisplay() ? 1 : 0;
        }
        this.mHqmDataDispatcher.noteScreenBrightness(f, i);
    }

    public final void reportStats(float f) {
        if (this.mLastStatsBrightness == f) {
            return;
        }
        synchronized (this.mCachedBrightnessInfo) {
            MutableFloat mutableFloat = this.mCachedBrightnessInfo.hbmTransitionPoint;
            if (mutableFloat == null) {
                return;
            }
            float f2 = mutableFloat.value;
            boolean z = f > f2;
            boolean z2 = this.mLastStatsBrightness > f2;
            if (z || z2) {
                this.mLastStatsBrightness = f;
                this.mHandler.removeMessages(11);
                if (z != z2) {
                    logHbmBrightnessStats(f, this.mDisplayStatsId);
                    return;
                }
                Message obtainMessage = this.mHandler.obtainMessage();
                obtainMessage.what = 11;
                obtainMessage.arg1 = Float.floatToIntBits(f);
                obtainMessage.arg2 = this.mDisplayStatsId;
                this.mHandler.sendMessageAtTime(obtainMessage, this.mClock.uptimeMillis() + 500);
            }
        }
    }

    public final void logHbmBrightnessStats(float f, int i) {
        synchronized (this.mHandler) {
            FrameworkStatsLog.write(FrameworkStatsLog.DISPLAY_HBM_BRIGHTNESS_CHANGED, i, f);
        }
    }

    public final int nitsToRangeIndex(float f) {
        int i = 0;
        while (true) {
            float[] fArr = BRIGHTNESS_RANGE_BOUNDARIES;
            if (i >= fArr.length) {
                return 38;
            }
            if (f < fArr[i]) {
                return BRIGHTNESS_RANGE_INDEX[i];
            }
            i++;
        }
    }

    public final void logBrightnessEvent(BrightnessEvent brightnessEvent, float f) {
        int modifier = brightnessEvent.getReason().getModifier();
        int flags = brightnessEvent.getFlags();
        boolean z = f == brightnessEvent.getHbmMax();
        float convertToAdjustedNits = this.mDisplayBrightnessController.convertToAdjustedNits(brightnessEvent.getBrightness());
        float powerFactor = brightnessEvent.isLowPowerModeSet() ? brightnessEvent.getPowerFactor() : -1.0f;
        int rbcStrength = brightnessEvent.isRbcEnabled() ? brightnessEvent.getRbcStrength() : -1;
        float convertToAdjustedNits2 = brightnessEvent.getHbmMode() == 0 ? -1.0f : this.mDisplayBrightnessController.convertToAdjustedNits(brightnessEvent.getHbmMax());
        float convertToAdjustedNits3 = brightnessEvent.getThermalMax() == 1.0f ? -1.0f : this.mDisplayBrightnessController.convertToAdjustedNits(brightnessEvent.getThermalMax());
        if (this.mIsDisplayInternal) {
            FrameworkStatsLog.write(FrameworkStatsLog.DISPLAY_BRIGHTNESS_CHANGED, this.mDisplayBrightnessController.convertToAdjustedNits(brightnessEvent.getInitialBrightness()), convertToAdjustedNits, brightnessEvent.getLux(), brightnessEvent.getPhysicalDisplayId(), brightnessEvent.wasShortTermModelActive(), powerFactor, rbcStrength, convertToAdjustedNits2, convertToAdjustedNits3, brightnessEvent.isAutomaticBrightnessEnabled(), 1, convertBrightnessReasonToStatsEnum(brightnessEvent.getReason().getReason()), nitsToRangeIndex(convertToAdjustedNits), z, brightnessEvent.getHbmMode() == 1, brightnessEvent.getHbmMode() == 2, (modifier & 2) > 0, this.mBrightnessThrottler.getBrightnessMaxReason(), (modifier & 1) > 0, brightnessEvent.isRbcEnabled(), (flags & 2) > 0, (flags & 4) > 0, (flags & 8) > 0, (flags & 16) > 0, (flags & 32) > 0);
        }
    }

    public final boolean readyToUpdateDisplayState() {
        return this.mDisplayId == 0 || this.mBootCompleted || this.mIsCoverDisplay;
    }

    /* loaded from: classes2.dex */
    public final class DisplayControllerHandler extends Handler {
        public DisplayControllerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = false;
            switch (message.what) {
                case 1:
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 2:
                    if (DisplayPowerController2.this.mPendingScreenOnUnblocker == message.obj) {
                        DisplayPowerController2.this.unblockScreenOn();
                        DisplayPowerController2.this.lambda$new$0();
                        return;
                    }
                    return;
                case 3:
                    if (DisplayPowerController2.this.mPendingScreenOffUnblocker == message.obj) {
                        DisplayPowerController2.this.unblockScreenOff();
                        DisplayPowerController2.this.lambda$new$0();
                        return;
                    }
                    return;
                case 4:
                    BrightnessConfiguration brightnessConfiguration = (BrightnessConfiguration) message.obj;
                    DisplayPowerController2.this.mAutomaticBrightnessStrategy.setBrightnessConfiguration(brightnessConfiguration, message.arg1 == 1);
                    if (message.arg2 > 0) {
                        DisplayPowerController2.this.mResetBrightnessConfiguration = true;
                    }
                    if (DisplayPowerController2.this.mBrightnessTracker != null) {
                        BrightnessTracker brightnessTracker = DisplayPowerController2.this.mBrightnessTracker;
                        if (brightnessConfiguration != null && brightnessConfiguration.shouldCollectColorSamples()) {
                            z = true;
                        }
                        brightnessTracker.setShouldCollectColorSample(z);
                    }
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 5:
                    DisplayPowerController2.this.mDisplayBrightnessController.setTemporaryBrightness(Float.valueOf(Float.intBitsToFloat(message.arg1)));
                    if (message.arg2 > 0) {
                        Slog.d(DisplayPowerController2.this.mTag, "[api] ForceSlowChange is requested from DisplayManager");
                        DisplayPowerController2.this.mForceSlowChange = true;
                    }
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 6:
                    DisplayPowerController2.this.mAutomaticBrightnessStrategy.setTemporaryAutoBrightnessAdjustment(Float.intBitsToFloat(message.arg1));
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 7:
                    DisplayPowerController2.this.cleanupHandlerThreadAfterStop();
                    return;
                case 8:
                    if (DisplayPowerController2.this.mStopped) {
                        return;
                    }
                    DisplayPowerController2.this.handleSettingsChange(false);
                    return;
                case 9:
                    DisplayPowerController2.this.handleRbcChanged();
                    return;
                case 10:
                    if (DisplayPowerController2.this.mPowerState != null) {
                        DisplayPowerController2.this.reportStats(DisplayPowerController2.this.mPowerState.getScreenBrightness());
                        return;
                    }
                    return;
                case 11:
                    DisplayPowerController2.this.logHbmBrightnessStats(Float.intBitsToFloat(message.arg1), message.arg2);
                    return;
                case 12:
                    DisplayPowerController2.this.handleOnSwitchUser(message.arg1);
                    return;
                case 13:
                    DisplayPowerController2.this.mBootCompleted = true;
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 14:
                    DisplayPowerController2.this.mSeamlessAodReady = true;
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 15:
                    DisplayPowerController2.this.lambda$new$0();
                    return;
                case 16:
                    DisplayPowerController2.this.restartAdaptiveBrightnessLongtermModelBuilderInternal(true);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Slog.d(DisplayPowerController2.this.mTag, "[api] SettingsObserver: onChange: " + uri);
            if (uri.equals(Settings.System.getUriFor(DisplayPowerController2.this.mScreenBrightnessModeSettingName))) {
                DisplayPowerController2.this.handleBrightnessModeChange();
            } else {
                DisplayPowerController2.this.handleSettingsChange(false);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class ScreenOnUnblocker implements WindowManagerPolicy.ScreenOnListener {
        public ScreenOnUnblocker() {
        }

        @Override // com.android.server.policy.WindowManagerPolicy.ScreenOnListener
        public void onScreenOn() {
            Slog.d(DisplayPowerController2.this.mTag, "[api] WindowManagerPolicy.ScreenOnListener : called onScreenOn()");
            DisplayPowerController2.this.mHandler.sendMessageAtTime(DisplayPowerController2.this.mHandler.obtainMessage(2, this), DisplayPowerController2.this.mClock.uptimeMillis());
        }
    }

    /* loaded from: classes2.dex */
    public final class ScreenOffUnblocker implements WindowManagerPolicy.ScreenOffListener {
        public ScreenOffUnblocker() {
        }

        @Override // com.android.server.policy.WindowManagerPolicy.ScreenOffListener
        public void onScreenOff() {
            Slog.d(DisplayPowerController2.this.mTag, "[api] WindowManagerPolicy.ScreenOffListener : called onScreenOff()");
            DisplayPowerController2.this.mHandler.sendMessageAtTime(DisplayPowerController2.this.mHandler.obtainMessage(3, this), DisplayPowerController2.this.mClock.uptimeMillis());
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setAutoBrightnessLoggingEnabled(boolean z) {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            automaticBrightnessController.setLoggingEnabled(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class Injector {
        public Clock getClock() {
            return new Clock() { // from class: com.android.server.display.DisplayPowerController2$Injector$$ExternalSyntheticLambda0
                @Override // com.android.server.display.DisplayPowerController2.Clock
                public final long uptimeMillis() {
                    return SystemClock.uptimeMillis();
                }
            };
        }

        public DisplayPowerState getDisplayPowerState(DisplayBlanker displayBlanker, ColorFade colorFade, int i, int i2) {
            return new DisplayPowerState(displayBlanker, colorFade, i, i2);
        }

        public RampAnimator.DualRampAnimator getDualRampAnimator(DisplayPowerState displayPowerState, FloatProperty floatProperty, FloatProperty floatProperty2) {
            return new RampAnimator.DualRampAnimator(displayPowerState, floatProperty, floatProperty2);
        }

        public WakelockController getWakelockController(int i, DisplayManagerInternal.DisplayPowerCallbacks displayPowerCallbacks) {
            return new WakelockController(i, displayPowerCallbacks);
        }

        public DisplayPowerProximityStateController getDisplayPowerProximityStateController(WakelockController wakelockController, DisplayDeviceConfig displayDeviceConfig, Looper looper, Runnable runnable, int i, SensorManager sensorManager) {
            return new DisplayPowerProximityStateController(wakelockController, displayDeviceConfig, looper, runnable, i, sensorManager, null);
        }

        public AutomaticBrightnessController getAutomaticBrightnessController(AutomaticBrightnessController.Callbacks callbacks, Looper looper, SensorManager sensorManager, Sensor sensor, BrightnessMappingStrategy brightnessMappingStrategy, int i, float f, float f2, float f3, int i2, int i3, long j, long j2, boolean z, HysteresisLevels hysteresisLevels, HysteresisLevels hysteresisLevels2, HysteresisLevels hysteresisLevels3, HysteresisLevels hysteresisLevels4, Context context, HighBrightnessModeController highBrightnessModeController, BrightnessThrottler brightnessThrottler, BrightnessMappingStrategy brightnessMappingStrategy2, int i4, int i5, float f4, float f5, HysteresisLevels hysteresisLevels5, HysteresisLevels hysteresisLevels6) {
            return new AutomaticBrightnessController(callbacks, looper, sensorManager, sensor, brightnessMappingStrategy, i, f, f2, f3, i2, i3, j, j2, z, hysteresisLevels, hysteresisLevels2, hysteresisLevels3, hysteresisLevels4, context, highBrightnessModeController, brightnessThrottler, brightnessMappingStrategy2, i4, i5, f4, f5, hysteresisLevels5, hysteresisLevels6);
        }

        public BrightnessMappingStrategy getInteractiveModeBrightnessMapper(Resources resources, DisplayDeviceConfig displayDeviceConfig, DisplayWhiteBalanceController displayWhiteBalanceController) {
            return BrightnessMappingStrategy.create(resources, displayDeviceConfig, displayWhiteBalanceController);
        }

        public ScreenOffBrightnessSensorController getScreenOffBrightnessSensorController(SensorManager sensorManager, Sensor sensor, Handler handler, ScreenOffBrightnessSensorController.Clock clock, int[] iArr, BrightnessMappingStrategy brightnessMappingStrategy) {
            return new ScreenOffBrightnessSensorController(sensorManager, sensor, handler, clock, iArr, brightnessMappingStrategy);
        }

        public AdaptiveBrightnessLongtermModelBuilder getAdaptiveBrightnessLongtermModelBuilder(Context context, AdaptiveBrightnessLongtermModelBuilder.Injector injector, BrightnessMappingStrategy brightnessMappingStrategy) {
            return new AdaptiveBrightnessLongtermModelBuilder(context, injector, brightnessMappingStrategy);
        }

        public HqmDataDispatcher getHqmDataDispatcher() {
            return HqmDataDispatcher.getInstance();
        }
    }

    /* loaded from: classes2.dex */
    public class CachedBrightnessInfo {
        public MutableFloat brightness = new MutableFloat(Float.NaN);
        public MutableFloat adjustedBrightness = new MutableFloat(Float.NaN);
        public MutableFloat brightnessMin = new MutableFloat(Float.NaN);
        public MutableFloat brightnessMax = new MutableFloat(Float.NaN);
        public MutableInt hbmMode = new MutableInt(0);
        public MutableFloat hbmTransitionPoint = new MutableFloat(Float.POSITIVE_INFINITY);
        public MutableInt brightnessMaxReason = new MutableInt(0);
        public MutableBoolean isAnimating = new MutableBoolean(false);

        public boolean checkAndSetFloat(MutableFloat mutableFloat, float f) {
            if (mutableFloat.value == f) {
                return false;
            }
            mutableFloat.value = f;
            return true;
        }

        public boolean checkAndSetInt(MutableInt mutableInt, int i) {
            if (mutableInt.value == i) {
                return false;
            }
            mutableInt.value = i;
            return true;
        }

        public boolean checkAndSetBoolean(MutableBoolean mutableBoolean, boolean z) {
            if (mutableBoolean.value == z) {
                return false;
            }
            mutableBoolean.value = z;
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public final class ShutdownReceiver extends BroadcastReceiver {
        public ShutdownReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (DisplayPowerController2.this.mInteractiveModeBrightnessMapper == null || !"android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction()) || !DisplayPowerController2.this.mAppliedForceDimming || DisplayPowerController2.this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness() || Float.isNaN(DisplayPowerController2.this.mLastScreenBrightnessSettingBeforeForceDim)) {
                return;
            }
            Slog.d(DisplayPowerController2.this.mTag, "Restore low battery force dim (manual brightness)");
            DisplayPowerController2.this.updateLastBrightnessSettingChangedTime();
            DisplayPowerController2.this.mAppliedForceDimming = false;
            DisplayPowerController2.this.mDisplayBrightnessController.setBrightness(DisplayPowerController2.this.mLastScreenBrightnessSettingBeforeForceDim);
        }
    }

    public final boolean isLightSensorCovered() {
        return this.mPowerRequest.coverClosed;
    }

    public final int getTransitionTimeWithHbm(float f, float f2, float f3, float f4) {
        float abs;
        float f5;
        if (f > 1.0f && f2 <= 1.0f) {
            f5 = f - 1.0f;
            abs = 1.0f - f2;
        } else if (1.0f >= f2 || f2 >= f) {
            Slog.e(this.mTag, "getTransitionTimeWithHbm: rateAtHbm: " + f4 + " currentBrightness: " + f + " targetBrightness: " + f2);
            abs = Math.abs(f - f2);
            f5 = 0.0f;
        } else {
            f5 = f - f2;
            abs = 0.0f;
        }
        return ((int) Math.round((f5 / f4) * 1000.0d)) + ((int) Math.round((abs / f3) * 1000.0d));
    }

    public final void putAutoBrightnessTransitionTime(float f, float f2, float f3) {
        int i;
        if (f > RATE_FROM_DOZE_TO_ON) {
            float currentValue = this.mScreenBrightnessRampAnimator.getCurrentValue();
            if (!Float.isNaN(f2)) {
                i = getTransitionTimeWithHbm(currentValue, f3, f, f2);
            } else {
                i = (int) Math.round((Math.abs(currentValue - f3) / f) * 1000.0d);
            }
        } else {
            i = 0;
        }
        Slog.d(this.mTag, "putAutoBrightnessTransitionTime: transitionTime=" + i);
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "auto_brightness_transition_time", i, -2);
    }

    public final float getFinalBrightness(float f, int i) {
        this.mPassRampAnimation = false;
        float f2 = this.mPowerRequest.screenBrightnessScaleFactor;
        float f3 = RATE_FROM_DOZE_TO_ON;
        if (f2 >= RATE_FROM_DOZE_TO_ON && f2 != 1.0f) {
            f = clampScreenBrightnessForFinal(f * f2);
            this.mBrightnessReasonTemp.addModifier(16, f);
        }
        if (this.mPowerRequest.hbmBlock && f > 1.0f) {
            this.mBrightnessReasonTemp.addModifier(256, 1.0f);
            f = 1.0f;
        }
        float f4 = this.mPowerRequest.minBrightness;
        if (f4 >= RATE_FROM_DOZE_TO_ON && f < f4) {
            this.mBrightnessReasonTemp.addModifier(32, f4);
            f = f4;
        }
        float f5 = this.mPowerRequest.maxBrightness;
        if (f5 >= RATE_FROM_DOZE_TO_ON && f > f5) {
            this.mBrightnessReasonTemp.addModifier(32, f5);
            f = f5;
        }
        int i2 = this.mPowerRequest.brightnessLimitByCover;
        if (i2 != -1 && f > i2) {
            f = i2;
            this.mBrightnessReasonTemp.addModifier(128, f);
        }
        if (this.mAutomaticBrightnessStrategy.hasAppliedAutoBrightness()) {
            float f6 = this.mPowerRequest.autoBrightnessUpperLimit;
            if (f6 >= RATE_FROM_DOZE_TO_ON && f > f6) {
                this.mBrightnessReasonTemp.addModifier(64, f6);
                f = f6;
            }
            float f7 = this.mPowerRequest.autoBrightnessLowerLimit;
            if (f7 >= RATE_FROM_DOZE_TO_ON && !this.mAppliedDimming && !this.mAppliedForceDimming && f < f7) {
                this.mBrightnessReasonTemp.addModifier(64, f7);
                f = f7;
            }
        }
        if (this.mFreezeBrightnessMode) {
            int i3 = this.mFreezeBrightnessModeSelector;
            if (i3 != 1) {
                if (i3 == 2 && f <= 1.0f) {
                    f = BrightnessSynchronizer.brightnessIntToFloat(256);
                    this.mBrightnessReasonTemp.addModifier(65536, f);
                }
            } else if (f > 1.0f) {
                this.mBrightnessReasonTemp.addModifier(65536, 1.0f);
                f = 1.0f;
            }
        }
        if (PowerManagerUtil.isFakeAodAvailable(this.mDualScreenPolicy) && Display.isDozeState(i) && f > 0.38f) {
            this.mBrightnessReasonTemp.addModifier(IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES, 0.38f);
            f = 0.38f;
        }
        if (this.mPowerRequest.forceLcdBacklightOffEnabled) {
            this.mBrightnessReasonTemp.addModifier(1024, RATE_FROM_DOZE_TO_ON);
        } else {
            f3 = f;
        }
        DisplayManagerInternal.DisplayPowerRequest displayPowerRequest = this.mPowerRequest;
        if ((displayPowerRequest.isOutdoorMode || displayPowerRequest.lcdFlashMode) && displayPowerRequest.policy == 3) {
            f3 = Math.max(this.mScreenExtendedBrightnessRangeMaximum, 1.0f);
            this.mBrightnessReasonTemp.addModifier(512, f3);
            this.mIsOutdoorModeEnabled = true;
            boolean z = this.mPowerRequest.lcdFlashMode;
            this.mLcdFlashModeEnabled = z;
            if (z) {
                this.mPassRampAnimation = true;
            }
        } else if (this.mIsOutdoorModeEnabled && displayPowerRequest.policy != 0) {
            this.mIsOutdoorModeEnabled = false;
            if (this.mLcdFlashModeEnabled) {
                this.mLcdFlashModeEnabled = false;
                this.mPassRampAnimation = true;
            }
        }
        if (!PowerManagerUtil.SHIP_BUILD && this.mIsCoverDisplay && this.mCoverDisplayDemoEnabled && this.mPowerRequest.policy == 3) {
            f3 = Math.max(this.mScreenExtendedBrightnessRangeMaximum, 1.0f);
            this.mBrightnessReasonTemp.addModifier(16384, f3);
        }
        if (PowerManagerUtil.SEC_FEATURE_SCREEN_CURTAIN && this.mPowerRequest.screenCurtainEnabled) {
            this.mPassRampAnimation = true;
            f3 = clampScreenBrightnessForFinal(Math.min(f3, BrightnessSynchronizer.brightnessIntToFloat(49)));
            this.mBrightnessReasonTemp.addModifier(32768, f3);
        }
        boolean z2 = this.mLastCoverClosedState;
        boolean z3 = this.mPowerRequest.coverClosed;
        if (z2 != z3) {
            this.mLastCoverClosedState = z3;
            if (!z3) {
                this.mPassRampAnimation = true;
            }
        }
        return f3;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public int convertToBrightness(float f) {
        BrightnessMappingStrategy brightnessMappingStrategy = this.mInteractiveModeBrightnessMapper;
        if (brightnessMappingStrategy != null) {
            return brightnessMappingStrategy.convertToBrightness(f);
        }
        return -1;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public float getAdaptiveBrightness(float f) {
        BrightnessMappingStrategy brightnessMappingStrategy = this.mInteractiveModeBrightnessMapper;
        if (brightnessMappingStrategy != null) {
            return brightnessMappingStrategy.getBrightness(f);
        }
        return -1.0f;
    }

    public final void updateLastBrightnessSettingChangedTime() {
        sLastScreenBrightnessSettingChangedTime = this.mClock.uptimeMillis();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public long getLastUserSetScreenBrightnessTime() {
        return sLastScreenBrightnessSettingChangedTime;
    }

    public final void postBrightnessModeChangeRunnable() {
        this.mHandler.post(this.mOnBrightnessModeChangeRunnable);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void onScreenBrightnessSettingTimeChanged() {
        sendUpdatePowerState();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setActualDisplayState(final int i) {
        this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.display.DisplayPowerController2$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                DisplayPowerController2.this.lambda$setActualDisplayState$11(i);
            }
        }, this.mClock.uptimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setActualDisplayState$11(int i) {
        if (i != this.mActualDisplayState) {
            Slog.d(this.mTag, "setActualDisplayState: " + Display.stateToString(this.mActualDisplayState) + " -> " + Display.stateToString(i));
            this.mActualDisplayState = i;
            lambda$new$0();
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public String getAmbientBrightnessInfo(float f) {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            return automaticBrightnessController.getAmbientBrightnessInfo(f);
        }
        return null;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void injectLux(SensorEvent sensorEvent) {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            automaticBrightnessController.injectLux(sensorEvent);
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void doShortTermReset() {
        if (this.mAutomaticBrightnessController != null) {
            this.mPowerHistorian.onAutoBrightnessEvent("ShortTermModel: shell cmd");
            this.mAutomaticBrightnessController.resetShortTermModel();
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setTestModeEnabled(boolean z) {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
        if (adaptiveBrightnessLongtermModelBuilder != null) {
            adaptiveBrightnessLongtermModelBuilder.setTestModeEnabled(z);
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void addBrightnessWeights(float f, float f2, float f3, float f4) {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
        if (adaptiveBrightnessLongtermModelBuilder != null) {
            adaptiveBrightnessLongtermModelBuilder.addBrightnessWeightDirectly(f, f2, f3, f4);
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void restartAdaptiveBrightnessLongtermModelBuilderFromBnr() {
        this.mHandler.obtainMessage(16).sendToTarget();
    }

    public void restartAdaptiveBrightnessLongtermModelBuilderInternal(boolean z) {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
        if (adaptiveBrightnessLongtermModelBuilder == null || !adaptiveBrightnessLongtermModelBuilder.isStarted()) {
            return;
        }
        this.mAdaptiveBrightnessLongtermModelBuilder.restartAdaptiveBrightnessStatsTracker(z);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void clearAdaptiveBrightnessLongtermModelBuilder() {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
        if (adaptiveBrightnessLongtermModelBuilder != null) {
            adaptiveBrightnessLongtermModelBuilder.clearBrightnessEvents();
        }
    }

    public final boolean getCoverDisplayDemoSetting() {
        return Settings.System.getIntForUser(this.mContext.getContentResolver(), "cover_screen_demo_mode", 0, -2) > 0;
    }

    /* loaded from: classes2.dex */
    public final class SeamlessAodReadyListener implements AODManager.AODChangeListener {
        public SeamlessAodReadyListener() {
        }

        public void readyToScreenTurningOn() {
            Slog.d(DisplayPowerController2.this.mTag, "[api] AODManager.AODChangeListener : Received readyToScreenTurningOn().");
            Message obtainMessage = DisplayPowerController2.this.mHandler.obtainMessage(14);
            obtainMessage.setAsynchronous(true);
            DisplayPowerController2.this.mHandler.sendMessage(obtainMessage);
        }
    }

    /* loaded from: classes2.dex */
    public final class EarlyWakeUpManager {
        public boolean mAppliedLocked;
        public boolean mEarlyDisplayEnabled;
        public boolean mEarlyLightSensorEnabled;
        public final Handler mHandler;
        public final HandlerThread mHandlerThread;
        public boolean mHoldingSuspendBlocker;
        public boolean mIsRequestInvalidated;
        public long mLastEnableRequestedTime;
        public final Object mEarlyWakeUpLock = new Object();
        public boolean mEarlyLightSensorReadyLocked = true;
        public boolean mEarlyDisplayReadyLocked = true;
        public final Runnable mEarlyLightSensorReadyListener = new Runnable() { // from class: com.android.server.display.DisplayPowerController2.EarlyWakeUpManager.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (EarlyWakeUpManager.this.mEarlyWakeUpLock) {
                    EarlyWakeUpManager.this.mEarlyLightSensorReadyLocked = true;
                    EarlyWakeUpManager.this.updateSuspendBlockerLocked();
                }
            }
        };

        public EarlyWakeUpManager() {
            HandlerThread handlerThread = new HandlerThread(DisplayPowerController2.this.mTag, -4);
            this.mHandlerThread = handlerThread;
            handlerThread.start();
            this.mHandler = new EarlyWakeUpHandler(handlerThread.getLooper());
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x003c A[Catch: all -> 0x0073, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000c, B:8:0x0010, B:12:0x001d, B:14:0x0021, B:20:0x0030, B:22:0x0038, B:24:0x003c, B:26:0x0058, B:28:0x0067, B:29:0x006a, B:30:0x005f, B:31:0x006c, B:32:0x0071), top: B:3:0x0003 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void update(boolean r7, int r8) {
            /*
                r6 = this;
                java.lang.Object r0 = r6.mEarlyWakeUpLock
                monitor-enter(r0)
                long r1 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L73
                r3 = 2
                r4 = 1
                r5 = 0
                if (r8 == r3) goto L1a
                boolean r3 = r6.mIsRequestInvalidated     // Catch: java.lang.Throwable -> L73
                if (r3 != 0) goto L1a
                com.android.server.display.DisplayPowerController2 r3 = com.android.server.display.DisplayPowerController2.this     // Catch: java.lang.Throwable -> L73
                boolean r3 = com.android.server.display.DisplayPowerController2.m5513$$Nest$fgetmIsInTransition(r3)     // Catch: java.lang.Throwable -> L73
                if (r3 != 0) goto L1a
                r3 = r4
                goto L1b
            L1a:
                r3 = r5
            L1b:
                if (r3 == 0) goto L37
                boolean r3 = r6.mAppliedLocked     // Catch: java.lang.Throwable -> L73
                if (r3 == 0) goto L29
                boolean r3 = r6.isLastRequestExpired(r1)     // Catch: java.lang.Throwable -> L73
                if (r3 != 0) goto L29
                r3 = r4
                goto L2a
            L29:
                r3 = r5
            L2a:
                if (r7 != 0) goto L2e
                if (r3 == 0) goto L37
            L2e:
                if (r7 == 0) goto L35
                r6.mLastEnableRequestedTime = r1     // Catch: java.lang.Throwable -> L73
                r6.resetEnableRequestTimeout()     // Catch: java.lang.Throwable -> L73
            L35:
                r7 = r4
                goto L38
            L37:
                r7 = r5
            L38:
                boolean r1 = r6.mAppliedLocked     // Catch: java.lang.Throwable -> L73
                if (r7 == r1) goto L6c
                com.android.server.display.DisplayPowerController2 r1 = com.android.server.display.DisplayPowerController2.this     // Catch: java.lang.Throwable -> L73
                java.lang.String r1 = com.android.server.display.DisplayPowerController2.m5522$$Nest$fgetmTag(r1)     // Catch: java.lang.Throwable -> L73
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
                r2.<init>()     // Catch: java.lang.Throwable -> L73
                java.lang.String r3 = "[ew] "
                r2.append(r3)     // Catch: java.lang.Throwable -> L73
                r2.append(r7)     // Catch: java.lang.Throwable -> L73
                java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L73
                com.android.server.power.Slog.d(r1, r2)     // Catch: java.lang.Throwable -> L73
                if (r7 == 0) goto L5f
                r6.setEarlyLightSensorEnabledLocked(r4)     // Catch: java.lang.Throwable -> L73
                r6.setEarlyDisplayEnabledLocked(r4, r8)     // Catch: java.lang.Throwable -> L73
                goto L65
            L5f:
                r6.setEarlyLightSensorEnabledLocked(r5)     // Catch: java.lang.Throwable -> L73
                r6.setEarlyDisplayEnabledLocked(r5, r8)     // Catch: java.lang.Throwable -> L73
            L65:
                if (r7 != 0) goto L6a
                r6.clearEnableRequestTimeout()     // Catch: java.lang.Throwable -> L73
            L6a:
                r6.mAppliedLocked = r7     // Catch: java.lang.Throwable -> L73
            L6c:
                r6.mIsRequestInvalidated = r5     // Catch: java.lang.Throwable -> L73
                r6.updateSuspendBlockerLocked()     // Catch: java.lang.Throwable -> L73
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L73
                return
            L73:
                r6 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L73
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerController2.EarlyWakeUpManager.update(boolean, int):void");
        }

        public boolean isEarlyLightSensorEnabled() {
            return this.mEarlyLightSensorEnabled;
        }

        public final void setEarlyLightSensorEnabledLocked(boolean z) {
            if (supportEarlyLightSensorEnableLocked()) {
                if ((!z || isCandidateForAutoBrightness()) && z != this.mEarlyLightSensorEnabled) {
                    this.mEarlyLightSensorEnabled = z;
                    this.mEarlyLightSensorReadyLocked = false;
                    DisplayPowerController2.this.mAutomaticBrightnessController.setEarlyLightSensorEnabled(z, this.mEarlyLightSensorReadyListener);
                }
            }
        }

        public final void setEarlyDisplayEnabledLocked(final boolean z, int i) {
            if (z == this.mEarlyDisplayEnabled) {
                return;
            }
            if (!z || supportEarlyDisplayEnableLocked(i)) {
                this.mEarlyDisplayEnabled = z;
                this.mEarlyDisplayReadyLocked = false;
                this.mHandler.post(new Runnable() { // from class: com.android.server.display.DisplayPowerController2.EarlyWakeUpManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DisplayPowerController2.this.mBlanker.setDisplayStateLimitForEarlyWakeUp(DisplayPowerController2.this.mDisplayId, z ? 2 : 0);
                        synchronized (EarlyWakeUpManager.this.mEarlyWakeUpLock) {
                            EarlyWakeUpManager.this.mEarlyDisplayReadyLocked = true;
                            EarlyWakeUpManager.this.updateSuspendBlockerLocked();
                        }
                    }
                });
            }
        }

        public final boolean supportEarlyLightSensorEnableLocked() {
            return DisplayPowerController2.this.mAutomaticBrightnessController != null;
        }

        public final boolean supportEarlyDisplayEnableLocked(int i) {
            return (Display.isDozeState(i) || PowerManagerUtil.SECURITY_FINGERPRINT_IN_DISPLAY || PowerManagerUtil.SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK) ? false : true;
        }

        public final boolean isCandidateForAutoBrightness() {
            return DisplayPowerController2.this.mAutomaticBrightnessStrategy.shouldUseAutoBrightness() && !DisplayPowerController2.this.mDisplayPowerProximityStateController.isProximityPositive();
        }

        public final boolean isLastRequestExpired(long j) {
            return j >= this.mLastEnableRequestedTime + 3000;
        }

        public final void clearEnableRequestTimeout() {
            Slog.d(DisplayPowerController2.this.mTag, "[ew] clearEnableRequestTimeout -");
            this.mHandler.removeMessages(1);
        }

        public final void resetEnableRequestTimeout() {
            Slog.d(DisplayPowerController2.this.mTag, "[ew] resetEnableRequestTimeout +");
            this.mHandler.removeMessages(1);
            this.mHandler.sendEmptyMessageAtTime(1, this.mLastEnableRequestedTime + 3000);
        }

        public final void updateSuspendBlockerLocked() {
            if ((!this.mAppliedLocked && this.mEarlyDisplayReadyLocked && this.mEarlyLightSensorReadyLocked) ? false : true) {
                if (this.mHoldingSuspendBlocker) {
                    return;
                }
                Slog.d(DisplayPowerController2.this.mTag, "[ew] acquireSuspendBlocker: +");
                DisplayPowerController2.this.mWakelockController.acquireWakelock(7);
                this.mHoldingSuspendBlocker = true;
                return;
            }
            if (this.mHoldingSuspendBlocker) {
                Slog.d(DisplayPowerController2.this.mTag, "[ew] releaseSuspendBlocker: -");
                this.mHoldingSuspendBlocker = false;
                DisplayPowerController2.this.mWakelockController.releaseWakelock(7);
            }
        }

        public void invalidateCurrentRequest() {
            this.mIsRequestInvalidated = true;
        }

        public void dump(PrintWriter printWriter) {
            synchronized (this.mEarlyWakeUpLock) {
                printWriter.println();
                printWriter.println("[ew] EarlyWakeUpManager:");
                printWriter.println("  mAppliedLocked=" + this.mAppliedLocked);
                printWriter.println("  mEarlyLightSensorEnabled=" + this.mEarlyLightSensorEnabled);
                printWriter.println("  mEarlyDisplayEnabled=" + this.mEarlyDisplayEnabled);
                printWriter.println("  mLastEnableRequestedTime=" + this.mLastEnableRequestedTime);
                printWriter.println("  now=" + SystemClock.uptimeMillis());
                printWriter.println("  mHoldingSuspendBlocker=" + this.mHoldingSuspendBlocker);
                printWriter.println("    mEarlyLightSensorReadyLocked=" + this.mEarlyLightSensorReadyLocked);
                printWriter.println("    mEarlyDisplayReadyLocked=" + this.mEarlyDisplayReadyLocked);
            }
        }

        /* loaded from: classes2.dex */
        public final class EarlyWakeUpHandler extends Handler {
            public EarlyWakeUpHandler(Looper looper) {
                super(looper, null, true);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                Slog.d(DisplayPowerController2.this.mTag, "[ew] MSG_EARLY_WAKEUP_TIMEOUT");
                DisplayPowerController2.this.sendUpdatePowerState();
            }
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public float getLastAutomaticScreenBrightness() {
        return this.mLastAutomaticScreenBrightness;
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public float getCurrentScreenBrightness() {
        return this.mDisplayBrightnessController.getCurrentBrightness();
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public int[] getBrightnessLearningMaxLimitCount() {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
        if (adaptiveBrightnessLongtermModelBuilder != null) {
            return adaptiveBrightnessLongtermModelBuilder.getBrightnessLearningMaxLimitCount();
        }
        return null;
    }

    @Override // com.android.server.display.AutomaticBrightnessController.Callbacks
    public void onUserPointAdded(float f, float f2) {
        HqmDataDispatcher hqmDataDispatcher = this.mHqmDataDispatcher;
        if (hqmDataDispatcher != null) {
            hqmDataDispatcher.sendBrightnessAdjustmentEventAsync(f, this.mPrevScreenBrightness, f2);
        }
    }

    @Override // com.android.server.display.AutomaticBrightnessController.Callbacks
    public void onShortTermReset() {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder;
        if (adaptiveBrightnessLongtermModelBuilder != null) {
            adaptiveBrightnessLongtermModelBuilder.notifyShortTermResetValid();
        } else {
            sendUpdatePowerState();
        }
    }

    @Override // com.android.server.display.AutomaticBrightnessController.Callbacks
    public void onAmbientLuxChanged(float f) {
        AdaptiveBrightnessLongtermModelBuilder adaptiveBrightnessLongtermModelBuilder;
        if (!PowerManagerUtil.USE_SEC_LONG_TERM_MODEL || (adaptiveBrightnessLongtermModelBuilder = this.mAdaptiveBrightnessLongtermModelBuilder) == null) {
            return;
        }
        adaptiveBrightnessLongtermModelBuilder.notifyAmbientLuxChanged(f);
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setRampSpeedToFollower(float f, float f2) {
        this.mFollowerRampSpeed = f;
        this.mFollowerRampSpeedAtHbm = f2;
    }

    public final BrightnessDynamicRampRatePair getBrightnessDynamicRampRatePair(float f, float f2) {
        float f3;
        if (f <= RATE_FROM_DOZE_TO_ON) {
            f = 0.004f;
        }
        float currentValue = this.mScreenBrightnessRampAnimator.getCurrentValue();
        if (currentValue <= RATE_FROM_DOZE_TO_ON) {
            currentValue = 0.004f;
        }
        float f4 = this.mLastAmbientLux;
        if (f2 <= RATE_FROM_DOZE_TO_ON) {
            f2 = 0.9f;
        }
        if (f4 <= RATE_FROM_DOZE_TO_ON) {
            f4 = 0.9f;
        }
        int i = SystemProperties.getInt("sys.display.transition.weight", DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION);
        int i2 = SystemProperties.getInt("sys.display.transition.weight.hbm", 15);
        if (f < currentValue) {
            float dynamicRampRate = getDynamicRampRate(i, f, currentValue, f4, f2, MAX_AUTO_BRIGHTNESS_TRANSITION_TIME);
            f3 = currentValue > 1.0f ? getDynamicRampRate(i2, f, currentValue, f4, f2, 30000) : Float.NaN;
            r10 = dynamicRampRate;
        } else {
            f3 = Float.NaN;
        }
        return new BrightnessDynamicRampRatePair(r10, f3);
    }

    public final float getDynamicRampRate(int i, float f, float f2, float f3, float f4, int i2) {
        double min = Math.min(calculateTransitionTime(i, f, f2, f3, f4), i2);
        if (min > 0.0d) {
            return ((float) (1.0d / min)) * 1000.0f;
        }
        return Float.NaN;
    }

    public final double calculateTransitionTime(int i, float f, float f2, float f3, float f4) {
        return (i / Math.log10((f2 / f) * (f3 / f4))) * 1000.0d;
    }

    /* loaded from: classes2.dex */
    public class BrightnessDynamicRampRatePair {
        public float brightnessRampRateDynamic;
        public float brightnessRampRateDynamicAtHbm;

        public BrightnessDynamicRampRatePair(float f, float f2) {
            this.brightnessRampRateDynamic = f;
            this.brightnessRampRateDynamicAtHbm = f2;
        }
    }

    @Override // com.android.server.display.DisplayPowerControllerInterface
    public void setHdrRampRate(float f, float f2) {
        this.mBrightnessRampRateHdrIncrease = f;
        this.mBrightnessRampRateHdrDecrease = f2;
    }
}
