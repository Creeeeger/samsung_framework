.class public final Lcom/samsung/android/knox/kpcc/KPCCManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DRX_1280_MSEC:I = 0x3

.field public static final DRX_2560_MSEC:I = 0x4

.field public static final DRX_320_MSEC:I = 0x1

.field public static final DRX_640_MSEC:I = 0x2

.field public static final DRX_DEFAULT:I = 0x0

.field public static final DRX_EMPTY:I = -0x1

.field public static final ERROR_ADMIN_ALREADY_SET:I = -0x3

.field public static final ERROR_FAIL:I = -0x1

.field public static final ERROR_INVALID_VALUE:I = -0x4

.field public static final ERROR_NOT_SUPPORTED:I = -0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KPCCManager"

.field public static final mSync:Ljava/lang/Object;

.field public static volatile sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;


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
    sput-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/kpcc/KPCCManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/samsung/android/knox/kpcc/KPCCManager;->mSync:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/samsung/android/knox/kpcc/KPCCManager;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lcom/samsung/android/knox/kpcc/KPCCManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    .line 27
    .line 28
    move-object v0, v2

    .line 29
    :cond_0
    monitor-exit v1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final allowRestrictedNetworkCapability(ILjava/lang/String;I)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public final getDrxValue()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getPackagesAllowedOnRestrictedNetworks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/kpcc/IKPCCManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "kpcc"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/kpcc/IKPCCManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kpcc/IKPCCManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getTelephonyDrxValue()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getUnrestrictedNetworkCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setDrxValue(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "KPCCManager.setDrxValue"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, -0x2

    .line 9
    return p0
.end method

.method public final setPackageOnRestrictedNetworks(ILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "KPCCManager.setPackageOnRestrictedNetworks"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, -0x2

    .line 9
    return p0
.end method
