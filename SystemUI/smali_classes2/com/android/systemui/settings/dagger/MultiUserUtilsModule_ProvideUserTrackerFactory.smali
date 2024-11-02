.class public final Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final iActivityManagerProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->iActivityManagerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    return-void
.end method

.method public static provideUserTracker(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)Lcom/android/systemui/settings/UserTrackerImpl;
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    move-object v1, v7

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/settings/UserTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    iput-boolean p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 23
    .line 24
    invoke-virtual {v7, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroid/content/IntentFilter;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v7, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    iget-object p3, v7, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {p1, v7, p0, p2, p3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iget-object p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->iActivityManager:Landroid/app/IActivityManager;

    .line 71
    .line 72
    new-instance p1, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;

    .line 73
    .line 74
    invoke-direct {p1, v7}, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;-><init>(Lcom/android/systemui/settings/UserTrackerImpl;)V

    .line 75
    .line 76
    .line 77
    const-string p2, "UserTrackerImpl"

    .line 78
    .line 79
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, v7, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 83
    .line 84
    invoke-static {p0, p2, v7}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/UserManager;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->iActivityManagerProvider:Ljavax/inject/Provider;

    .line 18
    .line 19
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/app/IActivityManager;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 26
    .line 27
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideUserTrackerFactory;->provideUserTracker(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)Lcom/android/systemui/settings/UserTrackerImpl;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
