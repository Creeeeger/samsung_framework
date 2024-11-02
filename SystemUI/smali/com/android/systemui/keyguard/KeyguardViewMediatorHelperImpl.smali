.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;


# instance fields
.field public final CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

.field public final HIDE$delegate:Lkotlin/Lazy;

.field public final KEYGUARD_DONE$delegate:Lkotlin/Lazy;

.field public final KEYGUARD_DONE_DRAWING$delegate:Lkotlin/Lazy;

.field public final KEYGUARD_DONE_PENDING_TIMEOUT$delegate:Lkotlin/Lazy;

.field public final NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

.field public final NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

.field public final RESET$delegate:Lkotlin/Lazy;

.field public final SET_OCCLUDED$delegate:Lkotlin/Lazy;

.field public final SHOW$delegate:Lkotlin/Lazy;

.field public final START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

.field public final SYSTEM_READY$delegate:Lkotlin/Lazy;

.field public final activityManager:Landroid/app/ActivityManager;

.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final aodShowStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;

.field public final audioManager:Landroid/media/AudioManager;

.field public barService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public final bootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

.field public final carrierLock:Ljava/lang/Object;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final commonNotifCollectionLazy:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public curIsOccluded:Z

.field public curMaxRefresRate:I

.field public final delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

.field public final desktopManager:Lcom/android/systemui/util/DesktopManager;

.field public disableFlags:I

.field public disableRemoteUnlockAnimation:Z

.field public final disabledOccluedeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$disabledOccluedeAnimationRunner$1;

.field public final dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public final displayManager$delegate:Lkotlin/Lazy;

.field public doKeyguardPendingIntent:Landroid/app/PendingIntent;

.field public drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field public dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public final editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public exitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

.field public extraUserPresentIntent:Landroid/content/Intent;

.field public final fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public firstKeyguardShown:Z

.field public final fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

.field public final fmmLock:Ljava/lang/Object;

.field public final foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

.field public goingAwayWithAnimation:Z

.field public handleMsgLogKey:I

.field public final handler$delegate:Lkotlin/Lazy;

.field public hidingByDisabled:Z

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public isAODShowStateCbRegistered:Z

.field public final keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field public final keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final knoxStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public lastGoingAwayFlags:I

.field public lastOccludedApp:Landroid/content/ComponentName;

.field public lastShowingTime:J

.field public lastSleepReason:I

.field public lastWakeReason:I

.field public final localReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

.field public final lock$delegate:Lkotlin/Lazy;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public lockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public lockSoundStreamId:I

.field public lockSounds:Landroid/media/SoundPool;

.field public lockStaySoundId:I

.field public final looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final mainMaxRefreshRate$delegate:Lkotlin/Lazy;

.field public final notificationShadeWindowControllerLazy:Ldagger/Lazy;

.field public final notificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public final occludedSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final pickupController:Lcom/android/systemui/sensor/PickupController;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final pm:Landroid/os/PowerManager;

.field public pogoPlugged:I

.field public final refreshRateToken$delegate:Lkotlin/Lazy;

.field public refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final remoteLockMonitorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

.field public screenTuringOnTime:J

.field public final scrimControllerLazy:Ldagger/Lazy;

.field public final setLockScreenShownRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

.field public showingOptions:Landroid/os/Bundle;

.field public final stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final subMaxRefreshRate$delegate:Lkotlin/Lazy;

.field public final subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final surfaceControllerLazy:Ldagger/Lazy;

.field public switchingUserId:I

.field public final sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

.field public final sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final token:Landroid/os/IBinder;

.field public final uiBgExecutor:Ljava/util/concurrent/Executor;

.field public uiSoundsStreamType:I

.field public final unlockAnimationControllerLazy:Ldagger/Lazy;

.field public final unlockAnimationExecutor:Ljava/util/concurrent/Executor;

.field public unlockSoundId:I

.field public final unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final unlockedScreenOffAnimationHelper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

.field public final unoccluedAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

.field public final updateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final viewControllerLazy:Ldagger/Lazy;

.field public final viewMediatorLazy:Ldagger/Lazy;

.field public viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

