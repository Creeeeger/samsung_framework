.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;


# instance fields
.field public final carrierNetworkChange:Z

.field public final iconId:I

.field public final level:I

.field public final numberOfLevels:I

.field public final showExclamationMark:Z


# direct methods
.method public constructor <init>(IIZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 6
    iput p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->iconId:I

    return-void
.end method

.method public synthetic constructor <init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;-><init>(IIZZI)V

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
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;

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
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->iconId:I

    .line 42
    .line 43
    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->iconId:I

    .line 44
    .line 45
    if-eq p0, p1, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    return v0
.end method

.method public final getLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

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
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    move v2, v1

    .line 23
    :cond_0
    add-int/2addr v0, v2

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->iconId:I

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
.end method

.method public final logDiffs(Lcom/android/systemui/log/table/Diffable;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->logPartial(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    const-string v1, "c"

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 10
    .line 11
    const-string v1, "level"

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "numLevels"

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "showExclamation"

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "carrierNetworkChange"

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 34
    .line 35
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final logPartial(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->getLevel()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const-string v0, "level"

    .line 18
    .line 19
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;

    .line 23
    .line 24
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 25
    .line 26
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const-string v0, "numLevels"

    .line 31
    .line 32
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 38
    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    const-string/jumbo v0, "showExclamation"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 50
    .line 51
    if-eq p1, p0, :cond_4

    .line 52
    .line 53
    const-string p1, "carrierNetworkChange"

    .line 54
    .line 55
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Cellular(level="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->level:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", numberOfLevels="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->numberOfLevels:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", showExclamationMark="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->showExclamationMark:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", carrierNetworkChange="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", iconId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel$Cellular;->iconId:I

    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
