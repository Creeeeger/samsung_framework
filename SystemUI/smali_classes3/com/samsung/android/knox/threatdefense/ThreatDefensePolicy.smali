.class public final Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_PACKAGE_RULES_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

.field public static final ERROR_CAST_CLASS:I = -0x68

.field public static final ERROR_INIT_JSON_OBJECT:I = -0x6b

.field public static final ERROR_INVALID_ARGUMENT:I = -0x6a

.field public static final ERROR_INVALID_PKG:I = -0x65

.field public static final ERROR_INVALID_PROC:I = -0x69

.field public static final ERROR_NO_PACKAGE_RULES:I = -0x66

.field public static final ERROR_POLICY_VERSION:I = -0x64

.field public static final ERROR_RESTRICT_CHAR:I = -0x67

.field public static final ERROR_SIGNATURE:I = -0x6c

.field public static final KNOX_MOBILE_THREAT_DEFENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final TAG:Ljava/lang/String; = "ThreatDefensePolicy"

.field public static final mSynchronized:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;


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
    sput-object v0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mSynchronized:Ljava/lang/Object;

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
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getProcessId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    array-length p1, p0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, p1, :cond_0

    .line 25
    .line 26
    aget v2, p0, v1

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "ThreatDefensePolicy"

    .line 41
    .line 42
    const-string v0, "Failed to call getProcessId()"

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public final declared-synchronized getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "threat_defense_service"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;
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

.method public final hasPackageRules()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z

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
    const-string v0, "ThreatDefensePolicy"

    .line 18
    .line 19
    const-string v1, "Failed to call hasPackageRules()"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final procReader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

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
    const-string p1, "ThreatDefensePolicy"

    .line 18
    .line 19
    const-string v0, "Failed to call procReader()"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final processProcReader(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

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
    const-string p1, "ThreatDefensePolicy"

    .line 18
    .line 19
    const-string p2, "Failed to call processProcReader()"

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final setPackageRules(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->getThreatDefenseService()Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mThreatDefenseService:Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;->setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

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
    const-string p1, "ThreatDefensePolicy"

    .line 18
    .line 19
    const-string v0, "Failed to call setPackageRules()"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, -0x1

    .line 28
    return p0
.end method
