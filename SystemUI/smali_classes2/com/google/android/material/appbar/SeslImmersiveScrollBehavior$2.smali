.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    .line 7
    const-string v2, "SeslImmersiveScrollBehavior"

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->mIsDetachedState:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "AppBarLayout was DetachedState. Skip onOffsetChanged"

    .line 17
    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v1, :cond_6

    .line 26
    .line 27
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    .line 47
    .line 48
    :cond_4
    iget-object v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->willNotDraw()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 59
    .line 60
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    return-void

    .line 64
    :cond_6
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    goto :goto_1

    .line 74
    :cond_7
    move v1, v4

    .line 75
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iget v6, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    .line 80
    .line 81
    add-int/2addr v6, v1

    .line 82
    int-to-float v6, v6

    .line 83
    cmpl-float v7, v5, v3

    .line 84
    .line 85
    const/high16 v8, 0x3f800000    # 1.0f

    .line 86
    .line 87
    if-nez v7, :cond_8

    .line 88
    .line 89
    move v9, v8

    .line 90
    goto :goto_2

    .line 91
    :cond_8
    move v9, v5

    .line 92
    :goto_2
    div-float/2addr v6, v9

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    sub-int/2addr v9, v4

    .line 98
    add-int v9, v9, p2

    .line 99
    .line 100
    int-to-float v9, v9

    .line 101
    sub-float/2addr v9, v5

    .line 102
    iget v10, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    .line 103
    .line 104
    int-to-float v10, v10

    .line 105
    add-float v11, v10, v9

    .line 106
    .line 107
    add-float/2addr v6, v8

    .line 108
    mul-float/2addr v6, v9

    .line 109
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    iget v12, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    .line 114
    .line 115
    int-to-float v12, v12

    .line 116
    add-float v13, v12, v6

    .line 117
    .line 118
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    iget v13, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    .line 127
    .line 128
    int-to-float v14, v13

    .line 129
    sub-float/2addr v14, v12

    .line 130
    const/4 v15, 0x1

    .line 131
    if-eqz v13, :cond_9

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_9
    move v13, v15

    .line 135
    :goto_3
    int-to-float v13, v13

    .line 136
    div-float/2addr v14, v13

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getBottom()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    int-to-float v13, v13

    .line 142
    cmpg-float v13, v13, v5

    .line 143
    .line 144
    if-gtz v13, :cond_1f

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->canImmersiveScroll()Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    if-eqz v13, :cond_16

    .line 151
    .line 152
    iget-object v5, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 153
    .line 154
    if-eqz v5, :cond_b

    .line 155
    .line 156
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    const/16 v7, 0x8

    .line 161
    .line 162
    if-eq v5, v7, :cond_b

    .line 163
    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    int-to-float v5, v1

    .line 167
    add-float/2addr v5, v6

    .line 168
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    iget-object v7, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 173
    .line 174
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    neg-int v13, v13

    .line 179
    int-to-float v13, v13

    .line 180
    invoke-virtual {v7, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 181
    .line 182
    .line 183
    iget-object v7, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-nez v7, :cond_a

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_a
    move v1, v4

    .line 193
    :goto_4
    int-to-float v1, v1

    .line 194
    add-float/2addr v1, v5

    .line 195
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_b
    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 206
    .line 207
    .line 208
    :goto_5
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 209
    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 213
    .line 214
    invoke-static {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_c

    .line 219
    .line 220
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 221
    .line 222
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    neg-int v5, v5

    .line 231
    int-to-float v5, v5

    .line 232
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_d
    iget v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    .line 243
    .line 244
    if-eqz v1, :cond_e

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->findSystemBarsBackground()V

    .line 247
    .line 248
    .line 249
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 250
    .line 251
    if-eqz v1, :cond_e

    .line 252
    .line 253
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 254
    .line 255
    .line 256
    :cond_e
    :goto_6
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    .line 257
    .line 258
    if-eqz v1, :cond_f

    .line 259
    .line 260
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 265
    .line 266
    .line 267
    :cond_f
    iget v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    .line 268
    .line 269
    cmpl-float v1, v1, v11

    .line 270
    .line 271
    if-eqz v1, :cond_24

    .line 272
    .line 273
    iput v11, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    .line 274
    .line 275
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 276
    .line 277
    if-eqz v1, :cond_24

    .line 278
    .line 279
    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_10

    .line 284
    .line 285
    const-string v1, "AnimationController is already finished by App side"

    .line 286
    .line 287
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    goto/16 :goto_c

    .line 291
    .line 292
    :cond_10
    float-to-int v1, v12

    .line 293
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 294
    .line 295
    if-eqz v2, :cond_13

    .line 296
    .line 297
    iget-object v3, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    .line 298
    .line 299
    if-nez v3, :cond_11

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_11
    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 307
    .line 308
    if-eq v1, v2, :cond_12

    .line 309
    .line 310
    move v2, v15

    .line 311
    goto :goto_7

    .line 312
    :cond_12
    move v2, v4

    .line 313
    :goto_7
    iget-boolean v3, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    .line 314
    .line 315
    if-eq v2, v3, :cond_13

    .line 316
    .line 317
    iput-boolean v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    .line 318
    .line 319
    iget-object v3, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    const-string v7, "hidden_semSetForceHideRoundedCorner"

    .line 332
    .line 333
    invoke-static {v5, v7, v6}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    if-eqz v5, :cond_13

    .line 338
    .line 339
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-static {v3, v5, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    :cond_13
    :goto_8
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    invoke-static {v2}, Lcom/google/android/material/internal/SeslDisplayUtils;->isPinEdgeEnabled(Landroid/content/Context;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_15

    .line 357
    .line 358
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 359
    .line 360
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    iget-object v3, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    .line 369
    .line 370
    invoke-static {v3}, Lcom/google/android/material/internal/SeslDisplayUtils;->getPinnedEdgeWidth(Landroid/content/Context;)I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    iget-object v5, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    const-string v6, "active_edge_area"

    .line 381
    .line 382
    invoke-static {v5, v6, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    iget v6, v2, Landroid/graphics/Insets;->left:I

    .line 387
    .line 388
    if-ne v3, v6, :cond_14

    .line 389
    .line 390
    if-nez v5, :cond_14

    .line 391
    .line 392
    move/from16 v16, v4

    .line 393
    .line 394
    move v4, v3

    .line 395
    move/from16 v3, v16

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_14
    iget v2, v2, Landroid/graphics/Insets;->right:I

    .line 399
    .line 400
    if-ne v3, v2, :cond_15

    .line 401
    .line 402
    if-ne v5, v15, :cond_15

    .line 403
    .line 404
    goto :goto_9

    .line 405
    :cond_15
    move v3, v4

    .line 406
    :goto_9
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 407
    .line 408
    float-to-int v5, v10

    .line 409
    invoke-static {v4, v5, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-interface {v2, v1, v8, v14}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_c

    .line 417
    .line 418
    :cond_16
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    .line 419
    .line 420
    if-eqz v2, :cond_17

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 423
    .line 424
    .line 425
    :cond_17
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 426
    .line 427
    if-eqz v2, :cond_18

    .line 428
    .line 429
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 430
    .line 431
    .line 432
    :cond_18
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 433
    .line 434
    if-eqz v2, :cond_1a

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 437
    .line 438
    .line 439
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 440
    .line 441
    if-eqz v2, :cond_1a

    .line 442
    .line 443
    int-to-float v1, v1

    .line 444
    if-eqz v7, :cond_19

    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_19
    move v5, v8

    .line 448
    :goto_a
    div-float v2, v1, v5

    .line 449
    .line 450
    iget-object v5, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 451
    .line 452
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBottom()I

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    int-to-float v5, v5

    .line 457
    mul-float/2addr v5, v2

    .line 458
    sub-float/2addr v1, v5

    .line 459
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 460
    .line 461
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 469
    .line 470
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 471
    .line 472
    .line 473
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 474
    .line 475
    .line 476
    :cond_1a
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 477
    .line 478
    if-nez v1, :cond_1b

    .line 479
    .line 480
    goto/16 :goto_c

    .line 481
    .line 482
    :cond_1b
    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 483
    .line 484
    iget-object v3, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    .line 485
    .line 486
    if-nez v3, :cond_1c

    .line 487
    .line 488
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    iput-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    .line 493
    .line 494
    const v3, 0x1020002

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iput-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    .line 502
    .line 503
    :cond_1c
    if-nez v2, :cond_1d

    .line 504
    .line 505
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 506
    .line 507
    if-eqz v1, :cond_24

    .line 508
    .line 509
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_c

    .line 513
    .line 514
    :cond_1d
    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 519
    .line 520
    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    .line 525
    .line 526
    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    .line 531
    .line 532
    if-ne v1, v3, :cond_1e

    .line 533
    .line 534
    invoke-interface {v2, v15}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 535
    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_1e
    if-ne v1, v5, :cond_24

    .line 539
    .line 540
    invoke-interface {v2, v4}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 541
    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_1f
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 545
    .line 546
    if-eqz v1, :cond_20

    .line 547
    .line 548
    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 549
    .line 550
    .line 551
    :cond_20
    iget-boolean v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    .line 552
    .line 553
    if-eqz v1, :cond_21

    .line 554
    .line 555
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 556
    .line 557
    if-eqz v1, :cond_21

    .line 558
    .line 559
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 560
    .line 561
    .line 562
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 563
    .line 564
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 565
    .line 566
    .line 567
    :cond_21
    iget-boolean v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    .line 568
    .line 569
    if-nez v1, :cond_24

    .line 570
    .line 571
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 572
    .line 573
    if-eqz v1, :cond_24

    .line 574
    .line 575
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 576
    .line 577
    if-eqz v1, :cond_24

    .line 578
    .line 579
    invoke-virtual {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isNavigationBarBottomPosition()Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-eqz v1, :cond_22

    .line 584
    .line 585
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 586
    .line 587
    iget v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    .line 588
    .line 589
    neg-int v2, v2

    .line 590
    int-to-float v2, v2

    .line 591
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 592
    .line 593
    .line 594
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 595
    .line 596
    if-eqz v1, :cond_23

    .line 597
    .line 598
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    cmpl-float v1, v1, v3

    .line 603
    .line 604
    if-eqz v1, :cond_23

    .line 605
    .line 606
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 607
    .line 608
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 609
    .line 610
    .line 611
    goto :goto_b

    .line 612
    :cond_22
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    .line 613
    .line 614
    if-eqz v1, :cond_23

    .line 615
    .line 616
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    cmpl-float v1, v1, v3

    .line 621
    .line 622
    if-eqz v1, :cond_23

    .line 623
    .line 624
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 625
    .line 626
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 627
    .line 628
    .line 629
    :cond_23
    :goto_b
    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    .line 630
    .line 631
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 632
    .line 633
    .line 634
    :cond_24
    :goto_c
    iget-object v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 635
    .line 636
    if-eqz v0, :cond_25

    .line 637
    .line 638
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->willNotDraw()Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-nez v1, :cond_25

    .line 643
    .line 644
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 645
    .line 646
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 647
    .line 648
    .line 649
    :cond_25
    return-void
.end method
