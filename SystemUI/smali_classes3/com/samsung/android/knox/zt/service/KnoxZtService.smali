.class public final Lcom/samsung/android/knox/zt/service/KnoxZtService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SERVICE_NAME_KNOXZT:Ljava/lang/String; = "knoxzt"

.field public static final TAG:Ljava/lang/String; = "KnoxZtService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

.field public final mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            "Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final attestKey(Ljava/lang/String;[B)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> attestKey"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->attestKey(Ljava/lang/String;[BZ)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string p1, "<= attestKey"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return p0
.end method

.method public final getAppIdStatus(Ljava/security/cert/X509Certificate;Landroid/content/Context;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getAppIdStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p0, v1, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getAppIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;[Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const-string p1, "<= getAppIdStatus"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return p0
.end method

.method public final getCertificate(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/security/cert/Certificate;
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->mCertificate:Ljava/security/cert/Certificate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCertificates([Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[Ljava/security/cert/Certificate;
    .locals 2

    .line 1
    array-length p0, p1

    .line 2
    new-array p0, p0, [Ljava/security/cert/Certificate;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget-object v1, p1, v0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->mCertificate:Ljava/security/cert/Certificate;

    .line 11
    .line 12
    aput-object v1, p0, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object p0
.end method

.method public final getChallenge(Ljava/security/cert/X509Certificate;)[B
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getChallenge"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getChallenge(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "<= getChallenge"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final getDeviceId(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getDeviceId"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceId(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "<= getDeviceId"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final getDeviceIdStatus(Ljava/security/cert/X509Certificate;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getDeviceIdStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string p1, "<= getDeviceIdStatus"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final getInodeNumber(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "unix:ino"

    .line 9
    .line 10
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Failed to get ino for "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ", reason : "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    :goto_0
    return-object p0
.end method

.method public final getIntegrityStatus(Ljava/security/cert/X509Certificate;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getIntegrityStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getIntegrityStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string p1, "<= getIntegrityStatus"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final getOrigin(Ljava/security/cert/X509Certificate;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getOrigin"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getOrigin(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string p1, "<= getOrigin"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    const-string p0, "Succeeded to get pfd : "

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 19
    .line 20
    const-string p2, "Only normal file is supported for IPC"

    .line 21
    .line 22
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    const/high16 p2, 0x10000000

    .line 27
    .line 28
    invoke-static {v1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object p2, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    sget-object p2, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Failed to get pfd : "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ", reason : "

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object v0
.end method

.method public final getParcelableCertificate(Ljava/security/cert/Certificate;)Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getParcelableCertificates([Ljava/security/cert/Certificate;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
    .locals 3

    .line 1
    array-length p0, p1

    .line 2
    new-array p0, p0, [Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget-object v1, p1, v0

    .line 9
    .line 10
    new-instance v2, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 13
    .line 14
    .line 15
    aput-object v2, p0, v0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object p0
.end method

.method public final getParcelableProfile(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;)Lcom/samsung/android/knox/zt/service/ParcelableProfile;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v19, Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    .line 12
    .line 13
    iget v5, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    .line 14
    .line 15
    iget-object v6, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v10, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    .line 26
    .line 27
    iget-object v12, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    .line 30
    .line 31
    iget v14, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

    .line 32
    .line 33
    iget-object v15, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    .line 34
    .line 35
    move-object/from16 v16, v15

    .line 36
    .line 37
    iget-object v15, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 v17, v15

    .line 40
    .line 41
    iget v15, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    .line 42
    .line 43
    iget v0, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    .line 44
    .line 45
    move/from16 v18, v0

    .line 46
    .line 47
    move-object/from16 v0, v19

    .line 48
    .line 49
    move/from16 v20, v15

    .line 50
    .line 51
    move-object/from16 v15, v16

    .line 52
    .line 53
    move-object/from16 v16, v17

    .line 54
    .line 55
    move/from16 v17, v20

    .line 56
    .line 57
    invoke-direct/range {v0 .. v18}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    return-object v19
.end method

.method public final getRootOfTrustStatus(Ljava/security/cert/X509Certificate;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getRootOfTrustStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getRootOfTrustStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string p1, "<= getRootOfTrustStatus"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final getSecurityLevel(Ljava/security/cert/X509Certificate;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> getSecurityLevel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getSecurityLevel(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string p1, "<= getSecurityLevel"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;
    .locals 5

    .line 1
    :try_start_0
    const-string p0, "android.os.ServiceManager"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "getService"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v3, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v2, "knoxzt"

    .line 24
    .line 25
    aput-object v2, v1, v4

    .line 26
    .line 27
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    check-cast p0, Landroid/os/IBinder;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    const-string v0, "failed to find knoxzt service"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public final provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> provisionCert"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getParcelableProfile(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;)Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/service/ParcelableProfile;Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string p1, "<= provisionCert"

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return p0
.end method

.method public final startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            ")I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> startMonitoringDomains"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;

    .line 13
    .line 14
    invoke-direct {v2, p0, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string p1, "<= startMonitoringDomains"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            ")I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> startMonitoringFiles"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "path"

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    const-string v1, "pfd"

    .line 50
    .line 51
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getInodeNumber(Ljava/lang/String;)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const-string v3, "ino"

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-instance v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;

    .line 76
    .line 77
    invoke-direct {v1, p0, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, p1, v0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    sget-object p1, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    const-string p2, "<= startMonitoringFiles"

    .line 87
    .line 88
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return p0
.end method

.method public final startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> startTracing"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string p0, "listener already presents"

    .line 23
    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;

    .line 30
    .line 31
    invoke-direct {v1, p0, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, p1, p2, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-virtual {p0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string p0, "<= startTracing"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return p2
.end method

.method public final stopMonitoringDomains()I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> stopMonitoringDomains"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringDomains()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const-string v1, "<= stopMonitoringDomains"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return p0
.end method

.method public final stopMonitoringFiles()I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> stopMonitoringFiles"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringFiles()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const-string v1, "<= stopMonitoringFiles"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return p0
.end method

.method public final stopTracing(ILcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=> stopTracing"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string p0, "listener doesn\'t present"

    .line 23
    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopTracing(ILcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const-string p1, "<= stopTracing"

    .line 59
    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return p0
.end method

.method public final supportMultipleListeners(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method
