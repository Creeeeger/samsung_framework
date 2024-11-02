.class public final Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final csdFactoryProvider:Ljavax/inject/Provider;

.field public final devicePostureControllerProvider:Ljavax/inject/Provider;

.field public final deviceProvisionedControllerProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final interactionJankMonitorProvider:Ljavax/inject/Provider;

.field public final mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

.field public final volumeDialogControllerProvider:Ljavax/inject/Provider;

.field public final volumePanelFactoryProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object p1, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumePanelFactoryProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->interactionJankMonitorProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->csdFactoryProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->devicePostureControllerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    return-void
.end method

.method public static provideVolumeDialog(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/volume/VolumeDialogImpl;
    .locals 15

    .line 1
    new-instance v14, Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v12

    .line 7
    move-object v0, v14

    .line 8
    move-object v1, p0

    .line 9
    move-object/from16 v2, p1

    .line 10
    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    move-object/from16 v4, p3

    .line 14
    .line 15
    move-object/from16 v5, p4

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move-object/from16 v8, p7

    .line 22
    .line 23
    move-object/from16 v9, p8

    .line 24
    .line 25
    move-object/from16 v10, p9

    .line 26
    .line 27
    move-object/from16 v11, p10

    .line 28
    .line 29
    move-object/from16 v13, p11

    .line 30
    .line 31
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    .line 45
    .line 46
    iget-boolean v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    if-ne v0, v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-boolean v2, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 53
    .line 54
    iget-object v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-boolean v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iput-boolean v3, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 65
    .line 66
    iget-object v0, v14, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object v14
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->contextProvider:Ljavax/inject/Provider;

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
    check-cast v1, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->configurationControllerProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumePanelFactoryProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/systemui/volume/VolumePanelFactory;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->activityStarterProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->interactionJankMonitorProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/internal/jank/InteractionJankMonitor;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->csdFactoryProvider:Ljavax/inject/Provider;

    .line 83
    .line 84
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v10, v0

    .line 89
    check-cast v10, Lcom/android/systemui/volume/CsdWarningDialog$Factory;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->devicePostureControllerProvider:Ljavax/inject/Provider;

    .line 92
    .line 93
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v11, v0

    .line 98
    check-cast v11, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 101
    .line 102
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    move-object v12, p0

    .line 107
    check-cast v12, Lcom/android/systemui/dump/DumpManager;

    .line 108
    .line 109
    invoke-static/range {v1 .. v12}, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->provideVolumeDialog(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
