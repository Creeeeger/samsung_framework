.class Landroidx/picker3/widget/SeslColorSpectrumView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final HUE_COLORS:[I

.field public final ROUNDED_CORNER_RADIUS_IN_Px:I

.field public cursorDrawable:Landroid/graphics/drawable/Drawable;

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mCurrentXPos:F

.field public mCursorPaint:Landroid/graphics/Paint;

.field public final mCursorPaintSize:I

.field public mCursorPosX:F

.field public mCursorPosY:F

.field public mFromSwatchTouch:Z

.field public mHuePaint:Landroid/graphics/Paint;

.field public mListener:Landroidx/picker3/widget/SeslColorPicker$6;

.field public final mResources:Landroid/content/res/Resources;

.field public mSaturationPaint:Landroid/graphics/Paint;

.field public mSaturationProgress:I

.field public mSelectedVirtualViewId:I

.field public final mSpectrumRect:Landroid/graphics/Rect;

.field public final mSpectrumRectBackground:Landroid/graphics/Rect;

.field public final mStartMargin:I

.field public mStrokePaint:Landroid/graphics/Paint;

.field public final mTopMargin:I

.field public mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

.field public final mVirtualItemHeight:I

.field public final mVirtualItemWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x6

    .line 5
    new-array p2, p2, [I

    .line 6
    .line 7
    fill-array-data p2, :array_0

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->HUE_COLORS:[I

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f071101

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f0710ff

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v3, 0x7f071100

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 52
    .line 53
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    .line 54
    .line 55
    const/4 v3, -0x1

    .line 56
    iput v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSelectedVirtualViewId:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    .line 63
    .line 64
    new-instance v3, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    .line 65
    .line 66
    invoke-direct {v3, p0, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;-><init>(Landroidx/picker3/widget/SeslColorSpectrumView;Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    .line 70
    .line 71
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 76
    .line 77
    .line 78
    const v3, 0x7f070f99

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const v4, 0x7f070f97

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/high16 v6, 0x41c80000    # 25.0f

    .line 97
    .line 98
    div-float/2addr v4, v6

    .line 99
    float-to-int v4, v4

    .line 100
    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    .line 101
    .line 102
    const v4, 0x7f070fa1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/high16 v6, 0x41f00000    # 30.0f

    .line 110
    .line 111
    div-float/2addr v4, v6

    .line 112
    float-to-int v4, v4

    .line 113
    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    .line 114
    .line 115
    new-instance v4, Landroid/graphics/Rect;

    .line 116
    .line 117
    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    .line 119
    .line 120
    iput-object v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 121
    .line 122
    new-instance v1, Landroid/graphics/Rect;

    .line 123
    .line 124
    const v2, 0x7f070f9a

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const v3, 0x7f070f98

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-direct {v1, p2, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRectBackground:Landroid/graphics/Rect;

    .line 142
    .line 143
    const p2, 0x7f070fe9

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iput v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 153
    .line 154
    .line 155
    const p2, 0x7f070fe8

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    const/4 p2, 0x4

    .line 162
    int-to-float p2, p2

    .line 163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 172
    .line 173
    mul-float/2addr p2, v1

    .line 174
    float-to-int p2, p2

    .line 175
    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 176
    .line 177
    new-instance p2, Landroid/graphics/Paint;

    .line 178
    .line 179
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    .line 183
    .line 184
    new-instance p2, Landroid/graphics/Paint;

    .line 185
    .line 186
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    .line 190
    .line 191
    new-instance p2, Landroid/graphics/Paint;

    .line 192
    .line 193
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 197
    .line 198
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    .line 199
    .line 200
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 201
    .line 202
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    .line 206
    .line 207
    const v1, 0x7f060622

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    .line 218
    .line 219
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    .line 221
    .line 222
    const p2, 0x7f080fe1

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 232
    .line 233
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 234
    .line 235
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 239
    .line 240
    const p2, 0x7f060627

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :array_0
    .array-data 4
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRectBackground:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    int-to-float v2, v2

    .line 13
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    int-to-float v4, v4

    .line 19
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    int-to-float v5, v1

    .line 22
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 23
    .line 24
    int-to-float v6, v1

    .line 25
    int-to-float v7, v1

    .line 26
    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    int-to-float v11, v3

    .line 40
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    int-to-float v12, v3

    .line 43
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    int-to-float v13, v2

    .line 46
    int-to-float v14, v3

    .line 47
    iget-object v15, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->HUE_COLORS:[I

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 52
    .line 53
    move-object v10, v1

    .line 54
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Landroid/graphics/Paint;

    .line 58
    .line 59
    const/4 v10, 0x1

    .line 60
    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 78
    .line 79
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    int-to-float v12, v3

    .line 82
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    int-to-float v13, v4

    .line 85
    int-to-float v14, v3

    .line 86
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 87
    .line 88
    int-to-float v15, v2

    .line 89
    const/16 v16, -0x1

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 94
    .line 95
    move-object v11, v1

    .line 96
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 110
    .line 111
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 112
    .line 113
    int-to-float v2, v2

    .line 114
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    int-to-float v3, v3

    .line 117
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 118
    .line 119
    int-to-float v4, v4

    .line 120
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    int-to-float v5, v1

    .line 123
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 124
    .line 125
    int-to-float v6, v1

    .line 126
    int-to-float v7, v1

    .line 127
    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    .line 128
    .line 129
    move-object/from16 v1, p1

    .line 130
    .line 131
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    int-to-float v2, v2

    .line 139
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    int-to-float v3, v3

    .line 142
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 143
    .line 144
    int-to-float v4, v4

    .line 145
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 146
    .line 147
    int-to-float v5, v1

    .line 148
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 149
    .line 150
    int-to-float v6, v1

    .line 151
    int-to-float v7, v1

    .line 152
    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 153
    .line 154
    move-object/from16 v1, p1

    .line 155
    .line 156
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 160
    .line 161
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    int-to-float v2, v2

    .line 164
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    int-to-float v3, v3

    .line 167
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 168
    .line 169
    int-to-float v4, v4

    .line 170
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 171
    .line 172
    int-to-float v5, v1

    .line 173
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 174
    .line 175
    int-to-float v6, v1

    .line 176
    int-to-float v7, v1

    .line 177
    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    .line 178
    .line 179
    move-object/from16 v1, p1

    .line 180
    .line 181
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 185
    .line 186
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 187
    .line 188
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 189
    .line 190
    int-to-float v4, v3

    .line 191
    cmpg-float v1, v1, v4

    .line 192
    .line 193
    if-gez v1, :cond_0

    .line 194
    .line 195
    int-to-float v1, v3

    .line 196
    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 197
    .line 198
    :cond_0
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 199
    .line 200
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    int-to-float v4, v3

    .line 203
    cmpg-float v1, v1, v4

    .line 204
    .line 205
    if-gez v1, :cond_1

    .line 206
    .line 207
    int-to-float v1, v3

    .line 208
    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 209
    .line 210
    :cond_1
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 211
    .line 212
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 213
    .line 214
    iget v4, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 215
    .line 216
    add-int v5, v3, v4

    .line 217
    .line 218
    int-to-float v5, v5

    .line 219
    cmpl-float v1, v1, v5

    .line 220
    .line 221
    if-lez v1, :cond_2

    .line 222
    .line 223
    add-int/2addr v3, v4

    .line 224
    int-to-float v1, v3

    .line 225
    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 226
    .line 227
    :cond_2
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 228
    .line 229
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 230
    .line 231
    iget v3, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 232
    .line 233
    add-int v4, v2, v3

    .line 234
    .line 235
    int-to-float v4, v4

    .line 236
    cmpl-float v1, v1, v4

    .line 237
    .line 238
    if-lez v1, :cond_3

    .line 239
    .line 240
    add-int/2addr v2, v3

    .line 241
    int-to-float v1, v2

    .line 242
    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 243
    .line 244
    :cond_3
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 245
    .line 246
    iget v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 247
    .line 248
    iget v3, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    .line 249
    .line 250
    int-to-float v3, v3

    .line 251
    const/high16 v4, 0x40000000    # 2.0f

    .line 252
    .line 253
    div-float/2addr v3, v4

    .line 254
    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    .line 255
    .line 256
    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    iget v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 262
    .line 263
    float-to-int v3, v2

    .line 264
    iget v4, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    .line 265
    .line 266
    div-int/lit8 v5, v4, 0x2

    .line 267
    .line 268
    sub-int/2addr v3, v5

    .line 269
    iget v5, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 270
    .line 271
    float-to-int v6, v5

    .line 272
    div-int/lit8 v7, v4, 0x2

    .line 273
    .line 274
    sub-int/2addr v6, v7

    .line 275
    float-to-int v2, v2

    .line 276
    div-int/lit8 v7, v4, 0x2

    .line 277
    .line 278
    add-int/2addr v7, v2

    .line 279
    float-to-int v2, v5

    .line 280
    div-int/lit8 v4, v4, 0x2

    .line 281
    .line 282
    add-int/2addr v4, v2

    .line 283
    invoke-virtual {v1, v3, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    .line 288
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCurrentXPos:F

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 47
    .line 48
    add-int/2addr v2, v3

    .line 49
    int-to-float v2, v2

    .line 50
    cmpl-float v2, v0, v2

    .line 51
    .line 52
    if-lez v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 61
    .line 62
    add-int/2addr v2, v3

    .line 63
    int-to-float v2, v2

    .line 64
    iput v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCurrentXPos:F

    .line 65
    .line 66
    :cond_3
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 73
    .line 74
    add-int/2addr v2, v3

    .line 75
    int-to-float v2, v2

    .line 76
    cmpl-float v2, p1, v2

    .line 77
    .line 78
    if-lez v2, :cond_4

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 92
    .line 93
    add-int/2addr v2, v3

    .line 94
    int-to-float v2, v2

    .line 95
    cmpl-float v2, v0, v2

    .line 96
    .line 97
    if-lez v2, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 106
    .line 107
    add-int/2addr v0, v2

    .line 108
    int-to-float v0, v0

    .line 109
    :cond_5
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 116
    .line 117
    add-int/2addr v2, v3

    .line 118
    int-to-float v2, v2

    .line 119
    cmpl-float v2, p1, v2

    .line 120
    .line 121
    if-lez v2, :cond_6

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 130
    .line 131
    add-int/2addr p1, v2

    .line 132
    int-to-float p1, p1

    .line 133
    :cond_6
    const/4 v2, 0x0

    .line 134
    cmpg-float v3, v0, v2

    .line 135
    .line 136
    if-gez v3, :cond_7

    .line 137
    .line 138
    move v0, v2

    .line 139
    :cond_7
    cmpg-float v3, p1, v2

    .line 140
    .line 141
    if-gez v3, :cond_8

    .line 142
    .line 143
    move p1, v2

    .line 144
    :cond_8
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 145
    .line 146
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 147
    .line 148
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 149
    .line 150
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    int-to-float v3, v3

    .line 153
    sub-float/2addr v0, v3

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    int-to-float p1, p1

    .line 159
    div-float/2addr v0, p1

    .line 160
    const/high16 p1, 0x43960000    # 300.0f

    .line 161
    .line 162
    mul-float/2addr v0, p1

    .line 163
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 164
    .line 165
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 166
    .line 167
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    int-to-float v4, v4

    .line 170
    sub-float/2addr p1, v4

    .line 171
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    int-to-float v3, v3

    .line 176
    div-float/2addr p1, v3

    .line 177
    cmpg-float v3, v0, v2

    .line 178
    .line 179
    if-gez v3, :cond_9

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    move v2, v0

    .line 183
    :goto_1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorPicker$6;

    .line 184
    .line 185
    if-eqz v0, :cond_a

    .line 186
    .line 187
    invoke-virtual {v0, v2, p1}, Landroidx/picker3/widget/SeslColorPicker$6;->onSpectrumColorChanged(FF)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_a
    const-string p1, "SeslColorSpectrumView"

    .line 192
    .line 193
    const-string v0, "Listener is not set."

    .line 194
    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :goto_2
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 199
    .line 200
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    .line 201
    .line 202
    int-to-float v0, v0

    .line 203
    div-float/2addr p1, v0

    .line 204
    float-to-int p1, p1

    .line 205
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 206
    .line 207
    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    .line 208
    .line 209
    int-to-float v2, v2

    .line 210
    div-float/2addr v0, v2

    .line 211
    float-to-int v0, v0

    .line 212
    mul-int/lit8 v0, v0, 0x1e

    .line 213
    .line 214
    add-int/2addr v0, p1

    .line 215
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSelectedVirtualViewId:I

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 218
    .line 219
    .line 220
    return v1
.end method

.method public final setColor(I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    and-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "%08x"

    .line 22
    .line 23
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f131027

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 57
    .line 58
    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 68
    .line 69
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCurrentXPos:F

    .line 70
    .line 71
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    int-to-float v1, v1

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    int-to-float p1, p1

    .line 84
    aget v2, v0, v3

    .line 85
    .line 86
    mul-float/2addr p1, v2

    .line 87
    const/high16 v2, 0x43960000    # 300.0f

    .line 88
    .line 89
    div-float/2addr p1, v2

    .line 90
    add-float/2addr p1, v1

    .line 91
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 94
    .line 95
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    int-to-float v1, v1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    int-to-float p1, p1

    .line 103
    aget v2, v0, v5

    .line 104
    .line 105
    mul-float/2addr p1, v2

    .line 106
    add-float/2addr p1, v1

    .line 107
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 108
    .line 109
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 110
    .line 111
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 118
    .line 119
    add-int/2addr v1, v2

    .line 120
    int-to-float v1, v1

    .line 121
    cmpl-float p1, p1, v1

    .line 122
    .line 123
    if-lez p1, :cond_2

    .line 124
    .line 125
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    .line 132
    .line 133
    add-int/2addr p1, v1

    .line 134
    int-to-float p1, p1

    .line 135
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 136
    .line 137
    :cond_2
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 138
    .line 139
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 146
    .line 147
    add-int/2addr v1, v2

    .line 148
    int-to-float v1, v1

    .line 149
    cmpl-float p1, p1, v1

    .line 150
    .line 151
    if-lez p1, :cond_3

    .line 152
    .line 153
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    .line 160
    .line 161
    add-int/2addr p1, v1

    .line 162
    int-to-float p1, p1

    .line 163
    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 164
    .line 165
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string/jumbo v1, "updateCursorPosition() HSV["

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    aget v1, v0, v3

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, ", "

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    aget v2, v0, v5

    .line 184
    .line 185
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    aget v0, v0, v5

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, "] mCursorPosX="

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, " mCursorPosY="

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    .line 212
    .line 213
    const-string v1, "SeslColorSpectrumView"

    .line 214
    .line 215
    invoke-static {p1, v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final updateCursorColor(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateCursorColor color "

    .line 2
    .line 3
    .line 4
    const-string v1, "SeslColorSpectrumView"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p1, -0x1

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "%08x"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f130fdd

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "#"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v1, 0x7f131027

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/16 v0, 0xff

    .line 83
    .line 84
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method
