.class public Lcom/android/wm/shell/windowdecor/widget/OutlineView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z

.field public static final SAFE_DEBUG:Z


# instance fields
.field public mAlpha:F

.field public mCaptionHeight:I

.field public final mClearPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public mFillColor:I

.field public final mFillPaint:Landroid/graphics/Paint;

.field public mIsClosing:Z

.field public mIsOpening:Z

.field public mRadius:I

.field public mRadiusForShadow:I

.field public mStrokeColor:I

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mTmpTransparentRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.debug.caption.outline"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->DEBUG:Z

    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 12
    .line 13
    sput-boolean v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->SAFE_DEBUG:Z

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillColor:I

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    new-instance p2, Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mClearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 31
    .line 32
    new-instance v1, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    .line 42
    .line 43
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    .line 97
    .line 98
    const p1, 0x7f08072b

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->DEBUG:Z

    .line 105
    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    const p1, 0x3300ff00

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    .line 113
    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-float v6, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v7, v3

    .line 30
    iget v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadiusForShadow:I

    .line 31
    .line 32
    int-to-float v8, v3

    .line 33
    int-to-float v9, v3

    .line 34
    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 35
    .line 36
    move-object v3, v0

    .line 37
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 44
    .line 45
    .line 46
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 47
    .line 48
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillColor:I

    .line 57
    .line 58
    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->updatePaintColor(ILandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    .line 62
    .line 63
    iget v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    .line 64
    .line 65
    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->updatePaintColor(ILandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    div-int/lit8 v3, v0, 0x2

    .line 76
    .line 77
    int-to-float v6, v3

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    sub-int/2addr v4, v3

    .line 83
    int-to-float v7, v4

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sub-int/2addr v4, v3

    .line 89
    int-to-float v8, v4

    .line 90
    iget v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadius:I

    .line 91
    .line 92
    int-to-float v9, v3

    .line 93
    int-to-float v10, v3

    .line 94
    iget-object v11, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    move-object v4, p1

    .line 97
    move v5, v6

    .line 98
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    .line 102
    .line 103
    if-nez v3, :cond_1

    .line 104
    .line 105
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    .line 106
    .line 107
    if-nez v3, :cond_1

    .line 108
    .line 109
    iget v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    .line 110
    .line 111
    cmpl-float v1, v3, v1

    .line 112
    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move v1, v2

    .line 118
    :goto_0
    if-eqz v1, :cond_2

    .line 119
    .line 120
    add-int/lit8 v1, v0, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    move v1, v0

    .line 124
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    .line 138
    .line 139
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 148
    .line 149
    .line 150
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 151
    .line 152
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    .line 157
    .line 158
    int-to-float v6, v0

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    sub-int/2addr v2, v0

    .line 164
    int-to-float v7, v2

    .line 165
    iget v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mCaptionHeight:I

    .line 166
    .line 167
    add-int/2addr v0, v1

    .line 168
    int-to-float v8, v0

    .line 169
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillPaint:Landroid/graphics/Paint;

    .line 170
    .line 171
    move-object v4, p1

    .line 172
    move v5, v6

    .line 173
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final updatePaintColor(ILandroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    .line 2
    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr v0, p0

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eq p1, p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
