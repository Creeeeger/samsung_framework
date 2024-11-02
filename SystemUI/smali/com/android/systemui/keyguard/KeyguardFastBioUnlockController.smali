.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field public static final BOOSTER_HINT:I

.field public static final BOOSTER_TIMEOUT:I

.field public static final Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

.field public static final DEBUG:Z

.field public static final MODE_FLAG_ENABLED:I

.field public static final MODE_FLAG_FRAME_COMMIT:I

.field public static final MODE_FLAG_FRAME_REQUEST:I

.field public static final MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

.field public static final MODE_FLAG_STARTED_DISPLAY_ON:I

.field public static final sFlags:[I

.field public static final sFlagsStr:[Ljava/lang/String;


# instance fields
.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public final bioUnlockBoosterEnabled:Z

.field public biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public final brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public curIsAodBrighterThanNormal:Z

.field public curMode:I

.field public curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

.field public final defaultDisplay:Landroid/view/Display;

.field public delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public goingAwayTime:J

.field public isBrightnessChangedCallbackRegistered:Z

.field public isInvisibleAfterGoingAwayTransStarted:Z

.field public final looperSlowLogControllerLazy:Ldagger/Lazy;

.field public final mainHandler:Landroid/os/Handler;

.field public needsBlankScreen:Z

.field public final pendingRunnableList:Ljava/util/List;

.field public reservedKeyguardGoingAway:Lkotlin/jvm/functions/Function0;

.field public final resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final scrimControllerLazy:Ldagger/Lazy;

.field public scrimUpdater:Ljava/lang/Runnable;

.field public final scrimVisibility:I

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startKeyguardExitAnimationTime:J

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

.field public final updateBrightnessRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

.field public final updateMonitorLazy:Ldagger/Lazy;

.field public final viewMediatorHelperLazy:Ldagger/Lazy;

.field public final visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

.field public final visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public waitStartTime:J

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final windowVisibilityController:Lcom/android/systemui/keyguard/WindowVisibilityController;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    :goto_0
    move v0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v3

    .line 30
    :goto_1
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :cond_2
    move v3, v2

    .line 33
    :cond_3
    sput-boolean v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    .line 34
    .line 35
    const/16 v0, 0x10

    .line 36
    .line 37
    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 38
    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    sput v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    sput v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_ON:I

    .line 45
    .line 46
    sput v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    .line 47
    .line 48
    sput v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    .line 49
    .line 50
    const/16 v5, 0xc1d

    .line 51
    .line 52
    sput v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_HINT:I

    .line 53
    .line 54
    const/16 v5, 0x3e8

    .line 55
    .line 56
    sput v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_TIMEOUT:I

    .line 57
    .line 58
    filled-new-array {v0, v3, v4, v1, v2}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlags:[I

    .line 63
    .line 64
    const-string v0, "F_REQ"

    .line 65
    .line 66
    const-string v1, "F_COMMIT"

    .line 67
    .line 68
    const-string v2, "E"

    .line 69
    .line 70
    const-string v3, "OFF"

    .line 71
    .line 72
    const-string v4, "ON"

    .line 73
    .line 74
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlagsStr:[Ljava/lang/String;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/SurfaceVisibilityController;Lcom/android/systemui/keyguard/WindowVisibilityController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/keyguard/SurfaceVisibilityController;",
            "Lcom/android/systemui/keyguard/WindowVisibilityController;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->context:Landroid/content/Context;

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 13
    .line 14
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 19
    .line 20
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 22
    .line 23
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

    .line 25
    .line 26
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->windowVisibilityController:Lcom/android/systemui/keyguard/WindowVisibilityController;

    .line 28
    .line 29
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 37
    .line 38
    move-object/from16 v1, p13

    .line 39
    .line 40
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 41
    .line 42
    move-object/from16 v1, p14

    .line 43
    .line 44
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateMonitorLazy:Ldagger/Lazy;

    .line 45
    .line 46
    move-object/from16 v1, p15

    .line 47
    .line 48
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    .line 49
    .line 50
    move-object/from16 v1, p16

    .line 51
    .line 52
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->looperSlowLogControllerLazy:Ldagger/Lazy;

    .line 53
    .line 54
    move-object/from16 v1, p17

    .line 55
    .line 56
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 57
    .line 58
    move-object/from16 v1, p18

    .line 59
    .line 60
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->viewMediatorHelperLazy:Ldagger/Lazy;

    .line 61
    .line 62
    move-object/from16 v1, p19

    .line 63
    .line 64
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimControllerLazy:Ldagger/Lazy;

    .line 65
    .line 66
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_BIO_UNLOCK_BOOSTER:Z

    .line 67
    .line 68
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    .line 72
    .line 73
    const/4 v2, -0x1

    .line 74
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimVisibility:I

    .line 75
    .line 76
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    .line 82
    .line 83
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;

    .line 84
    .line 85
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 90
    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    .line 97
    .line 98
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    .line 99
    .line 100
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    .line 104
    .line 105
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    .line 106
    .line 107
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    .line 111
    .line 112
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

    .line 113
    .line 114
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 115
    .line 116
    .line 117
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateBrightnessRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

    .line 118
    .line 119
    move-object v2, p3

    .line 120
    invoke-virtual {p3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->defaultDisplay:Landroid/view/Display;

    .line 125
    .line 126
    return-void
.end method

.method public static synthetic getMode$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isEnabledBioUnlockBooster$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "BioUnlock"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMode()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    and-int/2addr p0, v0

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isFastUnlockMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 2
    .line 3
    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_ON:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    and-int/2addr p0, v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isFastWakeAndUnlockMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 2
    .line 3
    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    and-int/2addr p0, v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final varargs logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    array-length p0, p2

    .line 9
    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p2, Lcom/android/systemui/util/LogUtil;->beginTimes:Ljava/util/Map;

    .line 14
    .line 15
    array-length p2, p0

    .line 16
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/16 p2, 0x2710

    .line 21
    .line 22
    const-string v0, "BioUnlock"

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p2, v1, v0, p1, p0}, Lcom/android/systemui/util/LogUtil;->internalLapTime(ILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final queueIdle()Z
    .locals 0

    .line 1
    const-string p0, "idle state"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final reset()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    .line 26
    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->runPendingRunnable()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v2, v1}, Lcom/android/systemui/keyguard/VisibilityController;->resetForceInvisible(Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$reset$1;

    .line 43
    .line 44
    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$reset$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 45
    .line 46
    .line 47
    const/16 v3, 0x2710

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    new-array v8, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/util/LogUtil;->internalEndTime(IILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->looperSlowLogControllerLazy:Ldagger/Lazy;

    .line 62
    .line 63
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimUpdater:Ljava/lang/Runnable;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimVisibility:I

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 103
    .line 104
    .line 105
    :cond_4
    const-wide/16 v3, 0x0

    .line 106
    .line 107
    iput-wide v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->goingAwayTime:J

    .line 108
    .line 109
    iput-wide v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startKeyguardExitAnimationTime:J

    .line 110
    .line 111
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    .line 112
    .line 113
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 114
    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    .line 116
    .line 117
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 118
    .line 119
    return-void
.end method

.method public final runPendingRunnable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    .line 40
    .line 41
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v0, "runPendingRunnable executed: "

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public final setEnabled()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x2710

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "setEnabled"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->looperSlowLogControllerLazy:Ldagger/Lazy;

    .line 42
    .line 43
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    const-wide/16 v3, 0xa

    .line 51
    .line 52
    const-wide/16 v5, 0x14

    .line 53
    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 56
    .line 57
    const-wide/16 v7, 0x0

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 69
    .line 70
    const/4 v2, 0x3

    .line 71
    const-wide/16 v3, 0x3

    .line 72
    .line 73
    const-wide/16 v5, 0xbb8

    .line 74
    .line 75
    move-object v1, v0

    .line 76
    check-cast v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    .line 84
    .line 85
    const-wide/16 v2, 0x7d0

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 111
    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->context:Landroid/content/Context;

    .line 115
    .line 116
    const-string v1, "KEYGUARD_BIO_UNLOCK"

    .line 117
    .line 118
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_HINT:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_TIMEOUT:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final setForceInvisible(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/keyguard/VisibilityController;->setForceInvisible(Landroid/view/SurfaceControl$Transaction;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$sam$java_lang_Runnable$0;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final setMode(I)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    .line 9
    .line 10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string/jumbo v4, "setMode 0x"

    .line 39
    .line 40
    .line 41
    const-string v5, "("

    .line 42
    .line 43
    const-string v6, ") -> 0x"

    .line 44
    .line 45
    invoke-static {v4, v1, v5, v2, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "("

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ")"

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v3, "setMode 0x"

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " -> 0x"

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    sget-object p1, Lcom/android/systemui/util/LogUtil;->beginTimes:Ljava/util/Map;

    .line 108
    .line 109
    const-wide/16 v1, 0x1000

    .line 110
    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    .line 119
    .line 120
    sget v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    if-ne p1, v3, :cond_3

    .line 124
    .line 125
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "BioUnlock_"

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v1, v2, p0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    if-nez p1, :cond_4

    .line 145
    .line 146
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    const-string p1, "BioUnlock_"

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {v1, v2, p0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v0, "BioUnlock_"

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v1, v2, p1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    .line 184
    .line 185
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    const-string p1, "BioUnlock_"

    .line 190
    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-static {v1, v2, p0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    :goto_1
    return-void

    .line 199
    :catchall_0
    move-exception p1

    .line 200
    monitor-exit p0

    .line 201
    throw p1
.end method

.method public final setWakeAndUnlock(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_ON:I

    .line 18
    .line 19
    :goto_0
    or-int/2addr p1, v0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
