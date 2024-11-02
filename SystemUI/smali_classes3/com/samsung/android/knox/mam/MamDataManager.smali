.class public final Lcom/samsung/android/knox/mam/MamDataManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final KNOX_CUSTOM_MANAGER_SERVICE:Ljava/lang/String; = "knoxcustom"

.field public static final TAG:Ljava/lang/String; = "MamDataManager"

.field public static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 6
    .line 7
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/mam/MamDataManager;
    .locals 4

    .line 1
    const-class v0, Lcom/samsung/android/knox/mam/MamDataManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/mam/MamDataManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/mam/MamDataManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 50
    .line 51
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/mam/MamDataManager;->sMamDeviceManager:Lcom/samsung/android/knox/mam/MamDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0

    .line 57
    throw v1
.end method


# virtual methods
.method public final getContentResolver()Landroid/content/ContentResolver;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "currentActivityThread"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "getSystemContext"

    .line 26
    .line 27
    new-array v4, v2, [Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    .line 56
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

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
    iput-object v0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isKnoxPrivacyPolicyAcceptedInitially()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/mam/MamDataManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z

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
    const-string v0, "MamDataManager"

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

.method public final setKnoxPrivacyPolicyByUserSettings(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/mam/MamDataManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/mam/MamDataManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKnoxPrivacyPolicyByUserSettings(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "MamDataManager"

    .line 15
    .line 16
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method
