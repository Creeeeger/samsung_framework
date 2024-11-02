.class public final Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;
.super Lcom/android/systemui/controls/management/model/CustomElementWrapper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final displayName:Ljava/lang/CharSequence;

.field public favorite:Z

.field public final needStructureName:Z

.field public final structureName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/CustomElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    move-object p3, p1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;-><init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V

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
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

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
    check-cast p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

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
    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    .line 45
    .line 46
    if-eq p0, p1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, p0

    .line 33
    :goto_0
    add-int/2addr v1, v2

    .line 34
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "CustomStructureNameWrapper(structureName="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", favorite="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", displayName="

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", needStructureName="

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
