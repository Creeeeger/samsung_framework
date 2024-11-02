.class public final Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CONN_MAX_WAIT_TIME:I = 0x9c4

.field public static final TAG:Ljava/lang/String; = "KnoxAiManagerInternal"

.field public static sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


# instance fields
.field public final mConnLock:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

.field public mKFAConn:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mKFAConn:Landroid/content/ServiceConnection;

    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "KnoxAiManagerInternal Constructor called: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method


# virtual methods
.method public final bindKFAServiceInstance()Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "action.decrypt"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "com.samsung.android.app.kfa"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "binder"

    .line 23
    .line 24
    const-string v2, "decrypt"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mKFAConn:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "getKFAServiceInstance trying to bind, status: "

    .line 41
    .line 42
    invoke-static {v1, p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return p0
.end method

.method public final close(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->close(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :cond_1
    return-object p1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "RemoteException in KFA"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "DeadObjectException in KFA, retrying bind"

    .line 38
    .line 39
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 46
    .line 47
    return-object p0
.end method

.method public final createKnoxAiSession()J
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "createKnoxAiSession entry"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    int-to-long v0, p0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-string v1, "createKnoxAiSession connection exists"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$2;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->createKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-wide v0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "RemoteException in KFA"

    .line 43
    .line 44
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v0

    .line 49
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "DeadObjectException in KFA, retrying bind"

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 57
    .line 58
    .line 59
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_0
.end method

.method public final destroyKnoxAiSession(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "destroyKnoxAiSession entry"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v1, "destroyKnoxAiSession connection exists"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->destroyKnoxAiSession(J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    :cond_1
    return-object p1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "RemoteException in KFA"

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception p1

    .line 47
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "DeadObjectException in KFA, retrying bind"

    .line 50
    .line 51
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 55
    .line 56
    .line 57
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 58
    .line 59
    return-object p0
.end method

.method public final execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :cond_1
    return-object p1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "RemoteException in KFA"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p3, "DeadObjectException in KFA, retrying bind"

    .line 38
    .line 39
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 46
    .line 47
    return-object p0
.end method

.method public final getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "getKFAServiceInstance service is null"

    .line 10
    .line 11
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    xor-int/2addr v1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "getKFAServiceInstance trying to rebind from client"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 39
    .line 40
    const-string v0, "KFAService"

    .line 41
    .line 42
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 58
    .line 59
    const-wide/16 v2, 0x9c4

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :catch_0
    :try_start_4
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string v1, "getKFAServiceInstance() interrupted"

    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :goto_1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string v1, "getKFAServiceInstance binding timed out or success"

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 89
    .line 90
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 92
    .line 93
    return-object p0

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    throw v0
.end method

.method public final getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "RemoteException in KFA"

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "DeadObjectException in KFA, retrying bind"

    .line 32
    .line 33
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final getModelInputShape(JI[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getModelInputShape(JI[I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :cond_1
    return-object p1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "RemoteException in KFA"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p3, "DeadObjectException in KFA, retrying bind"

    .line 38
    .line 39
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 46
    .line 47
    return-object p0
.end method

.method public final open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :cond_1
    return-object p1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "RemoteException in KFA"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p3, "DeadObjectException in KFA, retrying bind"

    .line 38
    .line 39
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 46
    .line 47
    return-object p0
.end method
