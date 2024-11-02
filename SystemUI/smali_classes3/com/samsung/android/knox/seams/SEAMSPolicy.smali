.class public final Lcom/samsung/android/knox/seams/SEAMSPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final CLIPBOARD_DISABLE_BIDIRECTIONAL:I = 0x1

.field public static final CLIPBOARD_ENABLE_BIDIRECTIONAL:I = 0x0

.field public static final DEBUG:Z

.field public static final ERROR_ALREADY_CONTAINER_APP:I = -0x9

.field public static final ERROR_CERTS_NOT_MATCHED:I = -0xd

.field public static final ERROR_CONTAINER_COUNTS_OVERFLOW:I = -0x7

.field public static final ERROR_CONTAINER_ID_MISMATCH:I = -0xc

.field public static final ERROR_CONTAINER_NOT_EMPTY:I = -0xb

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_NO_CERTS:I = -0xe

.field public static final FALSE:I = 0x0

.field public static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GET_SERVICE_ERROR:I = -0xa

.field public static final IRM_PLATFORM_APPTYPE:I = 0x7

.field public static final IRM_UNTRUST_APPTYPE:I = 0x8

.field public static final NOT_INSTALLED:I = -0x4

.field public static final POLICY_FAILED:I = -0x1

.field public static final POLICY_OK:I = 0x0

.field public static final POLICY_REFUSED:I = -0x2

.field public static final RUNNING:I = -0x8

.field public static final SET_DEFAULT_MASK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SEAMS"

.field public static final TRUE:I = 0x1

.field public static mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.build.type"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "eng"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4
    new-instance v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    .line 5
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 2

    .line 7
    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    .line 10
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final activateDomain()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public final activateDomain(Z)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method

.method public final addAppToContainer(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    .line 8
    .line 9
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->changeAppDomain(Ljava/lang/String;Z)I

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
    const-string p0, "SEAMS"

    .line 15
    .line 16
    const-string p1, "Failed to change the app domain"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    return p0
.end method

.method public final createSEContainer()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final deActivateDomain()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final forceAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string p0, "Service is null"

    .line 8
    .line 9
    const-string p2, "SEAMS"

    .line 10
    .line 11
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    const-string p0, "Process ID rejected."

    .line 23
    .line 24
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final getAMSLog()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAMSLogLevel()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getAMSMode()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getAVCLog()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getActivationStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getDataType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDataType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDomain(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSEAMSLog()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSEContainerIDs()[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSELinuxMode()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getSepolicyVersion()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final declared-synchronized getService()Lcom/samsung/android/knox/seams/ISEAMS;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "SEAMService"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public final getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final hasKnoxContainers()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final hasSEContainers()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEAMS"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

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
    const-string p0, "Failed to check the authenticity of the caller"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string p0, "SystemService null. Returning GET_SERVICE_ERROR."

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/16 p0, -0xa

    .line 27
    .line 28
    return p0
.end method

.method public final isSEAndroidLogDumpStateInclude()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final isSEPolicyAutoUpdateEnabled()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final loadContainerSetting(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final relabelAppDir(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final relabelData()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final removeAppFromContainer(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public final removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method

.method public final removeSEContainer(I)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final setAMSLogLevel(I)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final setSEAndroidLogDumpStateInclude(Z)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method
