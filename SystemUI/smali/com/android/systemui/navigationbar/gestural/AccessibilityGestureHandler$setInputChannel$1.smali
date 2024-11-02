.class public final synthetic Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_11

    .line 11
    .line 12
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->context:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v0, v2, v1, p0, v1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;-><init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;Z)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->displayId:I

    .line 51
    .line 52
    if-eq v0, v1, :cond_1d

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x2

    .line 56
    const/4 v5, 0x0

    .line 57
    if-eq v0, v4, :cond_a

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    if-eq v0, v4, :cond_9

    .line 61
    .line 62
    const/4 v4, 0x5

    .line 63
    if-eq v0, v4, :cond_5

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    if-eq v0, v2, :cond_3

    .line 67
    .line 68
    goto/16 :goto_11

    .line 69
    .line 70
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 71
    .line 72
    if-eqz v0, :cond_21

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    .line 83
    .line 84
    if-ne v2, v4, :cond_21

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v1, v3

    .line 90
    :goto_0
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    .line 97
    .line 98
    sub-float/2addr v0, v3

    .line 99
    add-float/2addr v0, v2

    .line 100
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    .line 113
    .line 114
    goto/16 :goto_11

    .line 115
    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 121
    .line 122
    if-nez v4, :cond_21

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 133
    .line 134
    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 135
    .line 136
    invoke-virtual {v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v7, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 141
    .line 142
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 143
    .line 144
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 145
    .line 146
    invoke-interface {v7, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarHeight(ZI)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    int-to-float v2, v2

    .line 151
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    int-to-float v8, v8

    .line 162
    sub-float v2, v8, v2

    .line 163
    .line 164
    int-to-float v7, v7

    .line 165
    cmpg-float v2, v2, v6

    .line 166
    .line 167
    if-gtz v2, :cond_6

    .line 168
    .line 169
    cmpg-float v2, v6, v8

    .line 170
    .line 171
    if-gtz v2, :cond_6

    .line 172
    .line 173
    move v2, v1

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    move v2, v3

    .line 176
    :goto_1
    if-eqz v2, :cond_8

    .line 177
    .line 178
    cmpg-float v2, v5, v4

    .line 179
    .line 180
    if-gtz v2, :cond_7

    .line 181
    .line 182
    cmpg-float v2, v4, v7

    .line 183
    .line 184
    if-gtz v2, :cond_7

    .line 185
    .line 186
    move v2, v1

    .line 187
    goto :goto_2

    .line 188
    :cond_7
    move v2, v3

    .line 189
    :goto_2
    if-eqz v2, :cond_8

    .line 190
    .line 191
    move v3, v1

    .line 192
    :cond_8
    if-eqz v3, :cond_21

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateAccessibilityGestureDetected(Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    .line 208
    .line 209
    goto/16 :goto_11

    .line 210
    .line 211
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->clear(Landroid/view/MotionEvent;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_11

    .line 215
    .line 216
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 217
    .line 218
    if-eqz v0, :cond_21

    .line 219
    .line 220
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    const/4 v2, -0x1

    .line 227
    if-eq v0, v2, :cond_21

    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 230
    .line 231
    if-eqz p0, :cond_21

    .line 232
    .line 233
    const-wide/16 v6, 0x190

    .line 234
    .line 235
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->makePauseHarderToTrigger:Z

    .line 236
    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    move-wide v8, v6

    .line 240
    goto :goto_3

    .line 241
    :cond_b
    const-wide/16 v8, 0x12c

    .line 242
    .line 243
    :goto_3
    new-instance v4, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;

    .line 244
    .line 245
    invoke-direct {v4, p0, p1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;-><init>(Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;Landroid/view/MotionEvent;)V

    .line 246
    .line 247
    .line 248
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

    .line 249
    .line 250
    invoke-virtual {v10, v8, v9, v4}, Lcom/android/systemui/navigationbar/util/ScopeTimer;->start(JLkotlin/jvm/functions/Function0;)V

    .line 251
    .line 252
    .line 253
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    .line 254
    .line 255
    iget-object v8, v4, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    .line 256
    .line 257
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 261
    .line 262
    .line 263
    iget-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->directionY:Z

    .line 264
    .line 265
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    .line 266
    .line 267
    if-eqz v8, :cond_c

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    goto :goto_4

    .line 278
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    .line 287
    .line 288
    if-eqz v4, :cond_1c

    .line 289
    .line 290
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    cmpl-float v4, v4, v5

    .line 295
    .line 296
    if-nez v4, :cond_d

    .line 297
    .line 298
    move v4, v1

    .line 299
    goto :goto_5

    .line 300
    :cond_d
    move v4, v3

    .line 301
    :goto_5
    if-nez v4, :cond_1c

    .line 302
    .line 303
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    .line 304
    .line 305
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    .line 321
    .line 322
    if-eqz v10, :cond_10

    .line 323
    .line 324
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedFast:F

    .line 325
    .line 326
    cmpg-float v2, v8, p1

    .line 327
    .line 328
    if-ltz v2, :cond_f

    .line 329
    .line 330
    cmpg-float p1, v9, p1

    .line 331
    .line 332
    if-gez p1, :cond_e

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_e
    move v1, v3

    .line 336
    :cond_f
    :goto_6
    const-string p1, "Was paused, but started moving at a fast speed"

    .line 337
    .line 338
    :goto_7
    move v3, v1

    .line 339
    goto/16 :goto_f

    .line 340
    .line 341
    :cond_10
    cmpg-float v10, v0, v5

    .line 342
    .line 343
    if-gez v10, :cond_11

    .line 344
    .line 345
    move v10, v1

    .line 346
    goto :goto_8

    .line 347
    :cond_11
    move v10, v3

    .line 348
    :goto_8
    cmpg-float v4, v4, v5

    .line 349
    .line 350
    if-gez v4, :cond_12

    .line 351
    .line 352
    move v4, v1

    .line 353
    goto :goto_9

    .line 354
    :cond_12
    move v4, v3

    .line 355
    :goto_9
    if-eq v10, v4, :cond_13

    .line 356
    .line 357
    const-string p1, "Velocity changed directions"

    .line 358
    .line 359
    goto/16 :goto_f

    .line 360
    .line 361
    :cond_13
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedVerySlow:F

    .line 362
    .line 363
    cmpg-float v5, v8, v4

    .line 364
    .line 365
    if-gez v5, :cond_14

    .line 366
    .line 367
    cmpg-float v4, v9, v4

    .line 368
    .line 369
    if-gez v4, :cond_14

    .line 370
    .line 371
    move v4, v1

    .line 372
    goto :goto_a

    .line 373
    :cond_14
    move v4, v3

    .line 374
    :goto_a
    if-nez v4, :cond_17

    .line 375
    .line 376
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    .line 377
    .line 378
    if-nez v5, :cond_17

    .line 379
    .line 380
    const v4, 0x3f19999a    # 0.6f

    .line 381
    .line 382
    .line 383
    mul-float/2addr v9, v4

    .line 384
    cmpg-float v4, v8, v9

    .line 385
    .line 386
    if-gez v4, :cond_15

    .line 387
    .line 388
    move v4, v1

    .line 389
    goto :goto_b

    .line 390
    :cond_15
    move v4, v3

    .line 391
    :goto_b
    if-eqz v4, :cond_16

    .line 392
    .line 393
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSomewhatFast:F

    .line 394
    .line 395
    cmpg-float v4, v8, v4

    .line 396
    .line 397
    if-gez v4, :cond_16

    .line 398
    .line 399
    move v4, v1

    .line 400
    goto :goto_c

    .line 401
    :cond_16
    move v4, v3

    .line 402
    :goto_c
    const-string v5, "Didn\'t have back to back slow speeds, checking for rapid deceleration on first pause only"

    .line 403
    .line 404
    goto :goto_d

    .line 405
    :cond_17
    const-string v5, "Pause requires back to back slow speeds"

    .line 406
    .line 407
    :goto_d
    if-eqz v2, :cond_1b

    .line 408
    .line 409
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSlow:F

    .line 410
    .line 411
    cmpg-float v2, v8, v2

    .line 412
    .line 413
    const-wide/16 v4, 0x0

    .line 414
    .line 415
    if-gez v2, :cond_1a

    .line 416
    .line 417
    iget-wide v8, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    .line 418
    .line 419
    cmp-long v2, v8, v4

    .line 420
    .line 421
    if-nez v2, :cond_18

    .line 422
    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 424
    .line 425
    .line 426
    move-result-wide v4

    .line 427
    iput-wide v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    .line 428
    .line 429
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 430
    .line 431
    .line 432
    move-result-wide v4

    .line 433
    iget-wide v8, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    .line 434
    .line 435
    sub-long/2addr v4, v8

    .line 436
    cmp-long p1, v4, v6

    .line 437
    .line 438
    if-ltz p1, :cond_19

    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_19
    move v1, v3

    .line 442
    :goto_e
    const-string p1, "Maintained slow speed for sufficient duration when making pause harder to trigger"

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_1a
    iput-wide v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    .line 446
    .line 447
    const-string p1, "Intentionally making pause harder to trigger"

    .line 448
    .line 449
    goto :goto_f

    .line 450
    :cond_1b
    move v3, v4

    .line 451
    move-object p1, v5

    .line 452
    :goto_f
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->updatePaused(Ljava/lang/String;Z)V

    .line 453
    .line 454
    .line 455
    :cond_1c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    .line 460
    .line 461
    goto :goto_11

    .line 462
    :cond_1d
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 463
    .line 464
    if-eqz v0, :cond_20

    .line 465
    .line 466
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isPaused:Z

    .line 467
    .line 468
    if-nez v0, :cond_20

    .line 469
    .line 470
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    .line 471
    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    .line 477
    .line 478
    sub-float/2addr v1, v3

    .line 479
    add-float/2addr v1, v0

    .line 480
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    .line 481
    .line 482
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 483
    .line 484
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    const/16 v1, 0x3e8

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 490
    .line 491
    .line 492
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    .line 493
    .line 494
    neg-float v0, v0

    .line 495
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inGestureDistance:I

    .line 496
    .line 497
    int-to-float v1, v1

    .line 498
    cmpl-float v0, v0, v1

    .line 499
    .line 500
    if-gtz v0, :cond_1f

    .line 501
    .line 502
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 503
    .line 504
    if-eqz v0, :cond_1e

    .line 505
    .line 506
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    goto :goto_10

    .line 515
    :cond_1e
    const/4 v0, 0x0

    .line 516
    :goto_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    neg-float v0, v0

    .line 524
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inFlingVelocity:I

    .line 525
    .line 526
    int-to-float v1, v1

    .line 527
    cmpl-float v0, v0, v1

    .line 528
    .line 529
    if-lez v0, :cond_20

    .line 530
    .line 531
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 532
    .line 533
    const-string v1, "accessibilityButtonClicked"

    .line 534
    .line 535
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 539
    .line 540
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 541
    .line 542
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    .line 543
    .line 544
    .line 545
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->clear(Landroid/view/MotionEvent;)V

    .line 546
    .line 547
    .line 548
    :cond_21
    :goto_11
    return-void
.end method
