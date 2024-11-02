.class public final Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAstar:F

.field public final mBstar:F

.field public final mChroma:F

.field public final mHue:F

.field public final mJ:F

.field public final mJstar:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 9
    .line 10
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 11
    .line 12
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 13
    .line 14
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 15
    .line 16
    return-void
.end method

.method public static fromColor(I)Landroidx/core/content/res/CamColor;
    .locals 24

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sget-object v4, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aget-object v6, v4, v5

    .line 31
    .line 32
    aget v7, v6, v5

    .line 33
    .line 34
    mul-float/2addr v7, v1

    .line 35
    const/4 v8, 0x1

    .line 36
    aget v9, v6, v8

    .line 37
    .line 38
    mul-float/2addr v9, v2

    .line 39
    add-float/2addr v9, v7

    .line 40
    const/4 v7, 0x2

    .line 41
    aget v6, v6, v7

    .line 42
    .line 43
    mul-float/2addr v6, v3

    .line 44
    add-float/2addr v6, v9

    .line 45
    aget-object v9, v4, v8

    .line 46
    .line 47
    aget v10, v9, v5

    .line 48
    .line 49
    mul-float/2addr v10, v1

    .line 50
    aget v11, v9, v8

    .line 51
    .line 52
    mul-float/2addr v11, v2

    .line 53
    add-float/2addr v11, v10

    .line 54
    aget v9, v9, v7

    .line 55
    .line 56
    mul-float/2addr v9, v3

    .line 57
    add-float/2addr v9, v11

    .line 58
    aget-object v4, v4, v7

    .line 59
    .line 60
    aget v10, v4, v5

    .line 61
    .line 62
    mul-float/2addr v1, v10

    .line 63
    aget v10, v4, v8

    .line 64
    .line 65
    mul-float/2addr v2, v10

    .line 66
    add-float/2addr v2, v1

    .line 67
    aget v1, v4, v7

    .line 68
    .line 69
    mul-float/2addr v3, v1

    .line 70
    add-float/2addr v3, v2

    .line 71
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 72
    .line 73
    aget-object v2, v1, v5

    .line 74
    .line 75
    aget v4, v2, v5

    .line 76
    .line 77
    mul-float/2addr v4, v6

    .line 78
    aget v10, v2, v8

    .line 79
    .line 80
    mul-float/2addr v10, v9

    .line 81
    add-float/2addr v10, v4

    .line 82
    aget v2, v2, v7

    .line 83
    .line 84
    mul-float/2addr v2, v3

    .line 85
    add-float/2addr v2, v10

    .line 86
    aget-object v4, v1, v8

    .line 87
    .line 88
    aget v10, v4, v5

    .line 89
    .line 90
    mul-float/2addr v10, v6

    .line 91
    aget v11, v4, v8

    .line 92
    .line 93
    mul-float/2addr v11, v9

    .line 94
    add-float/2addr v11, v10

    .line 95
    aget v4, v4, v7

    .line 96
    .line 97
    mul-float/2addr v4, v3

    .line 98
    add-float/2addr v4, v11

    .line 99
    aget-object v1, v1, v7

    .line 100
    .line 101
    aget v10, v1, v5

    .line 102
    .line 103
    mul-float/2addr v6, v10

    .line 104
    aget v10, v1, v8

    .line 105
    .line 106
    mul-float/2addr v9, v10

    .line 107
    add-float/2addr v9, v6

    .line 108
    aget v1, v1, v7

    .line 109
    .line 110
    mul-float/2addr v3, v1

    .line 111
    add-float/2addr v3, v9

    .line 112
    iget-object v1, v0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 113
    .line 114
    aget v5, v1, v5

    .line 115
    .line 116
    mul-float/2addr v5, v2

    .line 117
    aget v2, v1, v8

    .line 118
    .line 119
    mul-float/2addr v2, v4

    .line 120
    aget v1, v1, v7

    .line 121
    .line 122
    mul-float/2addr v1, v3

    .line 123
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iget v4, v0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 128
    .line 129
    mul-float/2addr v3, v4

    .line 130
    float-to-double v6, v3

    .line 131
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 132
    .line 133
    div-double/2addr v6, v8

    .line 134
    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 140
    .line 141
    .line 142
    move-result-wide v6

    .line 143
    double-to-float v3, v6

    .line 144
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    mul-float/2addr v6, v4

    .line 149
    float-to-double v6, v6

    .line 150
    div-double/2addr v6, v8

    .line 151
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    double-to-float v6, v6

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    mul-float/2addr v7, v4

    .line 161
    float-to-double v12, v7

    .line 162
    div-double/2addr v12, v8

    .line 163
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    double-to-float v4, v10

    .line 168
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    const/high16 v7, 0x43c80000    # 400.0f

    .line 173
    .line 174
    mul-float/2addr v5, v7

    .line 175
    mul-float/2addr v5, v3

    .line 176
    const v10, 0x41d90a3d    # 27.13f

    .line 177
    .line 178
    .line 179
    add-float/2addr v3, v10

    .line 180
    div-float/2addr v5, v3

    .line 181
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    mul-float/2addr v2, v7

    .line 186
    mul-float/2addr v2, v6

    .line 187
    add-float/2addr v6, v10

    .line 188
    div-float/2addr v2, v6

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    mul-float/2addr v1, v7

    .line 194
    mul-float/2addr v1, v4

    .line 195
    add-float/2addr v4, v10

    .line 196
    div-float/2addr v1, v4

    .line 197
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 198
    .line 199
    float-to-double v6, v5

    .line 200
    mul-double/2addr v6, v3

    .line 201
    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    .line 202
    .line 203
    float-to-double v10, v2

    .line 204
    mul-double/2addr v10, v3

    .line 205
    add-double/2addr v10, v6

    .line 206
    float-to-double v3, v1

    .line 207
    add-double/2addr v10, v3

    .line 208
    double-to-float v6, v10

    .line 209
    const/high16 v7, 0x41300000    # 11.0f

    .line 210
    .line 211
    div-float/2addr v6, v7

    .line 212
    add-float v7, v5, v2

    .line 213
    .line 214
    float-to-double v10, v7

    .line 215
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 216
    .line 217
    mul-double/2addr v3, v12

    .line 218
    sub-double/2addr v10, v3

    .line 219
    double-to-float v3, v10

    .line 220
    const/high16 v4, 0x41100000    # 9.0f

    .line 221
    .line 222
    div-float/2addr v3, v4

    .line 223
    const/high16 v4, 0x41a00000    # 20.0f

    .line 224
    .line 225
    mul-float v7, v5, v4

    .line 226
    .line 227
    mul-float/2addr v2, v4

    .line 228
    add-float/2addr v7, v2

    .line 229
    const/high16 v10, 0x41a80000    # 21.0f

    .line 230
    .line 231
    mul-float/2addr v10, v1

    .line 232
    add-float/2addr v10, v7

    .line 233
    div-float/2addr v10, v4

    .line 234
    const/high16 v7, 0x42200000    # 40.0f

    .line 235
    .line 236
    mul-float/2addr v5, v7

    .line 237
    add-float/2addr v5, v2

    .line 238
    add-float/2addr v5, v1

    .line 239
    div-float/2addr v5, v4

    .line 240
    float-to-double v1, v3

    .line 241
    float-to-double v14, v6

    .line 242
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 243
    .line 244
    .line 245
    move-result-wide v1

    .line 246
    double-to-float v1, v1

    .line 247
    const/high16 v2, 0x43340000    # 180.0f

    .line 248
    .line 249
    mul-float/2addr v1, v2

    .line 250
    const v4, 0x40490fdb    # (float)Math.PI

    .line 251
    .line 252
    .line 253
    div-float/2addr v1, v4

    .line 254
    const/4 v7, 0x0

    .line 255
    cmpg-float v7, v1, v7

    .line 256
    .line 257
    const/high16 v11, 0x43b40000    # 360.0f

    .line 258
    .line 259
    if-gez v7, :cond_0

    .line 260
    .line 261
    add-float/2addr v1, v11

    .line 262
    goto :goto_0

    .line 263
    :cond_0
    cmpl-float v7, v1, v11

    .line 264
    .line 265
    if-ltz v7, :cond_1

    .line 266
    .line 267
    sub-float/2addr v1, v11

    .line 268
    :cond_1
    :goto_0
    move v15, v1

    .line 269
    mul-float/2addr v4, v15

    .line 270
    div-float/2addr v4, v2

    .line 271
    iget v1, v0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 272
    .line 273
    mul-float/2addr v5, v1

    .line 274
    iget v1, v0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 275
    .line 276
    div-float/2addr v5, v1

    .line 277
    float-to-double v8, v5

    .line 278
    iget v2, v0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 279
    .line 280
    iget v5, v0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 281
    .line 282
    mul-float/2addr v2, v5

    .line 283
    float-to-double v12, v2

    .line 284
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 285
    .line 286
    .line 287
    move-result-wide v7

    .line 288
    double-to-float v2, v7

    .line 289
    const/high16 v7, 0x42c80000    # 100.0f

    .line 290
    .line 291
    mul-float/2addr v2, v7

    .line 292
    const/high16 v8, 0x40800000    # 4.0f

    .line 293
    .line 294
    div-float v9, v8, v5

    .line 295
    .line 296
    div-float v7, v2, v7

    .line 297
    .line 298
    float-to-double v12, v7

    .line 299
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 300
    .line 301
    .line 302
    move-result-wide v12

    .line 303
    double-to-float v7, v12

    .line 304
    mul-float/2addr v9, v7

    .line 305
    add-float/2addr v1, v8

    .line 306
    mul-float/2addr v9, v1

    .line 307
    iget v7, v0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 308
    .line 309
    mul-float v8, v9, v7

    .line 310
    .line 311
    float-to-double v12, v15

    .line 312
    const-wide v20, 0x403423d70a3d70a4L    # 20.14

    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    cmpg-double v9, v12, v20

    .line 318
    .line 319
    if-gez v9, :cond_2

    .line 320
    .line 321
    add-float/2addr v11, v15

    .line 322
    goto :goto_1

    .line 323
    :cond_2
    move v11, v15

    .line 324
    :goto_1
    float-to-double v11, v11

    .line 325
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    mul-double/2addr v11, v13

    .line 331
    const-wide v13, 0x4066800000000000L    # 180.0

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    div-double/2addr v11, v13

    .line 337
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 338
    .line 339
    add-double/2addr v11, v13

    .line 340
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 341
    .line 342
    .line 343
    move-result-wide v11

    .line 344
    const-wide v13, 0x400e666666666666L    # 3.8

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    add-double/2addr v11, v13

    .line 350
    double-to-float v9, v11

    .line 351
    const/high16 v11, 0x3e800000    # 0.25f

    .line 352
    .line 353
    mul-float/2addr v9, v11

    .line 354
    const v11, 0x45706276

    .line 355
    .line 356
    .line 357
    mul-float/2addr v9, v11

    .line 358
    iget v11, v0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 359
    .line 360
    mul-float/2addr v9, v11

    .line 361
    iget v11, v0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 362
    .line 363
    mul-float/2addr v9, v11

    .line 364
    mul-float/2addr v6, v6

    .line 365
    mul-float/2addr v3, v3

    .line 366
    add-float/2addr v3, v6

    .line 367
    float-to-double v11, v3

    .line 368
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 369
    .line 370
    .line 371
    move-result-wide v11

    .line 372
    double-to-float v3, v11

    .line 373
    mul-float/2addr v9, v3

    .line 374
    const v3, 0x3e9c28f6    # 0.305f

    .line 375
    .line 376
    .line 377
    add-float/2addr v10, v3

    .line 378
    div-float/2addr v9, v10

    .line 379
    iget v0, v0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 380
    .line 381
    float-to-double v10, v0

    .line 382
    const-wide v12, 0x3fd28f5c28f5c28fL    # 0.29

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 388
    .line 389
    .line 390
    move-result-wide v10

    .line 391
    const-wide v12, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    sub-double/2addr v12, v10

    .line 397
    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 403
    .line 404
    .line 405
    move-result-wide v10

    .line 406
    double-to-float v0, v10

    .line 407
    float-to-double v9, v9

    .line 408
    const-wide v11, 0x3feccccccccccccdL    # 0.9

    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 414
    .line 415
    .line 416
    move-result-wide v9

    .line 417
    double-to-float v3, v9

    .line 418
    mul-float/2addr v0, v3

    .line 419
    float-to-double v9, v2

    .line 420
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 421
    .line 422
    div-double/2addr v9, v11

    .line 423
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 424
    .line 425
    .line 426
    move-result-wide v9

    .line 427
    double-to-float v3, v9

    .line 428
    mul-float v16, v0, v3

    .line 429
    .line 430
    mul-float v19, v16, v7

    .line 431
    .line 432
    mul-float/2addr v0, v5

    .line 433
    div-float/2addr v0, v1

    .line 434
    float-to-double v0, v0

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 436
    .line 437
    .line 438
    move-result-wide v0

    .line 439
    double-to-float v0, v0

    .line 440
    const/high16 v1, 0x42480000    # 50.0f

    .line 441
    .line 442
    mul-float v20, v0, v1

    .line 443
    .line 444
    const v0, 0x3fd9999a    # 1.7f

    .line 445
    .line 446
    .line 447
    mul-float/2addr v0, v2

    .line 448
    const v1, 0x3be56042    # 0.007f

    .line 449
    .line 450
    .line 451
    mul-float/2addr v1, v2

    .line 452
    const/high16 v3, 0x3f800000    # 1.0f

    .line 453
    .line 454
    add-float/2addr v1, v3

    .line 455
    div-float v21, v0, v1

    .line 456
    .line 457
    const v0, 0x3cbac711    # 0.0228f

    .line 458
    .line 459
    .line 460
    mul-float v0, v0, v19

    .line 461
    .line 462
    add-float/2addr v0, v3

    .line 463
    float-to-double v0, v0

    .line 464
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 465
    .line 466
    .line 467
    move-result-wide v0

    .line 468
    double-to-float v0, v0

    .line 469
    const v1, 0x422f7048

    .line 470
    .line 471
    .line 472
    mul-float/2addr v0, v1

    .line 473
    float-to-double v3, v4

    .line 474
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 475
    .line 476
    .line 477
    move-result-wide v5

    .line 478
    double-to-float v1, v5

    .line 479
    mul-float v22, v0, v1

    .line 480
    .line 481
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 482
    .line 483
    .line 484
    move-result-wide v3

    .line 485
    double-to-float v1, v3

    .line 486
    mul-float v23, v0, v1

    .line 487
    .line 488
    new-instance v0, Landroidx/core/content/res/CamColor;

    .line 489
    .line 490
    move-object v14, v0

    .line 491
    move/from16 v17, v2

    .line 492
    .line 493
    move/from16 v18, v8

    .line 494
    .line 495
    invoke-direct/range {v14 .. v23}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    .line 496
    .line 497
    .line 498
    return-object v0
