package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Resources;
import android.hardware.biometrics.BiometricSourceType;
import android.metrics.LogMaker;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Trace;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;
import com.android.internal.util.LatencyTracker;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.KeyguardViewController;
import com.android.keyguard.SecLockIconViewController;
import com.android.keyguard.biometrics.KeyguardBiometricToastView;
import com.android.keyguard.logging.BiometricUnlockLogger;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.KeyguardViewMediator;
import com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl;
import com.android.systemui.keyguard.Log;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.SessionTracker;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.NotificationShadeWindowState;
import com.android.systemui.statusbar.NotificationMediaManager;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.statusbar.phone.BiometricUnlockController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import com.android.systemui.vibrate.VibrationUtil;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.sdp.internal.SdpAuthenticator;
import com.sec.ims.configuration.DATA;
import dagger.Lazy;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BiometricUnlockController extends KeyguardUpdateMonitorCallback implements Dumpable {
    public static final UiEventLogger UI_EVENT_LOGGER = new UiEventLoggerImpl();
    public BiometricSourceType mAuthenticatedBioSourceType;
    public KeyguardBiometricToastView mBiometricToastView;
    public BiometricSourceType mBiometricType;
    public boolean mBouncer;
    public final int mConsecutiveFpFailureThreshold;
    public final Context mContext;
    public final DozeScrimController mDozeScrimController;
    public int mDynamicLockMode;
    public boolean mFadedAwayAfterWakeAndUnlock;
    public final KeyguardFastBioUnlockController mFastUnlockController;
    public final Handler mHandler;
    public boolean mIsStartedGoingToSleep;
    public final KeyguardBypassController mKeyguardBypassController;
    public final KeyguardStateController mKeyguardStateController;
    public KeyguardViewController mKeyguardViewController;
    public final KeyguardViewMediator mKeyguardViewMediator;
    public long mLastFpFailureUptimeMillis;
    public final LatencyTracker mLatencyTracker;
    public final BiometricUnlockLogger mLogger;
    public final NotificationMediaManager mMediaManager;
    public final MetricsLogger mMetricsLogger;
    public int mMode;
    public final NotificationShadeWindowController mNotificationShadeWindowController;
    public int mNumConsecutiveFpFailures;
    public final PowerManager mPowerManager;
    public final AnonymousClass4 mScreenObserver;
    public final ScreenOffAnimationController mScreenOffAnimationController;
    public final Lazy mSecLockIconViewControllerLazy;
    public final SessionTracker mSessionTracker;
    public final StatusBarStateController mStatusBarStateController;
    public final SystemClock mSystemClock;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final VibrationUtil mVibrationUtil;
    public final VibratorHelper mVibratorHelper;
    public PowerManager.WakeLock mWakeLock;
    final WakefulnessLifecycle.Observer mWakefulnessObserver;
    public WindowManager.LayoutParams mWindowLp;
    public final WindowManager mWindowManager;
    public PendingAuthenticated mPendingAuthenticated = null;
    public final Set mBiometricUnlockEventsListeners = new HashSet();
    public final AnonymousClass1 mReleaseBiometricWakeLockRunnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController.1
        @Override // java.lang.Runnable
        public final void run() {
            BiometricUnlockLogger biometricUnlockLogger = BiometricUnlockController.this.mLogger;
            biometricUnlockLogger.getClass();
            LogBuffer.log$default(biometricUnlockLogger.logBuffer, "BiometricUnlockLogger", LogLevel.INFO, "biometric wakelock: TIMEOUT!!", null, 8, null);
            BiometricUnlockController.this.releaseBiometricWakeLock();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.BiometricUnlockController$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements WakefulnessLifecycle.Observer {
        public AnonymousClass3() {
        }

        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onFinishedGoingToSleep() {
            Trace.beginSection("BiometricUnlockController#onFinishedGoingToSleep");
            BiometricUnlockController biometricUnlockController = BiometricUnlockController.this;
            if (biometricUnlockController.mPendingAuthenticated != null) {
                LogBuffer.log$default(biometricUnlockController.mLogger.logBuffer, "BiometricUnlockLogger", LogLevel.DEBUG, "onFinishedGoingToSleep with pendingAuthenticated != null", null, 8, null);
                BiometricUnlockController biometricUnlockController2 = BiometricUnlockController.this;
                final PendingAuthenticated pendingAuthenticated = biometricUnlockController2.mPendingAuthenticated;
                biometricUnlockController2.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BiometricUnlockController.AnonymousClass3 anonymousClass3 = BiometricUnlockController.AnonymousClass3.this;
                        BiometricUnlockController.PendingAuthenticated pendingAuthenticated2 = pendingAuthenticated;
                        BiometricUnlockController.this.onBiometricAuthenticated(pendingAuthenticated2.userId, pendingAuthenticated2.biometricSourceType, pendingAuthenticated2.isStrongBiometric);
                    }
                });
                BiometricUnlockController.this.mPendingAuthenticated = null;
            }
            Trace.endSection();
        }

        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onStartedGoingToSleep() {
            BiometricUnlockController biometricUnlockController = BiometricUnlockController.this;
            UiEventLogger uiEventLogger = BiometricUnlockController.UI_EVENT_LOGGER;
            biometricUnlockController.resetMode();
            BiometricUnlockController biometricUnlockController2 = BiometricUnlockController.this;
            biometricUnlockController2.mFadedAwayAfterWakeAndUnlock = false;
            biometricUnlockController2.mPendingAuthenticated = null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.BiometricUnlockController$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] $SwitchMap$android$hardware$biometrics$BiometricSourceType;

        static {
            int[] iArr = new int[BiometricSourceType.values().length];
            $SwitchMap$android$hardware$biometrics$BiometricSourceType = iArr;
            try {
                iArr[BiometricSourceType.FINGERPRINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$hardware$biometrics$BiometricSourceType[BiometricSourceType.FACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$hardware$biometrics$BiometricSourceType[BiometricSourceType.IRIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r11v0 com.android.systemui.statusbar.phone.BiometricUnlockController$BiometricUiEvent, still in use, count: 1, list:
      (r11v0 com.android.systemui.statusbar.phone.BiometricUnlockController$BiometricUiEvent) from 0x00ae: INVOKE 
      (wrap:android.hardware.biometrics.BiometricSourceType:0x00a4: SGET  A[WRAPPED] (LINE:165) android.hardware.biometrics.BiometricSourceType.FINGERPRINT android.hardware.biometrics.BiometricSourceType)
      (r11v0 com.android.systemui.statusbar.phone.BiometricUnlockController$BiometricUiEvent)
      (wrap:android.hardware.biometrics.BiometricSourceType:0x00a6: SGET  A[WRAPPED] (LINE:167) android.hardware.biometrics.BiometricSourceType.FACE android.hardware.biometrics.BiometricSourceType)
      (r14v0 com.android.systemui.statusbar.phone.BiometricUnlockController$BiometricUiEvent)
      (wrap:android.hardware.biometrics.BiometricSourceType:0x00a8: SGET  A[WRAPPED] (LINE:169) android.hardware.biometrics.BiometricSourceType.IRIS android.hardware.biometrics.BiometricSourceType)
      (r9v0 com.android.systemui.statusbar.phone.BiometricUnlockController$BiometricUiEvent)
     STATIC call: java.util.Map.of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.util.Map A[MD:<K, V>:(K, V, K, V, K, V):java.util.Map<K, V> (c), WRAPPED] (LINE:175)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BiometricUiEvent implements UiEventLogger.UiEventEnum {
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_FINGERPRINT_SUCCESS(396),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_FINGERPRINT_FAILURE(397),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_FINGERPRINT_ERROR(398),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_FACE_SUCCESS(399),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_FACE_FAILURE(400),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_FACE_ERROR(401),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_IRIS_SUCCESS(402),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_IRIS_FAILURE(403),
        /* JADX INFO: Fake field, exist only in values array */
        BIOMETRIC_IRIS_ERROR(404),
        BIOMETRIC_BOUNCER_SHOWN(916),
        STARTED_WAKING_UP(1378);

        public static final Map ERROR_EVENT_BY_SOURCE_TYPE;
        public static final Map FAILURE_EVENT_BY_SOURCE_TYPE;
        public static final Map SUCCESS_EVENT_BY_SOURCE_TYPE;
        private final int mId;

        static {
            ERROR_EVENT_BY_SOURCE_TYPE = Map.of(BiometricSourceType.FINGERPRINT, r13, BiometricSourceType.FACE, r10, BiometricSourceType.IRIS, r7);
            SUCCESS_EVENT_BY_SOURCE_TYPE = Map.of(BiometricSourceType.FINGERPRINT, r11, BiometricSourceType.FACE, r14, BiometricSourceType.IRIS, r9);
            FAILURE_EVENT_BY_SOURCE_TYPE = Map.of(BiometricSourceType.FINGERPRINT, r12, BiometricSourceType.FACE, r15, BiometricSourceType.IRIS, r8);
        }

        private BiometricUiEvent(int i) {
            this.mId = i;
        }

        public static BiometricUiEvent valueOf(String str) {
            return (BiometricUiEvent) Enum.valueOf(BiometricUiEvent.class, str);
        }

        public static BiometricUiEvent[] values() {
            return (BiometricUiEvent[]) $VALUES.clone();
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PendingAuthenticated {
        public final BiometricSourceType biometricSourceType;
        public final boolean isStrongBiometric;
        public final int userId;

        public PendingAuthenticated(int i, BiometricSourceType biometricSourceType, boolean z) {
            this.userId = i;
            this.biometricSourceType = biometricSourceType;
            this.isStrongBiometric = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.statusbar.phone.BiometricUnlockController$1] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.statusbar.phone.BiometricUnlockController$4, java.lang.Object] */
    public BiometricUnlockController(Lazy lazy, DozeScrimController dozeScrimController, KeyguardViewMediator keyguardViewMediator, NotificationShadeWindowController notificationShadeWindowController, KeyguardStateController keyguardStateController, Handler handler, KeyguardUpdateMonitor keyguardUpdateMonitor, Resources resources, KeyguardBypassController keyguardBypassController, MetricsLogger metricsLogger, DumpManager dumpManager, PowerManager powerManager, BiometricUnlockLogger biometricUnlockLogger, NotificationMediaManager notificationMediaManager, WakefulnessLifecycle wakefulnessLifecycle, ScreenLifecycle screenLifecycle, AuthController authController, StatusBarStateController statusBarStateController, SessionTracker sessionTracker, LatencyTracker latencyTracker, ScreenOffAnimationController screenOffAnimationController, VibratorHelper vibratorHelper, SystemClock systemClock, KeyguardFastBioUnlockController keyguardFastBioUnlockController, VibrationUtil vibrationUtil, WindowManager windowManager, Context context) {
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        this.mWakefulnessObserver = anonymousClass3;
        ?? r3 = new ScreenLifecycle.Observer() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController.4
            @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
            public final void onScreenTurnedOn() {
                if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isEnabledWof() && BiometricUnlockController.this.mUpdateMonitor.isFingerprintDisabledWithBadQuality()) {
                    Toast.makeText(BiometricUnlockController.this.mContext, R.string.kg_finger_print_bad_quality_error_message, 1).show();
                    BiometricUnlockController.this.mUpdateMonitor.clearFingerBadQualityCounts();
                }
                BiometricUnlockController biometricUnlockController = BiometricUnlockController.this;
                UiEventLogger uiEventLogger = BiometricUnlockController.UI_EVENT_LOGGER;
                biometricUnlockController.getClass();
            }
        };
        this.mScreenObserver = r3;
        this.mPowerManager = powerManager;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mMediaManager = notificationMediaManager;
        this.mLatencyTracker = latencyTracker;
        wakefulnessLifecycle.addObserver(anonymousClass3);
        screenLifecycle.addObserver(r3);
        this.mNotificationShadeWindowController = notificationShadeWindowController;
        this.mDozeScrimController = dozeScrimController;
        this.mKeyguardViewMediator = keyguardViewMediator;
        this.mKeyguardStateController = keyguardStateController;
        this.mHandler = handler;
        this.mConsecutiveFpFailureThreshold = resources.getInteger(R.integer.fp_consecutive_failure_time_ms);
        this.mKeyguardBypassController = keyguardBypassController;
        keyguardBypassController.unlockController = this;
        this.mMetricsLogger = metricsLogger;
        this.mStatusBarStateController = statusBarStateController;
        this.mSessionTracker = sessionTracker;
        this.mScreenOffAnimationController = screenOffAnimationController;
        this.mVibratorHelper = vibratorHelper;
        this.mLogger = biometricUnlockLogger;
        this.mSystemClock = systemClock;
        this.mSecLockIconViewControllerLazy = lazy;
        this.mVibrationUtil = vibrationUtil;
        this.mWindowManager = windowManager;
        this.mContext = context;
        this.mFastUnlockController = keyguardFastBioUnlockController;
        String name = BiometricUnlockController.class.getName();
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, name, this);
    }

    public static boolean isLargeCoverScreen() {
        if (LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            return true;
        }
        return false;
    }

    public static int toSubtype(BiometricSourceType biometricSourceType) {
        int i = AnonymousClass5.$SwitchMap$android$hardware$biometrics$BiometricSourceType[biometricSourceType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            return 3;
        }
        return 0;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println(" BiometricUnlockController:");
        printWriter.print("   mMode=");
        printWriter.println(this.mMode);
        printWriter.print("   mWakeLock=");
        printWriter.println(this.mWakeLock);
        if (this.mUpdateMonitor.isUdfpsSupported()) {
            printWriter.print("   mNumConsecutiveFpFailures=");
            printWriter.println(this.mNumConsecutiveFpFailures);
            printWriter.print("   time since last failure=");
            ((SystemClockImpl) this.mSystemClock).getClass();
            printWriter.println(android.os.SystemClock.uptimeMillis() - this.mLastFpFailureUptimeMillis);
        }
    }

    public final void finishKeyguardFadingAway() {
        boolean z;
        final boolean z2 = true;
        if (isWakeAndUnlock()) {
            this.mFadedAwayAfterWakeAndUnlock = true;
        }
        Log.d("BiometricUnlockCtrl", "finishKeyguardFadingAway");
        if (isBiometricUnlock()) {
            this.mUpdateMonitor.sendBiometricUnlockState(this.mAuthenticatedBioSourceType);
        }
        final KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mKeyguardViewMediator.mHelper;
        Lazy lazy = keyguardViewMediatorHelperImpl.biometricUnlockControllerLazy;
        if (!((BiometricUnlockController) lazy.get()).isBiometricUnlock()) {
            BiometricUnlockController biometricUnlockController = (BiometricUnlockController) lazy.get();
            if (!biometricUnlockController.isWakeAndUnlock() && !biometricUnlockController.mFadedAwayAfterWakeAndUnlock) {
                z = false;
            } else {
                z = true;
            }
            if (!z && ((BiometricUnlockController) lazy.get()).mMode != 7) {
                z2 = false;
            }
        }
        keyguardViewMediatorHelperImpl.uiBgExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl$onSdpUnlocked$1
            @Override // java.lang.Runnable
            public final void run() {
                KnoxStateMonitor knoxStateMonitor = KeyguardViewMediatorHelperImpl.this.knoxStateMonitor;
                boolean z3 = z2;
                ((KnoxStateMonitorImpl) knoxStateMonitor).getClass();
                int currentUser = KeyguardUpdateMonitor.getCurrentUser();
                if (SemPersonaManager.isDoEnabled(currentUser) && z3) {
                    android.util.Log.d("KnoxStateMonitorImpl", "unlockSdp :: Device Owner has been authenticated with biometrics");
                    try {
                        SdpAuthenticator.getInstance().onBiometricsAuthenticated(currentUser);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                ListPopupWindow$$ExternalSyntheticOutline0.m("unlockSdp :: Maybe keyguard hidden as user ", currentUser, "KnoxStateMonitorImpl");
            }
        });
        resetMode();
    }

    public final boolean hasPendingAuthentication() {
        PendingAuthenticated pendingAuthenticated = this.mPendingAuthenticated;
        if (pendingAuthenticated != null && this.mUpdateMonitor.isUnlockingWithBiometricAllowed(pendingAuthenticated.isStrongBiometric) && this.mPendingAuthenticated.userId == KeyguardUpdateMonitor.getCurrentUser()) {
            return true;
        }
        return false;
    }

    public final boolean isBiometricUnlock() {
        if (!isWakeAndUnlock() && this.mMode != 5) {
            return false;
        }
        return true;
    }

    public final boolean isUpdatePossible() {
        if (this.mBiometricToastView != null && !this.mKeyguardViewController.isBouncerShowing() && this.mUpdateMonitor.mDeviceInteractive) {
            return true;
        }
        return false;
    }

    public final boolean isWakeAndUnlock() {
        int i = this.mMode;
        if (i == 1 || i == 2 || i == 6) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onBiometricAcquired(BiometricSourceType biometricSourceType, int i) {
        int i2;
        if (BiometricSourceType.FINGERPRINT == biometricSourceType && i != 0) {
            return;
        }
        if (BiometricSourceType.FACE == biometricSourceType && i != 0) {
            return;
        }
        Trace.beginSection("BiometricUnlockController#onBiometricAcquired");
        BiometricSourceType biometricSourceType2 = BiometricSourceType.FINGERPRINT;
        PowerManager powerManager = this.mPowerManager;
        if (biometricSourceType == biometricSourceType2) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
            if (!keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true)) {
                android.util.Log.d("BiometricUnlockCtrl", "onBiometricAcquired - show bouncer!! )");
                this.mKeyguardViewController.showPrimaryBouncer(true);
                if (!keyguardUpdateMonitor.mDeviceInteractive) {
                    android.util.Log.i("BiometricUnlockCtrl", "onBiometricAcquired( fp wakelock: show bouncer and waking up... ) ");
                    powerManager.wakeUp(android.os.SystemClock.uptimeMillis(), 4, "android.policy:BIOMETRIC");
                }
                Trace.endSection();
                return;
            }
        }
        releaseBiometricWakeLock();
        if (this.mStatusBarStateController.isDozing()) {
            LatencyTracker latencyTracker = this.mLatencyTracker;
            if (latencyTracker.isEnabled()) {
                if (biometricSourceType == BiometricSourceType.FACE) {
                    i2 = 7;
                } else {
                    i2 = 2;
                }
                latencyTracker.onActionStart(i2);
            }
            this.mWakeLock = powerManager.newWakeLock(1, "wake-and-unlock:wakelock");
            Trace.beginSection("acquiring wake-and-unlock");
            this.mWakeLock.acquire();
            Trace.endSection();
            BiometricUnlockLogger biometricUnlockLogger = this.mLogger;
            biometricUnlockLogger.getClass();
            LogBuffer.log$default(biometricUnlockLogger.logBuffer, "BiometricUnlockLogger", LogLevel.INFO, "biometric acquired, grabbing biometric wakelock", null, 8, null);
            this.mHandler.postDelayed(this.mReleaseBiometricWakeLockRunnable, 15000L);
        }
        Trace.endSection();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onBiometricAuthFailed(BiometricSourceType biometricSourceType) {
        boolean z;
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        if (!keyguardStateControllerImpl.mOccluded && this.mDynamicLockMode != 1) {
            z = false;
        } else {
            z = true;
        }
        int i = AnonymousClass5.$SwitchMap$android$hardware$biometrics$BiometricSourceType[biometricSourceType.ordinal()];
        int i2 = 2;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        if (i != 1) {
            if (i == 2) {
                if (isUpdatePossible()) {
                    this.mBiometricToastView.update(KeyguardBiometricToastView.ToastType.FaceAuthenticationFail, "", keyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser()), keyguardStateControllerImpl.mCanDismissLockScreen, false);
                }
                vibrate(biometricSourceType, false);
            }
        } else if (!LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isUpdatePossible()) {
            if (keyguardUpdateMonitor.getLockoutBiometricAttemptDeadline() > 0) {
                this.mBiometricToastView.update(KeyguardBiometricToastView.ToastType.FingerprintAuthenticationFail, "", false, false, z);
            } else {
                this.mBiometricToastView.update(KeyguardBiometricToastView.ToastType.FingerprintAuthenticationFail, "", keyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser()), keyguardStateControllerImpl.mCanDismissLockScreen, z);
            }
        }
        this.mMetricsLogger.write(new LogMaker(1697).setType(11).setSubtype(toSubtype(biometricSourceType)));
        Optional.ofNullable((BiometricUiEvent) BiometricUiEvent.FAILURE_EVENT_BY_SOURCE_TYPE.get(biometricSourceType)).ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BiometricUnlockController biometricUnlockController = BiometricUnlockController.this;
                BiometricUnlockController.UI_EVENT_LOGGER.log((BiometricUnlockController.BiometricUiEvent) obj, biometricUnlockController.mSessionTracker.getSessionId(1));
            }
        });
        LatencyTracker latencyTracker = this.mLatencyTracker;
        if (latencyTracker.isEnabled()) {
            if (biometricSourceType == BiometricSourceType.FACE) {
                i2 = 7;
            }
            latencyTracker.onActionCancel(i2);
        }
        boolean hasVibrator = this.mVibratorHelper.hasVibrator();
        BiometricUnlockLogger biometricUnlockLogger = this.mLogger;
        if (!hasVibrator && (!keyguardUpdateMonitor.mDeviceInteractive || keyguardUpdateMonitor.mIsDreaming)) {
            biometricUnlockLogger.getClass();
            LogBuffer.log$default(biometricUnlockLogger.logBuffer, "BiometricUnlockLogger", LogLevel.DEBUG, "wakeup device on authentication failure (device doesn't have a vibrator)", null, 8, null);
        } else if (biometricSourceType == BiometricSourceType.FINGERPRINT && keyguardUpdateMonitor.isUdfpsSupported()) {
            ((SystemClockImpl) this.mSystemClock).getClass();
            long uptimeMillis = android.os.SystemClock.uptimeMillis();
            if (uptimeMillis - this.mLastFpFailureUptimeMillis < this.mConsecutiveFpFailureThreshold) {
                this.mNumConsecutiveFpFailures++;
            } else {
                this.mNumConsecutiveFpFailures = 1;
            }
            this.mLastFpFailureUptimeMillis = uptimeMillis;
            int i3 = this.mNumConsecutiveFpFailures;
            if (i3 >= 3) {
                biometricUnlockLogger.logUdfpsAttemptThresholdMet(i3);
                startWakeAndUnlock(3);
                UI_EVENT_LOGGER.log(BiometricUiEvent.BIOMETRIC_BOUNCER_SHOWN, this.mSessionTracker.getSessionId(1));
                this.mNumConsecutiveFpFailures = 0;
            }
        }
        releaseBiometricWakeLock();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onBiometricAuthenticated(int r18, android.hardware.biometrics.BiometricSourceType r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.BiometricUnlockController.onBiometricAuthenticated(int, android.hardware.biometrics.BiometricSourceType, boolean):void");
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onBiometricDetected() {
        Trace.beginSection("BiometricUnlockController#onBiometricDetected");
        if (this.mUpdateMonitor.mGoingToSleep) {
            Trace.endSection();
        } else {
            startWakeAndUnlock(3);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onBiometricError(int i, String str, BiometricSourceType biometricSourceType) {
        int i2 = AnonymousClass5.$SwitchMap$android$hardware$biometrics$BiometricSourceType[biometricSourceType.ordinal()];
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        boolean z = true;
        if (i2 != 1) {
            if (i2 == 2 && isUpdatePossible() && i != 3 && !keyguardUpdateMonitor.isShortcutLaunchInProgress()) {
                this.mBiometricToastView.update(KeyguardBiometricToastView.ToastType.FaceAuthenticationError, str, keyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser()), ((KeyguardStateControllerImpl) keyguardStateController).mCanDismissLockScreen, false);
            }
        } else if (!LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isUpdatePossible() && i != 5 && i != 10) {
            KeyguardBiometricToastView keyguardBiometricToastView = this.mBiometricToastView;
            KeyguardBiometricToastView.ToastType toastType = KeyguardBiometricToastView.ToastType.FingerprintAuthenticationError;
            boolean userHasTrust = keyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser());
            KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) keyguardStateController;
            boolean z2 = keyguardStateControllerImpl.mCanDismissLockScreen;
            if (!keyguardStateControllerImpl.mOccluded && this.mDynamicLockMode != 1) {
                z = false;
            }
            keyguardBiometricToastView.update(toastType, str, userHasTrust, z2, z);
        }
        this.mMetricsLogger.write(new LogMaker(1697).setType(15).setSubtype(toSubtype(biometricSourceType)).addTaggedData(1741, Integer.valueOf(i)));
        Optional.ofNullable((BiometricUiEvent) BiometricUiEvent.ERROR_EVENT_BY_SOURCE_TYPE.get(biometricSourceType)).ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BiometricUnlockController biometricUnlockController = BiometricUnlockController.this;
                BiometricUnlockController.UI_EVENT_LOGGER.log((BiometricUnlockController.BiometricUiEvent) obj, biometricUnlockController.mSessionTracker.getSessionId(1));
            }
        });
        BiometricSourceType biometricSourceType2 = BiometricSourceType.FINGERPRINT;
        releaseBiometricWakeLock();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onBiometricHelp(int i, String str, BiometricSourceType biometricSourceType) {
        boolean z;
        if (!biometricSourceType.equals(BiometricSourceType.FINGERPRINT) || TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
        vibrate(biometricSourceType, false);
        Context context = this.mContext;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 1001) {
                            if (i != 1003) {
                                if (i == 1004) {
                                    str = context.getString(R.string.kg_fingerprint_acquired_tsp_block);
                                }
                            } else {
                                str = context.getString(R.string.kg_fingerprint_acquired_light);
                            }
                        } else {
                            str = context.getString(R.string.kg_fingerprint_acquired_too_wet);
                        }
                    } else {
                        str = context.getString(R.string.kg_fingerprint_acquired_too_fast);
                    }
                } else {
                    str = context.getString(R.string.kg_fingerprint_acquired_image_dirty);
                }
            } else {
                str = context.getString(R.string.kg_fingerprint_acquired_insufficient);
            }
        } else {
            str = context.getString(R.string.kg_fingerprint_acquired_partial);
        }
        String str3 = str;
        if (!LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isUpdatePossible() && i != -1) {
            KeyguardBiometricToastView keyguardBiometricToastView = this.mBiometricToastView;
            KeyguardBiometricToastView.ToastType toastType = KeyguardBiometricToastView.ToastType.FingerprintAuthenticationHelp;
            boolean userHasTrust = this.mUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser());
            KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
            boolean z2 = keyguardStateControllerImpl.mCanDismissLockScreen;
            if (!keyguardStateControllerImpl.mOccluded && this.mDynamicLockMode != 1) {
                z = false;
            } else {
                z = true;
            }
            keyguardBiometricToastView.update(toastType, str3, userHasTrust, z2, z);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onDlsViewModeChanged(int i) {
        int i2 = this.mDynamicLockMode;
        this.mDynamicLockMode = i;
        if (i2 == 1 && i == 0) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    BiometricUnlockController.this.updateBackgroundAuthToastForBiometrics();
                }
            }, 1500L);
        } else {
            updateBackgroundAuthToastForBiometrics();
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
        this.mBouncer = z;
        updateBackgroundAuthToastForBiometrics();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onKeyguardVisibilityChanged(boolean z) {
        updateBackgroundAuthToastForBiometrics();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onRefreshBatteryInfo() {
        this.mUpdateMonitor.getKeyguardBatteryStatus().getClass();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onStartedGoingToSleep(int i) {
        this.mIsStartedGoingToSleep = true;
        updateBackgroundAuthToastForBiometrics();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onStartedWakingUp() {
        this.mIsStartedGoingToSleep = false;
        updateBackgroundAuthToastForBiometrics();
    }

    public final void releaseBiometricWakeLock() {
        if (this.mWakeLock != null) {
            this.mHandler.removeCallbacks(this.mReleaseBiometricWakeLockRunnable);
            BiometricUnlockLogger biometricUnlockLogger = this.mLogger;
            biometricUnlockLogger.getClass();
            LogBuffer.log$default(biometricUnlockLogger.logBuffer, "BiometricUnlockLogger", LogLevel.INFO, "releasing biometric wakelock", null, 8, null);
            this.mWakeLock.release();
            this.mWakeLock = null;
        }
    }

    public final void resetMode() {
        this.mMode = 0;
        this.mBiometricType = null;
        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
        if (notificationShadeWindowState.forceDozeBrightness) {
            notificationShadeWindowState.forceDozeBrightness = false;
            notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
        }
        Iterator it = ((HashSet) this.mBiometricUnlockEventsListeners).iterator();
        while (it.hasNext()) {
            ((BiometricUnlockEventsListener) it.next()).onResetMode();
        }
        this.mNumConsecutiveFpFailures = 0;
        this.mLastFpFailureUptimeMillis = 0L;
    }

    public final void sendSALog(String str, String str2) {
        String str3;
        if (this.mBouncer) {
            str3 = DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW;
        } else {
            str3 = DATA.DM_FIELD_INDEX.UT_APN_NAME;
        }
        if (LsRune.SECURITY_SUB_DISPLAY_COVER && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            str3 = str3.concat("_S");
        }
        SystemUIAnalytics.sendEventLog(str3, str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
    
        if (r3 != 6) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cb, code lost:
    
        if ((com.android.systemui.LsRune.AOD_FULLSCREEN && r1.settingsHelper.isAODShown() && r1.aodAmbientWallpaperHelper.isAODFullScreenMode()) != false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x022a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startWakeAndUnlock(final int r17) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.BiometricUnlockController.startWakeAndUnlock(int):void");
    }

    public final void updateBackgroundAuthToast(boolean z) {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("update biometric toast = ", z, "BiometricUnlockCtrl");
        if (this.mWindowLp == null) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2228, 16778008, -3);
            this.mWindowLp = layoutParams;
            layoutParams.gravity = 49;
            layoutParams.privateFlags |= 16;
            layoutParams.samsungFlags |= 131072;
            layoutParams.setTitle("KeyguardBiometricToastView");
        }
        if (z) {
            if (this.mUpdateMonitor.isAuthenticatedWithBiometric(KeyguardUpdateMonitor.getCurrentUser())) {
                android.util.Log.d("BiometricUnlockCtrl", "Already unlocked by biometric");
                return;
            }
            KeyguardBiometricToastView keyguardBiometricToastView = this.mBiometricToastView;
            WindowManager windowManager = this.mWindowManager;
            if (keyguardBiometricToastView != null) {
                if (keyguardBiometricToastView.mIsShowing) {
                    android.util.Log.d("BiometricUnlockCtrl", "Biometric toast already showing");
                    return;
                } else {
                    windowManager.removeView(keyguardBiometricToastView);
                    this.mBiometricToastView = null;
                }
            }
            KeyguardBiometricToastView keyguardBiometricToastView2 = (KeyguardBiometricToastView) View.inflate(this.mContext, R.layout.keyguard_biometric_toast_view, null);
            this.mBiometricToastView = keyguardBiometricToastView2;
            keyguardBiometricToastView2.mBiometricToastViewStateUpdater = new Consumer() { // from class: com.android.systemui.statusbar.phone.BiometricUnlockController$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BiometricUnlockController biometricUnlockController = BiometricUnlockController.this;
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    SecLockIconViewController secLockIconViewController = (SecLockIconViewController) biometricUnlockController.mSecLockIconViewControllerLazy.get();
                    secLockIconViewController.mIsBiometricToastViewAnimating = booleanValue;
                    secLockIconViewController.updateVisibility();
                }
            };
            windowManager.addView(keyguardBiometricToastView2, this.mWindowLp);
            return;
        }
        KeyguardBiometricToastView keyguardBiometricToastView3 = this.mBiometricToastView;
        if (keyguardBiometricToastView3 != null && keyguardBiometricToastView3.mIsShowing) {
            keyguardBiometricToastView3.dismiss(true);
        }
    }

    public final void updateBackgroundAuthToastForBiometrics() {
        KeyguardBiometricToastView keyguardBiometricToastView;
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        if (keyguardStateController == null) {
            return;
        }
        if ((this.mBouncer || this.mIsStartedGoingToSleep || (!((KeyguardStateControllerImpl) keyguardStateController).mShowing && this.mDynamicLockMode != 1)) && (keyguardBiometricToastView = this.mBiometricToastView) != null && keyguardBiometricToastView.mIsShowing) {
            updateBackgroundAuthToast(false);
            return;
        }
        if (((KeyguardStateControllerImpl) keyguardStateController).mShowing) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
            if (keyguardUpdateMonitor.isFingerprintDetectionRunning() || keyguardUpdateMonitor.isFaceDetectionRunning()) {
                updateBackgroundAuthToast(true);
            }
        }
    }

    public final void vibrate(BiometricSourceType biometricSourceType, boolean z) {
        int i;
        VibrationUtil vibrationUtil = this.mVibrationUtil;
        if (z) {
            vibrationUtil.playVibration(1);
            return;
        }
        if (biometricSourceType.equals(BiometricSourceType.FINGERPRINT)) {
            i = 114;
        } else {
            i = 5;
        }
        vibrationUtil.playVibration(i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface BiometricUnlockEventsListener {
        default void onModeChanged(int i) {
        }

        default void onResetMode() {
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
    public final void onKeyguardBouncerStateChanged(boolean z) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0059, code lost:
    
        if (r7.isUnlocked() != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
    
        if (r13.mSecure != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0090, code lost:
    
        if (r17.mKeyguardViewController.isBouncerShowing() == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e2, code lost:
    
        if (r16 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
    
        if (r16 != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0101, code lost:
    
        if (r16 != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0124, code lost:
    
        if (r16 != false) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startWakeAndUnlock(android.hardware.biometrics.BiometricSourceType r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.BiometricUnlockController.startWakeAndUnlock(android.hardware.biometrics.BiometricSourceType, boolean):void");
    }
}
