.class public final Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_LICENSE_REGISTRATION_UMC_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_UMC_INTERNAL"

.field public static final ACTION_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

.field public static final ERROR_ANOTHER_PROCESS_IN_PLACE:I = 0x25a

.field public static final ERROR_INTERNAL:I = 0x12d

.field public static final ERROR_INTERNAL_SERVER:I = 0x191

.field public static final ERROR_INVALID_BINDING:I = 0xd0

.field public static final ERROR_INVALID_LICENSE:I = 0xc9

.field public static final ERROR_INVALID_PACKAGE_NAME:I = 0xcc

.field public static final ERROR_LICENSE_ACTIVATION_NOT_FOUND:I = 0x2bf

.field public static final ERROR_LICENSE_DEACTIVATED:I = 0x2bc

.field public static final ERROR_LICENSE_EXPIRED:I = 0x2bd

.field public static final ERROR_LICENSE_QUANTITY_EXHAUSTED:I = 0x2be

.field public static final ERROR_LICENSE_QUANTITY_EXHAUSTED_ON_AUTO_RELEASE:I = 0x2c0

.field public static final ERROR_LICENSE_TERMINATED:I = 0xcb

.field public static final ERROR_NETWORK_DISCONNECTED:I = 0x1f5

.field public static final ERROR_NETWORK_GENERAL:I = 0x1f6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_CURRENT_DATE:I = 0xcd

.field public static final ERROR_NULL_PARAMS:I = 0x65

.field public static final ERROR_SIGNATURE_MISMATCH:I = 0xce

.field public static final ERROR_UNKNOWN:I = 0x66

.field public static final ERROR_USER_DISAGREES_LICENSE_AGREEMENT:I = 0x259

.field public static final ERROR_VERSION_CODE_MISMATCH:I = 0xcf

.field public static final EXTRA_LICENSE_ACTIVATION_INITIATOR:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ACTIVATION_INITIATOR"

.field public static final EXTRA_LICENSE_ATTESTATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

.field public static final EXTRA_LICENSE_DATA_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

.field public static final EXTRA_LICENSE_DATA_REQUEST_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

.field public static final EXTRA_LICENSE_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

.field public static final EXTRA_LICENSE_GRANTED_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

.field public static final EXTRA_LICENSE_KEY:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

.field public static final EXTRA_LICENSE_RESULT_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

.field public static final EXTRA_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

.field public static final LICENSE_ACTIVATION_INITIATOR_ADMIN:I = 0x384

.field public static final LICENSE_RESULT_TYPE_ACTIVATION:I = 0x320

.field public static final LICENSE_RESULT_TYPE_DEACTIVATION:I = 0x322

.field public static final LICENSE_RESULT_TYPE_VALIDATION:I = 0x321

.field public static final TAG:Ljava/lang/String; = "KnoxKnoxEnterpriseLicenseManager"

.field public static gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

.field public static lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "enterprise_license_policy"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4
    new-instance v2, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

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

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 2

    .line 7
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    .line 10
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

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

.method public static getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "enterprise_license_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final activateLicense(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    .line 3
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final activateLicense(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 2

    .line 11
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$2;-><init>(Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    sget-object p2, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p2, p0, p1, v0, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 14
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final activateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 6
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 8
    new-instance v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$1;-><init>(Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object p3, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final activateLicenseForUMC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->activateLicense(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final deActivateLicense(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    .line 3
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final deActivateLicense(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 2

    .line 11
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 12
    new-instance v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$4;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$4;-><init>(Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    sget-object p2, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p2, p0, p1, v0, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 14
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final deActivateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 6
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final deActivateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 8
    new-instance v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$3;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager$3;-><init>(Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object p3, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final deActivateLicenseForUMC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->deActivateLicense(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getAllLicenseActivationsInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/ActivationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getAllLicenseActivationsInfos()Ljava/util/List;

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
    const-string v0, "KnoxKnoxEnterpriseLicenseManager"

    .line 16
    .line 17
    const-string v1, "Failed talking to License policy service to get all licenses statuses"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final getLicenseActivationInfo()Lcom/samsung/android/knox/license/ActivationInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getLicenseActivationInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service to get license status"

    .line 3
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public final getLicenseActivationInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;
    .locals 2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object p0, p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getLicenseActivationInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed talking to License policy service to get license status for package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxKnoxEnterpriseLicenseManager"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEulaBypassAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->isEulaBypassAllowed(Ljava/lang/String;)Z

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
    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    .line 16
    .line 17
    const-string v0, "Failed talking to License policy service to check for EULA bypass"

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

.method public final isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

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
    const-string p1, "KnoxKnoxEnterpriseLicenseManager"

    .line 16
    .line 17
    const-string p2, "Failed talking to License policy service "

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

.method public final processLicenseResponse(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .locals 10

    const-string v2, "-1"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->processLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z

    move-result v0

    return v0
.end method

.method public final processLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .locals 11

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KnoxKnoxEnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
