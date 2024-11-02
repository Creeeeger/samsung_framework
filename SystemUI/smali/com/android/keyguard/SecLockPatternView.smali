.class public Lcom/android/keyguard/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBitmapError:Landroid/graphics/Bitmap;

.field public mBitmapHeight:I

.field public mBitmapRegular:Landroid/graphics/Bitmap;

.field public mBitmapSuccess:Landroid/graphics/Bitmap;

.field public mBitmapWidth:I

.field public final mCircleMatrix:Landroid/graphics/Matrix;

.field public mDecoPatternEnabled:Z

.field public mIsWhiteWp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 4
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    return-void
.end method


# virtual methods
.method public final addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v1, 0x7f0714b5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    float-to-int p0, p0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string p0, "getScaledBitmapFor() return null - bitmap is null resId = "

    .line 32
    .line 33
    const-string v0, "SecLockPatternView"

    .line 34
    .line 35
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const/4 p1, 0x1

    .line 41
    invoke-static {v0, p0, p0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 11
    .line 12
    const v1, 0x3d4ccccd    # 0.05f

    .line 13
    .line 14
    .line 15
    mul-float/2addr v0, v1

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 28
    .line 29
    if-ge v2, v4, :cond_8

    .line 30
    .line 31
    if-ge v2, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :goto_1
    if-ge v2, v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/4 v8, 0x1

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    if-ne v7, v8, :cond_3

    .line 67
    .line 68
    iput-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 74
    .line 75
    sub-float v9, v4, v9

    .line 76
    .line 77
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 82
    .line 83
    sub-float v10, v5, v10

    .line 84
    .line 85
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    const/4 v11, 0x0

    .line 90
    cmpl-float v9, v9, v11

    .line 91
    .line 92
    if-gtz v9, :cond_4

    .line 93
    .line 94
    cmpl-float v9, v10, v11

    .line 95
    .line 96
    if-lez v9, :cond_5

    .line 97
    .line 98
    :cond_4
    move v3, v8

    .line 99
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 100
    .line 101
    if-eqz v8, :cond_7

    .line 102
    .line 103
    if-lez v7, :cond_7

    .line 104
    .line 105
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 106
    .line 107
    add-int/lit8 v7, v7, -0x1

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    sub-float/2addr v9, v0

    .line 136
    const/high16 v10, 0x41a00000    # 20.0f

    .line 137
    .line 138
    sub-float/2addr v9, v10

    .line 139
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    add-float/2addr v4, v0

    .line 144
    add-float/2addr v4, v10

    .line 145
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    sub-float/2addr v8, v0

    .line 150
    sub-float/2addr v8, v10

    .line 151
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    add-float/2addr v5, v0

    .line 156
    add-float/2addr v5, v10

    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 160
    .line 161
    const/high16 v10, 0x3f000000    # 0.5f

    .line 162
    .line 163
    mul-float/2addr v7, v10

    .line 164
    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 165
    .line 166
    mul-float/2addr v11, v10

    .line 167
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    sub-float v12, v10, v7

    .line 184
    .line 185
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    add-float/2addr v10, v7

    .line 190
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    sub-float v7, v6, v11

    .line 195
    .line 196
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    add-float/2addr v6, v11

    .line 201
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 206
    .line 207
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 224
    .line 225
    .line 226
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 241
    .line 242
    if-eqz v3, :cond_9

    .line 243
    .line 244
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 245
    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 252
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 259
    .line 260
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 261
    .line 262
    .line 263
    :cond_9
    :goto_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_b

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 21
    .line 22
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 23
    .line 24
    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    if-ne v5, v6, :cond_4

    .line 28
    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    mul-int/lit16 v5, v5, 0x2bc

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    iget-wide v11, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 38
    .line 39
    sub-long/2addr v9, v11

    .line 40
    long-to-int v6, v9

    .line 41
    rem-int/2addr v6, v5

    .line 42
    div-int/lit16 v5, v6, 0x2bc

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    :goto_0
    if-ge v9, v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 55
    .line 56
    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    aget-object v11, v4, v11

    .line 61
    .line 62
    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    aput-boolean v8, v11, v10

    .line 67
    .line 68
    add-int/lit8 v9, v9, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-lez v5, :cond_2

    .line 72
    .line 73
    if-ge v5, v3, :cond_2

    .line 74
    .line 75
    move v9, v8

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v9, 0x0

    .line 78
    :goto_1
    if-eqz v9, :cond_3

    .line 79
    .line 80
    rem-int/lit16 v6, v6, 0x2bc

    .line 81
    .line 82
    int-to-float v6, v6

    .line 83
    const/high16 v9, 0x442f0000    # 700.0f

    .line 84
    .line 85
    div-float/2addr v6, v9

    .line 86
    add-int/lit8 v9, v5, -0x1

    .line 87
    .line 88
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 93
    .line 94
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    sub-float/2addr v11, v10

    .line 125
    mul-float/2addr v11, v6

    .line 126
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    sub-float/2addr v5, v9

    .line 135
    mul-float/2addr v5, v6

    .line 136
    add-float/2addr v10, v11

    .line 137
    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 138
    .line 139
    add-float/2addr v9, v5

    .line 140
    iput v9, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 141
    .line 142
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 146
    .line 147
    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 148
    .line 149
    const v9, 0x3d4ccccd    # 0.05f

    .line 150
    .line 151
    .line 152
    mul-float/2addr v9, v5

    .line 153
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 154
    .line 155
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    .line 157
    .line 158
    const/16 v9, 0x80

    .line 159
    .line 160
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 161
    .line 162
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    .line 164
    .line 165
    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 166
    .line 167
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 168
    .line 169
    .line 170
    iget-boolean v10, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 171
    .line 172
    xor-int/2addr v10, v8

    .line 173
    if-eqz v10, :cond_6

    .line 174
    .line 175
    iget-boolean v11, v0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    .line 176
    .line 177
    const/4 v12, 0x0

    .line 178
    if-eqz v11, :cond_5

    .line 179
    .line 180
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    const v14, 0x7f060917

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    const v14, 0x7f060916

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_2
    if-eqz v10, :cond_c

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    move v11, v10

    .line 217
    const/4 v12, 0x0

    .line 218
    const/4 v13, 0x0

    .line 219
    :goto_3
    if-ge v12, v3, :cond_a

    .line 220
    .line 221
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 226
    .line 227
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 228
    .line 229
    .line 230
    move-result v15

    .line 231
    aget-object v15, v4, v15

    .line 232
    .line 233
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 234
    .line 235
    .line 236
    move-result v16

    .line 237
    aget-boolean v15, v15, v16

    .line 238
    .line 239
    if-nez v15, :cond_7

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_7
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    invoke-virtual {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    if-eqz v12, :cond_9

    .line 259
    .line 260
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 261
    .line 262
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 263
    .line 264
    .line 265
    move-result v17

    .line 266
    aget-object v7, v7, v17

    .line 267
    .line 268
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    aget-object v7, v7, v14

    .line 273
    .line 274
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 278
    .line 279
    .line 280
    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 281
    .line 282
    const/4 v11, 0x1

    .line 283
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    if-eqz v10, :cond_8

    .line 288
    .line 289
    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 290
    .line 291
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-eqz v10, :cond_8

    .line 296
    .line 297
    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 298
    .line 299
    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 300
    .line 301
    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_8
    invoke-virtual {v9, v13, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    .line 307
    .line 308
    :goto_4
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 309
    .line 310
    invoke-virtual {v1, v9, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    .line 312
    .line 313
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 314
    .line 315
    move v10, v13

    .line 316
    move v11, v15

    .line 317
    move v13, v8

    .line 318
    goto :goto_3

    .line 319
    :cond_a
    :goto_5
    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 320
    .line 321
    if-nez v2, :cond_b

    .line 322
    .line 323
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 324
    .line 325
    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 326
    .line 327
    if-ne v2, v3, :cond_c

    .line 328
    .line 329
    :cond_b
    if-eqz v13, :cond_c

    .line 330
    .line 331
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 335
    .line 336
    .line 337
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 338
    .line 339
    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 340
    .line 341
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    .line 343
    .line 344
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 345
    .line 346
    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 347
    .line 348
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 352
    .line 353
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 354
    .line 355
    .line 356
    :cond_c
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    .line 357
    .line 358
    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    :goto_6
    const/4 v8, 0x3

    .line 362
    if-ge v7, v8, :cond_16

    .line 363
    .line 364
    int-to-float v9, v2

    .line 365
    int-to-float v10, v7

    .line 366
    mul-float/2addr v10, v6

    .line 367
    add-float/2addr v10, v9

    .line 368
    const/4 v9, 0x0

    .line 369
    :goto_7
    if-ge v9, v8, :cond_15

    .line 370
    .line 371
    int-to-float v11, v3

    .line 372
    int-to-float v12, v9

    .line 373
    mul-float/2addr v12, v5

    .line 374
    add-float/2addr v12, v11

    .line 375
    float-to-int v11, v12

    .line 376
    float-to-int v12, v10

    .line 377
    aget-object v13, v4, v7

    .line 378
    .line 379
    aget-boolean v13, v13, v9

    .line 380
    .line 381
    if-eqz v13, :cond_12

    .line 382
    .line 383
    iget-boolean v13, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 384
    .line 385
    if-eqz v13, :cond_d

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_d
    iget-boolean v13, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 389
    .line 390
    if-eqz v13, :cond_e

    .line 391
    .line 392
    iget-object v13, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_e
    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 396
    .line 397
    sget-object v14, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 398
    .line 399
    if-ne v13, v14, :cond_f

    .line 400
    .line 401
    iget-object v13, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    .line 402
    .line 403
    if-nez v13, :cond_13

    .line 404
    .line 405
    iget-object v13, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_f
    sget-object v14, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 409
    .line 410
    if-eq v13, v14, :cond_11

    .line 411
    .line 412
    sget-object v14, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 413
    .line 414
    if-ne v13, v14, :cond_10

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 418
    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string/jumbo v3, "unknown display mode "

    .line 422
    .line 423
    .line 424
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 428
    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v1

    .line 440
    :cond_11
    :goto_8
    iget-object v13, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_12
    :goto_9
    iget-object v13, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 444
    .line 445
    :cond_13
    :goto_a
    iget v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 446
    .line 447
    iget v15, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 448
    .line 449
    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 450
    .line 451
    move/from16 v18, v2

    .line 452
    .line 453
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 454
    .line 455
    int-to-float v14, v14

    .line 456
    sub-float v19, v8, v14

    .line 457
    .line 458
    const/high16 v20, 0x40000000    # 2.0f

    .line 459
    .line 460
    move/from16 v21, v3

    .line 461
    .line 462
    div-float v3, v19, v20

    .line 463
    .line 464
    float-to-int v3, v3

    .line 465
    int-to-float v15, v15

    .line 466
    sub-float/2addr v2, v15

    .line 467
    div-float v2, v2, v20

    .line 468
    .line 469
    float-to-int v2, v2

    .line 470
    div-float/2addr v8, v14

    .line 471
    const/high16 v14, 0x3f800000    # 1.0f

    .line 472
    .line 473
    invoke-static {v8, v14}, Ljava/lang/Math;->min(FF)F

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    iget v15, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 478
    .line 479
    iget v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 480
    .line 481
    int-to-float v14, v14

    .line 482
    div-float/2addr v15, v14

    .line 483
    const/high16 v14, 0x3f800000    # 1.0f

    .line 484
    .line 485
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    .line 486
    .line 487
    .line 488
    move-result v14

    .line 489
    iget-object v15, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 490
    .line 491
    add-int/2addr v11, v3

    .line 492
    int-to-float v3, v11

    .line 493
    add-int/2addr v12, v2

    .line 494
    int-to-float v2, v12

    .line 495
    invoke-virtual {v15, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 496
    .line 497
    .line 498
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 499
    .line 500
    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 501
    .line 502
    int-to-float v3, v3

    .line 503
    div-float v3, v3, v20

    .line 504
    .line 505
    iget v11, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 506
    .line 507
    int-to-float v11, v11

    .line 508
    div-float v11, v11, v20

    .line 509
    .line 510
    invoke-virtual {v2, v3, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 511
    .line 512
    .line 513
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 514
    .line 515
    invoke-virtual {v2, v8, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 516
    .line 517
    .line 518
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 519
    .line 520
    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 521
    .line 522
    neg-int v3, v3

    .line 523
    int-to-float v3, v3

    .line 524
    div-float v3, v3, v20

    .line 525
    .line 526
    iget v8, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 527
    .line 528
    neg-int v8, v8

    .line 529
    int-to-float v8, v8

    .line 530
    div-float v8, v8, v20

    .line 531
    .line 532
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 533
    .line 534
    .line 535
    if-eqz v13, :cond_14

    .line 536
    .line 537
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 538
    .line 539
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 540
    .line 541
    invoke-virtual {v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 542
    .line 543
    .line 544
    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 545
    .line 546
    move/from16 v2, v18

    .line 547
    .line 548
    move/from16 v3, v21

    .line 549
    .line 550
    const/4 v8, 0x3

    .line 551
    goto/16 :goto_7

    .line 552
    .line 553
    :cond_15
    move/from16 v18, v2

    .line 554
    .line 555
    move/from16 v21, v3

    .line 556
    .line 557
    add-int/lit8 v7, v7, 0x1

    .line 558
    .line 559
    goto/16 :goto_6

    .line 560
    .line 561
    :cond_16
    :goto_b
    return-void
.end method

.method public final updateViewStyle(IJ)V
    .locals 11

    .line 1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    const-string v1, "background"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled$1()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-wide/16 v5, 0x400

    .line 28
    .line 29
    and-long/2addr v5, p2

    .line 30
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    cmp-long v0, v5, v7

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v3

    .line 39
    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_a

    .line 44
    .line 45
    const v5, 0x7f080b32

    .line 46
    .line 47
    .line 48
    const v6, 0x7f080b30

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    filled-new-array {v7, v8}, [Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    move v8, v3

    .line 66
    :goto_1
    const/4 v9, 0x2

    .line 67
    if-ge v8, v9, :cond_2

    .line 68
    .line 69
    aget-object v9, v7, v8

    .line 70
    .line 71
    if-nez v9, :cond_1

    .line 72
    .line 73
    move v7, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v7, v4

    .line 79
    :goto_2
    if-eqz v7, :cond_3

    .line 80
    .line 81
    move v7, v4

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v7, v3

    .line 84
    :goto_3
    if-eqz v7, :cond_4

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    const v6, 0x7f080b2f

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iput-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 95
    .line 96
    if-eqz v7, :cond_5

    .line 97
    .line 98
    const v6, 0x7f080b34

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    const v6, 0x7f080b33

    .line 103
    .line 104
    .line 105
    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iput-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    .line 110
    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_6
    const v5, 0x7f080b31

    .line 115
    .line 116
    .line 117
    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    .line 122
    .line 123
    iget-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 124
    .line 125
    if-eqz v6, :cond_7

    .line 126
    .line 127
    if-eqz v5, :cond_7

    .line 128
    .line 129
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    .line 130
    .line 131
    if-nez v7, :cond_7

    .line 132
    .line 133
    filled-new-array {v6, v5}, [Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    goto :goto_7

    .line 138
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    .line 139
    .line 140
    filled-new-array {v6, v5, v7}, [Landroid/graphics/Bitmap;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :goto_7
    array-length v6, v5

    .line 145
    move v7, v3

    .line 146
    :goto_8
    if-ge v7, v6, :cond_9

    .line 147
    .line 148
    aget-object v8, v5, v7

    .line 149
    .line 150
    if-nez v8, :cond_8

    .line 151
    .line 152
    move v5, v3

    .line 153
    goto :goto_9

    .line 154
    :cond_8
    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 155
    .line 156
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    iput v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 165
    .line 166
    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 167
    .line 168
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    iput v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 177
    .line 178
    add-int/lit8 v7, v7, 0x1

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_9
    move v5, v4

    .line 182
    :goto_9
    if-eqz v5, :cond_a

    .line 183
    .line 184
    move v5, v4

    .line 185
    goto :goto_a

    .line 186
    :cond_a
    move v5, v3

    .line 187
    :goto_a
    iput-boolean v5, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 188
    .line 189
    const-string/jumbo v5, "updateViewStyle whiteWp = "

    .line 190
    .line 191
    .line 192
    const-string v6, ", open theme enabled = "

    .line 193
    .line 194
    invoke-static {v5, v1, v6}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    iget-boolean v6, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 199
    .line 200
    const-string v7, ", isSavingMode = "

    .line 201
    .line 202
    const-string v8, ", isColorTheme = "

    .line 203
    .line 204
    invoke-static {v5, v6, v7, v2, v8}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v6, ", themeColor = #"

    .line 211
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v6, ", updateFlag = "

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    const-string p3, "SecLockPatternView"

    .line 239
    .line 240
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    iget-boolean p2, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 244
    .line 245
    if-eqz p2, :cond_b

    .line 246
    .line 247
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 248
    .line 249
    .line 250
    iput-boolean v1, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 253
    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_b
    if-eqz v0, :cond_c

    .line 257
    .line 258
    if-nez v2, :cond_c

    .line 259
    .line 260
    invoke-virtual {p0, p1, p1, p1}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    .line 261
    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 265
    .line 266
    .line 267
    invoke-super {p0, v1}, Lcom/android/internal/widget/LockPatternView;->updateViewStyle(Z)V

    .line 268
    .line 269
    .line 270
    :goto_b
    return-void
.end method
