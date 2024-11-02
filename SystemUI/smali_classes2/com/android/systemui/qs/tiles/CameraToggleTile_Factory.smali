.class public final Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final backgroundLooperProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final hostProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final panelInteractorProvider:Ljavax/inject/Provider;

.field public final qsLoggerProvider:Ljavax/inject/Provider;

.field public final sensorPrivacyControllerProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;


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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->backgroundLooperProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->panelInteractorProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)Lcom/android/systemui/qs/tiles/CameraToggleTile;
    .locals 14

    .line 1
    new-instance v13, Lcom/android/systemui/qs/tiles/CameraToggleTile;

    .line 2
    .line 3
    move-object v0, v13

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move-object/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p7

    .line 17
    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    move-object/from16 v10, p9

    .line 21
    .line 22
    move-object/from16 v11, p10

    .line 23
    .line 24
    move-object/from16 v12, p11

    .line 25
    .line 26
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/qs/tiles/CameraToggleTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V

    .line 27
    .line 28
    .line 29
    return-object v13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->hostProvider:Ljavax/inject/Provider;

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
    check-cast v1, Lcom/android/systemui/qs/QSHost;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/qs/QsEventLogger;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->backgroundLooperProvider:Ljavax/inject/Provider;

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
    check-cast v3, Landroid/os/Looper;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/internal/logging/MetricsLogger;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/plugins/FalsingManager;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/systemui/qs/logging/QSLogger;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

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
    check-cast v11, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->panelInteractorProvider:Ljavax/inject/Provider;

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
    check-cast v12, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 108
    .line 109
    invoke-static/range {v1 .. v12}, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->newInstance(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)Lcom/android/systemui/qs/tiles/CameraToggleTile;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
