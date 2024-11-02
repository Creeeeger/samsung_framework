.class public final Lcom/android/launcher3/icons/DotRenderer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(ILandroid/graphics/Path;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const p0, 0x3e6978d5    # 0.228f

    .line 11
    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    mul-float/2addr p1, p0

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-gtz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    :cond_0
    new-instance p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, v0}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x58

    .line 29
    .line 30
    iput v0, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 31
    .line 32
    int-to-float p0, p0

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    mul-float v1, p0, v0

    .line 36
    .line 37
    const/high16 v2, 0x41c00000    # 24.0f

    .line 38
    .line 39
    div-float v2, v1, v2

    .line 40
    .line 41
    iput v2, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    .line 42
    .line 43
    const/high16 v3, 0x41800000    # 16.0f

    .line 44
    .line 45
    div-float/2addr v1, v3

    .line 46
    iput v1, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 47
    .line 48
    const/high16 v1, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float v1, p0, v1

    .line 51
    .line 52
    iput v1, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 53
    .line 54
    add-float/2addr v2, v1

    .line 55
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v3, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 60
    .line 61
    iget v4, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    .line 62
    .line 63
    add-float/2addr v3, v4

    .line 64
    iget v4, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 65
    .line 66
    add-float/2addr v3, v4

    .line 67
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget-object v3, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v3, v4, v4, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    .line 80
    .line 81
    int-to-float p0, v2

    .line 82
    sub-float/2addr p0, v1

    .line 83
    invoke-virtual {v3, p0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 84
    .line 85
    .line 86
    mul-int/lit8 v2, v2, 0x2

    .line 87
    .line 88
    new-instance p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/ShadowGenerator$Builder;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v2, p0}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;)Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 98
    .line 99
    .line 100
    int-to-float p0, p3

    .line 101
    const/high16 p1, -0x40800000    # -1.0f

    .line 102
    .line 103
    invoke-static {p2, p0, p1}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)V

    .line 104
    .line 105
    .line 106
    invoke-static {p2, p0, v0}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static getPathPoint(Landroid/graphics/Path;FF)V
    .locals 3

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    div-float v0, p1, v0

    .line 4
    .line 5
    mul-float v1, p2, v0

    .line 6
    .line 7
    add-float/2addr v1, v0

    .line 8
    new-instance v2, Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    mul-float/2addr p2, v0

    .line 19
    add-float/2addr p2, v1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    .line 23
    .line 24
    const/high16 p2, -0x40800000    # -1.0f

    .line 25
    .line 26
    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 30
    .line 31
    .line 32
    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 33
    .line 34
    invoke-virtual {v2, p0, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x2

    .line 38
    new-array p0, p0, [F

    .line 39
    .line 40
    new-instance p2, Landroid/graphics/PathMeasure;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {p2, v2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 48
    .line 49
    .line 50
    aget p2, p0, v1

    .line 51
    .line 52
    div-float/2addr p2, p1

    .line 53
    aput p2, p0, v1

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    aget v0, p0, p2

    .line 57
    .line 58
    div-float/2addr v0, p1

    .line 59
    aput v0, p0, p2

    .line 60
    .line 61
    return-void
.end method
