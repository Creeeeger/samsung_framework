.class public final Lcom/android/systemui/doze/PluginAODManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public mAODMachine:Lcom/android/systemui/doze/AODMachine;

.field public mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

.field public mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field public final mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

.field public final mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

.field public mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field public mClockTransitionStarted:Z

.field public final mCommonNotifCollectionLazy:Ldagger/Lazy;

.field public mConnectionRunnableList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mControlScreenOff:Z

.field public mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

.field public mCoverPluginContext:Landroid/content/Context;

.field public final mCoverScreenManagerLazy:Ldagger/Lazy;

.field public mCurrentPhoneState:I

.field public final mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public final mDisplayStateLock:Landroid/os/IBinder;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mDozing:Z

.field public mEmm:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

.field public final mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field public final mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field public final mFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public final mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

.field public mIsDifferentOrientation:Z

.field public mIsFolderOpened:Z

.field public final mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

.field public final mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

.field public final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field public final mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mNotifCollectionListener:Lcom/android/systemui/doze/PluginAODManager$8;

.field public final mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

.field public final mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mPluginAODStateProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public mShowAODNotifications:Z

.field public final mSmartAlerts:Ljava/util/ArrayList;

.field public mStartedByFolderClosed:Z

.field public final mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field public final mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public final mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

.field public final mToken:Landroid/os/IBinder;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mWakefulness:I

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

.field public final mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

