.class public final Lcom/android/systemui/navigationbar/NavigationBar_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final accessibilityManagerProvider:Ljavax/inject/Provider;

.field public final assistManagerLazyProvider:Ljavax/inject/Provider;

.field public final autoHideControllerFactoryProvider:Ljavax/inject/Provider;

.field public final backAnimationProvider:Ljavax/inject/Provider;

.field public final bgExecutorProvider:Ljavax/inject/Provider;

.field public final centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

.field public final commandQueueProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final deadZoneProvider:Ljavax/inject/Provider;

.field public final deviceConfigProxyProvider:Ljavax/inject/Provider;

.field public final deviceProvisionedControllerProvider:Ljavax/inject/Provider;

.field public final displayTrackerProvider:Ljavax/inject/Provider;

.field public final inputMethodManagerProvider:Ljavax/inject/Provider;

.field public final lightBarControllerFactoryProvider:Ljavax/inject/Provider;

.field public final logWrapperProvider:Ljavax/inject/Provider;

.field public final mainAutoHideControllerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final mainLightBarControllerProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final navBarHelperProvider:Ljavax/inject/Provider;

.field public final navigationBarFrameProvider:Ljavax/inject/Provider;

.field public final navigationBarTransitionsProvider:Ljavax/inject/Provider;

.field public final navigationBarViewProvider:Ljavax/inject/Provider;

.field public final navigationModeControllerProvider:Ljavax/inject/Provider;

.field public final notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

.field public final notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

.field public final overviewProxyServiceProvider:Ljavax/inject/Provider;

.field public final pipOptionalProvider:Ljavax/inject/Provider;

.field public final recentsOptionalProvider:Ljavax/inject/Provider;

.field public final savedStateProvider:Ljavax/inject/Provider;

.field public final shadeControllerProvider:Ljavax/inject/Provider;

.field public final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final sysUiFlagsContainerProvider:Ljavax/inject/Provider;

.field public final taskStackChangeListenersProvider:Ljavax/inject/Provider;

.field public final telecomManagerOptionalProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;

.field public final userContextProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;

