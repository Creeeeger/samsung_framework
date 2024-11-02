.class public final Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final bgDispatcherProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final layoutInflaterProvider:Ljavax/inject/Provider;

.field public final logBufferProvider:Ljavax/inject/Provider;

.field public final mainDispatcherProvider:Ljavax/inject/Provider;

.field public final pluginManagerProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;

.field public final scopeProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->scopeProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->mainDispatcherProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->bgDispatcherProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->logBufferProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    return-void
.end method

.method public static getClockRegistry(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/log/LogBuffer;)Lcom/android/systemui/shared/clocks/ClockRegistry;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    new-instance v13, Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_CUSTOM_CLOCKS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    const/4 v7, 0x1

    .line 15
    new-instance v8, Lcom/android/systemui/shared/clocks/DefaultClockProvider;

    .line 16
    .line 17
    sget-object v0, Lcom/android/systemui/flags/Flags;->STEP_CLOCK_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    move-object/from16 v2, p6

    .line 24
    .line 25
    move-object/from16 v3, p7

    .line 26
    .line 27
    invoke-direct {v8, p0, v3, v2, v0}, Lcom/android/systemui/shared/clocks/DefaultClockProvider;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Z)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f130a8c

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const/4 v11, 0x0

    .line 38
    const-string v12, "System"

    .line 39
    .line 40
    move-object v0, v13

    .line 41
    move-object v1, p0

    .line 42
    move-object v2, p1

    .line 43
    move-object/from16 v3, p2

    .line 44
    .line 45
    move-object/from16 v4, p3

    .line 46
    .line 47
    move-object/from16 v5, p4

    .line 48
    .line 49
    move-object/from16 v10, p8

    .line 50
    .line 51
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/shared/clocks/ClockRegistry;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZZLcom/android/systemui/plugins/ClockProvider;Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;ZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v13}, Lcom/android/systemui/shared/clocks/ClockRegistry;->registerListeners()V

    .line 55
    .line 56
    .line 57
    return-object v13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->pluginManagerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/plugins/PluginManager;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->scopeProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->mainDispatcherProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->bgDispatcherProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->featureFlagsProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/flags/FeatureFlags;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->resourcesProvider:Ljavax/inject/Provider;

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
    check-cast v7, Landroid/content/res/Resources;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->layoutInflaterProvider:Ljavax/inject/Provider;

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
    check-cast v8, Landroid/view/LayoutInflater;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->logBufferProvider:Ljavax/inject/Provider;

    .line 74
    .line 75
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    move-object v9, p0

    .line 80
    check-cast v9, Lcom/android/systemui/log/LogBuffer;

    .line 81
    .line 82
    invoke-static/range {v1 .. v9}, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->getClockRegistry(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/log/LogBuffer;)Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
