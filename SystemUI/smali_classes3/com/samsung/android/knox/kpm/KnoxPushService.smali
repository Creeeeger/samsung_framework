.class public final Lcom/samsung/android/knox/kpm/KnoxPushService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final KPM_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BIND_KNOX_PUSH_SERVICE"

.field public static final KPM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.pushmanager"

.field public static final KPM_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.pushmanager.controller.RegiControllerFromSdk"

.field public static final SUPPORTED_KNOX_VERSION:I = 0x1b

.field public static final TAG:Ljava/lang/String; = "KnoxPushService"

.field public static mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;


# instance fields
.field public conn:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

.field public mProcessPendingRequest:Z

.field public mTrackOpsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;",
            "Lcom/samsung/android/knox/kpm/RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/kpm/KnoxPushService$1;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->conn:Landroid/content/ServiceConnection;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    .line 29
    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/kpm/KnoxPushService;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kpm/KnoxPushService;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/kpm/KnoxPushService;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "KnoxPushService"

    const-string v1, "context is null"

    .line 1
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/samsung/android/knox/kpm/KnoxPushService;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;

    .line 5
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mPushPolicy:Lcom/samsung/android/knox/kpm/KnoxPushService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isOSVersionSupported()Z
    .locals 4

    .line 1
    const-string v0, "ro.product.first_api_level"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "isOSVersionSupported: "

    .line 9
    .line 10
    const-string v3, "KnoxPushService"

    .line 11
    .line 12
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    if-lt v0, v2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const-string v2, "os is not supported firstApiLevel: "

    .line 22
    .line 23
    invoke-static {v2, v0, v3}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public static sAKmKeytypeExist()Z
    .locals 4

    .line 1
    const-string v0, "KnoxPushService"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "ro.security.keystore.keytype"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "sakm"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "sakm exist"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "sAKmKeytypeExist: "

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    return v0
.end method


