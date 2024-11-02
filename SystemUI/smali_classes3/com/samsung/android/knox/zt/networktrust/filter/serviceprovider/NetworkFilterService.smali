.class public final Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_NOTIFY_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

.field public static final ERROR_BAD_STATE:I = -0xa

.field public static final ERROR_INTERNAL:I = -0x8

.field public static final ERROR_INVALID_JSON_FORMAT:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NULL_PARAMETER:I = -0x7

.field public static final ERROR_PACKAGE_NOT_REGISTERED:I = -0x5

.field public static final ERROR_PROFILE_LIMIT_REACHED:I = -0x6

.field public static final ERROR_PROFILE_NOT_FOUND:I = -0x2

.field public static final ERROR_PROFILE_RUNNING:I = -0x9

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_CODE"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final RESULT_API_PAUSE:I = 0x66

.field public static final RESULT_API_START:I = 0x64

.field public static final RESULT_API_STOP:I = 0x65

.field public static final STATUS_PACKAGE_REGISTERED:I = 0x1

.field public static final STATUS_PACKAGE_UNREGISTERED:I = 0x2

.field public static final STATUS_PROFILE_IDLE:I = 0x6

.field public static final STATUS_PROFILE_PAUSED:I = 0x4

.field public static final STATUS_PROFILE_RUNNING:I = 0x3

.field public static final STATUS_PROFILE_STOPPED:I = 0x5

.field public static final TAG:Ljava/lang/String; = "knoxNwFilter-NetworkFilterService"

.field public static mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getInstanceValidation()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "unknown error occured while fetching the instance "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "knoxNwFilter-NetworkFilterService"

    .line 23
    .line 24
    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "knox_nwFilterMgr_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 18
    .line 19
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.samsung.android.knox.app.networkfilter"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const/4 p0, -0x1

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public final getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getAllProfiles()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string v0, "Failed to getAllProfiles"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public final getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed to getConfig"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public final getProfileStatus(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getProfileStatus(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed at getProfileStatus"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed at getRegisteredListeners"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public final pause(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->pause(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed to pause"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final registerListeners(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->registerListeners(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed at registerListeners"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "NetworkFilterService.setConfig"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 18
    .line 19
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 25
    .line 26
    const-string p1, "Failed to setConfig"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public final start(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->start(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed to start"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->stop(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterService"

    .line 15
    .line 16
    const-string p1, "Failed to stop"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
