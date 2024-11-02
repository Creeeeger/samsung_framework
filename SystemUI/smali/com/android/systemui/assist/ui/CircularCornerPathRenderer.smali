.class public final Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;
.super Lcom/android/systemui/assist/ui/CornerPathRenderer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCornerRadiusBottom:I

.field public final mCornerRadiusTop:I

.field public final mHeight:I

.field public final mPath:Landroid/graphics/Path;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/CornerPathRenderer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x2

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    if-ne v0, v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .line 52
    :goto_1
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    if-ne p1, v2, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_2
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    .line 80
    :goto_3
    iput p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final getCornerPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Landroid/graphics/Path;
    .locals 9

    .line 1
    iget-object v8, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer$1;->$SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    .line 17
    .line 18
    iget v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    .line 24
    .line 25
    if-eq p1, v4, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    iget p0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    .line 29
    .line 30
    if-eq p1, v2, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    int-to-float p1, p0

    .line 37
    invoke-virtual {v8, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    mul-int/lit8 p1, p0, 0x2

    .line 43
    .line 44
    int-to-float v3, p1

    .line 45
    mul-int/2addr p0, v4

    .line 46
    int-to-float v4, p0

    .line 47
    const/high16 v5, 0x43870000    # 270.0f

    .line 48
    .line 49
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    move-object v0, v8

    .line 53
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    int-to-float p1, v0

    .line 58
    int-to-float v1, p0

    .line 59
    invoke-virtual {v8, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    .line 61
    .line 62
    mul-int/lit8 p1, p0, 0x2

    .line 63
    .line 64
    sub-int p1, v0, p1

    .line 65
    .line 66
    int-to-float v1, p1

    .line 67
    const/4 v2, 0x0

    .line 68
    int-to-float v3, v0

    .line 69
    mul-int/2addr p0, v4

    .line 70
    int-to-float v4, p0

    .line 71
    const/4 v5, 0x0

    .line 72
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    move-object v0, v8

    .line 76
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    sub-int p0, v0, v2

    .line 81
    .line 82
    int-to-float p0, p0

    .line 83
    int-to-float p1, v3

    .line 84
    invoke-virtual {v8, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    .line 86
    .line 87
    mul-int/lit8 p0, v2, 0x2

    .line 88
    .line 89
    sub-int p0, v0, p0

    .line 90
    .line 91
    int-to-float v1, p0

    .line 92
    mul-int/2addr v2, v4

    .line 93
    sub-int p0, v3, v2

    .line 94
    .line 95
    int-to-float v2, p0

    .line 96
    int-to-float p0, v0

    .line 97
    int-to-float v4, v3

    .line 98
    const/high16 v5, 0x42b40000    # 90.0f

    .line 99
    .line 100
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 101
    .line 102
    const/4 v7, 0x1

    .line 103
    move-object v0, v8

    .line 104
    move v3, p0

    .line 105
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    sub-int p0, v3, v2

    .line 110
    .line 111
    int-to-float p0, p0

    .line 112
    invoke-virtual {v8, v1, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    mul-int/lit8 p0, v2, 0x2

    .line 117
    .line 118
    sub-int p0, v3, p0

    .line 119
    .line 120
    int-to-float p0, p0

    .line 121
    mul-int/2addr v2, v4

    .line 122
    int-to-float p1, v2

    .line 123
    int-to-float v4, v3

    .line 124
    const/high16 v5, 0x43340000    # 180.0f

    .line 125
    .line 126
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 127
    .line 128
    const/4 v7, 0x1

    .line 129
    move-object v0, v8

    .line 130
    move v2, p0

    .line 131
    move v3, p1

    .line 132
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 133
    .line 134
    .line 135
    :goto_0
    return-object v8
.end method
