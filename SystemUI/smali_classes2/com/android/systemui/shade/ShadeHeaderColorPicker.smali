.class public final Lcom/android/systemui/shade/ShadeHeaderColorPicker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public colorIntensity:F

.field public context:Landroid/content/Context;

.field public final dualToneHandler:Lcom/android/systemui/DualToneHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->update(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 12
    .line 13
    const v1, 0x7f140570

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->dualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getClockColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->colorIntensity:F

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpg-float v0, v0, v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 23
    .line 24
    const v0, 0x7f0607f9

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 33
    .line 34
    const v0, 0x7f0607fa

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 43
    .line 44
    const v0, 0x7f060814

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    :goto_1
    return p0
.end method

.method public final update(Landroid/content/Context;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    .line 10
    .line 11
    const v0, 0x7f0605ad

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    shr-int/lit8 v0, p1, 0x10

    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    shr-int/lit8 v1, p1, 0x8

    .line 23
    .line 24
    and-int/lit16 v1, v1, 0xff

    .line 25
    .line 26
    and-int/lit16 p1, p1, 0xff

    .line 27
    .line 28
    mul-int/2addr v0, v0

    .line 29
    int-to-double v2, v0

    .line 30
    const-wide v4, 0x3fced916872b020cL    # 0.241

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr v2, v4

    .line 36
    mul-int/2addr v1, v1

    .line 37
    int-to-double v0, v1

    .line 38
    const-wide v4, 0x3fe61cac083126e9L    # 0.691

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    mul-double/2addr v0, v4

    .line 44
    add-double/2addr v0, v2

    .line 45
    mul-int/2addr p1, p1

    .line 46
    int-to-double v2, p1

    .line 47
    const-wide v4, 0x3fb16872b020c49cL    # 0.068

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    mul-double/2addr v2, v4

    .line 53
    add-double/2addr v2, v0

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    double-to-int p1, v0

    .line 59
    const/16 v0, 0x32

    .line 60
    .line 61
    if-ge p1, v0, :cond_0

    .line 62
    .line 63
    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    iput p1, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->colorIntensity:F

    .line 68
    .line 69
    return-void
.end method
