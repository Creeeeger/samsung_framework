.class public final Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final batteryControllerProvider:Ljavax/inject/Provider;

.field public final batteryMeterViewProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contentResolverProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final indicatorScaleGardenerProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final settingsHelperProvider:Ljavax/inject/Provider;

.field public final slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

.field public final tunerServiceProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->batteryMeterViewProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->userTrackerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->tunerServiceProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    return-void
.end method

.method public static providesBatteryMeterViewController(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)Lcom/android/systemui/battery/BatteryMeterViewController;
    .locals 13

    .line 1
    sget-object v0, Lcom/android/systemui/shade/ShadeModule;->Companion:Lcom/android/systemui/shade/ShadeModule$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move-object/from16 v5, p3

    .line 13
    .line 14
    move-object/from16 v6, p4

    .line 15
    .line 16
    move-object/from16 v7, p5

    .line 17
    .line 18
    move-object/from16 v8, p6

    .line 19
    .line 20
    move-object/from16 v9, p7

    .line 21
    .line 22
    move-object/from16 v10, p8

    .line 23
    .line 24
    move-object/from16 v11, p9

    .line 25
    .line 26
    move-object/from16 v12, p10

    .line 27
    .line 28
    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/battery/BatteryMeterViewController;-><init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->batteryMeterViewProvider:Ljavax/inject/Provider;

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
    check-cast v1, Lcom/android/systemui/battery/BatteryMeterView;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->userTrackerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/settings/UserTracker;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->tunerServiceProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v5, Landroid/os/Handler;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->contentResolverProvider:Ljavax/inject/Provider;

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
    check-cast v6, Landroid/content/ContentResolver;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/systemui/flags/FeatureFlags;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->batteryControllerProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->settingsHelperProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/systemui/util/SettingsHelper;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 92
    .line 93
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    move-object v11, p0

    .line 98
    check-cast v11, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 99
    .line 100
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/shade/ShadeModule_Companion_ProvidesBatteryMeterViewControllerFactory;->providesBatteryMeterViewController(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
