.class public final Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appearance:I

.field public final appearanceRegions:Ljava/util/List;

.field public final appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

.field public final behavior:I

.field public final displayId:I

.field public final letterboxes:Ljava/util/List;

.field public final letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public final navbarColorManagedByIme:Z

.field public final packageName:Ljava/lang/String;

.field public final requestedVisibleTypes:I


# direct methods
.method public constructor <init>(IILjava/util/List;ZIILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;ZII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/statusbar/LetterboxDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    new-array p2, p1, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 22
    .line 23
    invoke-interface {p8, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 30
    .line 31
    new-array p1, p1, [Lcom/android/internal/view/AppearanceRegion;

    .line 32
    .line 33
    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Lcom/android/internal/view/AppearanceRegion;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

    .line 40
    .line 41
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
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

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
    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 46
    .line 47
    iget v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 53
    .line 54
    iget v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 73
    .line 74
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_9

    .line 79
    .line 80
    return v2

    .line 81
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

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
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_0
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 35
    .line 36
    const/16 v2, 0x1f

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v0, v2}, Landroidx/picker/model/AppInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    add-int/2addr p0, v0

    .line 61
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Landroid/view/InsetsFlags;

    .line 2
    .line 3
    const-string v1, "appearance"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

    .line 18
    .line 19
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "SystemBarAttributesParams(\n            displayId="

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ",\n            appearance="

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ",\n            appearanceRegions="

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ",\n            navbarColorManagedByIme="

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ",\n            behavior="

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ",\n            requestedVisibleTypes="

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, ",\n            packageName=\'"

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, "\',\n            letterboxes="

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, ",\n            letterboxesArray="

    .line 104
    .line 105
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p0, ",\n            appearanceRegionsArray="

    .line 112
    .line 113
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p0, "\n            )"

    .line 120
    .line 121
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method
