.class public final Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics"

.field public static mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3
    new-instance v1, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "knoxnap"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final getNPAVersion()Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, "NetworkAnalytics"

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v0, "Called getNPAVersion"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->getNPAVersion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "RemoteException in getNPAVersion"

    .line 25
    .line 26
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final getNetworkMonitorProfiles()Ljava/util/List;
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
    const-string v0, "NetworkAnalytics"

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v1, "Called getNetworkMonitorProfiles"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v1, "RemoteException in getNetworkMonitorProfiles"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "NetworkAnalytics"

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v1, "Called getProfiles"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v1, "RemoteException in getProfiles"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final isProfileActivated(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "NetworkAnalytics"

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v1, "Called isProfileActivatedForUser"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string p1, "RemoteException in getNetworkMonitorProfiles"

    .line 27
    .line 28
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public final registerNetworkMonitorProfile(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "NetworkAnalytics.registerNetworkMonitorProfile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "NetworkAnalytics"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    const-string v0, "Called registerNetworkMonitorProfile"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "RemoteException in registerNetworkMonitorClient"

    .line 34
    .line 35
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p0, "The service is null"

    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final start(Ljava/lang/String;)I
    .locals 3

    const-string v0, "NetworkAnalytics"

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "NetworkAnalytics.start(String)"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "Called start"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "record_type"

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, p0, v2}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException in start"

    .line 7
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final start(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "NetworkAnalytics"

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "NetworkAnalytics.start(String, Bundle)"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "Called start"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, p1, p2, v1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException in start"

    .line 12
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final stop(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "NetworkAnalytics"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    const-string v1, "NetworkAnalytics.stop"

    .line 6
    .line 7
    invoke-static {p0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    :try_start_0
    const-string p0, "Called stop"

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-interface {p0, p1, v2, v1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "RemoteException in stop"

    .line 34
    .line 35
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, -0x1

    .line 39
    return p0
.end method

.method public final unregisterNetworkMonitorProfile(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "NetworkAnalytics"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    const-string v2, "NetworkAnalytics.unregisterNetworkMonitorProfile"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    const-string v1, "Called unregisterNetworkMonitorProfile"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics;->unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "RemoteException in unregisterNetworkMonitorProfile"

    .line 34
    .line 35
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, -0x1

    .line 39
    return p0
.end method
