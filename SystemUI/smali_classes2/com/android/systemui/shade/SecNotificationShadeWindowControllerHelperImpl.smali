.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;


# static fields
.field public static final AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I

.field public static final AWAKE_INTERVAL_DEFAULT_MS_WITH_ACCESSIBILITY:J

.field public static final AWAKE_INTERVAL_DEFAULT_MS_WITH_FACE:J

.field public static final AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I

.field public static final BLUR_AMOUNT:F

.field public static final DEBUG_TAG:Ljava/lang/String;

.field public static final DEFAULT_DISPLAY_TIMEOUT:I

.field public static final MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I


# instance fields
.field public final activityManager:Landroid/app/IActivityManager;

.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public bouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

.field public bouncerContainer:Landroid/view/ViewGroup;

.field public bouncerLp:Landroid/view/WindowManager$LayoutParams;

.field public bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final context:Landroid/content/Context;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

.field public final fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final handler:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

.field public isInitFinished:Z

.field public isKeyguardScreenRotation:Z

.field public isLastExpanded:Z

.field public isWhiteKeyguardWallpaper:Z

.field public final keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public notificationShadeView:Landroid/view/ViewGroup;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final pluginLockListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

.field public final pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final powerManager:Landroid/os/PowerManager;

.field public provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

.field public rotation:I

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public settingsHelperCallback:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;

.field public final visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "KeyguardVisible"

    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 10
    .line 11
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    sput v2, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 18
    .line 19
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 20
    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const v0, 0x3d8f5c29    # 0.07f

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const v0, 0x3e0ccccd    # 0.1375f

    .line 32
    .line 33
    .line 34
    :goto_1
    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->BLUR_AMOUNT:F

    .line 35
    .line 36
    const/16 v0, 0x1388

    .line 37
    .line 38
    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEFAULT_DISPLAY_TIMEOUT:I

    .line 39
    .line 40
    const/16 v0, 0xbb8

    .line 41
    .line 42
    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I

    .line 43
    .line 44
    const-wide/16 v0, 0x1770

    .line 45
    .line 46
    sput-wide v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_FACE:J

    .line 47
    .line 48
    const-wide/16 v0, 0x2710

    .line 49
    .line 50
    sput-wide v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_ACCESSIBILITY:J

    .line 51
    .line 52
    const v0, 0x927c0

    .line 53
    .line 54
    .line 55
    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I

    .line 56
    .line 57
    const/16 v0, 0x65

    .line 58
    .line 59
    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/view/WindowManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/app/IActivityManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/PowerManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/app/IActivityManager;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
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
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->context:Landroid/content/Context;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->powerManager:Landroid/os/PowerManager;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->activityManager:Landroid/app/IActivityManager;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 63
    .line 64
    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->handler:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

    .line 70
    .line 71
    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 77
    .line 78
    return-void
.end method

