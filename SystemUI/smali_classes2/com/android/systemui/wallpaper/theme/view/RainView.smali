.class public final Lcom/android/systemui/wallpaper/theme/view/RainView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

.field public final rainline:Landroid/graphics/Bitmap;

.field public refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/16 v0, 0x3c

    .line 22
    .line 23
    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Rain;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    if-ge v0, v2, :cond_0

    .line 32
    .line 33
    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Rain;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Rain;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    aput-object v2, v1, v0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const v0, 0x7f080ebf

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->rainline:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

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
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

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
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->rainline:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    .line 27
    .line 28
    invoke-static {v8, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    int-to-float v7, v7

    .line 33
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iget v9, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    .line 36
    .line 37
    invoke-static {v9, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(FLandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    int-to-float v8, v8

    .line 42
    iget-object v9, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    iget v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    .line 48
    .line 49
    float-to-double v6, v6

    .line 50
    iget-wide v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mXSpeed:D

    .line 51
    .line 52
    add-double/2addr v6, v8

    .line 53
    double-to-float v6, v6

    .line 54
    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    .line 55
    .line 56
    iget v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    .line 57
    .line 58
    iget v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mYSpeed:I

    .line 59
    .line 60
    int-to-float v8, v8

    .line 61
    add-float/2addr v7, v8

    .line 62
    iput v7, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    cmpl-float v9, v6, v8

    .line 66
    .line 67
    if-lez v9, :cond_1

    .line 68
    .line 69
    sget v9, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 70
    .line 71
    int-to-float v9, v9

    .line 72
    cmpg-float v6, v6, v9

    .line 73
    .line 74
    if-gez v6, :cond_1

    .line 75
    .line 76
    sget v6, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    .line 77
    .line 78
    int-to-float v6, v6

    .line 79
    cmpg-float v6, v7, v6

    .line 80
    .line 81
    if-gez v6, :cond_1

    .line 82
    .line 83
    move v6, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v6, v3

    .line 86
    :goto_1
    if-nez v6, :cond_2

    .line 87
    .line 88
    iget-object v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    .line 89
    .line 90
    sget v7, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    .line 91
    .line 92
    add-int/lit8 v7, v7, -0x20

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    add-int/lit8 v6, v6, 0x10

    .line 99
    .line 100
    int-to-float v6, v6

    .line 101
    iput v6, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    .line 102
    .line 103
    iput v8, v5, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    .line 104
    .line 105
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    .line 3
    .line 4
    return-void
.end method

.method public final screenTurnedOn()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
