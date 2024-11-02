.class public final Landroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final COS_45:D


# instance fields
.field public mAddPaddingForCorners:Z

.field public mBackground:Landroid/content/res/ColorStateList;

.field public final mCardBounds:Landroid/graphics/RectF;

.field public mCornerRadius:F

.field public final mCornerShadowPaint:Landroid/graphics/Paint;

.field public mCornerShadowPath:Landroid/graphics/Path;

.field public mDirty:Z

.field public final mEdgeShadowPaint:Landroid/graphics/Paint;

.field public final mInsetShadow:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mPrintedShadowClipWarning:Z

.field public mRawMaxShadowSize:F

.field public mRawShadowSize:F

.field public final mShadowEndColor:I

.field public mShadowSize:F

.field public final mShadowStartColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 11
    .line 12
    const v2, 0x7f060092

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 20
    .line 21
    const v2, 0x7f060091

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 29
    .line 30
    const v2, 0x7f070176

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 38
    .line 39
    new-instance v2, Landroid/graphics/Paint;

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :cond_0
    iput-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {p2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 80
    .line 81
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    .line 83
    .line 84
    const/high16 v2, 0x3f000000    # 0.5f

    .line 85
    .line 86
    add-float/2addr p3, v2

    .line 87
    float-to-int p3, p3

    .line 88
    int-to-float p3, p3

    .line 89
    iput p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 90
    .line 91
    new-instance p3, Landroid/graphics/RectF;

    .line 92
    .line 93
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 97
    .line 98
    new-instance p3, Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    iput-object p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    cmpg-float p3, p4, p2

    .line 110
    .line 111
    const-string v1, ". Must be >= 0"

    .line 112
    .line 113
    if-ltz p3, :cond_7

    .line 114
    .line 115
    cmpg-float p2, p5, p2

    .line 116
    .line 117
    if-ltz p2, :cond_6

    .line 118
    .line 119
    add-float/2addr p4, v2

    .line 120
    float-to-int p2, p4

    .line 121
    rem-int/lit8 p3, p2, 0x2

    .line 122
    .line 123
    if-ne p3, v0, :cond_1

    .line 124
    .line 125
    add-int/lit8 p2, p2, -0x1

    .line 126
    .line 127
    :cond_1
    int-to-float p2, p2

    .line 128
    add-float/2addr p5, v2

    .line 129
    float-to-int p3, p5

    .line 130
    rem-int/lit8 p4, p3, 0x2

    .line 131
    .line 132
    if-ne p4, v0, :cond_2

    .line 133
    .line 134
    add-int/lit8 p3, p3, -0x1

    .line 135
    .line 136
    :cond_2
    int-to-float p3, p3

    .line 137
    cmpl-float p4, p2, p3

    .line 138
    .line 139
    if-lez p4, :cond_4

    .line 140
    .line 141
    iget-boolean p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 142
    .line 143
    if-nez p2, :cond_3

    .line 144
    .line 145
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 146
    .line 147
    :cond_3
    move p2, p3

    .line 148
    :cond_4
    iget p4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 149
    .line 150
    cmpl-float p4, p4, p2

    .line 151
    .line 152
    if-nez p4, :cond_5

    .line 153
    .line 154
    iget p4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 155
    .line 156
    cmpl-float p4, p4, p3

    .line 157
    .line 158
    if-nez p4, :cond_5

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 162
    .line 163
    iput p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 164
    .line 165
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 166
    .line 167
    mul-float/2addr p2, p3

    .line 168
    int-to-float p1, p1

    .line 169
    add-float/2addr p2, p1

    .line 170
    add-float/2addr p2, v2

    .line 171
    float-to-int p1, p2

    .line 172
    int-to-float p1, p1

    .line 173
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 174
    .line 175
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 178
    .line 179
    .line 180
    :goto_0
    return-void

    .line 181
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string p2, "Invalid max shadow size "

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string p2, "Invalid shadow size "

    .line 209
    .line 210
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .locals 6

    .line 1
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    mul-float/2addr p0, v0

    .line 6
    float-to-double v0, p0

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 10
    .line 11
    sub-double/2addr v2, v4

    .line 12
    float-to-double p0, p1

    .line 13
    mul-double/2addr v2, p0

    .line 14
    add-double/2addr v2, v0

    .line 15
    double-to-float p0, v2

    .line 16
    return p0

    .line 17
    :cond_0
    mul-float/2addr p0, v0

    .line 18
    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 6
    .line 7
    const/high16 v8, 0x42b40000    # 90.0f

    .line 8
    .line 9
    const/high16 v9, 0x43870000    # 270.0f

    .line 10
    .line 11
    const/high16 v10, 0x43340000    # 180.0f

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 23
    .line 24
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 25
    .line 26
    mul-float/2addr v5, v4

    .line 27
    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget v12, v1, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    int-to-float v12, v12

    .line 32
    add-float/2addr v12, v4

    .line 33
    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    int-to-float v13, v13

    .line 36
    add-float/2addr v13, v5

    .line 37
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    int-to-float v14, v14

    .line 40
    sub-float/2addr v14, v4

    .line 41
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    int-to-float v1, v1

    .line 44
    sub-float/2addr v1, v5

    .line 45
    invoke-virtual {v6, v12, v13, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/graphics/RectF;

    .line 49
    .line 50
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 51
    .line 52
    neg-float v5, v4

    .line 53
    invoke-direct {v1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 59
    .line 60
    .line 61
    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 62
    .line 63
    neg-float v5, v5

    .line 64
    invoke-virtual {v4, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 68
    .line 69
    if-nez v5, :cond_0

    .line 70
    .line 71
    new-instance v5, Landroid/graphics/Path;

    .line 72
    .line 73
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 83
    .line 84
    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 87
    .line 88
    .line 89
    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 90
    .line 91
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 92
    .line 93
    neg-float v6, v6

    .line 94
    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    .line 96
    .line 97
    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 98
    .line 99
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 100
    .line 101
    neg-float v6, v6

    .line 102
    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 103
    .line 104
    .line 105
    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 106
    .line 107
    invoke-virtual {v5, v4, v10, v8, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 111
    .line 112
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 113
    .line 114
    invoke-virtual {v4, v1, v9, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 120
    .line 121
    .line 122
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 123
    .line 124
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 125
    .line 126
    add-float/2addr v4, v1

    .line 127
    div-float/2addr v1, v4

    .line 128
    iget-object v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 129
    .line 130
    new-instance v5, Landroid/graphics/RadialGradient;

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v14, 0x0

    .line 134
    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 135
    .line 136
    iget v13, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 137
    .line 138
    add-float v15, v12, v13

    .line 139
    .line 140
    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 141
    .line 142
    iget v13, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 143
    .line 144
    filled-new-array {v12, v12, v13}, [I

    .line 145
    .line 146
    .line 147
    move-result-object v16

    .line 148
    const/4 v13, 0x3

    .line 149
    new-array v12, v13, [F

    .line 150
    .line 151
    aput v11, v12, v3

    .line 152
    .line 153
    aput v1, v12, v2

    .line 154
    .line 155
    const/4 v1, 0x2

    .line 156
    const/high16 v17, 0x3f800000    # 1.0f

    .line 157
    .line 158
    aput v17, v12, v1

    .line 159
    .line 160
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    move-object/from16 v17, v12

    .line 164
    .line 165
    move-object v12, v5

    .line 166
    move v2, v13

    .line 167
    move v13, v1

    .line 168
    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 175
    .line 176
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 177
    .line 178
    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 179
    .line 180
    neg-float v5, v5

    .line 181
    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 182
    .line 183
    add-float v14, v5, v12

    .line 184
    .line 185
    const/4 v15, 0x0

    .line 186
    sub-float v16, v5, v12

    .line 187
    .line 188
    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 189
    .line 190
    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 191
    .line 192
    filled-new-array {v5, v5, v12}, [I

    .line 193
    .line 194
    .line 195
    move-result-object v17

    .line 196
    new-array v2, v2, [F

    .line 197
    .line 198
    fill-array-data v2, :array_0

    .line 199
    .line 200
    .line 201
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 202
    .line 203
    move-object v12, v4

    .line 204
    move v13, v6

    .line 205
    move-object/from16 v18, v2

    .line 206
    .line 207
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 214
    .line 215
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    .line 217
    .line 218
    iput-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 219
    .line 220
    :cond_1
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 221
    .line 222
    const/high16 v12, 0x40000000    # 2.0f

    .line 223
    .line 224
    div-float/2addr v1, v12

    .line 225
    invoke-virtual {v7, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    .line 227
    .line 228
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 229
    .line 230
    neg-float v2, v1

    .line 231
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 232
    .line 233
    sub-float v13, v2, v4

    .line 234
    .line 235
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 236
    .line 237
    int-to-float v2, v2

    .line 238
    add-float/2addr v1, v2

    .line 239
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 240
    .line 241
    div-float/2addr v2, v12

    .line 242
    add-float v14, v2, v1

    .line 243
    .line 244
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    mul-float v15, v14, v12

    .line 251
    .line 252
    sub-float/2addr v1, v15

    .line 253
    cmpl-float v1, v1, v11

    .line 254
    .line 255
    if-lez v1, :cond_2

    .line 256
    .line 257
    const/16 v16, 0x1

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_2
    move/from16 v16, v3

    .line 261
    .line 262
    :goto_1
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 263
    .line 264
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    sub-float/2addr v1, v15

    .line 269
    cmpl-float v1, v1, v11

    .line 270
    .line 271
    if-lez v1, :cond_3

    .line 272
    .line 273
    const/16 v20, 0x1

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_3
    move/from16 v20, v3

    .line 277
    .line 278
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 283
    .line 284
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 285
    .line 286
    add-float/2addr v2, v14

    .line 287
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 288
    .line 289
    add-float/2addr v1, v14

    .line 290
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 294
    .line 295
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 296
    .line 297
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 298
    .line 299
    .line 300
    if-eqz v16, :cond_4

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    sub-float v4, v1, v15

    .line 310
    .line 311
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 312
    .line 313
    neg-float v5, v1

    .line 314
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 315
    .line 316
    move-object/from16 v1, p1

    .line 317
    .line 318
    move-object/from16 v17, v3

    .line 319
    .line 320
    move v3, v13

    .line 321
    move v11, v6

    .line 322
    move-object/from16 v6, v17

    .line 323
    .line 324
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_4
    move v11, v6

    .line 329
    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 337
    .line 338
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 339
    .line 340
    sub-float/2addr v2, v14

    .line 341
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 342
    .line 343
    sub-float/2addr v1, v14

    .line 344
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 351
    .line 352
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 355
    .line 356
    .line 357
    if-eqz v16, :cond_5

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 361
    .line 362
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    sub-float v4, v1, v15

    .line 367
    .line 368
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 369
    .line 370
    neg-float v1, v1

    .line 371
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 372
    .line 373
    add-float v5, v1, v3

    .line 374
    .line 375
    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 376
    .line 377
    move-object/from16 v1, p1

    .line 378
    .line 379
    move v3, v13

    .line 380
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 381
    .line 382
    .line 383
    :cond_5
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 391
    .line 392
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 393
    .line 394
    add-float/2addr v2, v14

    .line 395
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 396
    .line 397
    sub-float/2addr v1, v14

    .line 398
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 405
    .line 406
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 407
    .line 408
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 409
    .line 410
    .line 411
    if-eqz v20, :cond_6

    .line 412
    .line 413
    const/4 v2, 0x0

    .line 414
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 415
    .line 416
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    sub-float v4, v1, v15

    .line 421
    .line 422
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 423
    .line 424
    neg-float v5, v1

    .line 425
    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 426
    .line 427
    move-object/from16 v1, p1

    .line 428
    .line 429
    move v3, v13

    .line 430
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 431
    .line 432
    .line 433
    :cond_6
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 437
    .line 438
    .line 439
    move-result v9

    .line 440
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 441
    .line 442
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 443
    .line 444
    sub-float/2addr v2, v14

    .line 445
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 446
    .line 447
    add-float/2addr v1, v14

    .line 448
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 452
    .line 453
    .line 454
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 455
    .line 456
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 457
    .line 458
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 459
    .line 460
    .line 461
    if-eqz v20, :cond_7

    .line 462
    .line 463
    const/4 v2, 0x0

    .line 464
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 465
    .line 466
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    sub-float v4, v1, v15

    .line 471
    .line 472
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 473
    .line 474
    neg-float v5, v1

    .line 475
    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 476
    .line 477
    move-object/from16 v1, p1

    .line 478
    .line 479
    move v3, v13

    .line 480
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 481
    .line 482
    .line 483
    :cond_7
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 484
    .line 485
    .line 486
    iget v0, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 487
    .line 488
    neg-float v0, v0

    .line 489
    div-float/2addr v0, v12

    .line 490
    const/4 v1, 0x0

    .line 491
    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 492
    .line 493
    .line 494
    const/4 v0, 0x0

    .line 495
    throw v0

    .line 496
    nop

    .line 497
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 18
    .line 19
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 20
    .line 21
    iget-boolean p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    float-to-double v3, v1

    .line 26
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 27
    .line 28
    sget-wide v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 29
    .line 30
    sub-double/2addr v5, v7

    .line 31
    float-to-double v1, v2

    .line 32
    mul-double/2addr v5, v1

    .line 33
    add-double/2addr v5, v3

    .line 34
    double-to-float v1, v5

    .line 35
    :cond_0
    float-to-double v1, v1

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    double-to-int p0, v1

    .line 41
    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 30
    .line 31
    .line 32
    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method
