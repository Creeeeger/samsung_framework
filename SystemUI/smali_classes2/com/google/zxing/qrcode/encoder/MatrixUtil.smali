.class public final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final POSITION_ADJUSTMENT_PATTERN:[[I

.field public static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field public static final POSITION_DETECTION_PATTERN:[[I

.field public static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 44

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [I

    .line 8
    .line 9
    fill-array-data v2, :array_1

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [I

    .line 13
    .line 14
    fill-array-data v3, :array_2

    .line 15
    .line 16
    .line 17
    new-array v4, v0, [I

    .line 18
    .line 19
    fill-array-data v4, :array_3

    .line 20
    .line 21
    .line 22
    new-array v5, v0, [I

    .line 23
    .line 24
    fill-array-data v5, :array_4

    .line 25
    .line 26
    .line 27
    new-array v6, v0, [I

    .line 28
    .line 29
    fill-array-data v6, :array_5

    .line 30
    .line 31
    .line 32
    new-array v7, v0, [I

    .line 33
    .line 34
    fill-array-data v7, :array_6

    .line 35
    .line 36
    .line 37
    filled-new-array/range {v1 .. v7}, [[I

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    filled-new-array {v1, v1, v1, v1, v1}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    filled-new-array {v1, v3, v3, v3, v1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    filled-new-array {v1, v3, v1, v3, v1}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    filled-new-array {v1, v3, v3, v3, v1}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    filled-new-array {v1, v1, v1, v1, v1}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    filled-new-array {v2, v4, v5, v6, v7}, [[I

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 70
    .line 71
    new-array v2, v0, [I

    .line 72
    .line 73
    move-object v4, v2

    .line 74
    fill-array-data v2, :array_7

    .line 75
    .line 76
    .line 77
    new-array v2, v0, [I

    .line 78
    .line 79
    move-object v5, v2

    .line 80
    fill-array-data v2, :array_8

    .line 81
    .line 82
    .line 83
    new-array v2, v0, [I

    .line 84
    .line 85
    move-object v6, v2

    .line 86
    fill-array-data v2, :array_9

    .line 87
    .line 88
    .line 89
    new-array v2, v0, [I

    .line 90
    .line 91
    move-object v7, v2

    .line 92
    fill-array-data v2, :array_a

    .line 93
    .line 94
    .line 95
    new-array v2, v0, [I

    .line 96
    .line 97
    move-object v8, v2

    .line 98
    fill-array-data v2, :array_b

    .line 99
    .line 100
    .line 101
    new-array v2, v0, [I

    .line 102
    .line 103
    move-object v9, v2

    .line 104
    fill-array-data v2, :array_c

    .line 105
    .line 106
    .line 107
    new-array v2, v0, [I

    .line 108
    .line 109
    move-object v10, v2

    .line 110
    fill-array-data v2, :array_d

    .line 111
    .line 112
    .line 113
    new-array v2, v0, [I

    .line 114
    .line 115
    move-object v11, v2

    .line 116
    fill-array-data v2, :array_e

    .line 117
    .line 118
    .line 119
    new-array v2, v0, [I

    .line 120
    .line 121
    move-object v12, v2

    .line 122
    fill-array-data v2, :array_f

    .line 123
    .line 124
    .line 125
    new-array v2, v0, [I

    .line 126
    .line 127
    move-object v13, v2

    .line 128
    fill-array-data v2, :array_10

    .line 129
    .line 130
    .line 131
    new-array v2, v0, [I

    .line 132
    .line 133
    move-object v14, v2

    .line 134
    fill-array-data v2, :array_11

    .line 135
    .line 136
    .line 137
    new-array v2, v0, [I

    .line 138
    .line 139
    move-object v15, v2

    .line 140
    fill-array-data v2, :array_12

    .line 141
    .line 142
    .line 143
    new-array v2, v0, [I

    .line 144
    .line 145
    move-object/from16 v16, v2

    .line 146
    .line 147
    fill-array-data v2, :array_13

    .line 148
    .line 149
    .line 150
    new-array v2, v0, [I

    .line 151
    .line 152
    move-object/from16 v17, v2

    .line 153
    .line 154
    fill-array-data v2, :array_14

    .line 155
    .line 156
    .line 157
    new-array v2, v0, [I

    .line 158
    .line 159
    move-object/from16 v18, v2

    .line 160
    .line 161
    fill-array-data v2, :array_15

    .line 162
    .line 163
    .line 164
    new-array v2, v0, [I

    .line 165
    .line 166
    move-object/from16 v19, v2

    .line 167
    .line 168
    fill-array-data v2, :array_16

    .line 169
    .line 170
    .line 171
    new-array v2, v0, [I

    .line 172
    .line 173
    move-object/from16 v20, v2

    .line 174
    .line 175
    fill-array-data v2, :array_17

    .line 176
    .line 177
    .line 178
    new-array v2, v0, [I

    .line 179
    .line 180
    move-object/from16 v21, v2

    .line 181
    .line 182
    fill-array-data v2, :array_18

    .line 183
    .line 184
    .line 185
    new-array v2, v0, [I

    .line 186
    .line 187
    move-object/from16 v22, v2

    .line 188
    .line 189
    fill-array-data v2, :array_19

    .line 190
    .line 191
    .line 192
    new-array v2, v0, [I

    .line 193
    .line 194
    move-object/from16 v23, v2

    .line 195
    .line 196
    fill-array-data v2, :array_1a

    .line 197
    .line 198
    .line 199
    new-array v2, v0, [I

    .line 200
    .line 201
    move-object/from16 v24, v2

    .line 202
    .line 203
    fill-array-data v2, :array_1b

    .line 204
    .line 205
    .line 206
    new-array v2, v0, [I

    .line 207
    .line 208
    move-object/from16 v25, v2

    .line 209
    .line 210
    fill-array-data v2, :array_1c

    .line 211
    .line 212
    .line 213
    new-array v2, v0, [I

    .line 214
    .line 215
    move-object/from16 v26, v2

    .line 216
    .line 217
    fill-array-data v2, :array_1d

    .line 218
    .line 219
    .line 220
    new-array v2, v0, [I

    .line 221
    .line 222
    move-object/from16 v27, v2

    .line 223
    .line 224
    fill-array-data v2, :array_1e

    .line 225
    .line 226
    .line 227
    new-array v2, v0, [I

    .line 228
    .line 229
    move-object/from16 v28, v2

    .line 230
    .line 231
    fill-array-data v2, :array_1f

    .line 232
    .line 233
    .line 234
    new-array v2, v0, [I

    .line 235
    .line 236
    move-object/from16 v29, v2

    .line 237
    .line 238
    fill-array-data v2, :array_20

    .line 239
    .line 240
    .line 241
    new-array v2, v0, [I

    .line 242
    .line 243
    move-object/from16 v30, v2

    .line 244
    .line 245
    fill-array-data v2, :array_21

    .line 246
    .line 247
    .line 248
    new-array v2, v0, [I

    .line 249
    .line 250
    move-object/from16 v31, v2

    .line 251
    .line 252
    fill-array-data v2, :array_22

    .line 253
    .line 254
    .line 255
    new-array v2, v0, [I

    .line 256
    .line 257
    move-object/from16 v32, v2

    .line 258
    .line 259
    fill-array-data v2, :array_23

    .line 260
    .line 261
    .line 262
    new-array v2, v0, [I

    .line 263
    .line 264
    move-object/from16 v33, v2

    .line 265
    .line 266
    fill-array-data v2, :array_24

    .line 267
    .line 268
    .line 269
    new-array v2, v0, [I

    .line 270
    .line 271
    move-object/from16 v34, v2

    .line 272
    .line 273
    fill-array-data v2, :array_25

    .line 274
    .line 275
    .line 276
    new-array v2, v0, [I

    .line 277
    .line 278
    move-object/from16 v35, v2

    .line 279
    .line 280
    fill-array-data v2, :array_26

    .line 281
    .line 282
    .line 283
    new-array v2, v0, [I

    .line 284
    .line 285
    move-object/from16 v36, v2

    .line 286
    .line 287
    fill-array-data v2, :array_27

    .line 288
    .line 289
    .line 290
    new-array v2, v0, [I

    .line 291
    .line 292
    move-object/from16 v37, v2

    .line 293
    .line 294
    fill-array-data v2, :array_28

    .line 295
    .line 296
    .line 297
    new-array v2, v0, [I

    .line 298
    .line 299
    move-object/from16 v38, v2

    .line 300
    .line 301
    fill-array-data v2, :array_29

    .line 302
    .line 303
    .line 304
    new-array v2, v0, [I

    .line 305
    .line 306
    move-object/from16 v39, v2

    .line 307
    .line 308
    fill-array-data v2, :array_2a

    .line 309
    .line 310
    .line 311
    new-array v2, v0, [I

    .line 312
    .line 313
    move-object/from16 v40, v2

    .line 314
    .line 315
    fill-array-data v2, :array_2b

    .line 316
    .line 317
    .line 318
    new-array v2, v0, [I

    .line 319
    .line 320
    move-object/from16 v41, v2

    .line 321
    .line 322
    fill-array-data v2, :array_2c

    .line 323
    .line 324
    .line 325
    new-array v2, v0, [I

    .line 326
    .line 327
    move-object/from16 v42, v2

    .line 328
    .line 329
    fill-array-data v2, :array_2d

    .line 330
    .line 331
    .line 332
    new-array v2, v0, [I

    .line 333
    .line 334
    move-object/from16 v43, v2

    .line 335
    .line 336
    fill-array-data v2, :array_2e

    .line 337
    .line 338
    .line 339
    filled-new-array/range {v4 .. v43}, [[I

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 344
    .line 345
    const/16 v2, 0x8

    .line 346
    .line 347
    filled-new-array {v2, v3}, [I

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    filled-new-array {v2, v1}, [I

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    const/4 v6, 0x2

    .line 356
    filled-new-array {v2, v6}, [I

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    const/4 v8, 0x3

    .line 361
    filled-new-array {v2, v8}, [I

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    const/4 v10, 0x4

    .line 366
    filled-new-array {v2, v10}, [I

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    const/4 v12, 0x5

    .line 371
    filled-new-array {v2, v12}, [I

    .line 372
    .line 373
    .line 374
    move-result-object v13

    .line 375
    filled-new-array {v2, v0}, [I

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    filled-new-array {v2, v2}, [I

    .line 380
    .line 381
    .line 382
    move-result-object v15

    .line 383
    filled-new-array {v0, v2}, [I

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    filled-new-array {v12, v2}, [I

    .line 388
    .line 389
    .line 390
    move-result-object v16

    .line 391
    filled-new-array {v10, v2}, [I

    .line 392
    .line 393
    .line 394
    move-result-object v17

    .line 395
    filled-new-array {v8, v2}, [I

    .line 396
    .line 397
    .line 398
    move-result-object v18

    .line 399
    filled-new-array {v6, v2}, [I

    .line 400
    .line 401
    .line 402
    move-result-object v19

    .line 403
    filled-new-array {v1, v2}, [I

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    filled-new-array {v3, v2}, [I

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    move-object v6, v7

    .line 412
    move-object v7, v9

    .line 413
    move-object v8, v11

    .line 414
    move-object v9, v13

    .line 415
    move-object v10, v14

    .line 416
    move-object v11, v15

    .line 417
    move-object v12, v0

    .line 418
    move-object/from16 v13, v16

    .line 419
    .line 420
    move-object/from16 v14, v17

    .line 421
    .line 422
    move-object/from16 v15, v18

    .line 423
    .line 424
    move-object/from16 v16, v19

    .line 425
    .line 426
    move-object/from16 v17, v1

    .line 427
    .line 428
    move-object/from16 v18, v2

    .line 429
    .line 430
    filled-new-array/range {v4 .. v18}, [[I

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    .line 435
    .line 436
    return-void

    .line 437
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
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

.method public static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    const/4 v5, -0x1

    .line 10
    iget v6, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 11
    .line 12
    iget v7, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 13
    .line 14
    if-ge v4, v7, :cond_1

    .line 15
    .line 16
    move v7, v3

    .line 17
    :goto_1
    if-ge v7, v6, :cond_0

    .line 18
    .line 19
    iget-object v8, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 20
    .line 21
    aget-object v8, v8, v4

    .line 22
    .line 23
    aput-byte v5, v8, v7

    .line 24
    .line 25
    add-int/lit8 v7, v7, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 32
    .line 33
    aget-object v4, v4, v3

    .line 34
    .line 35
    array-length v4, v4

    .line 36
    invoke-static {v3, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 37
    .line 38
    .line 39
    sub-int v4, v6, v4

    .line 40
    .line 41
    invoke-static {v4, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x7

    .line 48
    invoke-static {v3, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v8, v6, -0x8

    .line 52
    .line 53
    invoke-static {v8, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v8, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v9, v7, -0x7

    .line 63
    .line 64
    add-int/lit8 v10, v9, -0x1

    .line 65
    .line 66
    invoke-static {v10, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v9, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v7, -0x8

    .line 73
    .line 74
    const/16 v10, 0x8

    .line 75
    .line 76
    invoke-virtual {v2, v10, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    if-eqz v11, :cond_27

    .line 81
    .line 82
    const/4 v11, 0x1

    .line 83
    invoke-virtual {v2, v10, v4, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    const/4 v10, 0x2

    .line 88
    move-object/from16 v11, p2

    .line 89
    .line 90
    iget v11, v11, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 91
    .line 92
    if-ge v11, v10, :cond_2

    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_2
    add-int/lit8 v10, v11, -0x1

    .line 97
    .line 98
    sget-object v12, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 99
    .line 100
    aget-object v10, v12, v10

    .line 101
    .line 102
    array-length v12, v10

    .line 103
    move v13, v5

    .line 104
    move v5, v4

    .line 105
    move v4, v3

    .line 106
    :goto_2
    if-ge v3, v12, :cond_7

    .line 107
    .line 108
    :goto_3
    if-ge v4, v12, :cond_6

    .line 109
    .line 110
    aget v14, v10, v3

    .line 111
    .line 112
    aget v15, v10, v4

    .line 113
    .line 114
    if-eq v15, v13, :cond_5

    .line 115
    .line 116
    if-ne v14, v13, :cond_3

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_3
    invoke-virtual {v2, v15, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-static {v13}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eqz v13, :cond_5

    .line 128
    .line 129
    add-int/lit8 v15, v15, -0x2

    .line 130
    .line 131
    add-int/lit8 v14, v14, -0x2

    .line 132
    .line 133
    const/4 v13, 0x0

    .line 134
    :goto_4
    if-ge v13, v5, :cond_5

    .line 135
    .line 136
    const/16 v16, 0x0

    .line 137
    .line 138
    move-object/from16 p2, v10

    .line 139
    .line 140
    move/from16 v10, v16

    .line 141
    .line 142
    :goto_5
    if-ge v10, v5, :cond_4

    .line 143
    .line 144
    add-int v5, v15, v10

    .line 145
    .line 146
    move/from16 v16, v12

    .line 147
    .line 148
    add-int v12, v14, v13

    .line 149
    .line 150
    sget-object v17, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 151
    .line 152
    aget-object v17, v17, v13

    .line 153
    .line 154
    move/from16 v18, v14

    .line 155
    .line 156
    aget v14, v17, v10

    .line 157
    .line 158
    invoke-virtual {v2, v5, v12, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v10, v10, 0x1

    .line 162
    .line 163
    const/4 v5, 0x5

    .line 164
    move/from16 v12, v16

    .line 165
    .line 166
    move/from16 v14, v18

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_4
    move/from16 v16, v12

    .line 170
    .line 171
    move/from16 v18, v14

    .line 172
    .line 173
    add-int/lit8 v13, v13, 0x1

    .line 174
    .line 175
    const/4 v5, 0x5

    .line 176
    move-object/from16 v10, p2

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_5
    :goto_6
    move-object/from16 p2, v10

    .line 180
    .line 181
    move/from16 v16, v12

    .line 182
    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    const/4 v13, -0x1

    .line 186
    const/4 v5, 0x5

    .line 187
    move-object/from16 v10, p2

    .line 188
    .line 189
    move/from16 v12, v16

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    move-object/from16 p2, v10

    .line 193
    .line 194
    move/from16 v16, v12

    .line 195
    .line 196
    add-int/lit8 v3, v3, 0x1

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    const/4 v13, -0x1

    .line 200
    const/4 v5, 0x5

    .line 201
    goto :goto_2

    .line 202
    :cond_7
    :goto_7
    const/16 v3, 0x8

    .line 203
    .line 204
    :goto_8
    const/4 v4, 0x6

    .line 205
    if-ge v3, v8, :cond_a

    .line 206
    .line 207
    add-int/lit8 v5, v3, 0x1

    .line 208
    .line 209
    rem-int/lit8 v10, v5, 0x2

    .line 210
    .line 211
    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    invoke-static {v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-eqz v12, :cond_8

    .line 220
    .line 221
    invoke-virtual {v2, v3, v4, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 222
    .line 223
    .line 224
    :cond_8
    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    invoke-static {v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_9

    .line 233
    .line 234
    invoke-virtual {v2, v4, v3, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 235
    .line 236
    .line 237
    :cond_9
    move v3, v5

    .line 238
    goto :goto_8

    .line 239
    :cond_a
    new-instance v3, Lcom/google/zxing/common/BitArray;

    .line 240
    .line 241
    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 242
    .line 243
    .line 244
    if-ltz v1, :cond_b

    .line 245
    .line 246
    const/16 v5, 0x8

    .line 247
    .line 248
    if-ge v1, v5, :cond_b

    .line 249
    .line 250
    const/4 v5, 0x1

    .line 251
    goto :goto_9

    .line 252
    :cond_b
    const/4 v5, 0x0

    .line 253
    :goto_9
    if-eqz v5, :cond_26

    .line 254
    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    const/4 v8, 0x3

    .line 260
    shl-int/2addr v5, v8

    .line 261
    or-int/2addr v5, v1

    .line 262
    const/4 v10, 0x5

    .line 263
    invoke-virtual {v3, v5, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 264
    .line 265
    .line 266
    const/16 v10, 0x537

    .line 267
    .line 268
    const/4 v12, 0x0

    .line 269
    move v13, v10

    .line 270
    :goto_a
    if-eqz v13, :cond_c

    .line 271
    .line 272
    ushr-int/lit8 v13, v13, 0x1

    .line 273
    .line 274
    add-int/lit8 v12, v12, 0x1

    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_c
    add-int/lit8 v13, v12, -0x1

    .line 278
    .line 279
    shl-int/2addr v5, v13

    .line 280
    :goto_b
    const/4 v13, 0x0

    .line 281
    move v14, v5

    .line 282
    :goto_c
    if-eqz v14, :cond_d

    .line 283
    .line 284
    ushr-int/lit8 v14, v14, 0x1

    .line 285
    .line 286
    add-int/lit8 v13, v13, 0x1

    .line 287
    .line 288
    goto :goto_c

    .line 289
    :cond_d
    if-lt v13, v12, :cond_f

    .line 290
    .line 291
    const/4 v13, 0x0

    .line 292
    move v14, v5

    .line 293
    :goto_d
    if-eqz v14, :cond_e

    .line 294
    .line 295
    ushr-int/lit8 v14, v14, 0x1

    .line 296
    .line 297
    add-int/lit8 v13, v13, 0x1

    .line 298
    .line 299
    goto :goto_d

    .line 300
    :cond_e
    sub-int/2addr v13, v12

    .line 301
    shl-int v13, v10, v13

    .line 302
    .line 303
    xor-int/2addr v5, v13

    .line 304
    goto :goto_b

    .line 305
    :cond_f
    const/16 v10, 0xa

    .line 306
    .line 307
    invoke-virtual {v3, v5, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 308
    .line 309
    .line 310
    new-instance v5, Lcom/google/zxing/common/BitArray;

    .line 311
    .line 312
    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 313
    .line 314
    .line 315
    const/16 v10, 0x5412

    .line 316
    .line 317
    const/16 v12, 0xf

    .line 318
    .line 319
    invoke-virtual {v5, v10, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 320
    .line 321
    .line 322
    iget-object v10, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 323
    .line 324
    array-length v10, v10

    .line 325
    iget-object v13, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 326
    .line 327
    array-length v13, v13

    .line 328
    if-ne v10, v13, :cond_25

    .line 329
    .line 330
    const/4 v10, 0x0

    .line 331
    :goto_e
    iget-object v13, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 332
    .line 333
    array-length v14, v13

    .line 334
    if-ge v10, v14, :cond_10

    .line 335
    .line 336
    aget v14, v13, v10

    .line 337
    .line 338
    iget-object v15, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 339
    .line 340
    aget v15, v15, v10

    .line 341
    .line 342
    xor-int/2addr v14, v15

    .line 343
    aput v14, v13, v10

    .line 344
    .line 345
    add-int/lit8 v10, v10, 0x1

    .line 346
    .line 347
    goto :goto_e

    .line 348
    :cond_10
    iget v5, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 349
    .line 350
    const-string/jumbo v10, "should not happen but we got: "

    .line 351
    .line 352
    .line 353
    if-ne v5, v12, :cond_24

    .line 354
    .line 355
    const/4 v5, 0x0

    .line 356
    :goto_f
    iget v12, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 357
    .line 358
    if-ge v5, v12, :cond_12

    .line 359
    .line 360
    add-int/lit8 v12, v12, -0x1

    .line 361
    .line 362
    sub-int/2addr v12, v5

    .line 363
    invoke-virtual {v3, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    sget-object v13, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    .line 368
    .line 369
    aget-object v13, v13, v5

    .line 370
    .line 371
    const/4 v14, 0x0

    .line 372
    aget v14, v13, v14

    .line 373
    .line 374
    const/4 v15, 0x1

    .line 375
    aget v13, v13, v15

    .line 376
    .line 377
    invoke-virtual {v2, v14, v13, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 378
    .line 379
    .line 380
    const/16 v13, 0x8

    .line 381
    .line 382
    if-ge v5, v13, :cond_11

    .line 383
    .line 384
    sub-int v14, v6, v5

    .line 385
    .line 386
    add-int/lit8 v14, v14, -0x1

    .line 387
    .line 388
    invoke-virtual {v2, v14, v13, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 389
    .line 390
    .line 391
    goto :goto_10

    .line 392
    :cond_11
    add-int/lit8 v14, v5, -0x8

    .line 393
    .line 394
    add-int/2addr v14, v9

    .line 395
    invoke-virtual {v2, v13, v14, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 396
    .line 397
    .line 398
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 399
    .line 400
    goto :goto_f

    .line 401
    :cond_12
    const/4 v3, 0x7

    .line 402
    const/4 v5, 0x0

    .line 403
    if-ge v11, v3, :cond_13

    .line 404
    .line 405
    goto :goto_17

    .line 406
    :cond_13
    new-instance v3, Lcom/google/zxing/common/BitArray;

    .line 407
    .line 408
    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3, v11, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 412
    .line 413
    .line 414
    const/16 v9, 0x1f25

    .line 415
    .line 416
    move v13, v5

    .line 417
    move v12, v9

    .line 418
    :goto_11
    if-eqz v12, :cond_14

    .line 419
    .line 420
    ushr-int/lit8 v12, v12, 0x1

    .line 421
    .line 422
    add-int/lit8 v13, v13, 0x1

    .line 423
    .line 424
    goto :goto_11

    .line 425
    :cond_14
    add-int/lit8 v12, v13, -0x1

    .line 426
    .line 427
    shl-int/2addr v11, v12

    .line 428
    :goto_12
    move v14, v5

    .line 429
    move v12, v11

    .line 430
    :goto_13
    if-eqz v12, :cond_15

    .line 431
    .line 432
    ushr-int/lit8 v12, v12, 0x1

    .line 433
    .line 434
    add-int/lit8 v14, v14, 0x1

    .line 435
    .line 436
    goto :goto_13

    .line 437
    :cond_15
    if-lt v14, v13, :cond_17

    .line 438
    .line 439
    move v14, v5

    .line 440
    move v12, v11

    .line 441
    :goto_14
    if-eqz v12, :cond_16

    .line 442
    .line 443
    ushr-int/lit8 v12, v12, 0x1

    .line 444
    .line 445
    add-int/lit8 v14, v14, 0x1

    .line 446
    .line 447
    goto :goto_14

    .line 448
    :cond_16
    sub-int/2addr v14, v13

    .line 449
    shl-int v12, v9, v14

    .line 450
    .line 451
    xor-int/2addr v11, v12

    .line 452
    goto :goto_12

    .line 453
    :cond_17
    const/16 v9, 0xc

    .line 454
    .line 455
    invoke-virtual {v3, v11, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 456
    .line 457
    .line 458
    iget v9, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 459
    .line 460
    const/16 v11, 0x12

    .line 461
    .line 462
    if-ne v9, v11, :cond_23

    .line 463
    .line 464
    const/16 v9, 0x11

    .line 465
    .line 466
    move v10, v5

    .line 467
    :goto_15
    if-ge v10, v4, :cond_19

    .line 468
    .line 469
    move v11, v5

    .line 470
    :goto_16
    if-ge v11, v8, :cond_18

    .line 471
    .line 472
    invoke-virtual {v3, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 473
    .line 474
    .line 475
    move-result v12

    .line 476
    add-int/lit8 v9, v9, -0x1

    .line 477
    .line 478
    add-int/lit8 v13, v7, -0xb

    .line 479
    .line 480
    add-int/2addr v13, v11

    .line 481
    invoke-virtual {v2, v10, v13, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v13, v10, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 485
    .line 486
    .line 487
    add-int/lit8 v11, v11, 0x1

    .line 488
    .line 489
    goto :goto_16

    .line 490
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 491
    .line 492
    goto :goto_15

    .line 493
    :cond_19
    :goto_17
    add-int/lit8 v6, v6, -0x1

    .line 494
    .line 495
    add-int/lit8 v3, v7, -0x1

    .line 496
    .line 497
    const/4 v8, -0x1

    .line 498
    move v9, v5

    .line 499
    :goto_18
    if-lez v6, :cond_21

    .line 500
    .line 501
    if-ne v6, v4, :cond_1a

    .line 502
    .line 503
    add-int/lit8 v6, v6, -0x1

    .line 504
    .line 505
    :cond_1a
    :goto_19
    if-ltz v3, :cond_20

    .line 506
    .line 507
    if-ge v3, v7, :cond_20

    .line 508
    .line 509
    const/4 v10, 0x2

    .line 510
    move v11, v5

    .line 511
    :goto_1a
    if-ge v11, v10, :cond_1f

    .line 512
    .line 513
    sub-int v12, v6, v11

    .line 514
    .line 515
    invoke-virtual {v2, v12, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 516
    .line 517
    .line 518
    move-result v13

    .line 519
    invoke-static {v13}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    if-nez v13, :cond_1b

    .line 524
    .line 525
    goto :goto_21

    .line 526
    :cond_1b
    iget v13, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 527
    .line 528
    if-ge v9, v13, :cond_1c

    .line 529
    .line 530
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 531
    .line 532
    .line 533
    move-result v13

    .line 534
    add-int/lit8 v9, v9, 0x1

    .line 535
    .line 536
    goto :goto_1b

    .line 537
    :cond_1c
    move v13, v5

    .line 538
    :goto_1b
    const/4 v14, -0x1

    .line 539
    if-eq v1, v14, :cond_1e

    .line 540
    .line 541
    packed-switch v1, :pswitch_data_0

    .line 542
    .line 543
    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 545
    .line 546
    const-string v2, "Invalid mask pattern: "

    .line 547
    .line 548
    invoke-static {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw v0

    .line 556
    :pswitch_0
    mul-int v14, v3, v12

    .line 557
    .line 558
    rem-int/lit8 v14, v14, 0x3

    .line 559
    .line 560
    add-int v15, v3, v12

    .line 561
    .line 562
    and-int/lit8 v15, v15, 0x1

    .line 563
    .line 564
    goto :goto_1c

    .line 565
    :pswitch_1
    mul-int v14, v3, v12

    .line 566
    .line 567
    and-int/lit8 v15, v14, 0x1

    .line 568
    .line 569
    rem-int/lit8 v14, v14, 0x3

    .line 570
    .line 571
    :goto_1c
    add-int/2addr v14, v15

    .line 572
    goto :goto_1e

    .line 573
    :pswitch_2
    mul-int v14, v3, v12

    .line 574
    .line 575
    and-int/lit8 v15, v14, 0x1

    .line 576
    .line 577
    rem-int/lit8 v14, v14, 0x3

    .line 578
    .line 579
    add-int/2addr v14, v15

    .line 580
    goto :goto_1d

    .line 581
    :pswitch_3
    ushr-int/lit8 v14, v3, 0x1

    .line 582
    .line 583
    div-int/lit8 v15, v12, 0x3

    .line 584
    .line 585
    add-int/2addr v14, v15

    .line 586
    goto :goto_1e

    .line 587
    :pswitch_4
    add-int v14, v3, v12

    .line 588
    .line 589
    rem-int/lit8 v14, v14, 0x3

    .line 590
    .line 591
    goto :goto_1d

    .line 592
    :pswitch_5
    rem-int/lit8 v14, v12, 0x3

    .line 593
    .line 594
    :goto_1d
    const/4 v15, 0x1

    .line 595
    goto :goto_1f

    .line 596
    :pswitch_6
    move v14, v3

    .line 597
    goto :goto_1e

    .line 598
    :pswitch_7
    add-int v14, v3, v12

    .line 599
    .line 600
    :goto_1e
    const/4 v15, 0x1

    .line 601
    and-int/lit8 v14, v14, 0x1

    .line 602
    .line 603
    :goto_1f
    if-nez v14, :cond_1d

    .line 604
    .line 605
    goto :goto_20

    .line 606
    :cond_1d
    move v15, v5

    .line 607
    :goto_20
    if-eqz v15, :cond_1e

    .line 608
    .line 609
    xor-int/lit8 v13, v13, 0x1

    .line 610
    .line 611
    :cond_1e
    invoke-virtual {v2, v12, v3, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 612
    .line 613
    .line 614
    :goto_21
    add-int/lit8 v11, v11, 0x1

    .line 615
    .line 616
    goto :goto_1a

    .line 617
    :cond_1f
    add-int/2addr v3, v8

    .line 618
    goto :goto_19

    .line 619
    :cond_20
    neg-int v8, v8

    .line 620
    add-int/2addr v3, v8

    .line 621
    add-int/lit8 v6, v6, -0x2

    .line 622
    .line 623
    goto :goto_18

    .line 624
    :cond_21
    iget v1, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 625
    .line 626
    if-ne v9, v1, :cond_22

    .line 627
    .line 628
    return-void

    .line 629
    :cond_22
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 630
    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    const-string v3, "Not all bits consumed: "

    .line 634
    .line 635
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const/16 v3, 0x2f

    .line 642
    .line 643
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 647
    .line 648
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v1

    .line 659
    :cond_23
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 660
    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 667
    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v0

    .line 679
    :cond_24
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 680
    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 687
    .line 688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v0

    .line 699
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 700
    .line 701
    const-string v1, "Sizes don\'t match"

    .line 702
    .line 703
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    throw v0

    .line 707
    :cond_26
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 708
    .line 709
    const-string v1, "Invalid mask pattern"

    .line 710
    .line 711
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    throw v0

    .line 715
    :cond_27
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 716
    .line 717
    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 718
    .line 719
    .line 720
    throw v0

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x8

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    add-int v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    return-void
.end method

.method public static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    move v3, v0

    .line 7
    :goto_1
    if-ge v3, v2, :cond_0

    .line 8
    .line 9
    add-int v4, p0, v3

    .line 10
    .line 11
    add-int v5, p1, v1

    .line 12
    .line 13
    sget-object v6, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 14
    .line 15
    aget-object v6, v6, v1

    .line 16
    .line 17
    aget v6, v6, v3

    .line 18
    .line 19
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    add-int v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    return-void
.end method

.method public static isEmpty(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method
