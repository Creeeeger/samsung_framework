.class public Lcom/android/wm/shell/common/split/DividerHandleView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCircleDiameter:I

.field public final mCircleMargin:I

.field public mCurrentHeight:I

.field public mCurrentWidth:I

.field public final mHandleType:I

.field public final mHeight:I

.field public final mHorizontalHandlerTopMargin:I

.field public final mIsHorizontalDivision:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 2
    .line 3
    const-string/jumbo v1, "width"

    .line 4
    .line 5
    .line 6
    const-class v2, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-direct {v0, v2, v1}, Lcom/android/wm/shell/common/split/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$2;

    .line 12
    .line 13
    const-string v1, "height"

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lcom/android/wm/shell/common/split/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lcom/android/wm/shell/R$styleable;->DividerHandleView:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :try_start_0
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 40
    .line 41
    if-ne v3, v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    .line 55
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    const/4 p1, 0x2

    .line 60
    if-ne p2, p1, :cond_3

    .line 61
    .line 62
    const p1, 0x7f07017b

    .line 63
    .line 64
    .line 65
    const p2, 0x7f07017a

    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const p2, 0x7f07122d

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const p2, 0x7f07122b

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 137
    .line 138
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const p2, 0x7f06080d

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const p2, 0x7f07122a

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 164
    .line 165
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 166
    .line 167
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 168
    .line 169
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 174
    .line 175
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 176
    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const p2, 0x7f07094c

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    :cond_4
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHorizontalHandlerTopMargin:I

    .line 193
    .line 194
    :cond_5
    return-void

    .line 195
    :catchall_0
    move-exception p0

    .line 196
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    .line 198
    .line 199
    throw p0
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    int-to-float v0, v0

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v0, v2

    .line 12
    int-to-float v1, v1

    .line 13
    add-float/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    int-to-float v3, v3

    .line 22
    div-float/2addr v3, v2

    .line 23
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHorizontalHandlerTopMargin:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    add-float/2addr v2, v3

    .line 27
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-ne v3, v5, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 36
    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    const/4 v11, 0x2

    .line 40
    if-ne v3, v11, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    div-int/2addr v3, v11

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    div-int/2addr v4, v11

    .line 53
    int-to-float v9, v4

    .line 54
    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 59
    .line 60
    div-int/2addr v0, v11

    .line 61
    int-to-float v0, v0

    .line 62
    sub-float v8, v3, v0

    .line 63
    .line 64
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 65
    .line 66
    int-to-float v0, v0

    .line 67
    sub-float v6, v8, v0

    .line 68
    .line 69
    add-float v9, v2, v0

    .line 70
    .line 71
    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 72
    .line 73
    move-object v5, p1

    .line 74
    move v7, v2

    .line 75
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 79
    .line 80
    div-int/2addr v0, v11

    .line 81
    int-to-float v0, v0

    .line 82
    add-float v6, v3, v0

    .line 83
    .line 84
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 85
    .line 86
    int-to-float v0, v0

    .line 87
    add-float v8, v6, v0

    .line 88
    .line 89
    add-float v9, v2, v0

    .line 90
    .line 91
    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_1
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 99
    .line 100
    div-int/2addr v2, v11

    .line 101
    int-to-float v2, v2

    .line 102
    sub-float v7, v9, v2

    .line 103
    .line 104
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 105
    .line 106
    int-to-float v2, v2

    .line 107
    sub-float v5, v7, v2

    .line 108
    .line 109
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    move-object v3, p1

    .line 112
    move v4, v0

    .line 113
    move v6, v1

    .line 114
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 115
    .line 116
    .line 117
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 118
    .line 119
    div-int/2addr v2, v11

    .line 120
    int-to-float v2, v2

    .line 121
    add-float v5, v9, v2

    .line 122
    .line 123
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 124
    .line 125
    int-to-float v2, v2

    .line 126
    add-float v7, v5, v2

    .line 127
    .line 128
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    int-to-float v3, v4

    .line 135
    add-float v11, v3, v2

    .line 136
    .line 137
    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z

    .line 138
    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    sub-float v8, v0, v4

    .line 145
    .line 146
    sub-float v6, v8, v3

    .line 147
    .line 148
    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 149
    .line 150
    move-object v5, p1

    .line 151
    move v7, v2

    .line 152
    move v9, v11

    .line 153
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 154
    .line 155
    .line 156
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 157
    .line 158
    move-object v3, p1

    .line 159
    move v4, v0

    .line 160
    move v5, v2

    .line 161
    move v6, v1

    .line 162
    move v7, v11

    .line 163
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 164
    .line 165
    .line 166
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 167
    .line 168
    int-to-float v0, v0

    .line 169
    add-float v6, v1, v0

    .line 170
    .line 171
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 172
    .line 173
    int-to-float v0, v0

    .line 174
    add-float v8, v6, v0

    .line 175
    .line 176
    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 177
    .line 178
    move-object v5, p1

    .line 179
    move v7, v2

    .line 180
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 185
    .line 186
    int-to-float v4, v4

    .line 187
    sub-float v7, v2, v4

    .line 188
    .line 189
    sub-float v5, v7, v3

    .line 190
    .line 191
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 192
    .line 193
    move-object v3, p1

    .line 194
    move v4, v0

    .line 195
    move v6, v1

    .line 196
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 197
    .line 198
    .line 199
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 200
    .line 201
    move v5, v2

    .line 202
    move v7, v11

    .line 203
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    .line 207
    .line 208
    int-to-float v2, v2

    .line 209
    add-float v5, v11, v2

    .line 210
    .line 211
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 212
    .line 213
    int-to-float v2, v2

    .line 214
    add-float v7, v5, v2

    .line 215
    .line 216
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    :cond_4
    :goto_1
    return-void
.end method
