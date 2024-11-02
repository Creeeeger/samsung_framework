.class public final Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 3

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 7
    .line 8
    const/16 v1, 0xd

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 14
    .line 15
    const/16 v2, 0xe

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1, v0, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    invoke-direct {p0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1, v0, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    return-object p0
.end method

.method public static isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/monet/scheme/Variant;->FIDELITY:Lcom/android/systemui/monet/scheme/Variant;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/android/systemui/monet/scheme/Variant;->CONTENT:Lcom/android/systemui/monet/scheme/Variant;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public static performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/high16 v1, 0x4054000000000000L    # 80.0

    .line 13
    .line 14
    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/monet/hct/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v2, v0, Lcom/android/systemui/monet/hct/Hct;->argb:I

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/systemui/monet/hct/Cam16;->fromInt(I)Lcom/android/systemui/monet/hct/Cam16;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-wide v3, v2, Lcom/android/systemui/monet/hct/Cam16;->chroma:D

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    cmpl-double v7, v3, v5

    .line 29
    .line 30
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 31
    .line 32
    iget-wide v10, v2, Lcom/android/systemui/monet/hct/Cam16;->j:D

    .line 33
    .line 34
    if-eqz v7, :cond_2

    .line 35
    .line 36
    cmpl-double v7, v10, v5

    .line 37
    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    div-double v12, v10, v8

    .line 42
    .line 43
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    div-double/2addr v3, v12

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    move-wide v3, v5

    .line 50
    :goto_2
    iget-wide v12, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->n:D

    .line 51
    .line 52
    const-wide v14, 0x3fd28f5c28f5c28fL    # 0.29

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v12

    .line 61
    const-wide v14, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    sub-double/2addr v14, v12

    .line 67
    const-wide v12, 0x3fe75c28f5c28f5cL    # 0.73

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v12

    .line 76
    div-double/2addr v3, v12

    .line 77
    const-wide v12, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    iget-wide v12, v2, Lcom/android/systemui/monet/hct/Cam16;->hue:D

    .line 87
    .line 88
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 93
    .line 94
    add-double/2addr v14, v12

    .line 95
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v14

    .line 99
    const-wide v16, 0x400e666666666666L    # 3.8

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    add-double v14, v14, v16

    .line 105
    .line 106
    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    .line 107
    .line 108
    mul-double v14, v14, v16

    .line 109
    .line 110
    div-double/2addr v10, v8

    .line 111
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 112
    .line 113
    iget-wide v8, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->c:D

    .line 114
    .line 115
    div-double v16, v16, v8

    .line 116
    .line 117
    iget-wide v7, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->z:D

    .line 118
    .line 119
    div-double v7, v16, v7

    .line 120
    .line 121
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    iget-wide v9, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->aw:D

    .line 126
    .line 127
    mul-double/2addr v7, v9

    .line 128
    const-wide v9, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    mul-double/2addr v14, v9

    .line 134
    iget-wide v9, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->nc:D

    .line 135
    .line 136
    mul-double/2addr v14, v9

    .line 137
    iget-wide v9, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->ncb:D

    .line 138
    .line 139
    mul-double/2addr v14, v9

    .line 140
    iget-wide v9, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->nbb:D

    .line 141
    .line 142
    div-double/2addr v7, v9

    .line 143
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v9

    .line 147
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 148
    .line 149
    .line 150
    move-result-wide v11

    .line 151
    const-wide v16, 0x3fd3851eb851eb85L    # 0.305

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    add-double v16, v7, v16

    .line 157
    .line 158
    const-wide/high16 v19, 0x4037000000000000L    # 23.0

    .line 159
    .line 160
    mul-double v16, v16, v19

    .line 161
    .line 162
    mul-double v16, v16, v3

    .line 163
    .line 164
    mul-double v14, v14, v19

    .line 165
    .line 166
    const-wide/high16 v19, 0x4026000000000000L    # 11.0

    .line 167
    .line 168
    mul-double v19, v19, v3

    .line 169
    .line 170
    mul-double v19, v19, v11

    .line 171
    .line 172
    add-double v19, v19, v14

    .line 173
    .line 174
    const-wide/high16 v13, 0x405b000000000000L    # 108.0

    .line 175
    .line 176
    mul-double/2addr v3, v13

    .line 177
    mul-double/2addr v3, v9

    .line 178
    add-double v3, v3, v19

    .line 179
    .line 180
    div-double v16, v16, v3

    .line 181
    .line 182
    mul-double v11, v11, v16

    .line 183
    .line 184
    mul-double v16, v16, v9

    .line 185
    .line 186
    const-wide v2, 0x407cc00000000000L    # 460.0

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    mul-double/2addr v7, v2

    .line 192
    const-wide v2, 0x407c300000000000L    # 451.0

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    mul-double/2addr v2, v11

    .line 198
    add-double/2addr v2, v7

    .line 199
    const-wide/high16 v9, 0x4072000000000000L    # 288.0

    .line 200
    .line 201
    mul-double v9, v9, v16

    .line 202
    .line 203
    add-double/2addr v9, v2

    .line 204
    const-wide v2, 0x4095ec0000000000L    # 1403.0

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    div-double/2addr v9, v2

    .line 210
    const-wide v13, 0x408bd80000000000L    # 891.0

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    mul-double/2addr v13, v11

    .line 216
    sub-double v13, v7, v13

    .line 217
    .line 218
    const-wide v19, 0x4070500000000000L    # 261.0

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    mul-double v19, v19, v16

    .line 224
    .line 225
    sub-double v13, v13, v19

    .line 226
    .line 227
    div-double/2addr v13, v2

    .line 228
    const-wide v19, 0x406b800000000000L    # 220.0

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    mul-double v11, v11, v19

    .line 234
    .line 235
    sub-double/2addr v7, v11

    .line 236
    const-wide v11, 0x40b89c0000000000L    # 6300.0

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    mul-double v16, v16, v11

    .line 242
    .line 243
    sub-double v7, v7, v16

    .line 244
    .line 245
    div-double/2addr v7, v2

    .line 246
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 247
    .line 248
    .line 249
    move-result-wide v2

    .line 250
    const-wide v11, 0x403b2147ae147ae1L    # 27.13

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    mul-double/2addr v2, v11

    .line 256
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 257
    .line 258
    .line 259
    move-result-wide v15

    .line 260
    const-wide/high16 v19, 0x4079000000000000L    # 400.0

    .line 261
    .line 262
    sub-double v15, v19, v15

    .line 263
    .line 264
    div-double/2addr v2, v15

    .line 265
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    invoke-static {v9, v10}, Ljava/lang/Math;->signum(D)D

    .line 270
    .line 271
    .line 272
    move-result-wide v9

    .line 273
    iget-wide v5, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->fl:D

    .line 274
    .line 275
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    .line 276
    .line 277
    div-double v4, v17, v5

    .line 278
    .line 279
    mul-double/2addr v9, v4

    .line 280
    const-wide v11, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 286
    .line 287
    .line 288
    move-result-wide v2

    .line 289
    mul-double/2addr v2, v9

    .line 290
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 291
    .line 292
    .line 293
    move-result-wide v9

    .line 294
    const-wide v21, 0x403b2147ae147ae1L    # 27.13

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    mul-double v9, v9, v21

    .line 300
    .line 301
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 302
    .line 303
    .line 304
    move-result-wide v23

    .line 305
    sub-double v23, v19, v23

    .line 306
    .line 307
    div-double v9, v9, v23

    .line 308
    .line 309
    const-wide/16 v11, 0x0

    .line 310
    .line 311
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 312
    .line 313
    .line 314
    move-result-wide v9

    .line 315
    invoke-static {v13, v14}, Ljava/lang/Math;->signum(D)D

    .line 316
    .line 317
    .line 318
    move-result-wide v13

    .line 319
    mul-double/2addr v13, v4

    .line 320
    const-wide v11, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 326
    .line 327
    .line 328
    move-result-wide v9

    .line 329
    mul-double/2addr v9, v13

    .line 330
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 331
    .line 332
    .line 333
    move-result-wide v13

    .line 334
    mul-double v13, v13, v21

    .line 335
    .line 336
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 337
    .line 338
    .line 339
    move-result-wide v21

    .line 340
    sub-double v19, v19, v21

    .line 341
    .line 342
    div-double v13, v13, v19

    .line 343
    .line 344
    const-wide/16 v11, 0x0

    .line 345
    .line 346
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    .line 347
    .line 348
    .line 349
    move-result-wide v11

    .line 350
    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    .line 351
    .line 352
    .line 353
    move-result-wide v6

    .line 354
    mul-double/2addr v6, v4

    .line 355
    const-wide v4, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 361
    .line 362
    .line 363
    move-result-wide v4

    .line 364
    mul-double/2addr v4, v6

    .line 365
    iget-object v1, v1, Lcom/android/systemui/monet/hct/ViewingConditions;->rgbD:[D

    .line 366
    .line 367
    const/4 v6, 0x0

    .line 368
    aget-wide v7, v1, v6

    .line 369
    .line 370
    div-double/2addr v2, v7

    .line 371
    const/4 v7, 0x1

    .line 372
    aget-wide v11, v1, v7

    .line 373
    .line 374
    div-double/2addr v9, v11

    .line 375
    const/4 v8, 0x2

    .line 376
    aget-wide v11, v1, v8

    .line 377
    .line 378
    div-double/2addr v4, v11

    .line 379
    sget-object v1, Lcom/android/systemui/monet/hct/Cam16;->CAM16RGB_TO_XYZ:[[D

    .line 380
    .line 381
    aget-object v11, v1, v6

    .line 382
    .line 383
    aget-wide v12, v11, v6

    .line 384
    .line 385
    mul-double/2addr v12, v2

    .line 386
    aget-wide v14, v11, v7

    .line 387
    .line 388
    mul-double/2addr v14, v9

    .line 389
    add-double/2addr v14, v12

    .line 390
    aget-wide v11, v11, v8

    .line 391
    .line 392
    mul-double/2addr v11, v4

    .line 393
    add-double v19, v11, v14

    .line 394
    .line 395
    aget-object v11, v1, v7

    .line 396
    .line 397
    aget-wide v12, v11, v6

    .line 398
    .line 399
    mul-double/2addr v12, v2

    .line 400
    aget-wide v14, v11, v7

    .line 401
    .line 402
    mul-double/2addr v14, v9

    .line 403
    add-double/2addr v14, v12

    .line 404
    aget-wide v11, v11, v8

    .line 405
    .line 406
    mul-double/2addr v11, v4

    .line 407
    add-double v21, v11, v14

    .line 408
    .line 409
    aget-object v1, v1, v8

    .line 410
    .line 411
    aget-wide v11, v1, v6

    .line 412
    .line 413
    mul-double/2addr v2, v11

    .line 414
    aget-wide v11, v1, v7

    .line 415
    .line 416
    mul-double/2addr v9, v11

    .line 417
    add-double/2addr v9, v2

    .line 418
    aget-wide v1, v1, v8

    .line 419
    .line 420
    mul-double/2addr v4, v1

    .line 421
    add-double v23, v4, v9

    .line 422
    .line 423
    const/4 v1, 0x3

    .line 424
    new-array v1, v1, [D

    .line 425
    .line 426
    aput-wide v19, v1, v6

    .line 427
    .line 428
    aput-wide v21, v1, v7

    .line 429
    .line 430
    aput-wide v23, v1, v8

    .line 431
    .line 432
    sget-object v25, Lcom/android/systemui/monet/hct/ViewingConditions;->DEFAULT:Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 433
    .line 434
    invoke-static/range {v19 .. v25}, Lcom/android/systemui/monet/hct/Cam16;->fromXyzInViewingConditions(DDDLcom/android/systemui/monet/hct/ViewingConditions;)Lcom/android/systemui/monet/hct/Cam16;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    iget-wide v8, v2, Lcom/android/systemui/monet/hct/Cam16;->hue:D

    .line 439
    .line 440
    iget-wide v10, v2, Lcom/android/systemui/monet/hct/Cam16;->chroma:D

    .line 441
    .line 442
    aget-wide v1, v1, v7

    .line 443
    .line 444
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 445
    .line 446
    div-double/2addr v1, v3

    .line 447
    invoke-static {v1, v2}, Lcom/android/systemui/monet/utils/ColorUtils;->labF(D)D

    .line 448
    .line 449
    .line 450
    move-result-wide v1

    .line 451
    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    .line 452
    .line 453
    mul-double/2addr v1, v3

    .line 454
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 455
    .line 456
    sub-double v12, v1, v3

    .line 457
    .line 458
    invoke-static/range {v8 .. v13}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iget-wide v2, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 463
    .line 464
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 465
    .line 466
    .line 467
    move-result-wide v2

    .line 468
    const-wide/16 v4, 0x3c

    .line 469
    .line 470
    cmp-long v2, v2, v4

    .line 471
    .line 472
    if-gez v2, :cond_3

    .line 473
    .line 474
    move v2, v7

    .line 475
    goto :goto_3

    .line 476
    :cond_3
    move v2, v6

    .line 477
    :goto_3
    if-eqz v2, :cond_5

    .line 478
    .line 479
    iget-wide v2, v1, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 480
    .line 481
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 482
    .line 483
    .line 484
    move-result-wide v2

    .line 485
    const-wide/16 v4, 0x31

    .line 486
    .line 487
    cmp-long v2, v2, v4

    .line 488
    .line 489
    if-gtz v2, :cond_4

    .line 490
    .line 491
    move v6, v7

    .line 492
    :cond_4
    if-nez v6, :cond_5

    .line 493
    .line 494
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 495
    .line 496
    invoke-static {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->enableLightForeground(D)D

    .line 497
    .line 498
    .line 499
    move-result-wide v0

    .line 500
    return-wide v0

    .line 501
    :cond_5
    iget-wide v0, v1, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 502
    .line 503
    invoke-static {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->enableLightForeground(D)D

    .line 504
    .line 505
    .line 506
    move-result-wide v0

    .line 507
    return-wide v0
.end method


# virtual methods
.method public final error()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/16 v3, 0xc

    .line 16
    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/16 v4, 0xd

    .line 23
    .line 24
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final errorContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/16 v2, 0x12

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/16 v3, 0x1c

    .line 18
    .line 19
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final outlineVariant()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/16 v2, 0x16

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final primary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final primaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    const/16 v3, 0x15

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-static {v0, v2, v3, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final secondary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 9
    .line 10
    const/16 v2, 0x12

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    const/4 v3, 0x7

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final tertiary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/16 v3, 0xe

    .line 17
    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/16 v4, 0xf

    .line 24
    .line 25
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    const/4 v3, 0x5

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/16 v3, 0x18

    .line 16
    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
