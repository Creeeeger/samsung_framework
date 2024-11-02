.class public final Lcom/android/systemui/wallpaper/theme/view/SnowView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

.field public refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

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
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const/16 v1, 0x23

    .line 17
    .line 18
    new-array v1, v1, [Lcom/android/systemui/wallpaper/theme/particle/Snow;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    if-ge v0, v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Snow;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Snow;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    aput-object v2, v1, v0

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

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
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_3

    .line 19
    .line 20
    aget-object v5, v0, v4

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 32
    .line 33
    invoke-static {v7, v6}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    int-to-float v6, v6

    .line 38
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 41
    .line 42
    invoke-static {v8, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    int-to-float v7, v7

    .line 47
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget v9, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->radius:I

    .line 50
    .line 51
    int-to-float v9, v9

    .line 52
    invoke-static {v9, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    int-to-float v8, v8

    .line 57
    iget-object v9, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    iget v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 63
    .line 64
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mXSpeed:I

    .line 65
    .line 66
    int-to-float v7, v7

    .line 67
    add-float/2addr v6, v7

    .line 68
    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 69
    .line 70
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 71
    .line 72
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mYSpeed:I

    .line 73
    .line 74
    int-to-float v8, v8

    .line 75
    add-float/2addr v7, v8

    .line 76
    iput v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 77
    .line 78
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    if-lez v8, :cond_1

    .line 82
    .line 83
    cmpl-float v8, v6, v9

    .line 84
    .line 85
    if-lez v8, :cond_1

    .line 86
    .line 87
    sget v8, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 88
    .line 89
    int-to-float v8, v8

    .line 90
    cmpg-float v6, v6, v8

    .line 91
    .line 92
    if-gez v6, :cond_1

    .line 93
    .line 94
    sget v6, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 95
    .line 96
    int-to-float v6, v6

    .line 97
    cmpg-float v6, v7, v6

    .line 98
    .line 99
    if-gez v6, :cond_1

    .line 100
    .line 101
    move v6, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move v6, v3

    .line 104
    :goto_1
    if-nez v6, :cond_2

    .line 105
    .line 106
    iget-object v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    .line 107
    .line 108
    sget v7, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 109
    .line 110
    add-int/lit8 v7, v7, -0x20

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    add-int/lit8 v7, v7, 0x10

    .line 117
    .line 118
    int-to-float v7, v7

    .line 119
    iput v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 120
    .line 121
    iput v9, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 122
    .line 123
    sget-object v7, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    .line 124
    .line 125
    const/16 v8, 0xa

    .line 126
    .line 127
    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    aget v6, v7, v6

    .line 132
    .line 133
    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    .line 134
    .line 135
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    .line 3
    .line 4
    return-void
.end method

.method public final screenTurnedOn()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
