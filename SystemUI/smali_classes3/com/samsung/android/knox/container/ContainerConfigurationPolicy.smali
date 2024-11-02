.class public final Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ERROR_INTERNAL_ERROR:I = -0x2

.field public static final ERROR_INVALID_KEY:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final FIDO_REQUEST_URI:Ljava/lang/String; = "fido_request_uri"

.field public static final FIDO_RESPONSE_URI:Ljava/lang/String; = "fido_response_uri"

.field public static final KEY_IMAGE:Ljava/lang/String; = "key-image"

.field public static final KEY_NAME:Ljava/lang/String; = "key-name"

.field public static final OPTION_CALLER_INFO:Ljava/lang/String; = "option_callerinfo"

.field public static final RES_TYPE_BADGE:I = 0x1

.field public static final RES_TYPE_NAME_ICON:I = 0x3

.field public static final RES_TYPE_PERSONAL_MODE_NAME:I = 0x5

.field public static final RES_TYPE_PROFILE_NAME:I = 0x4

.field public static final RES_TYPE_PROFILE_SWITCH_ICON:I = 0x2

.field public static TAG:Ljava/lang/String; = "ContainerConfigurationPolicy"

.field public static gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public static mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;


# instance fields
.field public mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field public mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static declared-synchronized getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "mum_container_policy"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
.end method

.method public static declared-synchronized getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "restriction_policy"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
.end method


# virtual methods
.method public final addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.addCrossProfileIntentFilter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    .line 9
    .line 10
    const/16 v1, 0xf

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/knox/EdmUtils;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {v0, p1, p2, p3, p0}, Lcom/samsung/android/knox/container/DependencyWrapper;->addCrossProfileIntentFilterMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final addHomeShortcutToPersonal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.addHomeShortcutToPersonal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "ContainerApplication PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addHomeShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, "Failed at Application PolicyService API addHomeShortcutToPersonal "

    .line 34
    .line 35
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return v1
.end method

