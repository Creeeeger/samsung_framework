.class public final Lcom/android/systemui/monet/hct/Hct;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public argb:I

.field public chroma:D

.field public hue:D

.field public tone:D


# direct methods
.method private constructor <init>(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/monet/hct/Hct;->argb:I

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/monet/hct/Cam16;->fromInt(I)Lcom/android/systemui/monet/hct/Cam16;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Cam16;->hue:D

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 13
    .line 14
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Cam16;->chroma:D

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 17
    .line 18
    shr-int/lit8 v0, p1, 0x10

    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    shr-int/lit8 v2, p1, 0x8

    .line 27
    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    .line 30
    invoke-static {v2}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    and-int/lit16 p1, p1, 0xff

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    const/4 p1, 0x3

    .line 41
    new-array p1, p1, [D

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    aput-wide v0, p1, v6

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    aput-wide v2, p1, v0

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    aput-wide v4, p1, v1

    .line 51
    .line 52
    sget-object v1, Lcom/android/systemui/monet/utils/ColorUtils;->SRGB_TO_XYZ:[[D

    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/android/systemui/monet/utils/MathUtils;->matrixMultiply([D[[D)[D

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aget-wide v0, p1, v0

    .line 59
    .line 60
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 61
    .line 62
    div-double/2addr v0, v2

    .line 63
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/ColorUtils;->labF(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    .line 68
    .line 69
    mul-double/2addr v0, v2

    .line 70
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 71
    .line 72
    sub-double/2addr v0, v2

    .line 73
    iput-wide v0, p0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 74
    .line 75
    return-void
.end method

.method public static from(DDD)Lcom/android/systemui/monet/hct/Hct;
    .locals 43

    .line 1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpg-double v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_20

    .line 9
    .line 10
    cmpg-double v0, p4, v0

    .line 11
    .line 12
    if-ltz v0, :cond_20

    .line 13
    .line 14
    const-wide v0, 0x4058fffe5c91d14eL    # 99.9999

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmpl-double v0, p4, v0

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_18

    .line 24
    .line 25
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide v4, 0x4066800000000000L    # 180.0

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    div-double/2addr v0, v4

    .line 35
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    mul-double/2addr v0, v4

    .line 41
    invoke-static/range {p4 .. p5}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    const-wide/high16 v8, 0x4026000000000000L    # 11.0

    .line 50
    .line 51
    mul-double/2addr v6, v8

    .line 52
    sget-object v2, Lcom/android/systemui/monet/hct/ViewingConditions;->DEFAULT:Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 53
    .line 54
    iget-wide v10, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->n:D

    .line 55
    .line 56
    const-wide v12, 0x3fd28f5c28f5c28fL    # 0.29

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 62
    .line 63
    .line 64
    move-result-wide v10

    .line 65
    const-wide v12, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    sub-double/2addr v12, v10

    .line 71
    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 81
    .line 82
    div-double v10, v12, v10

    .line 83
    .line 84
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 85
    .line 86
    add-double v16, v0, v14

    .line 87
    .line 88
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v16

    .line 92
    const-wide v18, 0x400e666666666666L    # 3.8

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    add-double v16, v16, v18

    .line 98
    .line 99
    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    .line 100
    .line 101
    mul-double v16, v16, v18

    .line 102
    .line 103
    const-wide v18, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    mul-double v16, v16, v18

    .line 109
    .line 110
    iget-wide v14, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->nc:D

    .line 111
    .line 112
    mul-double v16, v16, v14

    .line 113
    .line 114
    iget-wide v14, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->ncb:D

    .line 115
    .line 116
    mul-double v16, v16, v14

    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v14

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v20

    .line 126
    const/16 v22, 0x0

    .line 127
    .line 128
    move/from16 v3, v22

    .line 129
    .line 130
    :goto_0
    sget-object v23, Lcom/android/systemui/monet/hct/HctSolver;->Y_FROM_LINRGB:[D

    .line 131
    .line 132
    const/4 v8, 0x5

    .line 133
    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    .line 134
    .line 135
    const-wide/16 v26, 0x0

    .line 136
    .line 137
    const/16 v28, 0x2

    .line 138
    .line 139
    if-ge v3, v8, :cond_8

    .line 140
    .line 141
    div-double v12, v6, v24

    .line 142
    .line 143
    cmpl-double v8, p2, v26

    .line 144
    .line 145
    if-eqz v8, :cond_2

    .line 146
    .line 147
    cmpl-double v8, v6, v26

    .line 148
    .line 149
    if-nez v8, :cond_1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v29

    .line 156
    div-double v29, p2, v29

    .line 157
    .line 158
    move-wide/from16 v31, v0

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    :goto_1
    move-wide/from16 v31, v0

    .line 162
    .line 163
    move-wide/from16 v29, v26

    .line 164
    .line 165
    :goto_2
    mul-double v0, v29, v10

    .line 166
    .line 167
    move-wide/from16 v29, v10

    .line 168
    .line 169
    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    iget-wide v9, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->c:D

    .line 179
    .line 180
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    .line 181
    .line 182
    div-double v9, v33, v9

    .line 183
    .line 184
    move-wide/from16 p4, v6

    .line 185
    .line 186
    iget-wide v6, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->z:D

    .line 187
    .line 188
    div-double/2addr v9, v6

    .line 189
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    iget-wide v9, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->aw:D

    .line 194
    .line 195
    mul-double/2addr v6, v9

    .line 196
    iget-wide v9, v2, Lcom/android/systemui/monet/hct/ViewingConditions;->nbb:D

    .line 197
    .line 198
    div-double/2addr v6, v9

    .line 199
    const-wide v9, 0x3fd3851eb851eb85L    # 0.305

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    add-double/2addr v9, v6

    .line 205
    const-wide/high16 v11, 0x4037000000000000L    # 23.0

    .line 206
    .line 207
    mul-double/2addr v9, v11

    .line 208
    mul-double/2addr v9, v0

    .line 209
    mul-double v11, v11, v16

    .line 210
    .line 211
    const-wide/high16 v35, 0x4026000000000000L    # 11.0

    .line 212
    .line 213
    mul-double v37, v0, v35

    .line 214
    .line 215
    mul-double v37, v37, v20

    .line 216
    .line 217
    add-double v37, v37, v11

    .line 218
    .line 219
    const-wide/high16 v11, 0x405b000000000000L    # 108.0

    .line 220
    .line 221
    mul-double/2addr v0, v11

    .line 222
    mul-double/2addr v0, v14

    .line 223
    add-double v0, v0, v37

    .line 224
    .line 225
    div-double/2addr v9, v0

    .line 226
    mul-double v0, v9, v20

    .line 227
    .line 228
    mul-double/2addr v9, v14

    .line 229
    const-wide v11, 0x407cc00000000000L    # 460.0

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    mul-double/2addr v6, v11

    .line 235
    const-wide v11, 0x407c300000000000L    # 451.0

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    mul-double/2addr v11, v0

    .line 241
    add-double/2addr v11, v6

    .line 242
    const-wide/high16 v37, 0x4072000000000000L    # 288.0

    .line 243
    .line 244
    mul-double v37, v37, v9

    .line 245
    .line 246
    add-double v37, v37, v11

    .line 247
    .line 248
    const-wide v11, 0x4095ec0000000000L    # 1403.0

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    div-double v37, v37, v11

    .line 254
    .line 255
    const-wide v39, 0x408bd80000000000L    # 891.0

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    mul-double v39, v39, v0

    .line 261
    .line 262
    sub-double v39, v6, v39

    .line 263
    .line 264
    const-wide v41, 0x4070500000000000L    # 261.0

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    mul-double v41, v41, v9

    .line 270
    .line 271
    sub-double v39, v39, v41

    .line 272
    .line 273
    div-double v39, v39, v11

    .line 274
    .line 275
    const-wide v41, 0x406b800000000000L    # 220.0

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    mul-double v0, v0, v41

    .line 281
    .line 282
    sub-double/2addr v6, v0

    .line 283
    const-wide v0, 0x40b89c0000000000L    # 6300.0

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    mul-double/2addr v9, v0

    .line 289
    sub-double/2addr v6, v9

    .line 290
    div-double/2addr v6, v11

    .line 291
    invoke-static/range {v37 .. v38}, Lcom/android/systemui/monet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 292
    .line 293
    .line 294
    move-result-wide v0

    .line 295
    invoke-static/range {v39 .. v40}, Lcom/android/systemui/monet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 296
    .line 297
    .line 298
    move-result-wide v9

    .line 299
    invoke-static {v6, v7}, Lcom/android/systemui/monet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 300
    .line 301
    .line 302
    move-result-wide v6

    .line 303
    const/4 v11, 0x3

    .line 304
    new-array v12, v11, [D

    .line 305
    .line 306
    aput-wide v0, v12, v22

    .line 307
    .line 308
    const/4 v0, 0x1

    .line 309
    aput-wide v9, v12, v0

    .line 310
    .line 311
    aput-wide v6, v12, v28

    .line 312
    .line 313
    sget-object v1, Lcom/android/systemui/monet/hct/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 314
    .line 315
    invoke-static {v12, v1}, Lcom/android/systemui/monet/utils/MathUtils;->matrixMultiply([D[[D)[D

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    aget-wide v6, v1, v22

    .line 320
    .line 321
    cmpg-double v8, v6, v26

    .line 322
    .line 323
    if-ltz v8, :cond_9

    .line 324
    .line 325
    aget-wide v9, v1, v0

    .line 326
    .line 327
    cmpg-double v8, v9, v26

    .line 328
    .line 329
    if-ltz v8, :cond_9

    .line 330
    .line 331
    aget-wide v11, v1, v28

    .line 332
    .line 333
    cmpg-double v8, v11, v26

    .line 334
    .line 335
    if-gez v8, :cond_3

    .line 336
    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :cond_3
    aget-wide v37, v23, v22

    .line 340
    .line 341
    aget-wide v39, v23, v0

    .line 342
    .line 343
    aget-wide v41, v23, v28

    .line 344
    .line 345
    mul-double v37, v37, v6

    .line 346
    .line 347
    mul-double v39, v39, v9

    .line 348
    .line 349
    add-double v39, v39, v37

    .line 350
    .line 351
    mul-double v41, v41, v11

    .line 352
    .line 353
    add-double v41, v41, v39

    .line 354
    .line 355
    cmpg-double v0, v41, v26

    .line 356
    .line 357
    if-gtz v0, :cond_4

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_4
    const/4 v0, 0x4

    .line 361
    if-eq v3, v0, :cond_6

    .line 362
    .line 363
    sub-double v6, v41, v4

    .line 364
    .line 365
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    const-wide v11, 0x3f60624dd2f1a9fcL    # 0.002

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    cmpg-double v0, v9, v11

    .line 375
    .line 376
    if-gez v0, :cond_5

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_5
    move-wide/from16 v9, p4

    .line 380
    .line 381
    mul-double/2addr v6, v9

    .line 382
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 383
    .line 384
    mul-double v41, v41, v0

    .line 385
    .line 386
    div-double v6, v6, v41

    .line 387
    .line 388
    sub-double v6, v9, v6

    .line 389
    .line 390
    add-int/lit8 v3, v3, 0x1

    .line 391
    .line 392
    move-wide/from16 v10, v29

    .line 393
    .line 394
    move-wide/from16 v0, v31

    .line 395
    .line 396
    move-wide/from16 v12, v33

    .line 397
    .line 398
    move-wide/from16 v8, v35

    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_6
    :goto_3
    aget-wide v2, v1, v22

    .line 403
    .line 404
    const-wide v6, 0x405900a3d70a3d71L    # 100.01

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    cmpl-double v0, v2, v6

    .line 410
    .line 411
    if-gtz v0, :cond_9

    .line 412
    .line 413
    const/4 v0, 0x1

    .line 414
    aget-wide v8, v1, v0

    .line 415
    .line 416
    cmpl-double v8, v8, v6

    .line 417
    .line 418
    if-gtz v8, :cond_9

    .line 419
    .line 420
    aget-wide v8, v1, v28

    .line 421
    .line 422
    cmpl-double v6, v8, v6

    .line 423
    .line 424
    if-lez v6, :cond_7

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_7
    invoke-static {v2, v3}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    aget-wide v6, v1, v0

    .line 432
    .line 433
    invoke-static {v6, v7}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    aget-wide v6, v1, v28

    .line 438
    .line 439
    invoke-static {v6, v7}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    and-int/lit16 v2, v2, 0xff

    .line 444
    .line 445
    shl-int/lit8 v2, v2, 0x10

    .line 446
    .line 447
    const/high16 v3, -0x1000000

    .line 448
    .line 449
    or-int/2addr v2, v3

    .line 450
    and-int/lit16 v0, v0, 0xff

    .line 451
    .line 452
    const/16 v3, 0x8

    .line 453
    .line 454
    shl-int/2addr v0, v3

    .line 455
    or-int/2addr v0, v2

    .line 456
    and-int/lit16 v1, v1, 0xff

    .line 457
    .line 458
    or-int/2addr v0, v1

    .line 459
    goto :goto_5

    .line 460
    :cond_8
    move-wide/from16 v31, v0

    .line 461
    .line 462
    :cond_9
    :goto_4
    move/from16 v0, v22

    .line 463
    .line 464
    :goto_5
    if-eqz v0, :cond_a

    .line 465
    .line 466
    goto/16 :goto_19

    .line 467
    .line 468
    :cond_a
    const/4 v0, 0x3

    .line 469
    new-array v1, v0, [D

    .line 470
    .line 471
    fill-array-data v1, :array_0

    .line 472
    .line 473
    .line 474
    move-object v0, v1

    .line 475
    move/from16 v2, v22

    .line 476
    .line 477
    move v6, v2

    .line 478
    move-wide/from16 v9, v26

    .line 479
    .line 480
    move-wide v11, v9

    .line 481
    const/4 v3, 0x1

    .line 482
    :goto_6
    const/16 v7, 0xc

    .line 483
    .line 484
    if-ge v6, v7, :cond_1a

    .line 485
    .line 486
    aget-wide v13, v23, v22

    .line 487
    .line 488
    const/4 v7, 0x1

    .line 489
    aget-wide v15, v23, v7

    .line 490
    .line 491
    aget-wide v20, v23, v28

    .line 492
    .line 493
    rem-int/lit8 v8, v6, 0x4

    .line 494
    .line 495
    if-gt v8, v7, :cond_b

    .line 496
    .line 497
    move-wide/from16 v29, v26

    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_b
    move-wide/from16 v29, v24

    .line 501
    .line 502
    :goto_7
    rem-int/lit8 v7, v6, 0x2

    .line 503
    .line 504
    if-nez v7, :cond_c

    .line 505
    .line 506
    move-wide/from16 v33, v26

    .line 507
    .line 508
    goto :goto_8

    .line 509
    :cond_c
    move-wide/from16 v33, v24

    .line 510
    .line 511
    :goto_8
    const/4 v7, 0x4

    .line 512
    if-ge v6, v7, :cond_f

    .line 513
    .line 514
    mul-double v15, v15, v29

    .line 515
    .line 516
    sub-double v15, v4, v15

    .line 517
    .line 518
    mul-double v20, v20, v33

    .line 519
    .line 520
    sub-double v15, v15, v20

    .line 521
    .line 522
    div-double/2addr v15, v13

    .line 523
    cmpg-double v13, v26, v15

    .line 524
    .line 525
    if-gtz v13, :cond_d

    .line 526
    .line 527
    cmpg-double v13, v15, v24

    .line 528
    .line 529
    if-gtz v13, :cond_d

    .line 530
    .line 531
    const/4 v13, 0x1

    .line 532
    goto :goto_9

    .line 533
    :cond_d
    move/from16 v13, v22

    .line 534
    .line 535
    :goto_9
    const/4 v14, 0x3

    .line 536
    new-array v7, v14, [D

    .line 537
    .line 538
    if-eqz v13, :cond_e

    .line 539
    .line 540
    aput-wide v15, v7, v22

    .line 541
    .line 542
    const/4 v8, 0x1

    .line 543
    aput-wide v29, v7, v8

    .line 544
    .line 545
    aput-wide v33, v7, v28

    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_e
    fill-array-data v7, :array_1

    .line 549
    .line 550
    .line 551
    goto :goto_e

    .line 552
    :cond_f
    const/16 v7, 0x8

    .line 553
    .line 554
    if-ge v6, v7, :cond_12

    .line 555
    .line 556
    mul-double v13, v13, v33

    .line 557
    .line 558
    sub-double v13, v4, v13

    .line 559
    .line 560
    mul-double v20, v20, v29

    .line 561
    .line 562
    sub-double v13, v13, v20

    .line 563
    .line 564
    div-double/2addr v13, v15

    .line 565
    cmpg-double v7, v26, v13

    .line 566
    .line 567
    if-gtz v7, :cond_10

    .line 568
    .line 569
    cmpg-double v7, v13, v24

    .line 570
    .line 571
    if-gtz v7, :cond_10

    .line 572
    .line 573
    const/4 v7, 0x1

    .line 574
    goto :goto_a

    .line 575
    :cond_10
    move/from16 v7, v22

    .line 576
    .line 577
    :goto_a
    if-eqz v7, :cond_11

    .line 578
    .line 579
    const/4 v7, 0x3

    .line 580
    new-array v15, v7, [D

    .line 581
    .line 582
    aput-wide v33, v15, v22

    .line 583
    .line 584
    const/4 v8, 0x1

    .line 585
    aput-wide v13, v15, v8

    .line 586
    .line 587
    aput-wide v29, v15, v28

    .line 588
    .line 589
    goto :goto_c

    .line 590
    :cond_11
    const/4 v7, 0x3

    .line 591
    new-array v13, v7, [D

    .line 592
    .line 593
    fill-array-data v13, :array_2

    .line 594
    .line 595
    .line 596
    goto :goto_d

    .line 597
    :cond_12
    mul-double v13, v13, v29

    .line 598
    .line 599
    sub-double v13, v4, v13

    .line 600
    .line 601
    mul-double v15, v15, v33

    .line 602
    .line 603
    sub-double/2addr v13, v15

    .line 604
    div-double v13, v13, v20

    .line 605
    .line 606
    cmpg-double v7, v26, v13

    .line 607
    .line 608
    if-gtz v7, :cond_13

    .line 609
    .line 610
    cmpg-double v7, v13, v24

    .line 611
    .line 612
    if-gtz v7, :cond_13

    .line 613
    .line 614
    const/4 v7, 0x1

    .line 615
    goto :goto_b

    .line 616
    :cond_13
    move/from16 v7, v22

    .line 617
    .line 618
    :goto_b
    if-eqz v7, :cond_14

    .line 619
    .line 620
    const/4 v7, 0x3

    .line 621
    new-array v15, v7, [D

    .line 622
    .line 623
    aput-wide v29, v15, v22

    .line 624
    .line 625
    const/4 v8, 0x1

    .line 626
    aput-wide v33, v15, v8

    .line 627
    .line 628
    aput-wide v13, v15, v28

    .line 629
    .line 630
    :goto_c
    move-object v7, v15

    .line 631
    goto :goto_e

    .line 632
    :cond_14
    const/4 v7, 0x3

    .line 633
    new-array v13, v7, [D

    .line 634
    .line 635
    fill-array-data v13, :array_3

    .line 636
    .line 637
    .line 638
    :goto_d
    move-object v7, v13

    .line 639
    :goto_e
    aget-wide v13, v7, v22

    .line 640
    .line 641
    cmpg-double v13, v13, v26

    .line 642
    .line 643
    if-gez v13, :cond_15

    .line 644
    .line 645
    goto :goto_10

    .line 646
    :cond_15
    invoke-static {v7}, Lcom/android/systemui/monet/hct/HctSolver;->hueOf([D)D

    .line 647
    .line 648
    .line 649
    move-result-wide v13

    .line 650
    if-nez v2, :cond_16

    .line 651
    .line 652
    move-object v0, v7

    .line 653
    move-object v1, v0

    .line 654
    move-wide v9, v13

    .line 655
    move-wide v11, v9

    .line 656
    const/4 v2, 0x1

    .line 657
    goto :goto_10

    .line 658
    :cond_16
    if-nez v3, :cond_17

    .line 659
    .line 660
    move-wide/from16 p0, v9

    .line 661
    .line 662
    move-wide/from16 p2, v13

    .line 663
    .line 664
    move-wide/from16 p4, v11

    .line 665
    .line 666
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/monet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 667
    .line 668
    .line 669
    move-result v15

    .line 670
    if-eqz v15, :cond_19

    .line 671
    .line 672
    :cond_17
    move-wide/from16 p0, v9

    .line 673
    .line 674
    move-wide/from16 p2, v31

    .line 675
    .line 676
    move-wide/from16 p4, v13

    .line 677
    .line 678
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/monet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-eqz v3, :cond_18

    .line 683
    .line 684
    move-object v0, v7

    .line 685
    move-wide v11, v13

    .line 686
    goto :goto_f

    .line 687
    :cond_18
    move-object v1, v7

    .line 688
    move-wide v9, v13

    .line 689
    :goto_f
    move/from16 v3, v22

    .line 690
    .line 691
    :cond_19
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 692
    .line 693
    goto/16 :goto_6

    .line 694
    .line 695
    :cond_1a
    filled-new-array {v1, v0}, [[D

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    aget-object v1, v0, v22

    .line 700
    .line 701
    invoke-static {v1}, Lcom/android/systemui/monet/hct/HctSolver;->hueOf([D)D

    .line 702
    .line 703
    .line 704
    move-result-wide v2

    .line 705
    const/4 v4, 0x1

    .line 706
    aget-object v0, v0, v4

    .line 707
    .line 708
    move/from16 v4, v22

    .line 709
    .line 710
    :goto_11
    const/4 v5, 0x3

    .line 711
    if-ge v4, v5, :cond_1f

    .line 712
    .line 713
    aget-wide v5, v1, v4

    .line 714
    .line 715
    aget-wide v9, v0, v4

    .line 716
    .line 717
    cmpl-double v7, v5, v9

    .line 718
    .line 719
    if-eqz v7, :cond_1e

    .line 720
    .line 721
    cmpg-double v7, v5, v9

    .line 722
    .line 723
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 724
    .line 725
    if-gez v7, :cond_1b

    .line 726
    .line 727
    invoke-static {v5, v6}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 728
    .line 729
    .line 730
    move-result-wide v5

    .line 731
    sub-double/2addr v5, v9

    .line 732
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 733
    .line 734
    .line 735
    move-result-wide v5

    .line 736
    double-to-int v5, v5

    .line 737
    aget-wide v6, v0, v4

    .line 738
    .line 739
    invoke-static {v6, v7}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 740
    .line 741
    .line 742
    move-result-wide v6

    .line 743
    sub-double/2addr v6, v9

    .line 744
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 745
    .line 746
    .line 747
    move-result-wide v6

    .line 748
    :goto_12
    double-to-int v6, v6

    .line 749
    goto :goto_13

    .line 750
    :cond_1b
    invoke-static {v5, v6}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 751
    .line 752
    .line 753
    move-result-wide v5

    .line 754
    sub-double/2addr v5, v9

    .line 755
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 756
    .line 757
    .line 758
    move-result-wide v5

    .line 759
    double-to-int v5, v5

    .line 760
    aget-wide v6, v0, v4

    .line 761
    .line 762
    invoke-static {v6, v7}, Lcom/android/systemui/monet/hct/HctSolver;->trueDelinearized(D)D

    .line 763
    .line 764
    .line 765
    move-result-wide v6

    .line 766
    sub-double/2addr v6, v9

    .line 767
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 768
    .line 769
    .line 770
    move-result-wide v6

    .line 771
    goto :goto_12

    .line 772
    :goto_13
    move/from16 v7, v22

    .line 773
    .line 774
    :goto_14
    const/16 v9, 0x8

    .line 775
    .line 776
    if-ge v7, v9, :cond_1e

    .line 777
    .line 778
    sub-int v9, v6, v5

    .line 779
    .line 780
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 781
    .line 782
    .line 783
    move-result v9

    .line 784
    const/4 v8, 0x1

    .line 785
    if-gt v9, v8, :cond_1c

    .line 786
    .line 787
    goto :goto_16

    .line 788
    :cond_1c
    add-int v9, v5, v6

    .line 789
    .line 790
    int-to-double v9, v9

    .line 791
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 792
    .line 793
    div-double/2addr v9, v11

    .line 794
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 795
    .line 796
    .line 797
    move-result-wide v9

    .line 798
    double-to-int v9, v9

    .line 799
    sget-object v10, Lcom/android/systemui/monet/hct/HctSolver;->CRITICAL_PLANES:[D

    .line 800
    .line 801
    aget-wide v10, v10, v9

    .line 802
    .line 803
    aget-wide v12, v1, v4

    .line 804
    .line 805
    aget-wide v14, v0, v4

    .line 806
    .line 807
    sub-double/2addr v10, v12

    .line 808
    sub-double/2addr v14, v12

    .line 809
    div-double/2addr v10, v14

    .line 810
    const/4 v12, 0x3

    .line 811
    new-array v13, v12, [D

    .line 812
    .line 813
    aget-wide v14, v1, v22

    .line 814
    .line 815
    aget-wide v16, v0, v22

    .line 816
    .line 817
    sub-double v16, v16, v14

    .line 818
    .line 819
    mul-double v16, v16, v10

    .line 820
    .line 821
    add-double v16, v16, v14

    .line 822
    .line 823
    aput-wide v16, v13, v22

    .line 824
    .line 825
    const/4 v8, 0x1

    .line 826
    aget-wide v14, v1, v8

    .line 827
    .line 828
    aget-wide v16, v0, v8

    .line 829
    .line 830
    sub-double v16, v16, v14

    .line 831
    .line 832
    mul-double v16, v16, v10

    .line 833
    .line 834
    add-double v16, v16, v14

    .line 835
    .line 836
    aput-wide v16, v13, v8

    .line 837
    .line 838
    aget-wide v14, v1, v28

    .line 839
    .line 840
    aget-wide v16, v0, v28

    .line 841
    .line 842
    sub-double v16, v16, v14

    .line 843
    .line 844
    mul-double v16, v16, v10

    .line 845
    .line 846
    add-double v16, v16, v14

    .line 847
    .line 848
    aput-wide v16, v13, v28

    .line 849
    .line 850
    invoke-static {v13}, Lcom/android/systemui/monet/hct/HctSolver;->hueOf([D)D

    .line 851
    .line 852
    .line 853
    move-result-wide v10

    .line 854
    move-wide/from16 p0, v2

    .line 855
    .line 856
    move-wide/from16 p2, v31

    .line 857
    .line 858
    move-wide/from16 p4, v10

    .line 859
    .line 860
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/monet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 861
    .line 862
    .line 863
    move-result v12

    .line 864
    if-eqz v12, :cond_1d

    .line 865
    .line 866
    move v6, v9

    .line 867
    move-object v0, v13

    .line 868
    goto :goto_15

    .line 869
    :cond_1d
    move v5, v9

    .line 870
    move-wide v2, v10

    .line 871
    move-object v1, v13

    .line 872
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 873
    .line 874
    goto :goto_14

    .line 875
    :cond_1e
    :goto_16
    add-int/lit8 v4, v4, 0x1

    .line 876
    .line 877
    goto/16 :goto_11

    .line 878
    .line 879
    :cond_1f
    move v2, v5

    .line 880
    new-array v2, v2, [D

    .line 881
    .line 882
    aget-wide v3, v1, v22

    .line 883
    .line 884
    aget-wide v5, v0, v22

    .line 885
    .line 886
    add-double/2addr v3, v5

    .line 887
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 888
    .line 889
    div-double/2addr v3, v5

    .line 890
    aput-wide v3, v2, v22

    .line 891
    .line 892
    const/4 v7, 0x1

    .line 893
    aget-wide v8, v1, v7

    .line 894
    .line 895
    aget-wide v10, v0, v7

    .line 896
    .line 897
    add-double/2addr v8, v10

    .line 898
    div-double/2addr v8, v5

    .line 899
    aput-wide v8, v2, v7

    .line 900
    .line 901
    aget-wide v8, v1, v28

    .line 902
    .line 903
    aget-wide v0, v0, v28

    .line 904
    .line 905
    add-double/2addr v8, v0

    .line 906
    div-double/2addr v8, v5

    .line 907
    aput-wide v8, v2, v28

    .line 908
    .line 909
    invoke-static {v3, v4}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    aget-wide v3, v2, v7

    .line 914
    .line 915
    invoke-static {v3, v4}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    aget-wide v2, v2, v28

    .line 920
    .line 921
    invoke-static {v2, v3}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 922
    .line 923
    .line 924
    move-result v2

    .line 925
    and-int/lit16 v0, v0, 0xff

    .line 926
    .line 927
    shl-int/lit8 v0, v0, 0x10

    .line 928
    .line 929
    const/high16 v3, -0x1000000

    .line 930
    .line 931
    or-int/2addr v0, v3

    .line 932
    and-int/lit16 v1, v1, 0xff

    .line 933
    .line 934
    const/16 v3, 0x8

    .line 935
    .line 936
    shl-int/2addr v1, v3

    .line 937
    or-int/2addr v0, v1

    .line 938
    and-int/lit16 v1, v2, 0xff

    .line 939
    .line 940
    :goto_17
    or-int/2addr v0, v1

    .line 941
    goto :goto_19

    .line 942
    :cond_20
    :goto_18
    invoke-static/range {p4 .. p5}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 943
    .line 944
    .line 945
    move-result-wide v0

    .line 946
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/ColorUtils;->delinearized(D)I

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    and-int/lit16 v0, v0, 0xff

    .line 951
    .line 952
    shl-int/lit8 v1, v0, 0x10

    .line 953
    .line 954
    const/high16 v2, -0x1000000

    .line 955
    .line 956
    or-int/2addr v1, v2

    .line 957
    shl-int/lit8 v2, v0, 0x8

    .line 958
    .line 959
    or-int/2addr v1, v2

    .line 960
    goto :goto_17

    .line 961
    :goto_19
    new-instance v1, Lcom/android/systemui/monet/hct/Hct;

    .line 962
    .line 963
    invoke-direct {v1, v0}, Lcom/android/systemui/monet/hct/Hct;-><init>(I)V

    .line 964
    .line 965
    .line 966
    return-object v1

    .line 967
    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    :array_3
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static fromInt(I)Lcom/android/systemui/monet/hct/Hct;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/monet/hct/Hct;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/monet/hct/Hct;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
