.class public final Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler;
.super Lcom/android/systemui/keyguard/animator/ActionHandlerType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ActionHandlerType;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 8
    .line 9
    iget v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v4, "onTouchEvent event="

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, " distance="

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "KeyguardTouchAnimator"

    .line 35
    .line 36
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v5, v2, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    iget-boolean v4, v2, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    const-string v4, "KeyguardEditModeAnimatorController"

    .line 68
    .line 69
    const-string v6, "actionUpOrCancel"

    .line 70
    .line 71
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v4, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    iget-object v4, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 85
    .line 86
    .line 87
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v6, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v7, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_3

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    move-object v9, v8

    .line 114
    check-cast v9, Ljava/lang/Number;

    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-virtual {v2, v9}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_2

    .line 125
    .line 126
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {v2, v6}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    const/high16 v9, 0x3f800000    # 1.0f

    .line 155
    .line 156
    const-wide/16 v10, 0x1f4

    .line 157
    .line 158
    const-wide/16 v12, 0x0

    .line 159
    .line 160
    move-object v6, v2

    .line 161
    move-object v7, v4

    .line 162
    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    const/4 v6, 0x1

    .line 177
    if-gt v4, v6, :cond_6

    .line 178
    .line 179
    iput-boolean v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 180
    .line 181
    :cond_6
    iget-object v4, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 182
    .line 183
    iget-boolean v7, v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 184
    .line 185
    if-eqz v7, :cond_7

    .line 186
    .line 187
    iget-object v7, v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    const/4 v7, 0x0

    .line 191
    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-nez v8, :cond_15

    .line 196
    .line 197
    iget-boolean v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 198
    .line 199
    if-nez v8, :cond_15

    .line 200
    .line 201
    iget-object v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 202
    .line 203
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    check-cast v8, Landroid/view/View;

    .line 208
    .line 209
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    const/high16 v9, 0x3f800000    # 1.0f

    .line 214
    .line 215
    cmpg-float v8, v8, v9

    .line 216
    .line 217
    if-nez v8, :cond_8

    .line 218
    .line 219
    move v8, v6

    .line 220
    goto :goto_4

    .line 221
    :cond_8
    move v8, v5

    .line 222
    :goto_4
    if-eqz v8, :cond_15

    .line 223
    .line 224
    iget-boolean v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 225
    .line 226
    if-nez v8, :cond_9

    .line 227
    .line 228
    if-eqz v7, :cond_9

    .line 229
    .line 230
    sget-object v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 231
    .line 232
    if-eq v7, v8, :cond_9

    .line 233
    .line 234
    sget-object v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 235
    .line 236
    if-ne v7, v8, :cond_15

    .line 237
    .line 238
    :cond_9
    iget v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 239
    .line 240
    iget v9, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 241
    .line 242
    int-to-float v9, v9

    .line 243
    cmpg-float v9, v8, v9

    .line 244
    .line 245
    if-gez v9, :cond_12

    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 248
    .line 249
    .line 250
    iget-object v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 251
    .line 252
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    const-string/jumbo v9, "showTapAffordanceAnimation"

    .line 256
    .line 257
    .line 258
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    new-instance v9, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    iget-object v10, v8, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapAffordanceViews:Ljava/util/List;

    .line 267
    .line 268
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-eqz v11, :cond_b

    .line 277
    .line 278
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    move-object v12, v11

    .line 283
    check-cast v12, Ljava/lang/Number;

    .line 284
    .line 285
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    invoke-virtual {v8, v12}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-eqz v12, :cond_a

    .line 294
    .line 295
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_b
    new-instance v10, Ljava/util/ArrayList;

    .line 300
    .line 301
    const/16 v11, 0xa

    .line 302
    .line 303
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-eqz v11, :cond_c

    .line 319
    .line 320
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    check-cast v11, Ljava/lang/Number;

    .line 325
    .line 326
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    invoke-virtual {v8, v11}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    :cond_d
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-eqz v11, :cond_f

    .line 352
    .line 353
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    move-object v12, v11

    .line 358
    check-cast v12, Landroid/view/View;

    .line 359
    .line 360
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-nez v12, :cond_e

    .line 365
    .line 366
    move v12, v6

    .line 367
    goto :goto_8

    .line 368
    :cond_e
    move v12, v5

    .line 369
    :goto_8
    if-eqz v12, :cond_d

    .line 370
    .line 371
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v10

    .line 383
    if-eqz v10, :cond_15

    .line 384
    .line 385
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    add-int/lit8 v11, v5, 0x1

    .line 390
    .line 391
    if-ltz v5, :cond_11

    .line 392
    .line 393
    check-cast v10, Landroid/view/View;

    .line 394
    .line 395
    if-nez v5, :cond_10

    .line 396
    .line 397
    iput-boolean v6, v8, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    .line 398
    .line 399
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    iget-object v6, v8, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    .line 404
    .line 405
    const-wide/16 v12, 0x96

    .line 406
    .line 407
    invoke-virtual {v5, v6, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    .line 409
    .line 410
    :cond_10
    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 411
    .line 412
    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 413
    .line 414
    invoke-direct {v5, v10, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 415
    .line 416
    .line 417
    const/high16 v6, 0x43fa0000    # 500.0f

    .line 418
    .line 419
    const v12, 0x3f47ae14    # 0.78f

    .line 420
    .line 421
    .line 422
    invoke-static {v6, v12}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 423
    .line 424
    .line 425
    move-result-object v13

    .line 426
    iput-object v13, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 427
    .line 428
    const v13, 0x3f8ccccd    # 1.1f

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, v13}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 432
    .line 433
    .line 434
    iget-object v14, v8, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    .line 435
    .line 436
    check-cast v14, Ljava/util/ArrayList;

    .line 437
    .line 438
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 442
    .line 443
    sget-object v15, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 444
    .line 445
    invoke-direct {v5, v10, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v6, v12}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    iput-object v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 453
    .line 454
    invoke-virtual {v5, v13}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    const/4 v6, 0x1

    .line 461
    move v5, v11

    .line 462
    goto :goto_9

    .line 463
    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 464
    .line 465
    .line 466
    const/4 v0, 0x0

    .line 467
    throw v0

    .line 468
    :cond_12
    const/4 v5, 0x0

    .line 469
    iget v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 470
    .line 471
    int-to-float v6, v6

    .line 472
    cmpg-float v6, v8, v6

    .line 473
    .line 474
    if-lez v6, :cond_13

    .line 475
    .line 476
    const/4 v6, 0x6

    .line 477
    if-eq v0, v6, :cond_13

    .line 478
    .line 479
    const/4 v6, 0x3

    .line 480
    if-ne v0, v6, :cond_16

    .line 481
    .line 482
    :cond_13
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-eqz v6, :cond_14

    .line 487
    .line 488
    const-string/jumbo v6, "skip because of EM"

    .line 489
    .line 490
    .line 491
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_14
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 496
    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_15
    const/4 v5, 0x0

    .line 500
    :cond_16
    :goto_a
    const/4 v6, 0x1

    .line 501
    if-ne v0, v6, :cond_20

    .line 502
    .line 503
    iget v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 504
    .line 505
    iget v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 506
    .line 507
    iget v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 508
    .line 509
    iget v9, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 510
    .line 511
    new-instance v10, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    const-string/jumbo v11, "onTouchEvent T="

    .line 514
    .line 515
    .line 516
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v0, ", D="

    .line 523
    .line 524
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v0, ", R="

    .line 531
    .line 532
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v0, ", W="

    .line 539
    .line 540
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v0, ", M="

    .line 547
    .line 548
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    iget-object v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    .line 559
    .line 560
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    invoke-static {v3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 567
    .line 568
    if-eqz v0, :cond_17

    .line 569
    .line 570
    goto :goto_b

    .line 571
    :cond_17
    move-object v0, v5

    .line 572
    :goto_b
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    .line 573
    .line 574
    .line 575
    if-eqz v7, :cond_18

    .line 576
    .line 577
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 578
    .line 579
    if-ne v7, v0, :cond_1e

    .line 580
    .line 581
    :cond_18
    iget v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 582
    .line 583
    iget v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 584
    .line 585
    int-to-float v6, v6

    .line 586
    cmpg-float v6, v0, v6

    .line 587
    .line 588
    if-gez v6, :cond_1a

    .line 589
    .line 590
    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 591
    .line 592
    if-eqz v0, :cond_19

    .line 593
    .line 594
    move-object v5, v0

    .line 595
    :cond_19
    invoke-interface {v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onAffordanceTap()V

    .line 596
    .line 597
    .line 598
    goto :goto_c

    .line 599
    :cond_1a
    iget v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 600
    .line 601
    int-to-float v5, v5

    .line 602
    cmpg-float v0, v5, v0

    .line 603
    .line 604
    if-gez v0, :cond_1d

    .line 605
    .line 606
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_1b

    .line 611
    .line 612
    const-string/jumbo v0, "skip swipe because of edit mode"

    .line 613
    .line 614
    .line 615
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    goto :goto_c

    .line 619
    :cond_1b
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getCanBeUnlock()Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_1c

    .line 624
    .line 625
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 626
    .line 627
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 628
    .line 629
    .line 630
    new-instance v0, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$handleMotionEvent$1$3;

    .line 631
    .line 632
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$handleMotionEvent$1$3;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 633
    .line 634
    .line 635
    const-string v2, "KeyguardTouchBase"

    .line 636
    .line 637
    const-string/jumbo v3, "unlockExecute()"

    .line 638
    .line 639
    .line 640
    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    const/4 v2, 0x1

    .line 644
    iput-boolean v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 645
    .line 646
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$handleMotionEvent$1$3;->run()V

    .line 647
    .line 648
    .line 649
    goto :goto_c

    .line 650
    :cond_1c
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 651
    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_1d
    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 655
    .line 656
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 657
    .line 658
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 659
    .line 660
    iget-object v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lastMovePos:Landroid/graphics/PointF;

    .line 661
    .line 662
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 663
    .line 664
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 665
    .line 666
    const-string/jumbo v7, "no operation: ("

    .line 667
    .line 668
    .line 669
    const-string v8, ","

    .line 670
    .line 671
    const-string v9, ") - ("

    .line 672
    .line 673
    invoke-static {v7, v2, v8, v0, v9}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const-string v2, ", "

    .line 681
    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const-string v2, ")"

    .line 689
    .line 690
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    :cond_1e
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    const/4 v2, 0x2

    .line 705
    if-lt v0, v2, :cond_1f

    .line 706
    .line 707
    const/4 v0, 0x1

    .line 708
    goto :goto_d

    .line 709
    :cond_1f
    const/4 v0, 0x0

    .line 710
    :goto_d
    iput-boolean v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 711
    .line 712
    :cond_20
    const/4 v0, 0x0

    .line 713
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 714
    .line 715
    .line 716
    iput-boolean v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    .line 717
    .line 718
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    .line 719
    .line 720
    .line 721
    const/4 v0, 0x1

    .line 722
    return v0
.end method