.method public final addNetworkSSID(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.addNetworkSSID"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 33
    .line 34
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "Failed at ContainerConfigurationPolicy API addNetworkSSID"

    .line 43
    .line 44
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return v1
.end method

.method public final addPackageToExternalStorageSBABlackList(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.addPackageToExternalStorageSBABlackList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageSBABlackList"

    .line 50
    .line 51
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public final addPackageToExternalStorageWhiteList(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.addPackageToExternalStorageWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    const-string v2, ""

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    array-length v3, p2

    .line 35
    if-lez v3, :cond_3

    .line 36
    .line 37
    array-length v2, p2

    .line 38
    new-array v2, v2, [Ljava/lang/String;

    .line 39
    .line 40
    move v3, v1

    .line 41
    :goto_0
    array-length v4, p2

    .line 42
    if-ge v3, v4, :cond_2

    .line 43
    .line 44
    aget-object v4, p2, v3

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v2, v3

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string p2, ","

    .line 56
    .line 57
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 62
    .line 63
    new-instance p2, Lcom/samsung/android/knox/AppIdentity;

    .line 64
    .line 65
    invoke-direct {p2, p1, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p0, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 69
    .line 70
    .line 71
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    :cond_4
    return v1

    .line 76
    :catch_0
    move-exception p0

    .line 77
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string p2, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageWhiteList"

    .line 80
    .line 81
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return v1
.end method

.method public final addPackageToInstallWhiteList(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.addPackageToInstallWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    move v1, p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "Failed at ContainerConfigurationPolicy API addPackageToInstallWhiteList "

    .line 44
    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return v1
.end method

.method public final allowLayoutSwitching(Z)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "allowLayoutSwitching: allowSwitch "

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "ContainerConfigurationPolicy.allowLayoutSwitching"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->allowLayoutSwitching(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "PolicyService API allowLayoutSwitching "

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final allowRemoteControl(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.allowRemoteControl"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "Remote Control Service is not yet ready"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed at ContainerConfigurationPolicy API allowRemoteControl "

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return v1
.end method

.method public final checkBluetoothAndNFCAPICallerPermission()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Bluetooth And NFC caller permission check"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "current version : "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", Required version : "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ltz p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final checkContactsSharingAPICallerPermission()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Knox Phone Book Access Profile permission check"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "current version : "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", Required version : "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ltz p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final checkExternalSDCardAPICallerPermission()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "External SDCard API caller permission check"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "current version : "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", Required version : "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ltz p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final checkUsbHostModeAPICallerPermission()Z
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Usb Host Mode permission check"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "current version : "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", Required version : "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ltz p0, :cond_0

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.clearCrossProfileIntentFilters"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    .line 9
    .line 10
    const/16 v1, 0xf

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/knox/EdmUtils;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {v0, p1, p0}, Lcom/samsung/android/knox/container/DependencyWrapper;->clearCrossProfileIntentFiltersMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final clearNetworkSSID()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.clearNetworkSSID"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API clearNetworkSSID"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final clearPackagesFromExternalStorageSBABlackList()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.clearPackagesFromExternalStorageSBABlackList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageSBABlackList"

    .line 44
    .line 45
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final clearPackagesFromExternalStorageWhiteList()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.clearPackagesFromExternalStorageWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageWhiteList"

    .line 44
    .line 45
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final deleteHomeShortcutFromPersonal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.deleteHomeShortcutFromPersonal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "ContainerApplication PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->deleteHomeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, "Failed at Application PolicyService API deleteHomeShortcutFromPersonal "

    .line 34
    .line 35
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return v1
.end method

.method public final enableBluetooth(ZLandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.enableBluetooth"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableBluetooth(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "Failed at ContainerConfigurationPolicy API enableBluetooth"

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final enableExternalStorage(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.enableExternalStorage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableExternalStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "Failed at ContainerConfigurationPolicy API enableExternalStorage"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final enableNFC(ZLandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.enableNFC"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableNFC(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "Failed at ContainerConfigurationPolicy API enableNFC"

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final enableUsbAccess(ZLandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.enableUsbHostMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkUsbHostModeAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableUsbAccess(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "Failed at ContainerConfigurationPolicy API enableUsbAccess"

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final enforceMultifactorAuthentication(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.enforceMultifactorAuthentication"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "Failed at KnoxContainerManager API unlock "

    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    :goto_0
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "enforceMultifactorAuthentication result = "

    .line 41
    .line 42
    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "application_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getDPMService()Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "device_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getEnforceAuthForContainer()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Failed at KnoxContainerManager API unlock "

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return v1
.end method

.method public final getFIDOInfo()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "PolicyService is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getFIDOInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

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
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "PolicyService API getFIDOInfo "

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public final getHibernationTimeout()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-wide v1

    .line 17
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "Failed talking with ContainerPolicy "

    .line 28
    .line 29
    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-wide v1
.end method

.method public final getNetworkSSID()Ljava/util/List;
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
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "Failed at ContainerConfigurationPolicy API getNetworkSSID"

    .line 32
    .line 33
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    new-instance p0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public final getPackageSignaturesFromExternalStorageWhiteList(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed at ContainerConfigurationPolicy API getPackageSignaturesFromExternalStorageWhiteList"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public final getPackagesFromExternalStorageSBABlackList()Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageSBABlackList"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public final getPackagesFromExternalStorageWhiteList()Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageWhiteList"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public final getPackagesFromInstallWhiteList()Ljava/util/List;
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
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Failed at ContainerConfigurationPolicy API getPackagesFromInstallWhiteList "

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v1
.end method

.method public final getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "remoteinjection"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isBluetoothEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API isBluetoothEnabled"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isBluetoothEnabledBeforeFOTA()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabledBeforeFOTA(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API isBluetoothEnabled"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isContactsSharingEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkContactsSharingAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API isContactsSharingEnabled"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isExternalStorageEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API enableExternalStorage"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isLayoutSwitchingAllowed()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "isLayoutSwitchingAllowed is called..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isLayoutSwitchingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "PolicyService API isLayoutSwitchingAllowed "

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isMultifactorAuthenticationEnforced()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Failed at KnoxContainerManager API unlock "

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return v1
.end method

.method public final isNFCEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API isNFCEnabled"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isPackageInInstallWhiteList(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isPackageInInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at ContainerConfigurationPolicy API isPackageInInstallWhiteList "

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return v1
.end method

.method public final isRemoteControlAllowed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "Remote Control Service is not yet ready"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Failed at ContainerConfigurationPolicy API isRemoteControlAllowed "

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return v1
.end method

.method public final isResetContainerOnRebootEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isResetContainerOnRebootEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Failed talking with ContainerConfigurationPolicy "

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return v1
.end method

.method public final isSettingsOptionEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at ContainerConfigurationPolicy API isSettingsOptionEnabled"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method public final isUsbAccessEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkUsbHostModeAPICallerPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isUsbAccessEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Failed at ContainerConfigurationPolicy API isUsbAccessEnabled"

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final isUseSecureKeypadEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "ContainerRestriction PolicyService is not yet ready!!!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return v1
.end method

.method public final removeNetworkSSID(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.removeNetworkSSID"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 33
    .line 34
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "Failed at ContainerConfigurationPolicy API removeNetworkSSID"

    .line 43
    .line 44
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return v1
.end method

.method public final removePackageFromExternalStorageSBABlackList(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.removePackageFromExternalStorageSBABlackList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageSBABlackList"

    .line 50
    .line 51
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public final removePackageFromExternalStorageWhiteList(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.removePackageFromExternalStorageWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageWhiteList"

    .line 50
    .line 51
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public final removePackageFromInstallWhiteList(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.removePackageFromInstallWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    move v1, p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "Failed at ContainerConfigurationPolicy API removePackageFromInstallWhiteList "

    .line 44
    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return v1
.end method

.method public final resetContainerOnReboot(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.resetContainerOnReboot"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->resetContainerOnReboot(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with ContainerConfigurationPolicy "

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return v1
.end method

.method public final resetContainerPassword(Ljava/lang/String;I)I
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 8
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public final resetContainerPassword()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x2

    :goto_0
    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final setContactsSharingEnabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.setContactsSharingEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkContactsSharingAPICallerPermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "Failed at ContainerConfigurationPolicy API setContactsSharingEnabled"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final setCustomResource(ILandroid/os/Bundle;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setCustomResource is called..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "ContainerConfigurationPolicy.setCustomResource"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, -0x2

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "PolicyService is not yet ready!!!"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p1, p0, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setCustomResource(ILcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "PolicyService API setCustomResource "

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final setEnforceAuthForContainer(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.setEnforceAuthForContainer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed at KnoxContainerManager API unlock "

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return v1
.end method

.method public final setFIDOInfo(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.setFIDOInfo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setFIDOInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "PolicyService API setFIDOSinfo "

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final setHibernationTimeout(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.setHibernationTimeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    const-wide/32 v2, 0x5265c00

    .line 16
    .line 17
    .line 18
    cmp-long v0, p1, v2

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 37
    .line 38
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 39
    .line 40
    .line 41
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p2, "Failed talking with ContainerPolicy "

    .line 47
    .line 48
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return v1
.end method

.method public final setSettingsOptionEnabled(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.setSettingsOptionEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, "Failed at ContainerConfigurationPolicy API setSettingsOptionEnabled"

    .line 34
    .line 35
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public final setUseSecureKeypad(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "ContainerConfigurationPolicy.setUseSecureKeypad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with misc policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return v1
.end method
