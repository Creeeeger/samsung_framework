.class public final Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final alternateBouncerInteractorProvider:Ljavax/inject/Provider;

.field public final callbackProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dockManagerProvider:Ljavax/inject/Provider;

.field public final dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

.field public final fastBioUnlockControllerProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardBouncerViewModelProvider:Ljavax/inject/Provider;

.field public final keyguardMessageAreaFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardSecurityModelProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final keyguardUnlockAnimationControllerLazyProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final keyguardViewMediatorHelperProvider:Ljavax/inject/Provider;

.field public final latencyTrackerProvider:Ljavax/inject/Provider;

.field public final lockPatternUtilsProvider:Ljavax/inject/Provider;

.field public final navigationModeControllerProvider:Ljavax/inject/Provider;

.field public final notificationMediaManagerProvider:Ljavax/inject/Provider;

.field public final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

.field public final primaryBouncerCallbackInteractorProvider:Ljavax/inject/Provider;

.field public final primaryBouncerInteractorProvider:Ljavax/inject/Provider;

.field public final primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final primaryBouncerViewProvider:Ljavax/inject/Provider;

.field public final rotationWatcherProvider:Ljavax/inject/Provider;

.field public final shadeControllerProvider:Ljavax/inject/Provider;

.field public final sysUIUnfoldComponentProvider:Ljavax/inject/Provider;

.field public final sysuiStatusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final udfpsOverlayInteractorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardViewMediatorHelperProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->rotationWatcherProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->fastBioUnlockControllerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardUnlockAnimationControllerLazyProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardBouncerViewModelProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->callbackProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->sysuiStatusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->dockManagerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 63
    .line 64
    move-object/from16 v1, p19

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    move-object/from16 v1, p20

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardMessageAreaFactoryProvider:Ljavax/inject/Provider;

    .line 71
    .line 72
    move-object/from16 v1, p21

    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->sysUIUnfoldComponentProvider:Ljavax/inject/Provider;

    .line 75
    .line 76
    move-object/from16 v1, p22

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 79
    .line 80
    move-object/from16 v1, p23

    .line 81
    .line 82
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->latencyTrackerProvider:Ljavax/inject/Provider;

    .line 83
    .line 84
    move-object/from16 v1, p24

    .line 85
    .line 86
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 87
    .line 88
    move-object/from16 v1, p25

    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    move-object/from16 v1, p26

    .line 93
    .line 94
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerCallbackInteractorProvider:Ljavax/inject/Provider;

    .line 95
    .line 96
    move-object/from16 v1, p27

    .line 97
    .line 98
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerInteractorProvider:Ljavax/inject/Provider;

    .line 99
    .line 100
    move-object/from16 v1, p28

    .line 101
    .line 102
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerViewProvider:Ljavax/inject/Provider;

    .line 103
    .line 104
    move-object/from16 v1, p29

    .line 105
    .line 106
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->alternateBouncerInteractorProvider:Ljavax/inject/Provider;

    .line 107
    .line 108
    move-object/from16 v1, p30

    .line 109
    .line 110
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->udfpsOverlayInteractorProvider:Ljavax/inject/Provider;

    .line 111
    .line 112
    move-object/from16 v1, p31

    .line 113
    .line 114
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 115
    .line 116
    return-void
.end method

