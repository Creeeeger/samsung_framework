.class public final Lcom/android/systemui/keyguard/animator/ActionMoveHandler;
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
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    new-instance v0, Lcom/android/systemui/keyguard/animator/ActionMoveHandler$handleMotionEvent$1$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/ActionMoveHandler$handleMotionEvent$1$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const/16 v5, 0x9c4

    .line 25
    .line 26
    int-to-long v5, v5

    .line 27
    sub-long v5, v3, v5

    .line 28
    .line 29
    iget-wide v7, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    .line 30
    .line 31
    cmp-long v5, v5, v7

    .line 32
    .line 33
    if-lez v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ActionMoveHandler$handleMotionEvent$1$1;->run()V

    .line 36
    .line 37
    .line 38
    iput-wide v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 41
    .line 42
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 43
    .line 44
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistance(Landroid/view/MotionEvent;Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v7, "actionMove "

    .line 63
    .line 64
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v6, "KeyguardEditModeAnimatorController"

    .line 75
    .line 76
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const/4 v7, 0x0

    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isNotSupportedAnimation()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const-string v8, ", distance="

    .line 93
    .line 94
    const-string v9, "cancel edit mode touchSlop="

    .line 95
    .line 96
    iget-object v10, v4, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 97
    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    iget v5, v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    .line 101
    .line 102
    int-to-float v10, v5

    .line 103
    cmpg-float v10, v10, v3

    .line 104
    .line 105
    if-gez v10, :cond_7

    .line 106
    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    iget-object v3, v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 129
    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    invoke-virtual {v3}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-ne v3, v2, :cond_5

    .line 137
    .line 138
    move v3, v2

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    move v3, v1

    .line 141
    :goto_0
    if-eqz v3, :cond_7

    .line 142
    .line 143
    const-string v3, "longPressJob?.cancel"

    .line 144
    .line 145
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    iget-object v3, v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 149
    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    invoke-virtual {v3, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    iget v5, v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    .line 157
    .line 158
    int-to-float v5, v5

    .line 159
    cmpg-float v5, v5, v3

    .line 160
    .line 161
    if-gez v5, :cond_8

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-nez v5, :cond_8

    .line 168
    .line 169
    iget v5, v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    .line 170
    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 193
    .line 194
    .line 195
    :cond_7
    :goto_1
    move v3, v1

    .line 196
    goto :goto_3

    .line 197
    :cond_8
    :goto_2
    move v3, v2

    .line 198
    :goto_3
    if-eqz v3, :cond_9

    .line 199
    .line 200
    return v2

    .line 201
    :cond_9
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 202
    .line 203
    int-to-float v3, v3

    .line 204
    iget v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 205
    .line 206
    cmpg-float v3, v3, v4

    .line 207
    .line 208
    const-string v4, "KeyguardTouchAnimator"

    .line 209
    .line 210
    if-gez v3, :cond_b

    .line 211
    .line 212
    sget-object v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    sget-boolean v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    .line 218
    .line 219
    if-eqz v3, :cond_a

    .line 220
    .line 221
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 222
    .line 223
    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 224
    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string/jumbo v8, "removeCallback touchSlop="

    .line 228
    .line 229
    .line 230
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v3, " distance="

    .line 237
    .line 238
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    .line 256
    .line 257
    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 258
    .line 259
    .line 260
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 261
    .line 262
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 263
    .line 264
    if-eqz v3, :cond_c

    .line 265
    .line 266
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 267
    .line 268
    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 269
    .line 270
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 271
    .line 272
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 273
    .line 274
    invoke-virtual {v0, v3, v6, v5, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->updateDirection(IFFLandroid/view/MotionEvent;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-nez p1, :cond_27

    .line 282
    .line 283
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 284
    .line 285
    if-nez p1, :cond_27

    .line 286
    .line 287
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 288
    .line 289
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Landroid/view/View;

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    const/high16 v0, 0x3f800000    # 1.0f

    .line 300
    .line 301
    cmpg-float p1, p1, v0

    .line 302
    .line 303
    if-ltz p1, :cond_27

    .line 304
    .line 305
    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 306
    .line 307
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 308
    .line 309
    int-to-float v3, v3

    .line 310
    cmpg-float p1, p1, v3

    .line 311
    .line 312
    if-gtz p1, :cond_d

    .line 313
    .line 314
    goto/16 :goto_14

    .line 315
    .line 316
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 317
    .line 318
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    if-eqz p1, :cond_e

    .line 325
    .line 326
    const-string/jumbo p0, "updateChildViewVI skip : edit vi running"

    .line 327
    .line 328
    .line 329
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    goto/16 :goto_14

    .line 333
    .line 334
    :cond_e
    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 335
    .line 336
    int-to-float p1, p1

    .line 337
    const v3, 0x3f4ccccd    # 0.8f

    .line 338
    .line 339
    .line 340
    mul-float/2addr p1, v3

    .line 341
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 342
    .line 343
    sub-float v3, p1, v3

    .line 344
    .line 345
    div-float/2addr v3, p1

    .line 346
    mul-float/2addr v3, v0

    .line 347
    const/4 v5, 0x0

    .line 348
    add-float/2addr v3, v5

    .line 349
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    .line 358
    .line 359
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    new-instance v8, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .line 366
    .line 367
    iget-object v9, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->dragViews:Ljava/util/List;

    .line 368
    .line 369
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    :cond_f
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    if-eqz v11, :cond_10

    .line 378
    .line 379
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    move-object v12, v11

    .line 384
    check-cast v12, Ljava/lang/Number;

    .line 385
    .line 386
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    invoke-virtual {v6, v12}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 391
    .line 392
    .line 393
    move-result v12

    .line 394
    if-eqz v12, :cond_f

    .line 395
    .line 396
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_10
    new-instance v10, Ljava/util/ArrayList;

    .line 401
    .line 402
    const/16 v11, 0xa

    .line 403
    .line 404
    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 405
    .line 406
    .line 407
    move-result v12

    .line 408
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v12

    .line 419
    if-eqz v12, :cond_11

    .line 420
    .line 421
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    check-cast v12, Ljava/lang/Number;

    .line 426
    .line 427
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    invoke-virtual {v6, v12}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_11
    new-instance v8, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    :cond_12
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v12

    .line 452
    if-eqz v12, :cond_14

    .line 453
    .line 454
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v12

    .line 458
    move-object v13, v12

    .line 459
    check-cast v13, Landroid/view/View;

    .line 460
    .line 461
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    if-nez v13, :cond_13

    .line 466
    .line 467
    move v13, v2

    .line 468
    goto :goto_7

    .line 469
    :cond_13
    move v13, v1

    .line 470
    :goto_7
    if-eqz v13, :cond_12

    .line 471
    .line 472
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_14
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v10

    .line 484
    if-eqz v10, :cond_15

    .line 485
    .line 486
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    check-cast v10, Landroid/view/View;

    .line 491
    .line 492
    invoke-virtual {v10, v3}, Landroid/view/View;->setAlpha(F)V

    .line 493
    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_15
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 497
    .line 498
    int-to-float v3, v3

    .line 499
    const v8, 0x3dcccccd    # 0.1f

    .line 500
    .line 501
    .line 502
    mul-float/2addr v3, v8

    .line 503
    iget v8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 504
    .line 505
    sub-float v8, v3, v8

    .line 506
    .line 507
    div-float/2addr v8, v3

    .line 508
    mul-float/2addr v8, v0

    .line 509
    add-float/2addr v8, v5

    .line 510
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    new-instance v8, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    iget-object v10, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->onlyAlphaDragViews:Ljava/util/List;

    .line 524
    .line 525
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    :cond_16
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    .line 531
    .line 532
    move-result v12

    .line 533
    if-eqz v12, :cond_17

    .line 534
    .line 535
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    move-object v13, v12

    .line 540
    check-cast v13, Ljava/lang/Number;

    .line 541
    .line 542
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 543
    .line 544
    .line 545
    move-result v13

    .line 546
    invoke-virtual {v6, v13}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 547
    .line 548
    .line 549
    move-result v13

    .line 550
    if-eqz v13, :cond_16

    .line 551
    .line 552
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    goto :goto_9

    .line 556
    :cond_17
    new-instance v10, Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 559
    .line 560
    .line 561
    move-result v12

    .line 562
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v12

    .line 573
    if-eqz v12, :cond_18

    .line 574
    .line 575
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v12

    .line 579
    check-cast v12, Ljava/lang/Number;

    .line 580
    .line 581
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 582
    .line 583
    .line 584
    move-result v12

    .line 585
    invoke-virtual {v6, v12}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v12

    .line 589
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_18
    new-instance v8, Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    :cond_19
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 603
    .line 604
    .line 605
    move-result v12

    .line 606
    if-eqz v12, :cond_1b

    .line 607
    .line 608
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v12

    .line 612
    move-object v13, v12

    .line 613
    check-cast v13, Landroid/view/View;

    .line 614
    .line 615
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 616
    .line 617
    .line 618
    move-result v13

    .line 619
    if-nez v13, :cond_1a

    .line 620
    .line 621
    move v13, v2

    .line 622
    goto :goto_c

    .line 623
    :cond_1a
    move v13, v1

    .line 624
    :goto_c
    if-eqz v13, :cond_19

    .line 625
    .line 626
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    goto :goto_b

    .line 630
    :cond_1b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 635
    .line 636
    .line 637
    move-result v10

    .line 638
    if-eqz v10, :cond_1c

    .line 639
    .line 640
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    check-cast v10, Landroid/view/View;

    .line 645
    .line 646
    invoke-virtual {v10, v3}, Landroid/view/View;->setAlpha(F)V

    .line 647
    .line 648
    .line 649
    goto :goto_d

    .line 650
    :cond_1c
    invoke-virtual {v6, v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    if-eqz v3, :cond_1d

    .line 655
    .line 656
    invoke-virtual {v6, v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    :cond_1d
    iget-object v3, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 661
    .line 662
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-nez v3, :cond_1f

    .line 667
    .line 668
    if-eqz v7, :cond_1f

    .line 669
    .line 670
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    cmpg-float v3, v3, v5

    .line 675
    .line 676
    if-nez v3, :cond_1e

    .line 677
    .line 678
    move v3, v2

    .line 679
    goto :goto_e

    .line 680
    :cond_1e
    move v3, v1

    .line 681
    :goto_e
    if-nez v3, :cond_1f

    .line 682
    .line 683
    invoke-static {v6, v1}, Lcom/android/systemui/keyguard/animator/DragViewController;->createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/DragViewController;I)Landroid/animation/AnimatorSet;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    const/high16 v8, -0x40800000    # -1.0f

    .line 688
    .line 689
    invoke-static {v3, v7, v8, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 693
    .line 694
    .line 695
    :cond_1f
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 696
    .line 697
    div-float/2addr v3, p1

    .line 698
    const p1, 0x3e4cccd0    # 0.20000005f

    .line 699
    .line 700
    .line 701
    mul-float/2addr v3, p1

    .line 702
    add-float/2addr v3, v0

    .line 703
    const p1, 0x3f99999a    # 1.2f

    .line 704
    .line 705
    .line 706
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 711
    .line 712
    .line 713
    move-result p1

    .line 714
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-eqz v0, :cond_20

    .line 719
    .line 720
    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 721
    .line 722
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 723
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    const-string/jumbo v1, "scale is NaN, distance = "

    .line 727
    .line 728
    .line 729
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    const-string p1, ", swipeUnlockRadius "

    .line 736
    .line 737
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object p0

    .line 747
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .line 749
    .line 750
    goto/16 :goto_14

    .line 751
    .line 752
    :cond_20
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    .line 753
    .line 754
    new-instance p0, Ljava/util/ArrayList;

    .line 755
    .line 756
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .line 758
    .line 759
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    :cond_21
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    if-eqz v3, :cond_22

    .line 768
    .line 769
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    move-object v4, v3

    .line 774
    check-cast v4, Ljava/lang/Number;

    .line 775
    .line 776
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    invoke-virtual {v6, v4}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 781
    .line 782
    .line 783
    move-result v4

    .line 784
    if-eqz v4, :cond_21

    .line 785
    .line 786
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    goto :goto_f

    .line 790
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-static {p0, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 800
    .line 801
    .line 802
    move-result-object p0

    .line 803
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    if-eqz v3, :cond_23

    .line 808
    .line 809
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    check-cast v3, Ljava/lang/Number;

    .line 814
    .line 815
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    invoke-virtual {v6, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    goto :goto_10

    .line 827
    :cond_23
    new-instance p0, Ljava/util/ArrayList;

    .line 828
    .line 829
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    :cond_24
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-eqz v3, :cond_26

    .line 841
    .line 842
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    move-object v4, v3

    .line 847
    check-cast v4, Landroid/view/View;

    .line 848
    .line 849
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 850
    .line 851
    .line 852
    move-result v4

    .line 853
    if-nez v4, :cond_25

    .line 854
    .line 855
    move v4, v2

    .line 856
    goto :goto_12

    .line 857
    :cond_25
    move v4, v1

    .line 858
    :goto_12
    if-eqz v4, :cond_24

    .line 859
    .line 860
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    goto :goto_11

    .line 864
    :cond_26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 865
    .line 866
    .line 867
    move-result-object p0

    .line 868
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_27

    .line 873
    .line 874
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    check-cast v0, Landroid/view/View;

    .line 879
    .line 880
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 884
    .line 885
    .line 886
    goto :goto_13

    .line 887
    :cond_27
    :goto_14
    return v2
.end method
