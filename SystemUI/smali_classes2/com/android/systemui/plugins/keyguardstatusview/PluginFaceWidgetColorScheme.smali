.class public final Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private accentPrimaryFromScheme:I

.field private accentSecondaryFromScheme:I

.field private backgroundEndFromScheme:I

.field private backgroundStartFromScheme:I

.field private surfaceFromScheme:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;IIIIIILjava/lang/Object;)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    move p4, p7

    .line 38
    move p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->copy(IIIII)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final copy(IIIII)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
    .locals 6

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

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
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 14
    .line 15
    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 35
    .line 36
    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 42
    .line 43
    iget p1, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

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

.method public final getAccentPrimaryFromScheme()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAccentSecondaryFromScheme()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBackgroundEndFromScheme()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBackgroundStartFromScheme()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSurfaceFromScheme()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

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
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

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
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    return p0
.end method

.method public final setAccentPrimaryFromScheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 2
    .line 3
    return-void
.end method

.method public final setAccentSecondaryFromScheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 2
    .line 3
    return-void
.end method

.method public final setBackgroundEndFromScheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 2
    .line 3
    return-void
.end method

.method public final setBackgroundStartFromScheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSurfaceFromScheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    .line 10
    .line 11
    const-string v4, "PluginFaceWidgetColorScheme(surfaceFromScheme="

    .line 12
    .line 13
    const-string v5, ", accentPrimaryFromScheme="

    .line 14
    .line 15
    const-string v6, ", accentSecondaryFromScheme="

    .line 16
    .line 17
    invoke-static {v4, v0, v5, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, ", backgroundStartFromScheme="

    .line 22
    .line 23
    const-string v4, ", backgroundEndFromScheme="

    .line 24
    .line 25
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
