.class public final Lcom/android/wm/shell/transition/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimHint:I

.field public final mAnimLeash:Landroid/view/SurfaceControl;

.field public final mBackColorSurface:Landroid/view/SurfaceControl;

.field public final mContext:Landroid/content/Context;

.field public final mEndHeight:I

.field public final mEndRotation:I

.field public final mEndWidth:I

.field public mFadeInOutAnimationNeeded:Z

.field public mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field public mRotateEnterAnimation:Landroid/view/animation/Animation;

.field public mRotateExitAnimation:Landroid/view/animation/Animation;

.field public final mScreenshotLayer:Landroid/view/SurfaceControl;

.field public final mStartHeight:I

.field public final mStartLuma:F

.field public final mStartRotation:I

.field public final mStartWidth:I

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mTmpFloats:[F

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    move-object/from16 v3, p6

    .line 10
    .line 11
    move/from16 v4, p7

    .line 12
    .line 13
    const-string v5, "ShellTransitions"

    .line 14
    .line 15
    const-string v7, "RotationLayer"

    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v8, 0x9

    .line 21
    .line 22
    new-array v8, v8, [F

    .line 23
    .line 24
    iput-object v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    iput-boolean v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    .line 28
    .line 29
    move-object/from16 v9, p1

    .line 30
    .line 31
    iput-object v9, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    move-object/from16 v9, p3

    .line 34
    .line 35
    iput-object v9, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 36
    .line 37
    iput v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    .line 38
    .line 39
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iput-object v9, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 44
    .line 45
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    iput v10, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    .line 54
    .line 55
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    iput v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    .line 64
    .line 65
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    iput v12, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    .line 74
    .line 75
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    iput v13, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    .line 84
    .line 85
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    iput v14, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    .line 90
    .line 91
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    iput v14, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    .line 96
    .line 97
    new-instance v14, Landroid/view/SurfaceControl$Builder;

    .line 98
    .line 99
    invoke-direct {v14, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-virtual {v14}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    const-string v15, "ShellRotationAnimation"

    .line 111
    .line 112
    invoke-virtual {v14, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    const-string v8, "Animation leash of screenshot rotation"

    .line 117
    .line 118
    invoke-virtual {v14, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    iput-object v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 127
    .line 128
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 129
    .line 130
    .line 131
    move-result-object v16

    .line 132
    if-eqz v16, :cond_0

    .line 133
    .line 134
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iput-object v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 139
    .line 140
    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshotLuma()F

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    iput v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    .line 148
    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :cond_0
    new-instance v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 152
    .line 153
    invoke-direct {v14, v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 154
    .line 155
    .line 156
    const/4 v3, 0x1

    .line 157
    invoke-virtual {v14, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    check-cast v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 162
    .line 163
    invoke-virtual {v14, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    check-cast v14, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 168
    .line 169
    new-instance v3, Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    :try_start_1
    invoke-direct {v3, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 180
    .line 181
    const/4 v3, 0x1

    .line 182
    invoke-virtual {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-nez v2, :cond_1

    .line 197
    .line 198
    const-string v0, "Unable to take screenshot of display"

    .line 199
    .line 200
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_1
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    .line 205
    .line 206
    invoke-direct {v3, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    invoke-virtual {v3, v10}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    const/4 v10, 0x1

    .line 226
    invoke-virtual {v3, v10}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LOG:Z

    .line 235
    .line 236
    if-eqz v10, :cond_2

    .line 237
    .line 238
    const-string v10, "_WmShell"

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_2
    const-string v10, ""

    .line 242
    .line 243
    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-virtual {v3, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iput-object v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 256
    .line 257
    invoke-static {v6, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 265
    .line 266
    .line 267
    const/4 v3, 0x1

    .line 268
    if-eq v4, v3, :cond_4

    .line 269
    .line 270
    const/4 v3, 0x2

    .line 271
    if-ne v4, v3, :cond_3

    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_3
    const/4 v3, 0x0

    .line 275
    goto :goto_2

    .line 276
    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 277
    :goto_2
    if-nez v3, :cond_5

    .line 278
    .line 279
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v7, v2}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    iput v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    .line 288
    .line 289
    :cond_5
    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->close()V

    .line 290
    .line 291
    .line 292
    :goto_3
    const v2, 0x1eab90

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v8, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 299
    .line 300
    .line 301
    new-instance v2, Landroid/graphics/Rect;

    .line 302
    .line 303
    const/4 v3, 0x0

    .line 304
    invoke-direct {v2, v3, v3, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 308
    .line 309
    .line 310
    const/4 v2, 0x1

    .line 311
    if-eq v4, v2, :cond_7

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    if-ne v4, v2, :cond_6

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_6
    const/4 v2, 0x0

    .line 318
    goto :goto_5

    .line 319
    :cond_7
    :goto_4
    const/4 v2, 0x1

    .line 320
    :goto_5
    if-nez v2, :cond_a

    .line 321
    .line 322
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    .line 324
    if-eqz v2, :cond_8

    .line 325
    .line 326
    const/16 v2, 0x20

    .line 327
    .line 328
    move-object/from16 v3, p5

    .line 329
    .line 330
    :try_start_2
    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-nez v2, :cond_9

    .line 335
    .line 336
    const/4 v2, 0x1

    .line 337
    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_b

    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_8
    move-object/from16 v3, p5

    .line 345
    .line 346
    :cond_9
    :goto_6
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    .line 347
    .line 348
    invoke-direct {v2, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 349
    .line 350
    .line 351
    move-object/from16 v0, p6

    .line 352
    .line 353
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/4 v2, 0x1

    .line 362
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const-string v2, "BackColorSurface"

    .line 371
    .line 372
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    iput-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 381
    .line 382
    const/4 v2, -0x1

    .line 383
    invoke-virtual {v6, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 384
    .line 385
    .line 386
    const/4 v2, 0x3

    .line 387
    new-array v4, v2, [F

    .line 388
    .line 389
    iget v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    .line 390
    .line 391
    const/4 v7, 0x0

    .line 392
    aput v2, v4, v7

    .line 393
    .line 394
    const/4 v7, 0x1

    .line 395
    aput v2, v4, v7

    .line 396
    .line 397
    const/4 v7, 0x2

    .line 398
    aput v2, v4, v7

    .line 399
    .line 400
    invoke-virtual {v6, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    .line 405
    .line 406
    goto :goto_8

    .line 407
    :catch_0
    move-exception v0

    .line 408
    goto :goto_7

    .line 409
    :cond_a
    move-object/from16 v3, p5

    .line 410
    .line 411
    goto :goto_8

    .line 412
    :catch_1
    move-exception v0

    .line 413
    move-object/from16 v3, p5

    .line 414
    .line 415
    goto :goto_7

    .line 416
    :catch_2
    move-exception v0

    .line 417
    move-object v3, v2

    .line 418
    :goto_7
    const-string v2, "Unable to allocate freeze surface"

    .line 419
    .line 420
    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .line 422
    .line 423
    :cond_b
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->isFadeInOutRotationNeeded()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_c

    .line 428
    .line 429
    const/4 v2, 0x1

    .line 430
    iput-boolean v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    .line 431
    .line 432
    :cond_c
    iget-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 433
    .line 434
    if-nez v0, :cond_d

    .line 435
    .line 436
    goto/16 :goto_c

    .line 437
    .line 438
    :cond_d
    new-instance v2, Landroid/graphics/Matrix;

    .line 439
    .line 440
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 441
    .line 442
    .line 443
    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    .line 444
    .line 445
    iget v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    .line 446
    .line 447
    invoke-static {v3, v4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    iget v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    .line 452
    .line 453
    iget v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    .line 454
    .line 455
    if-eqz v3, :cond_11

    .line 456
    .line 457
    const/4 v7, 0x0

    .line 458
    const/4 v8, 0x1

    .line 459
    if-eq v3, v8, :cond_10

    .line 460
    .line 461
    const/4 v8, 0x2

    .line 462
    if-eq v3, v8, :cond_f

    .line 463
    .line 464
    const/4 v8, 0x3

    .line 465
    if-eq v3, v8, :cond_e

    .line 466
    .line 467
    goto :goto_b

    .line 468
    :cond_e
    const/high16 v3, 0x43870000    # 270.0f

    .line 469
    .line 470
    invoke-virtual {v2, v3, v7, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 471
    .line 472
    .line 473
    int-to-float v3, v5

    .line 474
    invoke-virtual {v2, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_f
    const/high16 v3, 0x43340000    # 180.0f

    .line 479
    .line 480
    invoke-virtual {v2, v3, v7, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 481
    .line 482
    .line 483
    int-to-float v3, v5

    .line 484
    int-to-float v4, v4

    .line 485
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 486
    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_10
    const/high16 v3, 0x42b40000    # 90.0f

    .line 490
    .line 491
    invoke-virtual {v2, v3, v7, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 492
    .line 493
    .line 494
    int-to-float v3, v4

    .line 495
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 496
    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_11
    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    .line 500
    .line 501
    if-le v3, v5, :cond_12

    .line 502
    .line 503
    const/4 v7, 0x1

    .line 504
    goto :goto_9

    .line 505
    :cond_12
    const/4 v7, 0x0

    .line 506
    :goto_9
    iget v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    .line 507
    .line 508
    if-le v8, v4, :cond_13

    .line 509
    .line 510
    const/4 v9, 0x1

    .line 511
    goto :goto_a

    .line 512
    :cond_13
    const/4 v9, 0x0

    .line 513
    :goto_a
    if-ne v7, v9, :cond_15

    .line 514
    .line 515
    if-ne v3, v5, :cond_14

    .line 516
    .line 517
    if-eq v8, v4, :cond_15

    .line 518
    .line 519
    :cond_14
    int-to-float v3, v3

    .line 520
    int-to-float v5, v5

    .line 521
    div-float/2addr v3, v5

    .line 522
    int-to-float v5, v8

    .line 523
    int-to-float v4, v4

    .line 524
    div-float/2addr v5, v4

    .line 525
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 530
    .line 531
    .line 532
    :cond_15
    :goto_b
    iget-object v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    .line 533
    .line 534
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 535
    .line 536
    .line 537
    const/4 v2, 0x2

    .line 538
    aget v2, v3, v2

    .line 539
    .line 540
    const/4 v4, 0x5

    .line 541
    aget v4, v3, v4

    .line 542
    .line 543
    invoke-virtual {v6, v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 544
    .line 545
    .line 546
    iget-object v1, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 547
    .line 548
    const/4 v2, 0x0

    .line 549
    aget v2, v3, v2

    .line 550
    .line 551
    const/4 v4, 0x3

    .line 552
    aget v4, v3, v4

    .line 553
    .line 554
    const/4 v5, 0x1

    .line 555
    aget v5, v3, v5

    .line 556
    .line 557
    const/4 v0, 0x4

    .line 558
    aget v7, v3, v0

    .line 559
    .line 560
    move-object/from16 v0, p4

    .line 561
    .line 562
    move v3, v4

    .line 563
    move v4, v5

    .line 564
    move v5, v7

    .line 565
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 566
    .line 567
    .line 568
    :goto_c
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 569
    .line 570
    .line 571
    return-void
.end method


# virtual methods
.method public final buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;FLcom/android/wm/shell/common/ShellExecutor;II)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    return v5

    .line 15
    :cond_0
    const/4 v4, 0x2

    .line 16
    const/4 v6, 0x1

    .line 17
    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    .line 18
    .line 19
    if-eq v7, v6, :cond_2

    .line 20
    .line 21
    if-ne v7, v4, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v8, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    move v8, v6

    .line 27
    :goto_1
    const v9, 0x10a00aa

    .line 28
    .line 29
    .line 30
    iget-object v10, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    if-eqz v8, :cond_4

    .line 33
    .line 34
    if-ne v7, v4, :cond_3

    .line 35
    .line 36
    const v2, 0x10a00ab

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    const v2, 0x10a00ac

    .line 41
    .line 42
    .line 43
    :goto_2
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 48
    .line 49
    invoke-static {v10, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 54
    .line 55
    const v2, 0x10a00d2

    .line 56
    .line 57
    .line 58
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_4
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 67
    .line 68
    if-nez v7, :cond_5

    .line 69
    .line 70
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_DISPLAY_CHANGE:Z

    .line 71
    .line 72
    if-eqz v7, :cond_6

    .line 73
    .line 74
    :cond_5
    const/4 v7, -0x1

    .line 75
    if-eq v3, v7, :cond_6

    .line 76
    .line 77
    if-eq v2, v7, :cond_6

    .line 78
    .line 79
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 84
    .line 85
    invoke-static {v10, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 90
    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :cond_6
    iget v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    .line 94
    .line 95
    iget v3, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    .line 96
    .line 97
    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iget-boolean v3, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    .line 102
    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_7
    move v5, v2

    .line 107
    :goto_3
    if-eqz v5, :cond_e

    .line 108
    .line 109
    if-eq v5, v6, :cond_c

    .line 110
    .line 111
    if-eq v5, v4, :cond_a

    .line 112
    .line 113
    const/4 v2, 0x3

    .line 114
    if-eq v5, v2, :cond_8

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_8
    const v2, 0x10a00d7

    .line 118
    .line 119
    .line 120
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 125
    .line 126
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION:Z

    .line 127
    .line 128
    if-eqz v2, :cond_9

    .line 129
    .line 130
    const v2, 0x10a00bf

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_9
    const v2, 0x10a00d6

    .line 135
    .line 136
    .line 137
    :goto_4
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_a
    const v2, 0x10a00d0

    .line 145
    .line 146
    .line 147
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 152
    .line 153
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION:Z

    .line 154
    .line 155
    if-eqz v2, :cond_b

    .line 156
    .line 157
    const v2, 0x10a00be

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_b
    const v2, 0x10a00cf

    .line 162
    .line 163
    .line 164
    :goto_5
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_c
    const v2, 0x10a00d9

    .line 172
    .line 173
    .line 174
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 179
    .line 180
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION:Z

    .line 181
    .line 182
    if-eqz v2, :cond_d

    .line 183
    .line 184
    const v2, 0x10a00c0

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_d
    const v2, 0x10a00d8

    .line 189
    .line 190
    .line 191
    :goto_6
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_e
    const v2, 0x10a00ce

    .line 199
    .line 200
    .line 201
    invoke-static {v10, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 206
    .line 207
    invoke-static {v10, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 212
    .line 213
    :goto_7
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 214
    .line 215
    iget v3, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    .line 216
    .line 217
    iget v4, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    .line 218
    .line 219
    iget v5, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    .line 220
    .line 221
    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    .line 222
    .line 223
    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 227
    .line 228
    const-wide/16 v9, 0x2710

    .line 229
    .line 230
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 236
    .line 237
    .line 238
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 239
    .line 240
    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 241
    .line 242
    .line 243
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 244
    .line 245
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 246
    .line 247
    .line 248
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 249
    .line 250
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 251
    .line 252
    .line 253
    if-eqz v8, :cond_f

    .line 254
    .line 255
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 256
    .line 257
    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 261
    .line 262
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 266
    .line 267
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 268
    .line 269
    .line 270
    iget-object v8, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 271
    .line 272
    iget-object v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 273
    .line 274
    iget-object v11, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 275
    .line 276
    const/4 v13, 0x0

    .line 277
    const/4 v14, 0x0

    .line 278
    const/4 v15, 0x0

    .line 279
    move-object/from16 v7, p1

    .line 280
    .line 281
    move-object/from16 v10, p2

    .line 282
    .line 283
    move-object/from16 v12, p4

    .line 284
    .line 285
    invoke-static/range {v7 .. v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 291
    .line 292
    iget-object v0, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 293
    .line 294
    const/16 v22, 0x0

    .line 295
    .line 296
    const/16 v23, 0x0

    .line 297
    .line 298
    const/16 v24, 0x0

    .line 299
    .line 300
    move-object/from16 v16, p1

    .line 301
    .line 302
    move-object/from16 v17, v1

    .line 303
    .line 304
    move-object/from16 v18, v2

    .line 305
    .line 306
    move-object/from16 v19, p2

    .line 307
    .line 308
    move-object/from16 v20, v0

    .line 309
    .line 310
    move-object/from16 v21, p4

    .line 311
    .line 312
    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 313
    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_f
    iget-object v8, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 317
    .line 318
    iget-object v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 319
    .line 320
    iget-object v11, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 321
    .line 322
    const/4 v13, 0x0

    .line 323
    const/4 v14, 0x0

    .line 324
    const/4 v15, 0x0

    .line 325
    move-object/from16 v7, p1

    .line 326
    .line 327
    move-object/from16 v10, p2

    .line 328
    .line 329
    move-object/from16 v12, p4

    .line 330
    .line 331
    invoke-static/range {v7 .. v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 335
    .line 336
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    .line 337
    .line 338
    iget-object v0, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 339
    .line 340
    const/16 v22, 0x0

    .line 341
    .line 342
    const/16 v23, 0x0

    .line 343
    .line 344
    const/16 v24, 0x0

    .line 345
    .line 346
    move-object/from16 v16, p1

    .line 347
    .line 348
    move-object/from16 v17, v1

    .line 349
    .line 350
    move-object/from16 v18, v2

    .line 351
    .line 352
    move-object/from16 v19, p2

    .line 353
    .line 354
    move-object/from16 v20, v0

    .line 355
    .line 356
    move-object/from16 v21, p4

    .line 357
    .line 358
    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 359
    .line 360
    .line 361
    :goto_8
    return v6
.end method
