.class public final Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static MAXIMUM_APNS_OVER_IPC:I = 0x3e8

.field public static TAG:Ljava/lang/String; = "ApnSettingsPolicy"


# instance fields
.field public lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static generateToken(II)I
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sub-int/2addr p1, p0

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr p1, p0

    .line 14
    return p1
.end method


# virtual methods
.method public final createApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ApnSettingsPolicy.createApnSettings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    :try_start_0
    sget v2, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 11
    .line 12
    const/16 v3, 0x11

    .line 13
    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v2, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    const-string v3, "IP"

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    :cond_0
    iget-object v2, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    :cond_1
    return-wide v0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-interface {v2, p0, v3, p1}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "Failed at update APN Settings policy "

    .line 61
    .line 62
    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "createApnSettings: "

    .line 70
    .line 71
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-wide v0
.end method

.method public final deleteApn(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ApnSettingsPolicy.deleteApn"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "Failed at APN Settings policy API deleteApn()"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "deleteApn: "

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public final getApnList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/16 v3, 0x64

    .line 15
    .line 16
    :try_start_1
    invoke-static {v2, v3}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->generateToken(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v3, v4, v2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sget v4, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 36
    .line 37
    if-eq v3, v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    return-object v1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    move-object v0, v1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "Failed at APN Settings policy API getApnList()"

    .line 54
    .line 55
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_2
    return-object v0
.end method

.method public final getApnSettings(J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ApnSettingsPolicy.getApnSettings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    move-object v0, p0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "Failed at APN Settings policy API getApnSettings()"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getPreferredApnSettings()Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 11
    .line 12
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    move-object v0, p0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "Failed at APN Settings policy API getPreferredApnSettings()"

    .line 22
    .line 23
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "apn_settings_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final saveApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->updateApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final setPreferredApn(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ApnSettingsPolicy.setPreferredApn"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "Failed at APN Settings policy API setPreferredApn()"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "setPreferredApn: "

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public final updateApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ApnSettingsPolicy.updateApnSettings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-wide v2, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-wide v2, v0

    .line 16
    :goto_0
    const/4 v4, 0x0

    .line 17
    :try_start_0
    sget v5, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 18
    .line 19
    const/16 v6, 0x11

    .line 20
    .line 21
    if-ge v5, v6, :cond_3

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    const-string v6, "IP"

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    :cond_1
    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    :cond_2
    return v4

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    iget-object v5, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 57
    .line 58
    invoke-interface {v5, p0, v4, p1}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    sget-object p1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string v5, "Failed at update APN Settings policy "

    .line 67
    .line 68
    invoke-static {p1, v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    cmp-long p0, v2, v0

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    :cond_5
    sget-object p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string p1, "updateApnSettings: "

    .line 79
    .line 80
    invoke-static {p1, v4, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v4
.end method
