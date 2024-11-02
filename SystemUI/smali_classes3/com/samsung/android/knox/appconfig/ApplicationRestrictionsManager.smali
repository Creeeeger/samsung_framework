.class public final Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsManager"

.field public static volatile sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

.field public static final settingsRestrictionsPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->settingsRestrictionsPackageList:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 3

    const-class v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.samsung.android.knox.kpecore"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 7
    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 8
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by com.samsung.android.knox.kpecore"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

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
    iput-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getSettingsRestrictionsPackageList()Ljava/util/List;
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
    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->settingsRestrictionsPackageList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isSettingPolicyApplied()Z
    .locals 2

    .line 1
    const-string v0, "com.android.settings"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    return v1
.end method

.method public final setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 4
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, p1

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_2
    move-object v4, p2

    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    iget-object v1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 8
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final setApplicationRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6

    .line 9
    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 10
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.kpecore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p1

    if-nez p2, :cond_2

    .line 14
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    :cond_2
    move-object v3, p2

    if-nez p3, :cond_3

    .line 15
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_3
    move-object v4, p3

    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    iget-object v1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 17
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 18
    :cond_4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final setKeyedAppStatesReport(Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    move-object v3, p1

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    new-instance p2, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_1
    move-object v4, p2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move v5, p3

    .line 37
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyedAppStatesReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 38
    .line 39
    .line 40
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    return p0

    .line 43
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0

    .line 48
    :cond_2
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    .line 49
    .line 50
    return p0
.end method