.end method

.method public static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .locals 13

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    .line 3
    iget v1, v0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 4
    .line 5
    const/high16 v2, 0x40800000    # 4.0f

    .line 6
    .line 7
    div-float v1, v2, v1

    .line 8
    .line 9
    float-to-double v4, p0

    .line 10
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 11
    .line 12
    div-double/2addr v4, v6

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    double-to-float v6, v6

    .line 18
    mul-float/2addr v1, v6

    .line 19
    iget v6, v0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 20
    .line 21
    add-float/2addr v6, v2

    .line 22
    mul-float/2addr v1, v6

    .line 23
    iget v2, v0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 24
    .line 25
    mul-float v7, v1, v2

    .line 26
    .line 27
    mul-float v8, p1, v2

    .line 28
    .line 29
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    double-to-float v1, v1

    .line 34
    div-float v1, p1, v1

    .line 35
    .line 36
    iget v0, v0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 37
    .line 38
    mul-float/2addr v1, v0

    .line 39
    div-float/2addr v1, v6

    .line 40
    float-to-double v0, v1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    double-to-float v0, v0

    .line 46
    const/high16 v1, 0x42480000    # 50.0f

    .line 47
    .line 48
    mul-float v6, v0, v1

    .line 49
    .line 50
    const v0, 0x40490fdb    # (float)Math.PI

    .line 51
    .line 52
    .line 53
    mul-float/2addr v0, p2

    .line 54
    const/high16 v1, 0x43340000    # 180.0f

    .line 55
    .line 56
    div-float/2addr v0, v1

    .line 57
    const v1, 0x3fd9999a    # 1.7f

    .line 58
    .line 59
    .line 60
    mul-float/2addr v1, p0

    .line 61
    const v2, 0x3be56042    # 0.007f

    .line 62
    .line 63
    .line 64
    mul-float/2addr v2, p0

    .line 65
    const/high16 v4, 0x3f800000    # 1.0f

    .line 66
    .line 67
    add-float/2addr v2, v4

    .line 68
    div-float v9, v1, v2

    .line 69
    .line 70
    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    float-to-double v4, v8

    .line 76
    mul-double/2addr v4, v1

    .line 77
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 78
    .line 79
    add-double/2addr v4, v1

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    double-to-float v1, v1

    .line 85
    const v2, 0x422f7048

    .line 86
    .line 87
    .line 88
    mul-float/2addr v1, v2

    .line 89
    float-to-double v4, v0

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 91
    .line 92
    .line 93
    move-result-wide v10

    .line 94
    double-to-float v0, v10

    .line 95
    mul-float v10, v1, v0

    .line 96
    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    double-to-float v0, v4

    .line 102
    mul-float v11, v1, v0

    .line 103
    .line 104
    new-instance v12, Landroidx/core/content/res/CamColor;

    .line 105
    .line 106
    move-object v0, v12

    .line 107
    move v1, p2

    .line 108
    move v2, p1

    .line 109
    move v3, p0

    .line 110
    move v4, v7

    .line 111
    move v5, v8

    .line 112
    move v7, v9

    .line 113
    move v8, v10

    .line 114
    move v9, v11

    .line 115
    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    .line 116
    .line 117
    .line 118
    return-object v12
