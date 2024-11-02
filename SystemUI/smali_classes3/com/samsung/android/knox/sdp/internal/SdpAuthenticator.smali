.class public Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpAuthenticator"

.field private static sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;


# instance fields
.field private mService:Lcom/samsung/android/knox/dar/IDarManagerService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dar"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 15
    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method


# virtual methods
.method public onBiometricsAuthenticated(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "SdpAuthenticator"

    .line 12
    .line 13
    const-string v0, "Failed to call SDP API"

    .line 14
    .line 15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/16 p0, -0xd

    .line 19
    .line 20
    :goto_0
    if-nez p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public onDeviceOwnerLocked(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "SdpAuthenticator"

    .line 12
    .line 13
    const-string v0, "Failed to call SDP API"

    .line 14
    .line 15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/16 p0, -0xd

    .line 19
    .line 20
    :goto_0
    if-nez p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
