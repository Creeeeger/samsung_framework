.class public final Lcom/android/systemui/keyguard/animator/ActionDownHandler;
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
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dozeAmount:F

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    cmpg-float v1, v1, v2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    :goto_0
    xor-int/2addr v1, v0

    .line 19
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    .line 20
    .line 21
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 24
    .line 25
    iput-boolean v3, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    .line 26
    .line 27
    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 28
    .line 29
    iput v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    .line 48
    .line 49
    check-cast v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v4, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v5, v2, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivotViews:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    move-object v8, v7

    .line 81
    check-cast v8, Ljava/lang/Number;

    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {v2, v8}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    xor-int/2addr v8, v0

    .line 92
    if-eqz v8, :cond_1

    .line 93
    .line 94
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, " is null"

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const-string v7, "KeyguardTouchAnimator"

    .line 136
    .line 137
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_6

    .line 150
    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-nez v6, :cond_5

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-nez v7, :cond_4

    .line 177
    .line 178
    iget-object v7, v2, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivot:Landroid/util/SparseArray;

    .line 179
    .line 180
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Landroid/util/Pair;

    .line 185
    .line 186
    if-eqz v5, :cond_4

    .line 187
    .line 188
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v7, Ljava/util/function/Function;

    .line 191
    .line 192
    invoke-interface {v7, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    check-cast v7, Ljava/lang/Number;

    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 203
    .line 204
    .line 205
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v5, Ljava/util/function/Function;

    .line 208
    .line 209
    invoke-interface {v5, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Ljava/lang/Number;

    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-virtual {v6, v5}, Landroid/view/View;->setPivotY(F)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    .line 224
    .line 225
    if-eqz v2, :cond_7

    .line 226
    .line 227
    return v0

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 229
    .line 230
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 231
    .line 232
    iget-object v4, v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isSupportTouchAndHoldToEdit()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    const-string v5, "KeyguardEditModeController"

    .line 239
    .line 240
    if-eqz v4, :cond_12

    .line 241
    .line 242
    iget-boolean v4, v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 243
    .line 244
    if-eqz v4, :cond_8

    .line 245
    .line 246
    goto/16 :goto_9

    .line 247
    .line 248
    :cond_8
    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 249
    .line 250
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_9

    .line 255
    .line 256
    const-string v2, "can not be FBE"

    .line 257
    .line 258
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_a

    .line 262
    .line 263
    :cond_9
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    .line 268
    .line 269
    if-eqz v2, :cond_b

    .line 270
    .line 271
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 280
    .line 281
    if-ne v2, v0, :cond_a

    .line 282
    .line 283
    const-string v2, "can not be : New Dex"

    .line 284
    .line 285
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_a

    .line 289
    .line 290
    :cond_a
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    .line 291
    .line 292
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    .line 297
    .line 298
    check-cast v2, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 299
    .line 300
    invoke-virtual {v2}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_b

    .line 305
    .line 306
    const-string v2, "can not be : Dex Standalone"

    .line 307
    .line 308
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_a

    .line 312
    .line 313
    :cond_b
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_c

    .line 326
    .line 327
    const-string v2, "isKioskMode : proKiosk mode"

    .line 328
    .line 329
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_c
    :try_start_0
    invoke-static {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_d

    .line 346
    .line 347
    const-string v2, "isKioskMode : Kiosk mode"

    .line 348
    .line 349
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    .line 352
    :goto_4
    move v2, v0

    .line 353
    goto :goto_5

    .line 354
    :catch_0
    move-exception v2

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v7, "SecurityException: "

    .line 358
    .line 359
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_d
    move v2, v3

    .line 373
    :goto_5
    if-eqz v2, :cond_e

    .line 374
    .line 375
    const-string v2, "can not be : Kiosk Modee"

    .line 376
    .line 377
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_e
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-nez v2, :cond_10

    .line 386
    .line 387
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 388
    .line 389
    if-eqz v2, :cond_f

    .line 390
    .line 391
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 400
    .line 401
    if-nez v2, :cond_f

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_f
    move v2, v3

    .line 405
    goto :goto_7

    .line 406
    :cond_10
    :goto_6
    move v2, v0

    .line 407
    :goto_7
    if-eqz v2, :cond_11

    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_11
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 419
    .line 420
    if-ne v2, v0, :cond_13

    .line 421
    .line 422
    :goto_8
    move v2, v0

    .line 423
    goto :goto_b

    .line 424
    :cond_12
    :goto_9
    iget-boolean v2, v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 425
    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v6, "can not be EM="

    .line 429
    .line 430
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    :cond_13
    :goto_a
    move v2, v3

    .line 444
    :goto_b
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 445
    .line 446
    if-eqz v2, :cond_14

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->canLongPressArea(Landroid/view/MotionEvent;)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_14

    .line 453
    .line 454
    iget-object v2, v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 455
    .line 456
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-nez v2, :cond_14

    .line 461
    .line 462
    move v2, v0

    .line 463
    goto :goto_c

    .line 464
    :cond_14
    move v2, v3

    .line 465
    :goto_c
    if-eqz v2, :cond_17

    .line 466
    .line 467
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 468
    .line 469
    .line 470
    move-result p0

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v1, "actionDown editMode("

    .line 474
    .line 475
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string p0, ")"

    .line 482
    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    const-string p1, "KeyguardEditModeAnimatorController"

    .line 491
    .line 492
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 496
    .line 497
    .line 498
    move-result p0

    .line 499
    if-nez p0, :cond_19

    .line 500
    .line 501
    iget-object p0, v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 502
    .line 503
    if-eqz p0, :cond_15

    .line 504
    .line 505
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    .line 506
    .line 507
    .line 508
    move-result p0

    .line 509
    if-ne p0, v0, :cond_15

    .line 510
    .line 511
    move v3, v0

    .line 512
    :cond_15
    const/4 p0, 0x0

    .line 513
    if-eqz v3, :cond_16

    .line 514
    .line 515
    iget-object p1, v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 516
    .line 517
    if-eqz p1, :cond_16

    .line 518
    .line 519
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 520
    .line 521
    .line 522
    :cond_16
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 523
    .line 524
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 525
    .line 526
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;

    .line 531
    .line 532
    invoke-direct {v1, v4, p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;Lkotlin/coroutines/Continuation;)V

    .line 533
    .line 534
    .line 535
    const/4 v2, 0x3

    .line 536
    invoke-static {p1, p0, p0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    iput-object p0, v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 541
    .line 542
    goto :goto_d

    .line 543
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->canLongPressArea(Landroid/view/MotionEvent;)Z

    .line 544
    .line 545
    .line 546
    move-result p0

    .line 547
    if-eqz p0, :cond_18

    .line 548
    .line 549
    iget-boolean p0, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 550
    .line 551
    if-nez p0, :cond_18

    .line 552
    .line 553
    iget-object p0, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 554
    .line 555
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 556
    .line 557
    .line 558
    move-result p0

    .line 559
    if-nez p0, :cond_18

    .line 560
    .line 561
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 562
    .line 563
    .line 564
    move-result p0

    .line 565
    if-nez p0, :cond_18

    .line 566
    .line 567
    move v3, v0

    .line 568
    :cond_18
    if-eqz v3, :cond_19

    .line 569
    .line 570
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    iget-object p1, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    .line 575
    .line 576
    const-wide/16 v1, 0x1f4

    .line 577
    .line 578
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    .line 580
    .line 581
    :cond_19
    :goto_d
    return v0
.end method
