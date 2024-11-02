.class public final Landroidx/palette/graphics/Palette$Swatch;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBlue:I

.field public mBodyTextColor:I

.field public mGeneratedTextColors:Z

.field public final mGreen:I

.field public mHsl:[F

.field public final mPopulation:I

.field public final mRed:I

.field public final mRgb:I

.field public mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    .line 5
    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 6
    iput p2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    .line 9
    iput p2, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    .line 10
    iput p3, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    .line 11
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 12
    iput p4, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    return-void
.end method

.method public constructor <init>([FI)V
    .locals 7

    .line 13
    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 14
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 15
    aget v2, p1, v2

    const/4 v3, 0x2

    .line 16
    aget v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    .line 17
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    sub-float/2addr v3, v2

    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v4

    sub-float/2addr v2, v6

    .line 18
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v6, v2

    mul-float/2addr v6, v5

    float-to-int v1, v1

    .line 19
    div-int/lit8 v1, v1, 0x3c

    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_0

    move v1, v0

    move v2, v1

    goto :goto_0

    :pswitch_0
    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    .line 20
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, v3, v2

    .line 21
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    .line 22
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_1
    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    .line 23
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, v3, v2

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    .line 25
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_2
    mul-float v0, v3, v2

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    .line 27
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    .line 28
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_3
    mul-float v0, v3, v2

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    .line 30
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    .line 31
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_4
    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    .line 32
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    .line 33
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float/2addr v3, v2

    .line 34
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :pswitch_5
    add-float/2addr v5, v3

    mul-float/2addr v5, v2

    .line 35
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v6, v3

    mul-float/2addr v6, v2

    .line 36
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float/2addr v3, v2

    .line 37
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 38
    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->constrain(I)I

    move-result v0

    .line 39
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->constrain(I)I

    move-result v1

    .line 40
    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->constrain(I)I

    move-result v2

    .line 41
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 42
    invoke-direct {p0, v0, p2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 43
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ensureTextColorsGenerated()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/high16 v0, 0x40900000    # 4.5f

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/high16 v4, 0x40400000    # 3.0f

    .line 15
    .line 16
    invoke-static {v4, v1, v2}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eq v3, v1, :cond_0

    .line 22
    .line 23
    if-eq v5, v1, :cond_0

    .line 24
    .line 25
    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 30
    .line 31
    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 36
    .line 37
    iput-boolean v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/high16 v7, -0x1000000

    .line 41
    .line 42
    invoke-static {v0, v7, v2}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v4, v7, v2}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(FII)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    if-eq v2, v1, :cond_1

    .line 53
    .line 54
    invoke-static {v7, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 59
    .line 60
    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 65
    .line 66
    iput-boolean v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    if-eq v3, v1, :cond_2

    .line 70
    .line 71
    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v7, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_0
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 81
    .line 82
    if-eq v5, v1, :cond_3

    .line 83
    .line 84
    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    :goto_1
    iput v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 94
    .line 95
    iput-boolean v6, p0, Landroidx/palette/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 96
    .line 97
    :cond_4
    return-void
.end method

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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Landroidx/palette/graphics/Palette$Swatch;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    .line 18
    .line 19
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 28
    .line 29
    if-ne p0, p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_3
    :goto_1
    return v1
.end method

.method public final getHsl()[F
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBlue:I

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 13
    .line 14
    iget v2, p0, Landroidx/palette/graphics/Palette$Swatch;->mRed:I

    .line 15
    .line 16
    iget v3, p0, Landroidx/palette/graphics/Palette$Swatch;->mGreen:I

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mHsl:[F

    .line 22
    .line 23
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-class v1, Landroidx/palette/graphics/Palette$Swatch;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, " [RGB: #"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "] [HSL: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "] [Population: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "] [Title Text: #"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 58
    .line 59
    .line 60
    iget v1, p0, Landroidx/palette/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "] [Body Text: #"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 75
    .line 76
    .line 77
    iget p0, p0, Landroidx/palette/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 p0, 0x5d

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method