# virtual methods
.method public final declared-synchronized addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z
    .locals 2

    .line 1
    const-string v0, "addToTrackMap:  "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getTrackMapSize()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    const-string p1, "KnoxPushService"

    .line 11
    .line 12
    const-string p2, "previous request is not finished"

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "KnoxPushService"

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getTrackMapSize()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public final attestDeviceSupported()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->sAKKeytypeExist()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isOSVersionSupported()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final bindService()Z
    .locals 5

    .line 1
    const-string v0, "bindService: "

    .line 2
    .line 3
    const-string v1, "bindService: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    const-string v3, "KnoxPushService"

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 27
    .line 28
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    :try_start_1
    monitor-exit p0

    .line 39
    return v2

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    const-string v3, "KnoxPushService"

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 66
    .line 67
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "com.samsung.android.knox.pushmanager"

    .line 74
    .line 75
    const-string v3, "com.samsung.android.knox.pushmanager.controller.RegiControllerFromSdk"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string v1, "com.samsung.android.knox.intent.action.BIND_KNOX_PUSH_SERVICE"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->conn:Landroid/content/ServiceConnection;

    .line 88
    .line 89
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    const-string v0, "KnoxPushService"

    .line 94
    .line 95
    const-string v1, "bind service:"

    .line 96
    .line 97
    invoke-static {v1, p0, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return p0

    .line 101
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    throw v0
.end method

.method public final declared-synchronized clearTrackMap()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized getTrackMapSize()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final handlePendingRequest()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getTrackMapSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->clearTrackMap()V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    .line 21
    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/samsung/android/knox/kpm/RequestInfo;

    .line 54
    .line 55
    iget v4, v2, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    .line 56
    .line 57
    iget-boolean v2, v2, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    .line 58
    .line 59
    const-string v5, "KnoxPushService"

    .line 60
    .line 61
    const-string v6, "process pending request: cmd: "

    .line 62
    .line 63
    const-string v7, ", force: "

    .line 64
    .line 65
    invoke-static {v6, v4, v7, v2, v5}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eq v4, v1, :cond_3

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    if-eq v4, v2, :cond_2

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    if-eq v4, v2, :cond_1

    .line 75
    .line 76
    const-string v2, "KnoxPushService"

    .line 77
    .line 78
    const-string v3, "wrong cmd: "

    .line 79
    .line 80
    invoke-static {v3, v4, v2}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isRegistered(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/kpm/KnoxPushService;->unRegisterDevice(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/kpm/KnoxPushService;->registerDevice(ZLcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    monitor-enter p0

    .line 97
    const/4 v0, 0x0

    .line 98
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw v0

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    throw v0
.end method

.method public final hasPackage(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "KnoxPushService"

    .line 2
    .line 3
    const-string v1, "appInfo: "

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v2, 0x80

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Package not found : "

    .line 37
    .line 38
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    :goto_0
    return p0
.end method

.method public final isChinaModel()Z
    .locals 2

    .line 1
    const-string p0, "ro.csc.countryiso_code"

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "countryIsoCode: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "KnoxPushService"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v0, "CN"

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const-string p0, "CN is not supported"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final isEaSupported()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->isSupported()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const-string p0, "KnoxPushService"

    .line 18
    .line 19
    const-string v0, "EA is not supported"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final isGMSCoreEnabled()Z
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->hasPackage(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string v0, "GMS Core Enabled : "

    .line 8
    .line 9
    const-string v1, "KnoxPushService"

    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return p0
.end method

.method public final isKnoxVersionSupported()Z
    .locals 2

    .line 1
    sget p0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    .line 2
    .line 3
    const-string v0, "knox version: "

    .line 4
    .line 5
    const-string v1, "KnoxPushService"

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x1b

    .line 11
    .line 12
    if-lt p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final declared-synchronized isRegistered(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I
    .locals 4

    .line 1
    const-string v0, "isRegistered: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "KnoxPushService"

    .line 5
    .line 6
    const-string v2, "isRegistered: "

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    :try_start_1
    const-string v1, "KnoxPushService"

    .line 14
    .line 15
    const-string v2, "isRegistered: cb == null"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    const/16 p0, -0x9

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isSupported()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string v1, "KnoxPushService"

    .line 31
    .line 32
    const-string v2, "KPM is not supported"

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    const/4 p0, -0x7

    .line 39
    return p0

    .line 40
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->bindService()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const-string v1, "KnoxPushService"

    .line 47
    .line 48
    const-string v2, "bind request fail"

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    const/4 p0, -0x2

    .line 55
    return p0

    .line 56
    :cond_2
    :try_start_4
    new-instance v1, Lcom/samsung/android/knox/kpm/RequestInfo;

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/kpm/RequestInfo;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    const/4 p0, -0x4

    .line 70
    return p0

    .line 71
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kpm/IKnoxPushService;->isRegistered(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    const-string v1, "KnoxPushService"

    .line 83
    .line 84
    const-string v2, "isRegistered requested"

    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    const/4 p0, 0x0

    .line 91
    return p0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    :try_start_6
    const-string v2, "KnoxPushService"

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    .line 119
    .line 120
    monitor-exit p0

    .line 121
    const/4 p0, -0x1

    .line 122
    return p0

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0

    .line 125
    throw p1
.end method

.method public final isSupported()Z
    .locals 2

    .line 1
    const-string v0, "KnoxPushService"

    .line 2
    .line 3
    const-string v1, "isSupported: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isKnoxVersionSupported()Z

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
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isEaSupported()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->sAKmKeytypeExist()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->attestDeviceSupported()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isChinaModel()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isGMSCoreEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    return v1

    .line 51
    :cond_5
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final declared-synchronized registerDevice(ZLcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I
    .locals 4

    .line 1
    const-string v0, "registerDevice: "

    .line 2
    .line 3
    const-string v1, "registerDevice: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "KnoxPushService"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    :try_start_1
    const-string p1, "KnoxPushService"

    .line 26
    .line 27
    const-string v1, "registerDevice: cb == null"

    .line 28
    .line 29
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    const/16 p0, -0x9

    .line 34
    .line 35
    return p0

    .line 36
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isSupported()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string p1, "KnoxPushService"

    .line 43
    .line 44
    const-string v1, "KPM is not supported"

    .line 45
    .line 46
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    const/4 p0, -0x7

    .line 51
    return p0

    .line 52
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->bindService()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const-string p1, "KnoxPushService"

    .line 59
    .line 60
    const-string v1, "bind request fail"

    .line 61
    .line 62
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    const/4 p0, -0x2

    .line 67
    return p0

    .line 68
    :cond_2
    :try_start_4
    new-instance v1, Lcom/samsung/android/knox/kpm/RequestInfo;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-direct {v1, v2, p1}, Lcom/samsung/android/knox/kpm/RequestInfo;-><init>(IZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z

    .line 75
    .line 76
    .line 77
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    const/4 p0, -0x4

    .line 82
    return p0

    .line 83
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/kpm/IKnoxPushService;->registerDevice(ZLcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    const-string p1, "KnoxPushService"

    .line 95
    .line 96
    const-string v1, "registerDevice requested"

    .line 97
    .line 98
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    .line 100
    .line 101
    monitor-exit p0

    .line 102
    const/4 p0, 0x0

    .line 103
    return p0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    :try_start_6
    const-string v1, "KnoxPushService"

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    .line 131
    .line 132
    monitor-exit p0

    .line 133
    const/4 p0, -0x1

    .line 134
    return p0

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    monitor-exit p0

    .line 137
    throw p1
.end method

.method public final declared-synchronized removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    .locals 2

    .line 1
    const-string v0, "removeFromTrackMap: size: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string p1, "KnoxPushService"

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", pending: "

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mTrackOpsHash:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mProcessPendingRequest:Z

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    const-string p1, "KnoxPushService"

    .line 55
    .line 56
    const-string v0, "Map is empty, call unBindService: "

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->conn:Landroid/content/ServiceConnection;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public final sAKKeytypeExist()Z
    .locals 3

    .line 1
    const-string p0, "KnoxPushService"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "ro.security.keystore.keytype"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "sak"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const-string v0, "sak keytype not supported"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "sAKKeytypeExist: "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final declared-synchronized unRegisterDevice(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)I
    .locals 4

    .line 1
    const-string v0, "unRegisterDevice: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "KnoxPushService"

    .line 5
    .line 6
    const-string v2, "unRegisterDevice: "

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    :try_start_1
    const-string v1, "KnoxPushService"

    .line 14
    .line 15
    const-string v2, "unRegisterDevice: cb == null"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    const/16 p0, -0x9

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->isSupported()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string v1, "KnoxPushService"

    .line 31
    .line 32
    const-string v2, "KPM is not supported"

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    const/4 p0, -0x7

    .line 39
    return p0

    .line 40
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->bindService()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const-string v1, "KnoxPushService"

    .line 47
    .line 48
    const-string v2, "bind request fail"

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    const/4 p0, -0x2

    .line 55
    return p0

    .line 56
    :cond_2
    :try_start_4
    new-instance v1, Lcom/samsung/android/knox/kpm/RequestInfo;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/kpm/RequestInfo;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->addToTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;Lcom/samsung/android/knox/kpm/RequestInfo;)Z

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    const/4 p0, -0x4

    .line 70
    return p0

    .line 71
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kpm/IKnoxPushService;->unRegisterDevice(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    const-string v1, "KnoxPushService"

    .line 83
    .line 84
    const-string v2, "unRegisterDevice requested"

    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    const/4 p0, 0x0

    .line 91
    return p0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    :try_start_6
    const-string v2, "KnoxPushService"

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    .line 119
    .line 120
    monitor-exit p0

    .line 121
    const/4 p0, -0x1

    .line 122
    return p0

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0

    .line 125
    throw p1
.end method