.end method


# virtual methods
.method public final viewed(Landroidx/core/content/res/ViewingConditions;)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget v2, v0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 5
    .line 6
    float-to-double v3, v2

    .line 7
    const-wide/16 v5, 0x0

    .line 8
    .line 9
    cmpl-double v3, v3, v5

    .line 10
    .line 11
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 12
    .line 13
    iget v4, v0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    float-to-double v9, v4

    .line 18
    cmpl-double v3, v9, v5

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    div-double/2addr v9, v7

    .line 24
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v9

    .line 28
    double-to-float v3, v9

    .line 29
    div-float/2addr v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    float-to-double v2, v2

    .line 33
    iget v9, v1, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 34
    .line 35
    float-to-double v9, v9

    .line 36
    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 42
    .line 43
    .line 44
    move-result-wide v9

    .line 45
    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    sub-double/2addr v11, v9

    .line 51
    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v9

    .line 60
    div-double/2addr v2, v9

    .line 61
    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    double-to-float v2, v2

    .line 71
    const v3, 0x40490fdb    # (float)Math.PI

    .line 72
    .line 73
    .line 74
    iget v0, v0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 75
    .line 76
    mul-float/2addr v0, v3

    .line 77
    const/high16 v3, 0x43340000    # 180.0f

    .line 78
    .line 79
    div-float/2addr v0, v3

    .line 80
    float-to-double v9, v0

    .line 81
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 82
    .line 83
    add-double/2addr v11, v9

    .line 84
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    const-wide v13, 0x400e666666666666L    # 3.8

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    add-double/2addr v11, v13

    .line 94
    double-to-float v0, v11

    .line 95
    const/high16 v3, 0x3e800000    # 0.25f

    .line 96
    .line 97
    mul-float/2addr v0, v3

    .line 98
    float-to-double v3, v4

    .line 99
    div-double/2addr v3, v7

    .line 100
    iget v7, v1, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 101
    .line 102
    float-to-double v7, v7

    .line 103
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 104
    .line 105
    div-double/2addr v11, v7

    .line 106
    iget v7, v1, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 107
    .line 108
    float-to-double v7, v7

    .line 109
    div-double/2addr v11, v7

    .line 110
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    double-to-float v3, v3

    .line 115
    iget v4, v1, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 116
    .line 117
    mul-float/2addr v4, v3

    .line 118
    const v3, 0x45706276

    .line 119
    .line 120
    .line 121
    mul-float/2addr v0, v3

    .line 122
    iget v3, v1, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 123
    .line 124
    mul-float/2addr v0, v3

    .line 125
    iget v3, v1, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 126
    .line 127
    mul-float/2addr v0, v3

    .line 128
    iget v3, v1, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 129
    .line 130
    div-float/2addr v4, v3

    .line 131
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    double-to-float v3, v7

    .line 136
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    double-to-float v7, v7

    .line 141
    const v8, 0x3e9c28f6    # 0.305f

    .line 142
    .line 143
    .line 144
    add-float/2addr v8, v4

    .line 145
    const/high16 v9, 0x41b80000    # 23.0f

    .line 146
    .line 147
    mul-float/2addr v8, v9

    .line 148
    mul-float/2addr v8, v2

    .line 149
    mul-float/2addr v0, v9

    .line 150
    const/high16 v9, 0x41300000    # 11.0f

    .line 151
    .line 152
    mul-float/2addr v9, v2

    .line 153
    mul-float/2addr v9, v7

    .line 154
    add-float/2addr v9, v0

    .line 155
    const/high16 v0, 0x42d80000    # 108.0f

    .line 156
    .line 157
    mul-float/2addr v2, v0

    .line 158
    mul-float/2addr v2, v3

    .line 159
    add-float/2addr v2, v9

    .line 160
    div-float/2addr v8, v2

    .line 161
    mul-float/2addr v7, v8

    .line 162
    mul-float/2addr v8, v3

    .line 163
    const/high16 v0, 0x43e60000    # 460.0f

    .line 164
    .line 165
    mul-float/2addr v4, v0

    .line 166
    const v0, 0x43e18000    # 451.0f

    .line 167
    .line 168
    .line 169
    mul-float/2addr v0, v7

    .line 170
    add-float/2addr v0, v4

    .line 171
    const/high16 v2, 0x43900000    # 288.0f

    .line 172
    .line 173
    mul-float/2addr v2, v8

    .line 174
    add-float/2addr v2, v0

    .line 175
    const v0, 0x44af6000    # 1403.0f

    .line 176
    .line 177
    .line 178
    div-float/2addr v2, v0

    .line 179
    const v3, 0x445ec000    # 891.0f

    .line 180
    .line 181
    .line 182
    mul-float/2addr v3, v7

    .line 183
    sub-float v3, v4, v3

    .line 184
    .line 185
    const v9, 0x43828000    # 261.0f

    .line 186
    .line 187
    .line 188
    mul-float/2addr v9, v8

    .line 189
    sub-float/2addr v3, v9

    .line 190
    div-float/2addr v3, v0

    .line 191
    const/high16 v9, 0x435c0000    # 220.0f

    .line 192
    .line 193
    mul-float/2addr v7, v9

    .line 194
    sub-float/2addr v4, v7

    .line 195
    const v7, 0x45c4e000    # 6300.0f

    .line 196
    .line 197
    .line 198
    mul-float/2addr v8, v7

    .line 199
    sub-float/2addr v4, v8

    .line 200
    div-float/2addr v4, v0

    .line 201
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    float-to-double v7, v0

    .line 206
    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    mul-double/2addr v7, v9

    .line 212
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    float-to-double v11, v0

    .line 217
    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    .line 218
    .line 219
    sub-double v11, v13, v11

    .line 220
    .line 221
    div-double/2addr v7, v11

    .line 222
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 223
    .line 224
    .line 225
    move-result-wide v7

    .line 226
    double-to-float v0, v7

    .line 227
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/high16 v7, 0x42c80000    # 100.0f

    .line 232
    .line 233
    iget v8, v1, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 234
    .line 235
    div-float/2addr v7, v8

    .line 236
    mul-float/2addr v2, v7

    .line 237
    float-to-double v11, v0

    .line 238
    const-wide v5, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 244
    .line 245
    .line 246
    move-result-wide v11

    .line 247
    double-to-float v0, v11

    .line 248
    mul-float/2addr v2, v0

    .line 249
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    float-to-double v11, v0

    .line 254
    mul-double/2addr v11, v9

    .line 255
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    float-to-double v9, v0

    .line 260
    sub-double v8, v13, v9

    .line 261
    .line 262
    div-double/2addr v11, v8

    .line 263
    const-wide/16 v8, 0x0

    .line 264
    .line 265
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 266
    .line 267
    .line 268
    move-result-wide v10

    .line 269
    double-to-float v0, v10

    .line 270
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    mul-float/2addr v3, v7

    .line 275
    float-to-double v8, v0

    .line 276
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 277
    .line 278
    .line 279
    move-result-wide v8

    .line 280
    double-to-float v0, v8

    .line 281
    mul-float/2addr v3, v0

    .line 282
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    float-to-double v8, v0

    .line 287
    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    mul-double/2addr v8, v10

    .line 293
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    float-to-double v10, v0

    .line 298
    sub-double/2addr v13, v10

    .line 299
    div-double/2addr v8, v13

    .line 300
    const-wide/16 v10, 0x0

    .line 301
    .line 302
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 303
    .line 304
    .line 305
    move-result-wide v8

    .line 306
    double-to-float v0, v8

    .line 307
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    mul-float/2addr v4, v7

    .line 312
    float-to-double v7, v0

    .line 313
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 314
    .line 315
    .line 316
    move-result-wide v5

    .line 317
    double-to-float v0, v5

    .line 318
    mul-float/2addr v4, v0

    .line 319
    iget-object v0, v1, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 320
    .line 321
    const/4 v1, 0x0

    .line 322
    aget v5, v0, v1

    .line 323
    .line 324
    div-float/2addr v2, v5

    .line 325
    const/4 v5, 0x1

    .line 326
    aget v6, v0, v5

    .line 327
    .line 328
    div-float/2addr v3, v6

    .line 329
    const/4 v6, 0x2

    .line 330
    aget v0, v0, v6

    .line 331
    .line 332
    div-float/2addr v4, v0

    .line 333
    sget-object v0, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 334
    .line 335
    aget-object v7, v0, v1

    .line 336
    .line 337
    aget v8, v7, v1

    .line 338
    .line 339
    mul-float/2addr v8, v2

    .line 340
    aget v9, v7, v5

    .line 341
    .line 342
    mul-float/2addr v9, v3

    .line 343
    add-float/2addr v9, v8

    .line 344
    aget v7, v7, v6

    .line 345
    .line 346
    mul-float/2addr v7, v4

    .line 347
    add-float/2addr v7, v9

    .line 348
    aget-object v8, v0, v5

    .line 349
    .line 350
    aget v9, v8, v1

    .line 351
    .line 352
    mul-float/2addr v9, v2

    .line 353
    aget v10, v8, v5

    .line 354
    .line 355
    mul-float/2addr v10, v3

    .line 356
    add-float/2addr v10, v9

    .line 357
    aget v8, v8, v6

    .line 358
    .line 359
    mul-float/2addr v8, v4

    .line 360
    add-float/2addr v8, v10

    .line 361
    aget-object v0, v0, v6

    .line 362
    .line 363
    aget v1, v0, v1

    .line 364
    .line 365
    mul-float/2addr v2, v1

    .line 366
    aget v1, v0, v5

    .line 367
    .line 368
    mul-float/2addr v3, v1

    .line 369
    add-float/2addr v3, v2

    .line 370
    aget v0, v0, v6

    .line 371
    .line 372
    mul-float/2addr v4, v0

    .line 373
    add-float/2addr v4, v3

    .line 374
    float-to-double v9, v7

    .line 375
    float-to-double v11, v8

    .line 376
    float-to-double v13, v4

    .line 377
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    return v0
.end method
