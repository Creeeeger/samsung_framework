.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v2, v1, Landroid/view/MotionEvent;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_34

    .line 15
    .line 16
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 17
    .line 18
    iget-boolean v3, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 19
    .line 20
    const-string v4, "PipTouchHandler"

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string/jumbo v0, "pip input event not allowed"

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto/16 :goto_34

    .line 31
    .line 32
    :cond_1
    check-cast v1, Landroid/view/MotionEvent;

    .line 33
    .line 34
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    if-eqz v3, :cond_15

    .line 40
    .line 41
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    iget-object v9, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 51
    .line 52
    iget-object v10, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 53
    .line 54
    if-nez v8, :cond_9

    .line 55
    .line 56
    iget v8, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 57
    .line 58
    if-nez v8, :cond_2

    .line 59
    .line 60
    move v8, v7

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v8, v6

    .line 63
    :goto_0
    const-string v11, "PipNaturalSwitchingHandler"

    .line 64
    .line 65
    if-nez v8, :cond_3

    .line 66
    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v9, "startNaturalSwitchingIfPossible: failed, already running, "

    .line 70
    .line 71
    .line 72
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :cond_3
    iget-object v8, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 88
    .line 89
    iget-object v12, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    .line 91
    iget-object v13, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 92
    .line 93
    if-eqz v12, :cond_8

    .line 94
    .line 95
    if-eqz v13, :cond_8

    .line 96
    .line 97
    invoke-virtual {v13}, Landroid/view/SurfaceControl;->isValid()Z

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    if-nez v14, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_5

    .line 109
    .line 110
    goto/16 :goto_a

    .line 111
    .line 112
    :cond_5
    iget-object v8, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 113
    .line 114
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    iget-boolean v14, v9, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 119
    .line 120
    xor-int/2addr v14, v7

    .line 121
    iget-boolean v9, v9, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 122
    .line 123
    iget-object v15, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    .line 125
    invoke-virtual {v10, v15}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->allowInterceptTouch(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-nez v8, :cond_7

    .line 130
    .line 131
    if-nez v14, :cond_7

    .line 132
    .line 133
    if-nez v9, :cond_7

    .line 134
    .line 135
    if-eqz v15, :cond_6

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    iget v8, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 139
    .line 140
    invoke-virtual {v10, v1, v8}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 141
    .line 142
    .line 143
    iput-object v12, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    .line 145
    iget v8, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 146
    .line 147
    iput v8, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    .line 148
    .line 149
    iput-object v13, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mLeash:Landroid/view/SurfaceControl;

    .line 150
    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v9, "startNaturalSwitchingIfPossible: "

    .line 154
    .line 155
    .line 156
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_a

    .line 173
    .line 174
    :cond_7
    :goto_1
    const-string/jumbo v3, "startNaturalSwitchingIfPossible: failed, st="

    .line 175
    .line 176
    .line 177
    const-string v10, ", tb="

    .line 178
    .line 179
    const-string v12, ", wd="

    .line 180
    .line 181
    invoke-static {v3, v8, v10, v14, v12}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const-string v8, ", ib="

    .line 186
    .line 187
    invoke-static {v3, v9, v8, v15, v11}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_a

    .line 191
    .line 192
    :cond_8
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string/jumbo v8, "startNaturalSwitchingIfPossible: failed, leash="

    .line 195
    .line 196
    .line 197
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto/16 :goto_a

    .line 211
    .line 212
    :cond_9
    iget v11, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 213
    .line 214
    if-nez v11, :cond_a

    .line 215
    .line 216
    move v11, v7

    .line 217
    goto :goto_3

    .line 218
    :cond_a
    move v11, v6

    .line 219
    :goto_3
    if-eqz v11, :cond_b

    .line 220
    .line 221
    goto :goto_a

    .line 222
    :cond_b
    iget-object v11, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 223
    .line 224
    if-nez v11, :cond_d

    .line 225
    .line 226
    iget-object v11, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 227
    .line 228
    if-eqz v11, :cond_c

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_c
    move v11, v6

    .line 232
    goto :goto_5

    .line 233
    :cond_d
    :goto_4
    move v11, v7

    .line 234
    :goto_5
    if-eqz v11, :cond_e

    .line 235
    .line 236
    iget-boolean v9, v9, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 237
    .line 238
    if-eqz v9, :cond_e

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->clearAllAnimations()V

    .line 241
    .line 242
    .line 243
    :cond_e
    iget v9, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    .line 244
    .line 245
    invoke-virtual {v10, v1, v9}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-ne v8, v7, :cond_f

    .line 250
    .line 251
    iget-boolean v10, v10, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mLayoutChanged:Z

    .line 252
    .line 253
    if-eqz v10, :cond_f

    .line 254
    .line 255
    move v10, v7

    .line 256
    goto :goto_6

    .line 257
    :cond_f
    move v10, v6

    .line 258
    :goto_6
    if-eq v8, v5, :cond_11

    .line 259
    .line 260
    if-ne v8, v7, :cond_10

    .line 261
    .line 262
    if-nez v10, :cond_10

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_10
    move v8, v6

    .line 266
    goto :goto_8

    .line 267
    :cond_11
    :goto_7
    move v8, v7

    .line 268
    :goto_8
    if-eqz v10, :cond_12

    .line 269
    .line 270
    const-string v8, "dropped"

    .line 271
    .line 272
    invoke-virtual {v3, v8, v7}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->updateWaitingForTaskVanished(Ljava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    goto :goto_a

    .line 276
    :cond_12
    if-eqz v8, :cond_13

    .line 277
    .line 278
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    .line 279
    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_13
    if-eqz v9, :cond_15

    .line 283
    .line 284
    iget v8, v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 285
    .line 286
    const/4 v9, 0x2

    .line 287
    if-ne v8, v9, :cond_14

    .line 288
    .line 289
    move v8, v7

    .line 290
    goto :goto_9

    .line 291
    :cond_14
    move v8, v6

    .line 292
    :goto_9
    if-nez v8, :cond_15

    .line 293
    .line 294
    invoke-virtual {v3, v9}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    .line 295
    .line 296
    .line 297
    :cond_15
    :goto_a
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-nez v8, :cond_19

    .line 304
    .line 305
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 306
    .line 307
    iget-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    .line 308
    .line 309
    if-eqz v9, :cond_18

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    if-eqz v9, :cond_17

    .line 316
    .line 317
    const/4 v10, 0x5

    .line 318
    if-eq v9, v10, :cond_16

    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_16
    iget-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 322
    .line 323
    if-eqz v9, :cond_18

    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    const/4 v10, 0x2

    .line 330
    if-ne v9, v10, :cond_18

    .line 331
    .line 332
    invoke-virtual {v8, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    .line 333
    .line 334
    .line 335
    iget-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 336
    .line 337
    iput-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_17
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    float-to-int v9, v9

    .line 345
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    float-to-int v10, v10

    .line 350
    invoke-virtual {v8, v9, v10}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-eqz v8, :cond_18

    .line 355
    .line 356
    move v9, v7

    .line 357
    goto :goto_c

    .line 358
    :cond_18
    :goto_b
    move v9, v6

    .line 359
    :goto_c
    if-eqz v9, :cond_19

    .line 360
    .line 361
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 368
    .line 369
    iget-boolean v1, v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 370
    .line 371
    if-eqz v1, :cond_6a

    .line 372
    .line 373
    iget v1, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updatePinchResizeSizeConstraints(F)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_34

    .line 379
    .line 380
    :cond_19
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 381
    .line 382
    iget v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 383
    .line 384
    if-nez v9, :cond_1b

    .line 385
    .line 386
    iget-boolean v8, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 387
    .line 388
    if-eqz v8, :cond_1a

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_1a
    move v8, v6

    .line 392
    goto :goto_e

    .line 393
    :cond_1b
    :goto_d
    move v8, v7

    .line 394
    :goto_e
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    .line 395
    .line 396
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 397
    .line 398
    if-eqz v8, :cond_1c

    .line 399
    .line 400
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    .line 404
    .line 405
    .line 406
    const-string v0, "block touch event for resize gesture"

    .line 407
    .line 408
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    goto/16 :goto_34

    .line 412
    .line 413
    :cond_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-eqz v8, :cond_1d

    .line 418
    .line 419
    iget-boolean v8, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 420
    .line 421
    if-eqz v8, :cond_1e

    .line 422
    .line 423
    :cond_1d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    :cond_1e
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 427
    .line 428
    .line 429
    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 430
    .line 431
    if-eqz v8, :cond_1f

    .line 432
    .line 433
    move v8, v7

    .line 434
    goto :goto_f

    .line 435
    :cond_1f
    move v8, v6

    .line 436
    :goto_f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 441
    .line 442
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    .line 443
    .line 444
    if-eqz v10, :cond_63

    .line 445
    .line 446
    if-eq v10, v7, :cond_33

    .line 447
    .line 448
    const/4 v13, 0x2

    .line 449
    if-eq v10, v13, :cond_26

    .line 450
    .line 451
    if-eq v10, v5, :cond_25

    .line 452
    .line 453
    const/4 v4, 0x7

    .line 454
    if-eq v10, v4, :cond_24

    .line 455
    .line 456
    const/16 v4, 0x9

    .line 457
    .line 458
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 459
    .line 460
    if-eq v10, v4, :cond_22

    .line 461
    .line 462
    const/16 v4, 0xa

    .line 463
    .line 464
    if-eq v10, v4, :cond_20

    .line 465
    .line 466
    goto/16 :goto_15

    .line 467
    .line 468
    :cond_20
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    if-nez v4, :cond_21

    .line 473
    .line 474
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->scheduleHoverExitTimeoutCallback()V

    .line 475
    .line 476
    .line 477
    :cond_21
    if-nez v8, :cond_31

    .line 478
    .line 479
    iget-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 480
    .line 481
    if-eqz v4, :cond_31

    .line 482
    .line 483
    const/16 v4, 0x100

    .line 484
    .line 485
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    .line 486
    .line 487
    .line 488
    iput-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 489
    .line 490
    goto/16 :goto_15

    .line 491
    .line 492
    :cond_22
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-nez v4, :cond_24

    .line 497
    .line 498
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 499
    .line 500
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->getLastResizeBounds()Landroid/graphics/Rect;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-nez v4, :cond_23

    .line 509
    .line 510
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 511
    .line 512
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->getLastResizeBounds()Landroid/graphics/Rect;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-nez v4, :cond_23

    .line 525
    .line 526
    goto :goto_10

    .line 527
    :cond_23
    iget-object v4, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 528
    .line 529
    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 530
    .line 531
    iget-object v5, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    .line 532
    .line 533
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 545
    .line 546
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    invoke-virtual {v11, v4, v5, v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuWithPossibleDelay(Landroid/graphics/Rect;ZZ)V

    .line 551
    .line 552
    .line 553
    :cond_24
    :goto_10
    if-nez v8, :cond_31

    .line 554
    .line 555
    iget-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 556
    .line 557
    if-nez v4, :cond_31

    .line 558
    .line 559
    const/16 v4, 0x80

    .line 560
    .line 561
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    .line 562
    .line 563
    .line 564
    iput-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 565
    .line 566
    goto/16 :goto_15

    .line 567
    .line 568
    :cond_25
    move-object/from16 p1, v1

    .line 569
    .line 570
    move-object/from16 v16, v11

    .line 571
    .line 572
    goto/16 :goto_2e

    .line 573
    .line 574
    :cond_26
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 578
    .line 579
    if-nez v0, :cond_27

    .line 580
    .line 581
    goto/16 :goto_14

    .line 582
    .line 583
    :cond_27
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 584
    .line 585
    iget-object v4, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 586
    .line 587
    iget-object v5, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 588
    .line 589
    if-eqz v0, :cond_2b

    .line 590
    .line 591
    const/high16 v0, -0x40800000    # -1.0f

    .line 592
    .line 593
    iput v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 594
    .line 595
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 601
    .line 602
    if-eqz v0, :cond_29

    .line 603
    .line 604
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    .line 605
    .line 606
    iget v0, v0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    .line 607
    .line 608
    const/4 v9, 0x2

    .line 609
    if-ne v0, v9, :cond_28

    .line 610
    .line 611
    move v0, v7

    .line 612
    goto :goto_11

    .line 613
    :cond_28
    move v0, v6

    .line 614
    :goto_11
    if-eqz v0, :cond_29

    .line 615
    .line 616
    goto :goto_12

    .line 617
    :cond_29
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 618
    .line 619
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 620
    .line 621
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 633
    .line 634
    .line 635
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    .line 636
    .line 637
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 638
    .line 639
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 640
    .line 641
    .line 642
    move-result v9

    .line 643
    if-nez v9, :cond_2a

    .line 644
    .line 645
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonManager;->createDismissButtonView()V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonManager;->createOrUpdateWrapper()V

    .line 649
    .line 650
    .line 651
    :cond_2a
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonManager;->show()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/DismissButtonManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    .line 658
    .line 659
    .line 660
    :cond_2b
    :goto_12
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 661
    .line 662
    if-eqz v0, :cond_30

    .line 663
    .line 664
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 665
    .line 666
    iput-boolean v7, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserMovedPip:Z

    .line 667
    .line 668
    iget-object v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 669
    .line 670
    iget-object v9, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    .line 671
    .line 672
    iget v10, v9, Landroid/graphics/Point;->x:I

    .line 673
    .line 674
    int-to-float v10, v10

    .line 675
    iget-object v12, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    .line 676
    .line 677
    iget v13, v12, Landroid/graphics/PointF;->x:F

    .line 678
    .line 679
    add-float/2addr v10, v13

    .line 680
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 681
    .line 682
    int-to-float v9, v9

    .line 683
    iget v14, v12, Landroid/graphics/PointF;->y:F

    .line 684
    .line 685
    add-float/2addr v9, v14

    .line 686
    iget v15, v0, Landroid/graphics/PointF;->x:F

    .line 687
    .line 688
    add-float/2addr v15, v10

    .line 689
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 690
    .line 691
    add-float/2addr v0, v9

    .line 692
    sub-float v10, v15, v10

    .line 693
    .line 694
    add-float/2addr v10, v13

    .line 695
    iput v10, v12, Landroid/graphics/PointF;->x:F

    .line 696
    .line 697
    sub-float v9, v0, v9

    .line 698
    .line 699
    add-float/2addr v9, v14

    .line 700
    iput v9, v12, Landroid/graphics/PointF;->y:F

    .line 701
    .line 702
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    .line 703
    .line 704
    .line 705
    move-result-object v9

    .line 706
    iget-object v10, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 707
    .line 708
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 709
    .line 710
    .line 711
    float-to-int v9, v15

    .line 712
    float-to-int v0, v0

    .line 713
    invoke-virtual {v10, v9, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 714
    .line 715
    .line 716
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 717
    .line 718
    invoke-virtual {v0, v10, v7}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    .line 719
    .line 720
    .line 721
    iget-object v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    .line 722
    .line 723
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 724
    .line 725
    iget-object v9, v0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 726
    .line 727
    if-eqz v9, :cond_2c

    .line 728
    .line 729
    move v9, v7

    .line 730
    goto :goto_13

    .line 731
    :cond_2c
    move v9, v6

    .line 732
    :goto_13
    if-eqz v9, :cond_2d

    .line 733
    .line 734
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/DismissButtonManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    .line 735
    .line 736
    .line 737
    :cond_2d
    iget-boolean v0, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    .line 738
    .line 739
    if-eqz v0, :cond_2f

    .line 740
    .line 741
    iget v0, v4, Landroid/graphics/PointF;->y:F

    .line 742
    .line 743
    iget-object v4, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 744
    .line 745
    iget-object v4, v4, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 746
    .line 747
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 748
    .line 749
    int-to-float v4, v4

    .line 750
    cmpl-float v0, v0, v4

    .line 751
    .line 752
    if-ltz v0, :cond_2e

    .line 753
    .line 754
    move v6, v7

    .line 755
    :cond_2e
    iput-boolean v6, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    .line 756
    .line 757
    :cond_2f
    move v6, v7

    .line 758
    :cond_30
    :goto_14
    if-eqz v6, :cond_32

    .line 759
    .line 760
    :cond_31
    :goto_15
    move-object/from16 p1, v1

    .line 761
    .line 762
    move/from16 p0, v8

    .line 763
    .line 764
    move-object/from16 v16, v11

    .line 765
    .line 766
    goto/16 :goto_31

    .line 767
    .line 768
    :cond_32
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 769
    .line 770
    xor-int/lit8 v8, v0, 0x1

    .line 771
    .line 772
    move-object/from16 p1, v1

    .line 773
    .line 774
    move-object/from16 v16, v11

    .line 775
    .line 776
    goto/16 :goto_32

    .line 777
    .line 778
    :cond_33
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 779
    .line 780
    .line 781
    iget-object v0, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 782
    .line 783
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 784
    .line 785
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 789
    .line 790
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    .line 794
    .line 795
    iget-object v10, v5, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 796
    .line 797
    iget-object v10, v10, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 798
    .line 799
    if-eqz v10, :cond_34

    .line 800
    .line 801
    move v13, v7

    .line 802
    goto :goto_16

    .line 803
    :cond_34
    move v13, v6

    .line 804
    :goto_16
    if-eqz v13, :cond_35

    .line 805
    .line 806
    iget-boolean v10, v10, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 807
    .line 808
    if-eqz v10, :cond_35

    .line 809
    .line 810
    move v10, v7

    .line 811
    goto :goto_17

    .line 812
    :cond_35
    move v10, v6

    .line 813
    :goto_17
    if-eqz v10, :cond_36

    .line 814
    .line 815
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 816
    .line 817
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->dismissPip()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    .line 821
    .line 822
    .line 823
    move v6, v7

    .line 824
    goto :goto_18

    .line 825
    :cond_36
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    .line 826
    .line 827
    .line 828
    iget-boolean v5, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 829
    .line 830
    if-nez v5, :cond_37

    .line 831
    .line 832
    :goto_18
    move-object/from16 p1, v1

    .line 833
    .line 834
    move/from16 p0, v8

    .line 835
    .line 836
    move-object/from16 v16, v11

    .line 837
    .line 838
    goto/16 :goto_2d

    .line 839
    .line 840
    :cond_37
    iget-object v5, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 841
    .line 842
    iget-boolean v6, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 843
    .line 844
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 845
    .line 846
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 847
    .line 848
    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 849
    .line 850
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 851
    .line 852
    if-eqz v6, :cond_4e

    .line 853
    .line 854
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 855
    .line 856
    if-eqz v6, :cond_38

    .line 857
    .line 858
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 859
    .line 860
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 861
    .line 862
    .line 863
    move-result-object v17

    .line 864
    const/16 v18, 0x1

    .line 865
    .line 866
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 867
    .line 868
    .line 869
    move-result v19

    .line 870
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    .line 871
    .line 872
    .line 873
    move-result v20

    .line 874
    move/from16 v16, v6

    .line 875
    .line 876
    invoke-virtual/range {v15 .. v20}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    .line 877
    .line 878
    .line 879
    :cond_38
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 880
    .line 881
    if-nez v6, :cond_39

    .line 882
    .line 883
    const/4 v6, 0x1

    .line 884
    goto :goto_19

    .line 885
    :cond_39
    const/4 v6, 0x0

    .line 886
    :goto_19
    iput-boolean v6, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    .line 887
    .line 888
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 889
    .line 890
    .line 891
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 892
    .line 893
    if-eqz v6, :cond_3a

    .line 894
    .line 895
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    .line 896
    .line 897
    iget-boolean v6, v6, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mWaitingForTaskVanished:Z

    .line 898
    .line 899
    if-eqz v6, :cond_3a

    .line 900
    .line 901
    const-string v0, "onUp: skip to fling, reason=ns_pip_processing"

    .line 902
    .line 903
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .line 905
    .line 906
    move-object/from16 p1, v1

    .line 907
    .line 908
    move/from16 p0, v8

    .line 909
    .line 910
    move-object/from16 v16, v11

    .line 911
    .line 912
    goto/16 :goto_2c

    .line 913
    .line 914
    :cond_3a
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    .line 915
    .line 916
    if-eqz v6, :cond_4b

    .line 917
    .line 918
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    .line 919
    .line 920
    .line 921
    move-result-object v6

    .line 922
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 923
    .line 924
    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mStashVelocityThreshold:F

    .line 925
    .line 926
    neg-float v15, v13

    .line 927
    cmpg-float v15, v7, v15

    .line 928
    .line 929
    if-gez v15, :cond_3b

    .line 930
    .line 931
    const/4 v15, 0x1

    .line 932
    goto :goto_1a

    .line 933
    :cond_3b
    const/4 v15, 0x0

    .line 934
    :goto_1a
    cmpl-float v7, v7, v13

    .line 935
    .line 936
    if-lez v7, :cond_3c

    .line 937
    .line 938
    const/4 v7, 0x1

    .line 939
    goto :goto_1b

    .line 940
    :cond_3c
    const/4 v7, 0x0

    .line 941
    :goto_1b
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 942
    .line 943
    .line 944
    move-result v13

    .line 945
    div-int/lit8 v13, v13, 0x2

    .line 946
    .line 947
    move/from16 p0, v8

    .line 948
    .line 949
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 950
    .line 951
    move-object/from16 v16, v11

    .line 952
    .line 953
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 954
    .line 955
    .line 956
    move-result-object v11

    .line 957
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 958
    .line 959
    sub-int/2addr v11, v13

    .line 960
    if-ge v8, v11, :cond_3d

    .line 961
    .line 962
    const/4 v8, 0x1

    .line 963
    goto :goto_1c

    .line 964
    :cond_3d
    const/4 v8, 0x0

    .line 965
    :goto_1c
    iget v11, v6, Landroid/graphics/Rect;->right:I

    .line 966
    .line 967
    move-object/from16 p1, v1

    .line 968
    .line 969
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 974
    .line 975
    add-int/2addr v1, v13

    .line 976
    if-le v11, v1, :cond_3e

    .line 977
    .line 978
    const/4 v1, 0x1

    .line 979
    goto :goto_1d

    .line 980
    :cond_3e
    const/4 v1, 0x0

    .line 981
    :goto_1d
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 982
    .line 983
    .line 984
    move-result-object v11

    .line 985
    iget-object v11, v11, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 986
    .line 987
    if-eqz v11, :cond_42

    .line 988
    .line 989
    if-nez v15, :cond_3f

    .line 990
    .line 991
    if-eqz v8, :cond_40

    .line 992
    .line 993
    :cond_3f
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 994
    .line 995
    .line 996
    move-result-object v13

    .line 997
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 998
    .line 999
    .line 1000
    move-result v13

    .line 1001
    if-nez v13, :cond_40

    .line 1002
    .line 1003
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v11

    .line 1007
    invoke-static {v6, v11}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v6

    .line 1011
    if-nez v6, :cond_48

    .line 1012
    .line 1013
    goto :goto_1e

    .line 1014
    :cond_40
    if-nez v7, :cond_41

    .line 1015
    .line 1016
    if-eqz v1, :cond_42

    .line 1017
    .line 1018
    :cond_41
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v13

    .line 1022
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v13

    .line 1026
    if-nez v13, :cond_42

    .line 1027
    .line 1028
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v11

    .line 1032
    invoke-static {v6, v11}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v6

    .line 1036
    if-nez v6, :cond_48

    .line 1037
    .line 1038
    :cond_42
    :goto_1e
    if-eqz v15, :cond_43

    .line 1039
    .line 1040
    iget v6, v14, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 1041
    .line 1042
    const/4 v11, 0x2

    .line 1043
    if-ne v6, v11, :cond_44

    .line 1044
    .line 1045
    :cond_43
    if-eqz v7, :cond_45

    .line 1046
    .line 1047
    iget v6, v14, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 1048
    .line 1049
    const/4 v7, 0x1

    .line 1050
    if-eq v6, v7, :cond_45

    .line 1051
    .line 1052
    :cond_44
    const/4 v6, 0x1

    .line 1053
    goto :goto_1f

    .line 1054
    :cond_45
    const/4 v6, 0x0

    .line 1055
    :goto_1f
    if-nez v8, :cond_47

    .line 1056
    .line 1057
    if-eqz v1, :cond_46

    .line 1058
    .line 1059
    goto :goto_20

    .line 1060
    :cond_46
    const/4 v1, 0x0

    .line 1061
    goto :goto_21

    .line 1062
    :cond_47
    :goto_20
    const/4 v1, 0x1

    .line 1063
    :goto_21
    if-nez v6, :cond_49

    .line 1064
    .line 1065
    if-eqz v1, :cond_48

    .line 1066
    .line 1067
    goto :goto_22

    .line 1068
    :cond_48
    const/4 v1, 0x0

    .line 1069
    goto :goto_23

    .line 1070
    :cond_49
    :goto_22
    const/4 v1, 0x1

    .line 1071
    :goto_23
    if-eqz v1, :cond_4c

    .line 1072
    .line 1073
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1074
    .line 1075
    iget v1, v5, Landroid/graphics/PointF;->x:F

    .line 1076
    .line 1077
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 1078
    .line 1079
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    .line 1080
    .line 1081
    const/4 v7, 0x1

    .line 1082
    invoke-direct {v6, v12, v7}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 1083
    .line 1084
    .line 1085
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 1086
    .line 1087
    iget v8, v8, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 1088
    .line 1089
    if-nez v8, :cond_4a

    .line 1090
    .line 1091
    const/4 v5, 0x0

    .line 1092
    :cond_4a
    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movetoTarget(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;Z)V

    .line 1093
    .line 1094
    .line 1095
    goto/16 :goto_2c

    .line 1096
    .line 1097
    :cond_4b
    move-object/from16 p1, v1

    .line 1098
    .line 1099
    move/from16 p0, v8

    .line 1100
    .line 1101
    move-object/from16 v16, v11

    .line 1102
    .line 1103
    :cond_4c
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v1

    .line 1107
    if-eqz v1, :cond_4d

    .line 1108
    .line 1109
    sget-object v1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 1110
    .line 1111
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 1112
    .line 1113
    .line 1114
    const/4 v1, 0x0

    .line 1115
    invoke-virtual {v14, v1, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(IZ)V

    .line 1116
    .line 1117
    .line 1118
    goto :goto_24

    .line 1119
    :cond_4d
    const/4 v1, 0x0

    .line 1120
    :goto_24
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1121
    .line 1122
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 1123
    .line 1124
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 1125
    .line 1126
    new-instance v7, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    .line 1127
    .line 1128
    const/4 v8, 0x2

    .line 1129
    invoke-direct {v7, v12, v8}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v0, v6, v5, v7, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movetoTarget(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;Z)V

    .line 1133
    .line 1134
    .line 1135
    goto/16 :goto_2c

    .line 1136
    .line 1137
    :cond_4e
    move-object/from16 p1, v1

    .line 1138
    .line 1139
    move/from16 p0, v8

    .line 1140
    .line 1141
    move-object/from16 v16, v11

    .line 1142
    .line 1143
    iget-boolean v1, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 1144
    .line 1145
    if-eqz v1, :cond_5d

    .line 1146
    .line 1147
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v1

    .line 1151
    if-nez v1, :cond_5d

    .line 1152
    .line 1153
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1154
    .line 1155
    iget-boolean v1, v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 1156
    .line 1157
    if-eqz v1, :cond_5b

    .line 1158
    .line 1159
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    iget-object v5, v14, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    .line 1168
    .line 1169
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 1170
    .line 1171
    if-ge v1, v6, :cond_4f

    .line 1172
    .line 1173
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 1178
    .line 1179
    .line 1180
    :cond_4f
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 1181
    .line 1182
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v6

    .line 1186
    if-eqz v6, :cond_50

    .line 1187
    .line 1188
    const/4 v6, 0x1

    .line 1189
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    .line 1190
    .line 1191
    .line 1192
    :cond_50
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1193
    .line 1194
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 1195
    .line 1196
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v6

    .line 1200
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 1201
    .line 1202
    .line 1203
    move-result v6

    .line 1204
    iget v7, v5, Landroid/graphics/Point;->x:I

    .line 1205
    .line 1206
    if-ne v6, v7, :cond_51

    .line 1207
    .line 1208
    const/4 v6, 0x1

    .line 1209
    goto :goto_25

    .line 1210
    :cond_51
    const/4 v6, 0x0

    .line 1211
    :goto_25
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v7

    .line 1215
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 1216
    .line 1217
    .line 1218
    move-result v7

    .line 1219
    iget-object v8, v14, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 1220
    .line 1221
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 1222
    .line 1223
    .line 1224
    move-result v10

    .line 1225
    if-ne v7, v10, :cond_52

    .line 1226
    .line 1227
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v7

    .line 1231
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 1232
    .line 1233
    .line 1234
    move-result v7

    .line 1235
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 1236
    .line 1237
    .line 1238
    move-result v10

    .line 1239
    if-ne v7, v10, :cond_52

    .line 1240
    .line 1241
    const/4 v7, 0x1

    .line 1242
    goto :goto_26

    .line 1243
    :cond_52
    const/4 v7, 0x0

    .line 1244
    :goto_26
    if-eqz v7, :cond_53

    .line 1245
    .line 1246
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1247
    .line 1248
    .line 1249
    move-result v10

    .line 1250
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 1251
    .line 1252
    .line 1253
    move-result v8

    .line 1254
    if-ne v10, v8, :cond_53

    .line 1255
    .line 1256
    goto :goto_28

    .line 1257
    :cond_53
    if-eqz v6, :cond_54

    .line 1258
    .line 1259
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1260
    .line 1261
    .line 1262
    move-result v1

    .line 1263
    iget v8, v5, Landroid/graphics/Point;->x:I

    .line 1264
    .line 1265
    if-ne v1, v8, :cond_54

    .line 1266
    .line 1267
    goto :goto_27

    .line 1268
    :cond_54
    if-nez v7, :cond_57

    .line 1269
    .line 1270
    if-eqz v6, :cond_55

    .line 1271
    .line 1272
    goto :goto_29

    .line 1273
    :cond_55
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 1274
    .line 1275
    iget-object v6, v14, Lcom/android/wm/shell/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    .line 1276
    .line 1277
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 1278
    .line 1279
    add-int/2addr v1, v6

    .line 1280
    div-int/lit8 v1, v1, 0x2

    .line 1281
    .line 1282
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v6

    .line 1286
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 1287
    .line 1288
    .line 1289
    move-result v6

    .line 1290
    if-le v6, v1, :cond_56

    .line 1291
    .line 1292
    :goto_27
    const/4 v1, 0x0

    .line 1293
    goto :goto_2a

    .line 1294
    :cond_56
    :goto_28
    const/4 v1, 0x1

    .line 1295
    goto :goto_2a

    .line 1296
    :cond_57
    :goto_29
    const/4 v1, 0x2

    .line 1297
    :goto_2a
    const/4 v6, 0x0

    .line 1298
    const/4 v7, 0x1

    .line 1299
    if-ne v1, v7, :cond_59

    .line 1300
    .line 1301
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1302
    .line 1303
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v7

    .line 1307
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    .line 1308
    .line 1309
    .line 1310
    new-instance v1, Landroid/graphics/Rect;

    .line 1311
    .line 1312
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    new-instance v7, Landroid/graphics/Rect;

    .line 1316
    .line 1317
    iget v8, v5, Landroid/graphics/Point;->x:I

    .line 1318
    .line 1319
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 1320
    .line 1321
    const/4 v10, 0x0

    .line 1322
    invoke-direct {v7, v10, v10, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1323
    .line 1324
    .line 1325
    iget-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 1326
    .line 1327
    if-eqz v5, :cond_58

    .line 1328
    .line 1329
    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 1330
    .line 1331
    goto :goto_2b

    .line 1332
    :cond_58
    const/4 v5, 0x0

    .line 1333
    :goto_2b
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 1334
    .line 1335
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    .line 1337
    .line 1338
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 1339
    .line 1340
    invoke-static {v7, v8, v1, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1341
    .line 1342
    .line 1343
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1344
    .line 1345
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    .line 1347
    .line 1348
    new-instance v8, Landroid/graphics/Rect;

    .line 1349
    .line 1350
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v10

    .line 1354
    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1355
    .line 1356
    .line 1357
    iget-object v10, v5, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 1358
    .line 1359
    iget-object v11, v14, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 1360
    .line 1361
    const/4 v12, 0x0

    .line 1362
    invoke-virtual {v10, v12, v8, v11}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 1363
    .line 1364
    .line 1365
    move-result v8

    .line 1366
    invoke-static {v8, v7, v1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1367
    .line 1368
    .line 1369
    iput-object v6, v5, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    .line 1370
    .line 1371
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;)V

    .line 1372
    .line 1373
    .line 1374
    iput v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 1375
    .line 1376
    goto/16 :goto_2c

    .line 1377
    .line 1378
    :cond_59
    if-nez v1, :cond_5a

    .line 1379
    .line 1380
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1381
    .line 1382
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v5

    .line 1386
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToNormalSize(Ljava/lang/Runnable;)V

    .line 1390
    .line 1391
    .line 1392
    goto :goto_2c

    .line 1393
    :cond_5a
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1394
    .line 1395
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 1396
    .line 1397
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnexpandedState(Landroid/graphics/Rect;)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_2c

    .line 1401
    :cond_5b
    const/4 v1, 0x0

    .line 1402
    iput-boolean v1, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 1403
    .line 1404
    iget-boolean v5, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 1405
    .line 1406
    if-eqz v5, :cond_5c

    .line 1407
    .line 1408
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 1409
    .line 1410
    .line 1411
    :cond_5c
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1412
    .line 1413
    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(ZZ)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_2c

    .line 1417
    :cond_5d
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 1418
    .line 1419
    const/4 v5, 0x1

    .line 1420
    if-eq v1, v5, :cond_60

    .line 1421
    .line 1422
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1423
    .line 1424
    .line 1425
    move-result v1

    .line 1426
    iget-object v5, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1427
    .line 1428
    iget-object v6, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    .line 1429
    .line 1430
    if-eqz v1, :cond_5e

    .line 1431
    .line 1432
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnStashedState()V

    .line 1433
    .line 1434
    .line 1435
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 1436
    .line 1437
    invoke-virtual {v10, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 1438
    .line 1439
    .line 1440
    const/4 v0, 0x0

    .line 1441
    invoke-virtual {v14, v0, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(IZ)V

    .line 1442
    .line 1443
    .line 1444
    iput-boolean v0, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 1445
    .line 1446
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1447
    .line 1448
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1449
    .line 1450
    .line 1451
    goto :goto_2c

    .line 1452
    :cond_5e
    iget-boolean v1, v7, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 1453
    .line 1454
    if-nez v1, :cond_5f

    .line 1455
    .line 1456
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 1457
    .line 1458
    const/16 v18, 0x1

    .line 1459
    .line 1460
    invoke-virtual {v14}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v19

    .line 1464
    const/16 v20, 0x1

    .line 1465
    .line 1466
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 1467
    .line 1468
    .line 1469
    move-result v21

    .line 1470
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    .line 1471
    .line 1472
    .line 1473
    move-result v22

    .line 1474
    move-object/from16 v17, v1

    .line 1475
    .line 1476
    invoke-virtual/range {v17 .. v22}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    .line 1477
    .line 1478
    .line 1479
    goto :goto_2c

    .line 1480
    :cond_5f
    if-eqz v1, :cond_60

    .line 1481
    .line 1482
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getDoubleTapTimeoutCallbackDelay()J

    .line 1483
    .line 1484
    .line 1485
    move-result-wide v0

    .line 1486
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1487
    .line 1488
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v5, v0, v1, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 1492
    .line 1493
    .line 1494
    :cond_60
    :goto_2c
    const/4 v6, 0x1

    .line 1495
    :goto_2d
    if-eqz v6, :cond_61

    .line 1496
    .line 1497
    goto/16 :goto_31

    .line 1498
    .line 1499
    :cond_61
    :goto_2e
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 1500
    .line 1501
    if-nez v0, :cond_62

    .line 1502
    .line 1503
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 1504
    .line 1505
    if-nez v0, :cond_62

    .line 1506
    .line 1507
    const/4 v0, 0x1

    .line 1508
    goto :goto_2f

    .line 1509
    :cond_62
    const/4 v0, 0x0

    .line 1510
    :goto_2f
    move v8, v0

    .line 1511
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 1512
    .line 1513
    .line 1514
    const-string v0, "ACTION_CANCEL"

    .line 1515
    .line 1516
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->hideDismissTargetMaybe()V

    .line 1520
    .line 1521
    .line 1522
    goto :goto_32

    .line 1523
    :cond_63
    move-object/from16 p1, v1

    .line 1524
    .line 1525
    move/from16 p0, v8

    .line 1526
    .line 1527
    move-object/from16 v16, v11

    .line 1528
    .line 1529
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1530
    .line 1531
    .line 1532
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 1533
    .line 1534
    if-nez v0, :cond_64

    .line 1535
    .line 1536
    goto :goto_31

    .line 1537
    :cond_64
    iget-object v0, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 1538
    .line 1539
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    iget-object v4, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    .line 1544
    .line 1545
    const/4 v5, 0x0

    .line 1546
    invoke-virtual {v4, v5, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v4, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    .line 1550
    .line 1551
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 1552
    .line 1553
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1554
    .line 1555
    invoke-virtual {v4, v5, v1}, Landroid/graphics/Point;->set(II)V

    .line 1556
    .line 1557
    .line 1558
    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 1559
    .line 1560
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 1561
    .line 1562
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 1563
    .line 1564
    iget-object v5, v4, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 1565
    .line 1566
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 1567
    .line 1568
    int-to-float v5, v5

    .line 1569
    cmpl-float v1, v1, v5

    .line 1570
    .line 1571
    if-ltz v1, :cond_65

    .line 1572
    .line 1573
    const/4 v1, 0x1

    .line 1574
    goto :goto_30

    .line 1575
    :cond_65
    const/4 v1, 0x0

    .line 1576
    :goto_30
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    .line 1577
    .line 1578
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1579
    .line 1580
    const/4 v5, 0x0

    .line 1581
    iput-boolean v5, v1, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 1582
    .line 1583
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 1584
    .line 1585
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 1586
    .line 1587
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 1588
    .line 1589
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1590
    .line 1591
    .line 1592
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 1593
    .line 1594
    if-eqz v1, :cond_66

    .line 1595
    .line 1596
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1597
    .line 1598
    .line 1599
    move-result v1

    .line 1600
    if-nez v1, :cond_66

    .line 1601
    .line 1602
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 1603
    .line 1604
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->pokeMenu()V

    .line 1605
    .line 1606
    .line 1607
    :cond_66
    :goto_31
    move/from16 v8, p0

    .line 1608
    .line 1609
    :goto_32
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    xor-int/lit8 v0, v0, 0x1

    .line 1614
    .line 1615
    and-int/2addr v0, v8

    .line 1616
    if-eqz v0, :cond_6a

    .line 1617
    .line 1618
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 1623
    .line 1624
    if-eqz v1, :cond_67

    .line 1625
    .line 1626
    const/4 v1, 0x3

    .line 1627
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->pokeMenu()V

    .line 1631
    .line 1632
    .line 1633
    :cond_67
    move-object/from16 v1, v16

    .line 1634
    .line 1635
    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1636
    .line 1637
    if-nez v2, :cond_68

    .line 1638
    .line 1639
    goto :goto_33

    .line 1640
    :cond_68
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 1641
    .line 1642
    .line 1643
    move-result v2

    .line 1644
    if-eqz v2, :cond_69

    .line 1645
    .line 1646
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1647
    .line 1648
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1649
    .line 1650
    .line 1651
    goto :goto_33

    .line 1652
    :cond_69
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1653
    .line 1654
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1655
    .line 1656
    .line 1657
    :goto_33
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1658
    .line 1659
    .line 1660
    :cond_6a
    :goto_34
    return-void
.end method
