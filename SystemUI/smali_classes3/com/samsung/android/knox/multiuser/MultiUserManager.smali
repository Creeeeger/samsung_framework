.class public final Lcom/samsung/android/knox/multiuser/MultiUserManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiUserManager"

.field public static gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager; = null

.field public static isMuSupportInfoReady:Z = false

.field public static isMuSupported:Z = false

.field public static mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "multi_user_manager_service"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4
    new-instance v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .locals 2

    .line 7
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    .line 10
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "multi_user_manager_service"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final allowMultipleUsers(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "MultiUserManager.allowMultipleUsers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowMultipleUsers(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p1, -0x1

    .line 24
    if-eq p1, p0, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    move v1, p1

    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p1, "Not Supported in this device"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "Failed talking with multi user service"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "MultiUserManager"

    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return v1
.end method

.method public final allowUserCreation(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "allowUserCreation"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "MultiUserManager.allowUserCreation"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserCreation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Failed talking with multi user service. "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "MultiUserManager"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    return p0
.end method

.method public final allowUserRemoval(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "allowUserRemoval"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "MultiUserManager.allowUserRemoval"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserRemoval(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Failed talking with multi user service. "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "MultiUserManager"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    return p0
.end method

.method public final createUser(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "createUser"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "MultiUserManager.createUser"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->createUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Failed talking with multi user service. "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "MultiUserManager"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p0, -0x1

    .line 58
    :goto_0
    return p0
.end method

.method public final enforceMultiUserSupport()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "This device does not support multiple users"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public final declared-synchronized getMuSupportInfo()Z
    .locals 4

    .line 1
    const-string v0, "Failed talking with multi user service. "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sput-boolean v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    sput-boolean v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    const-string v2, "MultiUserManager"

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return v0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0

    .line 56
    throw v0
.end method

.method public final getUsers()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getUsers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "MultiUserManager.getUsers"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->getUsers(Lcom/samsung/android/knox/ContextInfo;)[I

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Failed talking with multi user service. "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "MultiUserManager"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    return-object p0
.end method

.method public final isUserCreationAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserCreationAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isUserCreationAllowed(Z)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserCreationAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final isUserRemovalAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserRemovalAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isUserRemovalAllowed(Z)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isUserRemovalAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final multipleUsersAllowed()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not Supported in this device"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final multipleUsersAllowed(Z)Z
    .locals 2

    .line 4
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with multi user service"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MultiUserManager"

    .line 7
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public final multipleUsersSupported()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Failed talking with multi user service"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "MultiUserManager"

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final removeUser(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "removeUser"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "MultiUserManager.removeUser"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->removeUser(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Failed talking with multi user service. "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "MultiUserManager"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    return p0
.end method