.field public final visibilityListener:Lkotlin/reflect/KFunction;

.field public final wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Lcom/android/systemui/settings/UserTracker;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/PowerManager;Ldagger/Lazy;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Landroid/media/AudioManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/util/CarLifeManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/sensor/PickupController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Landroid/os/PowerManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Landroid/media/AudioManager;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/BootAnimationFinishedTrigger;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;",
            "Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            "Lcom/android/systemui/util/CarLifeManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p22

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p5

    .line 6
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->centralSurfacesLazy:Ldagger/Lazy;

    move-object v2, p6

    .line 7
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    move-object v2, p7

    .line 8
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notificationShadeWindowControllerLazy:Ldagger/Lazy;

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    move-object v2, p9

    .line 10
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    move-object v2, p10

    .line 11
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->scrimControllerLazy:Ldagger/Lazy;

    move-object v2, p11

    .line 12
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p12

    .line 13
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p13

    .line 14
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v2, p14

    .line 15
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v2, p16

    .line 17
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p17

    .line 18
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v2, p18

    .line 19
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    move-object/from16 v2, p19

    .line 20
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p20

    .line 21
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->activityManager:Landroid/app/ActivityManager;

    move-object/from16 v2, p21

    .line 22
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 23
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    move-object/from16 v2, p23

    .line 24
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pickupController:Lcom/android/systemui/sensor/PickupController;

    move-object/from16 v2, p24

    .line 25
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v2, p25

    .line 26
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p26

    .line 27
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v2, p27

    .line 28
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v2, p28

    .line 29
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v2, p29

    .line 30
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationHelper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    move-object/from16 v2, p30

    .line 31
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object/from16 v2, p31

    .line 32
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    move-object/from16 v2, p32

    .line 33
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v2, p33

    .line 34
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v2, p34

    .line 35
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    move-object/from16 v2, p35

    .line 36
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object/from16 v2, p37

    .line 37
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v2, p39

    .line 38
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->bootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    move-object/from16 v2, p40

    .line 39
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object/from16 v2, p41

    .line 40
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    move-object/from16 v2, p42

    .line 41
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    move-object/from16 v2, p43

    .line 42
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    move-object/from16 v2, p44

    .line 43
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-object/from16 v2, p45

    .line 44
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->commonNotifCollectionLazy:Ldagger/Lazy;

    move-object/from16 v2, p46

    .line 45
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-object/from16 v2, p47

    .line 46
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 47
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SHOW$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SHOW$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SHOW$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$HIDE$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$HIDE$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->HIDE$delegate:Lkotlin/Lazy;

    .line 49
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$RESET$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$RESET$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->RESET$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$VERIFY_UNLOCK$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$VERIFY_UNLOCK$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_FINISHED_GOING_TO_SLEEP$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_FINISHED_GOING_TO_SLEEP$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_DRAWING$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_DRAWING$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_DRAWING$delegate:Lkotlin/Lazy;

    .line 54
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SET_OCCLUDED$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_TIMEOUT$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_TIMEOUT$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$DISMISS$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$DISMISS$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$START_KEYGUARD_EXIT_ANIM$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$START_KEYGUARD_EXIT_ANIM$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_PENDING_TIMEOUT$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_PENDING_TIMEOUT$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_PENDING_TIMEOUT$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_WAKING_UP$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_WAKING_UP$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

    .line 60
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_GOING_TO_SLEEP$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_GOING_TO_SLEEP$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

    .line 61
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SYSTEM_READY$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SYSTEM_READY$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SYSTEM_READY$delegate:Lkotlin/Lazy;

    .line 62
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$CANCEL_KEYGUARD_EXIT_ANIM$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$CANCEL_KEYGUARD_EXIT_ANIM$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 63
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setLockScreenShownRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

    .line 64
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->occludedSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handler$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handler$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handler$delegate:Lkotlin/Lazy;

    .line 66
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$lock$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$lock$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    .line 67
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$shadeWindowControllerHelper$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$shadeWindowControllerHelper$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    const/4 v2, -0x1

    .line 68
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    .line 69
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    .line 70
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->token:Landroid/os/IBinder;

    .line 71
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$displayManager$2;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$displayManager$2;

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->displayManager$delegate:Lkotlin/Lazy;

    .line 72
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateToken$delegate:Lkotlin/Lazy;

    .line 73
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$mainMaxRefreshRate$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$mainMaxRefreshRate$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->mainMaxRefreshRate$delegate:Lkotlin/Lazy;

    .line 74
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$subMaxRefreshRate$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$subMaxRefreshRate$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subMaxRefreshRate$delegate:Lkotlin/Lazy;

    const/4 v3, 0x1

    .line 75
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    .line 76
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    .line 77
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    .line 78
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodShowStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;

    .line 79
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->firstKeyguardShown:Z

    .line 80
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$visibilityListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$visibilityListener$1;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->visibilityListener:Lkotlin/reflect/KFunction;

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fmmLock:Ljava/lang/Object;

    .line 82
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->carrierLock:Ljava/lang/Object;

    .line 83
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->remoteLockMonitorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

    .line 84
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->localReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

    .line 85
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    .line 86
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 87
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

    .line 88
    sput-object p36, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 89
    sput-object p38, Lcom/android/systemui/keyguard/SecurityDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 90
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 91
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$disabledOccluedeAnimationRunner$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$disabledOccluedeAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disabledOccluedeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$disabledOccluedeAnimationRunner$1;

    .line 92
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unoccluedAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

    return-void
