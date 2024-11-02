.class public final Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDefaultHeight()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    neg-int v1, p2

    .line 8
    div-int/lit8 v2, v1, 0x3

    .line 9
    .line 10
    int-to-float v2, v2

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    move v4, v2

    .line 30
    :goto_1
    const/4 v5, 0x1

    .line 31
    if-ge v4, v3, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 42
    .line 43
    invoke-static {v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    instance-of v10, v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 52
    .line 53
    if-eqz v10, :cond_2

    .line 54
    .line 55
    move-object v10, v6

    .line 56
    check-cast v10, Landroidx/appcompat/widget/ActionBarContextView;

    .line 57
    .line 58
    iget-boolean v10, v10, Landroidx/appcompat/widget/ActionBarContextView;->mIsActionModeAccessibilityOn:Z

    .line 59
    .line 60
    if-eqz v10, :cond_1

    .line 61
    .line 62
    const/4 v10, 0x4

    .line 63
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_2
    iget v9, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 71
    .line 72
    if-eq v9, v5, :cond_4

    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    if-eq v9, v5, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    int-to-float v5, v1

    .line 79
    iget v6, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 80
    .line 81
    mul-float/2addr v5, v6

    .line 82
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v8, v5}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    invoke-static {v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    iget v5, v5, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 105
    .line 106
    sub-int/2addr v9, v5

    .line 107
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    sub-int/2addr v9, v5

    .line 112
    iget v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 113
    .line 114
    sub-int/2addr v9, v5

    .line 115
    invoke-static {v1, v2, v9}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v8, v5}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 120
    .line 121
    .line 122
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    if-lez v0, :cond_6

    .line 133
    .line 134
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 135
    .line 136
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mTitleEnabled:Z

    .line 140
    .line 141
    if-eqz v1, :cond_15

    .line 142
    .line 143
    new-instance v0, Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    int-to-float v1, v1

    .line 164
    const v3, 0x3e126e98    # 0.143f

    .line 165
    .line 166
    .line 167
    mul-float/2addr v1, v3

    .line 168
    const/high16 v3, 0x42c80000    # 100.0f

    .line 169
    .line 170
    div-float/2addr v3, v1

    .line 171
    int-to-float v0, v0

    .line 172
    const/4 v4, 0x0

    .line 173
    sub-float v6, v0, v4

    .line 174
    .line 175
    mul-float/2addr v6, v3

    .line 176
    const/high16 v3, 0x437f0000    # 255.0f

    .line 177
    .line 178
    sub-float v6, v3, v6

    .line 179
    .line 180
    cmpg-float v7, v6, v4

    .line 181
    .line 182
    if-gez v7, :cond_7

    .line 183
    .line 184
    move v6, v4

    .line 185
    goto :goto_4

    .line 186
    :cond_7
    cmpl-float v7, v6, v3

    .line 187
    .line 188
    if-gtz v7, :cond_8

    .line 189
    .line 190
    if-nez p2, :cond_9

    .line 191
    .line 192
    cmpg-float p2, v6, v3

    .line 193
    .line 194
    if-gez p2, :cond_9

    .line 195
    .line 196
    :cond_8
    move v6, v3

    .line 197
    :cond_9
    :goto_4
    div-float/2addr v6, v3

    .line 198
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeight:F

    .line 203
    .line 204
    float-to-int v3, v3

    .line 205
    if-le p2, v3, :cond_b

    .line 206
    .line 207
    iget-boolean p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 208
    .line 209
    if-eqz p1, :cond_a

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_a
    move p1, v2

    .line 213
    goto :goto_6

    .line 214
    :cond_b
    :goto_5
    move p1, v5

    .line 215
    :goto_6
    if-eqz p1, :cond_c

    .line 216
    .line 217
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 218
    .line 219
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 224
    .line 225
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 226
    .line 227
    .line 228
    :goto_7
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 229
    .line 230
    instance-of v3, p2, Landroidx/appcompat/widget/Toolbar;

    .line 231
    .line 232
    if-eqz v3, :cond_16

    .line 233
    .line 234
    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    .line 235
    .line 236
    const/high16 v3, 0x3f800000    # 1.0f

    .line 237
    .line 238
    cmpl-float v3, v6, v3

    .line 239
    .line 240
    if-nez v3, :cond_d

    .line 241
    .line 242
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_d
    cmpl-float v3, v6, v4

    .line 247
    .line 248
    if-nez v3, :cond_e

    .line 249
    .line 250
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 251
    .line 252
    .line 253
    :cond_e
    :goto_8
    const-wide v3, 0x406fe00000000000L    # 255.0

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    if-eqz p1, :cond_f

    .line 259
    .line 260
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    int-to-float p1, p1

    .line 269
    const v5, 0x3eb33333    # 0.35f

    .line 270
    .line 271
    .line 272
    mul-float/2addr p1, v5

    .line 273
    const/high16 v5, 0x43160000    # 150.0f

    .line 274
    .line 275
    div-float/2addr v5, v1

    .line 276
    sub-float/2addr v0, p1

    .line 277
    mul-float/2addr v0, v5

    .line 278
    float-to-double v0, v0

    .line 279
    const-wide/16 v5, 0x0

    .line 280
    .line 281
    cmpl-double p1, v0, v5

    .line 282
    .line 283
    if-ltz p1, :cond_10

    .line 284
    .line 285
    cmpg-double p1, v0, v3

    .line 286
    .line 287
    if-gtz p1, :cond_10

    .line 288
    .line 289
    double-to-int p1, v0

    .line 290
    move-wide v3, v0

    .line 291
    goto :goto_a

    .line 292
    :cond_10
    cmpg-double p1, v0, v5

    .line 293
    .line 294
    if-gez p1, :cond_11

    .line 295
    .line 296
    move p1, v2

    .line 297
    move-wide v3, v5

    .line 298
    goto :goto_a

    .line 299
    :cond_11
    :goto_9
    const/16 p1, 0xff

    .line 300
    .line 301
    :goto_a
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 302
    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    goto :goto_b

    .line 310
    :cond_12
    move v0, v2

    .line 311
    :goto_b
    double-to-int v1, v3

    .line 312
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mFadeToolbarTitle:Z

    .line 317
    .line 318
    if-eqz p0, :cond_13

    .line 319
    .line 320
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    iput-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 325
    .line 326
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 327
    .line 328
    if-eqz v0, :cond_13

    .line 329
    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 331
    .line 332
    .line 333
    :cond_13
    iget-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 334
    .line 335
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    if-nez p0, :cond_16

    .line 340
    .line 341
    iget-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 342
    .line 343
    if-eqz p0, :cond_14

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :cond_14
    invoke-static {v2, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 350
    .line 351
    .line 352
    move-result p0

    .line 353
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    iput-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 358
    .line 359
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 360
    .line 361
    if-eqz p1, :cond_16

    .line 362
    .line 363
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 364
    .line 365
    .line 366
    goto :goto_c

    .line 367
    :cond_15
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 368
    .line 369
    if-eqz p1, :cond_16

    .line 370
    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 376
    .line 377
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    sub-int/2addr p1, v1

    .line 382
    sub-int/2addr p1, v0

    .line 383
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 384
    .line 385
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    int-to-float p2, p2

    .line 390
    int-to-float p1, p1

    .line 391
    div-float/2addr p2, p1

    .line 392
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 393
    .line 394
    .line 395
    :cond_16
    :goto_c
    return-void
.end method
