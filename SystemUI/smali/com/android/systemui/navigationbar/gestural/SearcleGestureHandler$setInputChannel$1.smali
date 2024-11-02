.class public final synthetic Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$setInputChannel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;

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
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;

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
    goto/16 :goto_a

    .line 11
    .line 12
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->downPoint:Landroid/graphics/PointF;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x2

    .line 23
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    if-eq v0, v6, :cond_6

    .line 29
    .line 30
    if-eq v0, v4, :cond_1

    .line 31
    .line 32
    if-eq v0, v3, :cond_6

    .line 33
    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->allowGesture:Z

    .line 37
    .line 38
    if-eqz v0, :cond_14

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->startSearcle:Z

    .line 41
    .line 42
    if-nez v0, :cond_14

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 49
    .line 50
    sub-float/2addr v0, v4

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    sub-float/2addr v4, v1

    .line 58
    float-to-double v0, v0

    .line 59
    float-to-double v7, v4

    .line 60
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v9

    .line 64
    double-to-float v4, v9

    .line 65
    iput v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->distance:F

    .line 66
    .line 67
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isPilfered:Z

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    .line 71
    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->scrollTouchSlop:F

    .line 72
    .line 73
    cmpl-float v4, v4, v9

    .line 74
    .line 75
    if-lez v4, :cond_3

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 78
    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 82
    .line 83
    .line 84
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isPilfered:Z

    .line 85
    .line 86
    :cond_3
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->distance:F

    .line 87
    .line 88
    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->touchSlop:F

    .line 89
    .line 90
    cmpl-float v4, v4, v9

    .line 91
    .line 92
    if-lez v4, :cond_14

    .line 93
    .line 94
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    double-to-float v0, v0

    .line 99
    const/16 v1, 0xb4

    .line 100
    .line 101
    int-to-float v1, v1

    .line 102
    mul-float/2addr v0, v1

    .line 103
    float-to-double v0, v0

    .line 104
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    div-double/2addr v0, v7

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->degreeEnd:F

    .line 115
    .line 116
    float-to-double v7, v4

    .line 117
    cmpg-double v4, v0, v7

    .line 118
    .line 119
    if-gtz v4, :cond_4

    .line 120
    .line 121
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->degreeStart:F

    .line 122
    .line 123
    float-to-double v7, v4

    .line 124
    cmpg-double v0, v7, v0

    .line 125
    .line 126
    if-gtz v0, :cond_4

    .line 127
    .line 128
    move v0, v6

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    move v0, v2

    .line 131
    :goto_0
    if-eqz v0, :cond_5

    .line 132
    .line 133
    const-string p1, "Execute Assistant"

    .line 134
    .line 135
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/os/Bundle;

    .line 139
    .line 140
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v0, "invocation_type"

    .line 144
    .line 145
    const/4 v1, 0x5

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->assistManager:Lcom/android/systemui/assist/AssistManager;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->startSearcle:Z

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateGesture()V

    .line 159
    .line 160
    .line 161
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 162
    .line 163
    const-string p1, "749007"

    .line 164
    .line 165
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->allowGesture:Z

    .line 171
    .line 172
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->startSearcle:Z

    .line 173
    .line 174
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isPilfered:Z

    .line 175
    .line 176
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_a

    .line 187
    .line 188
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->allowGesture:Z

    .line 189
    .line 190
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->startSearcle:Z

    .line 191
    .line 192
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isPilfered:Z

    .line 193
    .line 194
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_a

    .line 205
    .line 206
    :cond_7
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    .line 207
    .line 208
    if-eqz v0, :cond_13

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 219
    .line 220
    iget-object v9, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 221
    .line 222
    iget v10, v9, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 223
    .line 224
    iget-object v11, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 225
    .line 226
    iget-boolean v9, v9, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 227
    .line 228
    invoke-interface {v11, v9, v2}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarHeight(ZI)I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    int-to-float v9, v9

    .line 233
    const/4 v11, 0x0

    .line 234
    if-eqz v10, :cond_d

    .line 235
    .line 236
    if-eq v10, v6, :cond_8

    .line 237
    .line 238
    if-eq v10, v4, :cond_d

    .line 239
    .line 240
    if-eq v10, v3, :cond_8

    .line 241
    .line 242
    goto/16 :goto_8

    .line 243
    .line 244
    :cond_8
    iget-object v3, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 245
    .line 246
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 247
    .line 248
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 249
    .line 250
    int-to-float v4, v4

    .line 251
    sub-float v8, v4, v9

    .line 252
    .line 253
    cmpg-float v10, v11, v0

    .line 254
    .line 255
    if-gtz v10, :cond_9

    .line 256
    .line 257
    cmpg-float v10, v0, v9

    .line 258
    .line 259
    if-gtz v10, :cond_9

    .line 260
    .line 261
    move v10, v6

    .line 262
    goto :goto_1

    .line 263
    :cond_9
    move v10, v2

    .line 264
    :goto_1
    if-nez v10, :cond_b

    .line 265
    .line 266
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 267
    .line 268
    int-to-float v3, v3

    .line 269
    sub-float v9, v3, v9

    .line 270
    .line 271
    cmpg-float v3, v0, v3

    .line 272
    .line 273
    if-gtz v3, :cond_a

    .line 274
    .line 275
    cmpg-float v0, v9, v0

    .line 276
    .line 277
    if-gtz v0, :cond_a

    .line 278
    .line 279
    move v0, v6

    .line 280
    goto :goto_2

    .line 281
    :cond_a
    move v0, v2

    .line 282
    :goto_2
    if-eqz v0, :cond_12

    .line 283
    .line 284
    :cond_b
    cmpg-float v0, v8, v7

    .line 285
    .line 286
    if-gtz v0, :cond_c

    .line 287
    .line 288
    cmpg-float v0, v7, v4

    .line 289
    .line 290
    if-gtz v0, :cond_c

    .line 291
    .line 292
    move v0, v6

    .line 293
    goto :goto_3

    .line 294
    :cond_c
    move v0, v2

    .line 295
    :goto_3
    if-eqz v0, :cond_12

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_d
    iget-object v3, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 299
    .line 300
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 301
    .line 302
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 303
    .line 304
    int-to-float v3, v3

    .line 305
    sub-float v4, v3, v9

    .line 306
    .line 307
    invoke-virtual {v8, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getSpaceWidth(Z)I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    int-to-float v9, v9

    .line 312
    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 313
    .line 314
    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 315
    .line 316
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 317
    .line 318
    int-to-float v8, v8

    .line 319
    cmpg-float v4, v4, v7

    .line 320
    .line 321
    if-gtz v4, :cond_e

    .line 322
    .line 323
    cmpg-float v3, v7, v3

    .line 324
    .line 325
    if-gtz v3, :cond_e

    .line 326
    .line 327
    move v3, v6

    .line 328
    goto :goto_4

    .line 329
    :cond_e
    move v3, v2

    .line 330
    :goto_4
    if-eqz v3, :cond_12

    .line 331
    .line 332
    cmpg-float v3, v11, v0

    .line 333
    .line 334
    if-gtz v3, :cond_f

    .line 335
    .line 336
    cmpg-float v3, v0, v9

    .line 337
    .line 338
    if-gtz v3, :cond_f

    .line 339
    .line 340
    move v3, v6

    .line 341
    goto :goto_5

    .line 342
    :cond_f
    move v3, v2

    .line 343
    :goto_5
    if-nez v3, :cond_11

    .line 344
    .line 345
    sub-float v3, v8, v9

    .line 346
    .line 347
    cmpg-float v3, v3, v0

    .line 348
    .line 349
    if-gtz v3, :cond_10

    .line 350
    .line 351
    cmpg-float v0, v0, v8

    .line 352
    .line 353
    if-gtz v0, :cond_10

    .line 354
    .line 355
    move v0, v6

    .line 356
    goto :goto_6

    .line 357
    :cond_10
    move v0, v2

    .line 358
    :goto_6
    if-eqz v0, :cond_12

    .line 359
    .line 360
    :cond_11
    :goto_7
    move v0, v6

    .line 361
    goto :goto_9

    .line 362
    :cond_12
    :goto_8
    move v0, v2

    .line 363
    :goto_9
    if-eqz v0, :cond_13

    .line 364
    .line 365
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 366
    .line 367
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 370
    .line 371
    iget-wide v3, v0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    .line 372
    .line 373
    invoke-static {v3, v4}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(J)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_13

    .line 378
    .line 379
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 380
    .line 381
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantTouchGestureEnabled:Z

    .line 382
    .line 383
    if-eqz v0, :cond_13

    .line 384
    .line 385
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isInLockTaskMode:Z

    .line 386
    .line 387
    if-nez v0, :cond_13

    .line 388
    .line 389
    move v2, v6

    .line 390
    :cond_13
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->allowGesture:Z

    .line 391
    .line 392
    const-string v0, "allowGesture: "

    .line 393
    .line 394
    invoke-static {v0, v2, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->allowGesture:Z

    .line 398
    .line 399
    if-eqz p0, :cond_14

    .line 400
    .line 401
    new-instance p0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v0, "allow down x: {"

    .line 404
    .line 405
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v0, ".x}, y:{"

    .line 412
    .line 413
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v0, ".y}"

    .line 420
    .line 421
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 432
    .line 433
    .line 434
    move-result p0

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    invoke-virtual {v1, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 440
    .line 441
    .line 442
    :cond_14
    :goto_a
    return-void
.end method
