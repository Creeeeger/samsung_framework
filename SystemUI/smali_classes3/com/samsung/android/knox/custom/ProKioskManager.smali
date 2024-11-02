.class public final Lcom/samsung/android/knox/custom/ProKioskManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProKioskManager"

.field public static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;


# instance fields
.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 25
    .line 26
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    .line 32
    throw v1
.end method


# virtual methods
.method public final getExitUI(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "ProKioskManager"

    .line 16
    .line 17
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getHardKeyIntentState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getHideNotificationMessages()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final getHomeActivity()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getInputMethodRestrictionState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInputMethodRestrictionState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getMultiWindowFixedState(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getPowerDialogCustomItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getPowerDialogCustomItemsState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final getPowerDialogItems()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final getPowerDialogOptionMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x2

    .line 23
    return p0
.end method

.method public final getProKioskState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getProKioskString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "ProKioskManager"

    .line 16
    .line 17
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "knoxcustom"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getSettingsEnabledItems()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getStatusBarClockState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarClockState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final getStatusBarIconsState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarIconsState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final getStatusBarMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarMode()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x2

    .line 23
    return p0
.end method

.method public final getStatusBarNotificationsState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarNotificationsState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final getUsbMassStorageState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbMassStorageState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final getUsbNetAddress(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "ProKioskManager"

    .line 16
    .line 17
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getUsbNetState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getVolumeKeyAppState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final getVolumeKeyAppsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "ProKioskManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setExitUI"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExitUI(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setHardKeyIntentState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setHardKeyIntentState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setHideNotificationMessages(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setHideNotificationMessages"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHideNotificationMessages(I)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setHomeActivity(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setHomeActivity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeActivity(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setInputMethodRestrictionState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setInputMethodRestrictionState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethodRestrictionState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setMultiWindowFixedState(II)I
    .locals 0

    .line 1
    const/4 p0, -0x6

    .line 2
    return p0
.end method

.method public final setPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setPassCode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPassCode(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setPowerDialogCustomItems"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItems(Ljava/util/List;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setPowerDialogCustomItemsState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setPowerDialogCustomItemsState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItemsState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setPowerDialogItems(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setPowerDialogItems"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogItems(I)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setPowerDialogOptionMode(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setPowerDialogOptionMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogOptionMode(I)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setProKioskState(ZLjava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setProKioskState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setProKioskString(ILjava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setProKioskString"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskString(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setSettingsEnabledItems(ZI)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setSettingsEnabledItems"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsEnabledItems(ZI)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setStatusBarClockState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setStatusBarClockState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarClockState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setStatusBarIconsState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setStatusBarIconsState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarIconsState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setStatusBarMode(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setStatusBarMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarMode(I)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setStatusBarNotificationsState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setStatusBarNotificationsState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarNotificationsState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setUsbMassStorageState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setUsbMassStorageState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbMassStorageState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setUsbNetAddresses"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setUsbNetState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setUsbNetState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setVolumeKeyAppState(Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setVolumeKeyAppState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppState(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final setVolumeKeyAppsList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.setVolumeKeyAppsList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppsList(Ljava/util/List;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.startProKioskMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final stopProKioskMode(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ProKioskManager.stopProKioskMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopProKioskMode(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "ProKioskManager"

    .line 37
    .line 38
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method
