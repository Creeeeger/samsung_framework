.class public final Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

.field public final exportSessionTime:Ljava/lang/String;

.field public final extraErrCode:Ljava/util/HashMap;

.field public final intentAction:Ljava/lang/String;

.field public final reqSize:I

.field public final result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

.field public final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 5
    iput p4, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    .line 6
    iput-object p5, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    .line 8
    iput-object p7, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 9
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

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
    check-cast p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    .line 39
    .line 40
    iget v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v1

    .line 21
    mul-int/lit8 v2, v2, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    .line 33
    .line 34
    const/16 v3, 0x1f

    .line 35
    .line 36
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    move v2, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_1
    add-int/2addr v1, v2

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    move v2, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_2
    add-int/2addr v1, v2

    .line 64
    mul-int/lit8 v1, v1, 0x1f

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    .line 67
    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_3
    add-int/2addr v1, v0

    .line 76
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BNRResponse(intentAction="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", result="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", errCode="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", reqSize="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", source="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", extraErrCode="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", exportSessionTime="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, ")"

    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