.end method

.method public static final access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

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
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->keyguardDone(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/16 v0, 0x44d

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of p1, p1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-wide/16 v1, 0x64

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "KeyguardViewMediator"

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelLockWhenCoverIsOpened(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "cancelLockWhenCoverIsOpened "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->alarmManager:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/app/AlarmManager;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->increaseDelayedShowingSeq:Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLocked:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final enableLooperLogController(IJ)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/util/LogUtil;->isDebugLevelHigh:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-wide/16 v3, 0xa

    .line 10
    .line 11
    const-wide/16 v5, 0x14

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    check-cast v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    move v2, p1

    .line 21
    move-wide v7, p2

    .line 22
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSET_OCCLUDED()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SET_OCCLUDED$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getSHOW()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SHOW$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final hasOccludedMsg$1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final hasShowMsg()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isFastWakeAndUnlockMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isKeyguardDisabled(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    move v4, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x2

    .line 50
    if-ne v4, v5, :cond_2

    .line 51
    .line 52
    move v4, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v4, v3

    .line 55
    :goto_0
    if-eqz v4, :cond_3

    .line 56
    .line 57
    move v4, v2

    .line 58
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 59
    .line 60
    return v2

    .line 61
    :cond_4
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardDisabledBySettings(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    return v2

    .line 80
    :cond_6
    if-eqz p1, :cond_7

    .line 81
    .line 82
    return v3

    .line 83
    :cond_7
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_0
    const-string p1, "KeyguardViewMediator"

    .line 98
    .line 99
    const-string v4, "Failed to stop app pinning"

    .line 100
    .line 101
    invoke-static {p1, v4}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 105
    .line 106
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 111
    .line 112
    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_9

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 123
    .line 124
    if-ne p1, v4, :cond_9

    .line 125
    .line 126
    move p1, v2

    .line 127
    goto :goto_3

    .line 128
    :cond_9
    move p1, v3

    .line 129
    :goto_3
    if-eqz p1, :cond_a

    .line 130
    .line 131
    const-string p0, "keyguardDisabled: pending fingerprint auth"

    .line 132
    .line 133
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return v2

    .line 137
    :cond_a
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isLockScreenDisabledbyKNOX()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    const-string p0, "keyguardDisabled: it is disabled by Knox"

    .line 146
    .line 147
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return v2

    .line 151
    :cond_b
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 152
    .line 153
    if-eqz p1, :cond_c

    .line 154
    .line 155
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_c

    .line 160
    .line 161
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 162
    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_c

    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_c

    .line 178
    .line 179
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 180
    .line 181
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_c

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 194
    .line 195
    check-cast p1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_c

    .line 202
    .line 203
    const-string p0, "doKeyguard: not showing because cover is showing"

    .line 204
    .line 205
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v2

    .line 209
    :cond_c
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_HOMEHUB:Z

    .line 210
    .line 211
    if-eqz p1, :cond_d

    .line 212
    .line 213
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    .line 214
    .line 215
    if-eqz p0, :cond_d

    .line 216
    .line 217
    const-string p0, "keyguardDisabled: it is HomeHub device and pogo is plugged"

    .line 218
    .line 219
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return v2

    .line 223
    :cond_d
    return v3
.end method

.method public final isKeyguardDisabledBySettings(Z)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p0, "keyguardDisabled: factory binary"

    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2}, Landroid/os/FactoryTest;->checkAutomationTestOption(Landroid/content/Context;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const-string p0, "keyguardDisabled: automation test"

    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return v1

    .line 33
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 36
    .line 37
    const-string v0, "access_control_enabled"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-ne p0, v1, :cond_4

    .line 48
    .line 49
    move p0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move p0, v2

    .line 52
    :goto_0
    if-eqz p0, :cond_6

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    const-string p0, "keyguardDisabled: access control is enabled"

    .line 57
    .line 58
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    return v1

    .line 62
    :cond_6
    return v2
.end method

.method public final isKeyguardHiding()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isSecure()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isShowing:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isUnlockStartedOrFinished()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationControllerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 29
    .line 30
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 46
    :goto_1
    return p0
.end method

.method public final keyguardGoingAway(I)Z
    .locals 9

    .line 1
    const-string v0, "keyguardGoingAway flags=0x"

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_1
    iget-boolean v1, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-boolean v1, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 22
    .line 23
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mIsDifferentOrientation:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string/jumbo v1, "needPendingGoingAway: fastWakeAndUnlock and different orientation"

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v1, v2

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reservedKeyguardGoingAway:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1, p1}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastGoingAwayFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    move p0, v3

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const-string p1, "KeyguardViewMediator"

    .line 81
    .line 82
    const-string v0, "Error while calling WindowManager"

    .line 83
    .line 84
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 88
    .line 89
    invoke-static {p1, v1, v0, p0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    move p0, v2

    .line 93
    :goto_2
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    const/16 v8, 0x3c

    .line 100
    .line 101
    move v3, p0

    .line 102
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    .line 103
    .line 104
    .line 105
    return p0
.end method

.method public final notifyDrawn()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 4

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->screenTuringOnTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 8
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyDrawn "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Exception calling onDrawn():"

    .line 10
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onAbortHandleStartKeyguardExitAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecViewController;->onDismissCancelled()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->onAbortKeyguardDone()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onAbortKeyguardDone()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 8
    .line 9
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 14
    .line 15
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->resetFoldOpenState(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 28
    .line 29
    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v5, "setKeyguardDismissCancelled() showing = "

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v5, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, " , pending type changed = "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean v5, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 66
    .line 67
    const-string v5, "KeyguardWallpaperController"

    .line 68
    .line 69
    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-string/jumbo v0, "setKeyguardDismissCancelled, remove clean-up runnable"

    .line 77
    .line 78
    .line 79
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v0, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 83
    .line 84
    iget-object v4, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-boolean v0, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-boolean v0, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    .line 102
    .line 103
    .line 104
    iput-boolean v1, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iput-boolean v2, v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 108
    .line 109
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    .line 112
    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    .line 122
    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    .line 125
    .line 126
    return-void
.end method

.method public final removeMessage(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final removeShowMsg()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->showKeyguardWakeLock:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/os/PowerManager$WakeLock;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final resetStateLocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetStateLocked:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setShowingOptions(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v2, "KeyguardExitEditVI"

    .line 8
    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    move v1, v0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v1, p1

    .line 24
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 25
    .line 26
    iput-boolean v0, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 27
    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const-string/jumbo v2, "request_id"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v0, v1

    .line 42
    :goto_1
    if-eqz v0, :cond_5

    .line 43
    .line 44
    if-nez p1, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    move-object v2, p1

    .line 48
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 49
    .line 50
    iput-object v0, v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    .line 51
    .line 52
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    const-string/jumbo v1, "preview_pfd_from_preview"

    .line 57
    .line 58
    .line 59
    const-class v2, Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 67
    .line 68
    :cond_6
    if-nez p1, :cond_7

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_7
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 72
    .line 73
    iput-object v1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    .line 74
    .line 75
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    .line 76
    .line 77
    if-eqz p1, :cond_8

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v1, "setShowingOptions : "

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "KeyguardViewMediator"

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "VideoStartPosition"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 106
    .line 107
    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 110
    .line 111
    if-eqz p0, :cond_8

    .line 112
    .line 113
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->setStartPosition(I)V

    .line 114
    .line 115
    .line 116
    :cond_8
    return-void
.end method

.method public final startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string/jumbo v0, "notificationKey"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;

    .line 13
    .line 14
    invoke-direct {v1, p1, v0, p0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 23
    .line 24
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecViewController;->isPanelFullyCollapsed()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 41
    .line 42
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final updatePendingLock(IJZILcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda2;Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda9;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "net.mirrorlink.on"

    .line 9
    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "1"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v0, 0x3

    .line 27
    const/4 v2, 0x0

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    cmp-long v0, p2, v3

    .line 33
    .line 34
    if-gtz v0, :cond_5

    .line 35
    .line 36
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    if-ne p1, v1, :cond_4

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v5, p5}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 53
    .line 54
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 59
    .line 60
    invoke-virtual {v0, p5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    :cond_2
    const/4 v0, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v0, 0x0

    .line 69
    :goto_0
    if-nez v0, :cond_4

    .line 70
    .line 71
    cmp-long v0, p2, v3

    .line 72
    .line 73
    if-gtz v0, :cond_5

    .line 74
    .line 75
    :cond_4
    const/4 v0, 0x2

    .line 76
    if-ne p1, v0, :cond_7

    .line 77
    .line 78
    if-nez p4, :cond_7

    .line 79
    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->updatePhoneState:Lkotlin/jvm/functions/Function1;

    .line 85
    .line 86
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Ljava/lang/String;

    .line 91
    .line 92
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_8

    .line 99
    .line 100
    cmp-long p0, p2, v3

    .line 101
    .line 102
    if-gtz p0, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    move-object p6, p7

    .line 106
    goto :goto_1

    .line 107
    :cond_7
    invoke-virtual {v5, p5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_8

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_8
    move-object p6, v2

    .line 115
    :goto_1
    if-eqz p6, :cond_9

    .line 116
    .line 117
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 118
    .line 119
    .line 120
    :cond_9
    return-void
.end method

.method public final updateRefreshRate()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->mainMaxRefreshRate$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v3

    .line 35
    :goto_0
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subMaxRefreshRate$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lcom/android/systemui/util/SettingsHelper;->getRefreshRateMode(Z)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v4, 0x0

    .line 67
    if-eq v0, v2, :cond_3

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    if-eq v0, v2, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_2
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_3
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curMaxRefresRate:I

    .line 88
    .line 89
    if-eq v0, v1, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_1
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_3
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 104
    .line 105
    :cond_4
    if-lez v1, :cond_5

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 108
    .line 109
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isUnlockStartedOrFinished()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->displayManager$delegate:Lkotlin/Lazy;

    .line 132
    .line 133
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateToken$delegate:Lkotlin/Lazy;

    .line 140
    .line 141
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Landroid/os/IBinder;

    .line 146
    .line 147
    const-string v4, "KeyguardViewMediator"

    .line 148
    .line 149
    invoke-interface {v0, v2, v1, v4}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catch_2
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 161
    .line 162
    if-nez v0, :cond_6

    .line 163
    .line 164
    const-string v0, "failed to acquire a RefreshRateMaxLimitToken"

    .line 165
    .line 166
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 171
    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catch_3
    move-exception v0

    .line 179
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_5
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 183
    .line 184
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->refreshRateTokenMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 185
    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curMaxRefresRate:I

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v3, "updateRefreshRate enabled / "

    .line 193
    .line 194
    .line 195
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v0, "Hz"

    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    move v3, v1

    .line 214
    goto :goto_7

    .line 215
    :cond_7
    const-string/jumbo v0, "updateRefreshRate disabled"

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :goto_7
    iput v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curMaxRefresRate:I

    .line 222
    .line 223
    return-void
.end method
