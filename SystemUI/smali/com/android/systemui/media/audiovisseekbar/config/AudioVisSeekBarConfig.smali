.class public final Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public primaryColor:I

.field public final progressColor:I

.field public final remainTrackBorderColor:I

.field public final remainTrackColor:I

.field public secondaryColor:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    .line 4
    iput p2, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 5
    iput p3, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    .line 6
    iput p4, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    .line 7
    iput p5, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    return-void
.end method

.method public constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 8
    sget-object p1, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget p1, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxPrimaryColor:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 10
    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxSecondaryColor:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 12
    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget p3, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->progressTrackColor:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 14
    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget p4, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackColor:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 16
    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget p5, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackBorderColor:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    .line 18
    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;-><init>(IIIII)V

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
    instance-of v1, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

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
    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    .line 14
    .line 15
    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    .line 28
    .line 29
    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    .line 35
    .line 36
    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    .line 42
    .line 43
    iget p1, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

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

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

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
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

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
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

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

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 4
    .line 5
    const-string v2, "AudioVisSeekBarConfig(primaryColor="

    .line 6
    .line 7
    const-string v3, ", secondaryColor="

    .line 8
    .line 9
    const-string v4, ", progressColor="

    .line 10
    .line 11
    invoke-static {v2, v0, v3, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", remainTrackColor="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", remainTrackBorderColor="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    .line 36
    .line 37
    const-string v1, ")"

    .line 38
    .line 39
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
