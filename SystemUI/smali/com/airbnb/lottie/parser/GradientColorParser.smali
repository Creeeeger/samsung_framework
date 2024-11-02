.class public final Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# instance fields
.field public colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    move v2, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v4

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    double-to-float v3, v6

    .line 37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x2

    .line 51
    const/4 v8, 0x3

    .line 52
    if-ne v3, v6, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/high16 v9, 0x3f800000    # 1.0f

    .line 65
    .line 66
    cmpl-float v3, v3, v9

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Float;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/Float;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iput v7, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 113
    .line 114
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 120
    .line 121
    const/4 v3, -0x1

    .line 122
    if-ne v2, v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    div-int/2addr v2, v6

    .line 129
    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 130
    .line 131
    :cond_5
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 132
    .line 133
    new-array v9, v2, [F

    .line 134
    .line 135
    new-array v2, v2, [I

    .line 136
    .line 137
    move v10, v4

    .line 138
    move v11, v10

    .line 139
    move v12, v11

    .line 140
    :goto_2
    iget v13, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 141
    .line 142
    mul-int/2addr v13, v6

    .line 143
    if-ge v10, v13, :cond_b

    .line 144
    .line 145
    div-int/lit8 v13, v10, 0x4

    .line 146
    .line 147
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Ljava/lang/Float;

    .line 152
    .line 153
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    float-to-double v14, v14

    .line 158
    rem-int/lit8 v3, v10, 0x4

    .line 159
    .line 160
    if-eqz v3, :cond_9

    .line 161
    .line 162
    const-wide v16, 0x406fe00000000000L    # 255.0

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    if-eq v3, v5, :cond_8

    .line 168
    .line 169
    if-eq v3, v7, :cond_7

    .line 170
    .line 171
    if-eq v3, v8, :cond_6

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    mul-double v14, v14, v16

    .line 175
    .line 176
    double-to-int v3, v14

    .line 177
    const/16 v14, 0xff

    .line 178
    .line 179
    invoke-static {v14, v11, v12, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    aput v3, v2, v13

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    mul-double v14, v14, v16

    .line 187
    .line 188
    double-to-int v12, v14

    .line 189
    goto :goto_3

    .line 190
    :cond_8
    mul-double v14, v14, v16

    .line 191
    .line 192
    double-to-int v11, v14

    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-lez v13, :cond_a

    .line 195
    .line 196
    add-int/lit8 v3, v13, -0x1

    .line 197
    .line 198
    aget v3, v9, v3

    .line 199
    .line 200
    double-to-float v5, v14

    .line 201
    cmpl-float v3, v3, v5

    .line 202
    .line 203
    if-ltz v3, :cond_a

    .line 204
    .line 205
    const v3, 0x3c23d70a    # 0.01f

    .line 206
    .line 207
    .line 208
    add-float/2addr v5, v3

    .line 209
    aput v5, v9, v13

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_a
    double-to-float v3, v14

    .line 213
    aput v3, v9, v13

    .line 214
    .line 215
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 216
    .line 217
    const/4 v3, -0x1

    .line 218
    const/4 v5, 0x1

    .line 219
    goto :goto_2

    .line 220
    :cond_b
    new-instance v3, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 221
    .line 222
    invoke-direct {v3, v9, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 223
    .line 224
    .line 225
    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 226
    .line 227
    mul-int/2addr v0, v6

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-gt v2, v0, :cond_c

    .line 233
    .line 234
    goto/16 :goto_16

    .line 235
    .line 236
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    sub-int/2addr v2, v0

    .line 241
    div-int/2addr v2, v7

    .line 242
    new-array v5, v2, [F

    .line 243
    .line 244
    new-array v6, v2, [F

    .line 245
    .line 246
    move v8, v4

    .line 247
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-ge v0, v9, :cond_e

    .line 252
    .line 253
    rem-int/lit8 v9, v0, 0x2

    .line 254
    .line 255
    if-nez v9, :cond_d

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Ljava/lang/Float;

    .line 262
    .line 263
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    aput v9, v5, v8

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    check-cast v9, Ljava/lang/Float;

    .line 275
    .line 276
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    aput v9, v6, v8

    .line 281
    .line 282
    add-int/lit8 v8, v8, 0x1

    .line 283
    .line 284
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_e
    iget-object v0, v3, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 288
    .line 289
    array-length v1, v0

    .line 290
    if-nez v1, :cond_f

    .line 291
    .line 292
    move-object v8, v5

    .line 293
    goto :goto_b

    .line 294
    :cond_f
    if-nez v2, :cond_10

    .line 295
    .line 296
    move-object v8, v0

    .line 297
    goto :goto_b

    .line 298
    :cond_10
    array-length v1, v0

    .line 299
    add-int/2addr v1, v2

    .line 300
    new-array v8, v1, [F

    .line 301
    .line 302
    move v9, v4

    .line 303
    move v10, v9

    .line 304
    move v11, v10

    .line 305
    move v12, v11

    .line 306
    :goto_6
    if-ge v9, v1, :cond_17

    .line 307
    .line 308
    array-length v13, v0

    .line 309
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 310
    .line 311
    if-ge v11, v13, :cond_11

    .line 312
    .line 313
    aget v13, v0, v11

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_11
    move v13, v14

    .line 317
    :goto_7
    if-ge v12, v2, :cond_12

    .line 318
    .line 319
    aget v14, v5, v12

    .line 320
    .line 321
    :cond_12
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-nez v15, :cond_16

    .line 326
    .line 327
    cmpg-float v15, v13, v14

    .line 328
    .line 329
    if-gez v15, :cond_13

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_13
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 333
    .line 334
    .line 335
    move-result v15

    .line 336
    if-nez v15, :cond_15

    .line 337
    .line 338
    cmpg-float v15, v14, v13

    .line 339
    .line 340
    if-gez v15, :cond_14

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_14
    aput v13, v8, v9

    .line 344
    .line 345
    add-int/lit8 v11, v11, 0x1

    .line 346
    .line 347
    add-int/lit8 v12, v12, 0x1

    .line 348
    .line 349
    add-int/lit8 v10, v10, 0x1

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_15
    :goto_8
    aput v14, v8, v9

    .line 353
    .line 354
    add-int/lit8 v12, v12, 0x1

    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_16
    :goto_9
    aput v13, v8, v9

    .line 358
    .line 359
    add-int/lit8 v11, v11, 0x1

    .line 360
    .line 361
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_17
    if-nez v10, :cond_18

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_18
    sub-int/2addr v1, v10

    .line 368
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    :goto_b
    array-length v1, v8

    .line 373
    new-array v9, v1, [I

    .line 374
    .line 375
    move v10, v4

    .line 376
    :goto_c
    if-ge v10, v1, :cond_26

    .line 377
    .line 378
    aget v11, v8, v10

    .line 379
    .line 380
    invoke-static {v0, v11}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    invoke-static {v5, v11}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    const-string v15, "Unreachable code."

    .line 389
    .line 390
    iget-object v14, v3, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 391
    .line 392
    if-ltz v12, :cond_1f

    .line 393
    .line 394
    if-lez v13, :cond_19

    .line 395
    .line 396
    goto :goto_11

    .line 397
    :cond_19
    aget v12, v14, v12

    .line 398
    .line 399
    if-lt v2, v7, :cond_1e

    .line 400
    .line 401
    aget v13, v5, v4

    .line 402
    .line 403
    cmpg-float v13, v11, v13

    .line 404
    .line 405
    if-gtz v13, :cond_1a

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_1a
    const/4 v13, 0x1

    .line 409
    :goto_d
    if-ge v13, v2, :cond_1d

    .line 410
    .line 411
    aget v14, v5, v13

    .line 412
    .line 413
    cmpg-float v16, v14, v11

    .line 414
    .line 415
    if-gez v16, :cond_1b

    .line 416
    .line 417
    add-int/lit8 v7, v2, -0x1

    .line 418
    .line 419
    if-eq v13, v7, :cond_1b

    .line 420
    .line 421
    add-int/lit8 v13, v13, 0x1

    .line 422
    .line 423
    const/4 v7, 0x2

    .line 424
    goto :goto_d

    .line 425
    :cond_1b
    if-gtz v16, :cond_1c

    .line 426
    .line 427
    aget v7, v6, v13

    .line 428
    .line 429
    const/high16 v11, 0x437f0000    # 255.0f

    .line 430
    .line 431
    mul-float/2addr v7, v11

    .line 432
    float-to-int v7, v7

    .line 433
    goto :goto_e

    .line 434
    :cond_1c
    add-int/lit8 v7, v13, -0x1

    .line 435
    .line 436
    aget v15, v5, v7

    .line 437
    .line 438
    sub-float/2addr v14, v15

    .line 439
    sub-float/2addr v11, v15

    .line 440
    div-float/2addr v11, v14

    .line 441
    aget v7, v6, v7

    .line 442
    .line 443
    aget v13, v6, v13

    .line 444
    .line 445
    sget-object v14, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 446
    .line 447
    sub-float/2addr v13, v7

    .line 448
    mul-float/2addr v13, v11

    .line 449
    add-float/2addr v13, v7

    .line 450
    const/high16 v7, 0x437f0000    # 255.0f

    .line 451
    .line 452
    mul-float/2addr v13, v7

    .line 453
    float-to-int v7, v13

    .line 454
    :goto_e
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    .line 455
    .line 456
    .line 457
    move-result v11

    .line 458
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    invoke-static {v7, v11, v13, v12}, Landroid/graphics/Color;->argb(IIII)I

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    goto :goto_10

    .line 471
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 472
    .line 473
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v0

    .line 477
    :cond_1e
    :goto_f
    aget v7, v6, v4

    .line 478
    .line 479
    const/high16 v11, 0x437f0000    # 255.0f

    .line 480
    .line 481
    mul-float/2addr v7, v11

    .line 482
    float-to-int v7, v7

    .line 483
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    .line 488
    .line 489
    .line 490
    move-result v13

    .line 491
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    .line 492
    .line 493
    .line 494
    move-result v12

    .line 495
    invoke-static {v7, v11, v13, v12}, Landroid/graphics/Color;->argb(IIII)I

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    :goto_10
    aput v7, v9, v10

    .line 500
    .line 501
    const/16 v18, -0x1

    .line 502
    .line 503
    goto/16 :goto_15

    .line 504
    .line 505
    :cond_1f
    :goto_11
    if-gez v13, :cond_20

    .line 506
    .line 507
    add-int/lit8 v13, v13, 0x1

    .line 508
    .line 509
    neg-int v13, v13

    .line 510
    :cond_20
    aget v7, v6, v13

    .line 511
    .line 512
    array-length v12, v14

    .line 513
    const/4 v13, 0x2

    .line 514
    if-lt v12, v13, :cond_25

    .line 515
    .line 516
    aget v12, v0, v4

    .line 517
    .line 518
    cmpl-float v12, v11, v12

    .line 519
    .line 520
    if-nez v12, :cond_21

    .line 521
    .line 522
    goto :goto_13

    .line 523
    :cond_21
    const/4 v12, 0x1

    .line 524
    :goto_12
    array-length v13, v0

    .line 525
    if-ge v12, v13, :cond_24

    .line 526
    .line 527
    aget v13, v0, v12

    .line 528
    .line 529
    cmpg-float v16, v13, v11

    .line 530
    .line 531
    if-gez v16, :cond_22

    .line 532
    .line 533
    array-length v4, v0

    .line 534
    const/16 v18, -0x1

    .line 535
    .line 536
    add-int/lit8 v4, v4, -0x1

    .line 537
    .line 538
    if-eq v12, v4, :cond_23

    .line 539
    .line 540
    add-int/lit8 v12, v12, 0x1

    .line 541
    .line 542
    const/4 v4, 0x0

    .line 543
    goto :goto_12

    .line 544
    :cond_22
    const/16 v18, -0x1

    .line 545
    .line 546
    :cond_23
    add-int/lit8 v4, v12, -0x1

    .line 547
    .line 548
    aget v15, v0, v4

    .line 549
    .line 550
    sub-float/2addr v13, v15

    .line 551
    sub-float/2addr v11, v15

    .line 552
    div-float/2addr v11, v13

    .line 553
    aget v12, v14, v12

    .line 554
    .line 555
    aget v4, v14, v4

    .line 556
    .line 557
    const/high16 v13, 0x437f0000    # 255.0f

    .line 558
    .line 559
    mul-float/2addr v7, v13

    .line 560
    float-to-int v7, v7

    .line 561
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 562
    .line 563
    .line 564
    move-result v13

    .line 565
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    .line 566
    .line 567
    .line 568
    move-result v14

    .line 569
    invoke-static {v11, v13, v14}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 570
    .line 571
    .line 572
    move-result v13

    .line 573
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 574
    .line 575
    .line 576
    move-result v14

    .line 577
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    .line 578
    .line 579
    .line 580
    move-result v15

    .line 581
    invoke-static {v11, v14, v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 582
    .line 583
    .line 584
    move-result v14

    .line 585
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 586
    .line 587
    .line 588
    move-result v4

    .line 589
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    .line 590
    .line 591
    .line 592
    move-result v12

    .line 593
    invoke-static {v11, v4, v12}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 594
    .line 595
    .line 596
    move-result v4

    .line 597
    invoke-static {v7, v13, v14, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    move v7, v4

    .line 602
    const/4 v4, 0x0

    .line 603
    goto :goto_14

    .line 604
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 605
    .line 606
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :cond_25
    :goto_13
    const/16 v18, -0x1

    .line 611
    .line 612
    aget v7, v14, v4

    .line 613
    .line 614
    :goto_14
    aput v7, v9, v10

    .line 615
    .line 616
    :goto_15
    add-int/lit8 v10, v10, 0x1

    .line 617
    .line 618
    const/4 v7, 0x2

    .line 619
    goto/16 :goto_c

    .line 620
    .line 621
    :cond_26
    new-instance v3, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 622
    .line 623
    invoke-direct {v3, v8, v9}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 624
    .line 625
    .line 626
    :goto_16
    return-object v3
.end method
