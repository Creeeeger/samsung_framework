.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 20

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 12
    .line 13
    invoke-virtual {v3, v0, v1, v5}, Lcom/android/wm/shell/pip/PipTransitionController;->handleRotateDisplay(IILandroid/window/WindowContainerTransaction;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 28
    .line 29
    if-ne v4, v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v0, v2

    .line 36
    move v2, v3

    .line 37
    move v3, v4

    .line 38
    move v4, v6

    .line 39
    move-object/from16 v5, p5

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_1
    iget-object v6, v2, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x2

    .line 54
    const/4 v9, 0x0

    .line 55
    iget-object v10, v2, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 56
    .line 57
    iget-object v11, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 58
    .line 59
    if-eqz v4, :cond_e

    .line 60
    .line 61
    iget v4, v11, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 62
    .line 63
    if-ne v4, v8, :cond_2

    .line 64
    .line 65
    move v4, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v4, v9

    .line 68
    :goto_0
    if-eqz v4, :cond_3

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_3
    iget-object v4, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eqz v11, :cond_4

    .line 83
    .line 84
    new-instance v6, Landroid/graphics/Rect;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object v4, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 101
    .line 102
    .line 103
    iget v11, v10, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 104
    .line 105
    iget-object v12, v2, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    move/from16 v13, p1

    .line 108
    .line 109
    if-ne v13, v11, :cond_b

    .line 110
    .line 111
    if-ne v0, v1, :cond_5

    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0, v8, v9}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_6
    iget-object v8, v2, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 128
    .line 129
    iget-object v11, v8, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 130
    .line 131
    new-instance v15, Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-direct {v15, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v15, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    iget v14, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 141
    .line 142
    invoke-virtual {v11, v14, v15, v13}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v15, v9}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    iget v1, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 154
    .line 155
    iget v13, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 156
    .line 157
    invoke-virtual {v10}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 158
    .line 159
    .line 160
    move-result-object v18

    .line 161
    invoke-virtual {v10}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual {v10, v9}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 166
    .line 167
    .line 168
    move-result-object v19

    .line 169
    move v10, v13

    .line 170
    move-object v13, v15

    .line 171
    move-object v7, v15

    .line 172
    move v15, v11

    .line 173
    move/from16 v16, v1

    .line 174
    .line 175
    move/from16 v17, v10

    .line 176
    .line 177
    invoke-static/range {v13 .. v19}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v12}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_a

    .line 191
    .line 192
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 193
    .line 194
    iget v7, v12, Landroid/graphics/Rect;->right:I

    .line 195
    .line 196
    if-gt v1, v7, :cond_7

    .line 197
    .line 198
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 199
    .line 200
    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    if-le v1, v7, :cond_a

    .line 203
    .line 204
    :cond_7
    iget-object v1, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    .line 205
    .line 206
    iget v7, v1, Landroid/graphics/Point;->x:I

    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-ne v7, v8, :cond_8

    .line 213
    .line 214
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 215
    .line 216
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-ne v1, v6, :cond_8

    .line 221
    .line 222
    iget v1, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 223
    .line 224
    iget-object v6, v2, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 225
    .line 226
    iget-object v7, v6, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 227
    .line 228
    invoke-interface {v7, v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    iget v7, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 237
    .line 238
    iget-object v6, v6, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 239
    .line 240
    invoke-interface {v6, v7}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 249
    .line 250
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 251
    .line 252
    add-int/2addr v1, v7

    .line 253
    add-int/2addr v6, v8

    .line 254
    invoke-virtual {v4, v7, v8, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 255
    .line 256
    .line 257
    :cond_8
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 258
    .line 259
    iget v6, v12, Landroid/graphics/Rect;->right:I

    .line 260
    .line 261
    if-le v1, v6, :cond_9

    .line 262
    .line 263
    sub-int/2addr v6, v1

    .line 264
    invoke-virtual {v4, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 265
    .line 266
    .line 267
    :cond_9
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 268
    .line 269
    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    .line 270
    .line 271
    if-le v1, v6, :cond_a

    .line 272
    .line 273
    sub-int/2addr v6, v1

    .line 274
    invoke-virtual {v4, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    .line 276
    .line 277
    :cond_a
    iget-object v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 278
    .line 279
    invoke-virtual {v5, v0, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 280
    .line 281
    .line 282
    const/4 v7, 0x1

    .line 283
    goto :goto_3

    .line 284
    :catch_0
    move-exception v0

    .line 285
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 286
    .line 287
    if-eqz v1, :cond_b

    .line 288
    .line 289
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 294
    .line 295
    const-string v6, "PipController"

    .line 296
    .line 297
    filled-new-array {v6, v0}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const v6, -0x3d38859e

    .line 302
    .line 303
    .line 304
    const-string v7, "%s: Failed to get RootTaskInfo for pinned task, %s"

    .line 305
    .line 306
    invoke-static {v1, v6, v9, v7, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_b
    :goto_2
    move v7, v9

    .line 310
    :goto_3
    if-eqz v7, :cond_10

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    new-instance v6, Landroid/graphics/Rect;

    .line 322
    .line 323
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .line 325
    .line 326
    iget-object v7, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 327
    .line 328
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v4, v12, v6, v9}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 332
    .line 333
    .line 334
    iget-object v7, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 335
    .line 336
    iget-object v7, v7, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 337
    .line 338
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 339
    .line 340
    iget v8, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    .line 341
    .line 342
    sub-int/2addr v7, v8

    .line 343
    iget v8, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    .line 344
    .line 345
    sub-int/2addr v7, v8

    .line 346
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 347
    .line 348
    if-gt v7, v0, :cond_c

    .line 349
    .line 350
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 351
    .line 352
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 353
    .line 354
    invoke-virtual {v4, v0, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 355
    .line 356
    .line 357
    :cond_c
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    .line 358
    .line 359
    if-nez v0, :cond_d

    .line 360
    .line 361
    invoke-virtual {v3, v9, v9, v9}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(IZZ)V

    .line 362
    .line 363
    .line 364
    iput-boolean v9, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 365
    .line 366
    iput v9, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 367
    .line 368
    iput-boolean v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    .line 369
    .line 370
    iput v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mShelfHeight:I

    .line 371
    .line 372
    iput-boolean v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 373
    .line 374
    iput v9, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 375
    .line 376
    :cond_d
    const/4 v3, 0x1

    .line 377
    const/4 v6, 0x0

    .line 378
    const/4 v7, 0x0

    .line 379
    move-object v0, v2

    .line 380
    move-object v1, v4

    .line 381
    move v2, v3

    .line 382
    move v3, v6

    .line 383
    move v4, v7

    .line 384
    move-object/from16 v5, p5

    .line 385
    .line 386
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 387
    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_e
    :goto_4
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 394
    .line 395
    const/4 v3, 0x1

    .line 396
    const/4 v4, 0x0

    .line 397
    const/4 v7, 0x0

    .line 398
    move-object v0, v2

    .line 399
    move v2, v3

    .line 400
    move v3, v4

    .line 401
    move v4, v7

    .line 402
    move-object/from16 v5, p5

    .line 403
    .line 404
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 405
    .line 406
    .line 407
    iget v0, v11, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 408
    .line 409
    if-ne v0, v8, :cond_f

    .line 410
    .line 411
    const/4 v7, 0x1

    .line 412
    goto :goto_5

    .line 413
    :cond_f
    move v7, v9

    .line 414
    :goto_5
    if-eqz v7, :cond_10

    .line 415
    .line 416
    iget-object v0, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget v1, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 423
    .line 424
    int-to-long v1, v1

    .line 425
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    .line 426
    .line 427
    .line 428
    :cond_10
    :goto_6
    return-void
.end method
