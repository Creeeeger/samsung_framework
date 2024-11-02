.class public final Lcom/android/systemui/doze/PluginAODManager_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final aodAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

.field public final aodLoggerProvider:Ljavax/inject/Provider;

.field public final aodTouchModeManagerProvider:Ljavax/inject/Provider;

.field public final commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final coverScreenManagerLazyProvider:Ljavax/inject/Provider;

.field public final displayLifecycleProvider:Ljavax/inject/Provider;

.field public final dozeParametersProvider:Ljavax/inject/Provider;

.field public final dozeServiceHostProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

.field public final foldControllerProvider:Ljavax/inject/Provider;

.field public final keyguardNotificationVisibilityProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final keyguardViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardViewMediatorHelperProvider:Ljavax/inject/Provider;

.field public final keyguardWallpaperControllerProvider:Ljavax/inject/Provider;

.field public final keyguardWallpaperProvider:Ljavax/inject/Provider;

.field public final lockscreenNotificationIconsOnlyControllerProvider:Ljavax/inject/Provider;

.field public final lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

.field public final mEmmProvider:Ljavax/inject/Provider;

.field public final notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

.field public final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

.field public final notificationsControllerProvider:Ljavax/inject/Provider;

.field public final pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

.field public final pluginLockMediatorProvider:Ljavax/inject/Provider;

.field public final pluginLockStarManagerProvider:Ljavax/inject/Provider;

.field public final settingsHelperProvider:Ljavax/inject/Provider;

.field public final subScreenManagerProvider:Ljavax/inject/Provider;

.field public final subScreenQuickPanelWindowControllerProvider:Ljavax/inject/Provider;

