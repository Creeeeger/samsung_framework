.class public final Lcom/android/keyguard/KeyguardDisplayManager_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final deviceStateHelperProvider:Ljavax/inject/Provider;

.field public final disableHandlerProvider:Ljavax/inject/Provider;

.field public final displayTrackerProvider:Ljavax/inject/Provider;

.field public final keyguardFoldControllerProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final navigationBarControllerLazyProvider:Ljavax/inject/Provider;

.field public final uiBgExecutorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->keyguardFoldControllerProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->disableHandlerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->navigationBarControllerLazyProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->displayTrackerProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->deviceStateHelperProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/keyguard/KeyguardPresentationDisabler;Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/Object;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 12

    .line 1
    new-instance v11, Lcom/android/keyguard/KeyguardDisplayManager;

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    check-cast v9, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

    .line 6
    .line 7
    move-object v0, v11

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object/from16 v5, p4

    .line 13
    .line 14
    move-object/from16 v6, p5

    .line 15
    .line 16
    move-object/from16 v7, p6

    .line 17
    .line 18
    move-object/from16 v8, p7

    .line 19
    .line 20
    move-object/from16 v10, p9

    .line 21
    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/keyguard/KeyguardPresentationDisabler;Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    .line 23
    .line 24
    .line 25
    return-object v11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->keyguardFoldControllerProvider:Ljavax/inject/Provider;

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
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->disableHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/keyguard/KeyguardPresentationDisabler;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->contextProvider:Ljavax/inject/Provider;

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
    check-cast v3, Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->navigationBarControllerLazyProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    .line 35
    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v5, v0

    .line 41
    check-cast v5, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->displayTrackerProvider:Ljavax/inject/Provider;

    .line 44
    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v6, v0

    .line 50
    check-cast v6, Lcom/android/systemui/settings/DisplayTracker;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 53
    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v7, v0

    .line 59
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    .line 62
    .line 63
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v8, v0

    .line 68
    check-cast v8, Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->deviceStateHelperProvider:Ljavax/inject/Provider;

    .line 71
    .line 72
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 77
    .line 78
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    move-object v10, p0

    .line 83
    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 84
    .line 85
    invoke-static/range {v1 .. v10}, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->newInstance(Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/keyguard/KeyguardPresentationDisabler;Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/Object;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)Lcom/android/keyguard/KeyguardDisplayManager;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
