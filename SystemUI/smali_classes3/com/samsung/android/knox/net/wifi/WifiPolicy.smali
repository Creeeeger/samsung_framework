.class public final Lcom/samsung/android/knox/net/wifi/WifiPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final ENGINE_ID_UCMENGINE:Ljava/lang/String; = "ucsengine"

.field public static final SECURITY_LEVEL_EAP_AKA:I = 0x19

.field public static final SECURITY_LEVEL_EAP_AKA_CCKM:I = 0x1b

.field public static final SECURITY_LEVEL_EAP_AKA_FT:I = 0x1a

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME:I = 0x1c

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_CCKM:I = 0x1e

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_FT:I = 0x1d

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_FAST_CCKM:I = 0x12

.field public static final SECURITY_LEVEL_EAP_FAST_FT:I = 0x11

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_LEAP_CCKM:I = 0x10

.field public static final SECURITY_LEVEL_EAP_LEAP_FT:I = 0xf

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_PEAP_CCKM:I = 0xa

.field public static final SECURITY_LEVEL_EAP_PEAP_FT:I = 0x9

.field public static final SECURITY_LEVEL_EAP_PWD:I = 0x13

.field public static final SECURITY_LEVEL_EAP_PWD_CCKM:I = 0x15

.field public static final SECURITY_LEVEL_EAP_PWD_FT:I = 0x14

.field public static final SECURITY_LEVEL_EAP_SIM:I = 0x16

.field public static final SECURITY_LEVEL_EAP_SIM_CCKM:I = 0x18

.field public static final SECURITY_LEVEL_EAP_SIM_FT:I = 0x17

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TLS_CCKM:I = 0xe

.field public static final SECURITY_LEVEL_EAP_TLS_FT:I = 0xd

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_EAP_TTLS_CCKM:I = 0xc

.field public static final SECURITY_LEVEL_EAP_TTLS_FT:I = 0xb

.field public static final SECURITY_LEVEL_FT_PSK:I = 0x8

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_SAE:I = 0x1f

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field public static final SECURITY_TYPE_OPEN:Ljava/lang/String; = "Open"

.field public static final SECURITY_TYPE_SAE:Ljava/lang/String; = "SAE"

.field public static final SECURITY_TYPE_WPA2_PSK:Ljava/lang/String; = "WPA2_PSK"

.field public static final SECURITY_TYPE_WPA_PSK:Ljava/lang/String; = "WPA_PSK"

.field public static TAG:Ljava/lang/String; = "WifiPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final activateWifiSsidRestriction(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.activateWifiSsidRestriction"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with wifi policy"

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

.method public final addBlockedNetwork(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "WifiPolicy.addBlockedNetwork"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final addNetworkWithRandomizationState(Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.addNetworkWithRandomizationState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addNetworkWithRandomizationState(Landroid/net/wifi/WifiConfiguration;Z)I

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "Failed talking with wifi policy"

    .line 25
    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method public final addWifiSsidsToBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.addWifiSsidsToBlackList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with Wifi Policy"

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

.method public final addWifiSsidsToWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList(List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Wifi policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addWifiSsidsToWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "*"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->addWifiSsidsToBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    sget-object p2, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->addWifiSsidsToWhiteList(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final allowOpenWifiAp(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.allowOpenWifiAp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with Wifi Policy"

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

.method public final allowWifiApSettingUserModification(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.allowWifiApSettingUserModification"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with Wifi Policy"

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

.method public final allowWifiScanning(ZLcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p2, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p2, "Failed talking with wifi policy"

    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final clearWifiSsidsFromBlackList()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.clearWifiSsidsFromBlackList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with Wifi Policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final clearWifiSsidsFromList()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.clearWifiSsidsFromList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->clearWifiSsidsFromWhiteList()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->clearWifiSsidsFromBlackList()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    return p0
.end method

.method public final clearWifiSsidsFromWhiteList()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.clearWifiSsidsFromWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with wifi policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final getAllowUserPolicyChanges()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with getAllowUserPolicyChanges"

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

.method public final getAllowUserProfiles(Z)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getAllowUserProfilesInternal(ZI)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final getAllowUserProfilesInternal(ZI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "Failed talking with getAllowUserProfiles"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final getAutomaticConnectionToWifi()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with getAutomaticConnectionToWifi"

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

.method public final getBlockedNetworks()Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "getBlockedNetworks - Failed talking with Wifi service"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final getMinimumRequiredSecurity()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with getSupportedSecurity"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getNetworkSSIDList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.getNetworkSSIDList"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "Failed at WiFi policy API getNetworkSSID"

    .line 28
    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public final getPasswordHidden()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with getPasswordHidden"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getPromptCredentialsEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with getPromptCredentialsEnabled"

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

.method public final getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "wifi_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with Wifi Policy"

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

.method public final getWifiProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed at WiFi policy API getWifiProfile"

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

.method public final getWifiSsidsFromBlackLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with Wifi policy"

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

.method public final getWifiSsidsFromWhiteLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with wifi policy"

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

.method public final isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isOpenWifiApAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with Wifi Policy"

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

.method public final isWifiAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with isWifiEnabled"

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

.method public final isWifiApSettingUserModificationAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with Wifi Policy"

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

.method public final isWifiScanningAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with wifi policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final isWifiSsidRestrictionActive()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.isWifiSsidRestrictionActive"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "Failed talking with wifi policy"

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

.method public final isWifiStateChangeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with isWifiEnabled"

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

.method public final removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.removeBlockedNetwork"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "removeBlockedNetwork - Failed talking with Wifi service"

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

.method public final removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.removeNetworkConfiguration"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at WiFi policy API removeNetworkConfiguration"

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

.method public final removeWifiSsidsFromBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.removeWifiSsidsFromBlackList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with Wifi Policy"

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

.method public final removeWifiSsidsFromWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.removeWifiSsidsFromWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with wifi policy"

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

.method public final setAllowUserPolicyChanges(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setAllowUserPolicyChanges"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setAllowUserPolicyChanges"

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

.method public final setAllowUserProfiles(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setAllowUserProfiles"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setAllowUserProfiles"

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

.method public final setAutomaticConnectionToWifi(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setAutomaticConnectionToWifi"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setAutomaticConnectionToWifi"

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

.method public final setMinimumRequiredSecurity(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setMinimumRequiredSecurity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setMinimumRequiredSecurity"

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

.method public final setPasswordHidden(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setPasswordHidden"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setPasswordHidden"

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

.method public final setPromptCredentialsEnabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setPromptCredentialsEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setPromptCredentialsEnabled"

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

.method public final setWifi(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with setWifiEnabled"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setWifiAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with setWifiEnabled"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setWifiApSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking with Wifi Policy"

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

.method public final setWifiProfile(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setWifiProfile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->mStorageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    const/16 v1, 0x11

    .line 27
    .line 28
    if-ge v0, v1, :cond_1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 52
    .line 53
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "Failed at WiFi policy API setWifiProfile"

    .line 62
    .line 63
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    return v2
.end method

.method public final setWifiStateChangeAllowed(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "WifiPolicy.setWifiStateChangeAllowed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with setWifiEnabled"

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
