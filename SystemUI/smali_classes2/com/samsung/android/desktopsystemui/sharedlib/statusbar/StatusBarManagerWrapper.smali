.class public Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSU]StatusBarManagerWrapper"

.field private static final commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;


# instance fields
.field private mService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method private getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "statusbar"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "[DSU]StatusBarManagerWrapper"

    .line 21
    .line 22
    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 29
    .line 30
    return-object p0
.end method


# virtual methods
.method public addCallbacks(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearCallbacks()V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->clearCallback()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getThemeAttributeId(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public onClearAllNotifications(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p3, v1, v1, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    move-object v1, p1

    .line 14
    move v2, p2

    .line 15
    move-object v3, p3

    .line 16
    move v4, p4

    .line 17
    move v5, p5

    .line 18
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public registerDesktopbar()V
    .locals 4

    .line 1
    const-string v0, "[DSU]StatusBarManagerWrapper"

    .line 2
    .line 3
    const-string/jumbo v1, "registerStatusBarAsType result:"

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {p0, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " mDisabledFlags1:"

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget p0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " mTransientBarTypes:"

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Fail to register DesktopBar:"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public removeCallbacks(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
