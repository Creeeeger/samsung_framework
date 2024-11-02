.class public final Lcom/android/systemui/qs/SecQSPanelController_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final barControllerProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final panelHostProvider:Ljavax/inject/Provider;

.field public final qsButtonGridControllerProvider:Ljavax/inject/Provider;

.field public final qsHostProvider:Ljavax/inject/Provider;

.field public final qsLoggerProvider:Ljavax/inject/Provider;

.field public final resourcePickerProvider:Ljavax/inject/Provider;

.field public final shadeHeaderControllerProvider:Ljavax/inject/Provider;

.field public final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

.field public final statusBarWindowProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->qsHostProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->panelHostProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->barControllerProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->resourcePickerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->statusBarWindowProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->qsButtonGridControllerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/qs/QSButtonGridController;)Lcom/android/systemui/qs/SecQSPanelController;
    .locals 18

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
    new-instance v17, Lcom/android/systemui/qs/SecQSPanelController;

    .line 34
    .line 35
    move-object/from16 v0, v17

    .line 36
    .line 37
    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/qs/SecQSPanelController;-><init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/qs/QSButtonGridController;)V

    .line 38
    .line 39
    .line 40
    return-object v17
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->viewProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/qs/SecQSPanel;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->qsHostProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/qs/QSHost;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/internal/logging/MetricsLogger;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/qs/logging/QSLogger;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/systemui/dump/DumpManager;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->panelHostProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/systemui/qs/QSPanelHost;

    .line 65
    .line 66
    iget-object v9, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->barControllerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->resourcePickerProvider:Ljavax/inject/Provider;

    .line 69
    .line 70
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v10, v1

    .line 75
    check-cast v10, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    .line 78
    .line 79
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    move-object v11, v1

    .line 84
    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    .line 85
    .line 86
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 87
    .line 88
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object v12, v1

    .line 93
    check-cast v12, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 96
    .line 97
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v13, v1

    .line 102
    check-cast v13, Lcom/android/systemui/plugins/ActivityStarter;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 105
    .line 106
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    move-object v14, v1

    .line 111
    check-cast v14, Landroid/os/Handler;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 114
    .line 115
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    move-object v15, v1

    .line 120
    check-cast v15, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 121
    .line 122
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->statusBarWindowProvider:Ljavax/inject/Provider;

    .line 123
    .line 124
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    move-object/from16 v16, v1

    .line 129
    .line 130
    check-cast v16, Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelController_Factory;->qsButtonGridControllerProvider:Ljavax/inject/Provider;

    .line 133
    .line 134
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    move-object/from16 v17, v0

    .line 139
    .line 140
    check-cast v17, Lcom/android/systemui/qs/QSButtonGridController;

    .line 141
    .line 142
    invoke-static/range {v2 .. v17}, Lcom/android/systemui/qs/SecQSPanelController_Factory;->newInstance(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/qs/QSButtonGridController;)Lcom/android/systemui/qs/SecQSPanelController;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method
