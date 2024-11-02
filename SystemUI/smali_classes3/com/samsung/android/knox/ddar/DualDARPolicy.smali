.class public Lcom/samsung/android/knox/ddar/DualDARPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDARPolicy$DUAL_DAR_VERSION_CODES;
    }
.end annotation


# static fields
.field public static final DD_POLICY_ENABLED:I = 0x1

.field public static final DD_POLICY_GID_RESTRICTION:I = 0x8

.field public static final DD_POLICY_KERNEL_CRYPTO:I = 0x4

.field public static final DD_POLICY_USER_SPACE_CRYPTO:I = 0x2

.field public static final DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field private static final DUAL_DAR_VERSION_1_3_0:Ljava/lang/String; = "1.3.0"

.field private static final DUAL_DAR_VERSION_1_4_0:Ljava/lang/String; = "1.4.0"

.field private static final DUAL_DAR_VERSION_1_4_1:Ljava/lang/String; = "1.4.1"

.field private static final DUAL_DAR_VERSION_1_5_0:Ljava/lang/String; = "1.5.0"

.field private static final DUAL_DAR_VERSION_1_5_1:Ljava/lang/String; = "1.5.1"

.field private static final DUAL_DAR_VERSION_1_6_0:Ljava/lang/String; = "1.6.0"

.field public static final ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final KEY_CONFIG_CLIENT_LOCATION:Ljava/lang/String; = "dualdar-config-client-location"

.field public static final KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"

.field private static TAG:Ljava/lang/String; = "DualDARPolicy"


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "DualDARPolicy Service is NULL"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static getDualDARVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.6.0"

    .line 2
    .line 3
    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DualDARPolicy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public static isDualDarSupportedForManagedDevice()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method


# virtual methods
.method public clearPolicy()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "clearPolicy() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "getService() is null"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "clearPolicy Remote exception"

    .line 31
    .line 32
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public clearResetPasswordTokenForInner()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.clearResetPasswordTokenForInner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->clearResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;)Z

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
    move-exception p0

    .line 22
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "clearResetPasswordTokenForInner() Remote exception: "

    .line 25
    .line 26
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public getConfig()Landroid/os/Bundle;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "getService() is null"

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "getConfig Remote exception"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public getPasswordMinimumLengthForInner()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I

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
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "getPasswordMinimumLengthForInner() Remote exception: "

    .line 18
    .line 19
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    return v1
.end method

.method public isActivePasswordSufficientForInner()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.isActivePasswordSufficientForInner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->isActivePasswordSufficientForInner(Lcom/samsung/android/knox/ContextInfo;)Z

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
    move-exception p0

    .line 22
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "isActivePasswordSufficientForInner() Remote exception: "

    .line 25
    .line 26
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public isResetPasswordTokenActiveForInner()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.isResetPasswordTokenActiveForInner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->isResetPasswordTokenActiveForInner(Lcom/samsung/android/knox/ContextInfo;)Z

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
    move-exception p0

    .line 22
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "isResetPasswordTokenActive() Remote exception: "

    .line 25
    .line 26
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public resetPasswordWithTokenForInner(Ljava/lang/String;[B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.resetPasswordWithTokenForInner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->resetPasswordWithTokenForInner(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

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
    move-exception p0

    .line 22
    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "resetPasswordWithTokenForInner() Remote exception: "

    .line 25
    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public setConfig(Landroid/os/Bundle;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.setConfig"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "getService() is null"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "setConfig Remote exception"

    .line 31
    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public setPasswordMinimumLengthForInner(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.setPasswordMinimumLengthForInner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;I)Z

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
    move-exception p0

    .line 22
    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "setPasswordMinimumLengthForInner() Remote exception: "

    .line 25
    .line 26
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public setResetPasswordTokenForInner([B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DualDARPolicy.setResetPasswordTokenForInner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;[B)Z

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
    move-exception p0

    .line 22
    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "setResetPasswordTokenForInner() Remote exception: "

    .line 25
    .line 26
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v1
.end method
