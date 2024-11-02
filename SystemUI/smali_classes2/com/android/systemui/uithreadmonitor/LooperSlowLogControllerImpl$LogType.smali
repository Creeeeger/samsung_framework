.class public final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public choreographerOnly:Z

.field public deliveryTime:J

.field public dispatchTime:J

.field public lastEnabledTime:J

.field public logHandler:Lkotlin/jvm/functions/Function2;

.field public final type:I


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;-><init>(IJJJZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJJJZLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJZ",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    .line 4
    iput-wide p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 5
    iput-wide p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 6
    iput-wide p6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 7
    iput-boolean p8, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 8
    iput-object p9, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(IJJJZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p10, 0x2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    move-wide v4, p2

    :goto_1
    and-int/lit8 v1, p10, 0x4

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_2

    :cond_2
    move-wide v6, p4

    :goto_2
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v2, p6

    :goto_3
    and-int/lit8 v1, p10, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    move/from16 v1, p8

    :goto_4
    and-int/lit8 v8, p10, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p9

    :goto_5
    move p1, v0

    move-wide p2, v4

    move-wide p4, v6

    move-wide p6, v2

    move/from16 p8, v1

    move-object/from16 p9, v8

    .line 9
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;-><init>(IJJJZLkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 30
    .line 31
    iget-wide v5, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 39
    .line 40
    iget-wide v5, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 41
    .line 42
    cmp-long v1, v3, v5

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 48
    .line 49
    iget-boolean v3, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 50
    .line 51
    if-eq v1, v3, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 10
    .line 11
    const/16 v3, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 18
    .line 19
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 24
    .line 25
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_0
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_0
    add-int/2addr v0, p0

    .line 48
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    .line 6
    .line 7
    iget-boolean v6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    .line 8
    .line 9
    iget-object v7, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v9, "LogType(type="

    .line 14
    .line 15
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    .line 19
    .line 20
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ", dispatchTime="

    .line 24
    .line 25
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ", deliveryTime="

    .line 32
    .line 33
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ", lastEnabledTime="

    .line 40
    .line 41
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ", choreographerOnly="

    .line 48
    .line 49
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, ", logHandler="

    .line 56
    .line 57
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
