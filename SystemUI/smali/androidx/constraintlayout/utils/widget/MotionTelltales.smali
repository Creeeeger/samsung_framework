.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mInvertMatrix:Landroid/graphics/Matrix;

.field public mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final mPaintTelltales:Landroid/graphics/Paint;

.field public mTailColor:I

.field public mTailScale:F

.field public mVelocityMode:I

.field public final velocity:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 14
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 15
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 19
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const p3, -0xff01

    .line 22
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 23
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 53
    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 61
    .line 62
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 68
    .line 69
    const/high16 p1, 0x40a00000    # 5.0f

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 28
    .line 29
    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x5

    .line 41
    new-array v4, v3, [F

    .line 42
    .line 43
    fill-array-data v4, :array_0

    .line 44
    .line 45
    .line 46
    move-object v7, v0

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    if-ge v6, v3, :cond_29

    .line 49
    .line 50
    aget v14, v4, v6

    .line 51
    .line 52
    const/4 v15, 0x0

    .line 53
    :goto_1
    if-ge v15, v3, :cond_28

    .line 54
    .line 55
    aget v13, v4, v15

    .line 56
    .line 57
    iget-object v8, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 58
    .line 59
    iget-object v12, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 60
    .line 61
    iget v11, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 62
    .line 63
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 64
    .line 65
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 66
    .line 67
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 72
    .line 73
    sub-float/2addr v3, v10

    .line 74
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 79
    .line 80
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 81
    .line 82
    const v16, 0x3727c5ac    # 1.0E-5f

    .line 83
    .line 84
    .line 85
    add-float v10, v10, v16

    .line 86
    .line 87
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 92
    .line 93
    iget v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 94
    .line 95
    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    sub-float/2addr v9, v10

    .line 100
    div-float v9, v9, v16

    .line 101
    .line 102
    mul-float/2addr v9, v3

    .line 103
    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 104
    .line 105
    div-float/2addr v9, v3

    .line 106
    :cond_2
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 107
    .line 108
    instance-of v5, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    :cond_3
    move v3, v9

    .line 117
    iget-object v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 124
    .line 125
    and-int/lit8 v7, v11, 0x1

    .line 126
    .line 127
    const/16 v16, 0x1

    .line 128
    .line 129
    if-nez v7, :cond_26

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v17

    .line 139
    iget-object v8, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 140
    .line 141
    invoke-virtual {v5, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    iget-object v10, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 146
    .line 147
    const/16 v18, 0x0

    .line 148
    .line 149
    move-object/from16 v19, v4

    .line 150
    .line 151
    const-string/jumbo v4, "translationX"

    .line 152
    .line 153
    .line 154
    if-nez v10, :cond_4

    .line 155
    .line 156
    move/from16 v20, v11

    .line 157
    .line 158
    move-object/from16 v10, v18

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    check-cast v10, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 166
    .line 167
    move/from16 v20, v11

    .line 168
    .line 169
    :goto_2
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 170
    .line 171
    move/from16 v21, v6

    .line 172
    .line 173
    const-string/jumbo v6, "translationY"

    .line 174
    .line 175
    .line 176
    if-nez v11, :cond_5

    .line 177
    .line 178
    move/from16 v22, v15

    .line 179
    .line 180
    move-object/from16 v11, v18

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 188
    .line 189
    move/from16 v22, v15

    .line 190
    .line 191
    :goto_3
    iget-object v15, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 192
    .line 193
    move/from16 v23, v2

    .line 194
    .line 195
    const-string/jumbo v2, "rotation"

    .line 196
    .line 197
    .line 198
    if-nez v15, :cond_6

    .line 199
    .line 200
    move/from16 v24, v1

    .line 201
    .line 202
    move-object/from16 v15, v18

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_6
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    check-cast v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 210
    .line 211
    move/from16 v24, v1

    .line 212
    .line 213
    :goto_4
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 214
    .line 215
    const-string/jumbo v0, "scaleX"

    .line 216
    .line 217
    .line 218
    if-nez v1, :cond_7

    .line 219
    .line 220
    move/from16 v25, v3

    .line 221
    .line 222
    move-object/from16 v1, v18

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 230
    .line 231
    move/from16 v25, v3

    .line 232
    .line 233
    :goto_5
    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 234
    .line 235
    move-object/from16 v26, v8

    .line 236
    .line 237
    const-string/jumbo v8, "scaleY"

    .line 238
    .line 239
    .line 240
    if-nez v3, :cond_8

    .line 241
    .line 242
    move/from16 v27, v7

    .line 243
    .line 244
    move-object/from16 v3, v18

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_8
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 252
    .line 253
    move/from16 v27, v7

    .line 254
    .line 255
    :goto_6
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 256
    .line 257
    if-nez v7, :cond_9

    .line 258
    .line 259
    move-object/from16 v4, v18

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_9
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 267
    .line 268
    :goto_7
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 269
    .line 270
    if-nez v7, :cond_a

    .line 271
    .line 272
    move-object/from16 v6, v18

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 280
    .line 281
    :goto_8
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 282
    .line 283
    if-nez v7, :cond_b

    .line 284
    .line 285
    move-object/from16 v2, v18

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_b
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 293
    .line 294
    :goto_9
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 295
    .line 296
    if-nez v7, :cond_c

    .line 297
    .line 298
    move-object/from16 v0, v18

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_c
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 306
    .line 307
    :goto_a
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 308
    .line 309
    if-nez v7, :cond_d

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_d
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    move-object/from16 v18, v7

    .line 317
    .line 318
    check-cast v18, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 319
    .line 320
    :goto_b
    move-object/from16 v7, v18

    .line 321
    .line 322
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    .line 323
    .line 324
    invoke-direct {v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    .line 325
    .line 326
    .line 327
    move-object/from16 v18, v12

    .line 328
    .line 329
    const/4 v12, 0x0

    .line 330
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 331
    .line 332
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 333
    .line 334
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 335
    .line 336
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 337
    .line 338
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 339
    .line 340
    if-eqz v15, :cond_e

    .line 341
    .line 342
    iget-object v12, v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 343
    .line 344
    move/from16 v29, v13

    .line 345
    .line 346
    move/from16 v28, v14

    .line 347
    .line 348
    float-to-double v13, v9

    .line 349
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 350
    .line 351
    .line 352
    move-result-wide v12

    .line 353
    double-to-float v12, v12

    .line 354
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 355
    .line 356
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 361
    .line 362
    goto :goto_c

    .line 363
    :cond_e
    move/from16 v29, v13

    .line 364
    .line 365
    move/from16 v28, v14

    .line 366
    .line 367
    :goto_c
    if-eqz v10, :cond_f

    .line 368
    .line 369
    iget-object v12, v10, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 370
    .line 371
    float-to-double v13, v9

    .line 372
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 373
    .line 374
    .line 375
    move-result-wide v12

    .line 376
    double-to-float v12, v12

    .line 377
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 378
    .line 379
    :cond_f
    if-eqz v11, :cond_10

    .line 380
    .line 381
    iget-object v12, v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 382
    .line 383
    float-to-double v13, v9

    .line 384
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 385
    .line 386
    .line 387
    move-result-wide v12

    .line 388
    double-to-float v12, v12

    .line 389
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 390
    .line 391
    :cond_10
    if-eqz v1, :cond_11

    .line 392
    .line 393
    iget-object v12, v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 394
    .line 395
    float-to-double v13, v9

    .line 396
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 397
    .line 398
    .line 399
    move-result-wide v12

    .line 400
    double-to-float v12, v12

    .line 401
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 402
    .line 403
    :cond_11
    if-eqz v3, :cond_12

    .line 404
    .line 405
    iget-object v12, v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 406
    .line 407
    float-to-double v13, v9

    .line 408
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 409
    .line 410
    .line 411
    move-result-wide v12

    .line 412
    double-to-float v12, v12

    .line 413
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 414
    .line 415
    :cond_12
    if-eqz v2, :cond_13

    .line 416
    .line 417
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 418
    .line 419
    .line 420
    move-result v12

    .line 421
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 422
    .line 423
    :cond_13
    if-eqz v4, :cond_14

    .line 424
    .line 425
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 430
    .line 431
    :cond_14
    if-eqz v6, :cond_15

    .line 432
    .line 433
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 434
    .line 435
    .line 436
    move-result v12

    .line 437
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 438
    .line 439
    :cond_15
    if-eqz v0, :cond_16

    .line 440
    .line 441
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 442
    .line 443
    .line 444
    move-result v12

    .line 445
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 446
    .line 447
    :cond_16
    if-eqz v7, :cond_17

    .line 448
    .line 449
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 454
    .line 455
    :cond_17
    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 456
    .line 457
    iget-object v13, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 458
    .line 459
    if-eqz v12, :cond_19

    .line 460
    .line 461
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 462
    .line 463
    array-length v1, v0

    .line 464
    if-lez v1, :cond_18

    .line 465
    .line 466
    float-to-double v1, v9

    .line 467
    invoke-virtual {v12, v1, v2, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 471
    .line 472
    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 473
    .line 474
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 475
    .line 476
    .line 477
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 478
    .line 479
    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 480
    .line 481
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 482
    .line 483
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    move-object v14, v8

    .line 487
    move/from16 v8, v29

    .line 488
    .line 489
    move/from16 v9, v28

    .line 490
    .line 491
    move-object/from16 v10, v18

    .line 492
    .line 493
    move/from16 v1, v20

    .line 494
    .line 495
    move-object/from16 v2, v18

    .line 496
    .line 497
    move/from16 v3, v29

    .line 498
    .line 499
    move-object v13, v0

    .line 500
    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 501
    .line 502
    .line 503
    goto :goto_d

    .line 504
    :cond_18
    move-object v14, v8

    .line 505
    move-object/from16 v2, v18

    .line 506
    .line 507
    move/from16 v1, v20

    .line 508
    .line 509
    move/from16 v3, v29

    .line 510
    .line 511
    :goto_d
    move-object v8, v14

    .line 512
    move v9, v3

    .line 513
    move/from16 v10, v28

    .line 514
    .line 515
    move/from16 v11, v27

    .line 516
    .line 517
    move/from16 v12, v17

    .line 518
    .line 519
    move-object v13, v2

    .line 520
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 521
    .line 522
    .line 523
    move/from16 v30, v1

    .line 524
    .line 525
    move-object v1, v2

    .line 526
    goto :goto_f

    .line 527
    :cond_19
    move-object v14, v8

    .line 528
    move/from16 v30, v20

    .line 529
    .line 530
    move/from16 v12, v29

    .line 531
    .line 532
    iget-object v8, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 533
    .line 534
    if-eqz v8, :cond_1b

    .line 535
    .line 536
    move-object/from16 v8, v26

    .line 537
    .line 538
    invoke-virtual {v5, v9, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 543
    .line 544
    const/4 v2, 0x0

    .line 545
    aget-object v1, v1, v2

    .line 546
    .line 547
    float-to-double v3, v0

    .line 548
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 549
    .line 550
    invoke-virtual {v1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 551
    .line 552
    .line 553
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 554
    .line 555
    aget-object v0, v0, v2

    .line 556
    .line 557
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 558
    .line 559
    invoke-virtual {v0, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 560
    .line 561
    .line 562
    aget v0, v8, v2

    .line 563
    .line 564
    const/4 v1, 0x0

    .line 565
    :goto_e
    iget-object v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 566
    .line 567
    array-length v3, v2

    .line 568
    if-ge v1, v3, :cond_1a

    .line 569
    .line 570
    aget-wide v3, v2, v1

    .line 571
    .line 572
    float-to-double v6, v0

    .line 573
    mul-double/2addr v3, v6

    .line 574
    aput-wide v3, v2, v1

    .line 575
    .line 576
    add-int/lit8 v1, v1, 0x1

    .line 577
    .line 578
    goto :goto_e

    .line 579
    :cond_1a
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 580
    .line 581
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 582
    .line 583
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    move-object/from16 v1, v18

    .line 587
    .line 588
    move v8, v12

    .line 589
    move/from16 v9, v28

    .line 590
    .line 591
    move-object v10, v1

    .line 592
    move v3, v12

    .line 593
    move-object v12, v2

    .line 594
    move-object v13, v0

    .line 595
    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 596
    .line 597
    .line 598
    move-object v8, v14

    .line 599
    move v9, v3

    .line 600
    move/from16 v10, v28

    .line 601
    .line 602
    move/from16 v11, v27

    .line 603
    .line 604
    move/from16 v12, v17

    .line 605
    .line 606
    move-object v13, v1

    .line 607
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 608
    .line 609
    .line 610
    :goto_f
    move-object v0, v1

    .line 611
    move v1, v3

    .line 612
    goto/16 :goto_10

    .line 613
    .line 614
    :cond_1b
    move-object/from16 v8, v18

    .line 615
    .line 616
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 617
    .line 618
    move-object/from16 v18, v7

    .line 619
    .line 620
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 621
    .line 622
    move-object/from16 v20, v0

    .line 623
    .line 624
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 625
    .line 626
    sub-float/2addr v7, v0

    .line 627
    iget v0, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 628
    .line 629
    move-object/from16 v26, v6

    .line 630
    .line 631
    iget v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 632
    .line 633
    sub-float/2addr v0, v6

    .line 634
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 635
    .line 636
    move-object/from16 v29, v4

    .line 637
    .line 638
    iget v4, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 639
    .line 640
    sub-float/2addr v6, v4

    .line 641
    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 642
    .line 643
    iget v5, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 644
    .line 645
    sub-float/2addr v4, v5

    .line 646
    add-float/2addr v6, v7

    .line 647
    add-float/2addr v4, v0

    .line 648
    const/high16 v5, 0x3f800000    # 1.0f

    .line 649
    .line 650
    sub-float v13, v5, v12

    .line 651
    .line 652
    mul-float/2addr v13, v7

    .line 653
    mul-float/2addr v6, v12

    .line 654
    add-float/2addr v6, v13

    .line 655
    const/4 v7, 0x0

    .line 656
    aput v6, v8, v7

    .line 657
    .line 658
    sub-float v5, v5, v28

    .line 659
    .line 660
    mul-float/2addr v5, v0

    .line 661
    mul-float v4, v4, v28

    .line 662
    .line 663
    add-float/2addr v4, v5

    .line 664
    aput v4, v8, v16

    .line 665
    .line 666
    const/4 v0, 0x0

    .line 667
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 668
    .line 669
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 670
    .line 671
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 672
    .line 673
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 674
    .line 675
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 676
    .line 677
    if-eqz v15, :cond_1c

    .line 678
    .line 679
    iget-object v0, v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 680
    .line 681
    float-to-double v4, v9

    .line 682
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 683
    .line 684
    .line 685
    move-result-wide v4

    .line 686
    double-to-float v0, v4

    .line 687
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 688
    .line 689
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 694
    .line 695
    :cond_1c
    if-eqz v10, :cond_1d

    .line 696
    .line 697
    iget-object v0, v10, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 698
    .line 699
    float-to-double v4, v9

    .line 700
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 701
    .line 702
    .line 703
    move-result-wide v4

    .line 704
    double-to-float v0, v4

    .line 705
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 706
    .line 707
    :cond_1d
    if-eqz v11, :cond_1e

    .line 708
    .line 709
    iget-object v0, v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 710
    .line 711
    float-to-double v4, v9

    .line 712
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 713
    .line 714
    .line 715
    move-result-wide v4

    .line 716
    double-to-float v0, v4

    .line 717
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 718
    .line 719
    :cond_1e
    if-eqz v1, :cond_1f

    .line 720
    .line 721
    iget-object v0, v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 722
    .line 723
    float-to-double v4, v9

    .line 724
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 725
    .line 726
    .line 727
    move-result-wide v0

    .line 728
    double-to-float v0, v0

    .line 729
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 730
    .line 731
    :cond_1f
    if-eqz v3, :cond_20

    .line 732
    .line 733
    iget-object v0, v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 734
    .line 735
    float-to-double v3, v9

    .line 736
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 737
    .line 738
    .line 739
    move-result-wide v0

    .line 740
    double-to-float v0, v0

    .line 741
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 742
    .line 743
    :cond_20
    if-eqz v2, :cond_21

    .line 744
    .line 745
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 750
    .line 751
    :cond_21
    if-eqz v29, :cond_22

    .line 752
    .line 753
    move-object/from16 v4, v29

    .line 754
    .line 755
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 760
    .line 761
    :cond_22
    if-eqz v26, :cond_23

    .line 762
    .line 763
    move-object/from16 v6, v26

    .line 764
    .line 765
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 770
    .line 771
    :cond_23
    if-eqz v20, :cond_24

    .line 772
    .line 773
    move-object/from16 v0, v20

    .line 774
    .line 775
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 780
    .line 781
    :cond_24
    if-eqz v18, :cond_25

    .line 782
    .line 783
    move-object/from16 v0, v18

    .line 784
    .line 785
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 790
    .line 791
    :cond_25
    move-object v0, v8

    .line 792
    move-object v8, v14

    .line 793
    move v9, v12

    .line 794
    move/from16 v10, v28

    .line 795
    .line 796
    move/from16 v11, v27

    .line 797
    .line 798
    move v1, v12

    .line 799
    move/from16 v12, v17

    .line 800
    .line 801
    move-object v13, v0

    .line 802
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 803
    .line 804
    .line 805
    :goto_10
    move/from16 v2, v28

    .line 806
    .line 807
    goto :goto_11

    .line 808
    :cond_26
    move/from16 v24, v1

    .line 809
    .line 810
    move/from16 v23, v2

    .line 811
    .line 812
    move/from16 v25, v3

    .line 813
    .line 814
    move-object/from16 v19, v4

    .line 815
    .line 816
    move/from16 v21, v6

    .line 817
    .line 818
    move/from16 v30, v11

    .line 819
    .line 820
    move-object v0, v12

    .line 821
    move v1, v13

    .line 822
    move v2, v14

    .line 823
    move/from16 v22, v15

    .line 824
    .line 825
    invoke-virtual {v5, v10, v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 826
    .line 827
    .line 828
    :goto_11
    const/4 v3, 0x2

    .line 829
    move/from16 v4, v30

    .line 830
    .line 831
    if-ge v4, v3, :cond_27

    .line 832
    .line 833
    const/4 v3, 0x0

    .line 834
    aget v4, v0, v3

    .line 835
    .line 836
    mul-float v4, v4, v25

    .line 837
    .line 838
    aput v4, v0, v3

    .line 839
    .line 840
    aget v3, v0, v16

    .line 841
    .line 842
    mul-float v3, v3, v25

    .line 843
    .line 844
    aput v3, v0, v16

    .line 845
    .line 846
    :cond_27
    move-object/from16 v0, p0

    .line 847
    .line 848
    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 849
    .line 850
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 851
    .line 852
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 853
    .line 854
    .line 855
    move/from16 v3, v24

    .line 856
    .line 857
    int-to-float v4, v3

    .line 858
    mul-float v6, v4, v1

    .line 859
    .line 860
    move/from16 v1, v23

    .line 861
    .line 862
    int-to-float v4, v1

    .line 863
    mul-float v7, v4, v2

    .line 864
    .line 865
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 866
    .line 867
    const/4 v11, 0x0

    .line 868
    aget v5, v4, v11

    .line 869
    .line 870
    iget v8, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 871
    .line 872
    mul-float/2addr v5, v8

    .line 873
    sub-float v9, v6, v5

    .line 874
    .line 875
    aget v5, v4, v16

    .line 876
    .line 877
    mul-float/2addr v5, v8

    .line 878
    sub-float v10, v7, v5

    .line 879
    .line 880
    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 881
    .line 882
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 883
    .line 884
    .line 885
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 886
    .line 887
    move-object/from16 v5, p1

    .line 888
    .line 889
    move v8, v9

    .line 890
    move v9, v10

    .line 891
    move-object v10, v4

    .line 892
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 893
    .line 894
    .line 895
    add-int/lit8 v15, v22, 0x1

    .line 896
    .line 897
    move-object v7, v0

    .line 898
    move v14, v2

    .line 899
    move-object/from16 v4, v19

    .line 900
    .line 901
    move/from16 v6, v21

    .line 902
    .line 903
    move v2, v1

    .line 904
    move v1, v3

    .line 905
    const/4 v3, 0x5

    .line 906
    goto/16 :goto_1

    .line 907
    .line 908
    :cond_28
    move v3, v1

    .line 909
    move v1, v2

    .line 910
    move-object/from16 v19, v4

    .line 911
    .line 912
    move/from16 v21, v6

    .line 913
    .line 914
    const/4 v11, 0x0

    .line 915
    add-int/lit8 v6, v21, 0x1

    .line 916
    .line 917
    move v1, v3

    .line 918
    const/4 v3, 0x5

    .line 919
    goto/16 :goto_0

    .line 920
    .line 921
    :cond_29
    return-void

    .line 922
    nop

    .line 923
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
