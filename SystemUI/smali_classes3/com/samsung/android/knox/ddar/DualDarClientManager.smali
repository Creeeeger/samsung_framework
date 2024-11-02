.class public Lcom/samsung/android/knox/ddar/DualDarClientManager;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DualDarClientManager"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;


# instance fields
.field private final mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    .line 13
    .line 14
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->establishSecureSession()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    const-string p0, "DualDarClientManager"

    .line 22
    .line 23
    const-string p1, "initializeSecureSession failed!"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public onAgentReconnected()V
    .locals 2

    .line 1
    const-string v0, "DualDarClientManager"

    .line 2
    .line 3
    const-string v1, "onAgentReconnected!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->onAgentReconnected()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->teardownSecureSession()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    const-string p0, "DualDarClientManager"

    .line 22
    .line 23
    const-string p1, "terminateSecureSession failed!"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method
