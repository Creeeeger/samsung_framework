.class public final Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final ambientStateProvider:Ljavax/inject/Provider;

.field public final centralSurfacesProvider:Ljavax/inject/Provider;

.field public final clockProvider:Ljavax/inject/Provider;

.field public final controllerProvider:Ljavax/inject/Provider;

.field public final depthControllerProvider:Ljavax/inject/Provider;

.field public final dockManagerProvider:Ljavax/inject/Provider;

.field public final falsingCollectorProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

.field public final keyguardBouncerViewModelProvider:Ljavax/inject/Provider;

.field public final keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

.field public final keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final lockIconViewControllerProvider:Ljavax/inject/Provider;

.field public final mPresentationDisablerProvider:Ljavax/inject/Provider;

.field public final multiShadeInteractorProvider:Ljavax/inject/Provider;

.field public final multiShadeMotionEventInteractorProvider:Ljavax/inject/Provider;

.field public final notificationInsetsControllerProvider:Ljavax/inject/Provider;

.field public final notificationPanelViewControllerProvider:Ljavax/inject/Provider;

.field public final notificationShadeWindowViewProvider:Ljavax/inject/Provider;

.field public final notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

.field public final pluginLockStarManagerProvider:Ljavax/inject/Provider;

.field public final primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

.field public final pulsingGestureListenerProvider:Ljavax/inject/Provider;

.field public final shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

.field public final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

.field public final transitionControllerProvider:Ljavax/inject/Provider;

.field public final unfoldTransitionProgressProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->transitionControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->depthControllerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationShadeWindowViewProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->controllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationInsetsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->ambientStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->pulsingGestureListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardBouncerViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->multiShadeInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->clockProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->multiShadeMotionEventInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->mPresentationDisablerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static newInstance(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ljava/util/Optional;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/flags/FeatureFlags;Ljavax/inject/Provider;Lcom/android/systemui/util/time/SystemClock;Ljavax/inject/Provider;)Lcom/android/systemui/shade/NotificationShadeWindowViewController;
    .locals 31

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
    new-instance v30, Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 60
    .line 61
    move-object/from16 v0, v30

    .line 62
    .line 63
    invoke-direct/range {v0 .. v29}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ljava/util/Optional;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/flags/FeatureFlags;Ljavax/inject/Provider;Lcom/android/systemui/util/time/SystemClock;Ljavax/inject/Provider;)V

    .line 64
    .line 65
    .line 66
    return-object v30
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->transitionControllerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/systemui/classifier/FalsingCollector;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->dockManagerProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/systemui/dock/DockManager;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->depthControllerProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationShadeWindowViewProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

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
    check-cast v11, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

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
    check-cast v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

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
    check-cast v13, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v14, v1

    .line 118
    check-cast v14, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    .line 121
    .line 122
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object v15, v1

    .line 127
    check-cast v15, Lcom/android/keyguard/SecLockIconViewController;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    .line 130
    .line 131
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object/from16 v16, v1

    .line 136
    .line 137
    check-cast v16, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->controllerProvider:Ljavax/inject/Provider;

    .line 140
    .line 141
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move-object/from16 v17, v1

    .line 146
    .line 147
    check-cast v17, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 150
    .line 151
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move-object/from16 v18, v1

    .line 156
    .line 157
    check-cast v18, Ljava/util/Optional;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    .line 160
    .line 161
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object/from16 v19, v1

    .line 166
    .line 167
    check-cast v19, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->notificationInsetsControllerProvider:Ljavax/inject/Provider;

    .line 170
    .line 171
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object/from16 v20, v1

    .line 176
    .line 177
    check-cast v20, Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 178
    .line 179
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->ambientStateProvider:Ljavax/inject/Provider;

    .line 180
    .line 181
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    move-object/from16 v21, v1

    .line 186
    .line 187
    check-cast v21, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->pulsingGestureListenerProvider:Ljavax/inject/Provider;

    .line 190
    .line 191
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    move-object/from16 v22, v1

    .line 196
    .line 197
    check-cast v22, Lcom/android/systemui/shade/PulsingGestureListener;

    .line 198
    .line 199
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardBouncerViewModelProvider:Ljavax/inject/Provider;

    .line 200
    .line 201
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    move-object/from16 v23, v1

    .line 206
    .line 207
    check-cast v23, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 208
    .line 209
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

    .line 210
    .line 211
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    move-object/from16 v24, v1

    .line 216
    .line 217
    check-cast v24, Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

    .line 220
    .line 221
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    move-object/from16 v25, v1

    .line 226
    .line 227
    check-cast v25, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 228
    .line 229
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 230
    .line 231
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    move-object/from16 v26, v1

    .line 236
    .line 237
    check-cast v26, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    .line 238
    .line 239
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 240
    .line 241
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    move-object/from16 v27, v1

    .line 246
    .line 247
    check-cast v27, Lcom/android/systemui/flags/FeatureFlags;

    .line 248
    .line 249
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->multiShadeInteractorProvider:Ljavax/inject/Provider;

    .line 250
    .line 251
    move-object/from16 v28, v1

    .line 252
    .line 253
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 254
    .line 255
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    move-object/from16 v29, v1

    .line 260
    .line 261
    check-cast v29, Lcom/android/systemui/util/time/SystemClock;

    .line 262
    .line 263
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->multiShadeMotionEventInteractorProvider:Ljavax/inject/Provider;

    .line 264
    .line 265
    move-object/from16 v30, v1

    .line 266
    .line 267
    invoke-static/range {v2 .. v30}, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->newInstance(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ljava/util/Optional;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/flags/FeatureFlags;Ljavax/inject/Provider;Lcom/android/systemui/util/time/SystemClock;Ljavax/inject/Provider;)Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController_Factory;->mPresentationDisablerProvider:Ljavax/inject/Provider;

    .line 272
    .line 273
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Lcom/android/keyguard/KeyguardPresentationDisabler;

    .line 278
    .line 279
    iput-object v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    .line 280
    .line 281
    return-object v1
.end method
