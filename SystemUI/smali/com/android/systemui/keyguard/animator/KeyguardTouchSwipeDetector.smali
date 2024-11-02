.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

.field public final mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

.field public mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x1

    .line 11
    const-string v4, "KeyguardTouchSwipeDetector"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v5

    .line 22
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 23
    .line 24
    const-string/jumbo p0, "onTouchEvent(): Unlock is started already"

    .line 25
    .line 26
    .line 27
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_2
    return v5

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    .line 32
    .line 33
    if-nez v1, :cond_7

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    if-ne v0, v2, :cond_4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    move v3, v5

    .line 41
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 42
    .line 43
    const-string/jumbo p0, "onTouchEvent(): mIntercepting is false"

    .line 44
    .line 45
    .line 46
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_6
    return v5

    .line 50
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 51
    .line 52
    if-eqz v1, :cond_c

    .line 53
    .line 54
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 55
    .line 56
    if-eqz v6, :cond_8

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 59
    .line 60
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    move v1, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_8
    move v1, v5

    .line 69
    :goto_2
    if-eqz v1, :cond_c

    .line 70
    .line 71
    if-eqz v0, :cond_9

    .line 72
    .line 73
    if-ne v0, v2, :cond_a

    .line 74
    .line 75
    :cond_9
    move v5, v3

    .line 76
    :cond_a
    if-eqz v5, :cond_b

    .line 77
    .line 78
    const-string p0, "isSupportSimPermDisabled!!"

    .line 79
    .line 80
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_b
    return v3

    .line 84
    :cond_c
    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 85
    .line 86
    float-to-double v6, v1

    .line 87
    const/4 v1, 0x0

    .line 88
    iget-object v8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 89
    .line 90
    iget-object v9, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    if-eqz v0, :cond_1e

    .line 94
    .line 95
    const/4 v11, 0x2

    .line 96
    if-eq v0, v3, :cond_15

    .line 97
    .line 98
    if-eq v0, v11, :cond_11

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    if-eq v0, v1, :cond_f

    .line 102
    .line 103
    if-eq v0, v2, :cond_d

    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-lt p1, v11, :cond_e

    .line 112
    .line 113
    move v5, v3

    .line 114
    :cond_e
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 115
    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v0, "onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 125
    .line 126
    invoke-static {p1, p0, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string/jumbo v1, "onTouchEvent(): ACTION_CANCEL mDistance="

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-gt p1, v3, :cond_10

    .line 154
    .line 155
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string/jumbo v0, "onTouchEvent(): ACTION_CANCEL mIsMultiTouch="

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 166
    .line 167
    invoke-static {p1, v0, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_10
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    .line 176
    .line 177
    if-nez v0, :cond_12

    .line 178
    .line 179
    return v5

    .line 180
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    const/16 v2, 0x9c4

    .line 185
    .line 186
    int-to-long v6, v2

    .line 187
    sub-long v6, v0, v6

    .line 188
    .line 189
    iget-wide v10, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    .line 190
    .line 191
    cmp-long v2, v6, v10

    .line 192
    .line 193
    if-lez v2, :cond_14

    .line 194
    .line 195
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 196
    .line 197
    if-eqz v2, :cond_13

    .line 198
    .line 199
    invoke-interface {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    .line 200
    .line 201
    .line 202
    :cond_13
    iput-wide v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    .line 203
    .line 204
    :cond_14
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistance(Landroid/view/MotionEvent;Z)V

    .line 205
    .line 206
    .line 207
    if-eqz v8, :cond_20

    .line 208
    .line 209
    iget-boolean v0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 210
    .line 211
    if-eqz v0, :cond_20

    .line 212
    .line 213
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 214
    .line 215
    iget v0, v9, Landroid/graphics/PointF;->x:F

    .line 216
    .line 217
    iget v1, v9, Landroid/graphics/PointF;->y:F

    .line 218
    .line 219
    invoke-virtual {v8, p0, v0, v1, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->updateDirection(IFFLandroid/view/MotionEvent;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_15
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 225
    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iget v12, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 235
    .line 236
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    filled-new-array {v0, v2, v12}, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const-string/jumbo v2, "onTouchEvent(): ACTION_UP (T/D/R)=%d/%f/%d"

    .line 245
    .line 246
    .line 247
    invoke-static {v4, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 254
    .line 255
    if-eqz v0, :cond_16

    .line 256
    .line 257
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    .line 258
    .line 259
    .line 260
    :cond_16
    if-eqz v8, :cond_18

    .line 261
    .line 262
    iget-boolean v0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 263
    .line 264
    if-eqz v0, :cond_18

    .line 265
    .line 266
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 267
    .line 268
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 273
    .line 274
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 275
    .line 276
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mIsSwipeBouncer:Z

    .line 277
    .line 278
    if-eqz v2, :cond_17

    .line 279
    .line 280
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 281
    .line 282
    if-eqz v2, :cond_17

    .line 283
    .line 284
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 285
    .line 286
    if-eqz v0, :cond_17

    .line 287
    .line 288
    move v0, v3

    .line 289
    goto :goto_3

    .line 290
    :cond_17
    move v0, v5

    .line 291
    :goto_3
    if-nez v0, :cond_18

    .line 292
    .line 293
    iget-object v10, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 294
    .line 295
    :cond_18
    if-eqz v8, :cond_19

    .line 296
    .line 297
    if-eqz v10, :cond_19

    .line 298
    .line 299
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 300
    .line 301
    if-ne v10, v0, :cond_1c

    .line 302
    .line 303
    :cond_19
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 304
    .line 305
    int-to-double v12, v0

    .line 306
    cmpg-double v0, v6, v12

    .line 307
    .line 308
    if-gez v0, :cond_1a

    .line 309
    .line 310
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 311
    .line 312
    if-eqz v0, :cond_1b

    .line 313
    .line 314
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onAffordanceTap()V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_1a
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 319
    .line 320
    int-to-double v12, v0

    .line 321
    cmpg-double v0, v12, v6

    .line 322
    .line 323
    if-gez v0, :cond_1b

    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getCanBeUnlock()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_1b

    .line 330
    .line 331
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 332
    .line 333
    if-eqz v0, :cond_1b

    .line 334
    .line 335
    const-string v0, "KeyguardTouchBase"

    .line 336
    .line 337
    const-string/jumbo v2, "unlockExecute()"

    .line 338
    .line 339
    .line 340
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 344
    .line 345
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 346
    .line 347
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onUnlockExecuted()V

    .line 348
    .line 349
    .line 350
    :cond_1b
    :goto_4
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 351
    .line 352
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 353
    .line 354
    iput v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 355
    .line 356
    const/high16 v0, -0x40800000    # -1.0f

    .line 357
    .line 358
    iput v0, v9, Landroid/graphics/PointF;->x:F

    .line 359
    .line 360
    iput v0, v9, Landroid/graphics/PointF;->y:F

    .line 361
    .line 362
    if-eqz v8, :cond_1c

    .line 363
    .line 364
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    .line 365
    .line 366
    .line 367
    :cond_1c
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-lt p1, v11, :cond_1d

    .line 375
    .line 376
    move v5, v3

    .line 377
    :cond_1d
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 378
    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string/jumbo v0, "onTouchEvent(): ACTION_UP mIsMultiTouch="

    .line 382
    .line 383
    .line 384
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 388
    .line 389
    invoke-static {p1, p0, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_1e
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 394
    .line 395
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    iput v0, v9, Landroid/graphics/PointF;->x:F

    .line 403
    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    iput p1, v9, Landroid/graphics/PointF;->y:F

    .line 409
    .line 410
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 411
    .line 412
    iput v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 413
    .line 414
    if-eqz v8, :cond_20

    .line 415
    .line 416
    iget-object p0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 417
    .line 418
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 419
    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isDynamicLockEnabled()Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    iput-boolean p1, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 425
    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v0, "initDynamicLock mIsDynamicLockEnabled: "

    .line 429
    .line 430
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget-boolean v0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 434
    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    new-array v0, v5, [Ljava/lang/Object;

    .line 443
    .line 444
    const-string v1, "KeyguardTouchDymLockInjector"

    .line 445
    .line 446
    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    iget-boolean p1, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 450
    .line 451
    if-eqz p1, :cond_20

    .line 452
    .line 453
    iput v5, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 454
    .line 455
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 456
    .line 457
    if-eqz p0, :cond_1f

    .line 458
    .line 459
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    .line 460
    .line 461
    iput p0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 462
    .line 463
    :cond_1f
    iput-object v10, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 464
    .line 465
    iget p0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 466
    .line 467
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    const-string p1, "mNonSwipeMode: 0x%08x"

    .line 476
    .line 477
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    new-array p1, v5, [Ljava/lang/Object;

    .line 482
    .line 483
    invoke-static {v1, p0, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    :cond_20
    :goto_5
    return v3
.end method
