.class public Lcom/android/systemui/privacy/television/PrivacyChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBgHeight:I

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mBgRadius:I

.field public final mBgRect:Landroid/graphics/Rect;

.field public final mBgWidth:I

.field public final mChipPaint:Landroid/graphics/Paint;

.field public final mCollapse:Landroid/animation/Animator;

.field public mCollapseProgress:F

.field public final mCollapseToDot:Z

.field public final mCollapsedChipRadius:F

.field public final mDotSize:I

.field public final mExpand:Landroid/animation/Animator;

.field public final mExpandedChipRadius:F

.field public mIsExpanded:Z

.field public final mLayoutDirection:I

.field public final mPath:Landroid/graphics/Path;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Path;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 37
    .line 38
    iput-boolean p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 39
    .line 40
    new-instance p3, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 48
    .line 49
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    const p3, 0x7f0604b3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    iput p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mLayoutDirection:I

    .line 100
    .line 101
    const p3, 0x7f070b26

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    iput p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    .line 109
    .line 110
    const p3, 0x7f070b24

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    iput p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    .line 118
    .line 119
    const p3, 0x7f070b25

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    iput p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 127
    .line 128
    const p3, 0x7f070b28

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    iput p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    .line 136
    .line 137
    const p3, 0x7f070b2e

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    int-to-float p3, p3

    .line 145
    iput p3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpandedChipRadius:F

    .line 146
    .line 147
    const p3, 0x7f070b27

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    int-to-float p2, p2

    .line 155
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapsedChipRadius:F

    .line 156
    .line 157
    const p2, 0x7f0102aa

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    iput-object p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/Animator;

    .line 165
    .line 166
    invoke-virtual {p2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    const p2, 0x7f0102a9

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/Animator;

    .line 177
    .line 178
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const v1, 0x800005

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    .line 18
    .line 19
    iget v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    .line 20
    .line 21
    iget v6, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mLayoutDirection:I

    .line 22
    .line 23
    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 34
    .line 35
    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    iget-object v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->getForegroundBounds(Landroid/graphics/RectF;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpandedChipRadius:F

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapsedChipRadius:F

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 58
    .line 59
    int-to-float v1, v1

    .line 60
    :goto_0
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public getCollapseProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 2
    .line 3
    return p0
.end method

.method public final getForegroundBounds(Landroid/graphics/RectF;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v7, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const v3, 0x800005

    .line 18
    .line 19
    .line 20
    iget v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    .line 21
    .line 22
    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    .line 23
    .line 24
    iget v8, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mLayoutDirection:I

    .line 25
    .line 26
    invoke-static/range {v3 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    const/16 v4, 0x11

    .line 38
    .line 39
    invoke-static {v4, v2, v2, v3, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 59
    .line 60
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    invoke-static {v2, v3, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    invoke-static {v3, v4, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    invoke-static {v4, v5, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 87
    .line 88
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCollapseProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