.field public final wakefulnessLifecycleProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationBarViewProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationBarFrameProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->savedStateProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->sysUiFlagsContainerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->pipOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->recentsOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navBarHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainLightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->lightBarControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainAutoHideControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->autoHideControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->telecomManagerOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->deadZoneProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->backAnimationProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->userContextProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->displayTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 43
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static newInstance(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Ljava/util/Optional;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/basic/util/LogWrapper;)Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    .line 1
    new-instance v43, Lcom/android/systemui/navigationbar/NavigationBar;

    move-object/from16 v0, v43

    invoke-direct/range {v0 .. v42}, Lcom/android/systemui/navigationbar/NavigationBar;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Ljava/util/Optional;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/basic/util/LogWrapper;)V

    return-object v43
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationBarViewProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationBarFrameProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->savedStateProvider:Ljavax/inject/Provider;

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
    check-cast v4, Landroid/os/Bundle;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->contextProvider:Ljavax/inject/Provider;

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
    check-cast v5, Landroid/content/Context;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->windowManagerProvider:Ljavax/inject/Provider;

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
    check-cast v6, Landroid/view/WindowManager;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

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
    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/internal/logging/MetricsLogger;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

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
    check-cast v11, Lcom/android/systemui/recents/OverviewProxyService;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

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
    check-cast v12, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

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
    check-cast v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

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
    check-cast v14, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->sysUiFlagsContainerProvider:Ljavax/inject/Provider;

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
    check-cast v15, Lcom/android/systemui/model/SysUiState;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->userTrackerProvider:Ljavax/inject/Provider;

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
    check-cast v16, Lcom/android/systemui/settings/UserTracker;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->commandQueueProvider:Ljavax/inject/Provider;

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
    check-cast v17, Lcom/android/systemui/statusbar/CommandQueue;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->pipOptionalProvider:Ljavax/inject/Provider;

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
    check-cast v18, Ljava/util/Optional;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->recentsOptionalProvider:Ljavax/inject/Provider;

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
    check-cast v19, Ljava/util/Optional;

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    .line 167
    .line 168
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 169
    .line 170
    .line 171
    move-result-object v20

    .line 172
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

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
    check-cast v21, Lcom/android/systemui/shade/ShadeController;

    .line 181
    .line 182
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

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
    check-cast v22, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 191
    .line 192
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

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
    check-cast v23, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v24, Landroid/os/Handler;

    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

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
    check-cast v25, Ljava/util/concurrent/Executor;

    .line 221
    .line 222
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

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
    check-cast v26, Ljava/util/concurrent/Executor;

    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

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
    check-cast v27, Lcom/android/internal/logging/UiEventLogger;

    .line 241
    .line 242
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navBarHelperProvider:Ljavax/inject/Provider;

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
    check-cast v28, Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 251
    .line 252
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainLightBarControllerProvider:Ljavax/inject/Provider;

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
    check-cast v29, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 261
    .line 262
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->lightBarControllerFactoryProvider:Ljavax/inject/Provider;

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
    check-cast v30, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->mainAutoHideControllerProvider:Ljavax/inject/Provider;

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
    check-cast v31, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 281
    .line 282
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->autoHideControllerFactoryProvider:Ljavax/inject/Provider;

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
    check-cast v32, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    .line 291
    .line 292
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->telecomManagerOptionalProvider:Ljavax/inject/Provider;

    .line 293
    .line 294
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    move-object/from16 v33, v1

    .line 299
    .line 300
    check-cast v33, Ljava/util/Optional;

    .line 301
    .line 302
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    .line 303
    .line 304
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    move-object/from16 v34, v1

    .line 309
    .line 310
    check-cast v34, Landroid/view/inputmethod/InputMethodManager;

    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->deadZoneProvider:Ljavax/inject/Provider;

    .line 313
    .line 314
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    move-object/from16 v35, v1

    .line 319
    .line 320
    check-cast v35, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 321
    .line 322
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    .line 323
    .line 324
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    move-object/from16 v36, v1

    .line 329
    .line 330
    check-cast v36, Lcom/android/systemui/util/DeviceConfigProxy;

    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    .line 333
    .line 334
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    move-object/from16 v37, v1

    .line 339
    .line 340
    check-cast v37, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 341
    .line 342
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->backAnimationProvider:Ljavax/inject/Provider;

    .line 343
    .line 344
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    move-object/from16 v38, v1

    .line 349
    .line 350
    check-cast v38, Ljava/util/Optional;

    .line 351
    .line 352
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->userContextProvider:Ljavax/inject/Provider;

    .line 353
    .line 354
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    move-object/from16 v39, v1

    .line 359
    .line 360
    check-cast v39, Lcom/android/systemui/settings/UserContextProvider;

    .line 361
    .line 362
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 363
    .line 364
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    move-object/from16 v40, v1

    .line 369
    .line 370
    check-cast v40, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 371
    .line 372
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    .line 373
    .line 374
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    move-object/from16 v41, v1

    .line 379
    .line 380
    check-cast v41, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 381
    .line 382
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->displayTrackerProvider:Ljavax/inject/Provider;

    .line 383
    .line 384
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    move-object/from16 v42, v1

    .line 389
    .line 390
    check-cast v42, Lcom/android/systemui/settings/DisplayTracker;

    .line 391
    .line 392
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    .line 393
    .line 394
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    move-object/from16 v43, v0

    .line 399
    .line 400
    check-cast v43, Lcom/android/systemui/basic/util/LogWrapper;

    .line 401
    .line 402
    invoke-static/range {v2 .. v43}, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->newInstance(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Ljava/util/Optional;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/basic/util/LogWrapper;)Lcom/android/systemui/navigationbar/NavigationBar;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    return-object v0
.end method