.method public static final access$setScreenOrientation(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "setScreenOrientation noSensor : "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "NotificationShadeWindowController"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    .line 29
    .line 30
    if-eq v1, p1, :cond_0

    .line 31
    .line 32
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final addBouncer(Landroid/view/ViewGroup;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :goto_0
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/16 v4, 0x7d9

    .line 15
    .line 16
    const v5, -0x7ffffeb8

    .line 17
    .line 18
    .line 19
    const/4 v6, -0x3

    .line 20
    move-object v1, p1

    .line 21
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 27
    .line 28
    const/high16 v1, 0x1000000

    .line 29
    .line 30
    or-int/2addr v0, v1

    .line 31
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 32
    .line 33
    const/16 v0, 0x30

    .line 34
    .line 35
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 36
    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 40
    .line 41
    const-string v0, "Bouncer"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 59
    .line 60
    or-int/lit8 v0, v0, 0x2

    .line 61
    .line 62
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 63
    .line 64
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 65
    .line 66
    const/high16 v1, 0x40000

    .line 67
    .line 68
    or-int/2addr v0, v1

    .line 69
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 70
    .line 71
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    const/high16 v1, 0x20000

    .line 76
    .line 77
    or-int/2addr v0, v1

    .line 78
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    if-ne v1, v2, :cond_2

    .line 88
    .line 89
    iget-wide v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 90
    .line 91
    const-wide/16 v3, 0x2710

    .line 92
    .line 93
    cmp-long v5, v0, v3

    .line 94
    .line 95
    if-gez v5, :cond_3

    .line 96
    .line 97
    move-wide v0, v3

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const-wide/16 v0, -0x1

    .line 100
    .line 101
    :cond_3
    :goto_1
    iput-wide v0, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 102
    .line 103
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    .line 105
    const v1, 0x4000400

    .line 106
    .line 107
    .line 108
    or-int/2addr v0, v1

    .line 109
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    .line 111
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    .line 118
    .line 119
    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 123
    .line 124
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->applyConsumer:Ljava/util/function/Consumer;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final applyBouncer(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v0, v2

    .line 16
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/16 v3, 0x200

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v2, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const-string v0, "background"

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_1
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, -0x1

    .line 48
    const v5, -0x20001

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    if-eqz v0, :cond_f

    .line 53
    .line 54
    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 55
    .line 56
    if-eqz v7, :cond_f

    .line 57
    .line 58
    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    .line 59
    .line 60
    if-nez v7, :cond_f

    .line 61
    .line 62
    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_3
    if-eqz v0, :cond_10

    .line 69
    .line 70
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 79
    .line 80
    if-eqz v7, :cond_5

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const v8, 0x7f06006e

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const v8, 0x7f06006d

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    if-eqz v2, :cond_6

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const v8, 0x7f06006c

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 147
    .line 148
    if-eqz v0, :cond_10

    .line 149
    .line 150
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 151
    .line 152
    and-int/lit8 v7, v7, -0x9

    .line 153
    .line 154
    and-int/lit8 v7, v7, -0x11

    .line 155
    .line 156
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    .line 158
    iget-boolean v8, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 159
    .line 160
    if-eqz v8, :cond_8

    .line 161
    .line 162
    and-int/2addr v5, v7

    .line 163
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    const/high16 v5, 0x20000

    .line 167
    .line 168
    or-int/2addr v5, v7

    .line 169
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    .line 171
    :goto_3
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_BLUR:Z

    .line 172
    .line 173
    if-eqz v5, :cond_a

    .line 174
    .line 175
    iget-object v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_9

    .line 182
    .line 183
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    .line 185
    and-int/lit8 v5, v5, -0x3

    .line 186
    .line 187
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 188
    .line 189
    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncerWindowBlur(FZ)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_9
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    .line 195
    or-int/lit8 v5, v5, 0x2

    .line 196
    .line 197
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 198
    .line 199
    const/high16 v5, 0x3f800000    # 1.0f

    .line 200
    .line 201
    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncerWindowBlur(FZ)V

    .line 202
    .line 203
    .line 204
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_b

    .line 209
    .line 210
    const-wide/16 v5, -0x1

    .line 211
    .line 212
    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 213
    .line 214
    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 218
    .line 219
    if-nez v5, :cond_c

    .line 220
    .line 221
    move-object v5, v3

    .line 222
    :cond_c
    iget-object v5, v5, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpSupplier:Ljava/util/function/Supplier;

    .line 223
    .line 224
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 229
    .line 230
    if-eqz v5, :cond_e

    .line 231
    .line 232
    iget-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 233
    .line 234
    const-wide/16 v8, 0x2710

    .line 235
    .line 236
    cmp-long v10, v6, v8

    .line 237
    .line 238
    if-gez v10, :cond_d

    .line 239
    .line 240
    move-wide v6, v8

    .line 241
    :cond_d
    iput-wide v6, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 242
    .line 243
    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 244
    .line 245
    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 246
    .line 247
    :cond_e
    :goto_5
    iget-boolean v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 248
    .line 249
    if-nez v5, :cond_10

    .line 250
    .line 251
    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 252
    .line 253
    if-eqz v5, :cond_10

    .line 254
    .line 255
    const/4 v5, 0x5

    .line 256
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 260
    .line 261
    if-eqz v0, :cond_10

    .line 262
    .line 263
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 264
    .line 265
    or-int/lit8 v7, v7, 0x8

    .line 266
    .line 267
    and-int/2addr v5, v7

    .line 268
    and-int/lit8 v5, v5, -0x3

    .line 269
    .line 270
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 271
    .line 272
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 273
    .line 274
    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncerWindowBlur(FZ)V

    .line 275
    .line 276
    .line 277
    iget-boolean v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 278
    .line 279
    if-nez v5, :cond_10

    .line 280
    .line 281
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 282
    .line 283
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 284
    .line 285
    if-eqz v0, :cond_13

    .line 286
    .line 287
    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 288
    .line 289
    if-nez v5, :cond_11

    .line 290
    .line 291
    iget-object v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 292
    .line 293
    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 294
    .line 295
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    sget-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 300
    .line 301
    if-ne v5, v6, :cond_12

    .line 302
    .line 303
    :cond_11
    move v1, v4

    .line 304
    :cond_12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 305
    .line 306
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 307
    .line 308
    const/high16 v4, 0x4000000

    .line 309
    .line 310
    and-int/2addr v1, v4

    .line 311
    if-eqz v1, :cond_13

    .line 312
    .line 313
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 314
    .line 315
    or-int/lit16 v1, v1, 0x500

    .line 316
    .line 317
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 318
    .line 319
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 320
    .line 321
    if-eqz v0, :cond_15

    .line 322
    .line 323
    iget-boolean v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 324
    .line 325
    if-eqz v1, :cond_15

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v2, :cond_14

    .line 332
    .line 333
    or-int/lit8 v1, v1, 0x10

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_14
    and-int/lit8 v1, v1, -0x11

    .line 337
    .line 338
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 339
    .line 340
    .line 341
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 342
    .line 343
    if-eqz v0, :cond_19

    .line 344
    .line 345
    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 346
    .line 347
    if-eqz p1, :cond_18

    .line 348
    .line 349
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 350
    .line 351
    if-nez p1, :cond_16

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_16
    move-object v3, p1

    .line 355
    :goto_9
    iget-object p1, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

    .line 356
    .line 357
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    if-nez p1, :cond_18

    .line 362
    .line 363
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    .line 364
    .line 365
    if-eqz p1, :cond_17

    .line 366
    .line 367
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 368
    .line 369
    iget-boolean p1, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    .line 370
    .line 371
    if-nez p1, :cond_18

    .line 372
    .line 373
    :cond_17
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 374
    .line 375
    or-int/lit16 p1, p1, 0x2000

    .line 376
    .line 377
    goto :goto_a

    .line 378
    :cond_18
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 379
    .line 380
    and-int/lit16 p1, p1, -0x2001

    .line 381
    .line 382
    :goto_a
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 383
    .line 384
    :cond_19
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    .line 385
    .line 386
    if-eqz p1, :cond_1b

    .line 387
    .line 388
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_1b

    .line 395
    .line 396
    const/high16 v1, 0x8000000

    .line 397
    .line 398
    if-ne v0, v1, :cond_1a

    .line 399
    .line 400
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 401
    .line 402
    and-int/2addr v1, v2

    .line 403
    if-nez v1, :cond_1a

    .line 404
    .line 405
    goto :goto_b

    .line 406
    :cond_1a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 411
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v3, "Bouncer LP changed!!! = 0x"

    .line 415
    .line 416
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v0, ", h = "

    .line 423
    .line 424
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const-string v1, "NotificationShadeWindowController"

    .line 435
    .line 436
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    .line 440
    .line 441
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 442
    .line 443
    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    .line 445
    .line 446
    :cond_1b
    :goto_b
    return-void
.end method

.method public final applyBouncerWindowBlur(FZ)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz v0, :cond_6

    .line 15
    .line 16
    iget v1, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mFraction:F

    .line 17
    .line 18
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isWhiteKeyguardWallpaper:Z

    .line 25
    .line 26
    if-eq v1, p2, :cond_6

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/blur/BouncerColorCurve;->setFraction(FZ)V

    .line 29
    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isWhiteKeyguardWallpaper:Z

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-eqz p0, :cond_6

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 51
    .line 52
    if-eqz p0, :cond_6

    .line 53
    .line 54
    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-direct {v1, p1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iget p1, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    .line 61
    .line 62
    float-to-int p1, p1

    .line 63
    invoke-virtual {v1, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 64
    .line 65
    .line 66
    iget v2, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mSaturation:F

    .line 67
    .line 68
    iget v3, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    .line 69
    .line 70
    iget v4, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    .line 71
    .line 72
    iget v5, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    .line 73
    .line 74
    iget v6, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    .line 75
    .line 76
    iget v7, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v7}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    return-void

    .line 91
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    const/4 p2, 0x0

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-gtz p1, :cond_5

    .line 101
    .line 102
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 103
    .line 104
    and-int/lit8 p1, p1, -0x41

    .line 105
    .line 106
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 110
    .line 111
    or-int/lit8 p1, p1, 0x40

    .line 112
    .line 113
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 114
    .line 115
    sget p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->BLUR_AMOUNT:F

    .line 116
    .line 117
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 118
    .line 119
    :cond_6
    :goto_1
    return-void
.end method

.method public final getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->currentWindowStateSupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpChangedSupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getUserActivityTimeout()J
    .locals 9

    .line 1
    sget v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEFAULT_DISPLAY_TIMEOUT:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isDynamicLockEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v4, v3

    .line 21
    :goto_0
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-wide v7, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockTimeOutValue:J

    .line 26
    .line 27
    cmp-long v2, v7, v5

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    move-wide v0, v7

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 35
    .line 36
    const-string v4, "accessibility_interactive_ui_timeout_ms"

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    int-to-long v7, v2

    .line 47
    cmp-long v2, v7, v5

    .line 48
    .line 49
    if-lez v2, :cond_2

    .line 50
    .line 51
    move-wide v0, v7

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    :cond_3
    sget p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I

    .line 65
    .line 66
    int-to-long v4, p0

    .line 67
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    .line 76
    .line 77
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    sget p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I

    .line 84
    .line 85
    int-to-long v0, p0

    .line 86
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "getUserActivityTimeout "

    .line 89
    .line 90
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v2, "NotificationShadeWindowController"

    .line 101
    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-wide v0
.end method

.method public final isLockScreenRotationAllowed()Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 30
    .line 31
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v1, v3

    .line 56
    :goto_0
    return v1
.end method

.method public final resetForceInvisible(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "resetForceInvisible "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final setForceInvisible(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "setForceInVisible "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
