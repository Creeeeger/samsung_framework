.class public Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final SDK_NOT_SUPPORTED:D = 0.0

.field private static final TAG:Ljava/lang/String; = "SdpTrustedOperations"

.field private static _instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;


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
    iput-object v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 15
    .line 16
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public deleteTokenFromTrusted(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2
    .line 3
    const-string v0, "SdpTrustedOperations"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->deleteToeknFromTrusted(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "Failed to call save token to the trusted"

    .line 14
    .line 15
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/16 p0, -0xd

    .line 19
    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-string p1, "deleteToeknFromTrusted failed "

    .line 23
    .line 24
    invoke-static {p1, p0, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getSupportedSDKVersion()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "SdpTrustedOperations"

    .line 12
    .line 13
    const-string v1, "Failed to connect sdp service..."

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2
    .line 3
    const-string v0, "SdpTrustedOperations"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/dar/IDarManagerService;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "Failed to call save token to the trusted"

    .line 14
    .line 15
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/16 p0, -0xd

    .line 19
    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-string p1, "saveTokenIntoTrusted failed "

    .line 23
    .line 24
    invoke-static {p1, p0, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 2
    .line 3
    const-string v0, "SdpTrustedOperations"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/dar/IDarManagerService;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "Failed to call save token to the trusted"

    .line 14
    .line 15
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "unlockViaTrusted failed "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
