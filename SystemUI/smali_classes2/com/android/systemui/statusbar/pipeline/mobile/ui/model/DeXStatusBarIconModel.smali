.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final activityId:I

.field public final isVisible:Z

.field public final netwotkTypeId:I

.field public final roamingId:I

.field public final showTriangle:Z

.field public final slotId:I

.field public final strengthId:I

.field public final subId:I


# direct methods
.method public constructor <init>(ZIIIIZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    .line 5
    iput p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    .line 6
    iput p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    .line 7
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    .line 8
    iput p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    .line 9
    iput p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    return-void
.end method

.method public synthetic constructor <init>(ZIIIIZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    .line 10
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;-><init>(ZIIIIZII)V

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
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

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
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    .line 35
    .line 36
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    .line 42
    .line 43
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    .line 56
    .line 57
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    .line 63
    .line 64
    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    .line 65
    .line 66
    if-eq p0, p1, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    .line 9
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    .line 10
    .line 11
    const/16 v3, 0x1f

    .line 12
    .line 13
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    .line 18
    .line 19
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    .line 24
    .line 25
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    .line 30
    .line 31
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v0, v2

    .line 41
    :goto_0
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    .line 45
    .line 46
    const/16 v2, 0x1f

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    add-int/2addr p0, v0

    .line 59
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DeXStatusBarIconModel(isVisible="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", slotId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", subId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", strengthId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", netwotkTypeId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", showTriangle="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", activityId="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", roamingId="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    .line 79
    .line 80
    const-string v1, ")"

    .line 81
    .line 82
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
