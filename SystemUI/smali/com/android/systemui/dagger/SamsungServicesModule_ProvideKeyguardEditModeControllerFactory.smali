.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final bgExecutorProvider:Ljavax/inject/Provider;

.field public final displayLifecycleProvider:Ljavax/inject/Provider;

.field public final executorProvider:Ljavax/inject/Provider;

.field public final pluginWallpaperManagerProvider:Ljavax/inject/Provider;

.field public final settingsHelperProvider:Ljavax/inject/Provider;

.field public final updateMonitorProvider:Ljavax/inject/Provider;

.field public final wakefulnessLifecycleProvider:Ljavax/inject/Provider;

.field public final wallpaperImageInjectCreatorProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->executorProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->bgExecutorProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->wallpaperImageInjectCreatorProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->pluginWallpaperManagerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->updateMonitorProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->displayLifecycleProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    return-void
.end method

.method public static provideKeyguardEditModeController(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/WindowManager;)Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v0, v12

    .line 5
    move-object v2, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object/from16 v5, p3

    .line 9
    .line 10
    move-object/from16 v6, p4

    .line 11
    .line 12
    move-object/from16 v7, p5

    .line 13
    .line 14
    move-object/from16 v8, p6

    .line 15
    .line 16
    move-object/from16 v9, p7

    .line 17
    .line 18
    move-object/from16 v10, p8

    .line 19
    .line 20
    move-object/from16 v11, p9

    .line 21
    .line 22
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;-><init>(ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguardimage/WallpaperImageCreator;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/WindowManager;)V

    .line 23
    .line 24
    .line 25
    return-object v12
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->executorProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->bgExecutorProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->wallpaperImageInjectCreatorProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->pluginWallpaperManagerProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 38
    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->updateMonitorProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->displayLifecycleProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v8, v0

    .line 71
    check-cast v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 74
    .line 75
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v9, v0

    .line 80
    check-cast v9, Lcom/android/systemui/plugins/ActivityStarter;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 83
    .line 84
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    move-object v10, p0

    .line 89
    check-cast v10, Landroid/view/WindowManager;

    .line 90
    .line 91
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideKeyguardEditModeControllerFactory;->provideKeyguardEditModeController(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/WindowManager;)Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method
