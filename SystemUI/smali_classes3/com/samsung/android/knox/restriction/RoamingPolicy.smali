.class public final Lcom/samsung/android/knox/restriction/RoamingPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static TAG:Ljava/lang/String; = "RoamingPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "roaming_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isRoamingDataEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with roaming policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isRoamingPushEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with roaming policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isRoamingSyncEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with roaming policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isRoamingVoiceCallsEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with roaming policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final setRoamingData(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RoamingPolicy.setRoamingData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
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
    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Failed talking with roaming policy"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setRoamingPush(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RoamingPolicy.setRoamingPush"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
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
    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Failed talking with roaming policy"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setRoamingSync(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RoamingPolicy.setRoamingSync"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
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
    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Failed talking with roaming policy"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setRoamingVoiceCalls(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RoamingPolicy.setRoamingVoiceCalls"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
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
    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Failed talking with roaming policy"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method
