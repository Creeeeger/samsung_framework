.class public final Lcom/android/systemui/charging/WirelessChargingLayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

.field public mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;IIZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, -0x1

    .line 12
    if-eq v1, v6, :cond_0

    .line 13
    .line 14
    move v7, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v7, v5

    .line 17
    :goto_0
    if-eqz p4, :cond_1

    .line 18
    .line 19
    const v8, 0x7f140190

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const v8, 0x7f140191

    .line 24
    .line 25
    .line 26
    :goto_1
    new-instance v9, Landroid/view/ContextThemeWrapper;

    .line 27
    .line 28
    move-object/from16 v10, p1

    .line 29
    .line 30
    invoke-direct {v9, v10, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    const v8, 0x7f0d053d

    .line 34
    .line 35
    .line 36
    invoke-static {v9, v8, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const v8, 0x7f0a0d60

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Landroid/widget/TextView;

    .line 47
    .line 48
    const/high16 v9, 0x42c80000    # 100.0f

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    if-eq v2, v6, :cond_2

    .line 52
    .line 53
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    int-to-float v2, v2

    .line 58
    div-float/2addr v2, v9

    .line 59
    float-to-double v12, v2

    .line 60
    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const v6, 0x7f0b011c

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-long v12, v2

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const v6, 0x7f0b011b

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    int-to-long v14, v2

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const v6, 0x7f07165d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const v9, 0x7f07165c

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v7, :cond_3

    .line 117
    .line 118
    const/high16 v16, 0x3f400000    # 0.75f

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const/high16 v16, 0x3f800000    # 1.0f

    .line 122
    .line 123
    :goto_2
    mul-float v6, v6, v16

    .line 124
    .line 125
    const/4 v9, 0x2

    .line 126
    new-array v11, v9, [F

    .line 127
    .line 128
    aput v2, v11, v5

    .line 129
    .line 130
    aput v6, v11, v4

    .line 131
    .line 132
    const-string/jumbo v4, "textSize"

    .line 133
    .line 134
    .line 135
    invoke-static {v8, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 140
    .line 141
    const/high16 v9, 0x3f800000    # 1.0f

    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    invoke-direct {v5, v10, v10, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    const v9, 0x7f0b011a

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    int-to-long v9, v5

    .line 162
    invoke-virtual {v11, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    .line 165
    const/4 v5, 0x2

    .line 166
    new-array v9, v5, [F

    .line 167
    .line 168
    fill-array-data v9, :array_0

    .line 169
    .line 170
    .line 171
    const-string v5, "alpha"

    .line 172
    .line 173
    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    sget-object v10, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 v17, v4

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    move/from16 v18, v6

    .line 189
    .line 190
    const v6, 0x7f0b0119

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    move/from16 v19, v7

    .line 198
    .line 199
    int-to-long v6, v4

    .line 200
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const v6, 0x7f0b0118

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    int-to-long v6, v4

    .line 215
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 216
    .line 217
    .line 218
    const/4 v4, 0x2

    .line 219
    new-array v6, v4, [F

    .line 220
    .line 221
    fill-array-data v6, :array_1

    .line 222
    .line 223
    .line 224
    invoke-static {v8, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 235
    .line 236
    .line 237
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 238
    .line 239
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 240
    .line 241
    .line 242
    filled-new-array {v11, v9, v4}, [Landroid/animation/Animator;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 247
    .line 248
    .line 249
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-nez v4, :cond_5

    .line 254
    .line 255
    const/high16 v4, 0x4c000000    # 3.3554432E7f

    .line 256
    .line 257
    const/4 v9, 0x0

    .line 258
    filled-new-array {v9, v4}, [I

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    const-string v7, "backgroundColor"

    .line 263
    .line 264
    invoke-static {v0, v7, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    move-object v11, v5

    .line 269
    const-wide/16 v4, 0x12c

    .line 270
    .line 271
    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    .line 276
    .line 277
    const/high16 v4, 0x4c000000    # 3.3554432E7f

    .line 278
    .line 279
    filled-new-array {v4, v9}, [I

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    move-object v5, v11

    .line 288
    move-wide/from16 v22, v12

    .line 289
    .line 290
    const-wide/16 v11, 0x12c

    .line 291
    .line 292
    invoke-virtual {v4, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    .line 297
    .line 298
    sget-object v7, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 299
    .line 300
    if-ne v3, v7, :cond_4

    .line 301
    .line 302
    const-wide/16 v20, 0x5dc

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_4
    const-wide/16 v20, 0xbb8

    .line 306
    .line 307
    :goto_3
    sub-long v11, v20, v11

    .line 308
    .line 309
    invoke-virtual {v4, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 310
    .line 311
    .line 312
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 313
    .line 314
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 315
    .line 316
    .line 317
    filled-new-array {v8, v4}, [Landroid/animation/Animator;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_5
    move-wide/from16 v22, v12

    .line 329
    .line 330
    :goto_4
    const v4, 0x7f0a0d61

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 338
    .line 339
    iput-object v4, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 340
    .line 341
    invoke-virtual {v4, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    const v4, 0x1010435

    .line 351
    .line 352
    .line 353
    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    iget-object v4, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 362
    .line 363
    iget-object v7, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 364
    .line 365
    if-eqz v7, :cond_6

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_6
    const/4 v7, 0x0

    .line 369
    :goto_5
    sget-object v8, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ROUNDED_BOX:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 370
    .line 371
    if-ne v7, v8, :cond_7

    .line 372
    .line 373
    const-wide/16 v7, 0xbb8

    .line 374
    .line 375
    iput-wide v7, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    .line 376
    .line 377
    invoke-virtual {v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    const-string v7, "in_sparkle_strength"

    .line 382
    .line 383
    const v8, 0x3e6147ae    # 0.22f

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v7, v8}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 387
    .line 388
    .line 389
    iget-object v4, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 390
    .line 391
    const/16 v7, 0x66

    .line 392
    .line 393
    invoke-virtual {v4, v3, v7}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    .line 394
    .line 395
    .line 396
    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 397
    .line 398
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    iget-object v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 403
    .line 404
    const/4 v4, 0x0

    .line 405
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 406
    .line 407
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 408
    .line 409
    const v7, 0x3e4ccccd    # 0.2f

    .line 410
    .line 411
    .line 412
    iput v7, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 413
    .line 414
    const v8, 0x3ef0a3d7    # 0.47f

    .line 415
    .line 416
    .line 417
    iput v8, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 418
    .line 419
    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 420
    .line 421
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    iget-object v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 426
    .line 427
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 428
    .line 429
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 430
    .line 431
    iput v7, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 432
    .line 433
    const/high16 v8, 0x3f800000    # 1.0f

    .line 434
    .line 435
    iput v8, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 436
    .line 437
    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 438
    .line 439
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    iget-object v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 444
    .line 445
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 446
    .line 447
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 448
    .line 449
    iput v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 450
    .line 451
    iput v7, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 452
    .line 453
    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 454
    .line 455
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    goto :goto_6

    .line 470
    :cond_7
    const-wide/16 v7, 0x5dc

    .line 471
    .line 472
    iput-wide v7, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    .line 473
    .line 474
    const/16 v7, 0x73

    .line 475
    .line 476
    invoke-virtual {v4, v3, v7}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    .line 477
    .line 478
    .line 479
    :goto_6
    new-instance v3, Lcom/android/systemui/charging/WirelessChargingLayout$1;

    .line 480
    .line 481
    invoke-direct {v3, v0}, Lcom/android/systemui/charging/WirelessChargingLayout$1;-><init>(Lcom/android/systemui/charging/WirelessChargingLayout;)V

    .line 482
    .line 483
    .line 484
    iget-object v4, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 485
    .line 486
    invoke-virtual {v4, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 487
    .line 488
    .line 489
    if-nez v19, :cond_8

    .line 490
    .line 491
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 492
    .line 493
    .line 494
    return-void

    .line 495
    :cond_8
    const v3, 0x7f0a08c8

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    check-cast v3, Landroid/widget/TextView;

    .line 503
    .line 504
    const/4 v4, 0x0

    .line 505
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    int-to-float v1, v1

    .line 513
    const/high16 v8, 0x42c80000    # 100.0f

    .line 514
    .line 515
    div-float/2addr v1, v8

    .line 516
    float-to-double v8, v1

    .line 517
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    const/4 v1, 0x0

    .line 525
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 526
    .line 527
    .line 528
    const/4 v7, 0x2

    .line 529
    new-array v8, v7, [F

    .line 530
    .line 531
    aput v2, v8, v4

    .line 532
    .line 533
    const/4 v2, 0x1

    .line 534
    aput v18, v8, v2

    .line 535
    .line 536
    move-object/from16 v2, v17

    .line 537
    .line 538
    invoke-static {v3, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 543
    .line 544
    const/high16 v8, 0x3f800000    # 1.0f

    .line 545
    .line 546
    invoke-direct {v4, v1, v1, v1, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    const v4, 0x7f0b011a

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    int-to-long v8, v1

    .line 564
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 565
    .line 566
    .line 567
    new-array v1, v7, [F

    .line 568
    .line 569
    fill-array-data v1, :array_2

    .line 570
    .line 571
    .line 572
    move-object v4, v5

    .line 573
    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    const v7, 0x7f0b0119

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    int-to-long v7, v5

    .line 592
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    .line 594
    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    const v7, 0x7f0b0118

    .line 600
    .line 601
    .line 602
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    int-to-long v7, v5

    .line 607
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 608
    .line 609
    .line 610
    const/4 v5, 0x2

    .line 611
    new-array v7, v5, [F

    .line 612
    .line 613
    fill-array-data v7, :array_3

    .line 614
    .line 615
    .line 616
    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 624
    .line 625
    .line 626
    move-wide/from16 v7, v22

    .line 627
    .line 628
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 629
    .line 630
    .line 631
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 632
    .line 633
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 634
    .line 635
    .line 636
    filled-new-array {v2, v1, v3}, [Landroid/animation/Animator;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 641
    .line 642
    .line 643
    const v1, 0x7f0a08c7

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    check-cast v1, Landroid/widget/ImageView;

    .line 651
    .line 652
    const/4 v2, 0x0

    .line 653
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    .line 655
    .line 656
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    move/from16 v3, v18

    .line 665
    .line 666
    const/4 v9, 0x1

    .line 667
    invoke-static {v9, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 676
    .line 677
    .line 678
    const/4 v0, 0x2

    .line 679
    new-array v2, v0, [F

    .line 680
    .line 681
    fill-array-data v2, :array_4

    .line 682
    .line 683
    .line 684
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    const v3, 0x7f0b0119

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    int-to-long v2, v2

    .line 703
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 704
    .line 705
    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    const v3, 0x7f0b0118

    .line 711
    .line 712
    .line 713
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    int-to-long v2, v2

    .line 718
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 719
    .line 720
    .line 721
    const/4 v2, 0x2

    .line 722
    new-array v2, v2, [F

    .line 723
    .line 724
    fill-array-data v2, :array_5

    .line 725
    .line 726
    .line 727
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 738
    .line 739
    .line 740
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 741
    .line 742
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 743
    .line 744
    .line 745
    filled-new-array {v0, v1}, [Landroid/animation/Animator;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 759
    .line 760
    .line 761
    return-void

    .line 762
    nop

    .line 763
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 14
    .line 15
    int-to-float v3, v0

    .line 16
    const/high16 v4, 0x3f000000    # 0.5f

    .line 17
    .line 18
    mul-float v5, v3, v4

    .line 19
    .line 20
    int-to-float v6, v1

    .line 21
    mul-float/2addr v4, v6

    .line 22
    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    sget-object v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ROUNDED_BOX:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 34
    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 38
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    const v2, 0x3e99999a    # 0.3f

    .line 42
    .line 43
    .line 44
    const v4, 0x3ecccccd    # 0.4f

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-instance v7, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 55
    .line 56
    invoke-direct {v7, v5, v5, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 60
    .line 61
    mul-float/2addr v3, v4

    .line 62
    mul-float/2addr v6, v4

    .line 63
    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 67
    .line 68
    invoke-direct {v2, v1, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    .line 69
    .line 70
    .line 71
    filled-new-array {v7, v5, v2}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v7, 0x0

    .line 79
    aget-object v7, v0, v7

    .line 80
    .line 81
    iput v5, v7, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    .line 82
    .line 83
    iput v5, v7, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    .line 84
    .line 85
    iput v5, v7, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    aget-object v0, v0, v5

    .line 89
    .line 90
    iput v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    .line 91
    .line 92
    mul-float v2, v3, v4

    .line 93
    .line 94
    iput v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    .line 95
    .line 96
    mul-float/2addr v4, v6

    .line 97
    iput v4, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    .line 98
    .line 99
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 104
    .line 105
    const/4 v3, 0x2

    .line 106
    aget-object v2, v2, v3

    .line 107
    .line 108
    iput v1, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    .line 109
    .line 110
    iput v0, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    .line 111
    .line 112
    iput v0, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    .line 113
    .line 114
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mSizeAtProgressArray:[Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 123
    .line 124
    array-length v2, v1

    .line 125
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    int-to-float v0, v0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 147
    .line 148
    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setMaxSize(FF)V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
