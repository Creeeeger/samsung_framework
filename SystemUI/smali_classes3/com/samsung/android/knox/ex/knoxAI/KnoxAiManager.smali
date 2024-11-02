.class public final Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxAiManager"

.field public static sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;


# instance fields
.field public mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


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
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "KnoxAiManager Constructor called: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 35
    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method


# virtual methods
.method public final createKnoxAiSession()Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "createKnoxAiSession entry"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->createKnoxAiSession()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x64

    .line 15
    .line 16
    cmp-long v3, v1, v3

    .line 17
    .line 18
    if-ltz v3, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "createKnoxAiSession failed : "

    .line 31
    .line 32
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0
.end method

.method public final destroyKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->destroyKnoxAiSession(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
