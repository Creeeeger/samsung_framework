.class public final Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final GEAR_PACKAGE_FILTER:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PrivateCustomDeviceManager"

.field public static gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

.field public static mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "com.samsung.android.gear1plugin"

    .line 9
    .line 10
    const-string v1, "com.samsung.android.wms"

    .line 11
    .line 12
    const-string v2, "com.samsung.android.hostmanager"

    .line 13
    .line 14
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 25
    .line 26
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1
.end method


# virtual methods
.method public final getGearNotificationStateInternal(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    and-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    .line 20
    .line 21
    array-length p1, p0

    .line 22
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    if-ge v1, p1, :cond_1

    .line 25
    .line 26
    aget-object v2, p0, v1

    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    return v0

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "PrivateCustomDeviceManager"

    .line 40
    .line 41
    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 42
    .line 43
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final getLoadingLogoPath()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "PrivateCustomDeviceManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "knoxcustom"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getUsbConnectionTypeInternal()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

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
    const-string v0, "PrivateCustomDeviceManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final isAutoOpenLastAppAllowed()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

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
    const-string v0, "PrivateCustomDeviceManager"

    .line 16
    .line 17
    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

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
    const-string p1, "PrivateCustomDeviceManager"

    .line 16
    .line 17
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final stayInForeground(Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stayInDexForegroundMode(Landroid/content/ComponentName;)Z

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
    const-string p1, "PrivateCustomDeviceManager"

    .line 16
    .line 17
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method
