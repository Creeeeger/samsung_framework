.class public final synthetic Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

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
    goto/16 :goto_b

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
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 23
    .line 24
    iget-boolean v3, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->enabled:Z

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->onInputEvent(Landroid/view/InputEvent;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/16 v2, 0x10

    .line 34
    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    const/4 v4, 0x7

    .line 38
    const/4 v5, 0x6

    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x5

    .line 43
    if-nez v0, :cond_f

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 48
    .line 49
    .line 50
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    .line 57
    .line 58
    invoke-virtual {v1, v7}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    float-to-int v1, v1

    .line 70
    iget v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 71
    .line 72
    iget v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 73
    .line 74
    add-int/2addr v10, v11

    .line 75
    if-gt v1, v10, :cond_3

    .line 76
    .line 77
    move v1, v6

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v1, v7

    .line 80
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 88
    .line 89
    iget v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 90
    .line 91
    add-int/2addr v10, v11

    .line 92
    int-to-float v10, v10

    .line 93
    cmpg-float v1, v1, v10

    .line 94
    .line 95
    if-gtz v1, :cond_5

    .line 96
    .line 97
    move v1, v6

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move v1, v7

    .line 100
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 101
    .line 102
    :goto_2
    const/4 v1, 0x0

    .line 103
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    .line 104
    .line 105
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 106
    .line 107
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    float-to-int v1, v1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    float-to-int v10, v10

    .line 119
    invoke-virtual {p0, v1, v10}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinInsets(II)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    .line 124
    .line 125
    if-nez v10, :cond_7

    .line 126
    .line 127
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 128
    .line 129
    if-eqz v10, :cond_7

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    .line 134
    .line 135
    if-nez v10, :cond_7

    .line 136
    .line 137
    sget-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 138
    .line 139
    if-eqz v10, :cond_6

    .line 140
    .line 141
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    .line 142
    .line 143
    if-eqz v10, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    iget-wide v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:J

    .line 147
    .line 148
    invoke-static {v10, v11}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(J)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-nez v10, :cond_7

    .line 153
    .line 154
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    float-to-int v10, v10

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    float-to-int v11, v11

    .line 164
    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_7

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isMultiWindowCornerGesture(Landroid/view/MotionEvent;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_7

    .line 175
    .line 176
    move v10, v6

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    move v10, v7

    .line 179
    :goto_4
    iput-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 180
    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    iget-boolean v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    .line 184
    .line 185
    if-nez v11, :cond_8

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBlockSPenGesture(Landroid/view/MotionEvent;)Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-nez v11, :cond_8

    .line 192
    .line 193
    move v11, v6

    .line 194
    goto :goto_5

    .line 195
    :cond_8
    move v11, v7

    .line 196
    :goto_5
    and-int/2addr v10, v11

    .line 197
    iput-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 198
    .line 199
    :cond_9
    sget-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 200
    .line 201
    if-eqz v10, :cond_a

    .line 202
    .line 203
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    .line 204
    .line 205
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 206
    .line 207
    if-eqz v10, :cond_a

    .line 208
    .line 209
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 210
    .line 211
    invoke-virtual {v10}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isBlockingGestureOnGame()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    iput-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    .line 216
    .line 217
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    invoke-virtual {v10, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    .line 228
    .line 229
    .line 230
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 231
    .line 232
    iget-boolean v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    .line 233
    .line 234
    xor-int/2addr v11, v6

    .line 235
    and-int/2addr v10, v11

    .line 236
    iput-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 237
    .line 238
    :cond_a
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 239
    .line 240
    if-eqz v10, :cond_b

    .line 241
    .line 242
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 243
    .line 244
    iget-boolean v11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 245
    .line 246
    invoke-interface {v10, v11}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setIsLeftPanel(Z)V

    .line 247
    .line 248
    .line 249
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 250
    .line 251
    invoke-interface {v10, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dispatchToBackAnimation(Landroid/view/MotionEvent;)V

    .line 255
    .line 256
    .line 257
    :cond_b
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 258
    .line 259
    if-nez v10, :cond_c

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_c
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    invoke-virtual {v10, v11, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    .line 276
    .line 277
    const/high16 v10, -0x40800000    # -1.0f

    .line 278
    .line 279
    invoke-virtual {p1, v10, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 280
    .line 281
    .line 282
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 283
    .line 284
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 285
    .line 286
    .line 287
    move-result-wide v10

    .line 288
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTmpLogDate:Ljava/util/Date;

    .line 289
    .line 290
    invoke-virtual {p1, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 294
    .line 295
    iget-object v12, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTmpLogDate:Ljava/util/Date;

    .line 296
    .line 297
    invoke-virtual {p1, v12}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-eqz v1, :cond_d

    .line 302
    .line 303
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 307
    .line 308
    :goto_7
    const/16 v12, 0x11

    .line 309
    .line 310
    new-array v12, v12, [Ljava/lang/Object;

    .line 311
    .line 312
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    aput-object v13, v12, v7

    .line 317
    .line 318
    if-eqz v0, :cond_e

    .line 319
    .line 320
    new-instance p1, Ljava/util/Date;

    .line 321
    .line 322
    invoke-direct {p1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 323
    .line 324
    .line 325
    :cond_e
    aput-object p1, v12, v6

    .line 326
    .line 327
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 328
    .line 329
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    aput-object p1, v12, v8

    .line 334
    .line 335
    const/4 p1, 0x3

    .line 336
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    aput-object v0, v12, p1

    .line 341
    .line 342
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 343
    .line 344
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    const/4 v0, 0x4

    .line 349
    aput-object p1, v12, v0

    .line 350
    .line 351
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDeferSetIsOnLeftEdge:Z

    .line 352
    .line 353
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    aput-object p1, v12, v9

    .line 358
    .line 359
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 360
    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    aput-object p1, v12, v5

    .line 366
    .line 367
    iget-wide v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:J

    .line 368
    .line 369
    invoke-static {v7, v8}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(J)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    aput-object p1, v12, v4

    .line 378
    .line 379
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    .line 380
    .line 381
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    aput-object p1, v12, v3

    .line 386
    .line 387
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    .line 388
    .line 389
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    const/16 v0, 0x9

    .line 394
    .line 395
    aput-object p1, v12, v0

    .line 396
    .line 397
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsInPip:Z

    .line 398
    .line 399
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    const/16 v0, 0xa

    .line 404
    .line 405
    aput-object p1, v12, v0

    .line 406
    .line 407
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 408
    .line 409
    const/16 v0, 0xb

    .line 410
    .line 411
    aput-object p1, v12, v0

    .line 412
    .line 413
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 414
    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    const/16 v0, 0xc

    .line 420
    .line 421
    aput-object p1, v12, v0

    .line 422
    .line 423
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 424
    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    const/16 v0, 0xd

    .line 430
    .line 431
    aput-object p1, v12, v0

    .line 432
    .line 433
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 434
    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    const/16 v0, 0xe

    .line 440
    .line 441
    aput-object p1, v12, v0

    .line 442
    .line 443
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    .line 444
    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    const/16 v0, 0xf

    .line 450
    .line 451
    aput-object p1, v12, v0

    .line 452
    .line 453
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 454
    .line 455
    aput-object p1, v12, v2

    .line 456
    .line 457
    const-string p1, "Gesture [%d [%s],alw=%B, mltf=%B, left=%B, defLeft=%B, backAlw=%B, disbld=%B, qsDisbld=%b, blkdAct=%B, pip=%B, disp=%s, wl=%d, il=%d, wr=%d, ir=%d, excl=%s]"

    .line 458
    .line 459
    invoke-static {p1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-virtual {v1, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->log(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_a

    .line 467
    .line 468
    :cond_f
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 469
    .line 470
    if-nez v10, :cond_11

    .line 471
    .line 472
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 473
    .line 474
    if-eqz v10, :cond_10

    .line 475
    .line 476
    goto :goto_8

    .line 477
    :cond_10
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 478
    .line 479
    if-eqz v0, :cond_1d

    .line 480
    .line 481
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    .line 482
    .line 483
    if-eqz v0, :cond_1d

    .line 484
    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 490
    .line 491
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 492
    .line 493
    sub-float/2addr v0, v1

    .line 494
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 503
    .line 504
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 505
    .line 506
    sub-float/2addr p1, v1

    .line 507
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    cmpl-float p1, v0, p1

    .line 512
    .line 513
    if-lez p1, :cond_1d

    .line 514
    .line 515
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    .line 516
    .line 517
    cmpl-float p1, v0, p1

    .line 518
    .line 519
    if-lez p1, :cond_1d

    .line 520
    .line 521
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 522
    .line 523
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 524
    .line 525
    const-string v0, "game_show_floating_icon"

    .line 526
    .line 527
    invoke-static {p1, v0, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    .line 529
    .line 530
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBlockGestureOnGame:Z

    .line 531
    .line 532
    goto/16 :goto_a

    .line 533
    .line 534
    :cond_11
    :goto_8
    const-string/jumbo v10, "onMotionEvent("

    .line 535
    .line 536
    .line 537
    const-string v11, "EdgeBackGestureHandler"

    .line 538
    .line 539
    if-eqz v1, :cond_12

    .line 540
    .line 541
    if-ne v0, v9, :cond_12

    .line 542
    .line 543
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackSplitGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 544
    .line 545
    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    .line 546
    .line 547
    if-eqz v1, :cond_12

    .line 548
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 555
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    const-string v1, ") cancel reason [splitGesture]"

    .line 560
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_b

    .line 575
    .line 576
    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 577
    .line 578
    if-nez v1, :cond_1c

    .line 579
    .line 580
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    .line 581
    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 583
    .line 584
    .line 585
    move-result v12

    .line 586
    float-to-int v12, v12

    .line 587
    int-to-float v12, v12

    .line 588
    iput v12, v1, Landroid/graphics/PointF;->x:F

    .line 589
    .line 590
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    .line 591
    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 593
    .line 594
    .line 595
    move-result v12

    .line 596
    float-to-int v12, v12

    .line 597
    int-to-float v12, v12

    .line 598
    iput v12, v1, Landroid/graphics/PointF;->y:F

    .line 599
    .line 600
    if-ne v0, v9, :cond_15

    .line 601
    .line 602
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 603
    .line 604
    if-eqz v0, :cond_14

    .line 605
    .line 606
    invoke-virtual {p0, v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 607
    .line 608
    .line 609
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 610
    .line 611
    if-eqz v0, :cond_13

    .line 612
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 619
    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v1, ") cancel reason [multitouch]"

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 636
    .line 637
    .line 638
    :cond_14
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 639
    .line 640
    goto/16 :goto_b

    .line 641
    .line 642
    :cond_15
    if-ne v0, v8, :cond_1c

    .line 643
    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 645
    .line 646
    .line 647
    move-result-wide v0

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 649
    .line 650
    .line 651
    move-result-wide v12

    .line 652
    sub-long/2addr v0, v12

    .line 653
    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 654
    .line 655
    int-to-long v12, v5

    .line 656
    cmp-long v0, v0, v12

    .line 657
    .line 658
    if-lez v0, :cond_17

    .line 659
    .line 660
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 661
    .line 662
    if-eqz v0, :cond_16

    .line 663
    .line 664
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 668
    .line 669
    .line 670
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 671
    .line 672
    if-eqz p1, :cond_16

    .line 673
    .line 674
    new-instance p1, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 680
    .line 681
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v0, ") cancel reason [longpress]"

    .line 685
    .line 686
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    invoke-static {v11, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    :cond_16
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 697
    .line 698
    goto/16 :goto_b

    .line 699
    .line 700
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 705
    .line 706
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 707
    .line 708
    sub-float/2addr v0, v1

    .line 709
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 718
    .line 719
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 720
    .line 721
    sub-float/2addr v1, v4

    .line 722
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    cmpl-float v4, v1, v0

    .line 727
    .line 728
    if-lez v4, :cond_19

    .line 729
    .line 730
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    .line 731
    .line 732
    cmpl-float v4, v1, v4

    .line 733
    .line 734
    if-lez v4, :cond_19

    .line 735
    .line 736
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 737
    .line 738
    if-eqz v0, :cond_18

    .line 739
    .line 740
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 744
    .line 745
    .line 746
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 747
    .line 748
    if-eqz p1, :cond_18

    .line 749
    .line 750
    new-instance p1, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 756
    .line 757
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v0, ") cancel reason [vertical move]"

    .line 761
    .line 762
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    invoke-static {v11, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    :cond_18
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 773
    .line 774
    goto :goto_b

    .line 775
    :cond_19
    cmpl-float v1, v0, v1

    .line 776
    .line 777
    if-lez v1, :cond_1c

    .line 778
    .line 779
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    .line 780
    .line 781
    cmpl-float v0, v0, v1

    .line 782
    .line 783
    if-lez v0, :cond_1c

    .line 784
    .line 785
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 786
    .line 787
    if-eqz v0, :cond_1b

    .line 788
    .line 789
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 790
    .line 791
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 792
    .line 793
    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 794
    .line 795
    .line 796
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 797
    .line 798
    if-eqz v0, :cond_1a

    .line 799
    .line 800
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 801
    .line 802
    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 803
    .line 804
    .line 805
    :cond_1a
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 806
    .line 807
    if-nez v0, :cond_1c

    .line 808
    .line 809
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 810
    .line 811
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    .line 812
    .line 813
    invoke-virtual {v0, v6}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    .line 814
    .line 815
    .line 816
    goto :goto_9

    .line 817
    :cond_1b
    invoke-virtual {p0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 818
    .line 819
    .line 820
    :cond_1c
    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 821
    .line 822
    if-eqz v0, :cond_1d

    .line 823
    .line 824
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 825
    .line 826
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dispatchToBackAnimation(Landroid/view/MotionEvent;)V

    .line 830
    .line 831
    .line 832
    :cond_1d
    :goto_a
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 833
    .line 834
    iget-object p0, p0, Lcom/android/systemui/tracing/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 835
    .line 836
    iget-boolean p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    .line 837
    .line 838
    if-eqz p1, :cond_20

    .line 839
    .line 840
    iget-boolean p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mFrameScheduled:Z

    .line 841
    .line 842
    if-eqz p1, :cond_1e

    .line 843
    .line 844
    goto :goto_b

    .line 845
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mChoreographer:Landroid/view/Choreographer;

    .line 846
    .line 847
    if-nez p1, :cond_1f

    .line 848
    .line 849
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    .line 850
    .line 851
    .line 852
    move-result-object p1

    .line 853
    iput-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mChoreographer:Landroid/view/Choreographer;

    .line 854
    .line 855
    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mChoreographer:Landroid/view/Choreographer;

    .line 856
    .line 857
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 858
    .line 859
    .line 860
    iput-boolean v6, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mFrameScheduled:Z

    .line 861
    .line 862
    :cond_20
    :goto_b
    return-void
.end method
