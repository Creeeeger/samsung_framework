.class public Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# instance fields
.field public final dataCapacity:I

.field public final dataRegions:I

.field public final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field public final rectangular:Z

.field public final rsBlockData:I

.field public final rsBlockError:I


# direct methods
.method public static constructor <clinit>()V
    .locals 61

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 2
    .line 3
    move-object v7, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x5

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    const/16 v16, 0x1

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 15
    .line 16
    .line 17
    new-instance v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 18
    .line 19
    move-object v8, v9

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x5

    .line 22
    const/4 v12, 0x7

    .line 23
    const/16 v13, 0xa

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    const/4 v15, 0x1

    .line 28
    const/16 v14, 0xa

    .line 29
    .line 30
    invoke-direct/range {v9 .. v15}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 31
    .line 32
    .line 33
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 34
    .line 35
    move-object v9, v10

    .line 36
    const/16 v18, 0x1

    .line 37
    .line 38
    const/4 v12, 0x5

    .line 39
    const/4 v13, 0x7

    .line 40
    const/16 v14, 0x10

    .line 41
    .line 42
    const/16 v24, 0x6

    .line 43
    .line 44
    const/4 v11, 0x1

    .line 45
    const/4 v15, 0x6

    .line 46
    invoke-direct/range {v10 .. v16}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 50
    .line 51
    move-object v10, v0

    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    const/16 v27, 0xc

    .line 55
    .line 56
    const/16 v28, 0xc

    .line 57
    .line 58
    const/16 v4, 0xc

    .line 59
    .line 60
    const/16 v5, 0xc

    .line 61
    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 63
    .line 64
    .line 65
    new-instance v19, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 66
    .line 67
    move-object/from16 v11, v19

    .line 68
    .line 69
    const/16 v21, 0xa

    .line 70
    .line 71
    const/16 v22, 0xb

    .line 72
    .line 73
    const/16 v23, 0xe

    .line 74
    .line 75
    const/16 v25, 0x2

    .line 76
    .line 77
    const/16 v20, 0x1

    .line 78
    .line 79
    invoke-direct/range {v19 .. v25}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 80
    .line 81
    .line 82
    new-instance v25, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 83
    .line 84
    move-object/from16 v12, v25

    .line 85
    .line 86
    const/16 v26, 0x0

    .line 87
    .line 88
    const/16 v29, 0xe

    .line 89
    .line 90
    const/16 v3, 0xe

    .line 91
    .line 92
    const/16 v31, 0x1

    .line 93
    .line 94
    const/16 v30, 0xe

    .line 95
    .line 96
    invoke-direct/range {v25 .. v31}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 97
    .line 98
    .line 99
    new-instance v17, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 100
    .line 101
    move-object/from16 v13, v17

    .line 102
    .line 103
    const/16 v19, 0x10

    .line 104
    .line 105
    const/16 v20, 0xe

    .line 106
    .line 107
    const/16 v21, 0x18

    .line 108
    .line 109
    const/16 v22, 0xa

    .line 110
    .line 111
    const/16 v29, 0x1

    .line 112
    .line 113
    const/16 v23, 0x1

    .line 114
    .line 115
    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 119
    .line 120
    move-object v14, v0

    .line 121
    const/16 v2, 0x12

    .line 122
    .line 123
    const/16 v4, 0x10

    .line 124
    .line 125
    const/16 v5, 0x10

    .line 126
    .line 127
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 128
    .line 129
    .line 130
    new-instance v16, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 131
    .line 132
    move-object/from16 v15, v16

    .line 133
    .line 134
    const/16 v24, 0x0

    .line 135
    .line 136
    const/16 v18, 0x16

    .line 137
    .line 138
    const/16 v19, 0x12

    .line 139
    .line 140
    const/16 v20, 0x12

    .line 141
    .line 142
    const/16 v21, 0x12

    .line 143
    .line 144
    const/16 v17, 0x0

    .line 145
    .line 146
    const/16 v22, 0x1

    .line 147
    .line 148
    invoke-direct/range {v16 .. v22}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 152
    .line 153
    move-object/from16 v16, v0

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    const/16 v2, 0x16

    .line 157
    .line 158
    const/16 v3, 0x12

    .line 159
    .line 160
    const/16 v5, 0xa

    .line 161
    .line 162
    const/4 v6, 0x2

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 164
    .line 165
    .line 166
    new-instance v30, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 167
    .line 168
    move-object/from16 v17, v30

    .line 169
    .line 170
    const/16 v32, 0x1e

    .line 171
    .line 172
    const/16 v33, 0x14

    .line 173
    .line 174
    const/16 v34, 0x14

    .line 175
    .line 176
    const/16 v35, 0x14

    .line 177
    .line 178
    const/16 v31, 0x0

    .line 179
    .line 180
    const/16 v36, 0x1

    .line 181
    .line 182
    invoke-direct/range {v30 .. v36}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 186
    .line 187
    move-object/from16 v18, v0

    .line 188
    .line 189
    const/16 v2, 0x20

    .line 190
    .line 191
    const/16 v3, 0x18

    .line 192
    .line 193
    const/16 v5, 0xe

    .line 194
    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 196
    .line 197
    .line 198
    new-instance v23, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 199
    .line 200
    move-object/from16 v19, v23

    .line 201
    .line 202
    const/16 v25, 0x24

    .line 203
    .line 204
    const/16 v26, 0x18

    .line 205
    .line 206
    const/16 v4, 0x16

    .line 207
    .line 208
    const/16 v28, 0x16

    .line 209
    .line 210
    const/16 v27, 0x16

    .line 211
    .line 212
    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 213
    .line 214
    .line 215
    new-instance v30, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 216
    .line 217
    move-object/from16 v20, v30

    .line 218
    .line 219
    const/16 v32, 0x2c

    .line 220
    .line 221
    const/16 v33, 0x1c

    .line 222
    .line 223
    const/16 v34, 0x18

    .line 224
    .line 225
    const/16 v35, 0x18

    .line 226
    .line 227
    invoke-direct/range {v30 .. v36}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 231
    .line 232
    move-object/from16 v21, v0

    .line 233
    .line 234
    const/16 v2, 0x31

    .line 235
    .line 236
    const/16 v3, 0x1c

    .line 237
    .line 238
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 239
    .line 240
    .line 241
    new-instance v23, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 242
    .line 243
    move-object/from16 v22, v23

    .line 244
    .line 245
    const/16 v25, 0x3e

    .line 246
    .line 247
    const/16 v26, 0x24

    .line 248
    .line 249
    const/16 v27, 0xe

    .line 250
    .line 251
    const/16 v28, 0xe

    .line 252
    .line 253
    const/16 v29, 0x4

    .line 254
    .line 255
    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 259
    .line 260
    move-object/from16 v23, v0

    .line 261
    .line 262
    const/16 v27, 0x0

    .line 263
    .line 264
    const/16 v2, 0x56

    .line 265
    .line 266
    const/16 v3, 0x2a

    .line 267
    .line 268
    const/16 v4, 0x10

    .line 269
    .line 270
    const/16 v5, 0x10

    .line 271
    .line 272
    const/16 v32, 0x4

    .line 273
    .line 274
    const/4 v1, 0x0

    .line 275
    const/4 v6, 0x4

    .line 276
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 277
    .line 278
    .line 279
    new-instance v33, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 280
    .line 281
    move-object/from16 v24, v33

    .line 282
    .line 283
    const/16 v34, 0x0

    .line 284
    .line 285
    const/16 v35, 0x72

    .line 286
    .line 287
    const/16 v36, 0x30

    .line 288
    .line 289
    const/16 v37, 0x12

    .line 290
    .line 291
    const/16 v38, 0x12

    .line 292
    .line 293
    const/16 v39, 0x4

    .line 294
    .line 295
    invoke-direct/range {v33 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 296
    .line 297
    .line 298
    new-instance v26, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 299
    .line 300
    move-object/from16 v25, v26

    .line 301
    .line 302
    const/16 v28, 0x90

    .line 303
    .line 304
    const/16 v29, 0x38

    .line 305
    .line 306
    const/16 v30, 0x14

    .line 307
    .line 308
    const/16 v31, 0x14

    .line 309
    .line 310
    invoke-direct/range {v26 .. v32}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 314
    .line 315
    move-object/from16 v26, v0

    .line 316
    .line 317
    const/16 v2, 0xae

    .line 318
    .line 319
    const/16 v3, 0x44

    .line 320
    .line 321
    const/16 v4, 0x16

    .line 322
    .line 323
    const/16 v5, 0x16

    .line 324
    .line 325
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 326
    .line 327
    .line 328
    new-instance v28, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 329
    .line 330
    move-object/from16 v27, v28

    .line 331
    .line 332
    const/16 v29, 0x0

    .line 333
    .line 334
    const/16 v30, 0xcc

    .line 335
    .line 336
    const/16 v31, 0x54

    .line 337
    .line 338
    const/16 v32, 0x18

    .line 339
    .line 340
    const/16 v33, 0x18

    .line 341
    .line 342
    const/16 v34, 0x4

    .line 343
    .line 344
    const/16 v35, 0x66

    .line 345
    .line 346
    const/16 v36, 0x2a

    .line 347
    .line 348
    invoke-direct/range {v28 .. v36}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 349
    .line 350
    .line 351
    new-instance v37, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 352
    .line 353
    move-object/from16 v28, v37

    .line 354
    .line 355
    const/16 v38, 0x0

    .line 356
    .line 357
    const/16 v39, 0x118

    .line 358
    .line 359
    const/16 v40, 0x70

    .line 360
    .line 361
    const/16 v41, 0xe

    .line 362
    .line 363
    const/16 v42, 0xe

    .line 364
    .line 365
    const/16 v43, 0x10

    .line 366
    .line 367
    const/16 v44, 0x8c

    .line 368
    .line 369
    const/16 v45, 0x38

    .line 370
    .line 371
    invoke-direct/range {v37 .. v45}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 372
    .line 373
    .line 374
    new-instance v46, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 375
    .line 376
    move-object/from16 v29, v46

    .line 377
    .line 378
    const/16 v47, 0x0

    .line 379
    .line 380
    const/16 v48, 0x170

    .line 381
    .line 382
    const/16 v49, 0x90

    .line 383
    .line 384
    const/16 v50, 0x10

    .line 385
    .line 386
    const/16 v51, 0x10

    .line 387
    .line 388
    const/16 v52, 0x10

    .line 389
    .line 390
    const/16 v53, 0x5c

    .line 391
    .line 392
    const/16 v54, 0x24

    .line 393
    .line 394
    invoke-direct/range {v46 .. v54}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 395
    .line 396
    .line 397
    new-instance v31, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 398
    .line 399
    move-object/from16 v30, v31

    .line 400
    .line 401
    const/16 v32, 0x0

    .line 402
    .line 403
    const/16 v33, 0x1c8

    .line 404
    .line 405
    const/16 v34, 0xc0

    .line 406
    .line 407
    const/16 v35, 0x12

    .line 408
    .line 409
    const/16 v36, 0x12

    .line 410
    .line 411
    const/16 v37, 0x10

    .line 412
    .line 413
    const/16 v38, 0x72

    .line 414
    .line 415
    const/16 v39, 0x30

    .line 416
    .line 417
    invoke-direct/range {v31 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 418
    .line 419
    .line 420
    new-instance v40, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 421
    .line 422
    move-object/from16 v31, v40

    .line 423
    .line 424
    const/16 v41, 0x0

    .line 425
    .line 426
    const/16 v42, 0x240

    .line 427
    .line 428
    const/16 v43, 0xe0

    .line 429
    .line 430
    const/16 v44, 0x14

    .line 431
    .line 432
    const/16 v45, 0x14

    .line 433
    .line 434
    const/16 v46, 0x10

    .line 435
    .line 436
    const/16 v47, 0x90

    .line 437
    .line 438
    const/16 v48, 0x38

    .line 439
    .line 440
    invoke-direct/range {v40 .. v48}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 441
    .line 442
    .line 443
    new-instance v49, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 444
    .line 445
    move-object/from16 v32, v49

    .line 446
    .line 447
    const/16 v50, 0x0

    .line 448
    .line 449
    const/16 v51, 0x2b8

    .line 450
    .line 451
    const/16 v52, 0x110

    .line 452
    .line 453
    const/16 v53, 0x16

    .line 454
    .line 455
    const/16 v54, 0x16

    .line 456
    .line 457
    const/16 v55, 0x10

    .line 458
    .line 459
    const/16 v56, 0xae

    .line 460
    .line 461
    const/16 v57, 0x44

    .line 462
    .line 463
    invoke-direct/range {v49 .. v57}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 464
    .line 465
    .line 466
    new-instance v34, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 467
    .line 468
    move-object/from16 v33, v34

    .line 469
    .line 470
    const/16 v35, 0x0

    .line 471
    .line 472
    const/16 v36, 0x330

    .line 473
    .line 474
    const/16 v37, 0x150

    .line 475
    .line 476
    const/16 v38, 0x18

    .line 477
    .line 478
    const/16 v39, 0x18

    .line 479
    .line 480
    const/16 v40, 0x10

    .line 481
    .line 482
    const/16 v41, 0x88

    .line 483
    .line 484
    const/16 v42, 0x38

    .line 485
    .line 486
    invoke-direct/range {v34 .. v42}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 487
    .line 488
    .line 489
    new-instance v43, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 490
    .line 491
    move-object/from16 v34, v43

    .line 492
    .line 493
    const/16 v44, 0x0

    .line 494
    .line 495
    const/16 v45, 0x41a

    .line 496
    .line 497
    const/16 v46, 0x198

    .line 498
    .line 499
    const/16 v47, 0x12

    .line 500
    .line 501
    const/16 v48, 0x12

    .line 502
    .line 503
    const/16 v49, 0x24

    .line 504
    .line 505
    const/16 v50, 0xaf

    .line 506
    .line 507
    const/16 v51, 0x44

    .line 508
    .line 509
    invoke-direct/range {v43 .. v51}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 510
    .line 511
    .line 512
    new-instance v52, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 513
    .line 514
    move-object/from16 v35, v52

    .line 515
    .line 516
    const/16 v53, 0x0

    .line 517
    .line 518
    const/16 v54, 0x518

    .line 519
    .line 520
    const/16 v55, 0x1f0

    .line 521
    .line 522
    const/16 v56, 0x14

    .line 523
    .line 524
    const/16 v57, 0x14

    .line 525
    .line 526
    const/16 v58, 0x24

    .line 527
    .line 528
    const/16 v59, 0xa3

    .line 529
    .line 530
    const/16 v60, 0x3e

    .line 531
    .line 532
    invoke-direct/range {v52 .. v60}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 533
    .line 534
    .line 535
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;

    .line 536
    .line 537
    move-object/from16 v36, v0

    .line 538
    .line 539
    invoke-direct {v0}, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;-><init>()V

    .line 540
    .line 541
    .line 542
    filled-new-array/range {v7 .. v36}, [Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 547
    .line 548
    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 4
    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 5
    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 6
    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 7
    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 8
    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 9
    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 10
    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return-void
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_5

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 10
    .line 11
    if-ne p1, v4, :cond_0

    .line 12
    .line 13
    iget-boolean v4, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 19
    .line 20
    if-ne p1, v4, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget v5, p2, Lcom/google/zxing/Dimension;->width:I

    .line 34
    .line 35
    if-lt v4, v5, :cond_4

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget v5, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 42
    .line 43
    mul-int/2addr v4, v5

    .line 44
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    mul-int/lit8 v5, v5, 0x2

    .line 49
    .line 50
    add-int/2addr v5, v4

    .line 51
    iget v4, p2, Lcom/google/zxing/Dimension;->height:I

    .line 52
    .line 53
    if-ge v5, v4, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-eqz p3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget v5, p3, Lcom/google/zxing/Dimension;->width:I

    .line 63
    .line 64
    if-gt v4, v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget v5, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 71
    .line 72
    mul-int/2addr v4, v5

    .line 73
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    mul-int/lit8 v5, v5, 0x2

    .line 78
    .line 79
    add-int/2addr v5, v4

    .line 80
    iget v4, p3, Lcom/google/zxing/Dimension;->height:I

    .line 81
    .line 82
    if-le v5, v4, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget v4, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 86
    .line 87
    if-gt p0, v4, :cond_4

    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p2, "Can\'t find a symbol arrangement that matches the message. Data codewords: "

    .line 96
    .line 97
    invoke-static {p2, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method


# virtual methods
.method public getDataLengthForInterleavedBlock(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 2
    .line 3
    return p0
.end method

.method public final getHorizontalDataRegions()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 3
    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq p0, v1, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x24

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x6

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Cannot handle this number of data regions"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    return v0
.end method

.method public getInterleavedBlockCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 2
    .line 3
    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 4
    .line 5
    div-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final getSymbolWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 6
    .line 7
    mul-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    mul-int/lit8 p0, p0, 0x2

    .line 13
    .line 14
    add-int/2addr p0, v0

    .line 15
    return p0
.end method

.method public final getVerticalDataRegions()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 3
    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    if-eq p0, v1, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x24

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x6

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Cannot handle this number of data regions"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    return v1

    .line 32
    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "Rectangular Symbol:"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Square Symbol:"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " data region "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x78

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, ", symbol size "

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    mul-int/2addr v4, v3

    .line 58
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    mul-int/lit8 v5, v5, 0x2

    .line 63
    .line 64
    add-int/2addr v5, v4

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, ", symbol data size "

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    mul-int/2addr v4, v1

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    mul-int/2addr v1, v3

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", codewords "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 v1, 0x2b

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0
.end method
