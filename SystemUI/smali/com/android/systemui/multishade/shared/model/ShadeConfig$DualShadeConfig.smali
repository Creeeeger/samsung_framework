.class public final Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;
.super Lcom/android/systemui/multishade/shared/model/ShadeConfig;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final leftShadeWidthPx:I

.field public final rightShadeWidthPx:I

.field public final scrimAlpha:F

.field public final splitFraction:F

.field public final swipeCollapseThreshold:F

.field public final swipeExpandThreshold:F


# direct methods
.method public constructor <init>(IIFFFF)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/multishade/shared/model/ShadeId;->LEFT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/multishade/shared/model/ShadeId;->RIGHT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, v0, p3, p4, v1}, Lcom/android/systemui/multishade/shared/model/ShadeConfig;-><init>(Ljava/util/List;FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 18
    .line 19
    iput p2, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 20
    .line 21
    iput p3, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 22
    .line 23
    iput p4, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 24
    .line 25
    iput p5, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 26
    .line 27
    iput p6, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 28
    .line 29
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
    instance-of v1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

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
    check-cast p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 30
    .line 31
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 39
    .line 40
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 50
    .line 51
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 52
    .line 53
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 61
    .line 62
    iget p1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 63
    .line 64
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

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
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

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
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DualShadeConfig(leftShadeWidthPx="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", rightShadeWidthPx="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", swipeCollapseThreshold="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", swipeExpandThreshold="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", splitFraction="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", scrimAlpha="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
