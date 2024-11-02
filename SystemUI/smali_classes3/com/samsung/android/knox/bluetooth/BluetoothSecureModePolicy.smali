.class public final Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String; = "BTSecureModePolicy"

.field public static mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "bluetooth_secure_mode_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BluetoothSecureModePolicy.addBluetoothDevicesToWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

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
    const-string p1, "BTSecureModePolicy"

    .line 25
    .line 26
    const-string v0, "Failed talking to BT Secure Mode service "

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

.method public final disableSecureMode()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BluetoothSecureModePolicy.disableSecureMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z

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
    const-string v0, "BTSecureModePolicy"

    .line 25
    .line 26
    const-string v1, "Failed talking to BT Secure Mode service "

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

.method public final enableDeviceWhiteList(Z)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BluetoothSecureModePolicy.enableDeviceWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    const-string p1, "BTSecureModePolicy"

    .line 25
    .line 26
    const-string v0, "Failed talking to BT Secure Mode service "

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

.method public final enableSecureMode(Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BluetoothSecureModePolicy.enableSecureMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z

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
    const-string p1, "BTSecureModePolicy"

    .line 25
    .line 26
    const-string p2, "Failed talking to BT Secure Mode service "

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

.method public final getBluetoothDevicesFromWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    const-string v0, "BTSecureModePolicy"

    .line 18
    .line 19
    const-string v1, "Failed talking to BT Secure Mode service "

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

.method public final getSecureModeConfiguration()Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

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
    const-string v0, "BTSecureModePolicy"

    .line 18
    .line 19
    const-string v1, "Failed talking to BT Secure Mode service "

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

.method public final isDeviceWhiteListEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    const-string v0, "BTSecureModePolicy"

    .line 18
    .line 19
    const-string v1, "Failed talking to BT Secure Mode service "

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

.method public final isSecureModeEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    const-string v0, "BTSecureModePolicy"

    .line 18
    .line 19
    const-string v1, "Failed talking to BT Secure Mode service "

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

.method public final removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BluetoothSecureModePolicy.removeBluetoothDevicesFromWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

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
    const-string p1, "BTSecureModePolicy"

    .line 25
    .line 26
    const-string v0, "Failed talking to BT Secure Mode service "

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
