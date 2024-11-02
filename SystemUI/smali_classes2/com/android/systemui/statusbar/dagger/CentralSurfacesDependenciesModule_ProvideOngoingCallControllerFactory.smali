.class public final Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final iActivityManagerProvider:Ljavax/inject/Provider;

.field public final indicatorScaleGardenerProvider:Ljavax/inject/Provider;

.field public final keyguardCallChipControllerProvider:Ljavax/inject/Provider;

.field public final loggerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final notifCollectionProvider:Ljavax/inject/Provider;

.field public final ongoingCallFlagsProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final statusBarWindowControllerProvider:Ljavax/inject/Provider;

.field public final swipeStatusBarAwayGestureHandlerProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->systemClockProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->iActivityManagerProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->swipeStatusBarAwayGestureHandlerProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->ongoingCallFlagsProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->keyguardCallChipControllerProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    iput-object p14, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    iput-object p15, p0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 33
    .line 34
    return-void
.end method

.method public static provideOngoingCallController(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;
    .locals 19

    .line 1
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 10
    .line 11
    move-object/from16 v5, p11

    .line 12
    .line 13
    iget-object v2, v5, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 14
    .line 15
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    sget-object v3, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-static/range {p8 .. p8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_1
    move-object v12, v3

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-static/range {p9 .. p9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_2
    move-object v13, v2

    .line 58
    new-instance v15, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 59
    .line 60
    move-object v2, v15

    .line 61
    move-object/from16 v3, p0

    .line 62
    .line 63
    move-object/from16 v4, p1

    .line 64
    .line 65
    move-object/from16 v5, p11

    .line 66
    .line 67
    move-object/from16 v6, p2

    .line 68
    .line 69
    move-object/from16 v7, p3

    .line 70
    .line 71
    move-object/from16 v8, p4

    .line 72
    .line 73
    move-object/from16 v9, p5

    .line 74
    .line 75
    move-object/from16 v10, p6

    .line 76
    .line 77
    move-object/from16 v11, p7

    .line 78
    .line 79
    move-object/from16 v14, p10

    .line 80
    .line 81
    move-object/from16 v18, v1

    .line 82
    .line 83
    move-object v1, v15

    .line 84
    move-object/from16 v15, p12

    .line 85
    .line 86
    move-object/from16 v16, p13

    .line 87
    .line 88
    move-object/from16 v17, p14

    .line 89
    .line 90
    invoke-direct/range {v2 .. v17}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;Lcom/android/systemui/dump/DumpManager;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallFlags:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 107
    .line 108
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 109
    .line 110
    move-object/from16 v2, v18

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 119
    .line 120
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 121
    .line 122
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 128
    .line 129
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->statusBarStateListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$statusBarStateListener$1;

    .line 130
    .line 131
    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 135
    .line 136
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 137
    .line 138
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->configurationListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->notifCollectionProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->systemClockProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/util/time/SystemClock;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->activityStarterProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

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
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->iActivityManagerProvider:Ljavax/inject/Provider;

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
    check-cast v7, Landroid/app/IActivityManager;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->loggerProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/systemui/dump/DumpManager;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->swipeStatusBarAwayGestureHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v11, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

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
    check-cast v12, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->ongoingCallFlagsProvider:Ljavax/inject/Provider;

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
    check-cast v13, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->keyguardCallChipControllerProvider:Ljavax/inject/Provider;

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
    check-cast v14, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

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
    check-cast v15, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 130
    .line 131
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    move-object/from16 v16, v0

    .line 136
    .line 137
    check-cast v16, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 138
    .line 139
    invoke-static/range {v2 .. v16}, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideOngoingCallControllerFactory;->provideOngoingCallController(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method
