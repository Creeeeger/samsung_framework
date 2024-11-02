.class public interface abstract Lcom/android/systemui/dagger/SysUIComponent;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency;
.end method

.method public abstract createDumpManager()Lcom/android/systemui/dump/DumpManager;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getFoldStateLogger()Ljava/util/Optional;
.end method

.method public abstract getFoldStateLoggingProvider()Ljava/util/Optional;
.end method

.method public abstract getInitController()Lcom/android/systemui/InitController;
.end method

.method public abstract getMediaMuteAwaitConnectionCli()Ljava/util/Optional;
.end method

.method public abstract getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;
.end method

.method public abstract getNearbyMediaDevicesManager()Ljava/util/Optional;
.end method

.method public abstract getPerUserStartables()Ljava/util/Map;
.end method

.method public abstract getPostStartables()Ljava/util/Map;
.end method

.method public abstract getPreStartables()Ljava/util/Map;
.end method

.method public abstract getSafeUIStartables()Ljava/util/Map;
.end method

.method public abstract getStartables()Ljava/util/Map;
.end method

.method public abstract getSysUIUnfoldComponent()Ljava/util/Optional;
.end method

.method public abstract getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;
.end method

.method public abstract getUnfoldTransitionProgressForwarder()Ljava/util/Optional;
.end method

.method public abstract getUnfoldTransitionProgressProvider()Ljava/util/Optional;
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getSysUIUnfoldComponent()Ljava/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v1, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getMediaMuteAwaitConnectionCli()Ljava/util/Optional;

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNearbyMediaDevicesManager()Ljava/util/Optional;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v4, 0x10700f8

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    array-length v1, v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    move v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v1, v2

    .line 56
    :goto_0
    xor-int/2addr v1, v3

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->uiBgExecutor:Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    iget-object v4, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    .line 65
    .line 66
    invoke-virtual {v1, v3, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 87
    .line 88
    invoke-interface {v1, v0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getFoldStateLoggingProvider()Ljava/util/Optional;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/4 v3, 0x2

    .line 98
    invoke-direct {v1, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getFoldStateLogger()Ljava/util/Optional;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    const/4 v3, 0x3

    .line 111
    invoke-direct {v1, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getUnfoldTransitionProgressProvider()Ljava/util/Optional;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    .line 122
    .line 123
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V
.end method

.method public abstract inject(Lcom/android/systemui/doze/AODIntentService;)V
.end method

.method public abstract inject(Lcom/android/systemui/plank/protocol/TestProtocolProvider;)V
.end method

.method public abstract inject(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
.end method

.method public abstract provideBootAnimationFinishedImpl()Lcom/android/systemui/BootAnimationFinishedCacheImpl;
.end method

.method public abstract provideBootAnimationFinishedTrigger()Lcom/android/systemui/BootAnimationFinishedTrigger;
.end method

.method public abstract provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
.end method
