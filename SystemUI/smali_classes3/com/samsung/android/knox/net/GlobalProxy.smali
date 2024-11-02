.class public final Lcom/samsung/android/knox/net/GlobalProxy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static TAG:Ljava/lang/String; = "GlobalProxy"


# instance fields
.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final canUsePacOrAuthConfig()Z
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public final getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/IMiscPolicy;->getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "RemoteException at method getGlobalProxy"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "misc_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/samsung/android/knox/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    xor-int/2addr p0, v0

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :cond_1
    :goto_0
    return v0
.end method

.method public final setGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 4

    .line 1
    const-string v0, "RemoteException at method setGlobalProxy"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/IMiscPolicy;->clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/GlobalProxy;->isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->canUsePacOrAuthConfig()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 41
    .line 42
    const-string v3, "GlobalProxy.setGlobalProxy"

    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p1, Lcom/samsung/android/knox/net/ProxyProperties;->mHostname:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    iget v2, p1, Lcom/samsung/android/knox/net/ProxyProperties;->mPortNumber:I

    .line 56
    .line 57
    if-gez v2, :cond_3

    .line 58
    .line 59
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string p1, "inValid proxyPort"

    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 76
    .line 77
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    .line 78
    .line 79
    .line 80
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    return p0

    .line 82
    :catch_1
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    return v1
.end method