.field public mZigzagPosition:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/aod/AODTouchModeManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/aod/AODTouchModeManager;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p12

    move-object/from16 v3, p20

    move-object/from16 v4, p22

    move-object/from16 v5, p26

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-direct {v6}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 3
    const-class v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    .line 4
    iget-object v6, v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 5
    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    .line 7
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    .line 8
    iput-boolean v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mShowAODNotifications:Z

    .line 9
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    const/4 v7, 0x0

    .line 10
    iput-object v7, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 11
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayStateLock:Landroid/os/IBinder;

    .line 12
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mToken:Landroid/os/IBinder;

    .line 13
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$1;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 14
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$2;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

    .line 15
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$3;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    .line 16
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$4;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    .line 17
    const-class v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 18
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 19
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$5;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

    .line 20
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$6;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

    .line 21
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$7;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

    .line 22
    new-instance v8, Lcom/android/systemui/doze/PluginAODManager$8;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/PluginAODManager$8;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotifCollectionListener:Lcom/android/systemui/doze/PluginAODManager$8;

    .line 23
    iput-boolean v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    const/4 v8, 0x0

    .line 24
    iput v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mCurrentPhoneState:I

    move-object/from16 v9, p1

    .line 25
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    move-object/from16 v9, p3

    .line 27
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v9, p4

    .line 28
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v9, p7

    .line 29
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v9, p8

    .line 30
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object/from16 v9, p9

    .line 31
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v9, p10

    .line 32
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    move-object/from16 v9, p11

    .line 33
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v9, p14

    .line 34
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    move-object/from16 v9, p15

    .line 35
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v9, p16

    .line 36
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v9, p17

    .line 37
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    move-object/from16 v9, p18

    .line 38
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v9, p24

    .line 39
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    move-object/from16 v9, p5

    .line 40
    iget-object v9, v9, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 41
    iput-object v9, v0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 42
    sget-boolean v9, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v9, :cond_8

    .line 43
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 44
    sget-boolean v9, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-eqz v9, :cond_4

    .line 45
    const-class v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-eqz v2, :cond_1

    .line 46
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v7

    :goto_0
    const/16 v11, 0x12d

    .line 47
    invoke-virtual {v2, v11, v10}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    :cond_1
    if-eqz v1, :cond_3

    .line 48
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v9, :cond_2

    .line 49
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v9, :cond_2

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

    goto :goto_1

    :cond_2
    move-object v9, v7

    .line 50
    :goto_1
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    :cond_4
    :goto_2
    const-class v1, Lcom/android/systemui/media/SubscreenMusicWidgetController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/SubscreenMusicWidgetController;

    .line 53
    new-instance v9, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;

    .line 54
    iget-object v10, v1, Lcom/android/systemui/media/SubscreenMusicWidgetController;->mContext:Landroid/content/Context;

    .line 55
    iget-object v1, v1, Lcom/android/systemui/media/SubscreenMusicWidgetController;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    invoke-direct {v9, v10, v1}, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;)V

    const/16 v1, 0x130

    invoke-virtual {v2, v1, v9}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    .line 56
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    const/16 v9, 0x12c

    if-eqz v1, :cond_6

    .line 57
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW:Z

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 58
    iget-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 59
    check-cast v1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    const-string v10, "initSubRoomCommon"

    invoke-virtual {v1, v10}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 60
    iget-object v10, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v10, v5}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 61
    iget-object v10, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFoldStateChangedListener:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

    iget-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v11, v10}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-string v10, "createAndAddWindow"

    .line 62
    invoke-virtual {v1, v10}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 63
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x96f

    const v13, -0x7f7bffc0

    const/4 v14, -0x3

    move-object/from16 p1, v1

    move/from16 p2, v10

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    invoke-direct/range {p1 .. p6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 64
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v10, 0x3

    .line 65
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v10, 0x30

    .line 66
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v10, "SubScreenQuickPanel"

    .line 68
    invoke-virtual {v1, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 70
    iget-object v10, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-virtual {v10}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->getScreenTimeOut()I

    move-result v11

    int-to-long v11, v11

    .line 71
    invoke-virtual {v1, v11, v12}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 72
    iget-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v12

    not-int v12, v12

    and-int/2addr v11, v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v12

    not-int v12, v12

    and-int/2addr v11, v12

    invoke-virtual {v1, v11}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 73
    iget-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    iput-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 74
    iget-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    if-nez v11, :cond_5

    .line 75
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d047b

    invoke-virtual {v11, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iput-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x1050320

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 77
    iget-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    const/16 v12, 0xf

    invoke-virtual {v11, v12, v7}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 78
    iget-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    const v11, 0x106000c

    invoke-virtual {v1, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v7, v12, v11}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 79
    iget-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v7}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v7

    .line 80
    iget-object v7, v7, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 81
    iput-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    .line 82
    iget-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    invoke-virtual {v11, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v7, Lcom/android/systemui/blur/SecCoverBlurController;

    iget-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    invoke-direct {v7, v1, v11}, Lcom/android/systemui/blur/SecCoverBlurController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 84
    invoke-virtual {v7}, Lcom/android/systemui/blur/SecCoverBlurController;->applyBlur()V

    .line 85
    :cond_5
    iget-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v11, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iget-object v12, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v11, v12}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 88
    iput v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    .line 89
    invoke-virtual {v10}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->init()V

    .line 90
    iget-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 91
    iput-object v10, v1, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 92
    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;

    invoke-direct {v7, v5}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 93
    iget-object v1, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenComponent:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;

    iget-object v7, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    invoke-interface {v1, v7}, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;->create(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;)Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent;->getSubScreenQuickPanelHeaderController()Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 96
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;

    invoke-direct {v1, v5, v8}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    invoke-virtual {v2, v9, v1}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    goto :goto_3

    .line 97
    :cond_6
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    if-eqz v1, :cond_8

    .line 98
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    if-nez v1, :cond_7

    .line 99
    const-class v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 100
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->init()V

    .line 101
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 102
    invoke-virtual {v1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v1

    .line 103
    invoke-virtual {v2, v9, v1}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    :cond_8
    :goto_3
    move-object/from16 v1, p13

    .line 104
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    .line 105
    sput-object p19, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 106
    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$9;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/PluginAODManager$9;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

    .line 107
    iput-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 108
    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/PluginAODManager$10;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    const-string v2, "AOD"

    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    move-object/from16 v1, p23

    .line 109
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 110
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "PluginAODManager"

    move-object/from16 v2, p21

    .line 111
    invoke-static {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 112
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 113
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v1, :cond_9

    .line 114
    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    const/4 v2, 0x4

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    :cond_9
    move-object/from16 v1, p25

    .line 115
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-object/from16 v1, p28

    .line 116
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 117
    move-object/from16 v1, p29

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p30

    .line 118
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    move-object/from16 v1, p31

    .line 119
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method

.method public static isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string/jumbo v1, "smart_alert_title"

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    return v0
.end method


# virtual methods
.method public final addConnectionRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public final chargingAnimStarted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onChargingAnimStarted(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onChargingAnimStarted(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final disableStatusBar(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v1, "statusbar"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/StatusBarManager;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 21
    .line 22
    const-string v1, "PluginAODManager"

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "disableStatusBar() : Could not get status bar manager"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "disableStatusBar() "

    .line 33
    .line 34
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, ""

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "      Plugins"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "        mAODPlugin : "

    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "        mClockPackPlugin : "

    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "        mCoverPlugin : "

    .line 52
    .line 53
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "        mSubScreenPlugin : "

    .line 71
    .line 72
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 76
    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string p2, "        supportAODLightReveal : "

    .line 90
    .line 91
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 95
    .line 96
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final enableTouch(Z)V
    .locals 2

    .line 1
    const-string v0, "enableTouch : "

    .line 2
    .line 3
    const-string v1, " FaceWidgetContainerWrapper = "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PluginAODManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setTouchEnabled(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final initAODOverlayContainer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "PluginAODManager"

    .line 7
    .line 8
    const-string v1, "initAODOverlayContainer()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 22
    .line 23
    const-string v1, "NotificationPanelView"

    .line 24
    .line 25
    const-string v2, "getAODOverlayContainer() "

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 35
    .line 36
    const-string v2, "aod_overlay_container_stub_parent"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .line 44
    const v2, 0x7f0a00c9

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/view/ViewStub;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/systemui/doze/AODOverlayContainer;

    .line 58
    .line 59
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 60
    .line 61
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 62
    .line 63
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 64
    .line 65
    return-void
.end method

.method public final logSmartAlert(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "[onUpdateSmartAlert:"

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "] "

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    add-int/lit8 p1, p1, 0x28

    .line 40
    .line 41
    add-int/lit8 p1, p1, 0x29

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " showingKeys "

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v3, "["

    .line 72
    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p1, 0x5d

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    sget-object p1, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 108
    .line 109
    sget-object p1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 110
    .line 111
    sget-object v0, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    check-cast v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    .line 116
    .line 117
    const-string v1, ""

    .line 118
    .line 119
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void
.end method

.method public final needControlScreenOff()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    iget v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCurrentPhoneState:I

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    return v2

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginAODStateProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

    .line 52
    .line 53
    if-eqz p0, :cond_5

    .line 54
    .line 55
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;->getNeedScreenOff()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_5

    .line 60
    .line 61
    return v2

    .line 62
    :cond_5
    return v0
.end method

.method public final onAodTransitionEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "onAodTransitionEnd mClockTransitionStarted:"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 15
    .line 16
    const-string v2, "PluginAODManager"

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    .line 26
    .line 27
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->SCRIM_AOD_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-string/jumbo v0, "onAodTransitionEnd() in folded state"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTransitionEnded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "onTransitionEnded mClockTransitionStarted:"

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 19
    .line 20
    const-string v3, " shouldControlScreenOff : "

    .line 21
    .line 22
    const-string v4, "PluginAODManager"

    .line 23
    .line 24
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    .line 32
    .line 33
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    .line 42
    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 45
    .line 46
    :cond_1
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 49
    .line 50
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onAodTransitionEnd()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 64
    .line 65
    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onPause()V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public final registerUpdateMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "registerUpdateMonitor mWakefulness="

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    .line 28
    .line 29
    const-string v1, "PluginAODManager"

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final removeUpdateMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "removeUpdateMonitor mWakefulness="

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    .line 28
    .line 29
    const-string v1, "PluginAODManager"

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setAODPlugin(Lcom/android/systemui/plugins/aod/PluginAOD;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    .line 20
    .line 21
    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 24
    .line 25
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 26
    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v4, v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotifCollectionListener:Lcom/android/systemui/doze/PluginAODManager$8;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    .line 40
    .line 41
    const-string v6, "PluginAODManager"

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor()V

    .line 54
    .line 55
    .line 56
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 62
    .line 63
    iget v1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    .line 67
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-interface {p1, v1, v3}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDozeAmountChanged(FF)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-interface {p1, v1, v3}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    .line 80
    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    .line 91
    .line 92
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "addNotiCollectionListener: "

    .line 99
    .line 100
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 108
    .line 109
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 110
    .line 111
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

    .line 117
    .line 118
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 130
    .line 131
    .line 132
    const-string/jumbo p0, "removeNotiCollectionListener: "

    .line 133
    .line 134
    .line 135
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 143
    .line 144
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    .line 155
    .line 156
    check-cast p0, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void
.end method

.method public final setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 8
    .line 9
    if-nez p2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

    .line 31
    .line 32
    move-object v3, p1

    .line 33
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 42
    .line 43
    if-eqz p2, :cond_a

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 50
    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor()V

    .line 54
    .line 55
    .line 56
    :cond_3
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 59
    .line 60
    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    .line 65
    .line 66
    invoke-interface {p2, v2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    sget-boolean p2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 73
    .line 74
    if-eqz p2, :cond_b

    .line 75
    .line 76
    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    .line 77
    .line 78
    if-eqz p2, :cond_9

    .line 79
    .line 80
    const-class p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 87
    .line 88
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onDisplayReady()V

    .line 93
    .line 94
    .line 95
    :cond_5
    const/4 v0, 0x0

    .line 96
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    .line 97
    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/android/systemui/cover/CoverScreenManager;

    .line 105
    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 109
    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    goto :goto_0

    .line 117
    :cond_6
    move-object v3, v0

    .line 118
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string/jumbo v5, "setSubRoom() "

    .line 121
    .line 122
    .line 123
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v5, "SUB_ROOM_NOTIFICATION"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, ", "

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-string v5, "CoverScreenManager"

    .line 144
    .line 145
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    iget-object v2, v2, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    const/16 v4, 0x12d

    .line 151
    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :cond_7
    if-eqz v1, :cond_9

    .line 160
    .line 161
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 162
    .line 163
    if-eqz p2, :cond_8

    .line 164
    .line 165
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 166
    .line 167
    if-eqz p2, :cond_8

    .line 168
    .line 169
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

    .line 170
    .line 171
    :cond_8
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

    .line 177
    .line 178
    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/cover/PluginCover;->setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 182
    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 184
    .line 185
    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozingChanged(Z)V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 189
    .line 190
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 191
    .line 192
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 193
    .line 194
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozeAmountChanged(F)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_a
    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 200
    .line 201
    .line 202
    :cond_b
    :goto_1
    return-void
.end method

.method public final setIsDozing(ZZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->initAODOverlayContainer()V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/AODOverlayContainer;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    .line 27
    .line 28
    .line 29
    :cond_2
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 30
    .line 31
    if-eqz p2, :cond_8

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozingChanged(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 41
    .line 42
    if-eqz p2, :cond_8

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 45
    .line 46
    iget-boolean p2, p2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 47
    .line 48
    if-nez p2, :cond_8

    .line 49
    .line 50
    iget-boolean p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x1

    .line 57
    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 58
    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 62
    .line 63
    iget p2, p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    if-ne p2, v5, :cond_4

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    invoke-direct {p2, v4, v3}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v0, 0x64

    .line 77
    .line 78
    iget-object v2, v4, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 79
    .line 80
    invoke-interface {v2, v0, v1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_5

    .line 89
    .line 90
    move v2, v3

    .line 91
    :cond_5
    if-eqz v2, :cond_8

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Lcom/android/systemui/subscreen/SubScreenManager;->adjustSubHomeActivityOrder(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 98
    .line 99
    if-eqz p2, :cond_8

    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    move v3, v2

    .line 109
    :goto_0
    if-eqz v3, :cond_8

    .line 110
    .line 111
    invoke-virtual {v4, v2}, Lcom/android/systemui/subscreen/SubScreenManager;->adjustSubHomeActivityOrder(Z)V

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_1
    sget-boolean p2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 115
    .line 116
    if-eqz p2, :cond_a

    .line 117
    .line 118
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 119
    .line 120
    if-eqz p2, :cond_9

    .line 121
    .line 122
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozingChanged(Z)V

    .line 123
    .line 124
    .line 125
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 126
    .line 127
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    iget-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    .line 138
    .line 139
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()Z

    .line 146
    .line 147
    .line 148
    :cond_a
    return-void
.end method

.method public final setStartedByFolderClosed(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setStartedByFolderClosed: "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginAODManager"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setSubScreenPlugin(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object v0, v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 64
    .line 65
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozingChanged(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 71
    .line 72
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFolderStateChanged(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 84
    .line 85
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 86
    .line 87
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 88
    .line 89
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozeAmountChanged(F)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final updateAnimateScreenOff()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mControlScreenOff:Z

    .line 60
    .line 61
    if-eq v0, v1, :cond_4

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mControlScreenOff:Z

    .line 64
    .line 65
    const-string/jumbo v0, "updateAnimateScreenOff : controlScreenOff="

    .line 66
    .line 67
    .line 68
    const-string v4, " AlwaysOn="

    .line 69
    .line 70
    invoke-static {v0, v1, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, " keyguardShowing="

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, " powerSaveActive="

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 101
    .line 102
    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 103
    .line 104
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v3, " mIsFolderOpened="

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-boolean v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, " needControlScreenOff="

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p0, " called="

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const/4 p0, 0x4

    .line 137
    const-string v3, "PluginAODManager"

    .line 138
    .line 139
    invoke-static {p0, v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 143
    .line 144
    .line 145
    :cond_5
    return-void
.end method