.field public final wakefulnessLifecycleProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardViewControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardWallpaperProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->foldControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardNotificationVisibilityProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->lockscreenNotificationIconsOnlyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->subScreenQuickPanelWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardViewMediatorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodTouchModeManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardWallpaperControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->mEmmProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/aod/AODTouchModeManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/doze/PluginAODManager;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p6

    .line 14
    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v9, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    move-object/from16 v11, p10

    .line 22
    .line 23
    move-object/from16 v12, p11

    .line 24
    .line 25
    move-object/from16 v13, p12

    .line 26
    .line 27
    move-object/from16 v14, p13

    .line 28
    .line 29
    move-object/from16 v15, p14

    .line 30
    .line 31
    move-object/from16 v16, p15

    .line 32
    .line 33
    move-object/from16 v17, p16

    .line 34
    .line 35
    move-object/from16 v18, p17

    .line 36
    .line 37
    move-object/from16 v19, p18

    .line 38
    .line 39
    move-object/from16 v20, p19

    .line 40
    .line 41
    move-object/from16 v21, p20

    .line 42
    .line 43
    move-object/from16 v22, p21

    .line 44
    .line 45
    move-object/from16 v23, p22

    .line 46
    .line 47
    move-object/from16 v24, p23

    .line 48
    .line 49
    move-object/from16 v25, p24

    .line 50
    .line 51
    move-object/from16 v26, p25

    .line 52
    .line 53
    move-object/from16 v27, p26

    .line 54
    .line 55
    move-object/from16 v28, p27

    .line 56
    .line 57
    move-object/from16 v29, p28

    .line 58
    .line 59
    move-object/from16 v30, p29

    .line 60
    .line 61
    move-object/from16 v31, p30

    .line 62
    .line 63
    new-instance v32, Lcom/android/systemui/doze/PluginAODManager;

    .line 64
    .line 65
    move-object/from16 v0, v32

    .line 66
    .line 67
    invoke-direct/range {v0 .. v31}, Lcom/android/systemui/doze/PluginAODManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/aod/AODTouchModeManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 68
    .line 69
    .line 70
    return-object v32
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 4
    .line 5
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardViewControllerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Lcom/android/keyguard/KeyguardViewController;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v6, v1

    .line 46
    check-cast v6, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 58
    .line 59
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v8, v1

    .line 64
    check-cast v8, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v9, v1

    .line 73
    check-cast v9, Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 76
    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v10, v1

    .line 82
    check-cast v10, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardWallpaperProvider:Ljavax/inject/Provider;

    .line 85
    .line 86
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v11, v1

    .line 91
    check-cast v11, Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 94
    .line 95
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v12, v1

    .line 100
    check-cast v12, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    .line 103
    .line 104
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v13, v1

    .line 109
    check-cast v13, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

    .line 118
    .line 119
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v15, v1

    .line 124
    check-cast v15, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    .line 127
    .line 128
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object/from16 v16, v1

    .line 133
    .line 134
    check-cast v16, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 137
    .line 138
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object/from16 v17, v1

    .line 143
    .line 144
    check-cast v17, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

    .line 147
    .line 148
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 149
    .line 150
    .line 151
    move-result-object v18

    .line 152
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 153
    .line 154
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    move-object/from16 v19, v1

    .line 159
    .line 160
    check-cast v19, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodLoggerProvider:Ljavax/inject/Provider;

    .line 163
    .line 164
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    move-object/from16 v20, v1

    .line 169
    .line 170
    check-cast v20, Lcom/android/systemui/log/SamsungServiceLogger;

    .line 171
    .line 172
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->foldControllerProvider:Ljavax/inject/Provider;

    .line 173
    .line 174
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    move-object/from16 v21, v1

    .line 179
    .line 180
    check-cast v21, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 181
    .line 182
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 183
    .line 184
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    move-object/from16 v22, v1

    .line 189
    .line 190
    check-cast v22, Lcom/android/systemui/dump/DumpManager;

    .line 191
    .line 192
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    .line 193
    .line 194
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move-object/from16 v23, v1

    .line 199
    .line 200
    check-cast v23, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationsControllerProvider:Ljavax/inject/Provider;

    .line 203
    .line 204
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    move-object/from16 v24, v1

    .line 209
    .line 210
    check-cast v24, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardNotificationVisibilityProvider:Ljavax/inject/Provider;

    .line 213
    .line 214
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    move-object/from16 v25, v1

    .line 219
    .line 220
    check-cast v25, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    .line 221
    .line 222
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->lockscreenNotificationIconsOnlyControllerProvider:Ljavax/inject/Provider;

    .line 223
    .line 224
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    move-object/from16 v26, v1

    .line 229
    .line 230
    check-cast v26, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->subScreenQuickPanelWindowControllerProvider:Ljavax/inject/Provider;

    .line 233
    .line 234
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    move-object/from16 v27, v1

    .line 239
    .line 240
    check-cast v27, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 241
    .line 242
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardViewMediatorHelperProvider:Ljavax/inject/Provider;

    .line 243
    .line 244
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    move-object/from16 v28, v1

    .line 249
    .line 250
    check-cast v28, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 251
    .line 252
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

    .line 253
    .line 254
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    move-object/from16 v29, v1

    .line 259
    .line 260
    check-cast v29, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 261
    .line 262
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 263
    .line 264
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    move-object/from16 v30, v1

    .line 269
    .line 270
    check-cast v30, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodTouchModeManagerProvider:Ljavax/inject/Provider;

    .line 273
    .line 274
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    move-object/from16 v31, v1

    .line 279
    .line 280
    check-cast v31, Lcom/android/systemui/aod/AODTouchModeManager;

    .line 281
    .line 282
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardWallpaperControllerProvider:Ljavax/inject/Provider;

    .line 283
    .line 284
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    move-object/from16 v32, v1

    .line 289
    .line 290
    check-cast v32, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 291
    .line 292
    invoke-static/range {v2 .. v32}, Lcom/android/systemui/doze/PluginAODManager_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/aod/AODTouchModeManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/doze/PluginAODManager;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->mEmmProvider:Ljavax/inject/Provider;

    .line 297
    .line 298
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 303
    .line 304
    iput-object v0, v1, Lcom/android/systemui/doze/PluginAODManager;->mEmm:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 305
    .line 306
    return-object v1
.end method
