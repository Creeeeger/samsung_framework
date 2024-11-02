.class public final Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxAiSession"


# instance fields
.field public final mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

.field public final mSessionID:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    const-string v1, "KnoxAiSession session init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 4
    iput-wide p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    return-void
.end method


# virtual methods
.method public final close()Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    .line 10
    .line 11
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->close(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public final execute([Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public final getModelInputShape(I[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getModelInputShape(JI[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public final getSessionID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final open(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method
