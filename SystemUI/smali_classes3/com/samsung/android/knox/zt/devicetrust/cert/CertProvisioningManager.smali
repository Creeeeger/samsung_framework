.class public final Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;


# instance fields
.field public final mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    .line 14
    .line 15
    const-string v0, "CertProvisioningManager failed : "

    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    .line 10
    .line 11
    const-string p2, "provisionCert failed : "

    .line 12
    .line 13
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method
