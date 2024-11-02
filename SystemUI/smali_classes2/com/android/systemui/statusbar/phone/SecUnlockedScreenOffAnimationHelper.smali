.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final aodShowStateCallback:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;

.field public final aodTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public clearDecidedToAnimateGoingToSleep:Lkotlin/jvm/functions/Function0;

.field public final conditions:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public curRotation:I

.field public deviceInteractive:Z

.field public final displayManager$delegate:Lkotlin/Lazy;

.field public final dozeParameters:Ldagger/Lazy;

.field public isFalseDecidedToAnimateGoingToSleep:Lkotlin/jvm/functions/Function0;

.field public isPanelOpenedOnGoingToSleep:Z

.field public job:Lkotlinx/coroutines/Job;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitorLazy:Ldagger/Lazy;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public lastReason:I

.field public lastShouldPlay:Z

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mainHandler:Landroid/os/Handler;

.field public final maxRefreshRate$delegate:Lkotlin/Lazy;

.field public final moreLog:Z

.field public needUpdateWallpaperVisibility:Z

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final pluginFaceWidgetManagerLazy:Ldagger/Lazy;

.field public final pluginLockMediatorLazy:Ldagger/Lazy;

.field public final pluginLockStarManagerLazy:Ldagger/Lazy;

.field public final reasonLog:Ljava/util/List;

.field public refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public secUnlockedScreenOffCapturedView:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffCapturedView;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public skipAnimationInOthers:Z

.field public final statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

.field public final statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

.field public final token$delegate:Lkotlin/Lazy;

.field public final unlockedScreenOffAnimationController:Ldagger/Lazy;

.field public final updateWallpaperVisibilityRunnable:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wallpaperManager:Landroid/app/WallpaperManager;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/ScreenLifecycle;Ldagger/Lazy;Lcom/android/systemui/aod/AODTouchModeManager;Ldagger/Lazy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Landroid/view/WindowManager;",
            "Landroid/app/WallpaperManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aod/AODTouchModeManager;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->dozeParameters:Ldagger/Lazy;

    move-object/from16 v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->unlockedScreenOffAnimationController:Ldagger/Lazy;

    move-object/from16 v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    move-object/from16 v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->context:Landroid/content/Context;

    move-object/from16 v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-object/from16 v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardUpdateMonitorLazy:Ldagger/Lazy;

    move-object/from16 v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainHandler:Landroid/os/Handler;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginFaceWidgetManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockStarManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockMediatorLazy:Ldagger/Lazy;

    .line 26
    sget-object v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$displayManager$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$displayManager$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->displayManager$delegate:Lkotlin/Lazy;

    .line 27
    sget-object v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->maxRefreshRate$delegate:Lkotlin/Lazy;

    const-string/jumbo v1, "user"

    .line 28
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    sget-boolean v1, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid:Z

    if-nez v1, :cond_1

    .line 30
    sget-boolean v1, Lcom/android/systemui/util/LogUtil;->isDebugLevelHigh:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 31
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->moreLog:Z

    .line 32
    sget-object v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$token$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$token$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->token$delegate:Lkotlin/Lazy;

    const/4 v1, -0x1

    .line 33
    iput v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->curRotation:I

    .line 34
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    .line 35
    new-instance v2, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$2;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$3;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$4;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$5;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$6;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$7;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v10, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$9;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$9;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v11, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$10;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$10;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v12, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$11;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$11;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v13, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$12;

    invoke-direct {v13, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$12;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    filled-new-array/range {p1 .. p12}, [Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->conditions:Ljava/util/List;

    const-string v2, "not AOD fullscreen"

    const-string v3, "not provisioned"

    const-string v4, "canControlUnlockedScreenOff is false"

    const-string v5, "decidedToAnimateGoingToSleep is false"

    const-string v6, "animation is disabled"

    const-string v7, "not SHADE state"

    const-string v8, "not initialized or panel is expanded"

    const-string/jumbo v9, "rotation condition is not matched"

    const-string v10, "cover closed"

    const-string/jumbo v11, "panel is already opened"

    const-string/jumbo v12, "ultra power saving"

    const-string v13, "AOD started by Fold Close"

    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    .line 36
    filled-new-array/range {p1 .. p12}, [Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->reasonLog:Ljava/util/List;

    .line 38
    iput v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    .line 39
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    .line 40
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateWallpaperVisibilityRunnable:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

    .line 41
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodShowStateCallback:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "UnlockedScreenOffAnimation"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAmountChanged(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onUnlockedScreenOffAmountChanged(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 18
    .line 19
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    int-to-float v2, v1

    .line 31
    sub-float/2addr v2, p1

    .line 32
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setDarkAmount(F)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockStarManagerLazy:Ldagger/Lazy;

    .line 40
    .line 41
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 46
    .line 47
    int-to-float v0, v1

    .line 48
    sub-float/2addr v0, p1

    .line 49
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 54
    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->setDarkAmount(Ljava/lang/Float;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :catchall_0
    :goto_1
    return-void
.end method

.method public final playWallpaperAnimation()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$playWallpaperAnimation$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$playWallpaperAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setCapturedViewVisibility(ZLandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setCapturedViewVisibility: visible="

    .line 2
    .line 3
    .line 4
    const-string v1, "UnlockedScreenOffAnimation"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->secUnlockedScreenOffCapturedView:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffCapturedView;

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x4

    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffCapturedView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public final setSkipAnimationInOthers(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "skipAnimationInOthers false"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    .line 14
    .line 15
    return-void
.end method

.method public final shouldPlayUnlockedScreenOffAnimation()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->conditions:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    move v2, v1

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_7

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 38
    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    iget v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->moreLog:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->reasonLog:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string/jumbo v0, "reason: "

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v5, "shouldPlayUnlockedScreenOffAnimation false / "

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 92
    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->setSkipAnimationInOthers(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    .line 113
    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1;

    .line 115
    .line 116
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Lkotlin/coroutines/Continuation;)V

    .line 117
    .line 118
    .line 119
    const/4 v3, 0x2

    .line 120
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 121
    .line 122
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 123
    .line 124
    invoke-static {v4, v5, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    .line 129
    .line 130
    :cond_6
    iput v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    .line 134
    .line 135
    return v0

    .line 136
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    .line 137
    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    const-string/jumbo v0, "shouldPlayUnlockedScreenOffAnimation true"

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    .line 147
    .line 148
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    .line 149
    .line 150
    return v4
.end method

.method public final shouldSkipAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

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

.method public final updateWallpaperVisibility(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    .line 12
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 13
    .line 14
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 17
    .line 18
    const-string/jumbo v3, "updateWallpaperVisibility: wakingUp="

    .line 19
    .line 20
    .line 21
    const-string v4, ", isLiveWallpaper="

    .line 22
    .line 23
    const-string v5, ", keyguardShowing="

    .line 24
    .line 25
    invoke-static {v3, p1, v4, v0, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ", occlude="

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "UnlockedScreenOffAnimation"

    .line 45
    .line 46
    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 56
    .line 57
    xor-int/lit8 v1, p1, 0x1

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$updateWallpaperVisibility$1;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$updateWallpaperVisibility$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Z)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
