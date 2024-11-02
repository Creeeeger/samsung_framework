.class public Lcom/samsung/systemui/splugins/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static TAG:Ljava/lang/String; = "ActivityManagerProxyImpl"


# instance fields
.field mUserId:I

.field mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;-><init>(Lcom/samsung/systemui/splugins/ActivityManagerProxy;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 14
    .line 15
    return-void
.end method

.method private register()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 6
    .line 7
    sget-object v1, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentUser()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    .line 3
    .line 4
    const/16 v1, -0x2710

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->register()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public unregister()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
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
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
