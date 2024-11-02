.class public final Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

.field public callback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;

.field public final context:Landroid/content/Context;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public isDefaultHome:Z

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public userUnlocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->bgHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 13
    .line 14
    new-instance p2, Landroid/content/IntentFilter;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 20
    .line 21
    const-class p3, Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    invoke-virtual {p3, p4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Z

    .line 38
    .line 39
    const-class p3, Landroid/app/role/RoleManager;

    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/app/role/RoleManager;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleManager:Landroid/app/role/RoleManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->updateHomeStatus()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    .line 54
    .line 55
    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Z

    .line 66
    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p3, "init userUnlocked="

    .line 74
    .line 75
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p0, " for userid="

    .line 82
    .line 83
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string p1, "TaskBarInteractor"

    .line 94
    .line 95
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final updateHomeStatus()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/app/SemRoleManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/app/SemRoleManager;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "android.app.role.HOME"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/SemRoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "com.sec.android.app.launcher"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method
