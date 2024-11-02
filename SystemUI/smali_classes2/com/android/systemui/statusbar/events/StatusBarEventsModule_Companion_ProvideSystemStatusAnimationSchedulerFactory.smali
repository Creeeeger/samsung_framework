.class public final Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final chipAnimationControllerProvider:Ljavax/inject/Provider;

.field public final coordinatorProvider:Ljavax/inject/Provider;

.field public final coroutineScopeProvider:Ljavax/inject/Provider;

.field public final desktopManagerProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final executorProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final statusBarWindowControllerProvider:Ljavax/inject/Provider;

.field public final statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;


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
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->coordinatorProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->chipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->systemClockProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->coroutineScopeProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->executorProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->desktopManagerProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    return-void
.end method

.method public static provideSystemStatusAnimationScheduler(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;
    .locals 12

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule;->Companion:Lcom/android/systemui/statusbar/events/StatusBarEventsModule$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/android/systemui/flags/Flags;->PLUG_IN_STATUS_BAR_CHIP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    move-object v5, p3

    .line 25
    move-object/from16 v6, p4

    .line 26
    .line 27
    move-object/from16 v7, p5

    .line 28
    .line 29
    move-object/from16 v8, p6

    .line 30
    .line 31
    move-object/from16 v9, p7

    .line 32
    .line 33
    move-object/from16 v10, p8

    .line 34
    .line 35
    move-object/from16 v11, p9

    .line 36
    .line 37
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

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
    check-cast v1, Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->coordinatorProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->chipAnimationControllerProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->systemClockProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/util/time/SystemClock;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->coroutineScopeProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->executorProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->desktopManagerProvider:Ljavax/inject/Provider;

    .line 73
    .line 74
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v8, v0

    .line 79
    check-cast v8, Lcom/android/systemui/util/DesktopManager;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 82
    .line 83
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v9, v0

    .line 88
    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    move-object v10, p0

    .line 97
    check-cast v10, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 98
    .line 99
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/statusbar/events/StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory;->provideSystemStatusAnimationScheduler(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
