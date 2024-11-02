.class public final Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

.field public final exportSessionTime:Ljava/lang/String;

.field public final extraBackupItem:Ljava/util/ArrayList;

.field public final intentAction:Ljava/lang/String;

.field public final savePath:Ljava/lang/String;

.field public final securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

.field public final sessionKey:Ljava/lang/String;

.field public final source:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 9
    iput-object p7, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    .line 10
    iput-object p8, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;

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
    check-cast p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, v1

    .line 34
    mul-int/lit8 v2, v2, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v3, 0x1f

    .line 39
    .line 40
    invoke-static {v1, v2, v3}, Landroidx/picker/model/AppInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2, v1, v3}, Landroidx/picker/model/AppInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v1

    .line 57
    mul-int/lit8 v2, v2, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v1, v2

    .line 66
    mul-int/lit8 v1, v1, 0x1f

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    .line 69
    .line 70
    if-nez p0, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_2
    add-int/2addr v1, v0

    .line 78
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BNRRequest(intentAction="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", savePath="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", action="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sessionKey=, source="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", securityLevel="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", extraBackupItem="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

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
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

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
