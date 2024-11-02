.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAllowStacking:Z

.field public final mButtonBarBottomMargin:I

.field public mLastWidthSize:I

.field public mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 6
    .line 7
    sget-object v3, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    .line 8
    .line 9
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, v0

    .line 21
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, p2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const p2, 0x7f071017

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    float-to-int p1, p1

    .line 56
    iput p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mButtonBarBottomMargin:I

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final getNextVisibleChildIndex(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Landroid/widget/Button;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return p1

    .line 26
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 11
    .line 12
    if-le v0, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    :goto_0
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v4, v4, Landroid/widget/Button;

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    add-int/lit8 v4, v1, 0x1

    .line 40
    .line 41
    if-ge v4, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    instance-of v5, v5, Landroid/widget/Button;

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 72
    .line 73
    :cond_2
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/high16 v4, 0x40000000    # 2.0f

    .line 83
    .line 84
    if-ne v1, v4, :cond_3

    .line 85
    .line 86
    const/high16 v1, -0x80000000

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    move v1, v3

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move v0, p1

    .line 95
    move v1, v2

    .line 96
    :goto_1
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 97
    .line 98
    .line 99
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 100
    .line 101
    if-eqz v0, :cond_d

    .line 102
    .line 103
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 104
    .line 105
    if-nez v0, :cond_d

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidthAndState()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/high16 v4, -0x1000000

    .line 112
    .line 113
    and-int/2addr v0, v4

    .line 114
    const/high16 v4, 0x1000000

    .line 115
    .line 116
    if-ne v0, v4, :cond_4

    .line 117
    .line 118
    move v0, v3

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move v0, v2

    .line 121
    :goto_2
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    move v4, v2

    .line 131
    :goto_3
    if-ge v4, v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    instance-of v5, v5, Landroid/widget/Button;

    .line 138
    .line 139
    if-nez v5, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const/16 v6, 0x8

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    const/16 v1, 0x11

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 156
    .line 157
    .line 158
    move v1, v3

    .line 159
    :cond_7
    if-eqz v0, :cond_a

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    move v4, v2

    .line 166
    :goto_4
    add-int/lit8 v5, v0, -0x1

    .line 167
    .line 168
    if-ge v4, v5, :cond_d

    .line 169
    .line 170
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    instance-of v6, v5, Landroid/widget/Button;

    .line 175
    .line 176
    if-nez v6, :cond_8

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 184
    .line 185
    if-nez v7, :cond_9

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_9
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .line 190
    iget v7, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mButtonBarBottomMargin:I

    .line 191
    .line 192
    invoke-virtual {v6, v2, v2, v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    move v4, v2

    .line 206
    :goto_6
    add-int/lit8 v5, v0, -0x1

    .line 207
    .line 208
    if-ge v4, v5, :cond_d

    .line 209
    .line 210
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    instance-of v6, v5, Landroid/widget/Button;

    .line 215
    .line 216
    if-nez v6, :cond_b

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 224
    .line 225
    if-nez v7, :cond_c

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_c
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 229
    .line 230
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .line 235
    .line 236
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_d
    if-eqz v1, :cond_e

    .line 240
    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 242
    .line 243
    .line 244
    :cond_e
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-ltz v0, :cond_11

    .line 249
    .line 250
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    add-int/2addr v1, v5

    .line 269
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 270
    .line 271
    add-int/2addr v1, v5

    .line 272
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 273
    .line 274
    add-int/2addr v1, v4

    .line 275
    add-int/2addr v1, v2

    .line 276
    iget-boolean v2, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 277
    .line 278
    if-eqz v2, :cond_10

    .line 279
    .line 280
    add-int/2addr v0, v3

    .line 281
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-ltz v0, :cond_f

    .line 286
    .line 287
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 304
    .line 305
    const/high16 v3, 0x41800000    # 16.0f

    .line 306
    .line 307
    mul-float/2addr v2, v3

    .line 308
    float-to-int v2, v2

    .line 309
    add-int/2addr v0, v2

    .line 310
    add-int/2addr v0, v1

    .line 311
    move v2, v0

    .line 312
    goto :goto_8

    .line 313
    :cond_f
    move v2, v1

    .line 314
    goto :goto_8

    .line 315
    :cond_10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    add-int v2, v0, v1

    .line 320
    .line 321
    :cond_11
    :goto_8
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 322
    .line 323
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eq v0, v2, :cond_12

    .line 328
    .line 329
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 330
    .line 331
    .line 332
    if-nez p2, :cond_12

    .line 333
    .line 334
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 335
    .line 336
    .line 337
    :cond_12
    return-void
.end method

.method public final setStacked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const p1, 0x800005

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 p1, 0x50

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method
