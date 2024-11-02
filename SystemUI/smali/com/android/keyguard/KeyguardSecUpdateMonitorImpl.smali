.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitor;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# instance fields
.field public mActiveRemoteLockIndex:I

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAuthHandler:Landroid/os/Handler;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field public final mBiometricFailedAttempts:Landroid/util/SparseIntArray;

.field public mBiometricId:I

.field public final mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;

.field public final mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

.field public mCarrierLock:Z

.field public mCocktailBarWindowType:I

.field public final mContext:Landroid/content/Context;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mCredentialType:I

.field public mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mDesktopManagerLazy:Ldagger/Lazy;

.field public mDeviceOwnerInfoText:Ljava/lang/String;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceStateCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

.field public mDisableCamera:Z

.field public mDisabledBiometricBySecurityDialog:Z

.field public final mDisplayListener:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

.field public final mESimRemoved:[Z

.field public mFMMLock:Z

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mFaceMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

.field public final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

.field public final mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

.field public mFingerprintAuthenticationSequence:I

.field public mFocusWindow:I

.field public mForceStartFinger:Z

.field public mFpInDisplayState:I

.field public mFpMaskToken:Landroid/os/IBinder;

.field public final mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

.field public final mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field public mHasFocus:Z

.field public mHasLockscreenWallpaper:Z

.field public mHasLoggedOnceAuditlog:Z

.field public mHasRedactedNotifications:Z

.field public mIsDismissActionExist:Z

.field public mIsDispatching:Z

.field public mIsDreamingForBiometrics:Z

.field public mIsDualDarInnerAuthRequired:Z

.field public mIsDualDarInnerAuthShowing:Z

.field public mIsDynamicLockViewMode:Z

.field public mIsEarlyWakeUp:Z

.field public mIsFODStrictMode:Z

.field public mIsFPCanceledByForegroundApp:Z

.field public mIsFPCanceledByProximity:Z

.field public mIsFaceReady:Z

.field public mIsFaceWidgetFullScreenMode:Z

.field public mIsFpLeave:Z

.field public mIsKidsModeRunning:Z

.field public mIsNotiStarShown:Z

.field public mIsOutOfService:Z

.field public mIsOwnerInfoEnabled:Z

.field public mIsPanelExpandingStarted:Z

.field public mIsQsFullyExpanded:Z

.field public mIsRearSelfie:Z

.field public mIsRunningBlackMemo:Z

.field public mIsScreenSaverRunning:Z

.field public mIsShortcutLaunchInProgress:Z

.field public mIsShowingKeepScreenOnPopup:Z

.field public mIsSkipFPResponse:Z

.field public mIsStartFacePossible:Z

.field public mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

.field public mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public final mKeyguardEditModeControllerLazy:Ldagger/Lazy;

.field public mKeyguardUnlocking:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public mLockoutAttemptDeadline:J

.field public mLockoutAttemptTimeout:J

.field public mLockoutBiometricAttemptDeadline:J

.field public mLockoutBiometricAttemptTimeout:J

.field public mLockscreenDisabled:Z

.field public final mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public mMaximumFailedPasswordsForWipe:I

.field public mNeedSubBioAuth:Z

.field public mNeedSubWofFpAuth:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mOneHandModeSettingsCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

.field public mOwnerInfoText:Ljava/lang/String;

.field public mPermanentLock:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginFaceWidgetManagerLazy:Ldagger/Lazy;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRemoteLockInfo:Ljava/util/ArrayList;

.field public mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public mSIPShown:Z

.field public final mSecureLockChangedCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

.field public mSemFaceCancelSignal:Landroid/os/CancellationSignal;

.field public final mServiceStatesBySlotId:Ljava/util/HashMap;

.field public final mSettingsCallbackForUPSM:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsValueListForPSM:[Landroid/net/Uri;

.field public mSimDisabledPermanently:Z

.field public final mSimPinPassed:[Z

.field public mSystemReady:Z

.field public final mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

.field public mTimeoutWithoutFace:Z

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUdfpsFingerDown:Z

.field public final mViewMediatorCallbackLazy:Ldagger/Lazy;

.field public final mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/app/AlarmManager;Landroid/os/PowerManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Landroid/view/IWindowManager;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/ActiveUnlockConfig;Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;Lcom/android/internal/logging/UiEventLogger;Ljavax/inject/Provider;Landroid/app/trust/TrustManager;Landroid/telephony/SubscriptionManager;Landroid/os/UserManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/SensorPrivacyManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/hardware/face/FaceManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricManager;Lcom/android/keyguard/FaceWakeUpTriggersConfig;Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/statusbar/policy/DevicePostureController;Ljava/util/Optional;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IBatteryStats;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/app/AlarmManager;",
            "Landroid/os/PowerManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/view/IWindowManager;",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/ActiveUnlockConfig;",
            "Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Ljavax/inject/Provider;",
            "Landroid/app/trust/TrustManager;",
            "Landroid/telephony/SubscriptionManager;",
            "Landroid/os/UserManager;",
            "Landroid/service/dreams/IDreamManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Landroid/hardware/SensorPrivacyManager;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/hardware/face/FaceManager;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/hardware/biometrics/BiometricManager;",
            "Lcom/android/keyguard/FaceWakeUpTriggersConfig;",
            "Landroid/telephony/CarrierConfigManager;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p15

    move-object/from16 v14, p18

    move-object/from16 v1, p0

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    move-object/from16 v5, p18

    move-object/from16 v6, p19

    move-object/from16 v7, p20

    move-object/from16 v8, p21

    move-object/from16 v9, p22

    move-object/from16 v10, p23

    move-object/from16 v11, p24

    move-object/from16 v12, p25

    move-object/from16 v13, p26

    move-object/from16 v14, p27

    move-object/from16 v15, p28

    move-object/from16 v16, p29

    move-object/from16 v17, p30

    move-object/from16 v18, p31

    move-object/from16 v19, p32

    move-object/from16 v20, p33

    move-object/from16 v21, p34

    move-object/from16 v22, p35

    move-object/from16 v23, p36

    move-object/from16 v24, p37

    move-object/from16 v25, p38

    move-object/from16 v26, p39

    move-object/from16 v27, p40

    move-object/from16 v28, p41

    move-object/from16 v29, p42

    move-object/from16 v30, p43

    move-object/from16 v31, p44

    move-object/from16 v32, p45

    move-object/from16 v33, p46

    move-object/from16 v34, p47

    .line 1
    invoke-direct/range {v1 .. v34}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/ActiveUnlockConfig;Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;Lcom/android/internal/logging/UiEventLogger;Ljavax/inject/Provider;Landroid/app/trust/TrustManager;Landroid/telephony/SubscriptionManager;Landroid/os/UserManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/SensorPrivacyManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/hardware/face/FaceManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricManager;Lcom/android/keyguard/FaceWakeUpTriggersConfig;Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/statusbar/policy/DevicePostureController;Ljava/util/Optional;)V

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 2
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 3
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    .line 4
    iput-object v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    const/4 v4, 0x0

    .line 5
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    .line 6
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    .line 7
    sget-object v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    iput-object v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 8
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    const/4 v5, -0x1

    .line 10
    iput v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    const/4 v5, 0x1

    .line 11
    iput-boolean v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    const/4 v6, 0x3

    .line 12
    iput v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 13
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    .line 14
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 15
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    .line 16
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    .line 17
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 18
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    .line 19
    iput v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 20
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    .line 21
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutWithoutFace:Z

    const-wide/16 v6, 0x0

    .line 22
    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 23
    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 24
    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    .line 25
    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    .line 26
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    .line 27
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    .line 28
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 29
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSecureLockChangedCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

    .line 30
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

    invoke-direct {v6, v2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsCallbackForUPSM:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

    const-string/jumbo v6, "ultra_powersaving_mode"

    .line 31
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "emergency_mode"

    .line 32
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    filled-new-array {v6, v7}, [Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsValueListForPSM:[Landroid/net/Uri;

    .line 33
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayListener:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

    new-array v6, v3, [Z

    .line 34
    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    .line 35
    iput v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    .line 36
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 37
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 38
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    .line 39
    iput v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    .line 40
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOneHandModeSettingsCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

    .line 41
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    const/4 v6, 0x6

    invoke-direct {v1, v2, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 42
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShowingKeepScreenOnPopup:Z

    .line 43
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRearSelfie:Z

    .line 44
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceStateCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    .line 45
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    .line 46
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 47
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mServiceStatesBySlotId:Ljava/util/HashMap;

    .line 49
    iput-boolean v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    .line 50
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    .line 51
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    .line 52
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;

    .line 53
    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    invoke-direct {v6, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 56
    new-instance v5, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    invoke-direct {v5, v2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 57
    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    move-object/from16 v3, p3

    .line 58
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 59
    iput-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p37

    .line 60
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v3, p24

    .line 61
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p42

    .line 62
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v3, p41

    .line 63
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    move-object/from16 v3, p21

    .line 64
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p10

    .line 65
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    move-object/from16 v3, p5

    .line 66
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object/from16 v3, p6

    .line 67
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p7

    .line 68
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v3, p8

    .line 69
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v3, p1

    .line 70
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p2

    .line 71
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v3, p12

    .line 72
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 73
    const-class v3, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/TrustManager;

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 74
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p19, v3

    move/from16 p20, v5

    move/from16 p21, v6

    move/from16 p22, v7

    move/from16 p23, v8

    move/from16 p24, v9

    move/from16 p25, v10

    move/from16 p26, v11

    move/from16 p27, v12

    invoke-direct/range {p19 .. p27}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZZ)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 75
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    .line 76
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 77
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 78
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 79
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 80
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "package"

    .line 81
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v5, p18

    .line 82
    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.sec.android.intent.action.BLACK_MEMO"

    .line 84
    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 86
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 87
    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 89
    invoke-static/range {p15 .. p15}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;

    invoke-direct {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    .line 91
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 93
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    :cond_1
    const-string v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 95
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    move-object/from16 p1, p18

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    .line 96
    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    .line 98
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ActivityManager.getCurrentUser() = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    .line 103
    invoke-virtual {v2, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    .line 104
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    .line 105
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updatePermanentLock(I)Z

    .line 106
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    .line 107
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    .line 108
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateLockscreenDisabled(I)Z

    .line 109
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    .line 110
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateOwnerInfo(I)Z

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDeviceOwnerInfo()Z

    .line 112
    iget-object v0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDualDARInnerLockscreenRequirement(I)V

    move-object/from16 v0, p9

    .line 114
    iput-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    .line 115
    iget-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_2

    const-string v0, "lock_settings"

    .line 116
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 118
    iput-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 119
    :cond_2
    iget-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 120
    :try_start_0
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setShellCommandCallback RemoteException! "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v1, p11

    .line 122
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 127
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_3

    move-object/from16 v1, p13

    .line 128
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWindowManagerService:Landroid/view/IWindowManager;

    :cond_3
    move-object/from16 v1, p14

    .line 129
    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardEditModeControllerLazy:Ldagger/Lazy;

    return-void
.end method

.method public static addAdditionalLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static containsFlag(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    .line 8
    .line 9
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addFailedFMMUnlockAttempt(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addFailedFMMUnlockAttempt(I)J

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final addMaskViewForOpticalFpSensor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "KeyguardFingerprint"

    .line 10
    .line 11
    const-string/jumbo v1, "semAddMaskView()"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFocusForBiometrics(IZ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final checkValidPrevCredentialType()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    const/16 v0, -0x270e

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p0, v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    return v0
.end method

.method public final clearESimRemoved()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-boolean v1, p0, v0

    .line 6
    .line 7
    aput-boolean v1, p0, v1

    .line 8
    .line 9
    return-void
.end method

.method public final clearFailedUnlockAttempts(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    .line 48
    .line 49
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;ZI)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final clearFingerBadQualityCounts()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final createChannels()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f130838

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x2

    .line 17
    const-string v3, "fbe_channel_id"

    .line 18
    .line 19
    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final dispatchCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 12

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 6
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dispatchCallback "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move-object v5, p1

    goto :goto_1

    :cond_1
    const-string v5, ""

    .line 8
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x5

    const-string v9, "BioUnlock"

    const/4 v4, -0x1

    .line 9
    invoke-static {v4}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v6

    .line 10
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x0

    .line 12
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/android/systemui/util/LogUtil;->internalEndTime(IILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_3
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    return-void
.end method

.method public final dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 6
    .line 7
    const/16 v0, 0x5dd

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public final dispatchDlsBiometricMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v1, 0x57a

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dispatchDlsViewMode(I)V
    .locals 2

    .line 1
    const-string v0, "dispatchDlsViewMode(), mode="

    .line 2
    .line 3
    const-string v1, "KeyguardUpdateMonitor"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 9
    .line 10
    const/16 v1, 0x57b

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final dispatchDreamingStarted()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public final dispatchDreamingStopped()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final dispatchDualDarInnerLockScreenState(IZ)V
    .locals 2

    .line 1
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthShowing:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 4
    .line 5
    const/16 v1, 0x462

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final dispatchForceStartFingerprint()V
    .locals 2

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string v1, "dispatchForceStartFingerprint"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "did not start force start fingerprint"

    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 22
    .line 23
    const/16 v0, 0x459

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final dispatchLockModeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v1, 0x44f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final dispatchNotiStarState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v1, 0x404

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dispatchSecureState(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x44e

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final dispatchSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 8
    .line 9
    const/16 v0, 0x450

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final dispatchStartSubscreenBiometric(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string v1, "dispatchStartSubscreenBiometric"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "did not start subscreen biometric in non interactive state."

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    const-string v1, "did not start subscreen biometric in not unlocking allowed state."

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const-string v0, "authSinceBoot"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const-string v1, "finger"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v0, "face"

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFace()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 68
    .line 69
    const/16 p1, 0x461

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final dispatchStartSubscreenFingerprint()V
    .locals 3

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string v1, "dispatchStartSubscreenFingerprint"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWofOnFold()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p0, "did not start subscreen fingerprint in wof off."

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const-string p0, "did not start subscreen biometric in not unlocking allowed state."

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 36
    .line 37
    const/16 v0, 0x460

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final dispatchStartedEarlyWakingUp(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 10
    .line 11
    const/16 v1, 0x3ea

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public final dispatchStartedWakingUp(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp(I)V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    .line 7
    .line 8
    const/16 v1, 0x68

    .line 9
    .line 10
    if-eq v1, p1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 13
    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public final dispatchStatusBarState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v1, 0x455

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dispatchStopSubscreenBiometric()V
    .locals 3

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string v1, "dispatchStopSubscreenBiometric"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 11
    .line 12
    const-string v2, "fingerprint_always_on_type"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    :cond_0
    const-string p0, "did not stop subscreen biometric because already mNeedSubBioAuth is false and subscreen wof is on. wofType = "

    .line 33
    .line 34
    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 44
    .line 45
    const/16 v0, 0x461

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final dispatchSubScreenBouncerStateChanged(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "dispatchSubScreenBouncerStateChanged mKeyguardShowing = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mKeyguardOccluded = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mBouncerFullyShown = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 29
    .line 30
    const-string v2, " isBouncerShowing = "

    .line 31
    .line 32
    const-string v3, "KeyguardUpdateMonitor"

    .line 33
    .line 34
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p1, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 52
    :goto_1
    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendKeyguardStateUpdated(ZZZZ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final dispatchWallpaperTypeChanged(IZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda26;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda26;-><init>(IZZ)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final dumpAllUsers(Ljava/io/PrintWriter;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "  Current user id="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_d

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintSupported()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const-string v5, "    enabledByUser="

    .line 65
    .line 66
    const-string v6, "    trustManaged="

    .line 67
    .line 68
    const-string v7, "    strongAuthFlags="

    .line 69
    .line 70
    const-string v8, "    listening: actual="

    .line 71
    .line 72
    const-string v9, "    possible="

    .line 73
    .line 74
    const-string v10, "    disabled(DPM)="

    .line 75
    .line 76
    const-string v11, "    authSinceBoot="

    .line 77
    .line 78
    const-string v12, "    auth\'d="

    .line 79
    .line 80
    const-string v13, "KeyguardFingerprintListen"

    .line 81
    .line 82
    const-string v14, "    allowed="

    .line 83
    .line 84
    const-string v15, "  Fingerprint state (user="

    .line 85
    .line 86
    move-object/from16 v16, v2

    .line 87
    .line 88
    const-string v2, ")"

    .line 89
    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    move-object/from16 v17, v13

    .line 99
    .line 100
    iget-object v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    check-cast v13, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 107
    .line 108
    move-object/from16 v18, v5

    .line 109
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v15, "    isFingerprintClass3="

    .line 131
    .line 132
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintClass3()Z

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v15, "    areAllFpAuthenticatorsRegistered="

    .line 152
    .line 153
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 157
    .line 158
    iget-boolean v15, v15, Lcom/android/systemui/biometrics/AuthController;->mAllFingerprintAuthenticatorsRegistered:Z

    .line 159
    .line 160
    invoke-static {v5, v15, v1, v14}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-eqz v13, :cond_0

    .line 165
    .line 166
    iget-boolean v15, v13, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    .line 167
    .line 168
    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-eqz v15, :cond_0

    .line 173
    .line 174
    const/4 v15, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_0
    const/4 v15, 0x0

    .line 177
    :goto_1
    invoke-static {v5, v15, v1, v12}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-eqz v13, :cond_1

    .line 182
    .line 183
    iget-boolean v13, v13, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    .line 184
    .line 185
    if-eqz v13, :cond_1

    .line 186
    .line 187
    const/4 v13, 0x1

    .line 188
    goto :goto_2

    .line 189
    :cond_1
    const/4 v13, 0x0

    .line 190
    :goto_2
    invoke-static {v5, v13, v1, v11}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    iget-object v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 195
    .line 196
    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintDisabled(I)Z

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 254
    .line 255
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v13, " expected="

    .line 259
    .line 260
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const/4 v13, 0x0

    .line 264
    invoke-virtual {v0, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-static {v1, v5, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v5, "    mFingerprintLockedOut="

    .line 315
    .line 316
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 320
    .line 321
    const-string v13, "    mFingerprintLockedOutPermanent="

    .line 322
    .line 323
    invoke-static {v4, v5, v1, v13}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 328
    .line 329
    move-object/from16 v13, v18

    .line 330
    .line 331
    invoke-static {v4, v5, v1, v13}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 336
    .line 337
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v5, "    mKeyguardOccluded="

    .line 354
    .line 355
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 359
    .line 360
    const-string v15, "    mIsDreaming="

    .line 361
    .line 362
    invoke-static {v4, v5, v1, v15}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 367
    .line 368
    invoke-static {v4, v5, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 369
    .line 370
    .line 371
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 372
    .line 373
    iget-object v4, v4, Lcom/android/systemui/biometrics/AuthController;->mSidefpsProps:Ljava/util/List;

    .line 374
    .line 375
    if-eqz v4, :cond_2

    .line 376
    .line 377
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_2

    .line 382
    .line 383
    const/4 v4, 0x1

    .line 384
    goto :goto_3

    .line 385
    :cond_2
    const/4 v4, 0x0

    .line 386
    :goto_3
    if-eqz v4, :cond_3

    .line 387
    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v5, "        sfpsEnrolled="

    .line 391
    .line 392
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSfpsEnrolled()Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v5, "        shouldListenForSfps="

    .line 412
    .line 413
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const/4 v5, 0x0

    .line 417
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSfpsEnrolled()Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_3

    .line 436
    .line 437
    const-string v4, "        interactiveToAuthEnabled=false"

    .line 438
    .line 439
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_3
    new-instance v4, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 443
    .line 444
    sget-object v5, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 445
    .line 446
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintListenBuffer:Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;

    .line 447
    .line 448
    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;->toList()Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v15

    .line 452
    move-object/from16 v18, v13

    .line 453
    .line 454
    move-object/from16 v13, v17

    .line 455
    .line 456
    invoke-direct {v4, v13, v5, v15}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 460
    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_4
    move-object/from16 v18, v5

    .line 464
    .line 465
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 466
    .line 467
    if-eqz v4, :cond_5

    .line 468
    .line 469
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintSensorProperties:Ljava/util/List;

    .line 470
    .line 471
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-eqz v4, :cond_5

    .line 476
    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v5, "    mFingerprintSensorProperties.isEmpty="

    .line 498
    .line 499
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintSensorProperties:Ljava/util/List;

    .line 503
    .line 504
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v5, "    mFpm.isHardwareDetected="

    .line 521
    .line 522
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 526
    .line 527
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    new-instance v4, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 542
    .line 543
    sget-object v5, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 544
    .line 545
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintListenBuffer:Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;

    .line 546
    .line 547
    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;->toList()Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object v15

    .line 551
    invoke-direct {v4, v13, v5, v15}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 555
    .line 556
    .line 557
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceSupported()Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    const-string v5, "KeyguardFaceListen"

    .line 562
    .line 563
    if-eqz v4, :cond_8

    .line 564
    .line 565
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 566
    .line 567
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    iget-object v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 572
    .line 573
    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v13

    .line 577
    check-cast v13, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 578
    .line 579
    new-instance v15, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    move-object/from16 v17, v5

    .line 582
    .line 583
    const-string v5, "  Face authentication state (user="

    .line 584
    .line 585
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v5, "    isFaceClass3="

    .line 604
    .line 605
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceClass3()Z

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    if-eqz v13, :cond_6

    .line 628
    .line 629
    iget-boolean v5, v13, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    .line 630
    .line 631
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-eqz v5, :cond_6

    .line 636
    .line 637
    const/4 v5, 0x1

    .line 638
    goto :goto_5

    .line 639
    :cond_6
    const/4 v5, 0x0

    .line 640
    :goto_5
    invoke-static {v2, v5, v1, v12}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    if-eqz v13, :cond_7

    .line 645
    .line 646
    iget-boolean v5, v13, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    .line 647
    .line 648
    if-eqz v5, :cond_7

    .line 649
    .line 650
    const/4 v5, 0x1

    .line 651
    goto :goto_6

    .line 652
    :cond_7
    const/4 v5, 0x0

    .line 653
    :goto_6
    invoke-static {v2, v5, v1, v11}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 658
    .line 659
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    iget v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 717
    .line 718
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v5, " expected=("

    .line 722
    .line 723
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFace()Z

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    const-string v4, "    isNonStrongBiometricAllowedAfterIdleTimeout="

    .line 762
    .line 763
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 767
    .line 768
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    .line 788
    .line 789
    .line 790
    move-result v4

    .line 791
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    .line 802
    .line 803
    const-string v4, "    mFaceLockedOutPermanent="

    .line 804
    .line 805
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 809
    .line 810
    move-object/from16 v5, v18

    .line 811
    .line 812
    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 817
    .line 818
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 819
    .line 820
    .line 821
    move-result v4

    .line 822
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    .line 833
    .line 834
    const-string v4, "    mSecureCameraLaunched="

    .line 835
    .line 836
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 840
    .line 841
    const-string v5, "    mPrimaryBouncerFullyShown="

    .line 842
    .line 843
    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 848
    .line 849
    const-string v5, "    mNeedsSlowUnlockTransition="

    .line 850
    .line 851
    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 856
    .line 857
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    new-instance v2, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 868
    .line 869
    sget-object v4, Lcom/android/keyguard/KeyguardFaceListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 870
    .line 871
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenBuffer:Lcom/android/keyguard/KeyguardFaceListenModel$Buffer;

    .line 872
    .line 873
    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 874
    .line 875
    iget-object v5, v5, Lcom/android/keyguard/KeyguardFaceListenModel$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 876
    .line 877
    invoke-direct {v6, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 878
    .line 879
    .line 880
    sget-object v5, Lcom/android/keyguard/KeyguardFaceListenModel$Buffer$toList$1;->INSTANCE:Lcom/android/keyguard/KeyguardFaceListenModel$Buffer$toList$1;

    .line 881
    .line 882
    new-instance v7, Lkotlin/sequences/TransformingSequence;

    .line 883
    .line 884
    invoke-direct {v7, v6, v5}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 885
    .line 886
    .line 887
    invoke-static {v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 888
    .line 889
    .line 890
    move-result-object v5

    .line 891
    move-object/from16 v6, v17

    .line 892
    .line 893
    invoke-direct {v2, v6, v4, v5}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 897
    .line 898
    .line 899
    goto :goto_7

    .line 900
    :cond_8
    move-object v6, v5

    .line 901
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 902
    .line 903
    if-eqz v4, :cond_9

    .line 904
    .line 905
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    .line 906
    .line 907
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 908
    .line 909
    .line 910
    move-result v4

    .line 911
    if-eqz v4, :cond_9

    .line 912
    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    const-string v5, "  Face state (user="

    .line 916
    .line 917
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    .line 934
    .line 935
    const-string v4, "    mFaceSensorProperties.isEmpty="

    .line 936
    .line 937
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    .line 941
    .line 942
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    const-string v4, "    mFaceManager.isHardwareDetected="

    .line 959
    .line 960
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 964
    .line 965
    invoke-virtual {v4}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    .line 966
    .line 967
    .line 968
    move-result v4

    .line 969
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v2

    .line 976
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    new-instance v2, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 980
    .line 981
    sget-object v4, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    .line 982
    .line 983
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintListenBuffer:Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;

    .line 984
    .line 985
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;->toList()Ljava/util/List;

    .line 986
    .line 987
    .line 988
    move-result-object v5

    .line 989
    invoke-direct {v2, v6, v4, v5}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 993
    .line 994
    .line 995
    :cond_9
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    const-string v4, "ActiveUnlockRunning="

    .line 998
    .line 999
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 1003
    .line 1004
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 1005
    .line 1006
    .line 1007
    move-result v5

    .line 1008
    invoke-virtual {v4, v5}, Landroid/app/trust/TrustManager;->isActiveUnlockRunning(I)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v4

    .line 1012
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v2, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 1023
    .line 1024
    sget-object v4, Lcom/android/keyguard/KeyguardActiveUnlockModel;->TABLE_HEADERS:Ljava/util/List;

    .line 1025
    .line 1026
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveUnlockTriggerBuffer:Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer;

    .line 1027
    .line 1028
    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 1029
    .line 1030
    iget-object v5, v5, Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 1031
    .line 1032
    invoke-direct {v6, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 1033
    .line 1034
    .line 1035
    sget-object v5, Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer$toList$1;->INSTANCE:Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer$toList$1;

    .line 1036
    .line 1037
    new-instance v7, Lkotlin/sequences/TransformingSequence;

    .line 1038
    .line 1039
    invoke-direct {v7, v6, v5}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-static {v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v5

    .line 1046
    const-string v6, "KeyguardActiveUnlockTriggers"

    .line 1047
    .line 1048
    invoke-direct {v2, v6, v4, v5}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 1052
    .line 1053
    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    const-string v4, "  Security state (user="

    .line 1057
    .line 1058
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    const-string v4, ") - cached state"

    .line 1065
    .line 1066
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v2

    .line 1073
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    const-string v4, "    getBiometricType="

    .line 1079
    .line 1080
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1084
    .line 1085
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    .line 1086
    .line 1087
    .line 1088
    move-result v4

    .line 1089
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    const-string v4, " - "

    .line 1093
    .line 1094
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:Landroid/util/SparseIntArray;

    .line 1098
    .line 1099
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 1100
    .line 1101
    .line 1102
    move-result v5

    .line 1103
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v2

    .line 1110
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    const-string v5, "    isFingerprintOptionEnabled="

    .line 1116
    .line 1117
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1121
    .line 1122
    const/4 v6, 0x1

    .line 1123
    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    if-ne v5, v6, :cond_a

    .line 1128
    .line 1129
    const/4 v5, 0x1

    .line 1130
    goto :goto_8

    .line 1131
    :cond_a
    const/4 v5, 0x0

    .line 1132
    :goto_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    .line 1139
    .line 1140
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 1141
    .line 1142
    .line 1143
    move-result v5

    .line 1144
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    const-string v5, "    isFaceOptionEnabled="

    .line 1157
    .line 1158
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1162
    .line 1163
    const/16 v6, 0x100

    .line 1164
    .line 1165
    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 1166
    .line 1167
    .line 1168
    move-result v5

    .line 1169
    const/4 v6, 0x1

    .line 1170
    if-ne v5, v6, :cond_b

    .line 1171
    .line 1172
    goto :goto_9

    .line 1173
    :cond_b
    const/4 v6, 0x0

    .line 1174
    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    .line 1181
    .line 1182
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v5

    .line 1186
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    const-string v5, "    getFailedUnlockAttempt="

    .line 1199
    .line 1200
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1204
    .line 1205
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 1206
    .line 1207
    .line 1208
    move-result v5

    .line 1209
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v2

    .line 1216
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    const-string v5, "    mCredentialType="

    .line 1222
    .line 1223
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1227
    .line 1228
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 1229
    .line 1230
    .line 1231
    move-result v5

    .line 1232
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    iget v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    .line 1239
    .line 1240
    const-string v6, "    mPrevCredentialType="

    .line 1241
    .line 1242
    invoke-static {v2, v5, v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v2

    .line 1246
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1247
    .line 1248
    const/16 v6, -0x270e

    .line 1249
    .line 1250
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    const-string v5, "    isSecure="

    .line 1267
    .line 1268
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1272
    .line 1273
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v5

    .line 1277
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure()Z

    .line 1284
    .line 1285
    .line 1286
    move-result v5

    .line 1287
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v2

    .line 1294
    const-string v5, "    isAutoPinConfirmEnabled="

    .line 1295
    .line 1296
    invoke-static {v1, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v2

    .line 1300
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1301
    .line 1302
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v5

    .line 1306
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    const-string v5, "    mDisableCamera="

    .line 1319
    .line 1320
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1324
    .line 1325
    const/4 v6, 0x0

    .line 1326
    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    .line 1327
    .line 1328
    .line 1329
    move-result v5

    .line 1330
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    .line 1337
    .line 1338
    const-string v5, "    mMaximumFailedPasswordsForWipe="

    .line 1339
    .line 1340
    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    iget v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 1345
    .line 1346
    const-string v5, "    getUserCanSkipBouncer="

    .line 1347
    .line 1348
    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v2

    .line 1352
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v4

    .line 1356
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    const-string v4, "    getUserHasTrust="

    .line 1369
    .line 1370
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v4

    .line 1377
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    const-string v4, "    isUserUnlocked="

    .line 1390
    .line 1391
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v4

    .line 1398
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    if-eqz v3, :cond_c

    .line 1409
    .line 1410
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    const-string v4, "    hasSeparateChallenge="

    .line 1413
    .line 1414
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1418
    .line 1419
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v3

    .line 1423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v2

    .line 1430
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    :cond_c
    move-object/from16 v2, v16

    .line 1434
    .line 1435
    goto/16 :goto_0

    .line 1436
    .line 1437
    :cond_d
    return-void
.end method

.method public final enableSecurityDebug()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enableSecurityDebug by "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const-string v2, "KeyguardUpdateMonitor"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setSecurityDebugLevel(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getBiometricType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "KeyguardUpdateMonitor"

    .line 6
    .line 7
    const-string p1, "mLockPatternUtils is null"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final getCredentialTypeForUser(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFaceAuthenticated(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final getFaceStrongBiometric()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public final getFailedBiometricUnlockAttempts(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getFailedFMMUnlockAttempt(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    long-to-int p0, p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final getFailedUnlockAttempts(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFingerprintAuthenticated(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final getKeyguardBatteryMessage(Landroid/content/Intent;)Landroid/os/Message;
    .locals 14

    .line 1
    const-string/jumbo v0, "status"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string/jumbo v0, "plugged"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const-string v0, "level"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v0, "android.os.extra.CHARGING_STATUS"

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const-string/jumbo v0, "max_charging_current"

    .line 30
    .line 31
    .line 32
    const/4 v7, -0x1

    .line 33
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string/jumbo v8, "max_charging_voltage"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string/jumbo v9, "online"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const-string v10, "hv_charger"

    .line 52
    .line 53
    invoke-virtual {p1, v10, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const-string v11, "current_event"

    .line 58
    .line 59
    invoke-virtual {p1, v11, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    const-string v12, "charger_type"

    .line 64
    .line 65
    invoke-virtual {p1, v12, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    const-string/jumbo v13, "misc_event"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v13, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/high16 v13, 0x1000000

    .line 77
    .line 78
    and-int/2addr p1, v13

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v1, v2

    .line 83
    :goto_0
    if-gtz v8, :cond_1

    .line 84
    .line 85
    const v8, 0x4c4b40

    .line 86
    .line 87
    .line 88
    :cond_1
    if-lez v0, :cond_2

    .line 89
    .line 90
    div-int/lit16 v0, v0, 0x3e8

    .line 91
    .line 92
    div-int/lit16 v8, v8, 0x3e8

    .line 93
    .line 94
    mul-int/2addr v8, v0

    .line 95
    move v7, v8

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 97
    .line 98
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 99
    .line 100
    move-object v2, p1

    .line 101
    move v8, v9

    .line 102
    move v9, v10

    .line 103
    move v10, v11

    .line 104
    move v11, v12

    .line 105
    move v12, v1

    .line 106
    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZIIZ)V

    .line 107
    .line 108
    .line 109
    const/16 v0, 0x12e

    .line 110
    .line 111
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public final getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLockoutAttemptDeadline()J
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 6
    .line 7
    cmp-long v4, v2, v0

    .line 8
    .line 9
    if-gez v4, :cond_0

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 12
    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    cmp-long v4, v4, v6

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 22
    .line 23
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0

    .line 34
    :cond_0
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 35
    .line 36
    add-long/2addr v0, v4

    .line 37
    cmp-long v0, v2, v0

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 44
    .line 45
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    return-wide v0

    .line 56
    :cond_1
    return-wide v2
.end method

.method public final getLockoutBiometricAttemptDeadline()J
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    .line 17
    .line 18
    cmp-long v0, v5, v3

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    iget-wide v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    .line 23
    .line 24
    cmp-long v0, v7, v1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    iget-wide v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    .line 29
    .line 30
    add-long/2addr v3, v7

    .line 31
    cmp-long v0, v5, v3

    .line 32
    .line 33
    if-lez v0, :cond_3

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 38
    .line 39
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    :cond_3
    const-string v0, "Incorrect biometric authentication attempts ("

    .line 50
    .line 51
    cmp-long v1, v5, v1

    .line 52
    .line 53
    if-lez v1, :cond_4

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 60
    .line 61
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    invoke-virtual {p0, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    const/4 v7, 0x5

    .line 76
    const/4 v8, 0x1

    .line 77
    const/4 v9, 0x1

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    const-class v4, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 83
    .line 84
    const-string v11, "KeyguardSecUpdateMonitorImpl"

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ") limit reached"

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_4
    if-gtz v1, :cond_5

    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    .line 126
    .line 127
    :cond_5
    :goto_0
    return-wide v5
.end method

.method public final getMaxFailedUnlockAttempts()I
    .locals 1

    .line 1
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2
    .line 3
    const/16 v0, 0x32

    .line 4
    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    :goto_0
    const-string/jumbo p0, "persist.lock.max_attempts"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final getOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrevCredentialType()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    const/16 v0, -0x270e

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getRemainingAttempt(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAutoWipe()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedUnlockAttempts(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getRemainingAttemptsBeforeWipe()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const-string v1, "getRemainingAttempt type : "

    .line 24
    .line 25
    const-string v2, ", failedAttempts : "

    .line 26
    .line 27
    const-string v3, ", remainingAttempts : "

    .line 28
    .line 29
    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "KeyguardUpdateMonitor"

    .line 34
    .line 35
    invoke-static {v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0xa

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-eq p1, v2, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x6

    .line 50
    if-lt v0, p1, :cond_3

    .line 51
    .line 52
    const/16 p1, 0x9

    .line 53
    .line 54
    if-gt v0, p1, :cond_3

    .line 55
    .line 56
    return p0

    .line 57
    :cond_1
    if-ge p0, v1, :cond_3

    .line 58
    .line 59
    return p0

    .line 60
    :cond_2
    if-gt p0, v1, :cond_3

    .line 61
    .line 62
    return p0

    .line 63
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public final getRemainingAttemptsBeforeWipe()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedUnlockAttempts(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAutoWipe()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 18
    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/16 p0, 0x14

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    if-lez p0, :cond_2

    .line 29
    .line 30
    sub-int/2addr p0, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p0, -0x1

    .line 33
    :goto_1
    return p0
.end method

.method public final getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final getRemoteLockType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public final getUserCanSkipBouncer(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    :cond_1
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 35
    .line 36
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 41
    .line 42
    and-int/2addr p0, v2

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    move p0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move p0, v1

    .line 48
    :goto_0
    if-eqz p0, :cond_4

    .line 49
    .line 50
    :cond_3
    move v1, v2

    .line 51
    :cond_4
    return v1
.end method

.method public final getUserUnlockedWithBiometricAndIsBypassing(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometricAndIsBypassing(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final handleBatteryUpdate(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 6
    .line 7
    .line 8
    const-string v0, "KeyguardUpdateMonitor"

    .line 9
    .line 10
    const-string v1, "handleBatteryUpdate"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 22
    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    iget v4, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    .line 32
    .line 33
    if-eq v4, v2, :cond_1

    .line 34
    .line 35
    if-ne v4, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move v4, v2

    .line 41
    :goto_1
    if-eqz v4, :cond_3

    .line 42
    .line 43
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 44
    .line 45
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    iput-wide v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    :catch_0
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    iget v7, v4, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    .line 66
    .line 67
    iget v8, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    .line 68
    .line 69
    if-eq v7, v8, :cond_4

    .line 70
    .line 71
    move v7, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v7, v3

    .line 74
    :goto_2
    if-ne v6, v5, :cond_e

    .line 75
    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    iget v6, v4, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    .line 80
    .line 81
    iget v7, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    .line 82
    .line 83
    if-eq v6, v7, :cond_6

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_6
    if-eqz v5, :cond_7

    .line 87
    .line 88
    iget-boolean v6, v4, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    .line 89
    .line 90
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    .line 91
    .line 92
    if-eq v6, v7, :cond_7

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    if-eqz v5, :cond_8

    .line 96
    .line 97
    iget v6, v4, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    .line 98
    .line 99
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    .line 100
    .line 101
    if-eq v6, v7, :cond_8

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    if-eqz v5, :cond_9

    .line 105
    .line 106
    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    .line 107
    .line 108
    if-lez v6, :cond_9

    .line 109
    .line 110
    iget v7, v4, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    .line 111
    .line 112
    if-eq v7, v6, :cond_9

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_9
    if-eqz v5, :cond_a

    .line 116
    .line 117
    iget v6, v4, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    .line 118
    .line 119
    iget v7, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    .line 120
    .line 121
    if-eq v6, v7, :cond_a

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    if-eqz v5, :cond_b

    .line 125
    .line 126
    iget-wide v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    .line 127
    .line 128
    const-wide/16 v8, 0x0

    .line 129
    .line 130
    cmp-long v8, v6, v8

    .line 131
    .line 132
    if-lez v8, :cond_b

    .line 133
    .line 134
    iget-wide v8, v4, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    .line 135
    .line 136
    cmp-long v6, v8, v6

    .line 137
    .line 138
    if-eqz v6, :cond_b

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_b
    if-eqz v5, :cond_c

    .line 142
    .line 143
    iget v6, v4, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    .line 144
    .line 145
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    .line 146
    .line 147
    if-eq v6, v7, :cond_c

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_c
    if-eqz v5, :cond_d

    .line 151
    .line 152
    iget v5, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    .line 153
    .line 154
    iget v4, v4, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    .line 155
    .line 156
    if-eq v5, v4, :cond_d

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_d
    move v2, v3

    .line 160
    :cond_e
    :goto_3
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 161
    .line 162
    if-eqz v2, :cond_10

    .line 163
    .line 164
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20;

    .line 165
    .line 166
    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_f
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V

    .line 175
    .line 176
    .line 177
    :cond_10
    :goto_4
    return-void
.end method

.method public final handleDevicePolicyManagerStateChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDualDARInnerLockscreenRequirement(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final handleDlsViewMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleDlsViewMode(), mode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "KeyguardUpdateMonitor"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(II)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final handleDreamingStateChanged(I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    move p1, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p1, v0

    .line 8
    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v2, v0

    .line 25
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 26
    .line 27
    if-eq v3, p1, :cond_2

    .line 28
    .line 29
    move v3, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v3, v0

    .line 32
    :goto_2
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 33
    .line 34
    if-eq v4, v2, :cond_3

    .line 35
    .line 36
    move v4, v1

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move v4, v0

    .line 39
    :goto_3
    if-nez v3, :cond_4

    .line 40
    .line 41
    if-nez v4, :cond_4

    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "handleDreamingStateChanged() dreaming : "

    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 52
    .line 53
    const-string v5, " -> "

    .line 54
    .line 55
    const-string v6, ", screen saver : "

    .line 56
    .line 57
    invoke-static {v3, v4, v5, p1, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 61
    .line 62
    const-string v6, "KeyguardUpdateMonitor"

    .line 63
    .line 64
    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 70
    .line 71
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 72
    .line 73
    const/4 v3, 0x4

    .line 74
    invoke-direct {p1, p0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 79
    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 87
    .line 88
    .line 89
    :cond_5
    const/4 p1, 0x2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 91
    .line 92
    .line 93
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 98
    .line 99
    invoke-virtual {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_6
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsStartFacePossible:Z

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 108
    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    :goto_4
    return-void
.end method

.method public final handleDualDarInnerLockScreenStateChanged(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda22;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda22;-><init>(IZ)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final handleFaceAuthFailed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->reportFailedBiometricUnlockAttempt(I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_FAILED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final handleFaceAuthenticated(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    .line 13
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    const-string v0, "KeyguardFingerprint"

    .line 40
    .line 41
    const-string v1, "Face onAuthenticationSucceeded. FP will be stop!"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    .line 47
    .line 48
    .line 49
    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1, p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;Z)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v2, "onBiometricAuthenticated"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    invoke-direct {v2, p1, p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda2;-><init>(ILcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final handleFaceError(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "KeyguardFace"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo p0, "onAuthenticationError(), Face is not running"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x5

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    const-string/jumbo p0, "onAuthenticationError(), FACE_ERROR_CANCELED ignore"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/16 v0, 0x2713

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string/jumbo p0, "onAuthenticationError(), FACE_ERROR_CAMERA_FAILURE ignore"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v2, "onAuthenticationError(), errorCode="

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ", errString="

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const v2, 0x7f13081c

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "\n"

    .line 95
    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const v2, 0x7f130816

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 126
    .line 127
    .line 128
    const-string p2, ""

    .line 129
    .line 130
    :cond_3
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_ERROR:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 133
    .line 134
    .line 135
    const v1, 0x186a1

    .line 136
    .line 137
    .line 138
    if-ne p1, v1, :cond_4

    .line 139
    .line 140
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 141
    .line 142
    if-nez v1, :cond_4

    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const v3, 0x7f07124b

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    const/16 v3, 0x31

    .line 164
    .line 165
    invoke-virtual {v1, v3, v0, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 169
    .line 170
    .line 171
    :cond_4
    const/4 v1, 0x3

    .line 172
    if-ne p1, v1, :cond_6

    .line 173
    .line 174
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutWithoutFace:Z

    .line 175
    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    const-string v1, "4"

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    const-string v1, "3"

    .line 182
    .line 183
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFaceSALog(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    const/16 v1, 0x3ee

    .line 188
    .line 189
    if-ne p1, v1, :cond_7

    .line 190
    .line 191
    const-string v1, "5"

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFaceSALog(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_1
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    .line 197
    .line 198
    invoke-direct {v1, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final handleFingerprintAcquired(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "handleFingerprintAcquired( "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "  )"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "KeyguardFingerprint"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x2712

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x2714

    .line 35
    .line 36
    if-eq p1, v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFpLeave:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFpLeave:Z

    .line 43
    .line 44
    :goto_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "FP Capture started. Therefore, the FP response will be skipped."

    .line 58
    .line 59
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    const/16 v1, 0x3ec

    .line 63
    .line 64
    if-eq p1, v1, :cond_3

    .line 65
    .line 66
    move v1, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v1, v3

    .line 69
    :goto_1
    new-instance v4, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 70
    .line 71
    invoke-direct {v4, p0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v4, v1}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v4, 0x0

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    if-ne p1, v0, :cond_6

    .line 89
    .line 90
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    .line 91
    .line 92
    invoke-direct {v0, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    if-eqz p1, :cond_5

    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    .line 103
    .line 104
    invoke-direct {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_2
    return-void
.end method

.method public final handleFingerprintAuthFailed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 13
    .line 14
    const-string v2, "KeyguardFingerprint"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 20
    .line 21
    const-string p0, "handleFingerprintAuthFailed( skipped FP response )"

    .line 22
    .line 23
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string p0, "handleFingerprintAuthFailed( unlock is not allowed. )"

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->reportFailedBiometricUnlockAttempt(I)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const v1, 0x7f13084c

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, -0x1

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final handleFingerprintAuthenticated(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 7
    .line 8
    const-string p1, "KeyguardFingerprint"

    .line 9
    .line 10
    const-string p2, "handleFingerprintAuthenticated( skipped FP response )"

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    .line 50
    .line 51
    .line 52
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    .line 61
    .line 62
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZ)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final handleFingerprintError(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "handleFingerprintError( "

    .line 2
    .line 3
    const-string v1, " )"

    .line 4
    .line 5
    const-string v2, "KeyguardFingerprint"

    .line 6
    .line 7
    invoke-static {v0, p1, v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x1388

    .line 11
    .line 12
    if-ne v0, p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "handleFingerprintError( restart FingerPrint by FINGERPRINT_ERROR_NEED_TO_RETRY !! )"

    .line 21
    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->startListeningForFingerprint()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    const/16 v0, 0x3ec

    .line 30
    .line 31
    if-ne v0, p1, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const v0, 0x7f13083b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/16 v0, 0x3ea

    .line 44
    .line 45
    if-eq v0, p1, :cond_6

    .line 46
    .line 47
    const/16 v0, 0x3eb

    .line 48
    .line 49
    if-ne v0, p1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/16 v0, 0x3e9

    .line 53
    .line 54
    if-ne v0, p1, :cond_5

    .line 55
    .line 56
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const v0, 0x7f13083d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const v0, 0x7f130840

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    const/16 v0, 0x3ed

    .line 81
    .line 82
    if-ne v0, p1, :cond_7

    .line 83
    .line 84
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const v0, 0x7f13083e

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    goto :goto_1

    .line 94
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const v0, 0x7f13083c

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 104
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v3, v4, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 111
    .line 112
    .line 113
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    const/4 v0, 0x5

    .line 118
    if-ne p1, v0, :cond_8

    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    if-ne v0, v3, :cond_8

    .line 128
    .line 129
    const-string v0, "mIsFPCanceledByForegroundApp true"

    .line 130
    .line 131
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 137
    .line 138
    .line 139
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final handleFingerprintHelp(ILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    .line 10
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 17
    .line 18
    const-string v4, "KeyguardFingerprint"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iput-boolean v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 24
    .line 25
    const-string v0, "handleFingerprintHelp( skipped FP response )"

    .line 26
    .line 27
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const/4 v3, 0x1

    .line 32
    const/4 v6, -0x1

    .line 33
    if-eq v1, v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    const-string v1, "handleFingerprintHelp( unlock is not allowed. )"

    .line 42
    .line 43
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 51
    .line 52
    const/16 v8, 0x3ec

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const-wide/16 v10, 0x0

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 60
    .line 61
    if-nez v7, :cond_2

    .line 62
    .line 63
    if-eq v1, v8, :cond_11

    .line 64
    .line 65
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-virtual {v2, v6, v7, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :cond_2
    if-eq v1, v8, :cond_13

    .line 77
    .line 78
    const/16 v7, 0x3ed

    .line 79
    .line 80
    if-ne v1, v7, :cond_3

    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_3
    const/4 v7, 0x2

    .line 85
    if-eq v1, v6, :cond_9

    .line 86
    .line 87
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 88
    .line 89
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 90
    .line 91
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/2addr v1, v3

    .line 102
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 103
    .line 104
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 105
    .line 106
    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v6, "handleFingerprintHelp( Update Bad Quality Count = "

    .line 118
    .line 119
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v6, " )"

    .line 126
    .line 127
    invoke-static {v2, v6, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/16 v2, 0x32

    .line 131
    .line 132
    if-lt v1, v2, :cond_6

    .line 133
    .line 134
    const-string v1, "301"

    .line 135
    .line 136
    const-string v2, "1099"

    .line 137
    .line 138
    invoke-static {v1, v2, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 144
    .line 145
    const-string v2, "fingerprint_sensor_block_popup_show_again"

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    move v3, v5

    .line 159
    :goto_0
    if-eqz v3, :cond_5

    .line 160
    .line 161
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 168
    .line 169
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    const v3, 0x7f13084b

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    const v3, 0x7f13084a

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda24;

    .line 195
    .line 196
    invoke-direct {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda24;-><init>()V

    .line 197
    .line 198
    .line 199
    const v4, 0x7f13087e

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    new-instance v13, Landroid/widget/CheckBox;

    .line 206
    .line 207
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 208
    .line 209
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    const v6, 0x7f14055f

    .line 212
    .line 213
    .line 214
    invoke-direct {v3, v4, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 215
    .line 216
    .line 217
    invoke-direct {v13, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    const v3, 0x7f130849

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v13, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    const v3, 0x7f070b57

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-virtual {v13, v3, v5, v5, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 238
    .line 239
    .line 240
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda25;

    .line 241
    .line 242
    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda25;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    .line 247
    .line 248
    const v3, 0x7f070188

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    const/4 v15, 0x0

    .line 256
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    .line 258
    .line 259
    move-result v16

    .line 260
    const/16 v17, 0x0

    .line 261
    .line 262
    move-object v12, v2

    .line 263
    invoke-virtual/range {v12 .. v17}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_5
    const-string v1, "Skip to show fingerprint sensor block popup"

    .line 274
    .line 275
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_6
    const/16 v2, 0x1e

    .line 286
    .line 287
    if-ne v1, v2, :cond_7

    .line 288
    .line 289
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    .line 290
    .line 291
    .line 292
    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 293
    .line 294
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 301
    .line 302
    if-eqz v0, :cond_8

    .line 303
    .line 304
    invoke-interface {v0, v10, v11}, Lcom/android/systemui/plugins/aod/PluginAOD;->hideChargingInfoByFinger(J)V

    .line 305
    .line 306
    .line 307
    :cond_8
    return-void

    .line 308
    :cond_9
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    const-string v12, "handleFingerprintHelp( Failed count when screen off = "

    .line 317
    .line 318
    const-string v13, " ) - "

    .line 319
    .line 320
    invoke-static {v12, v6, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 325
    .line 326
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v13, ", t = "

    .line 330
    .line 331
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    const/4 v12, 0x3

    .line 349
    if-ne v4, v12, :cond_a

    .line 350
    .line 351
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    sget-object v4, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 357
    .line 358
    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-nez v2, :cond_b

    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_b
    rem-int/lit8 v2, v2, 0x5

    .line 366
    .line 367
    if-nez v2, :cond_c

    .line 368
    .line 369
    move v5, v3

    .line 370
    :cond_c
    :goto_3
    if-eqz v5, :cond_10

    .line 371
    .line 372
    new-instance v2, Lcom/samsung/android/aod/AODToast$Builder;

    .line 373
    .line 374
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-static {v4}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 381
    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    iget-object v4, v4, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v14

    .line 401
    const v15, 0x7f11000a

    .line 402
    .line 403
    .line 404
    invoke-virtual {v13, v15, v6, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    const-string v13, " "

    .line 409
    .line 410
    invoke-static {v12, v6, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    if-eqz v8, :cond_d

    .line 415
    .line 416
    sget-object v5, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {v6}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    const v6, 0x7f13096e

    .line 423
    .line 424
    .line 425
    invoke-static {v4, v6, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    goto :goto_5

    .line 430
    :cond_d
    sget-object v8, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    aget v5, v8, v5

    .line 437
    .line 438
    if-eq v5, v3, :cond_f

    .line 439
    .line 440
    if-eq v5, v7, :cond_e

    .line 441
    .line 442
    const v5, 0x7f13096c

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    goto :goto_4

    .line 450
    :cond_e
    const v5, 0x7f13096b

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    goto :goto_4

    .line 458
    :cond_f
    const v5, 0x7f13096d

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    :goto_4
    invoke-static {v6, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    :goto_5
    invoke-direct {v2, v4}, Lcom/samsung/android/aod/AODToast$Builder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_10
    move-object v2, v9

    .line 474
    :goto_6
    if-eqz v2, :cond_11

    .line 475
    .line 476
    const-wide/16 v10, 0x2710

    .line 477
    .line 478
    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/aod/AODToast$Builder;->setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;

    .line 479
    .line 480
    .line 481
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 482
    .line 483
    invoke-static {v4}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-virtual {v2}, Lcom/samsung/android/aod/AODToast$Builder;->build()Lcom/samsung/android/aod/AODToast;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v4, v2}, Lcom/samsung/android/aod/AODManager;->requestAODToast(Lcom/samsung/android/aod/AODToast;)V

    .line 492
    .line 493
    .line 494
    :cond_11
    :goto_7
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    .line 495
    .line 496
    move-object/from16 v4, p2

    .line 497
    .line 498
    invoke-direct {v2, v1, v4, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v9, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 502
    .line 503
    .line 504
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 505
    .line 506
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 511
    .line 512
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 513
    .line 514
    if-eqz v0, :cond_12

    .line 515
    .line 516
    invoke-interface {v0, v10, v11}, Lcom/android/systemui/plugins/aod/PluginAOD;->hideChargingInfoByFinger(J)V

    .line 517
    .line 518
    .line 519
    :cond_12
    return-void

    .line 520
    :cond_13
    :goto_8
    const-string v0, "handleFingerprintHelp( skip TSP block/unblock )"

    .line 521
    .line 522
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    return-void
.end method

.method public final handleFinishedGoingToSleep(I)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    .line 8
    .line 9
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final handleKeyguardReset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final handleLocaleChanged()V
    .locals 3

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string v1, "handleLocaleChanged()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->createChannels()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "updateCarrierTextInfo"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 32
    .line 33
    const/16 v1, 0x451

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final handlePackageRemoved(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;Z)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final handlePrimaryBouncerChanged(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne p1, v3, :cond_0

    .line 11
    .line 12
    move p1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v2

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 16
    .line 17
    if-ne p2, v3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v2

    .line 21
    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "handlePrimaryBouncerChanged primaryBouncerIsOrWillBeShowing="

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, " primaryBouncerFullyShown="

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 41
    .line 42
    const-string v3, "KeyguardUpdateMonitor"

    .line 43
    .line 44
    invoke-static {p1, p2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 48
    .line 49
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 56
    .line 57
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 58
    .line 59
    if-eq p2, v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/4 p2, 0x2

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 103
    .line 104
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->semResetAuthenticationTimeout()Z

    .line 122
    .line 123
    .line 124
    :cond_5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    .line 132
    .line 133
    :goto_2
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    if-eq v0, p1, :cond_7

    .line 137
    .line 138
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 139
    .line 140
    const/4 v0, 0x5

    .line 141
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 148
    .line 149
    if-eq v1, p1, :cond_9

    .line 150
    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    sget-object p1, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 154
    .line 155
    const-string v0, "bouncerFullyShown"

    .line 156
    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 161
    .line 162
    const/4 v0, 0x6

    .line 163
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 167
    .line 168
    .line 169
    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 174
    .line 175
    if-eqz p1, :cond_a

    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semShowBouncerScreen(I)I

    .line 180
    .line 181
    .line 182
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_b

    .line 187
    .line 188
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 189
    .line 190
    if-nez p1, :cond_b

    .line 191
    .line 192
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setUnlockingKeyguard(Z)V

    .line 193
    .line 194
    .line 195
    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setShortcutLaunchInProgress(Z)V

    .line 196
    .line 197
    .line 198
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 199
    .line 200
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 201
    .line 202
    .line 203
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 204
    .line 205
    if-eqz p1, :cond_c

    .line 206
    .line 207
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 208
    .line 209
    const-string p2, "1001"

    .line 210
    .line 211
    const-string v0, "1"

    .line 212
    .line 213
    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 217
    .line 218
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final handlePrimaryBouncerVisibilityChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handlePrimaryBouncerVisibilityChanged "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "KeyguardUpdateMonitor"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(ZI)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final handleSecMessage(Landroid/os/Message;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v3, 0x404

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    if-eq v2, v3, :cond_65

    .line 11
    .line 12
    const/16 v3, 0x465

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eq v2, v3, :cond_63

    .line 17
    .line 18
    const/16 v3, 0x5dd

    .line 19
    .line 20
    if-eq v2, v3, :cond_62

    .line 21
    .line 22
    const/4 v3, 0x7

    .line 23
    const/16 v7, 0x3eb

    .line 24
    .line 25
    const/4 v8, 0x6

    .line 26
    const/4 v9, 0x3

    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    const/16 v10, 0x8

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x4

    .line 34
    packed-switch v2, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x5

    .line 38
    const/4 v5, -0x1

    .line 39
    packed-switch v2, :pswitch_data_2

    .line 40
    .line 41
    .line 42
    packed-switch v2, :pswitch_data_3

    .line 43
    .line 44
    .line 45
    packed-switch v2, :pswitch_data_4

    .line 46
    .line 47
    .line 48
    packed-switch v2, :pswitch_data_5

    .line 49
    .line 50
    .line 51
    packed-switch v2, :pswitch_data_6

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1b

    .line 55
    .line 56
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    cmp-long v5, v1, v3

    .line 63
    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 67
    .line 68
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 73
    .line 74
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyKeyguardLockout(Z)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1b

    .line 80
    .line 81
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    sub-long/2addr v1, v5

    .line 86
    cmp-long v3, v1, v3

    .line 87
    .line 88
    if-lez v3, :cond_68

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 91
    .line 92
    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_1b

    .line 96
    .line 97
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 98
    .line 99
    const-string v2, "KeyguardUpdateMonitor#handleStartedEarlyWakingUp"

    .line 100
    .line 101
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "handleStartedEarlyWakingUp start "

    .line 107
    .line 108
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v4, "KeyguardUpdateMonitor"

    .line 119
    .line 120
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 124
    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    iput-boolean v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 128
    .line 129
    :cond_1
    if-eq v1, v5, :cond_2

    .line 130
    .line 131
    if-eq v1, v9, :cond_2

    .line 132
    .line 133
    const/16 v2, 0x9

    .line 134
    .line 135
    if-eq v1, v2, :cond_2

    .line 136
    .line 137
    const/16 v2, 0xb

    .line 138
    .line 139
    if-eq v1, v2, :cond_2

    .line 140
    .line 141
    const/16 v2, 0x6a

    .line 142
    .line 143
    if-eq v1, v2, :cond_2

    .line 144
    .line 145
    if-eq v1, v8, :cond_2

    .line 146
    .line 147
    if-eq v1, v3, :cond_2

    .line 148
    .line 149
    const/16 v2, 0x66

    .line 150
    .line 151
    if-eq v1, v2, :cond_2

    .line 152
    .line 153
    const/16 v2, 0x67

    .line 154
    .line 155
    if-eq v1, v2, :cond_2

    .line 156
    .line 157
    const/16 v2, 0x70

    .line 158
    .line 159
    if-eq v1, v2, :cond_2

    .line 160
    .line 161
    const/16 v2, 0x71

    .line 162
    .line 163
    if-eq v1, v2, :cond_2

    .line 164
    .line 165
    move v5, v6

    .line 166
    :cond_2
    iput-boolean v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsStartFacePossible:Z

    .line 167
    .line 168
    if-eqz v5, :cond_3

    .line 169
    .line 170
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 171
    .line 172
    invoke-virtual {v0, v6, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 176
    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 180
    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 184
    .line 185
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_4

    .line 192
    .line 193
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 196
    .line 197
    const-wide/16 v2, 0x1f4

    .line 198
    .line 199
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    .line 201
    .line 202
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_1b

    .line 206
    .line 207
    :pswitch_2
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setIsRunningBlackMemo(Z)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_1b

    .line 211
    .line 212
    :pswitch_3
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 213
    .line 214
    invoke-direct {v1, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v11, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1b

    .line 221
    .line 222
    :pswitch_4
    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo(Landroid/content/Intent;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1b

    .line 226
    .line 227
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 230
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v3, "handleSecurityViewChanged: securityMode "

    .line 234
    .line 235
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_5

    .line 253
    .line 254
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 255
    .line 256
    invoke-virtual {v0, v5, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 257
    .line 258
    .line 259
    :cond_5
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20;

    .line 260
    .line 261
    invoke-direct {v2, v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Object;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v11, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1b

    .line 268
    .line 269
    :pswitch_6
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 270
    .line 271
    invoke-direct {v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v11, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1b

    .line 278
    .line 279
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v1, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 288
    .line 289
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    const/16 v3, 0x200

    .line 296
    .line 297
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eqz v3, :cond_6

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateLockscreenDisabled(I)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    or-int/2addr v3, v6

    .line 308
    goto :goto_0

    .line 309
    :cond_6
    move v3, v6

    .line 310
    :goto_0
    invoke-static {v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_7

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    or-int/2addr v4, v6

    .line 321
    goto :goto_1

    .line 322
    :cond_7
    move v4, v6

    .line 323
    :goto_1
    invoke-static {v1, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-eqz v7, :cond_8

    .line 328
    .line 329
    invoke-virtual {v0, v2, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    or-int/2addr v4, v7

    .line 334
    :cond_8
    invoke-static {v1, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_9

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    or-int/2addr v4, v7

    .line 345
    :cond_9
    const/16 v7, 0x10

    .line 346
    .line 347
    invoke-static {v1, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-eqz v7, :cond_a

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    or-int/2addr v4, v7

    .line 358
    :cond_a
    const/16 v7, 0x20

    .line 359
    .line 360
    invoke-static {v1, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-eqz v7, :cond_b

    .line 365
    .line 366
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    or-int/2addr v4, v7

    .line 371
    :cond_b
    const/16 v7, 0x40

    .line 372
    .line 373
    invoke-static {v1, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-eqz v7, :cond_c

    .line 378
    .line 379
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    or-int/2addr v4, v7

    .line 384
    :cond_c
    invoke-static {v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_1b

    .line 389
    .line 390
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    invoke-virtual {v0, v2, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    or-int/2addr v7, v8

    .line 399
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    or-int/2addr v7, v8

    .line 404
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updatePermanentLock(I)Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    or-int/2addr v7, v8

    .line 409
    if-nez v7, :cond_e

    .line 410
    .line 411
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    if-eqz v7, :cond_d

    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_d
    move v7, v6

    .line 419
    goto :goto_3

    .line 420
    :cond_e
    :goto_2
    move v7, v5

    .line 421
    :goto_3
    or-int/2addr v4, v7

    .line 422
    new-instance v7, Landroid/content/Intent;

    .line 423
    .line 424
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v8, "com.samsung.keyguard.CLEAR_LOCK"

    .line 428
    .line 429
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    .line 431
    .line 432
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 433
    .line 434
    invoke-static {v8}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    iget-object v9, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 439
    .line 440
    monitor-enter v9

    .line 441
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v19

    .line 445
    iget-object v12, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 446
    .line 447
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 448
    .line 449
    .line 450
    move-result-object v12

    .line 451
    invoke-virtual {v7, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v20

    .line 455
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 456
    .line 457
    .line 458
    move-result-object v21

    .line 459
    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v22

    .line 463
    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 464
    .line 465
    .line 466
    move-result-object v23

    .line 467
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 468
    .line 469
    .line 470
    move-result v12

    .line 471
    and-int/2addr v10, v12

    .line 472
    if-eqz v10, :cond_f

    .line 473
    .line 474
    move v10, v5

    .line 475
    goto :goto_4

    .line 476
    :cond_f
    move v10, v6

    .line 477
    :goto_4
    if-eqz v10, :cond_10

    .line 478
    .line 479
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    :cond_10
    iget-object v12, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 483
    .line 484
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v13

    .line 488
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v12

    .line 492
    move-object v15, v12

    .line 493
    check-cast v15, Ljava/util/ArrayList;

    .line 494
    .line 495
    if-eqz v15, :cond_1a

    .line 496
    .line 497
    if-eqz v10, :cond_11

    .line 498
    .line 499
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    :cond_11
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 503
    .line 504
    .line 505
    move-result v12

    .line 506
    if-ge v6, v12, :cond_17

    .line 507
    .line 508
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v12

    .line 512
    move-object v14, v12

    .line 513
    check-cast v14, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 514
    .line 515
    if-eqz v10, :cond_12

    .line 516
    .line 517
    iget-object v12, v14, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 518
    .line 519
    invoke-static {v12}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    :cond_12
    iget-boolean v12, v14, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 523
    .line 524
    if-eqz v12, :cond_13

    .line 525
    .line 526
    move-object/from16 v24, v15

    .line 527
    .line 528
    goto :goto_6

    .line 529
    :cond_13
    iget-object v12, v14, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 530
    .line 531
    const-string v18, "LocalBroadcastManager"

    .line 532
    .line 533
    move-object/from16 v13, v19

    .line 534
    .line 535
    move-object v5, v14

    .line 536
    move-object/from16 v14, v20

    .line 537
    .line 538
    move-object/from16 v24, v15

    .line 539
    .line 540
    move-object/from16 v15, v22

    .line 541
    .line 542
    move-object/from16 v16, v21

    .line 543
    .line 544
    move-object/from16 v17, v23

    .line 545
    .line 546
    invoke-virtual/range {v12 .. v18}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    if-ltz v12, :cond_16

    .line 551
    .line 552
    if-eqz v10, :cond_14

    .line 553
    .line 554
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    :cond_14
    if-nez v11, :cond_15

    .line 558
    .line 559
    new-instance v11, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .line 563
    .line 564
    :cond_15
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    const/4 v12, 0x1

    .line 568
    iput-boolean v12, v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 569
    .line 570
    :cond_16
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 571
    .line 572
    move-object/from16 v15, v24

    .line 573
    .line 574
    const/4 v5, 0x1

    .line 575
    goto :goto_5

    .line 576
    :cond_17
    if-eqz v11, :cond_1a

    .line 577
    .line 578
    const/4 v5, 0x0

    .line 579
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    if-ge v5, v6, :cond_18

    .line 584
    .line 585
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    check-cast v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 590
    .line 591
    const/4 v10, 0x0

    .line 592
    iput-boolean v10, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 593
    .line 594
    add-int/lit8 v5, v5, 0x1

    .line 595
    .line 596
    goto :goto_7

    .line 597
    :cond_18
    iget-object v5, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 598
    .line 599
    new-instance v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    .line 600
    .line 601
    invoke-direct {v6, v7, v11}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    iget-object v5, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    .line 608
    .line 609
    const/4 v6, 0x1

    .line 610
    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    if-nez v5, :cond_19

    .line 615
    .line 616
    iget-object v5, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    .line 617
    .line 618
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    .line 620
    .line 621
    :cond_19
    monitor-exit v9

    .line 622
    goto :goto_8

    .line 623
    :cond_1a
    monitor-exit v9

    .line 624
    goto :goto_8

    .line 625
    :catchall_0
    move-exception v0

    .line 626
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    throw v0

    .line 628
    :cond_1b
    :goto_8
    const/16 v5, 0x80

    .line 629
    .line 630
    invoke-static {v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    if-eqz v5, :cond_1c

    .line 635
    .line 636
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateOwnerInfo(I)Z

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    or-int/lit8 v2, v2, 0x0

    .line 641
    .line 642
    goto :goto_9

    .line 643
    :cond_1c
    const/4 v2, 0x0

    .line 644
    :goto_9
    const/16 v5, 0x100

    .line 645
    .line 646
    invoke-static {v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-eqz v5, :cond_1d

    .line 651
    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDeviceOwnerInfo()Z

    .line 653
    .line 654
    .line 655
    move-result v5

    .line 656
    or-int/2addr v2, v5

    .line 657
    :cond_1d
    const-string v5, "KeyguardUpdateMonitor"

    .line 658
    .line 659
    const-string v6, "handleSecureStateChanged secureState : "

    .line 660
    .line 661
    const-string v7, " isSecureStateUpdated : "

    .line 662
    .line 663
    const-string v8, ", isOwnerInfoStateUpdated : "

    .line 664
    .line 665
    invoke-static {v6, v1, v7, v4, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-static {v1, v2, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 670
    .line 671
    .line 672
    if-eqz v4, :cond_1e

    .line 673
    .line 674
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 675
    .line 676
    const/4 v4, 0x1

    .line 677
    invoke-direct {v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 678
    .line 679
    .line 680
    const/4 v4, 0x0

    .line 681
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 682
    .line 683
    .line 684
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 685
    .line 686
    const/4 v5, 0x2

    .line 687
    invoke-virtual {v0, v5, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 688
    .line 689
    .line 690
    goto :goto_a

    .line 691
    :cond_1e
    const/4 v4, 0x0

    .line 692
    :goto_a
    if-eqz v3, :cond_1f

    .line 693
    .line 694
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 695
    .line 696
    const/4 v3, 0x0

    .line 697
    invoke-direct {v1, v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 701
    .line 702
    .line 703
    :cond_1f
    if-eqz v2, :cond_68

    .line 704
    .line 705
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 706
    .line 707
    const/4 v2, 0x2

    .line 708
    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_1b

    .line 715
    .line 716
    :pswitch_8
    const-string v1, "handleUpdateLockModeCallback, userID = "

    .line 717
    .line 718
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    const-string v3, "Process.myUserHandle().getIdentifier() = "

    .line 727
    .line 728
    const-string v4, "KeyguardUpdateMonitor"

    .line 729
    .line 730
    invoke-static {v3, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 731
    .line 732
    .line 733
    if-nez v2, :cond_68

    .line 734
    .line 735
    :try_start_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 736
    .line 737
    if-nez v3, :cond_20

    .line 738
    .line 739
    const-string v3, "lock_settings"

    .line 740
    .line 741
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 750
    .line 751
    :cond_20
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 752
    .line 753
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSecureLockChangedCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

    .line 754
    .line 755
    invoke-interface {v3, v0}, Lcom/android/internal/widget/ILockSettings;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    .line 756
    .line 757
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    .line 772
    .line 773
    goto/16 :goto_1b

    .line 774
    .line 775
    :catch_0
    move-exception v0

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const-string v2, "RemoteException! "

    .line 779
    .line 780
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .line 792
    .line 793
    goto/16 :goto_1b

    .line 794
    .line 795
    :pswitch_9
    const-string v1, "KeyguardUpdateMonitor"

    .line 796
    .line 797
    const-string v2, "forceStartFingerprintAuthentication"

    .line 798
    .line 799
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .line 801
    .line 802
    const/4 v1, 0x1

    .line 803
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    .line 804
    .line 805
    const/4 v1, 0x2

    .line 806
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 807
    .line 808
    .line 809
    goto/16 :goto_1b

    .line 810
    .line 811
    :pswitch_a
    const/4 v2, 0x2

    .line 812
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v1, Ljava/lang/Boolean;

    .line 815
    .line 816
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    .line 821
    .line 822
    invoke-direct {v3, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(ZI)V

    .line 823
    .line 824
    .line 825
    const/4 v1, 0x0

    .line 826
    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_1b

    .line 830
    .line 831
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v1, Lcom/android/keyguard/SecFaceMsg;

    .line 834
    .line 835
    invoke-static {v5}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    const/4 v3, 0x0

    .line 840
    :goto_b
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 841
    .line 842
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    check-cast v5, Lcom/android/keyguard/SecFaceMsg;

    .line 847
    .line 848
    const-string v6, "KeyguardFace"

    .line 849
    .line 850
    if-eqz v5, :cond_34

    .line 851
    .line 852
    if-ne v5, v1, :cond_21

    .line 853
    .line 854
    const-string v7, "handleFaceAuth faceMsg index = "

    .line 855
    .line 856
    const-string v11, " / type = "

    .line 857
    .line 858
    invoke-static {v7, v3, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    move-result-object v7

    .line 862
    iget v11, v1, Lcom/android/keyguard/SecFaceMsg;->type:I

    .line 863
    .line 864
    invoke-static {v7, v11, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 865
    .line 866
    .line 867
    :cond_21
    iget v7, v5, Lcom/android/keyguard/SecFaceMsg;->type:I

    .line 868
    .line 869
    if-eqz v7, :cond_31

    .line 870
    .line 871
    const/4 v11, 0x1

    .line 872
    if-eq v7, v11, :cond_2f

    .line 873
    .line 874
    const/4 v11, 0x2

    .line 875
    if-eq v7, v11, :cond_2c

    .line 876
    .line 877
    if-eq v7, v9, :cond_27

    .line 878
    .line 879
    if-eq v7, v12, :cond_22

    .line 880
    .line 881
    goto :goto_b

    .line 882
    :cond_22
    iget v5, v5, Lcom/android/keyguard/SecFaceMsg;->arg:I

    .line 883
    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 885
    .line 886
    .line 887
    move-result v7

    .line 888
    if-nez v7, :cond_23

    .line 889
    .line 890
    const-string/jumbo v5, "onAuthenticationAcquired(), Face is not running"

    .line 891
    .line 892
    .line 893
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .line 895
    .line 896
    goto/16 :goto_f

    .line 897
    .line 898
    :cond_23
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceReady:Z

    .line 899
    .line 900
    if-nez v7, :cond_24

    .line 901
    .line 902
    const/4 v7, 0x1

    .line 903
    iput-boolean v7, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceReady:Z

    .line 904
    .line 905
    :cond_24
    const-string/jumbo v7, "onAuthenticationAcquired(), acquireInfo="

    .line 906
    .line 907
    .line 908
    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 909
    .line 910
    .line 911
    const/4 v6, 0x2

    .line 912
    if-eq v5, v6, :cond_26

    .line 913
    .line 914
    if-eq v5, v9, :cond_25

    .line 915
    .line 916
    if-eq v5, v12, :cond_25

    .line 917
    .line 918
    if-eq v5, v4, :cond_25

    .line 919
    .line 920
    if-eq v5, v8, :cond_25

    .line 921
    .line 922
    packed-switch v5, :pswitch_data_7

    .line 923
    .line 924
    .line 925
    packed-switch v5, :pswitch_data_8

    .line 926
    .line 927
    .line 928
    goto :goto_c

    .line 929
    :cond_25
    :pswitch_c
    const/4 v6, 0x0

    .line 930
    iput-boolean v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutWithoutFace:Z

    .line 931
    .line 932
    goto :goto_c

    .line 933
    :cond_26
    const/4 v6, 0x1

    .line 934
    iput-boolean v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutWithoutFace:Z

    .line 935
    .line 936
    :goto_c
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    .line 937
    .line 938
    .line 939
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveUnlockConfig:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 940
    .line 941
    iget-object v6, v6, Lcom/android/keyguard/ActiveUnlockConfig;->faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

    .line 942
    .line 943
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 944
    .line 945
    .line 946
    move-result-object v7

    .line 947
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    if-eqz v6, :cond_33

    .line 952
    .line 953
    sget-object v6, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 954
    .line 955
    new-instance v7, Ljava/lang/StringBuilder;

    .line 956
    .line 957
    const-string v11, "faceAcquireInfo-"

    .line 958
    .line 959
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    invoke-virtual {v0, v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    goto/16 :goto_f

    .line 973
    .line 974
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    if-nez v5, :cond_28

    .line 979
    .line 980
    const-string/jumbo v5, "onAuthenticationFailed(), Face is not running"

    .line 981
    .line 982
    .line 983
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    goto/16 :goto_f

    .line 987
    .line 988
    :cond_28
    const-string/jumbo v5, "onAuthenticationFailed()"

    .line 989
    .line 990
    .line 991
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    const-string v5, "2"

    .line 995
    .line 996
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFaceSALog(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1000
    .line 1001
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    if-eqz v5, :cond_29

    .line 1006
    .line 1007
    const-string v5, "bypass"

    .line 1008
    .line 1009
    goto :goto_d

    .line 1010
    :cond_29
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateBouncerShowing:Z

    .line 1011
    .line 1012
    if-eqz v5, :cond_2a

    .line 1013
    .line 1014
    const-string v5, "alternateBouncer"

    .line 1015
    .line 1016
    goto :goto_d

    .line 1017
    :cond_2a
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 1018
    .line 1019
    if-eqz v5, :cond_2b

    .line 1020
    .line 1021
    const-string v5, "bouncer"

    .line 1022
    .line 1023
    goto :goto_d

    .line 1024
    :cond_2b
    const-string/jumbo v5, "udfpsFpDown"

    .line 1025
    .line 1026
    .line 1027
    :goto_d
    sget-object v6, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 1028
    .line 1029
    const-string v7, "faceFailure-"

    .line 1030
    .line 1031
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v5

    .line 1035
    invoke-virtual {v0, v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthFailed()V

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_f

    .line 1042
    .line 1043
    :cond_2c
    iget-object v5, v5, Lcom/android/keyguard/SecFaceMsg;->result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 1044
    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v7

    .line 1049
    if-nez v7, :cond_2d

    .line 1050
    .line 1051
    const-string/jumbo v5, "onAuthenticationSucceeded(), Face is not running"

    .line 1052
    .line 1053
    .line 1054
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_f

    .line 1058
    .line 1059
    :cond_2d
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 1060
    .line 1061
    if-eqz v7, :cond_2e

    .line 1062
    .line 1063
    const-string/jumbo v5, "onAuthenticationSucceeded() - return, goingAway is true"

    .line 1064
    .line 1065
    .line 1066
    invoke-static {v6, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    goto/16 :goto_f

    .line 1070
    .line 1071
    :cond_2e
    const-class v7, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1072
    .line 1073
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v7

    .line 1077
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1078
    .line 1079
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1080
    .line 1081
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 1082
    .line 1083
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1084
    .line 1085
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v7

    .line 1089
    const/4 v11, 0x1

    .line 1090
    xor-int/2addr v7, v11

    .line 1091
    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1092
    .line 1093
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    new-instance v14, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda21;

    .line 1097
    .line 1098
    const/4 v15, 0x0

    .line 1099
    invoke-direct {v14, v13, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;I)V

    .line 1100
    .line 1101
    .line 1102
    invoke-static {v14, v7}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 1103
    .line 1104
    .line 1105
    const-string/jumbo v7, "onAuthenticationSucceeded()"

    .line 1106
    .line 1107
    .line 1108
    invoke-static {v6, v7}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 1112
    .line 1113
    .line 1114
    const-string v6, "1"

    .line 1115
    .line 1116
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFaceSALog(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->isStrongBiometric()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v5

    .line 1123
    invoke-virtual {v0, v15, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthenticated(IZ)V

    .line 1124
    .line 1125
    .line 1126
    new-instance v5, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 1127
    .line 1128
    invoke-direct {v5, v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 1129
    .line 1130
    .line 1131
    invoke-static {v5, v11}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_f

    .line 1135
    :cond_2f
    iget v7, v5, Lcom/android/keyguard/SecFaceMsg;->arg:I

    .line 1136
    .line 1137
    iget-object v5, v5, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    .line 1138
    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v11

    .line 1143
    if-nez v11, :cond_30

    .line 1144
    .line 1145
    const-string/jumbo v5, "onAuthenticationHelp(), Face is not running"

    .line 1146
    .line 1147
    .line 1148
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .line 1150
    .line 1151
    goto :goto_f

    .line 1152
    :cond_30
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    const-string/jumbo v13, "onAuthenticationHelp(), helpCode="

    .line 1155
    .line 1156
    .line 1157
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    const-string v13, ", helpString="

    .line 1164
    .line 1165
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v11

    .line 1175
    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .line 1177
    .line 1178
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v5

    .line 1182
    invoke-virtual {v0, v7, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_f

    .line 1186
    :cond_31
    iget v6, v5, Lcom/android/keyguard/SecFaceMsg;->arg:I

    .line 1187
    .line 1188
    iget-object v5, v5, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    .line 1189
    .line 1190
    if-nez v5, :cond_32

    .line 1191
    .line 1192
    const/4 v5, 0x0

    .line 1193
    goto :goto_e

    .line 1194
    :cond_32
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v5

    .line 1198
    :goto_e
    invoke-virtual {v0, v6, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceError(ILjava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveUnlockConfig:Lcom/android/keyguard/ActiveUnlockConfig;

    .line 1202
    .line 1203
    iget-object v5, v5, Lcom/android/keyguard/ActiveUnlockConfig;->faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

    .line 1204
    .line 1205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v7

    .line 1209
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v5

    .line 1213
    if-eqz v5, :cond_33

    .line 1214
    .line 1215
    sget-object v5, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 1216
    .line 1217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    const-string v11, "faceError-"

    .line 1220
    .line 1221
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v6

    .line 1231
    invoke-virtual {v0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    :cond_33
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 1235
    .line 1236
    goto/16 :goto_b

    .line 1237
    .line 1238
    :cond_34
    const-string v0, "handleFaceAuth dispatchCount = "

    .line 1239
    .line 1240
    invoke-static {v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    const/4 v1, 0x0

    .line 1245
    new-array v1, v1, [Ljava/lang/Object;

    .line 1246
    .line 1247
    invoke-static {v2, v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    .line 1249
    .line 1250
    goto/16 :goto_1b

    .line 1251
    .line 1252
    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1253
    .line 1254
    check-cast v1, Lcom/android/keyguard/SecFpMsg;

    .line 1255
    .line 1256
    invoke-static {v5}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 1257
    .line 1258
    .line 1259
    move-result v2

    .line 1260
    const/4 v5, 0x0

    .line 1261
    :goto_10
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1262
    .line 1263
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v6

    .line 1267
    check-cast v6, Lcom/android/keyguard/SecFpMsg;

    .line 1268
    .line 1269
    const-string v8, "KeyguardFingerprint"

    .line 1270
    .line 1271
    if-eqz v6, :cond_47

    .line 1272
    .line 1273
    if-ne v6, v1, :cond_35

    .line 1274
    .line 1275
    const-string v11, "handleFingerprintAuth fpMsg index = "

    .line 1276
    .line 1277
    const-string v12, " / type = "

    .line 1278
    .line 1279
    invoke-static {v11, v5, v12}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v11

    .line 1283
    iget v12, v1, Lcom/android/keyguard/SecFpMsg;->type:I

    .line 1284
    .line 1285
    invoke-static {v11, v12, v8}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    :cond_35
    iget v11, v6, Lcom/android/keyguard/SecFpMsg;->type:I

    .line 1289
    .line 1290
    const-string v12, ")"

    .line 1291
    .line 1292
    const-string v13, "/"

    .line 1293
    .line 1294
    packed-switch v11, :pswitch_data_9

    .line 1295
    .line 1296
    .line 1297
    goto :goto_10

    .line 1298
    :pswitch_e
    const/4 v3, 0x0

    .line 1299
    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    .line 1300
    .line 1301
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1302
    .line 1303
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1304
    .line 1305
    if-eq v6, v3, :cond_36

    .line 1306
    .line 1307
    const-string/jumbo v6, "onUdfpsFingerUp() - return, sequence error ("

    .line 1308
    .line 1309
    .line 1310
    invoke-static {v6, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v3

    .line 1314
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1315
    .line 1316
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    goto/16 :goto_12

    .line 1320
    .line 1321
    :cond_36
    const-string/jumbo v3, "onUdfpsFingerUp()"

    .line 1322
    .line 1323
    .line 1324
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    .line 1326
    .line 1327
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 1328
    .line 1329
    invoke-direct {v3, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 1330
    .line 1331
    .line 1332
    const/4 v6, 0x0

    .line 1333
    invoke-virtual {v0, v6, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1334
    .line 1335
    .line 1336
    goto/16 :goto_12

    .line 1337
    .line 1338
    :pswitch_f
    const/4 v11, 0x1

    .line 1339
    iput-boolean v11, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    .line 1340
    .line 1341
    iget v6, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1342
    .line 1343
    iget v11, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1344
    .line 1345
    if-eq v11, v6, :cond_37

    .line 1346
    .line 1347
    const-string/jumbo v3, "onUdfpsFingerDown() - return, sequence error ("

    .line 1348
    .line 1349
    .line 1350
    invoke-static {v3, v6, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1355
    .line 1356
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    goto/16 :goto_12

    .line 1360
    .line 1361
    :cond_37
    const-string/jumbo v6, "onUdfpsFingerDown()"

    .line 1362
    .line 1363
    .line 1364
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    .line 1366
    .line 1367
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 1368
    .line 1369
    invoke-direct {v6, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 1370
    .line 1371
    .line 1372
    const/4 v3, 0x0

    .line 1373
    invoke-virtual {v0, v3, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1374
    .line 1375
    .line 1376
    goto/16 :goto_12

    .line 1377
    .line 1378
    :pswitch_10
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1379
    .line 1380
    iget v6, v6, Lcom/android/keyguard/SecFpMsg;->arg:I

    .line 1381
    .line 1382
    iget v11, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1383
    .line 1384
    if-eq v11, v3, :cond_38

    .line 1385
    .line 1386
    const-string/jumbo v6, "onAuthenticationAcquired() - return, sequence error ("

    .line 1387
    .line 1388
    .line 1389
    invoke-static {v6, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v3

    .line 1393
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1394
    .line 1395
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    goto/16 :goto_12

    .line 1399
    .line 1400
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1401
    .line 1402
    const-string/jumbo v11, "onAuthenticationAcquired( "

    .line 1403
    .line 1404
    .line 1405
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    .line 1411
    const-string v11, "  )"

    .line 1412
    .line 1413
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v3

    .line 1420
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAcquired(I)V

    .line 1424
    .line 1425
    .line 1426
    goto/16 :goto_12

    .line 1427
    .line 1428
    :pswitch_11
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1429
    .line 1430
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1431
    .line 1432
    if-eq v6, v3, :cond_39

    .line 1433
    .line 1434
    const-string/jumbo v6, "onAuthenticationFailed() - return, sequence error ("

    .line 1435
    .line 1436
    .line 1437
    invoke-static {v6, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1442
    .line 1443
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    goto/16 :goto_12

    .line 1447
    .line 1448
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    .line 1449
    .line 1450
    .line 1451
    move-result v3

    .line 1452
    if-eqz v3, :cond_3a

    .line 1453
    .line 1454
    const-string/jumbo v3, "onAuthenticationFailed() - return, isTimerRunning is true"

    .line 1455
    .line 1456
    .line 1457
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .line 1459
    .line 1460
    goto/16 :goto_12

    .line 1461
    .line 1462
    :cond_3a
    const-string/jumbo v3, "onAuthenticationFailed()"

    .line 1463
    .line 1464
    .line 1465
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    .line 1467
    .line 1468
    const-string v3, "2"

    .line 1469
    .line 1470
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    sget-object v3, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 1474
    .line 1475
    const-string v6, "fingerprintFailure"

    .line 1476
    .line 1477
    invoke-virtual {v0, v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthFailed()V

    .line 1481
    .line 1482
    .line 1483
    goto/16 :goto_12

    .line 1484
    .line 1485
    :pswitch_12
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1486
    .line 1487
    iget-object v6, v6, Lcom/android/keyguard/SecFpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 1488
    .line 1489
    iget v11, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1490
    .line 1491
    if-eq v11, v3, :cond_3b

    .line 1492
    .line 1493
    const-string/jumbo v6, "onAuthenticationSucceeded() - return, sequence error ("

    .line 1494
    .line 1495
    .line 1496
    invoke-static {v6, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v3

    .line 1500
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1501
    .line 1502
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    goto/16 :goto_12

    .line 1506
    .line 1507
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v3

    .line 1511
    if-eqz v3, :cond_3c

    .line 1512
    .line 1513
    const-string/jumbo v3, "onAuthenticationSucceeded() - return, isTimerRunning is true"

    .line 1514
    .line 1515
    .line 1516
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    .line 1518
    .line 1519
    goto/16 :goto_12

    .line 1520
    .line 1521
    :cond_3c
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 1522
    .line 1523
    if-eqz v3, :cond_3d

    .line 1524
    .line 1525
    const-string/jumbo v3, "onAuthenticationSucceeded() - return, goingAway is true"

    .line 1526
    .line 1527
    .line 1528
    invoke-static {v8, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    goto/16 :goto_12

    .line 1532
    .line 1533
    :cond_3d
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    .line 1534
    .line 1535
    .line 1536
    move-result v3

    .line 1537
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 1538
    .line 1539
    .line 1540
    move-result v3

    .line 1541
    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1542
    .line 1543
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    new-instance v12, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda21;

    .line 1547
    .line 1548
    const/4 v13, 0x1

    .line 1549
    invoke-direct {v12, v11, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;I)V

    .line 1550
    .line 1551
    .line 1552
    invoke-static {v12, v3}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 1553
    .line 1554
    .line 1555
    const-string v3, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 1556
    .line 1557
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    const-string/jumbo v3, "onAuthenticationSucceeded()"

    .line 1561
    .line 1562
    .line 1563
    invoke-static {v8, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 1571
    .line 1572
    .line 1573
    move-result v3

    .line 1574
    iput v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricId:I

    .line 1575
    .line 1576
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    const-string v12, "Fingerprint id : "

    .line 1579
    .line 1580
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v3

    .line 1590
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    .line 1592
    .line 1593
    const-string v3, "1"

    .line 1594
    .line 1595
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    .line 1599
    .line 1600
    .line 1601
    move-result v3

    .line 1602
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    .line 1603
    .line 1604
    .line 1605
    move-result v6

    .line 1606
    invoke-virtual {v0, v3, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthenticated(IZ)V

    .line 1607
    .line 1608
    .line 1609
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 1610
    .line 1611
    const/16 v6, 0xa

    .line 1612
    .line 1613
    invoke-direct {v3, v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 1614
    .line 1615
    .line 1616
    const/4 v6, 0x1

    .line 1617
    invoke-static {v3, v6}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 1618
    .line 1619
    .line 1620
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1621
    .line 1622
    .line 1623
    goto/16 :goto_12

    .line 1624
    .line 1625
    :pswitch_13
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1626
    .line 1627
    iget v11, v6, Lcom/android/keyguard/SecFpMsg;->arg:I

    .line 1628
    .line 1629
    iget-object v6, v6, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    .line 1630
    .line 1631
    iget v14, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1632
    .line 1633
    if-eq v14, v3, :cond_3e

    .line 1634
    .line 1635
    const-string/jumbo v6, "onAuthenticationHelp() - return, sequence error ("

    .line 1636
    .line 1637
    .line 1638
    invoke-static {v6, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v3

    .line 1642
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1643
    .line 1644
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_12

    .line 1648
    .line 1649
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    .line 1650
    .line 1651
    .line 1652
    move-result v3

    .line 1653
    if-eqz v3, :cond_3f

    .line 1654
    .line 1655
    const-string/jumbo v3, "onAuthenticationHelp() - return, isTimerRunning is true"

    .line 1656
    .line 1657
    .line 1658
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    .line 1660
    .line 1661
    goto/16 :goto_12

    .line 1662
    .line 1663
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    const-string/jumbo v12, "onAuthenticationHelp( helpMsgId = "

    .line 1666
    .line 1667
    .line 1668
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    const-string v12, " , helpString = "

    .line 1675
    .line 1676
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    const-string v12, " )"

    .line 1683
    .line 1684
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v3

    .line 1691
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    .line 1693
    .line 1694
    const/4 v3, 0x1

    .line 1695
    if-eq v11, v3, :cond_44

    .line 1696
    .line 1697
    const/4 v3, 0x2

    .line 1698
    if-eq v11, v3, :cond_43

    .line 1699
    .line 1700
    if-eq v11, v9, :cond_42

    .line 1701
    .line 1702
    if-eq v11, v4, :cond_41

    .line 1703
    .line 1704
    if-eq v11, v7, :cond_40

    .line 1705
    .line 1706
    goto :goto_11

    .line 1707
    :cond_40
    const-string v3, "7"

    .line 1708
    .line 1709
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1710
    .line 1711
    .line 1712
    goto :goto_11

    .line 1713
    :cond_41
    const-string v3, "3"

    .line 1714
    .line 1715
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    goto :goto_11

    .line 1719
    :cond_42
    const-string v3, "6"

    .line 1720
    .line 1721
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1722
    .line 1723
    .line 1724
    goto :goto_11

    .line 1725
    :cond_43
    const-string v3, "5"

    .line 1726
    .line 1727
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1728
    .line 1729
    .line 1730
    goto :goto_11

    .line 1731
    :cond_44
    const-string v3, "4"

    .line 1732
    .line 1733
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 1734
    .line 1735
    .line 1736
    :goto_11
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v3

    .line 1740
    invoke-virtual {v0, v11, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 1741
    .line 1742
    .line 1743
    goto :goto_12

    .line 1744
    :pswitch_14
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 1745
    .line 1746
    iget v11, v6, Lcom/android/keyguard/SecFpMsg;->arg:I

    .line 1747
    .line 1748
    iget-object v6, v6, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    .line 1749
    .line 1750
    iget v14, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1751
    .line 1752
    if-eq v14, v3, :cond_45

    .line 1753
    .line 1754
    const-string/jumbo v6, "onAuthenticationError() - return, sequence error ("

    .line 1755
    .line 1756
    .line 1757
    invoke-static {v6, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v3

    .line 1761
    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 1762
    .line 1763
    invoke-static {v3, v6, v12, v8}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1764
    .line 1765
    .line 1766
    goto :goto_12

    .line 1767
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    .line 1768
    .line 1769
    .line 1770
    move-result v3

    .line 1771
    if-eqz v3, :cond_46

    .line 1772
    .line 1773
    const-string/jumbo v3, "onAuthenticationError() - return, isTimerRunning is true"

    .line 1774
    .line 1775
    .line 1776
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    .line 1778
    .line 1779
    goto :goto_12

    .line 1780
    :cond_46
    const-string/jumbo v3, "onAuthenticationError()"

    .line 1781
    .line 1782
    .line 1783
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    .line 1785
    .line 1786
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v3

    .line 1790
    invoke-virtual {v0, v11, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintError(ILjava/lang/String;)V

    .line 1791
    .line 1792
    .line 1793
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 1794
    .line 1795
    const/4 v3, 0x7

    .line 1796
    goto/16 :goto_10

    .line 1797
    .line 1798
    :cond_47
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1799
    .line 1800
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 1801
    .line 1802
    .line 1803
    move-result v1

    .line 1804
    if-lez v1, :cond_48

    .line 1805
    .line 1806
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 1807
    .line 1808
    const/16 v3, 0x456

    .line 1809
    .line 1810
    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v1

    .line 1814
    if-nez v1, :cond_48

    .line 1815
    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1817
    .line 1818
    const-string/jumbo v4, "remained message size : "

    .line 1819
    .line 1820
    .line 1821
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1825
    .line 1826
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 1827
    .line 1828
    .line 1829
    move-result v4

    .line 1830
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v1

    .line 1837
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    .line 1839
    .line 1840
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 1841
    .line 1842
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1843
    .line 1844
    .line 1845
    :cond_48
    const-string v0, "handleFingerprintAuth dispatchCount = "

    .line 1846
    .line 1847
    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v0

    .line 1851
    const/4 v1, 0x0

    .line 1852
    new-array v1, v1, [Ljava/lang/Object;

    .line 1853
    .line 1854
    invoke-static {v2, v8, v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1855
    .line 1856
    .line 1857
    goto/16 :goto_1b

    .line 1858
    .line 1859
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1860
    .line 1861
    check-cast v1, Ljava/lang/Boolean;

    .line 1862
    .line 1863
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1864
    .line 1865
    .line 1866
    move-result v1

    .line 1867
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 1868
    .line 1869
    if-eq v2, v1, :cond_68

    .line 1870
    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1872
    .line 1873
    const-string v3, "handleStatusBarState( prev:"

    .line 1874
    .line 1875
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1876
    .line 1877
    .line 1878
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 1879
    .line 1880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1881
    .line 1882
    .line 1883
    const-string v3, "-> next:"

    .line 1884
    .line 1885
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1889
    .line 1890
    .line 1891
    const-string v3, " )"

    .line 1892
    .line 1893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v2

    .line 1900
    const-string v3, "KeyguardUpdateMonitor"

    .line 1901
    .line 1902
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    .line 1904
    .line 1905
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 1906
    .line 1907
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 1908
    .line 1909
    .line 1910
    move-result v1

    .line 1911
    if-nez v1, :cond_49

    .line 1912
    .line 1913
    goto/16 :goto_1b

    .line 1914
    .line 1915
    :cond_49
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 1916
    .line 1917
    if-eqz v1, :cond_4a

    .line 1918
    .line 1919
    const/4 v1, 0x2

    .line 1920
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 1921
    .line 1922
    .line 1923
    goto :goto_13

    .line 1924
    :cond_4a
    const/4 v1, 0x2

    .line 1925
    :goto_13
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1926
    .line 1927
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 1928
    .line 1929
    .line 1930
    goto/16 :goto_1b

    .line 1931
    .line 1932
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 1933
    .line 1934
    .line 1935
    move-result v1

    .line 1936
    if-eqz v1, :cond_4b

    .line 1937
    .line 1938
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1939
    .line 1940
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 1941
    .line 1942
    .line 1943
    :cond_4b
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 1944
    .line 1945
    invoke-direct {v1, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 1946
    .line 1947
    .line 1948
    const/4 v2, 0x0

    .line 1949
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1950
    .line 1951
    .line 1952
    goto/16 :goto_1b

    .line 1953
    .line 1954
    :pswitch_17
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1955
    .line 1956
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1957
    .line 1958
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1959
    .line 1960
    check-cast v1, Landroid/telephony/ServiceState;

    .line 1961
    .line 1962
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleServiceStateChange(IILandroid/telephony/ServiceState;)V

    .line 1963
    .line 1964
    .line 1965
    goto/16 :goto_1b

    .line 1966
    .line 1967
    :pswitch_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1968
    .line 1969
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1970
    .line 1971
    const/4 v3, 0x1

    .line 1972
    if-ne v1, v3, :cond_4c

    .line 1973
    .line 1974
    const/4 v5, 0x1

    .line 1975
    goto :goto_14

    .line 1976
    :cond_4c
    const/4 v5, 0x0

    .line 1977
    :goto_14
    invoke-virtual {v0, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleDualDarInnerLockScreenStateChanged(IZ)V

    .line 1978
    .line 1979
    .line 1980
    goto/16 :goto_1b

    .line 1981
    .line 1982
    :pswitch_19
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1983
    .line 1984
    const/4 v2, 0x2

    .line 1985
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 1986
    .line 1987
    .line 1988
    goto/16 :goto_1b

    .line 1989
    .line 1990
    :pswitch_1a
    const/4 v1, 0x2

    .line 1991
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 1992
    .line 1993
    .line 1994
    goto/16 :goto_1b

    .line 1995
    .line 1996
    :pswitch_1b
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 1997
    .line 1998
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v0

    .line 2002
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2003
    .line 2004
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateSmartViewFitToActiveDisplay()V

    .line 2005
    .line 2006
    .line 2007
    goto/16 :goto_1b

    .line 2008
    .line 2009
    :pswitch_1c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2010
    .line 2011
    check-cast v1, Ljava/lang/String;

    .line 2012
    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2014
    .line 2015
    const-string v3, "handleFailToUnlockSimulation unlockType : "

    .line 2016
    .line 2017
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2018
    .line 2019
    .line 2020
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v2

    .line 2027
    const-string v3, "KeyguardUpdateMonitor"

    .line 2028
    .line 2029
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    .line 2031
    .line 2032
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2033
    .line 2034
    .line 2035
    const-string v2, "finger"

    .line 2036
    .line 2037
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2038
    .line 2039
    .line 2040
    move-result v2

    .line 2041
    const-string/jumbo v3, "onAuthenticationFailed()"

    .line 2042
    .line 2043
    .line 2044
    if-nez v2, :cond_4e

    .line 2045
    .line 2046
    const-string v2, "face"

    .line 2047
    .line 2048
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2049
    .line 2050
    .line 2051
    move-result v1

    .line 2052
    if-nez v1, :cond_4d

    .line 2053
    .line 2054
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 2055
    .line 2056
    invoke-direct {v1, v0, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 2057
    .line 2058
    .line 2059
    const/4 v2, 0x0

    .line 2060
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 2061
    .line 2062
    .line 2063
    goto/16 :goto_1b

    .line 2064
    .line 2065
    :cond_4d
    const-string v1, "KeyguardFace"

    .line 2066
    .line 2067
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthFailed()V

    .line 2071
    .line 2072
    .line 2073
    goto/16 :goto_1b

    .line 2074
    .line 2075
    :cond_4e
    const-string v1, "KeyguardFingerprint"

    .line 2076
    .line 2077
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthFailed()V

    .line 2081
    .line 2082
    .line 2083
    goto/16 :goto_1b

    .line 2084
    .line 2085
    :pswitch_1d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2086
    .line 2087
    check-cast v1, Ljava/lang/String;

    .line 2088
    .line 2089
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2090
    .line 2091
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 2092
    .line 2093
    .line 2094
    const-string v2, "finger"

    .line 2095
    .line 2096
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2097
    .line 2098
    .line 2099
    move-result v3

    .line 2100
    const-string v4, "face"

    .line 2101
    .line 2102
    if-nez v3, :cond_4f

    .line 2103
    .line 2104
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2105
    .line 2106
    .line 2107
    move-result v3

    .line 2108
    if-eqz v3, :cond_50

    .line 2109
    .line 2110
    :cond_4f
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2111
    .line 2112
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setEnabled()V

    .line 2113
    .line 2114
    .line 2115
    :cond_50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2119
    .line 2120
    .line 2121
    move-result v2

    .line 2122
    const-string/jumbo v3, "onAuthenticationSucceeded()"

    .line 2123
    .line 2124
    .line 2125
    if-nez v2, :cond_52

    .line 2126
    .line 2127
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2128
    .line 2129
    .line 2130
    move-result v1

    .line 2131
    if-nez v1, :cond_51

    .line 2132
    .line 2133
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    .line 2134
    .line 2135
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v1

    .line 2139
    check-cast v1, Lcom/android/keyguard/ViewMediatorCallback;

    .line 2140
    .line 2141
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2142
    .line 2143
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2144
    .line 2145
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 2146
    .line 2147
    .line 2148
    move-result v0

    .line 2149
    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    .line 2150
    .line 2151
    .line 2152
    goto/16 :goto_1b

    .line 2153
    .line 2154
    :cond_51
    const-string v1, "KeyguardFace"

    .line 2155
    .line 2156
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    .line 2158
    .line 2159
    const/4 v1, 0x1

    .line 2160
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 2161
    .line 2162
    .line 2163
    const/4 v1, 0x0

    .line 2164
    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthenticated(IZ)V

    .line 2165
    .line 2166
    .line 2167
    goto/16 :goto_1b

    .line 2168
    .line 2169
    :cond_52
    const/4 v1, 0x0

    .line 2170
    const-string v2, "KeyguardFingerprint"

    .line 2171
    .line 2172
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthenticated(IZ)V

    .line 2176
    .line 2177
    .line 2178
    goto/16 :goto_1b

    .line 2179
    .line 2180
    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2181
    .line 2182
    check-cast v1, Ljava/lang/String;

    .line 2183
    .line 2184
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2185
    .line 2186
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v2

    .line 2190
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2191
    .line 2192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 2196
    .line 2197
    .line 2198
    move-result v3

    .line 2199
    sparse-switch v3, :sswitch_data_0

    .line 2200
    .line 2201
    .line 2202
    goto :goto_15

    .line 2203
    :sswitch_0
    const-string v3, "knoxguard"

    .line 2204
    .line 2205
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2206
    .line 2207
    .line 2208
    move-result v1

    .line 2209
    if-nez v1, :cond_53

    .line 2210
    .line 2211
    goto :goto_15

    .line 2212
    :cond_53
    move v1, v12

    .line 2213
    goto :goto_16

    .line 2214
    :sswitch_1
    const-string v3, "license"

    .line 2215
    .line 2216
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2217
    .line 2218
    .line 2219
    move-result v1

    .line 2220
    if-nez v1, :cond_54

    .line 2221
    .line 2222
    goto :goto_15

    .line 2223
    :cond_54
    move v1, v9

    .line 2224
    goto :goto_16

    .line 2225
    :sswitch_2
    const-string v3, "clear"

    .line 2226
    .line 2227
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2228
    .line 2229
    .line 2230
    move-result v1

    .line 2231
    if-nez v1, :cond_55

    .line 2232
    .line 2233
    goto :goto_15

    .line 2234
    :cond_55
    const/4 v1, 0x2

    .line 2235
    goto :goto_16

    .line 2236
    :sswitch_3
    const-string v3, "admin"

    .line 2237
    .line 2238
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2239
    .line 2240
    .line 2241
    move-result v1

    .line 2242
    if-nez v1, :cond_56

    .line 2243
    .line 2244
    goto :goto_15

    .line 2245
    :cond_56
    const/4 v1, 0x1

    .line 2246
    goto :goto_16

    .line 2247
    :sswitch_4
    const-string/jumbo v3, "rmm"

    .line 2248
    .line 2249
    .line 2250
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2251
    .line 2252
    .line 2253
    move-result v1

    .line 2254
    if-nez v1, :cond_57

    .line 2255
    .line 2256
    goto :goto_15

    .line 2257
    :cond_57
    const/4 v1, 0x0

    .line 2258
    goto :goto_16

    .line 2259
    :goto_15
    move v1, v5

    .line 2260
    :goto_16
    const-string v3, "KeyguardUpdateMonitor"

    .line 2261
    .line 2262
    if-eqz v1, :cond_5d

    .line 2263
    .line 2264
    const/4 v5, 0x1

    .line 2265
    if-eq v1, v5, :cond_5c

    .line 2266
    .line 2267
    const/4 v5, 0x2

    .line 2268
    if-eq v1, v5, :cond_5a

    .line 2269
    .line 2270
    if-eq v1, v9, :cond_59

    .line 2271
    .line 2272
    if-eq v1, v12, :cond_58

    .line 2273
    .line 2274
    goto/16 :goto_1b

    .line 2275
    .line 2276
    :cond_58
    new-instance v1, Landroid/os/Bundle;

    .line 2277
    .line 2278
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2279
    .line 2280
    .line 2281
    const-string v2, "customer_package_name"

    .line 2282
    .line 2283
    const-string v5, "com.samsung.android.calendar"

    .line 2284
    .line 2285
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2286
    .line 2287
    .line 2288
    const-string v2, "customer_app_name"

    .line 2289
    .line 2290
    const-string v5, "Samsung Calendar"

    .line 2291
    .line 2292
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2293
    .line 2294
    .line 2295
    new-instance v2, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2296
    .line 2297
    const/4 v5, 0x1

    .line 2298
    invoke-direct {v2, v9, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 2299
    .line 2300
    .line 2301
    const-string v5, "KnoxGuard Lockscreen"

    .line 2302
    .line 2303
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v2

    .line 2307
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v1

    .line 2311
    const-string v2, "010-000-0000"

    .line 2312
    .line 2313
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v1

    .line 2317
    const-string v2, "This is Knoxguard Lock Test Message.\n\n\n\n\nKG LOCK\n\n\n\n\nKnoxGuard Lockscreen"

    .line 2318
    .line 2319
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v1

    .line 2323
    const/4 v2, 0x0

    .line 2324
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v1

    .line 2328
    const-wide/32 v5, 0xea60

    .line 2329
    .line 2330
    .line 2331
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v1

    .line 2335
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v1

    .line 2339
    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v1

    .line 2343
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2344
    .line 2345
    :try_start_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2346
    .line 2347
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2348
    .line 2349
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2350
    .line 2351
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 2352
    .line 2353
    .line 2354
    move-result v2

    .line 2355
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2356
    .line 2357
    invoke-interface {v1, v2, v0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2358
    .line 2359
    .line 2360
    goto/16 :goto_1b

    .line 2361
    .line 2362
    :catch_1
    move-exception v0

    .line 2363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2364
    .line 2365
    const-string v2, "Failed setRemoteLock(KNOXGUARD)"

    .line 2366
    .line 2367
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2368
    .line 2369
    .line 2370
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2371
    .line 2372
    .line 2373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v0

    .line 2377
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    .line 2379
    .line 2380
    goto/16 :goto_1b

    .line 2381
    .line 2382
    :cond_59
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 2383
    .line 2384
    iget-object v0, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2385
    .line 2386
    if-eqz v0, :cond_68

    .line 2387
    .line 2388
    const/4 v1, 0x0

    .line 2389
    const/4 v2, 0x1

    .line 2390
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    .line 2391
    .line 2392
    .line 2393
    goto/16 :goto_1b

    .line 2394
    .line 2395
    :cond_5a
    const/4 v1, 0x0

    .line 2396
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 2397
    .line 2398
    iget-object v2, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2399
    .line 2400
    if-eqz v2, :cond_5b

    .line 2401
    .line 2402
    invoke-virtual {v2, v1, v1}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    .line 2403
    .line 2404
    .line 2405
    :cond_5b
    :try_start_3
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2406
    .line 2407
    if-eqz v2, :cond_68

    .line 2408
    .line 2409
    iput-boolean v1, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 2410
    .line 2411
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2412
    .line 2413
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2414
    .line 2415
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2416
    .line 2417
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 2418
    .line 2419
    .line 2420
    move-result v2

    .line 2421
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2422
    .line 2423
    invoke-interface {v1, v2, v4}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V

    .line 2424
    .line 2425
    .line 2426
    const/4 v1, 0x0

    .line 2427
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2428
    .line 2429
    goto/16 :goto_1b

    .line 2430
    .line 2431
    :catch_2
    move-exception v0

    .line 2432
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2433
    .line 2434
    const-string v2, "Failed setRemoteLock"

    .line 2435
    .line 2436
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2440
    .line 2441
    .line 2442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v0

    .line 2446
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    .line 2448
    .line 2449
    goto/16 :goto_1b

    .line 2450
    .line 2451
    :cond_5c
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 2452
    .line 2453
    iget-object v0, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 2454
    .line 2455
    if-eqz v0, :cond_68

    .line 2456
    .line 2457
    const/4 v1, 0x0

    .line 2458
    const/4 v2, 0x1

    .line 2459
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    .line 2460
    .line 2461
    .line 2462
    goto/16 :goto_1b

    .line 2463
    .line 2464
    :cond_5d
    const/4 v2, 0x1

    .line 2465
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2466
    .line 2467
    const/4 v4, 0x2

    .line 2468
    invoke-direct {v1, v4, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 2469
    .line 2470
    .line 2471
    const-string v2, "Samsung Lockscreen"

    .line 2472
    .line 2473
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v1

    .line 2477
    const-string v2, "000-000-0000"

    .line 2478
    .line 2479
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v1

    .line 2483
    const-string v2, "This is RMM Lock Test Message."

    .line 2484
    .line 2485
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v1

    .line 2489
    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v1

    .line 2493
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2494
    .line 2495
    :try_start_4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2496
    .line 2497
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2498
    .line 2499
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2500
    .line 2501
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 2502
    .line 2503
    .line 2504
    move-result v2

    .line 2505
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2506
    .line 2507
    invoke-interface {v1, v2, v0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2508
    .line 2509
    .line 2510
    goto/16 :goto_1b

    .line 2511
    .line 2512
    :catch_3
    move-exception v0

    .line 2513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2514
    .line 2515
    const-string v2, "Failed setRemoteLock(RMM)"

    .line 2516
    .line 2517
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2518
    .line 2519
    .line 2520
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2521
    .line 2522
    .line 2523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2524
    .line 2525
    .line 2526
    move-result-object v0

    .line 2527
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    .line 2529
    .line 2530
    goto/16 :goto_1b

    .line 2531
    .line 2532
    :pswitch_1f
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2533
    .line 2534
    check-cast v2, Ljava/lang/String;

    .line 2535
    .line 2536
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2537
    .line 2538
    const/4 v3, 0x1

    .line 2539
    if-ne v1, v3, :cond_5e

    .line 2540
    .line 2541
    move v5, v3

    .line 2542
    goto :goto_17

    .line 2543
    :cond_5e
    const/4 v5, 0x0

    .line 2544
    :goto_17
    invoke-virtual {v0, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handlePackageRemoved(Ljava/lang/String;Z)V

    .line 2545
    .line 2546
    .line 2547
    goto/16 :goto_1b

    .line 2548
    .line 2549
    :pswitch_20
    const/4 v3, 0x1

    .line 2550
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2551
    .line 2552
    check-cast v1, Ljava/lang/String;

    .line 2553
    .line 2554
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23;

    .line 2555
    .line 2556
    invoke-direct {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;I)V

    .line 2557
    .line 2558
    .line 2559
    const/4 v1, 0x0

    .line 2560
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 2561
    .line 2562
    .line 2563
    goto/16 :goto_1b

    .line 2564
    .line 2565
    :pswitch_21
    const/4 v2, 0x0

    .line 2566
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2567
    .line 2568
    check-cast v1, Ljava/lang/String;

    .line 2569
    .line 2570
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23;

    .line 2571
    .line 2572
    const/4 v4, 0x2

    .line 2573
    invoke-direct {v3, v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;I)V

    .line 2574
    .line 2575
    .line 2576
    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 2577
    .line 2578
    .line 2579
    goto/16 :goto_1b

    .line 2580
    .line 2581
    :pswitch_22
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2582
    .line 2583
    if-nez v1, :cond_5f

    .line 2584
    .line 2585
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    .line 2586
    .line 2587
    if-eqz v1, :cond_68

    .line 2588
    .line 2589
    :cond_5f
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 2590
    .line 2591
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2592
    .line 2593
    .line 2594
    move-result-object v0

    .line 2595
    move-object v3, v0

    .line 2596
    check-cast v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 2597
    .line 2598
    iget-object v0, v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 2599
    .line 2600
    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 2601
    .line 2602
    .line 2603
    iget-object v1, v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 2604
    .line 2605
    const-string v2, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    .line 2606
    .line 2607
    const-class v4, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 2608
    .line 2609
    const/4 v5, 0x0

    .line 2610
    const/4 v6, 0x1

    .line 2611
    const/4 v7, 0x0

    .line 2612
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 2613
    .line 2614
    .line 2615
    goto/16 :goto_1b

    .line 2616
    .line 2617
    :pswitch_23
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2618
    .line 2619
    check-cast v1, Ljava/lang/Integer;

    .line 2620
    .line 2621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2622
    .line 2623
    .line 2624
    move-result v1

    .line 2625
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    .line 2626
    .line 2627
    invoke-direct {v2, v1, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(II)V

    .line 2628
    .line 2629
    .line 2630
    const/4 v1, 0x0

    .line 2631
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 2632
    .line 2633
    .line 2634
    goto/16 :goto_1b

    .line 2635
    .line 2636
    :pswitch_24
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2637
    .line 2638
    check-cast v1, Ljava/lang/String;

    .line 2639
    .line 2640
    const-string v2, "com.android.settings"

    .line 2641
    .line 2642
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2643
    .line 2644
    .line 2645
    move-result v2

    .line 2646
    if-eqz v2, :cond_60

    .line 2647
    .line 2648
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2649
    .line 2650
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    .line 2651
    .line 2652
    .line 2653
    :cond_60
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23;

    .line 2654
    .line 2655
    const/4 v3, 0x0

    .line 2656
    invoke-direct {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;I)V

    .line 2657
    .line 2658
    .line 2659
    const/4 v1, 0x0

    .line 2660
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 2661
    .line 2662
    .line 2663
    goto/16 :goto_1b

    .line 2664
    .line 2665
    :pswitch_25
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2666
    .line 2667
    check-cast v1, Ljava/lang/Integer;

    .line 2668
    .line 2669
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2670
    .line 2671
    .line 2672
    move-result v1

    .line 2673
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleDlsViewMode(I)V

    .line 2674
    .line 2675
    .line 2676
    goto/16 :goto_1b

    .line 2677
    .line 2678
    :pswitch_26
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2679
    .line 2680
    check-cast v1, Ljava/lang/Boolean;

    .line 2681
    .line 2682
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2683
    .line 2684
    .line 2685
    move-result v1

    .line 2686
    const-string v2, "handleDlsBiometricMode(), enabled="

    .line 2687
    .line 2688
    const-string v3, "KeyguardUpdateMonitor"

    .line 2689
    .line 2690
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2691
    .line 2692
    .line 2693
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    .line 2694
    .line 2695
    if-eq v2, v1, :cond_68

    .line 2696
    .line 2697
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    .line 2698
    .line 2699
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 2700
    .line 2701
    .line 2702
    move-result v1

    .line 2703
    if-eqz v1, :cond_61

    .line 2704
    .line 2705
    const/4 v1, 0x2

    .line 2706
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 2707
    .line 2708
    .line 2709
    goto :goto_18

    .line 2710
    :cond_61
    const/4 v1, 0x2

    .line 2711
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 2712
    .line 2713
    .line 2714
    move-result v2

    .line 2715
    if-eqz v2, :cond_68

    .line 2716
    .line 2717
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_DYNAMIC_LOCK:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2718
    .line 2719
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 2720
    .line 2721
    .line 2722
    goto/16 :goto_1b

    .line 2723
    .line 2724
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleLocaleChanged()V

    .line 2725
    .line 2726
    .line 2727
    goto/16 :goto_1b

    .line 2728
    .line 2729
    :cond_62
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2730
    .line 2731
    check-cast v1, Lcom/samsung/android/cover/CoverState;

    .line 2732
    .line 2733
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 2734
    .line 2735
    .line 2736
    goto :goto_1b

    .line 2737
    :cond_63
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2738
    .line 2739
    const/4 v2, 0x1

    .line 2740
    if-ne v1, v2, :cond_64

    .line 2741
    .line 2742
    move v5, v2

    .line 2743
    goto :goto_19

    .line 2744
    :cond_64
    move v5, v6

    .line 2745
    :goto_19
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handlePrimaryBouncerVisibilityChanged(Z)V

    .line 2746
    .line 2747
    .line 2748
    goto :goto_1b

    .line 2749
    :cond_65
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2750
    .line 2751
    check-cast v1, Ljava/lang/Boolean;

    .line 2752
    .line 2753
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2754
    .line 2755
    .line 2756
    move-result v1

    .line 2757
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    .line 2758
    .line 2759
    if-eq v2, v1, :cond_68

    .line 2760
    .line 2761
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2762
    .line 2763
    const-string v3, "handleNotiStarState( prev:"

    .line 2764
    .line 2765
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2766
    .line 2767
    .line 2768
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    .line 2769
    .line 2770
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2771
    .line 2772
    .line 2773
    const-string v3, "-> next:"

    .line 2774
    .line 2775
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    .line 2777
    .line 2778
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2779
    .line 2780
    .line 2781
    const-string v3, " )"

    .line 2782
    .line 2783
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    .line 2785
    .line 2786
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2787
    .line 2788
    .line 2789
    move-result-object v2

    .line 2790
    const-string v3, "KeyguardUpdateMonitor"

    .line 2791
    .line 2792
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    .line 2794
    .line 2795
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    .line 2796
    .line 2797
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 2798
    .line 2799
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2800
    .line 2801
    .line 2802
    move-result-object v1

    .line 2803
    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    .line 2804
    .line 2805
    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2806
    .line 2807
    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 2808
    .line 2809
    .line 2810
    move-result v1

    .line 2811
    if-nez v1, :cond_68

    .line 2812
    .line 2813
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 2814
    .line 2815
    .line 2816
    move-result v1

    .line 2817
    if-nez v1, :cond_66

    .line 2818
    .line 2819
    goto :goto_1b

    .line 2820
    :cond_66
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 2821
    .line 2822
    if-eqz v1, :cond_67

    .line 2823
    .line 2824
    const/4 v1, 0x2

    .line 2825
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 2826
    .line 2827
    .line 2828
    goto :goto_1a

    .line 2829
    :cond_67
    const/4 v1, 0x2

    .line 2830
    :goto_1a
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2831
    .line 2832
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 2833
    .line 2834
    .line 2835
    :cond_68
    :goto_1b
    return-void

    .line 2836
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x454
        :pswitch_16
        :pswitch_15
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x515
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x519
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x579
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3ee
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x3f3
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1b992 -> :sswitch_4
        0x586034f -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x9f08441 -> :sswitch_1
        0x5dd70799 -> :sswitch_0
    .end sparse-switch
.end method

.method public final handleServiceStateChange(IILandroid/telephony/ServiceState;)V
    .locals 5

    .line 1
    const-string v0, "handleServiceStateChange(subId="

    .line 2
    .line 3
    const-string v1, ", slotId="

    .line 4
    .line 5
    const-string v2, ", serviceState="

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "KeyguardUpdateMonitor"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mServiceStatesBySlotId:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mServiceStatesBySlotId:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/telephony/ServiceState;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eq v3, v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/4 v4, 0x3

    .line 78
    if-ne v3, v4, :cond_2

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-ne v3, v2, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    :cond_2
    const/4 v2, 0x0

    .line 93
    :cond_3
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    .line 94
    .line 95
    if-eq p2, v2, :cond_4

    .line 96
    .line 97
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v0, "updateOfflineState isOutOfService : "

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    new-instance p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 120
    .line 121
    const/4 v0, 0x5

    .line 122
    invoke-direct {p2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-super {p0, p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final handleSimStateChange(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final handleStartedGoingToSleep(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    .line 7
    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsStartFacePossible:Z

    .line 13
    .line 14
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->clearESimRemoved()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setUnlockingKeyguard(Z)V

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final handleStartedWakingUp(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    .line 13
    .line 14
    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const-string p0, "KeyguardUpdateMonitor"

    .line 39
    .line 40
    const-string p1, "handleUpdateCoverState did not call updateBiometricListeningState"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COVER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final handleUserSwitchComplete(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Lcom/android/systemui/util/SettingsHelper$1;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/Thread;

    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/SettingsHelper;I)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "onUserSwitched"

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    or-int/2addr v0, v2

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    or-int/2addr v0, v2

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updatePermanentLock(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    or-int/2addr v0, v2

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    or-int/2addr v0, v2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    or-int/2addr v0, v2

    .line 64
    const/4 v2, 0x0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 74
    .line 75
    invoke-direct {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateLockscreenDisabled(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 88
    .line 89
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateOwnerInfo(I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    or-int/2addr v0, v1

    .line 100
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDeviceOwnerInfo()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    or-int/2addr v0, v1

    .line 105
    const/4 v1, 0x2

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 117
    .line 118
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 132
    .line 133
    invoke-virtual {v0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 138
    .line 139
    :cond_4
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final handleUserUnlocked(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "handleUserUnlocked("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "KeyguardUpdateMonitor"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 39
    .line 40
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateUserUnlockNotification(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 48
    .line 49
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDualDARInnerLockscreenRequirement(I)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 62
    .line 63
    const/16 v0, 0xd

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final hasLockscreenWallpaper()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLockscreenWallpaper:Z

    .line 2
    .line 3
    return p0
.end method

.method public final hasRedactedNotifications()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasRedactedNotifications:Z

    .line 2
    .line 3
    return p0
.end method

.method public final is2StepVerification()Z
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isActiveDismissAction()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 2
    .line 3
    sget-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isAllSimState()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 23
    .line 24
    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    return v1
.end method

.method public final isAllSlotEmergencyOnly()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v2, 0x1

    .line 19
    move v3, v2

    .line 20
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/Integer;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/telephony/ServiceState;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 43
    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v7, "serviceState = "

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-ne v5, v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    :cond_3
    move v3, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    return v3
.end method

.method public final isAuthenticatedWithBiometric(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintAuthenticated(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final isAutoWipe()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 8
    .line 9
    if-gtz v0, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 14
    .line 15
    const-string v0, "auto_swipe_main_user"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    move p0, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p0, v1

    .line 31
    :goto_0
    if-eqz p0, :cond_2

    .line 32
    .line 33
    move v1, v0

    .line 34
    :cond_2
    return v1
.end method

.method public final isBiometricErrorLockoutPermanent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isBiometricsAuthenticatedOnLock()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isBouncerFullyShown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isCameraDisabledByPolicy()Z
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v2, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    .line 31
    .line 32
    return p0
.end method

.method public final isCarrierLock()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isCoverClosed()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return v1

    .line 20
    :cond_1
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final isDeviceOwnerInfoEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final isDismissActionExist()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isDualDarInnerAuthRequired(I)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isDualDarInnerAuthShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthShowing:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isDualDisplayPolicyAllowed()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public final isESimEmbedded()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    return v0
.end method

.method public final isESimRemoveButtonClicked()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-boolean v3, p0, v2

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v1
.end method

.method public final isEarlyWakeUp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isEnabledWof()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWofOnFold()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final isEnabledWofOnFold()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 14
    .line 15
    const-string v0, "fingerprint_always_on_type"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq p0, v2, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq p0, v3, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    return v2

    .line 38
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 45
    .line 46
    return p0

    .line 47
    :cond_3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 52
    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 54
    .line 55
    xor-int/2addr p0, v2

    .line 56
    return p0
.end method

.method public final isFMMLock()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isFaceAuthEnabledForUser(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final isFaceOptionEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final isFingerprintDisabled(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "device_policy"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    and-int/lit8 p1, p1, 0x20

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public final isFingerprintDisabledWithBadQuality()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/16 v0, 0x32

    .line 17
    .line 18
    if-lt p0, v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method

.method public final isFingerprintLeave()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFpLeave:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isFingerprintOptionEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final isForcedLock()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "KeyguardUpdateMonitor"

    .line 9
    .line 10
    const-string v0, "Prevent the Biometric from unlocking because CC mode is disabled."

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLock()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method public final isForgotPasswordView()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ForgotPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isFullscreenBouncer()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isHiddenInputContainer()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isIccBlockedPermanently()Z
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimDisabledPermanently:Z

    .line 29
    .line 30
    return v2
.end method

.method public final isInDisplayFingerprintMarginAccepted()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 25
    .line 26
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 27
    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFullscreenBouncer()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1
.end method

.method public final isKeyguardUnlocking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isKidsModeRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLockscreenDisabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    .line 10
    .line 11
    return p0
.end method

.method public final isMaxFailedBiometricUnlockAttempts(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x14

    .line 6
    .line 7
    if-lt p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isMaxFailedBiometricUnlockAttemptsShort()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    rem-int/lit8 p0, p0, 0x5

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    :goto_0
    return v0
.end method

.method public final isOutOfService()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isOwnerInfoEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPerformingWipeOut()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedUnlockAttempts(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAutoWipe()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-lez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 p0, 0x14

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p0, v2

    .line 29
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-ne v0, p0, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    :cond_3
    :goto_1
    return v2
.end method

.method public final isPermanentLock()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRearSelfie()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRearSelfie:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRemoteLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLockEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 22
    .line 23
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAdminLockEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method

.method public final isRemoteLockEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isRemoteLockMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    sget-object v0, Lcom/android/keyguard/SecurityUtils$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    aget p0, v0, p0

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    const/4 p0, 0x1

    .line 17
    :goto_0
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isScreenOffMemoRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isScreenOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/ViewMediatorCallback;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isSecure()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public final isSecure(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getCredentialTypeForUser(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLock()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public final isShortcutLaunchInProgress()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSimDisabledPermanently()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimDisabledPermanently:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSimPinPassed(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0xc

    .line 9
    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-ltz p1, :cond_2

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    if-le p1, p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    .line 20
    .line 21
    aget-boolean p0, p0, p1

    .line 22
    .line 23
    return p0

    .line 24
    :cond_2
    :goto_0
    const-string p0, "isSimPinPassed  Slot Boundary Exception SlotNum: "

    .line 25
    .line 26
    const-string p2, "KeyguardUpdateMonitor"

    .line 27
    .line 28
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method public final isSimState(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v2, p1, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    return v0
.end method

.method public final isTimerRunning()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    add-long/2addr v2, v0

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long p0, v2, v0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final isUdfpsEnrolled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isUdfpsFingerDown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isUdfpsSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isUnlockCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isUnlockingWithBiometricAllowed(Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    cmp-long p1, v2, v4

    .line 34
    .line 35
    if-gtz p1, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 40
    .line 41
    const-string/jumbo p1, "ultra_powersaving_mode"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const/4 p1, 0x1

    .line 53
    if-ne p0, p1, :cond_1

    .line 54
    .line 55
    move p0, p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move p0, v1

    .line 58
    :goto_0
    if-nez p0, :cond_2

    .line 59
    .line 60
    move v1, p1

    .line 61
    :cond_2
    return v1
.end method

.method public final isUpdateSecurityMessage()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAuthenticatedWithBiometric(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isKeyguardUnlocking()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final isUserUnlocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "KeyguardUpdateMonitor"

    .line 26
    .line 27
    const-string v2, "isUserUnlocked userId:%s, unlocked:%s"

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return p0
.end method

.method public final notifyFailedUnlockAttemptChanged()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifyStrongAuthAllowedChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setKeyguardGoingAway(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthAllowedChanged(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    move v1, v0

    .line 64
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    xor-int/2addr p1, v0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public final onLockIconPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCK_ICON_PRESSED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "do not add or remove a listener on dispatching: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final registerPreCallback(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-ne v2, p1, :cond_0

    .line 30
    .line 31
    new-instance p0, Ljava/lang/Exception;

    .line 32
    .line 33
    const-string p1, "Called by"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "KeyguardUpdateMonitor"

    .line 39
    .line 40
    const-string v0, "Object tried to add another callback"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-lez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_1
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "do not add or remove a listener on dispatching: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final removeESim(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    .line 11
    .line 12
    aput-boolean v1, v2, v0

    .line 13
    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    invoke-super {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final removeMaskViewForOpticalFpSensor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "KeyguardFingerprint"

    .line 10
    .line 11
    const-string/jumbo v1, "semRemoveMaskView()"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final reportFailedBiometricUnlockAttempt(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    const-string/jumbo v2, "reportFailedBiometricUnlockAttempt ( failedBiometricUnlockAttempts = "

    .line 8
    .line 9
    .line 10
    const-string v3, " )"

    .line 11
    .line 12
    const-string v4, "KeyguardUpdateMonitor"

    .line 13
    .line 14
    invoke-static {v2, v0, v3, v4}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x14

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-lt v0, v2, :cond_0

    .line 26
    .line 27
    const-string/jumbo v1, "reportFailedBiometricUnlockAttempt ( too many failed. )"

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 34
    .line 35
    invoke-virtual {v1, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz v0, :cond_3

    .line 40
    .line 41
    rem-int/lit8 v2, v0, 0x5

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    .line 47
    const/16 v5, 0x7530

    .line 48
    .line 49
    invoke-virtual {v2, p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    const-wide/16 v7, 0x7530

    .line 57
    .line 58
    add-long/2addr v5, v7

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    .line 72
    .line 73
    .line 74
    :cond_2
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 75
    .line 76
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroid/content/Intent;

    .line 80
    .line 81
    const-string v2, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 82
    .line 83
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/high16 v2, 0x10000000

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    const/high16 v8, 0x14000000

    .line 95
    .line 96
    invoke-static {v2, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "KeyguardFingerprint"

    .line 101
    .line 102
    const-string/jumbo v7, "setting Biometric lockout alarm !!"

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 109
    .line 110
    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 114
    .line 115
    const/16 v2, 0xc

    .line 116
    .line 117
    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    const/16 v1, 0xa

    .line 131
    .line 132
    if-lt v0, v1, :cond_4

    .line 133
    .line 134
    const-string v0, "MDF : reportFailedBiometricUnlockAttempt ( too many failures. )"

    .line 135
    .line 136
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    .line 141
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method

.method public final requestSessionClose()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "requestSessionClose() - isFingerprintDetectionRunning : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KeyguardFingerprint"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 57
    .line 58
    :cond_2
    :goto_0
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    .line 65
    .line 66
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 67
    .line 68
    const/16 v2, 0x9

    .line 69
    .line 70
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final resetSimPinPassed(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    .line 8
    .line 9
    aget-boolean v0, p0, p1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aput-boolean v0, p0, p1

    .line 15
    .line 16
    :cond_1
    return-void

    .line 17
    :cond_2
    :goto_0
    const-string/jumbo p0, "resetSimPinPassed  Slot Boundary Exception SlotNum: "

    .line 18
    .line 19
    .line 20
    const-string v0, "KeyguardUpdateMonitor"

    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final runSystemUserOnly(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    aget v1, v1, v2

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "com.samsung.keyguard.FINGERPRINT_UNLOCK_STATE"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "biometricId"

    .line 34
    .line 35
    iget v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricId:I

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, p0, p1, v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public final sendFaceSALog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "102"

    .line 6
    .line 7
    const-string v0, "1095"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "101"

    .line 11
    .line 12
    const-string v0, "1094"

    .line 13
    .line 14
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final sendFingerprintSALog(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "301"

    .line 8
    .line 9
    const-string v0, "1098"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const-string p0, "102"

    .line 17
    .line 18
    const-string v0, "1097"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string p0, "101"

    .line 22
    .line 23
    const-string v0, "1096"

    .line 24
    .line 25
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final sendKeyguardStateUpdated(ZZZZ)V
    .locals 8

    .line 1
    const-string/jumbo v0, "sendKeyguardStateUpdated("

    .line 2
    .line 3
    .line 4
    const-string v1, ", "

    .line 5
    .line 6
    invoke-static {v0, p1, v1, p2, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "KeyguardUpdateMonitor"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 46
    .line 47
    const-wide/16 v2, 0x1f4

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    new-instance v7, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda13;

    .line 55
    .line 56
    move-object v1, v7

    .line 57
    move-object v2, p0

    .line 58
    move v3, p1

    .line 59
    move v4, p2

    .line 60
    move v5, p3

    .line 61
    move v6, p4

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;ZZZZ)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final sendPrimaryBouncerVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v0, 0x465

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setAlternateBouncerShowing(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setBackDropViewShowing(ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda27;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda27;-><init>(ZZ)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setCredentialAttempted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    .line 3
    .line 4
    return-void
.end method

.method public final setDisableBiometricBySecurityDialog(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setDisableBiometricBySecurityDialog( "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " )"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KeyguardFingerprint"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    .line 27
    .line 28
    return-void
.end method

.method public final setDismissActionExist(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 2
    .line 3
    return-void
.end method

.method public final setFaceAuthenticated(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 38
    .line 39
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Lock stay is "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " by Face"

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "KeyguardFace"

    .line 72
    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    invoke-direct {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(II)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final setFaceWidgetFullScreenMode(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_4

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "setFaceWidgetFullScreenMode(), enabled = "

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 17
    .line 18
    const-string v2, " -> "

    .line 19
    .line 20
    const-string v3, "KeyguardUpdateMonitor"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :cond_1
    if-eqz p1, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 56
    .line 57
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 58
    .line 59
    const/4 v2, 0x3

    .line 60
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v2, 0x12c

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 69
    .line 70
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;ZI)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public final setFocusForBiometrics(IZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setFocusForBiometrics : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 10
    .line 11
    const-string v2, " -> "

    .line 12
    .line 13
    const-string v3, ", Focus window : "

    .line 14
    .line 15
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "KeyguardUpdateMonitor"

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    iget p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 43
    .line 44
    if-ne p2, p1, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 48
    .line 49
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 53
    .line 54
    if-eqz p2, :cond_7

    .line 55
    .line 56
    iget p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 57
    .line 58
    if-eq p2, p1, :cond_3

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v0, "setFocusForBiometrics : Cannot change focus. current Window is "

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 69
    .line 70
    const-string v0, ", reqWin : "

    .line 71
    .line 72
    invoke-static {p2, p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 78
    .line 79
    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    .line 80
    .line 81
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 95
    .line 96
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 97
    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_5

    .line 105
    .line 106
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    :cond_5
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 121
    .line 122
    new-instance p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 123
    .line 124
    invoke-direct {p2, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 137
    .line 138
    new-instance p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 139
    .line 140
    const/4 v0, 0x2

    .line 141
    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    :cond_7
    return-void
.end method

.method public final setFodStrictMode(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFODStrictMode:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    .line 13
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 28
    .line 29
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x1e

    .line 41
    .line 42
    if-ge v1, v2, :cond_0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    :cond_0
    const/4 v3, 0x1

    .line 47
    :cond_1
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const-string/jumbo v1, "setFodStrictMode : "

    .line 50
    .line 51
    .line 52
    const-string v2, " strongAuth : "

    .line 53
    .line 54
    const-string v3, " callStack : "

    .line 55
    .line 56
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v1, 0xf

    .line 61
    .line 62
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    const-string v3, "KeyguardFingerprint"

    .line 77
    .line 78
    invoke-static {v3, v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFODStrictMode:Z

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 84
    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semSetFodStrictMode(Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public final setHasLockscreenWallpaper(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLockscreenWallpaper:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHasRedactedNotifications(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasRedactedNotifications:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setIsRunningBlackMemo(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setIsRunningBlackMemo : "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 14
    .line 15
    const-string v2, " -> "

    .line 16
    .line 17
    const-string v3, "KeyguardUpdateMonitor"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 35
    .line 36
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final setKeyguardGoingAway(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "setKeyguardGoingAway( "

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " -> "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " )"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "KeyguardUpdateMonitor"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final setKeyguardShowing(ZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p2, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 11
    .line 12
    if-eq v3, p1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v1, v2

    .line 16
    :goto_1
    if-nez v0, :cond_2

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 32
    .line 33
    const-wide/16 v3, 0x1f4

    .line 34
    .line 35
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 43
    .line 44
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 51
    .line 52
    invoke-virtual {v3, p1, p2, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logKeyguardShowingChanged(ZZZ)V

    .line 53
    .line 54
    .line 55
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    .line 62
    .line 63
    :cond_4
    if-eq v1, v0, :cond_6

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 68
    .line 69
    :cond_5
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    .line 70
    .line 71
    invoke-direct {p1, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(ZI)V

    .line 72
    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 76
    .line 77
    .line 78
    :cond_6
    if-nez v1, :cond_7

    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 81
    .line 82
    if-nez p1, :cond_7

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setUnlockingKeyguard(Z)V

    .line 85
    .line 86
    .line 87
    :cond_7
    const/4 p1, 0x2

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 89
    .line 90
    .line 91
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 92
    .line 93
    if-nez p2, :cond_8

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_8

    .line 100
    .line 101
    sget-object p2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 104
    .line 105
    .line 106
    :cond_8
    return-void
.end method

.method public final setLockoutAttemptDeadline(II)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    int-to-long v2, p2

    .line 8
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 9
    .line 10
    cmp-long p2, v0, v4

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 15
    .line 16
    cmp-long p2, v2, v4

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    :cond_0
    const-string/jumbo p2, "setLockoutAttemptDeadline() userId "

    .line 21
    .line 22
    .line 23
    const-string v4, ", AD:"

    .line 24
    .line 25
    invoke-static {p2, p1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 30
    .line 31
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, "->"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, ", AT:"

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 48
    .line 49
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 63
    .line 64
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 65
    .line 66
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 73
    .line 74
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    .line 79
    .line 80
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 81
    .line 82
    const-wide/16 v2, 0x0

    .line 83
    .line 84
    cmp-long p2, v0, v2

    .line 85
    .line 86
    if-lez p2, :cond_1

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 p2, 0x0

    .line 91
    :goto_0
    check-cast p1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyKeyguardLockout(Z)V

    .line 94
    .line 95
    .line 96
    iget-wide p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 97
    .line 98
    cmp-long v0, p1, v2

    .line 99
    .line 100
    if-lez v0, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 103
    .line 104
    const/16 v1, 0x3eb

    .line 105
    .line 106
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-wide p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 110
    .line 111
    return-wide p0
.end method

.method public final setPanelExpandingStarted(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 24
    .line 25
    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v1, "setPanelExpandingStarted() mIsPanelExpandingStarted = "

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    .line 41
    .line 42
    const-string v3, " -> "

    .line 43
    .line 44
    const-string v4, "KeyguardUpdateMonitor"

    .line 45
    .line 46
    invoke-static {p1, v1, v3, v0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final setShortcutLaunchInProgress(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setShortcutLaunchInProgress() mIsShortcutLaunchInProgress = "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 14
    .line 15
    const-string v2, " -> "

    .line 16
    .line 17
    const-string v3, "KeyguardUpdateMonitor"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 23
    .line 24
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final setUnlockingKeyguard(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "setUnlockingKeyguard( "

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " )"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KeyguardUpdateMonitor"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 41
    .line 42
    .line 43
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    .line 48
    .line 49
    .line 50
    :cond_1
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final setupLocked()V
    .locals 5

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string/jumbo v1, "setupLocked"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 15
    .line 16
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 32
    .line 33
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsCallbackForUPSM:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsValueListForPSM:[Landroid/net/Uri;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 52
    .line 53
    .line 54
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOneHandModeSettingsCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16;

    .line 61
    .line 62
    const-string v2, "any_screen_running"

    .line 63
    .line 64
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 80
    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayListener:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    .line 98
    .line 99
    const-string v2, "com.sec.android.app.kidshome"

    .line 100
    .line 101
    const-string v3, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    .line 102
    .line 103
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Landroid/content/Intent;

    .line 113
    .line 114
    const-string v4, "android.intent.action.MAIN"

    .line 115
    .line 116
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v4, "android.intent.category.HOME"

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const/high16 v4, 0x10000

    .line 125
    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-nez v2, :cond_2

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    .line 135
    .line 136
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 137
    .line 138
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    .line 150
    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceStateCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    .line 170
    .line 171
    invoke-virtual {v0, v1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    return-void
.end method

.method public final shouldListenForFace()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1b

    .line 17
    .line 18
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    .line 19
    .line 20
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 21
    .line 22
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 23
    .line 24
    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 25
    .line 26
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 27
    .line 28
    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 29
    .line 30
    const-class v9, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 31
    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    check-cast v10, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 39
    .line 40
    iget-boolean v10, v10, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 41
    .line 42
    if-nez v10, :cond_0

    .line 43
    .line 44
    iget-boolean v10, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    :goto_0
    if-nez v10, :cond_1

    .line 52
    .line 53
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 54
    .line 55
    if-eqz v12, :cond_4

    .line 56
    .line 57
    :cond_1
    if-nez v6, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    if-nez v12, :cond_4

    .line 64
    .line 65
    if-nez v5, :cond_4

    .line 66
    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 70
    .line 71
    if-nez v12, :cond_2

    .line 72
    .line 73
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 74
    .line 75
    if-nez v12, :cond_2

    .line 76
    .line 77
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 78
    .line 79
    if-eqz v12, :cond_3

    .line 80
    .line 81
    :cond_2
    if-eqz v2, :cond_4

    .line 82
    .line 83
    :cond_3
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 84
    .line 85
    if-nez v12, :cond_4

    .line 86
    .line 87
    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 88
    .line 89
    if-eqz v12, :cond_4

    .line 90
    .line 91
    const/4 v12, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move v12, v3

    .line 94
    :goto_1
    const-string/jumbo v13, "shouldListenForFace ( isFaceDefaultCondition = "

    .line 95
    .line 96
    .line 97
    const-string v14, " , isKeyguardVisible = "

    .line 98
    .line 99
    const-string v15, " , isDeviceInteractive = "

    .line 100
    .line 101
    invoke-static {v13, v12, v14, v10, v15}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v14, " , mPrimaryBouncerFullyShown = "

    .line 109
    .line 110
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 114
    .line 115
    const-string v15, " , isSwitchingUser = "

    .line 116
    .line 117
    const-string v11, " , mIsDreamingForBiometrics = "

    .line 118
    .line 119
    invoke-static {v13, v14, v15, v5, v11}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 123
    .line 124
    const-string v11, " , isGoingToSleep = "

    .line 125
    .line 126
    const-string v14, " , isKeyguardGoingAway = "

    .line 127
    .line 128
    invoke-static {v13, v5, v11, v4, v14}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v4, " , mKeyguardUnlocking = "

    .line 135
    .line 136
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 140
    .line 141
    const-string v5, " , isEarlyWakeUp = "

    .line 142
    .line 143
    const-string v6, " , mIsScreenSaverRunning = "

    .line 144
    .line 145
    invoke-static {v13, v4, v5, v2, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 149
    .line 150
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, " , mSystemReady = "

    .line 154
    .line 155
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 159
    .line 160
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, " , getUserUnlockedWithBiometric = "

    .line 164
    .line 165
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, " , isKeyguardShowing = "

    .line 176
    .line 177
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 181
    .line 182
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, " , isKeyguardOccluded = "

    .line 186
    .line 187
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 191
    .line 192
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v2, " , mHasFocus = "

    .line 196
    .line 197
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 201
    .line 202
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, ")"

    .line 206
    .line 207
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    const-string v5, "KeyguardFace"

    .line 215
    .line 216
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    if-nez v12, :cond_5

    .line 220
    .line 221
    const-string/jumbo v0, "shouldListenForFace ( return false, Face is not default condition)"

    .line 222
    .line 223
    .line 224
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    return v3

    .line 228
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    .line 229
    .line 230
    .line 231
    move-result-wide v11

    .line 232
    const-wide/16 v13, 0x0

    .line 233
    .line 234
    cmp-long v4, v11, v13

    .line 235
    .line 236
    if-lez v4, :cond_6

    .line 237
    .line 238
    const-string/jumbo v0, "shouldListenForFace ( return false, because of Biometric lockoutAttemptDeadline)"

    .line 239
    .line 240
    .line 241
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    return v3

    .line 245
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    .line 246
    .line 247
    .line 248
    move-result-wide v11

    .line 249
    cmp-long v4, v11, v13

    .line 250
    .line 251
    if-lez v4, :cond_7

    .line 252
    .line 253
    const-string/jumbo v0, "shouldListenForFace ( return false, because of lockoutAttemptDeadline)"

    .line 254
    .line 255
    .line 256
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    return v3

    .line 260
    :cond_7
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_8

    .line 265
    .line 266
    const-string/jumbo v0, "shouldListenForFace (return false, because face is disabled by dpm)"

    .line 267
    .line 268
    .line 269
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    return v3

    .line 273
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-eqz v4, :cond_9

    .line 278
    .line 279
    const-string/jumbo v0, "shouldListenForFace ( return false, because security policy)"

    .line 280
    .line 281
    .line 282
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    return v3

    .line 286
    :cond_9
    iget v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    .line 287
    .line 288
    const/4 v6, 0x2

    .line 289
    if-ne v4, v6, :cond_a

    .line 290
    .line 291
    const-string/jumbo v0, "shouldListenForFace ( return false, the cocktail bar is expanded)"

    .line 292
    .line 293
    .line 294
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    return v3

    .line 298
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCameraDisabledByPolicy()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_b

    .line 303
    .line 304
    const-string/jumbo v0, "shouldListenForFace ( return false, the camera is block by policy)"

    .line 305
    .line 306
    .line 307
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    return v3

    .line 311
    :cond_b
    sget-boolean v4, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 312
    .line 313
    if-eqz v4, :cond_c

    .line 314
    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_c

    .line 320
    .line 321
    const-string/jumbo v0, "shouldListenForFace ( return false as cover is closed. )"

    .line 322
    .line 323
    .line 324
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    return v3

    .line 328
    :cond_c
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 329
    .line 330
    if-nez v4, :cond_d

    .line 331
    .line 332
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 333
    .line 334
    if-nez v4, :cond_e

    .line 335
    .line 336
    :cond_d
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 337
    .line 338
    if-eqz v4, :cond_f

    .line 339
    .line 340
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string/jumbo v2, "shouldListenForFace ( return false, because mIsQsFullyExpanded = "

    .line 343
    .line 344
    .line 345
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v2, ", or mIsFaceWidgetFullScreen="

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 359
    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v0, " )"

    .line 364
    .line 365
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    return v3

    .line 376
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-nez v4, :cond_10

    .line 381
    .line 382
    const-string/jumbo v0, "shouldListenForFace ( return false, unlocking never happened )"

    .line 383
    .line 384
    .line 385
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    return v3

    .line 389
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-nez v4, :cond_11

    .line 398
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string/jumbo v4, "shouldListenForFace ( return false, because isUnlockingWithBiometricAllowed() = "

    .line 402
    .line 403
    .line 404
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    return v3

    .line 429
    :cond_11
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 430
    .line 431
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 436
    .line 437
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 438
    .line 439
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-eqz v2, :cond_12

    .line 444
    .line 445
    const-string/jumbo v0, "shouldListenForFace ( return false, device is locked by administrator )"

    .line 446
    .line 447
    .line 448
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    return v3

    .line 452
    :cond_12
    sget-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_13

    .line 462
    .line 463
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    .line 464
    .line 465
    if-eqz v2, :cond_13

    .line 466
    .line 467
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 468
    .line 469
    if-nez v2, :cond_13

    .line 470
    .line 471
    const-string v0, "TAG_FACE"

    .line 472
    .line 473
    const-string/jumbo v1, "shouldListenForFace ( return false, NotiStar is shown )"

    .line 474
    .line 475
    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    return v3

    .line 480
    :cond_13
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 481
    .line 482
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_14

    .line 487
    .line 488
    if-eqz v10, :cond_14

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-eqz v1, :cond_14

    .line 495
    .line 496
    const-string/jumbo v0, "shouldListenForFace ( return false, getUserHasTrust() is true)"

    .line 497
    .line 498
    .line 499
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    return v3

    .line 503
    :cond_14
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 504
    .line 505
    if-nez v1, :cond_15

    .line 506
    .line 507
    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    .line 508
    .line 509
    if-eqz v2, :cond_15

    .line 510
    .line 511
    const-string/jumbo v0, "shouldListenForFace ( return false, DynamicLockViewMode"

    .line 512
    .line 513
    .line 514
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    return v3

    .line 518
    :cond_15
    if-eqz v7, :cond_16

    .line 519
    .line 520
    if-nez v1, :cond_16

    .line 521
    .line 522
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 523
    .line 524
    if-eqz v1, :cond_16

    .line 525
    .line 526
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 527
    .line 528
    if-nez v1, :cond_16

    .line 529
    .line 530
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 531
    .line 532
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 533
    .line 534
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-nez v1, :cond_16

    .line 539
    .line 540
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 541
    .line 542
    if-nez v1, :cond_16

    .line 543
    .line 544
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 545
    .line 546
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    .line 551
    .line 552
    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 553
    .line 554
    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-nez v1, :cond_16

    .line 559
    .line 560
    const-string/jumbo v0, "shouldListenForFace ( return false, Not focus on NotificationShade )"

    .line 561
    .line 562
    .line 563
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    return v3

    .line 567
    :cond_16
    if-nez v8, :cond_17

    .line 568
    .line 569
    goto :goto_2

    .line 570
    :cond_17
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 571
    .line 572
    if-nez v1, :cond_18

    .line 573
    .line 574
    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 579
    .line 580
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 581
    .line 582
    if-nez v1, :cond_18

    .line 583
    .line 584
    const-string/jumbo v0, "shouldListenForFace ( return false, Dual LCD folder is closed )"

    .line 585
    .line 586
    .line 587
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    return v3

    .line 591
    :cond_18
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_19

    .line 596
    .line 597
    const-string/jumbo v0, "shouldListenForFace ( return false, Showing forgot password view )"

    .line 598
    .line 599
    .line 600
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    return v3

    .line 604
    :cond_19
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardEditModeControllerLazy:Ldagger/Lazy;

    .line 605
    .line 606
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 611
    .line 612
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 613
    .line 614
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_1a

    .line 619
    .line 620
    const-string/jumbo v0, "shouldListenForFace ( return false, Lock Edit VI running )"

    .line 621
    .line 622
    .line 623
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    return v3

    .line 627
    :cond_1a
    const/4 v0, 0x1

    .line 628
    return v0

    .line 629
    :cond_1b
    return v3
.end method

.method public final shouldListenForFingerprint(Z)Z
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v0, "keyguard.fingerprint_test"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2a

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 25
    .line 26
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 27
    .line 28
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWof()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x1

    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 46
    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    if-nez v7, :cond_0

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    .line 72
    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    move v0, v8

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v0, v1

    .line 78
    :goto_0
    if-eqz v0, :cond_6

    .line 79
    .line 80
    :cond_1
    if-nez v3, :cond_6

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 83
    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    if-nez v4, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    move v0, v8

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move v0, v1

    .line 105
    :goto_1
    if-nez v0, :cond_6

    .line 106
    .line 107
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    if-nez v6, :cond_5

    .line 113
    .line 114
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 115
    .line 116
    if-nez v7, :cond_5

    .line 117
    .line 118
    sget-boolean v9, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    .line 119
    .line 120
    if-eqz v9, :cond_4

    .line 121
    .line 122
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 123
    .line 124
    if-eqz v9, :cond_4

    .line 125
    .line 126
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 127
    .line 128
    if-eqz v9, :cond_4

    .line 129
    .line 130
    if-nez v7, :cond_4

    .line 131
    .line 132
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    .line 133
    .line 134
    if-nez v7, :cond_4

    .line 135
    .line 136
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    .line 137
    .line 138
    if-nez v7, :cond_4

    .line 139
    .line 140
    move v7, v8

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move v7, v1

    .line 143
    :goto_2
    if-nez v7, :cond_5

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    :cond_5
    if-nez v3, :cond_6

    .line 148
    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    if-nez v5, :cond_6

    .line 152
    .line 153
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 154
    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 158
    .line 159
    if-nez v0, :cond_6

    .line 160
    .line 161
    if-nez v4, :cond_6

    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 164
    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    :goto_3
    move v0, v8

    .line 168
    goto :goto_4

    .line 169
    :cond_6
    move v0, v1

    .line 170
    :goto_4
    const-string/jumbo v7, "shouldListenForFingerprint ( isFingerprintEnabled = "

    .line 171
    .line 172
    .line 173
    const-string v9, " , mKeyguardIsVisible = "

    .line 174
    .line 175
    const-string v10, " , mDeviceInteractive = "

    .line 176
    .line 177
    invoke-static {v7, v0, v9, v6, v10}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v9, " , mPrimaryBouncerIsOrWillBeShowing = "

    .line 185
    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 190
    .line 191
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v9, " , mPrimaryBouncerFullyShown = "

    .line 195
    .line 196
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 200
    .line 201
    const-string v10, " , mGoingToSleep = "

    .line 202
    .line 203
    const-string v11, " , mSwitchingUser = "

    .line 204
    .line 205
    invoke-static {v7, v9, v10, v5, v11}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v3, " , mIsDreamingForBiometrics = "

    .line 212
    .line 213
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 217
    .line 218
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v3, " , mKeyguardUnlocking = "

    .line 222
    .line 223
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    .line 227
    .line 228
    const-string v9, " , mKeyguardGoingAway = "

    .line 229
    .line 230
    const-string v10, " , mKeyguardShowing = "

    .line 231
    .line 232
    invoke-static {v7, v3, v9, v4, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 236
    .line 237
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, " , mKeyguardOccluded = "

    .line 241
    .line 242
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 246
    .line 247
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v3, " , mSystemReady = "

    .line 251
    .line 252
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 256
    .line 257
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v3, " , mHasFocus = "

    .line 261
    .line 262
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 266
    .line 267
    const-string v4, "KeyguardFingerprint"

    .line 268
    .line 269
    invoke-static {v7, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    if-eqz v0, :cond_2a

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    .line 275
    .line 276
    .line 277
    move-result-wide v9

    .line 278
    const-wide/16 v11, 0x0

    .line 279
    .line 280
    cmp-long v0, v9, v11

    .line 281
    .line 282
    if-lez v0, :cond_7

    .line 283
    .line 284
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of Biometric lockoutAttemptDeadline )"

    .line 285
    .line 286
    .line 287
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    return v1

    .line 291
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    .line 292
    .line 293
    .line 294
    move-result-wide v9

    .line 295
    cmp-long v0, v9, v11

    .line 296
    .line 297
    if-lez v0, :cond_8

    .line 298
    .line 299
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of lockoutAttemptDeadline )"

    .line 300
    .line 301
    .line 302
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    return v1

    .line 306
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintDisabled(I)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_9

    .line 311
    .line 312
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because fingerprint is disabled by dpm )"

    .line 313
    .line 314
    .line 315
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    return v1

    .line 319
    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_a

    .line 324
    .line 325
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because lock to force a lockscreen )"

    .line 326
    .line 327
    .line 328
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    return v1

    .line 332
    :cond_a
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 333
    .line 334
    if-eqz v0, :cond_b

    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_b

    .line 341
    .line 342
    const-string/jumbo p0, "shouldListenForFingerprint ( return false as cover is closed. )"

    .line 343
    .line 344
    .line 345
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    return v1

    .line 349
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWof()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_d

    .line 354
    .line 355
    if-eqz v2, :cond_c

    .line 356
    .line 357
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 358
    .line 359
    if-eqz v0, :cond_d

    .line 360
    .line 361
    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintDisabledWithBadQuality()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_d

    .line 366
    .line 367
    const-string/jumbo p0, "shouldListenForFingerprint ( bad quality count is maximum. )"

    .line 368
    .line 369
    .line 370
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    return v1

    .line 374
    :cond_d
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_e

    .line 379
    .line 380
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAuthenticatedWithBiometric(I)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_e

    .line 385
    .line 386
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, authenticated with biometric)"

    .line 387
    .line 388
    .line 389
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    return v1

    .line 393
    :cond_e
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 394
    .line 395
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 400
    .line 401
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 402
    .line 403
    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_f

    .line 408
    .line 409
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, device is locked by administrator )"

    .line 410
    .line 411
    .line 412
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    return v1

    .line 416
    :cond_f
    const-class v3, Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 417
    .line 418
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    if-nez v3, :cond_10

    .line 423
    .line 424
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, dependency class destroy)"

    .line 425
    .line 426
    .line 427
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    return v1

    .line 431
    :cond_10
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 432
    .line 433
    if-eqz v3, :cond_11

    .line 434
    .line 435
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    .line 436
    .line 437
    if-nez v3, :cond_11

    .line 438
    .line 439
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    .line 440
    .line 441
    if-nez v3, :cond_11

    .line 442
    .line 443
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    .line 444
    .line 445
    if-nez v3, :cond_11

    .line 446
    .line 447
    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 448
    .line 449
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 454
    .line 455
    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 456
    .line 457
    if-nez v3, :cond_11

    .line 458
    .line 459
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, folder is closed )"

    .line 460
    .line 461
    .line 462
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    return v1

    .line 466
    :cond_11
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 467
    .line 468
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_12

    .line 473
    .line 474
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 475
    .line 476
    if-eqz v3, :cond_12

    .line 477
    .line 478
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because Screen off Memo is running. )"

    .line 479
    .line 480
    .line 481
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    return v1

    .line 485
    :cond_12
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    if-nez v3, :cond_13

    .line 490
    .line 491
    if-eqz v2, :cond_13

    .line 492
    .line 493
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 494
    .line 495
    if-eqz v3, :cond_13

    .line 496
    .line 497
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, strong auth with occluded )"

    .line 498
    .line 499
    .line 500
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    return v1

    .line 504
    :cond_13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_14

    .line 509
    .line 510
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    if-eqz v3, :cond_14

    .line 515
    .line 516
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 521
    .line 522
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 523
    .line 524
    invoke-virtual {v3, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_14

    .line 529
    .line 530
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 535
    .line 536
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 537
    .line 538
    invoke-virtual {v3, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerAuthRequired(I)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_14

    .line 543
    .line 544
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 549
    .line 550
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 551
    .line 552
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 553
    .line 554
    .line 555
    move-result-wide v9

    .line 556
    cmp-long v0, v9, v11

    .line 557
    .line 558
    if-lez v0, :cond_14

    .line 559
    .line 560
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of lockoutAttemptDeadline of dualdar do inner user )"

    .line 561
    .line 562
    .line 563
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    return v1

    .line 567
    :cond_14
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    .line 568
    .line 569
    if-eqz v0, :cond_15

    .line 570
    .line 571
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, screen off by proximity)"

    .line 572
    .line 573
    .line 574
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    return v1

    .line 578
    :cond_15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    if-eqz v0, :cond_16

    .line 583
    .line 584
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Showing forgot password view )"

    .line 585
    .line 586
    .line 587
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    return v1

    .line 591
    :cond_16
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 592
    .line 593
    if-eqz v0, :cond_29

    .line 594
    .line 595
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_17

    .line 605
    .line 606
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    .line 607
    .line 608
    if-eqz v0, :cond_17

    .line 609
    .line 610
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 611
    .line 612
    if-nez v0, :cond_17

    .line 613
    .line 614
    if-eqz v2, :cond_17

    .line 615
    .line 616
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, NotiStar is shown )"

    .line 617
    .line 618
    .line 619
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .line 621
    .line 622
    return v1

    .line 623
    :cond_17
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 624
    .line 625
    if-nez v0, :cond_18

    .line 626
    .line 627
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 628
    .line 629
    if-nez v0, :cond_19

    .line 630
    .line 631
    :cond_18
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 632
    .line 633
    if-eqz v0, :cond_1a

    .line 634
    .line 635
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    const-string/jumbo v0, "shouldListenForFingerprint ( return false, because mIsQsFullyExpanded = "

    .line 638
    .line 639
    .line 640
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    .line 644
    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const-string v0, ", or mIsFaceWidgetFullScreen="

    .line 649
    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    .line 654
    .line 655
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string p0, " )"

    .line 659
    .line 660
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object p0

    .line 667
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    return v1

    .line 671
    :cond_1a
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-nez v0, :cond_1b

    .line 676
    .line 677
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, strong auth with in-display fingerprint)"

    .line 678
    .line 679
    .line 680
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .line 682
    .line 683
    return v1

    .line 684
    :cond_1b
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    .line 685
    .line 686
    if-eqz v0, :cond_1c

    .line 687
    .line 688
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, shortcut preview is showing )"

    .line 689
    .line 690
    .line 691
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    return v1

    .line 695
    :cond_1c
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 696
    .line 697
    if-nez v0, :cond_1d

    .line 698
    .line 699
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    .line 700
    .line 701
    if-eqz v0, :cond_1d

    .line 702
    .line 703
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, quick panel is showing )"

    .line 704
    .line 705
    .line 706
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    return v1

    .line 710
    :cond_1d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 711
    .line 712
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eqz v0, :cond_1e

    .line 717
    .line 718
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, one hand mode is running)"

    .line 719
    .line 720
    .line 721
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    return v1

    .line 725
    :cond_1e
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    .line 726
    .line 727
    const/4 v3, 0x2

    .line 728
    if-ne v0, v3, :cond_1f

    .line 729
    .line 730
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, the cocktail bar is expanded)"

    .line 731
    .line 732
    .line 733
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    return v1

    .line 737
    :cond_1f
    if-eqz v2, :cond_20

    .line 738
    .line 739
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 740
    .line 741
    if-nez v0, :cond_20

    .line 742
    .line 743
    if-eqz v6, :cond_20

    .line 744
    .line 745
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-eqz v0, :cond_20

    .line 750
    .line 751
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, getUserHasTrust() is true)"

    .line 752
    .line 753
    .line 754
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    return v1

    .line 758
    :cond_20
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    if-eqz v0, :cond_21

    .line 767
    .line 768
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, this process is for the sub-user)"

    .line 769
    .line 770
    .line 771
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    return v1

    .line 775
    :cond_21
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 776
    .line 777
    const-string v3, "KeyguardUpdateMonitor"

    .line 778
    .line 779
    if-nez v0, :cond_22

    .line 780
    .line 781
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    .line 782
    .line 783
    if-eqz v6, :cond_22

    .line 784
    .line 785
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, DynamicLockViewMode"

    .line 786
    .line 787
    .line 788
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    return v1

    .line 792
    :cond_22
    if-eqz v0, :cond_23

    .line 793
    .line 794
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSIPShown:Z

    .line 795
    .line 796
    if-eqz v0, :cond_23

    .line 797
    .line 798
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, SIP is showing )"

    .line 799
    .line 800
    .line 801
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    return v1

    .line 805
    :cond_23
    if-eqz v2, :cond_24

    .line 806
    .line 807
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 808
    .line 809
    if-eqz v0, :cond_24

    .line 810
    .line 811
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    .line 812
    .line 813
    if-nez v0, :cond_24

    .line 814
    .line 815
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 816
    .line 817
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 818
    .line 819
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    if-nez v0, :cond_24

    .line 824
    .line 825
    if-nez v5, :cond_24

    .line 826
    .line 827
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 828
    .line 829
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 834
    .line 835
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 836
    .line 837
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    if-nez v0, :cond_24

    .line 842
    .line 843
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Not focus on NotificationShade )"

    .line 844
    .line 845
    .line 846
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .line 848
    .line 849
    return v1

    .line 850
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    .line 851
    .line 852
    .line 853
    move-result p1

    .line 854
    if-eqz p1, :cond_25

    .line 855
    .line 856
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Face authenticated)"

    .line 857
    .line 858
    .line 859
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .line 861
    .line 862
    return v1

    .line 863
    :cond_25
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 864
    .line 865
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    .line 870
    .line 871
    check-cast p1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 872
    .line 873
    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 874
    .line 875
    .line 876
    move-result p1

    .line 877
    if-eqz p1, :cond_28

    .line 878
    .line 879
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    .line 880
    .line 881
    if-eqz p1, :cond_26

    .line 882
    .line 883
    goto :goto_5

    .line 884
    :cond_26
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 885
    .line 886
    invoke-interface {p0}, Landroid/view/IWindowManager;->getVisibleWindowInfoList()Ljava/util/List;

    .line 887
    .line 888
    .line 889
    move-result-object p0

    .line 890
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 891
    .line 892
    .line 893
    move-result-object p0

    .line 894
    :cond_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 895
    .line 896
    .line 897
    move-result p1

    .line 898
    if-eqz p1, :cond_28

    .line 899
    .line 900
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object p1

    .line 904
    check-cast p1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    .line 905
    .line 906
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    .line 907
    .line 908
    const/16 v2, 0x7d9

    .line 909
    .line 910
    if-ne v0, v2, :cond_27

    .line 911
    .line 912
    new-instance p0, Ljava/lang/StringBuilder;

    .line 913
    .line 914
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .line 916
    .line 917
    const-string v0, "hasPopupOnDualView "

    .line 918
    .line 919
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    iget-object p1, p1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    .line 923
    .line 924
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    const-string p1, " is showing"

    .line 928
    .line 929
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object p0

    .line 936
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .line 938
    .line 939
    move p0, v8

    .line 940
    goto :goto_6

    .line 941
    :catch_0
    move-exception p0

    .line 942
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object p0

    .line 946
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .line 948
    .line 949
    goto :goto_5

    .line 950
    :catch_1
    move-exception p0

    .line 951
    const-string p1, "Fail to check windows by RemoteException"

    .line 952
    .line 953
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    .line 955
    .line 956
    :cond_28
    :goto_5
    move p0, v1

    .line 957
    :goto_6
    if-eqz p0, :cond_29

    .line 958
    .line 959
    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Popup showing on Dex dual view )"

    .line 960
    .line 961
    .line 962
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .line 964
    .line 965
    return v1

    .line 966
    :cond_29
    return v8

    .line 967
    :cond_2a
    return v1
.end method

.method public final startBiometricWatchdog()V
    .locals 0

    .line 1
    return-void
.end method

.method public final startListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 14
    .line 15
    const-string v2, "KeyguardFace"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v1, v3, :cond_4

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v4, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 23
    .line 24
    monitor-enter v4

    .line 25
    :try_start_0
    sget-object v5, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 34
    .line 35
    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    monitor-exit v4

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v1, "startListeningForFace()"

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 56
    .line 57
    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 58
    .line 59
    invoke-virtual {v2, v4, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logUnexpectedFaceCancellationSignalState(IZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 67
    .line 68
    :cond_2
    new-instance v1, Landroid/os/CancellationSignal;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 79
    .line 80
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 81
    .line 82
    invoke-virtual {v1, v2, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logStartedListeningForFace(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFaceUnlockPossible(Z)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-class v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 93
    .line 94
    monitor-enter v0

    .line 95
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 96
    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sput-object p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 104
    .line 105
    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    monitor-exit v0

    .line 108
    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    new-instance v5, Lcom/android/keyguard/SecFaceAuthCallback;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 115
    .line 116
    invoke-direct {v5, p1}, Lcom/android/keyguard/SecFaceAuthCallback;-><init>(Ljava/util/function/Consumer;)V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 122
    .line 123
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v9, 0x0

    .line 131
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0

    .line 137
    throw p0

    .line 138
    :catchall_1
    move-exception p0

    .line 139
    monitor-exit v4

    .line 140
    throw p0

    .line 141
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v0, "Can\'t start startListeningForFace(), mFaceRunningState = "

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 149
    .line 150
    invoke-static {p1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final startListeningForFingerprint()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v10, "KeyguardFingerprint"

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    iget v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    add-int/2addr v1, v11

    .line 23
    iput v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 24
    .line 25
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 26
    .line 27
    const-string/jumbo v2, "startListeningForFingerprint"

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v10, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v2, "startListeningForFingerprint() "

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "\n    callers: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    const-string v4, " - "

    .line 54
    .line 55
    invoke-static {v2, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 74
    .line 75
    .line 76
    iput-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 77
    .line 78
    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "android.hardware.fingerprint"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    new-instance v1, Landroid/os/CancellationSignal;

    .line 93
    .line 94
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 98
    .line 99
    new-instance v12, Landroid/hardware/fingerprint/FingerprintManager;

    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    const-string v2, "fingerprint"

    .line 104
    .line 105
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v12, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    const/4 v13, 0x0

    .line 129
    iget-object v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 130
    .line 131
    new-instance v15, Lcom/android/keyguard/SecFpAuthCallback;

    .line 132
    .line 133
    iget v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 134
    .line 135
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 136
    .line 137
    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 138
    .line 139
    const/4 v4, 0x4

    .line 140
    invoke-direct {v3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v15, v1, v2, v3}, Lcom/android/keyguard/SecFpAuthCallback;-><init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    .line 147
    .line 148
    new-instance v2, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 149
    .line 150
    invoke-direct {v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v8}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 158
    .line 159
    .line 160
    move-result-object v17

    .line 161
    const/16 v18, 0x1

    .line 162
    .line 163
    move-object/from16 v16, v1

    .line 164
    .line 165
    invoke-virtual/range {v12 .. v18}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 170
    .line 171
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;

    .line 172
    .line 173
    new-instance v3, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 174
    .line 175
    invoke-direct {v3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v8}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v12, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_2
    const/4 v3, 0x0

    .line 191
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 192
    .line 193
    new-instance v5, Lcom/android/keyguard/SecFpAuthCallback;

    .line 194
    .line 195
    iget v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    .line 196
    .line 197
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11;

    .line 198
    .line 199
    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 200
    .line 201
    const/4 v7, 0x5

    .line 202
    invoke-direct {v6, v0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v5, v1, v2, v6}, Lcom/android/keyguard/SecFpAuthCallback;-><init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 206
    .line 207
    .line 208
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    .line 209
    .line 210
    const/4 v7, -0x1

    .line 211
    const/4 v9, 0x0

    .line 212
    move-object v2, v12

    .line 213
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 214
    .line 215
    .line 216
    :goto_0
    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 217
    .line 218
    .line 219
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    .line 220
    .line 221
    if-eqz v1, :cond_5

    .line 222
    .line 223
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 224
    .line 225
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    .line 233
    .line 234
    const-wide/16 v2, 0x2bc

    .line 235
    .line 236
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    .line 238
    .line 239
    const-string v0, "FP started by the power key. If it receives a response within 700ms, it will skip."

    .line 240
    .line 241
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_3
    const-string/jumbo v0, "startListeningForFingerprint() return - fingerprint service is not supported"

    .line 246
    .line 247
    .line 248
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_4
    const-string v0, "Can\'t start startListeningForFingerprint()"

    .line 253
    .line 254
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :cond_5
    :goto_1
    return-void
.end method

.method public final stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 2
    .line 3
    const-string v1, "KeyguardFace"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Can\'t stop stopListeningForFace(), mFaceRunningState = "

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 21
    .line 22
    invoke-static {p1, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    const-string/jumbo v0, "stopListeningForFace()"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 33
    .line 34
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logStoppedListeningForFace(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 52
    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceReady:Z

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final stopListeningForFingerprint()V
    .locals 2

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string/jumbo v1, "stopListeningForFingerprint()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 3

    .line 1
    const-string v0, "KeyguardUpdateMonitor"

    .line 2
    .line 3
    const-string/jumbo v1, "updateBiometricListeningState()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    .line 14
    .line 15
    const-string v1, "mAuthHandler"

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateBiometricLockTimeout(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptTimeout(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    .line 14
    .line 15
    cmp-long v4, v4, v0

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    .line 20
    .line 21
    cmp-long v4, v4, v2

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const-string/jumbo v4, "updateBiometricLockTimeout() userId "

    .line 29
    .line 30
    .line 31
    const-string v5, ", BD:"

    .line 32
    .line 33
    invoke-static {v4, p1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    .line 38
    .line 39
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "->"

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, ", BT:"

    .line 51
    .line 52
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    .line 56
    .line 57
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    .line 71
    .line 72
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    .line 73
    .line 74
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x1

    .line 78
    return p0
.end method

.method public final updateBiometricsOptionState(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    .line 22
    const/16 v5, 0x100

    .line 23
    .line 24
    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v4, v2, :cond_1

    .line 29
    .line 30
    move v4, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v3

    .line 33
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ne v5, v0, :cond_3

    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ne v5, v1, :cond_3

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eq v5, v4, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    return v3

    .line 59
    :cond_3
    :goto_2
    const-string/jumbo v3, "updateBiometricsOptionState() userId "

    .line 60
    .line 61
    .line 62
    const-string v5, ", BT:"

    .line 63
    .line 64
    invoke-static {v3, p1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, "->"

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, ", FP:"

    .line 86
    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    .line 91
    .line 92
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v6, ", FC:"

    .line 106
    .line 107
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    .line 111
    .line 112
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricType:Landroid/util/SparseIntArray;

    .line 130
    .line 131
    invoke-virtual {v5, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    .line 135
    .line 136
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    .line 140
    .line 141
    invoke-virtual {p0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 142
    .line 143
    .line 144
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return v2
.end method

.method public final updateCarrierLock(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLock(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "updateCarrierLock() userId "

    .line 12
    .line 13
    .line 14
    const-string v2, ", CR:"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    .line 21
    .line 22
    const-string v2, "->"

    .line 23
    .line 24
    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final updateCredentialType(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "updateCredentialType() userId "

    .line 12
    .line 13
    .line 14
    const-string v2, ", credentialType:"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "->"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    .line 38
    .line 39
    const-string v0, ", isSecure="

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final updateDeviceOwnerInfo()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v2, "updateDeviceOwnerInfo() DO(isEmpty):"

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "->"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final updateDualDARInnerLockscreenRequirement(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    .line 2
    .line 3
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 18
    .line 19
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 32
    .line 33
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerAuthRequired(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    move v2, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v2, v4

    .line 44
    :goto_0
    const-string v5, "KeyguardUpdateMonitor"

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 53
    .line 54
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const-string v6, "DualDAR Inner isSecure? "

    .line 65
    .line 66
    invoke-static {v6, v1, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    move v2, v4

    .line 72
    :cond_1
    const-string v1, "Inner lockscreen is required? "

    .line 73
    .line 74
    invoke-static {v1, v2, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-nez v2, :cond_3

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v3, v4

    .line 92
    :goto_1
    if-eqz v3, :cond_4

    .line 93
    .line 94
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public final updateEsimState(II)V
    .locals 3

    .line 1
    if-nez p2, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 24
    .line 25
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    :cond_1
    const-string v1, "KeyguardUpdateMonitor"

    .line 38
    .line 39
    const-string v2, "Update SIM_STATE_UNKNOWN"

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput p2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public final updateFMMLock(IZ)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 16
    .line 17
    const-string v4, "lock_fmm_Message"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 34
    .line 35
    const-string v4, "lock_fmm_phone"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    .line 57
    .line 58
    if-eq v1, v0, :cond_1

    .line 59
    .line 60
    const-string/jumbo v1, "updateFMMLock() userId "

    .line 61
    .line 62
    .line 63
    const-string v2, ", FM:"

    .line 64
    .line 65
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    .line 70
    .line 71
    const-string v2, "->"

    .line 72
    .line 73
    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    .line 78
    .line 79
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_0

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    .line 85
    .line 86
    .line 87
    :cond_0
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :cond_1
    return v2
.end method

.method public final updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v1, 0x150

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFace()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->startListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-nez p1, :cond_3

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final updateFingerprintListeningState(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 2
    .line 3
    const/16 v1, 0x150

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_2

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    if-ne v2, v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v2, v3

    .line 29
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v5, "updateFingerprintListeningState#mFingerprintRunningState="

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, " shouldListenForFingerprint="

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, " isUdfpsEnrolled=false bioType : "

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 56
    .line 57
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getBiometricType(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "KeyguardFingerprint"

    .line 75
    .line 76
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    iget p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 87
    .line 88
    if-ne p1, v3, :cond_9

    .line 89
    .line 90
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    if-nez v2, :cond_8

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    if-ne p1, v3, :cond_6

    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addMaskViewForOpticalFpSensor()V

    .line 125
    .line 126
    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->startListeningForFingerprint()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    if-nez v2, :cond_9

    .line 132
    .line 133
    if-nez v1, :cond_9

    .line 134
    .line 135
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 136
    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_9

    .line 144
    .line 145
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 146
    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_9

    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addMaskViewForOpticalFpSensor()V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 163
    .line 164
    if-eqz p1, :cond_c

    .line 165
    .line 166
    if-nez v1, :cond_a

    .line 167
    .line 168
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 169
    .line 170
    if-eqz p1, :cond_c

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    .line 173
    .line 174
    if-eqz p1, :cond_c

    .line 175
    .line 176
    :cond_a
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 177
    .line 178
    if-eqz p1, :cond_b

    .line 179
    .line 180
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 181
    .line 182
    if-nez p1, :cond_b

    .line 183
    .line 184
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    .line 185
    .line 186
    if-nez p1, :cond_b

    .line 187
    .line 188
    move v0, v3

    .line 189
    :cond_b
    xor-int/lit8 p1, v0, 0x1

    .line 190
    .line 191
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    .line 192
    .line 193
    if-eq v0, p1, :cond_c

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v1, "mFpInDisplayState is changed : "

    .line 202
    .line 203
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    .line 207
    .line 208
    const-string v2, " -> "

    .line 209
    .line 210
    invoke-static {v0, v1, v2, p1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semSetScreenStatus(I)I

    .line 218
    .line 219
    .line 220
    :cond_c
    return-void
.end method

.method public final updateLockscreenDisabled(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "updateLockscreenDisabled() userId "

    .line 12
    .line 13
    .line 14
    const-string v2, ", lockScreenDisabled:"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    .line 21
    .line 22
    const-string v2, "->"

    .line 23
    .line 24
    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final updateOwnerInfo(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    .line 14
    .line 15
    if-ne v2, v0, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const-string/jumbo v2, "updateOwnerInfoEnabled() userId "

    .line 31
    .line 32
    .line 33
    const-string v3, ", OE:"

    .line 34
    .line 35
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    .line 40
    .line 41
    const-string v3, "->"

    .line 42
    .line 43
    const-string v4, ", OI(isEmpty):"

    .line 44
    .line 45
    invoke-static {p1, v2, v3, v0, v4}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public final updatePermanentLock(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedUnlockAttempts(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getMaxFailedUnlockAttempts()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    .line 17
    .line 18
    if-eq v1, v0, :cond_1

    .line 19
    .line 20
    const-string/jumbo v1, "updatePermanentLock() userId "

    .line 21
    .line 22
    .line 23
    const-string v3, ", PML:"

    .line 24
    .line 25
    invoke-static {v1, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    .line 30
    .line 31
    const-string v3, "->"

    .line 32
    .line 33
    invoke-static {p1, v1, v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    return v3
.end method

.method public final updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/internal/widget/RemoteLockInfo;

    .line 19
    .line 20
    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 21
    .line 22
    iget v4, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/internal/widget/RemoteLockInfo;

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v2, -0x1

    .line 47
    iput v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    .line 48
    .line 49
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ge v1, v3, :cond_4

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/internal/widget/RemoteLockInfo;

    .line 64
    .line 65
    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 66
    .line 67
    if-ge v2, v3, :cond_3

    .line 68
    .line 69
    iput v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/internal/widget/RemoteLockInfo;

    .line 78
    .line 79
    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 80
    .line 81
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RemoteLockInfo;->diff(Lcom/android/internal/widget/RemoteLockInfo;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo v1, "updateRemoteLockInfo() diff="

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "KeyguardUpdateMonitor"

    .line 108
    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 115
    .line 116
    const/16 p1, 0x452

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    .line 120
    .line 121
    :cond_5
    return-void
.end method

.method public final updateSIPShownState(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSIPShown:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "updateSIPShownState : "

    .line 6
    .line 7
    .line 8
    const-string v1, "KeyguardUpdateMonitor"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSIPShown:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final updateSecureLockTimeout(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 14
    .line 15
    cmp-long v4, v4, v0

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 21
    .line 22
    cmp-long v4, v6, v2

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return v5

    .line 28
    :cond_1
    :goto_0
    const-string/jumbo v4, "updateSecureLockTimeout() userId "

    .line 29
    .line 30
    .line 31
    const-string v6, ", AD:"

    .line 32
    .line 33
    invoke-static {v4, p1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 38
    .line 39
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "->"

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, ", AT:"

    .line 51
    .line 52
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 56
    .line 57
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    .line 71
    .line 72
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 73
    .line 74
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    .line 83
    .line 84
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    .line 89
    .line 90
    iget-wide v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 91
    .line 92
    const-wide/16 v3, 0x0

    .line 93
    .line 94
    cmp-long v1, v1, v3

    .line 95
    .line 96
    if-lez v1, :cond_2

    .line 97
    .line 98
    move v5, v0

    .line 99
    :cond_2
    check-cast p1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 100
    .line 101
    invoke-virtual {p1, v5}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyKeyguardLockout(Z)V

    .line 102
    .line 103
    .line 104
    iget-wide v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    .line 105
    .line 106
    cmp-long p1, v1, v3

    .line 107
    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 111
    .line 112
    const/16 p1, 0x3eb

    .line 113
    .line 114
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    return v0
.end method

.method public final updateUserUnlockNotification(I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "updateUserUnlockNotification(), isUserUnlocked("

    .line 2
    .line 3
    .line 4
    const-string v1, ") : "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KeyguardUpdateMonitor"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v0, 0x3e9

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const v2, 0x7f130838

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const v3, 0x7f130839

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->createChannels()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/app/Notification$Builder;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const-string v5, "fbe_channel_id"

    .line 69
    .line 70
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const v4, 0x1080a9b

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 98
    .line 99
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 100
    .line 101
    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 106
    .line 107
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 108
    .line 109
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method public final updatedSimPinPassed(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    .line 8
    .line 9
    aput-boolean v0, p0, p1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :goto_0
    const-string/jumbo p0, "updatedSimPinPassed  Slot Boundary Exception SlotNum: "

    .line 13
    .line 14
    .line 15
    const-string v0, "KeyguardUpdateMonitor"

    .line 16
    .line 17
    invoke-static {p0, p1, v0}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