.method public static provideStatusBarKeyguardViewManager(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/BouncerView;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 30

    .line 1
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    move-object/from16 v2, p4

    .line 11
    .line 12
    move-object/from16 v3, p5

    .line 13
    .line 14
    move-object/from16 v4, p6

    .line 15
    .line 16
    move-object/from16 v5, p7

    .line 17
    .line 18
    move-object/from16 v6, p8

    .line 19
    .line 20
    move-object/from16 v7, p9

    .line 21
    .line 22
    move-object/from16 v8, p10

    .line 23
    .line 24
    move-object/from16 v9, p11

    .line 25
    .line 26
    move-object/from16 v10, p12

    .line 27
    .line 28
    move-object/from16 v11, p13

    .line 29
    .line 30
    move-object/from16 v12, p14

    .line 31
    .line 32
    move-object/from16 v13, p15

    .line 33
    .line 34
    move-object/from16 v14, p16

    .line 35
    .line 36
    move-object/from16 v15, p17

    .line 37
    .line 38
    move-object/from16 v16, p18

    .line 39
    .line 40
    move-object/from16 v17, p19

    .line 41
    .line 42
    move-object/from16 v18, p20

    .line 43
    .line 44
    move-object/from16 v19, p21

    .line 45
    .line 46
    move-object/from16 v20, p22

    .line 47
    .line 48
    move-object/from16 v21, p23

    .line 49
    .line 50
    move-object/from16 v22, p24

    .line 51
    .line 52
    move-object/from16 v23, p25

    .line 53
    .line 54
    move-object/from16 v24, p26

    .line 55
    .line 56
    move-object/from16 v25, p27

    .line 57
    .line 58
    move-object/from16 v26, p28

    .line 59
    .line 60
    move-object/from16 v27, p29

    .line 61
    .line 62
    move-object/from16 v28, p30

    .line 63
    .line 64
    invoke-direct/range {v1 .. v28}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/BouncerView;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    .line 69
    .line 70
    move-object v1, v0

    .line 71
    move-object/from16 v2, p0

    .line 72
    .line 73
    move-object/from16 v3, p1

    .line 74
    .line 75
    move-object/from16 v4, p2

    .line 76
    .line 77
    move-object/from16 v5, p3

    .line 78
    .line 79
    move-object/from16 v6, p7

    .line 80
    .line 81
    move-object/from16 v7, p8

    .line 82
    .line 83
    move-object/from16 v8, p9

    .line 84
    .line 85
    move-object/from16 v9, p10

    .line 86
    .line 87
    move-object/from16 v10, p11

    .line 88
    .line 89
    move-object/from16 v11, p12

    .line 90
    .line 91
    move-object/from16 v12, p13

    .line 92
    .line 93
    move-object/from16 v13, p14

    .line 94
    .line 95
    move-object/from16 v14, p15

    .line 96
    .line 97
    move-object/from16 v15, p16

    .line 98
    .line 99
    move-object/from16 v16, p17

    .line 100
    .line 101
    move-object/from16 v17, p18

    .line 102
    .line 103
    move-object/from16 v18, p19

    .line 104
    .line 105
    move-object/from16 v19, p20

    .line 106
    .line 107
    move-object/from16 v20, p21

    .line 108
    .line 109
    move-object/from16 v21, p22

    .line 110
    .line 111
    move-object/from16 v22, p23

    .line 112
    .line 113
    move-object/from16 v23, p24

    .line 114
    .line 115
    move-object/from16 v24, p25

    .line 116
    .line 117
    move-object/from16 v25, p26

    .line 118
    .line 119
    move-object/from16 v26, p27

    .line 120
    .line 121
    move-object/from16 v27, p28

    .line 122
    .line 123
    move-object/from16 v28, p29

    .line 124
    .line 125
    move-object/from16 v29, p30

    .line 126
    .line 127
    invoke-direct/range {v1 .. v29}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/BouncerView;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardViewMediatorHelperProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->rotationWatcherProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/keyguard/SecRotationWatcher;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->fastBioUnlockControllerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardUnlockAnimationControllerLazyProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardBouncerViewModelProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v6, v1

    .line 43
    check-cast v6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

    .line 46
    .line 47
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v7, v1

    .line 52
    check-cast v7, Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 64
    .line 65
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v9, v1

    .line 70
    check-cast v9, Landroid/content/Context;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->callbackProvider:Ljavax/inject/Provider;

    .line 73
    .line 74
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v10, v1

    .line 79
    check-cast v10, Lcom/android/keyguard/ViewMediatorCallback;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 82
    .line 83
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v11, v1

    .line 88
    check-cast v11, Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->sysuiStatusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v12, v1

    .line 97
    check-cast v12, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 100
    .line 101
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v13, v1

    .line 106
    check-cast v13, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 109
    .line 110
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v14, v1

    .line 115
    check-cast v14, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

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
    check-cast v15, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->navigationModeControllerProvider:Ljavax/inject/Provider;

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
    check-cast v16, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->dockManagerProvider:Ljavax/inject/Provider;

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
    check-cast v17, Lcom/android/systemui/dock/DockManager;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 147
    .line 148
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    move-object/from16 v18, v1

    .line 153
    .line 154
    check-cast v18, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 157
    .line 158
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object/from16 v19, v1

    .line 163
    .line 164
    check-cast v19, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 167
    .line 168
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    move-object/from16 v20, v1

    .line 173
    .line 174
    check-cast v20, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardMessageAreaFactoryProvider:Ljavax/inject/Provider;

    .line 177
    .line 178
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    move-object/from16 v21, v1

    .line 183
    .line 184
    check-cast v21, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 185
    .line 186
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->sysUIUnfoldComponentProvider:Ljavax/inject/Provider;

    .line 187
    .line 188
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    move-object/from16 v22, v1

    .line 193
    .line 194
    check-cast v22, Ljava/util/Optional;

    .line 195
    .line 196
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 197
    .line 198
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 199
    .line 200
    .line 201
    move-result-object v23

    .line 202
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->latencyTrackerProvider:Ljavax/inject/Provider;

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
    check-cast v24, Lcom/android/internal/util/LatencyTracker;

    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

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
    check-cast v25, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 221
    .line 222
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

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
    check-cast v26, Lcom/android/systemui/flags/FeatureFlags;

    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerCallbackInteractorProvider:Ljavax/inject/Provider;

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
    check-cast v27, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 241
    .line 242
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerInteractorProvider:Ljavax/inject/Provider;

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
    check-cast v28, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 251
    .line 252
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->primaryBouncerViewProvider:Ljavax/inject/Provider;

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
    check-cast v29, Lcom/android/systemui/keyguard/data/BouncerView;

    .line 261
    .line 262
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->alternateBouncerInteractorProvider:Ljavax/inject/Provider;

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
    check-cast v30, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->udfpsOverlayInteractorProvider:Ljavax/inject/Provider;

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
    check-cast v31, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    .line 281
    .line 282
    iget-object v0, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 283
    .line 284
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    move-object/from16 v32, v0

    .line 289
    .line 290
    check-cast v32, Lcom/android/systemui/plugins/ActivityStarter;

    .line 291
    .line 292
    invoke-static/range {v2 .. v32}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideStatusBarKeyguardViewManagerFactory;->provideStatusBarKeyguardViewManager(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/BouncerView;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    return-object v0
.end method
