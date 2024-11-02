.class public final Lcom/samsung/android/knox/net/vpn/VpnPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static TAG:Ljava/lang/String; = "VpnPolicy"


# instance fields
.field public lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final allowOnlySecureConnections(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.allowOnlySecureConnections"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowOnlySecureConnections(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at Vpn policy API allowOnlySecureConnections "

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowUserAddProfiles(Z)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserAddProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Failed to communicate with Vpn Policy service"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final allowUserChangeProfiles(Z)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserChangeProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Failed to communicate with Vpn Policy service"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final allowUserSetAlwaysOn(Z)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserSetAlwaysOn(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Failed to communicate with Vpn Policy service"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final checkRacoonSecurity([Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API checkRacoonSecurity "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final createProfile(Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.createProfile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->createProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at Vpn policy API createProfile"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final deleteProfile(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.deleteProfile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->deleteProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Failed at Vpn policy API deleteProfile"

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

.method public final getAlwaysOnProfile()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Failed to communicate with Vpn Policy service"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getDnsDomains "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getDnsServers "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getForwardRoutes "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getCaCertificate"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getSharedSecret"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getCaCertificate"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getId"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Failed at Vpn policy API getId"

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getIpSecIdentifier "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getL2TPSecret "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getOcspServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at Vpn policy API getOcspServerUrl "

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getServerName"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Failed at Vpn policy API getServerName"

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "vpn_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at Vpn policy API getState"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getSupportedConnectionTypes()Ljava/util/List;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getSupportedConnectionTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at Vpn policy API getSupportedConnectionTypes "

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getType"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Failed at Vpn policy API getType"

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getUserName"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getUserPassword"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final getVpnList()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.getVpnList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getVPNList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

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
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed at Vpn policy API getVpnList"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final isAdminProfile(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.isAdminProfile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isAdminProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "Failed at Vpn policy API isAdminProfile"

    .line 31
    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.isL2TPSecretEnabled"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isL2TPSecretEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Failed at Vpn policy API isL2TPSecretEnabled "

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isOnlySecureConnectionsAllowed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.isOnlySecureConnectionsAllowed"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "Failed at Vpn policy API isOnlySecureConnectionsAllowed "

    .line 28
    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.isPPTPEncryptionEnabled"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Failed at Vpn policy API getCaCertificate"

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isUserAddProfilesAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserAddProfilesAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isUserAddProfilesAllowed(Z)Z
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUserChangeProfilesAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserChangeProfilesAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isUserChangeProfilesAllowed(Z)Z
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUserSetAlwaysOnAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserSetAlwaysOnAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isUserSetAlwaysOnAllowed(Z)Z
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setAlwaysOnProfile(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Failed to communicate with Vpn Policy service"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setDnsDomains"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setDnsDomains "

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setDnsServers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setDnsServers "

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setForwardRoutes"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setForwardRoutes "

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setIPSecCaCertificate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setCaCertificate"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setIPSecPreSharedKey"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setSharedSecret"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setIPSecUserCertificate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setCaCertificate"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setId"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "Failed at Vpn policy API setId"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setIpSecIdentifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setIpSecIdentifier "

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setL2TPSecret"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setL2TPSecret"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setOcspServerUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setOcspServerUrl"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setOcspServerUrl "

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setPPTPEncryptionEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setCaCertificate"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setProfileName"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "Failed at Vpn policy API setName"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setServerName"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
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
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "Failed at Vpn policy API setServerName"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setUserName"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setServerName"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "VpnPolicy.setUserPassword"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed at Vpn policy API setServerName"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
