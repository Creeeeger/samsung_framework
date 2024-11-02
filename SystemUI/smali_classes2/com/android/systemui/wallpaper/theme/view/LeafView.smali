.class public final Lcom/android/systemui/wallpaper/theme/view/LeafView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLeafImageId:[I

.field public final mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

.field public final mLeafSizeScale:[F

.field public final mPaint:Landroid/graphics/Paint;

.field public final matrix:Landroid/graphics/Matrix;

.field public refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    .line 13
    .line 14
    const v0, 0x7f080b97

    .line 15
    .line 16
    .line 17
    const v1, 0x7f080b98

    .line 18
    .line 19
    .line 20
    const v2, 0x7f080b95

    .line 21
    .line 22
    .line 23
    const v3, 0x7f080b96

    .line 24
    .line 25
    .line 26
    filled-new-array {v2, v3, v0, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    new-array v0, v0, [F

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const/16 v0, 0x23

    .line 50
    .line 51
    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    .line 57
    .line 58
    array-length v2, v1

    .line 59
    if-ge v0, v2, :cond_0

    .line 60
    .line 61
    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    .line 62
    .line 63
    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    aput-object v2, v1, v0

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_4

    .line 19
    .line 20
    aget-object v5, v0, v4

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    .line 23
    .line 24
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    .line 25
    .line 26
    int-to-float v7, v7

    .line 27
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 28
    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    .line 31
    .line 32
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    .line 33
    .line 34
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    .line 35
    .line 36
    aget v7, v7, v8

    .line 37
    .line 38
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    .line 46
    .line 47
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    .line 48
    .line 49
    aget v7, v7, v8

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    .line 62
    .line 63
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iget v9, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    .line 66
    .line 67
    invoke-static {v9, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    int-to-float v8, v8

    .line 72
    iget-object v9, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget v10, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    .line 75
    .line 76
    invoke-static {v10, v9}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    int-to-float v9, v9

    .line 81
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    .line 83
    .line 84
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    .line 85
    .line 86
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    iget v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    .line 92
    .line 93
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    .line 94
    .line 95
    int-to-float v7, v7

    .line 96
    add-float/2addr v6, v7

    .line 97
    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    .line 98
    .line 99
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    .line 100
    .line 101
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    .line 102
    .line 103
    int-to-float v8, v8

    .line 104
    add-float/2addr v7, v8

    .line 105
    iput v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    .line 106
    .line 107
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    .line 108
    .line 109
    add-int/lit8 v8, v8, 0x2

    .line 110
    .line 111
    iput v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    cmpl-float v9, v6, v8

    .line 115
    .line 116
    if-lez v9, :cond_1

    .line 117
    .line 118
    sget v9, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 119
    .line 120
    int-to-float v9, v9

    .line 121
    cmpg-float v6, v6, v9

    .line 122
    .line 123
    if-gez v6, :cond_1

    .line 124
    .line 125
    sget v6, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 126
    .line 127
    int-to-float v6, v6

    .line 128
    cmpg-float v6, v7, v6

    .line 129
    .line 130
    if-gez v6, :cond_1

    .line 131
    .line 132
    move v6, v1

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    move v6, v3

    .line 135
    :goto_1
    if-nez v6, :cond_2

    .line 136
    .line 137
    iget-object v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    .line 138
    .line 139
    sget v7, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 140
    .line 141
    add-int/lit8 v7, v7, -0x20

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    add-int/lit8 v6, v6, 0x10

    .line 148
    .line 149
    int-to-float v6, v6

    .line 150
    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    .line 151
    .line 152
    iput v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    .line 153
    .line 154
    :cond_2
    iget v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    .line 155
    .line 156
    const/16 v7, 0x168

    .line 157
    .line 158
    if-lt v6, v7, :cond_3

    .line 159
    .line 160
    iput v3, v5, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    .line 161
    .line 162
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_4
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    .line 3
    .line 4
    return-void
.end method

.method public final screenTurnedOn()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
