.class public final Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final mBiometricUnlockEventsListeners:Ljava/util/Set;

.field public mBouncer:Z

.field public final mConsecutiveFpFailureThreshold:I

.field public final mContext:Landroid/content/Context;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public mDynamicLockMode:I

.field public mFadedAwayAfterWakeAndUnlock:Z

.field public final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsStartedGoingToSleep:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLastFpFailureUptimeMillis:J

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMode:I

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNumConsecutiveFpFailures:I

.field public mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mSecLockIconViewControllerLazy:Ldagger/Lazy;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field public mWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Lcom/android/keyguard/logging/BiometricUnlockLogger;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/log/SessionTracker;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/os/Handler;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/os/PowerManager;",
            "Lcom/android/keyguard/logging/BiometricUnlockLogger;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/log/SessionTracker;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/WindowManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p9

    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 8
    .line 9
    new-instance v2, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 15
    .line 16
    new-instance v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 22
    .line 23
    new-instance v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 29
    .line 30
    new-instance v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    .line 36
    .line 37
    move-object/from16 v4, p12

    .line 38
    .line 39
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 40
    .line 41
    move-object v4, p7

    .line 42
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    .line 44
    move-object/from16 v4, p14

    .line 45
    .line 46
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 47
    .line 48
    move-object/from16 v4, p20

    .line 49
    .line 50
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 51
    .line 52
    move-object/from16 v4, p15

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v2, p16

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v2, p4

    .line 63
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 64
    .line 65
    move-object v2, p2

    .line 66
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 67
    .line 68
    move-object v2, p3

    .line 69
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 70
    .line 71
    move-object v2, p5

    .line 72
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 73
    .line 74
    move-object v2, p6

    .line 75
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    const v2, 0x7f0b0049

    .line 78
    .line 79
    .line 80
    move-object v3, p8

    .line 81
    invoke-virtual {p8, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mConsecutiveFpFailureThreshold:I

    .line 86
    .line 87
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 88
    .line 89
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 90
    .line 91
    move-object v1, p10

    .line 92
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 93
    .line 94
    move-object/from16 v1, p18

    .line 95
    .line 96
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 97
    .line 98
    move-object/from16 v1, p19

    .line 99
    .line 100
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 101
    .line 102
    move-object/from16 v1, p21

    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 105
    .line 106
    move-object/from16 v1, p22

    .line 107
    .line 108
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 109
    .line 110
    move-object/from16 v1, p13

    .line 111
    .line 112
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 113
    .line 114
    move-object/from16 v1, p23

    .line 115
    .line 116
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 117
    .line 118
    move-object v1, p1

    .line 119
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSecLockIconViewControllerLazy:Ldagger/Lazy;

    .line 120
    .line 121
    move-object/from16 v1, p25

    .line 122
    .line 123
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 124
    .line 125
    move-object/from16 v1, p26

    .line 126
    .line 127
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    .line 128
    .line 129
    move-object/from16 v1, p27

    .line 130
    .line 131
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    move-object/from16 v1, p24

    .line 134
    .line 135
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 136
    .line 137
    const-class v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-object/from16 v2, p11

    .line 147
    .line 148
    invoke-static {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public static isLargeCoverScreen()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public static toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    return v0

    .line 21
    :cond_2
    const/4 p0, 0x0

    .line 22
    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, " BiometricUnlockController:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "   mMode="

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 14
    .line 15
    .line 16
    const-string p2, "   mWakeLock="

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const-string p2, "   mNumConsecutiveFpFailures="

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 42
    .line 43
    .line 44
    const-string p2, "   time since last failure="

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 50
    .line 51
    check-cast p2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    .line 61
    .line 62
    sub-long/2addr v0, v2

    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final finishKeyguardFadingAway()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

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
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 9
    .line 10
    :cond_0
    const-string v0, "BiometricUnlockCtrl"

    .line 11
    .line 12
    const-string v2, "finishKeyguardFadingAway"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 35
    .line 36
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_5

    .line 47
    .line 48
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v3, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    move v3, v1

    .line 69
    :goto_1
    if-nez v3, :cond_5

    .line 70
    .line 71
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 76
    .line 77
    iget v2, v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 78
    .line 79
    const/4 v3, 0x7

    .line 80
    if-ne v2, v3, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v1, v5

    .line 84
    :cond_5
    :goto_2
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;

    .line 85
    .line 86
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final hasPendingAuthentication()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 18
    .line 19
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final isBiometricUnlock()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
.end method

.method public final isUpdatePossible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final isWakeAndUnlock()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :cond_1
    :goto_0
    return v0
.end method

.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 9
    .line 10
    if-ne v0, p1, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p2, "BiometricUnlockController#onBiometricAcquired"

    .line 16
    .line 17
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne p1, p2, :cond_3

    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    const-string p1, "BiometricUnlockCtrl"

    .line 36
    .line 37
    const-string v2, "onBiometricAcquired - show bouncer!! )"

    .line 38
    .line 39
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 43
    .line 44
    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean p0, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    const-string p0, "onBiometricAcquired( fp wakelock: show bouncer and waking up... ) "

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide p0

    .line 60
    const/4 p2, 0x4

    .line 61
    const-string v1, "android.policy:BIOMETRIC"

    .line 62
    .line 63
    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 74
    .line 75
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_6

    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 90
    .line 91
    if-ne p1, v2, :cond_4

    .line 92
    .line 93
    const/4 p1, 0x7

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const/4 p1, 0x2

    .line 96
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 97
    .line 98
    .line 99
    :cond_5
    const-string/jumbo p1, "wake-and-unlock:wakelock"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    .line 108
    const-string p1, "acquiring wake-and-unlock"

    .line 109
    .line 110
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 119
    .line 120
    .line 121
    const-string v3, "biometric acquired, grabbing biometric wakelock"

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 129
    .line 130
    iget-object v0, p1, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 131
    .line 132
    const-string v1, "BiometricUnlockLogger"

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    const/16 v5, 0x8

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-wide/16 p1, 0x3a98

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 146
    .line 147
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v9, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v9, v3

    .line 19
    :goto_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    aget v1, v1, v4

    .line 26
    .line 27
    const/4 v10, 0x2

    .line 28
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 29
    .line 30
    if-eq v1, v3, :cond_4

    .line 31
    .line 32
    if-eq v1, v10, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 42
    .line 43
    sget-object v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 44
    .line 45
    const-string v6, ""

    .line 46
    .line 47
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 66
    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    cmp-long v1, v4, v6

    .line 82
    .line 83
    if-lez v1, :cond_5

    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 86
    .line 87
    sget-object v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 88
    .line 89
    const-string v6, ""

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    invoke-virtual/range {v4 .. v9}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 98
    .line 99
    sget-object v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 100
    .line 101
    const-string v6, ""

    .line 102
    .line 103
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 112
    .line 113
    invoke-virtual/range {v4 .. v9}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_2
    new-instance v0, Landroid/metrics/LogMaker;

    .line 117
    .line 118
    const/16 v1, 0x6a1

    .line 119
    .line 120
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 121
    .line 122
    .line 123
    const/16 v1, 0xb

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 149
    .line 150
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda6;

    .line 155
    .line 156
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 171
    .line 172
    if-ne p1, v1, :cond_7

    .line 173
    .line 174
    const/4 v10, 0x7

    .line 175
    :cond_7
    invoke-virtual {v0, v10}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 176
    .line 177
    .line 178
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 185
    .line 186
    if-nez v0, :cond_a

    .line 187
    .line 188
    iget-boolean v0, v11, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 189
    .line 190
    if-eqz v0, :cond_9

    .line 191
    .line 192
    iget-boolean v0, v11, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 193
    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    :cond_9
    const-string/jumbo v7, "wakeup device on authentication failure (device doesn\'t have a vibrator)"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 203
    .line 204
    iget-object v4, v1, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 205
    .line 206
    const-string v5, "BiometricUnlockLogger"

    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    const/16 v9, 0x8

    .line 210
    .line 211
    const/4 v10, 0x0

    .line 212
    invoke-static/range {v4 .. v10}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_a
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 217
    .line 218
    if-ne p1, v0, :cond_c

    .line 219
    .line 220
    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_c

    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 227
    .line 228
    check-cast p1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    .line 238
    .line 239
    sub-long v6, v4, v6

    .line 240
    .line 241
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mConsecutiveFpFailureThreshold:I

    .line 242
    .line 243
    int-to-long v8, p1

    .line 244
    cmp-long p1, v6, v8

    .line 245
    .line 246
    if-gez p1, :cond_b

    .line 247
    .line 248
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 249
    .line 250
    add-int/2addr p1, v3

    .line 251
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_b
    iput v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 255
    .line 256
    :goto_3
    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    .line 257
    .line 258
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 259
    .line 260
    const/4 v0, 0x3

    .line 261
    if-lt p1, v0, :cond_c

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logUdfpsAttemptThresholdMet(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 267
    .line 268
    .line 269
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 270
    .line 271
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_BOUNCER_SHOWN:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 272
    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 280
    .line 281
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 282
    .line 283
    .line 284
    iput v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 285
    .line 286
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "BiometricUnlockController#onBiometricUnlocked"

    .line 10
    .line 11
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    .line 16
    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 19
    .line 20
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v8, v9

    .line 32
    :goto_0
    invoke-virtual {v7, v1, v2, v8}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->deferringAuthenticationDueToSleep(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 36
    .line 37
    invoke-direct {v4, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;-><init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 38
    .line 39
    .line 40
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 41
    .line 42
    iget-object v0, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 48
    .line 49
    if-ne v2, v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 59
    .line 60
    new-instance v1, Landroid/metrics/LogMaker;

    .line 61
    .line 62
    const/16 v5, 0x6a1

    .line 63
    .line 64
    invoke-direct {v1, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const/16 v5, 0xa

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {v1, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 82
    .line 83
    invoke-virtual {v5, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 93
    .line 94
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;

    .line 99
    .line 100
    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 104
    .line 105
    .line 106
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 107
    .line 108
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 109
    .line 110
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 111
    .line 112
    const-string v10, "BiometricUnlockCtrl"

    .line 113
    .line 114
    if-ne v2, v1, :cond_4

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    .line 124
    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    const-string v1, "onBiometricAuthenticated : Lock stay is enabled."

    .line 134
    .line 135
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-object v1, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v6, v6, Lcom/android/systemui/keyguard/ViewMediatorProvider;->playSound:Lkotlin/jvm/functions/Function1;

    .line 145
    .line 146
    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockStaySoundId:I

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 156
    .line 157
    invoke-interface {v4, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 161
    .line 162
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 163
    .line 164
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 165
    .line 166
    if-nez v6, :cond_6

    .line 167
    .line 168
    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_5

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    move v5, v9

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    :goto_2
    move v5, v8

    .line 178
    :goto_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 179
    .line 180
    if-eqz v5, :cond_f

    .line 181
    .line 182
    const-string v5, "onBiometricAuthenticated"

    .line 183
    .line 184
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 188
    .line 189
    .line 190
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 191
    .line 192
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 193
    .line 194
    .line 195
    iput-object v2, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 196
    .line 197
    sget-object v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 198
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    aget v5, v5, v7

    .line 204
    .line 205
    const-string v7, "1032"

    .line 206
    .line 207
    if-eq v5, v8, :cond_9

    .line 208
    .line 209
    const/4 v1, 0x2

    .line 210
    if-eq v5, v1, :cond_7

    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 215
    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    iget-boolean v4, v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 219
    .line 220
    if-eqz v4, :cond_8

    .line 221
    .line 222
    invoke-virtual {v1, v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    .line 223
    .line 224
    .line 225
    :cond_8
    const-string v1, "3"

    .line 226
    .line 227
    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :cond_9
    const-class v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 236
    .line 237
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 242
    .line 243
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_b

    .line 250
    .line 251
    const-string/jumbo v1, "the fingerprint is authenticated."

    .line 252
    .line 253
    .line 254
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 258
    .line 259
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_a

    .line 264
    .line 265
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 266
    .line 267
    invoke-interface {v1, v9}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 272
    .line 273
    invoke-interface {v1, v8}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    .line 274
    .line 275
    .line 276
    :goto_4
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 277
    .line 278
    if-nez v1, :cond_e

    .line 279
    .line 280
    const-string v1, "fp wakelock: Authenticated, waking up..."

    .line 281
    .line 282
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 290
    .line 291
    const/4 v6, 0x4

    .line 292
    const-string v7, "android.policy:BIOMETRIC"

    .line 293
    .line 294
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_b
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 299
    .line 300
    const-string v10, "2"

    .line 301
    .line 302
    if-nez v5, :cond_d

    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_d

    .line 309
    .line 310
    invoke-virtual {v4, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_d

    .line 315
    .line 316
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 317
    .line 318
    if-nez v5, :cond_c

    .line 319
    .line 320
    iget v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 321
    .line 322
    if-ne v5, v8, :cond_d

    .line 323
    .line 324
    :cond_c
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 325
    .line 326
    sget-object v12, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 327
    .line 328
    const-string v13, ""

    .line 329
    .line 330
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 339
    .line 340
    const/16 v16, 0x1

    .line 341
    .line 342
    invoke-virtual/range {v11 .. v16}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 343
    .line 344
    .line 345
    const-string v1, "1033"

    .line 346
    .line 347
    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_d
    invoke-virtual {v0, v7, v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :goto_5
    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 355
    .line 356
    .line 357
    :goto_6
    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;

    .line 358
    .line 359
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 360
    .line 361
    .line 362
    iget-object v4, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 363
    .line 364
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    .line 365
    .line 366
    const-string v6, "PowerManager#userActivity"

    .line 367
    .line 368
    invoke-direct {v5, v1, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 372
    .line 373
    .line 374
    move v8, v9

    .line 375
    :cond_e
    :goto_7
    if-nez v8, :cond_10

    .line 376
    .line 377
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_f
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    .line 382
    .line 383
    .line 384
    const-string v3, "onBiometricUnlocked aborted by bypass controller"

    .line 385
    .line 386
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 390
    .line 391
    iget-object v0, v7, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 392
    .line 393
    const-string v1, "BiometricUnlockLogger"

    .line 394
    .line 395
    const/4 v4, 0x0

    .line 396
    const/16 v5, 0x8

    .line 397
    .line 398
    const/4 v6, 0x0

    .line 399
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_10
    :goto_8
    return-void
.end method

.method public final onBiometricDetected()V
    .locals 1

    .line 1
    const-string v0, "BiometricUnlockController#onBiometricDetected"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x3

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p1, v0, :cond_4

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isShortcutLaunchInProgress()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 36
    .line 37
    sget-object v4, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 38
    .line 39
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 48
    .line 49
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v5, p2

    .line 53
    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const/4 v0, 0x5

    .line 68
    if-eq p1, v0, :cond_4

    .line 69
    .line 70
    const/16 v0, 0xa

    .line 71
    .line 72
    if-eq p1, v0, :cond_4

    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 75
    .line 76
    sget-object v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 77
    .line 78
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 87
    .line 88
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 89
    .line 90
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 91
    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 95
    .line 96
    if-ne v0, v3, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/4 v3, 0x0

    .line 100
    :cond_3
    :goto_0
    move v9, v3

    .line 101
    move-object v6, p2

    .line 102
    invoke-virtual/range {v4 .. v9}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    new-instance p2, Landroid/metrics/LogMaker;

    .line 106
    .line 107
    const/16 v0, 0x6a1

    .line 108
    .line 109
    invoke-direct {p2, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const/16 v0, 0xf

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const/16 v0, 0x6cd

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    .line 142
    .line 143
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 148
    .line 149
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;

    .line 154
    .line 155
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 21
    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    if-eq p1, p3, :cond_8

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-eq p1, v2, :cond_7

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq p1, v2, :cond_6

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    if-eq p1, v2, :cond_5

    .line 36
    .line 37
    const/16 v2, 0x3e9

    .line 38
    .line 39
    if-eq p1, v2, :cond_4

    .line 40
    .line 41
    const/16 v2, 0x3eb

    .line 42
    .line 43
    if-eq p1, v2, :cond_3

    .line 44
    .line 45
    const/16 v2, 0x3ec

    .line 46
    .line 47
    if-eq p1, v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const p2, 0x7f130848

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const p2, 0x7f130844

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const p2, 0x7f130847

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const p2, 0x7f130846

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const p2, 0x7f130842

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    goto :goto_0

    .line 90
    :cond_7
    const p2, 0x7f130843

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    goto :goto_0

    .line 98
    :cond_8
    const p2, 0x7f130845

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :goto_0
    move-object v3, p2

    .line 106
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 107
    .line 108
    if-nez p2, :cond_b

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_b

    .line 115
    .line 116
    const/4 p2, -0x1

    .line 117
    if-eq p1, p2, :cond_b

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 120
    .line 121
    sget-object v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationHelp:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 124
    .line 125
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 134
    .line 135
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 136
    .line 137
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 138
    .line 139
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 140
    .line 141
    if-nez p1, :cond_a

    .line 142
    .line 143
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 144
    .line 145
    if-ne p0, p3, :cond_9

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    move v6, v0

    .line 149
    goto :goto_2

    .line 150
    :cond_a
    :goto_1
    move v6, p3

    .line 151
    :goto_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    .line 152
    .line 153
    .line 154
    :cond_b
    return-void
.end method

.method public final onDlsViewModeChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda7;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x5dc

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRefreshBatteryInfo()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mIsStartedGoingToSleep:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mIsStartedGoingToSleep:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final releaseBiometricWakeLock()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v5, "releasing biometric wakelock"

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    .line 24
    const-string v3, "BiometricUnlockLogger"

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/16 v7, 0x8

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final resetMode()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 8
    .line 9
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 12
    .line 13
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v0, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 24
    .line 25
    check-cast v1, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onResetMode()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    .line 52
    .line 53
    return-void
.end method

.method public final sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "102"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "101"

    .line 9
    .line 10
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "_S"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final startWakeAndUnlock(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "startWakeAndUnlock(%d)"

    .line 2
    invoke-static {v3, v2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricUnlockCtrl"

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 4
    iput v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 5
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v5, :cond_1

    .line 6
    move-object v7, v4

    check-cast v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 7
    iget-object v8, v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 8
    iget-boolean v9, v8, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    if-ne v9, v6, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v6, v8, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 10
    invoke-virtual {v7, v8}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 11
    :cond_1
    :goto_0
    new-instance v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v3, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZI)V

    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x6

    if-eqz v3, :cond_e

    .line 13
    iget v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 14
    iget-object v11, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    .line 15
    invoke-interface {v11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    move-result v11

    .line 16
    iget-object v12, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v12}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    move-result v12

    .line 17
    iget-object v13, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v13}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v13

    .line 18
    iget-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v14, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 19
    iget-boolean v14, v14, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v14, :cond_2

    const-string v14, "leaveOpenOnKeyguardHide true"

    .line 20
    invoke-static {v14}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 21
    :cond_2
    iget-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v14}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v14, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    iget-object v14, v14, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 23
    check-cast v14, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v14}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "BioUnlock"

    const-string v15, "canBeCollapsed false"

    .line 24
    invoke-static {v14, v15}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz v11, :cond_a

    if-nez v12, :cond_a

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_5

    goto :goto_2

    :cond_4
    if-nez v13, :cond_a

    .line 25
    invoke-virtual {v1, v8}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(Z)V

    .line 26
    iget-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

    iput-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    .line 27
    iput-boolean v6, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    goto :goto_2

    .line 28
    :cond_5
    sget-object v14, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(Z)V

    .line 30
    iget-boolean v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    if-eqz v14, :cond_7

    .line 31
    sget-boolean v15, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v15, :cond_6

    iget-object v15, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v15}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v15

    if-eqz v15, :cond_6

    iget-object v15, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v15}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v15

    if-eqz v15, :cond_6

    move v15, v6

    goto :goto_1

    :cond_6
    move v15, v8

    :goto_1
    if-eqz v15, :cond_8

    .line 32
    :cond_7
    iget-object v15, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 33
    iget v15, v15, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-nez v15, :cond_9

    .line 34
    :cond_8
    iget-object v15, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->windowVisibilityController:Lcom/android/systemui/keyguard/WindowVisibilityController;

    iput-object v15, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v14, :cond_a

    .line 35
    iput-boolean v6, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    goto :goto_2

    .line 36
    :cond_9
    iget-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

    iput-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    .line 37
    iput-boolean v6, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 38
    :cond_a
    :goto_2
    iget-object v14, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v14, :cond_b

    .line 39
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "current controller: "

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 40
    :cond_b
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v14

    if-nez v14, :cond_c

    .line 41
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v15

    if-nez v15, :cond_c

    const-string v14, "not supported mode="

    const-string v15, ", animation="

    const-string v9, ", showing="

    .line 42
    invoke-static {v14, v3, v15, v13, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", occluded="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    goto :goto_4

    .line 46
    :cond_c
    iget-boolean v3, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz v14, :cond_d

    .line 47
    iget-boolean v9, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v9, :cond_d

    move v9, v6

    goto :goto_3

    :cond_d
    move v9, v8

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "waitGoingAwayTrans="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " needsBlank="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ssd=false"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 49
    :goto_4
    iget-boolean v3, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "unregisterBrightnessListener"

    .line 50
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 51
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget-object v9, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    check-cast v3, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {v3, v9}, Lcom/android/systemui/settings/DisplayTrackerImpl;->removeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;)V

    .line 52
    iput-boolean v8, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    .line 53
    :cond_e
    iget v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne v3, v10, :cond_f

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 54
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v6

    goto :goto_5

    :cond_f
    move v3, v8

    .line 55
    :goto_5
    iget v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v9, :cond_10

    if-nez v3, :cond_10

    .line 56
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;->run()V

    .line 57
    :cond_10
    iget v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq v7, v6, :cond_16

    if-eq v7, v5, :cond_16

    const/4 v9, 0x3

    if-eq v7, v9, :cond_15

    const/4 v9, 0x5

    if-eq v7, v9, :cond_12

    if-eq v7, v10, :cond_16

    const/4 v2, 0x7

    if-eq v7, v2, :cond_11

    goto/16 :goto_7

    :cond_11
    const-string v2, "MODE_DISMISS_BOUNCER"

    .line 58
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2, v8}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    :cond_12
    const-string v3, "MODE_UNLOCK_COLLAPSING"

    .line 61
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v2, v3, :cond_13

    .line 63
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 64
    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 65
    :cond_13
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2, v8}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 66
    :cond_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :cond_15
    const-string v2, "MODE_SHOW_BOUNCER"

    .line 67
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2, v6}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    .line 69
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :cond_16
    if-ne v7, v5, :cond_17

    const-string v2, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 70
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 71
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v2, v8, v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    goto :goto_6

    :cond_17
    if-ne v7, v6, :cond_18

    const-string v2, "MODE_WAKE_AND_UNLOCK"

    .line 72
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    const-string v2, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 73
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 74
    :goto_6
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 75
    iget-boolean v2, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-nez v2, :cond_19

    .line 76
    iget-boolean v2, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-nez v2, :cond_19

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setForceInvisible(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 78
    :cond_19
    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v4, v8}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setNotificationShadeFocusable(Z)V

    .line 79
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 80
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    :goto_7
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 82
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 83
    new-instance v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    .line 84
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    .line 85
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 87
    :cond_1a
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 88
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    .line 89
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onModeChanged(I)V

    goto :goto_8

    :cond_1b
    :goto_9
    const-string/jumbo v0, "startWakeAndUnlock end"

    new-array v2, v8, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    .line 98
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    const/4 v10, 0x1

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eq v1, v2, :cond_9

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 99
    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v11

    .line 100
    iget-boolean v12, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 101
    move-object v13, v7

    check-cast v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 102
    iget-boolean v14, v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 103
    iget-boolean v15, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v11, :cond_1

    .line 104
    invoke-virtual {v4, v12, v14, v15}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForFingerprintUnlockingAllowed(ZZZ)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 106
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    .line 108
    iget-object v1, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 109
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 110
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v4

    .line 111
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    move/from16 v3, p2

    move v5, v12

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForFingerprintUnlockingNotAllowed(IZZZZ)V

    :goto_0
    if-nez v12, :cond_5

    if-nez v14, :cond_2

    .line 112
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_6

    .line 114
    :cond_2
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v1, :cond_3

    move v9, v10

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    if-eqz v11, :cond_4

    goto/16 :goto_8

    :cond_4
    if-nez v11, :cond_d

    .line 115
    iget-boolean v1, v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v1, :cond_19

    goto/16 :goto_6

    :cond_5
    if-eqz v11, :cond_6

    if-eqz v15, :cond_6

    goto/16 :goto_9

    :cond_6
    if-eqz v14, :cond_1a

    .line 116
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->primaryBouncerIsOrWillBeShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v11, :cond_7

    goto/16 :goto_a

    :cond_7
    if-eqz v11, :cond_8

    goto/16 :goto_b

    .line 117
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_c

    .line 118
    :cond_9
    :goto_2
    iget-boolean v11, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 119
    move-object v12, v7

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 120
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 121
    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v14

    .line 122
    iget-boolean v15, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 123
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    .line 124
    :cond_a
    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_3
    move v6, v10

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-eqz v14, :cond_c

    .line 125
    invoke-virtual {v4, v11, v13, v15, v6}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForPassiveAuthUnlockingAllowed(ZZZZ)V

    move/from16 v16, v6

    move-object v9, v7

    goto :goto_5

    .line 126
    :cond_c
    iget-object v1, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 127
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 128
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    .line 129
    iget-object v1, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 130
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 131
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v4

    .line 132
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    move/from16 v3, p2

    move v5, v11

    move/from16 v16, v6

    move v6, v13

    move-object v9, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForPassiveAuthUnlockingNotAllowed(IZZZZZ)V

    :goto_5
    if-nez v11, :cond_12

    if-nez v13, :cond_e

    if-eqz v16, :cond_13

    :cond_d
    :goto_6
    move v9, v10

    goto :goto_d

    :cond_e
    if-nez v14, :cond_f

    if-eqz v16, :cond_1a

    goto :goto_c

    .line 133
    :cond_f
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v1, :cond_10

    move v9, v10

    goto :goto_7

    :cond_10
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_11

    if-eqz v16, :cond_13

    goto :goto_8

    :cond_11
    if-eqz v16, :cond_13

    :goto_8
    const/4 v9, 0x2

    goto :goto_d

    :cond_12
    if-eqz v14, :cond_14

    if-eqz v15, :cond_14

    if-nez v11, :cond_14

    if-eqz v16, :cond_13

    :goto_9
    const/4 v9, 0x6

    goto :goto_d

    :cond_13
    const/4 v9, 0x4

    goto :goto_d

    :cond_14
    if-eqz v14, :cond_15

    .line 134
    iget-boolean v1, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v1, :cond_15

    goto :goto_b

    :cond_15
    if-eqz v13, :cond_1a

    .line 135
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->primaryBouncerIsOrWillBeShowing()Z

    move-result v1

    if-nez v1, :cond_16

    .line 136
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->altBouncerShowing:Z

    if-eqz v1, :cond_17

    :cond_16
    if-eqz v14, :cond_17

    :goto_a
    const/4 v9, 0x7

    goto :goto_d

    :cond_17
    if-eqz v14, :cond_18

    :goto_b
    const/4 v9, 0x5

    goto :goto_d

    :cond_18
    if-eqz v16, :cond_1a

    :cond_19
    :goto_c
    const/4 v9, 0x3

    goto :goto_d

    :cond_1a
    const/4 v9, 0x0

    .line 137
    :goto_d
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public final updateBackgroundAuthToast(Z)V
    .locals 8

    .line 1
    const-string/jumbo v0, "update biometric toast = "

    .line 2
    .line 3
    .line 4
    const-string v1, "BiometricUnlockCtrl"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    const/4 v3, -0x2

    .line 16
    const/4 v4, -0x2

    .line 17
    const/16 v5, 0x8b4

    .line 18
    .line 19
    const v6, 0x1000318

    .line 20
    .line 21
    .line 22
    const/4 v7, -0x3

    .line 23
    move-object v2, v0

    .line 24
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    const/16 v2, 0x31

    .line 30
    .line 31
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 32
    .line 33
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 34
    .line 35
    or-int/lit8 v2, v2, 0x10

    .line 36
    .line 37
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 38
    .line 39
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 40
    .line 41
    const/high16 v3, 0x20000

    .line 42
    .line 43
    or-int/2addr v2, v3

    .line 44
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 45
    .line 46
    const-string v2, "KeyguardBiometricToastView"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 54
    .line 55
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const-string p0, "Already unlocked by biometric"

    .line 66
    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-boolean v3, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    const-string p0, "Biometric toast already showing"

    .line 83
    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 92
    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    const v1, 0x7f0d012f

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 105
    .line 106
    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 114
    .line 115
    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 120
    .line 121
    if-eqz p0, :cond_5

    .line 122
    .line 123
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_0
    return-void
.end method

.method public final updateBackgroundAuthToastForBiometrics()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mIsStartedGoingToSleep:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 40
    .line 41
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(Z)V

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    return-void
.end method

.method public final vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/16 p1, 0x72

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x5

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 23
    .line 24
    .line 25
    :goto_1
    return-void
.end method
