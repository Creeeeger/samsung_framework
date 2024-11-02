.class public final Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-direct {v5, v6, v0, v6, v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    const/4 v2, 0x1

    .line 32
    add-int/2addr v0, v2

    .line 33
    div-int/lit8 v0, v0, 0x2

    .line 34
    .line 35
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    .line 36
    .line 37
    mul-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    .line 44
    .line 45
    invoke-direct {v7, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_20

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    sub-int/2addr v8, v2

    .line 64
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 69
    .line 70
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 71
    .line 72
    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 73
    .line 74
    sub-int v11, v9, v10

    .line 75
    .line 76
    if-lt v11, v2, :cond_17

    .line 77
    .line 78
    iget v13, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 79
    .line 80
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 81
    .line 82
    sub-int/2addr v13, v14

    .line 83
    if-ge v13, v2, :cond_0

    .line 84
    .line 85
    goto/16 :goto_11

    .line 86
    .line 87
    :cond_0
    add-int/2addr v13, v11

    .line 88
    add-int/2addr v13, v2

    .line 89
    div-int/lit8 v13, v13, 0x2

    .line 90
    .line 91
    iget v11, v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    .line 92
    .line 93
    add-int v14, v2, v11

    .line 94
    .line 95
    iget-object v15, v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    .line 96
    .line 97
    aput v10, v15, v14

    .line 98
    .line 99
    iget v10, v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    .line 100
    .line 101
    add-int v14, v2, v10

    .line 102
    .line 103
    iget-object v12, v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    .line 104
    .line 105
    aput v9, v12, v14

    .line 106
    .line 107
    move v9, v6

    .line 108
    :goto_1
    if-ge v9, v13, :cond_17

    .line 109
    .line 110
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 111
    .line 112
    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 113
    .line 114
    sub-int/2addr v14, v6

    .line 115
    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 116
    .line 117
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 118
    .line 119
    sub-int/2addr v6, v2

    .line 120
    sub-int/2addr v14, v6

    .line 121
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    rem-int/lit8 v2, v2, 0x2

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    if-ne v2, v6, :cond_1

    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    const/4 v2, 0x0

    .line 133
    :goto_2
    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 134
    .line 135
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 136
    .line 137
    sub-int/2addr v6, v14

    .line 138
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 139
    .line 140
    move/from16 v16, v13

    .line 141
    .line 142
    iget v13, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 143
    .line 144
    sub-int/2addr v14, v13

    .line 145
    sub-int/2addr v6, v14

    .line 146
    neg-int v13, v9

    .line 147
    move v14, v13

    .line 148
    :goto_3
    if-gt v14, v9, :cond_a

    .line 149
    .line 150
    if-eq v14, v13, :cond_4

    .line 151
    .line 152
    if-eq v14, v9, :cond_2

    .line 153
    .line 154
    move-object/from16 v17, v4

    .line 155
    .line 156
    add-int/lit8 v4, v14, 0x1

    .line 157
    .line 158
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    move-object/from16 v18, v0

    .line 163
    .line 164
    add-int/lit8 v0, v14, -0x1

    .line 165
    .line 166
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-le v4, v0, :cond_3

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_2
    move-object/from16 v18, v0

    .line 174
    .line 175
    move-object/from16 v17, v4

    .line 176
    .line 177
    :cond_3
    add-int/lit8 v0, v14, -0x1

    .line 178
    .line 179
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    add-int/lit8 v4, v0, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_4
    move-object/from16 v18, v0

    .line 187
    .line 188
    move-object/from16 v17, v4

    .line 189
    .line 190
    :goto_4
    add-int/lit8 v0, v14, 0x1

    .line 191
    .line 192
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    move v4, v0

    .line 197
    :goto_5
    move-object/from16 v19, v3

    .line 198
    .line 199
    iget v3, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 200
    .line 201
    move-object/from16 v20, v5

    .line 202
    .line 203
    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 204
    .line 205
    sub-int v5, v4, v5

    .line 206
    .line 207
    add-int/2addr v5, v3

    .line 208
    sub-int/2addr v5, v14

    .line 209
    if-eqz v9, :cond_6

    .line 210
    .line 211
    if-eq v4, v0, :cond_5

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_5
    add-int/lit8 v3, v5, -0x1

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_6
    :goto_6
    move v3, v5

    .line 218
    :goto_7
    move-object/from16 v21, v12

    .line 219
    .line 220
    :goto_8
    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 221
    .line 222
    if-ge v4, v12, :cond_7

    .line 223
    .line 224
    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 225
    .line 226
    if-ge v5, v12, :cond_7

    .line 227
    .line 228
    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_7

    .line 233
    .line 234
    add-int/lit8 v4, v4, 0x1

    .line 235
    .line 236
    add-int/lit8 v5, v5, 0x1

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_7
    add-int v12, v14, v11

    .line 240
    .line 241
    aput v4, v15, v12

    .line 242
    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    sub-int v12, v6, v14

    .line 246
    .line 247
    move/from16 v22, v2

    .line 248
    .line 249
    add-int/lit8 v2, v13, 0x1

    .line 250
    .line 251
    if-lt v12, v2, :cond_9

    .line 252
    .line 253
    add-int/lit8 v2, v9, -0x1

    .line 254
    .line 255
    if-gt v12, v2, :cond_9

    .line 256
    .line 257
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-gt v2, v4, :cond_9

    .line 262
    .line 263
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 264
    .line 265
    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 266
    .line 267
    .line 268
    iput v0, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 269
    .line 270
    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 271
    .line 272
    iput v4, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 273
    .line 274
    iput v5, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 275
    .line 276
    const/4 v0, 0x0

    .line 277
    iput-boolean v0, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_8
    move/from16 v22, v2

    .line 281
    .line 282
    :cond_9
    const/4 v0, 0x0

    .line 283
    add-int/lit8 v14, v14, 0x2

    .line 284
    .line 285
    move-object/from16 v4, v17

    .line 286
    .line 287
    move-object/from16 v0, v18

    .line 288
    .line 289
    move-object/from16 v3, v19

    .line 290
    .line 291
    move-object/from16 v5, v20

    .line 292
    .line 293
    move-object/from16 v12, v21

    .line 294
    .line 295
    move/from16 v2, v22

    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_a
    move-object/from16 v18, v0

    .line 300
    .line 301
    move-object/from16 v19, v3

    .line 302
    .line 303
    move-object/from16 v17, v4

    .line 304
    .line 305
    move-object/from16 v20, v5

    .line 306
    .line 307
    move-object/from16 v21, v12

    .line 308
    .line 309
    const/4 v0, 0x0

    .line 310
    const/4 v2, 0x0

    .line 311
    :goto_9
    if-eqz v2, :cond_b

    .line 312
    .line 313
    move-object v12, v2

    .line 314
    move-object/from16 v11, v20

    .line 315
    .line 316
    goto/16 :goto_12

    .line 317
    .line 318
    :cond_b
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 319
    .line 320
    iget v3, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 321
    .line 322
    sub-int/2addr v2, v3

    .line 323
    iget v3, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 324
    .line 325
    iget v4, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 326
    .line 327
    sub-int/2addr v3, v4

    .line 328
    sub-int/2addr v2, v3

    .line 329
    rem-int/lit8 v3, v2, 0x2

    .line 330
    .line 331
    if-nez v3, :cond_c

    .line 332
    .line 333
    const/4 v6, 0x1

    .line 334
    goto :goto_a

    .line 335
    :cond_c
    move v6, v0

    .line 336
    :goto_a
    move v3, v13

    .line 337
    :goto_b
    if-gt v3, v9, :cond_15

    .line 338
    .line 339
    if-eq v3, v13, :cond_e

    .line 340
    .line 341
    if-eq v3, v9, :cond_d

    .line 342
    .line 343
    add-int/lit8 v4, v3, 0x1

    .line 344
    .line 345
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    add-int/lit8 v5, v3, -0x1

    .line 350
    .line 351
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-ge v4, v5, :cond_d

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_d
    add-int/lit8 v4, v3, -0x1

    .line 359
    .line 360
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    add-int/lit8 v5, v4, -0x1

    .line 365
    .line 366
    goto :goto_d

    .line 367
    :cond_e
    :goto_c
    add-int/lit8 v4, v3, 0x1

    .line 368
    .line 369
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    move v5, v4

    .line 374
    :goto_d
    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 375
    .line 376
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 377
    .line 378
    sub-int/2addr v14, v5

    .line 379
    sub-int/2addr v14, v3

    .line 380
    sub-int/2addr v12, v14

    .line 381
    if-eqz v9, :cond_10

    .line 382
    .line 383
    if-eq v5, v4, :cond_f

    .line 384
    .line 385
    goto :goto_e

    .line 386
    :cond_f
    add-int/lit8 v14, v12, 0x1

    .line 387
    .line 388
    goto :goto_f

    .line 389
    :cond_10
    :goto_e
    move v14, v12

    .line 390
    :goto_f
    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 391
    .line 392
    if-le v5, v0, :cond_11

    .line 393
    .line 394
    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 395
    .line 396
    if-le v12, v0, :cond_11

    .line 397
    .line 398
    add-int/lit8 v0, v5, -0x1

    .line 399
    .line 400
    move/from16 v22, v11

    .line 401
    .line 402
    add-int/lit8 v11, v12, -0x1

    .line 403
    .line 404
    invoke-virtual {v1, v0, v11}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 405
    .line 406
    .line 407
    move-result v23

    .line 408
    if-eqz v23, :cond_12

    .line 409
    .line 410
    move v5, v0

    .line 411
    move v12, v11

    .line 412
    move/from16 v11, v22

    .line 413
    .line 414
    goto :goto_f

    .line 415
    :cond_11
    move/from16 v22, v11

    .line 416
    .line 417
    :cond_12
    add-int v0, v3, v10

    .line 418
    .line 419
    aput v5, v21, v0

    .line 420
    .line 421
    if-eqz v6, :cond_13

    .line 422
    .line 423
    sub-int v0, v2, v3

    .line 424
    .line 425
    if-lt v0, v13, :cond_13

    .line 426
    .line 427
    if-gt v0, v9, :cond_13

    .line 428
    .line 429
    move-object/from16 v11, v20

    .line 430
    .line 431
    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-lt v0, v5, :cond_14

    .line 436
    .line 437
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 438
    .line 439
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 440
    .line 441
    .line 442
    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 443
    .line 444
    iput v12, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 445
    .line 446
    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 447
    .line 448
    iput v14, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 449
    .line 450
    const/4 v2, 0x1

    .line 451
    iput-boolean v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_13
    move-object/from16 v11, v20

    .line 455
    .line 456
    :cond_14
    add-int/lit8 v3, v3, 0x2

    .line 457
    .line 458
    move-object/from16 v20, v11

    .line 459
    .line 460
    move/from16 v11, v22

    .line 461
    .line 462
    const/4 v0, 0x0

    .line 463
    goto :goto_b

    .line 464
    :cond_15
    move/from16 v22, v11

    .line 465
    .line 466
    move-object/from16 v11, v20

    .line 467
    .line 468
    const/4 v0, 0x0

    .line 469
    :goto_10
    if-eqz v0, :cond_16

    .line 470
    .line 471
    move-object v12, v0

    .line 472
    goto :goto_12

    .line 473
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 474
    .line 475
    move-object v5, v11

    .line 476
    move/from16 v13, v16

    .line 477
    .line 478
    move-object/from16 v4, v17

    .line 479
    .line 480
    move-object/from16 v0, v18

    .line 481
    .line 482
    move-object/from16 v3, v19

    .line 483
    .line 484
    move-object/from16 v12, v21

    .line 485
    .line 486
    move/from16 v11, v22

    .line 487
    .line 488
    const/4 v2, 0x1

    .line 489
    const/4 v6, 0x0

    .line 490
    goto/16 :goto_1

    .line 491
    .line 492
    :cond_17
    :goto_11
    move-object/from16 v18, v0

    .line 493
    .line 494
    move-object/from16 v19, v3

    .line 495
    .line 496
    move-object/from16 v17, v4

    .line 497
    .line 498
    move-object v11, v5

    .line 499
    const/4 v12, 0x0

    .line 500
    :goto_12
    if-eqz v12, :cond_1f

    .line 501
    .line 502
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-lez v0, :cond_1d

    .line 507
    .line 508
    iget v0, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 509
    .line 510
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 511
    .line 512
    sub-int/2addr v0, v2

    .line 513
    iget v3, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 514
    .line 515
    iget v4, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 516
    .line 517
    sub-int/2addr v3, v4

    .line 518
    if-eq v0, v3, :cond_18

    .line 519
    .line 520
    const/4 v6, 0x1

    .line 521
    goto :goto_13

    .line 522
    :cond_18
    const/4 v6, 0x0

    .line 523
    :goto_13
    if-eqz v6, :cond_1c

    .line 524
    .line 525
    iget-boolean v5, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 526
    .line 527
    if-eqz v5, :cond_19

    .line 528
    .line 529
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 530
    .line 531
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 536
    .line 537
    .line 538
    goto :goto_15

    .line 539
    :cond_19
    if-le v0, v3, :cond_1a

    .line 540
    .line 541
    const/4 v6, 0x1

    .line 542
    goto :goto_14

    .line 543
    :cond_1a
    const/4 v6, 0x0

    .line 544
    :goto_14
    if-eqz v6, :cond_1b

    .line 545
    .line 546
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 547
    .line 548
    add-int/lit8 v2, v2, 0x1

    .line 549
    .line 550
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 555
    .line 556
    .line 557
    goto :goto_15

    .line 558
    :cond_1b
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 559
    .line 560
    add-int/lit8 v4, v4, 0x1

    .line 561
    .line 562
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 567
    .line 568
    .line 569
    goto :goto_15

    .line 570
    :cond_1c
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 571
    .line 572
    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 573
    .line 574
    .line 575
    :goto_15
    move-object/from16 v2, v19

    .line 576
    .line 577
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    goto :goto_16

    .line 581
    :cond_1d
    move-object/from16 v2, v19

    .line 582
    .line 583
    :goto_16
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    if-eqz v0, :cond_1e

    .line 588
    .line 589
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 590
    .line 591
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    .line 592
    .line 593
    .line 594
    move-object/from16 v4, v18

    .line 595
    .line 596
    const/4 v3, 0x1

    .line 597
    goto :goto_17

    .line 598
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    const/4 v3, 0x1

    .line 603
    sub-int/2addr v0, v3

    .line 604
    move-object/from16 v4, v18

    .line 605
    .line 606
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 611
    .line 612
    :goto_17
    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 613
    .line 614
    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 615
    .line 616
    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 617
    .line 618
    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 619
    .line 620
    iget v5, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 621
    .line 622
    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 623
    .line 624
    iget v5, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 625
    .line 626
    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 627
    .line 628
    move-object/from16 v5, v17

    .line 629
    .line 630
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 634
    .line 635
    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 636
    .line 637
    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 638
    .line 639
    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 640
    .line 641
    iget v0, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 642
    .line 643
    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 644
    .line 645
    iget v0, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 646
    .line 647
    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 648
    .line 649
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    goto :goto_18

    .line 653
    :cond_1f
    move-object/from16 v5, v17

    .line 654
    .line 655
    move-object/from16 v4, v18

    .line 656
    .line 657
    move-object/from16 v2, v19

    .line 658
    .line 659
    const/4 v3, 0x1

    .line 660
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    :goto_18
    move-object v0, v4

    .line 664
    move-object v4, v5

    .line 665
    move-object v5, v11

    .line 666
    const/4 v6, 0x0

    .line 667
    move/from16 v24, v3

    .line 668
    .line 669
    move-object v3, v2

    .line 670
    move/from16 v2, v24

    .line 671
    .line 672
    goto/16 :goto_0

    .line 673
    .line 674
    :cond_20
    move-object v2, v3

    .line 675
    move-object v11, v5

    .line 676
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    .line 677
    .line 678
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 679
    .line 680
    .line 681
    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 682
    .line 683
    iget-object v3, v11, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    .line 684
    .line 685
    iget-object v4, v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    .line 686
    .line 687
    const/4 v5, 0x1

    .line 688
    move-object v0, v6

    .line 689
    move-object/from16 v1, p0

    .line 690
    .line 691
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    .line 692
    .line 693
    .line 694
    return-object v6
.end method
