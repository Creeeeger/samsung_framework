.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final NAME_TO_ECI:Ljava/util/Map;

.field public static final VALUE_TO_ECI:Ljava/util/Map;


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/4 v15, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    filled-new-array {v15, v3}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-array v4, v15, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v5, "Cp437"

    .line 13
    .line 14
    invoke-direct {v1, v5, v15, v2, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 18
    .line 19
    move-object v1, v2

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x3

    .line 22
    filled-new-array {v4, v5}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const-string v7, "ISO-8859-1"

    .line 27
    .line 28
    filled-new-array {v7}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const-string v8, "ISO8859_1"

    .line 33
    .line 34
    invoke-direct {v2, v8, v4, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    .line 39
    move-object v2, v4

    .line 40
    const-string v6, "ISO-8859-2"

    .line 41
    .line 42
    filled-new-array {v6}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v7, "ISO8859_2"

    .line 47
    .line 48
    const/4 v8, 0x4

    .line 49
    invoke-direct {v4, v7, v3, v8, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    .line 53
    .line 54
    move-object v3, v4

    .line 55
    const-string v6, "ISO-8859-3"

    .line 56
    .line 57
    filled-new-array {v6}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string v7, "ISO8859_3"

    .line 62
    .line 63
    const/4 v9, 0x5

    .line 64
    invoke-direct {v4, v7, v5, v9, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    const-string v6, "ISO-8859-4"

    .line 71
    .line 72
    filled-new-array {v6}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const-string v7, "ISO8859_4"

    .line 77
    .line 78
    const/4 v10, 0x6

    .line 79
    invoke-direct {v5, v7, v8, v10, v6}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lcom/google/zxing/common/CharacterSetECI;

    .line 83
    .line 84
    move-object v5, v6

    .line 85
    const-string v7, "ISO-8859-5"

    .line 86
    .line 87
    filled-new-array {v7}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v8, "ISO8859_5"

    .line 92
    .line 93
    const/4 v11, 0x7

    .line 94
    invoke-direct {v6, v8, v9, v11, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Lcom/google/zxing/common/CharacterSetECI;

    .line 98
    .line 99
    move-object v6, v7

    .line 100
    const-string v8, "ISO-8859-6"

    .line 101
    .line 102
    filled-new-array {v8}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const-string v9, "ISO8859_6"

    .line 107
    .line 108
    const/16 v12, 0x8

    .line 109
    .line 110
    invoke-direct {v7, v9, v10, v12, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    .line 114
    .line 115
    move-object v7, v8

    .line 116
    const-string v9, "ISO-8859-7"

    .line 117
    .line 118
    filled-new-array {v9}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const-string v10, "ISO8859_7"

    .line 123
    .line 124
    const/16 v13, 0x9

    .line 125
    .line 126
    invoke-direct {v8, v10, v11, v13, v9}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    .line 130
    .line 131
    move-object v8, v9

    .line 132
    const-string v10, "ISO-8859-8"

    .line 133
    .line 134
    filled-new-array {v10}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    const-string v11, "ISO8859_8"

    .line 139
    .line 140
    const/16 v14, 0xa

    .line 141
    .line 142
    invoke-direct {v9, v11, v12, v14, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    .line 146
    .line 147
    move-object v9, v10

    .line 148
    const-string v11, "ISO-8859-9"

    .line 149
    .line 150
    filled-new-array {v11}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    const-string v12, "ISO8859_9"

    .line 155
    .line 156
    const/16 v15, 0xb

    .line 157
    .line 158
    invoke-direct {v10, v12, v13, v15, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    .line 162
    .line 163
    move-object v10, v11

    .line 164
    const-string v12, "ISO-8859-10"

    .line 165
    .line 166
    filled-new-array {v12}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const-string v13, "ISO8859_10"

    .line 171
    .line 172
    const/16 v15, 0xc

    .line 173
    .line 174
    invoke-direct {v11, v13, v14, v15, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v12, Lcom/google/zxing/common/CharacterSetECI;

    .line 178
    .line 179
    move-object v11, v12

    .line 180
    const-string v13, "ISO-8859-11"

    .line 181
    .line 182
    filled-new-array {v13}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    const-string v14, "ISO8859_11"

    .line 187
    .line 188
    const/16 v15, 0xd

    .line 189
    .line 190
    move-object/from16 v27, v0

    .line 191
    .line 192
    const/16 v0, 0xb

    .line 193
    .line 194
    invoke-direct {v12, v14, v0, v15, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 198
    .line 199
    move-object v12, v0

    .line 200
    const-string v13, "ISO-8859-13"

    .line 201
    .line 202
    filled-new-array {v13}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const-string v14, "ISO8859_13"

    .line 207
    .line 208
    const/16 v15, 0xf

    .line 209
    .line 210
    move-object/from16 v28, v1

    .line 211
    .line 212
    const/16 v1, 0xc

    .line 213
    .line 214
    invoke-direct {v0, v14, v1, v15, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 218
    .line 219
    move-object v13, v0

    .line 220
    const-string v1, "ISO-8859-14"

    .line 221
    .line 222
    filled-new-array {v1}, [Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v14, "ISO8859_14"

    .line 227
    .line 228
    move-object/from16 v29, v2

    .line 229
    .line 230
    const/16 v2, 0x10

    .line 231
    .line 232
    const/16 v15, 0xd

    .line 233
    .line 234
    invoke-direct {v0, v14, v15, v2, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 238
    .line 239
    move-object v14, v0

    .line 240
    const-string v1, "ISO-8859-15"

    .line 241
    .line 242
    filled-new-array {v1}, [Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const-string v15, "ISO8859_15"

    .line 247
    .line 248
    const/16 v2, 0xe

    .line 249
    .line 250
    move-object/from16 v30, v3

    .line 251
    .line 252
    const/16 v3, 0x11

    .line 253
    .line 254
    invoke-direct {v0, v15, v2, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 258
    .line 259
    const/16 v1, 0xf

    .line 260
    .line 261
    const/16 v31, 0x0

    .line 262
    .line 263
    move-object v15, v0

    .line 264
    const-string v2, "ISO-8859-16"

    .line 265
    .line 266
    filled-new-array {v2}, [Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const-string v3, "ISO8859_16"

    .line 271
    .line 272
    move-object/from16 v32, v4

    .line 273
    .line 274
    const/16 v4, 0x12

    .line 275
    .line 276
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 280
    .line 281
    move-object/from16 v16, v0

    .line 282
    .line 283
    const-string v1, "Shift_JIS"

    .line 284
    .line 285
    filled-new-array {v1}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v2, "SJIS"

    .line 290
    .line 291
    const/16 v3, 0x14

    .line 292
    .line 293
    const/16 v4, 0x10

    .line 294
    .line 295
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 299
    .line 300
    move-object/from16 v17, v0

    .line 301
    .line 302
    const-string/jumbo v1, "windows-1250"

    .line 303
    .line 304
    .line 305
    filled-new-array {v1}, [Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const-string v2, "Cp1250"

    .line 310
    .line 311
    const/16 v4, 0x15

    .line 312
    .line 313
    const/16 v3, 0x11

    .line 314
    .line 315
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 319
    .line 320
    move-object/from16 v18, v0

    .line 321
    .line 322
    const-string/jumbo v1, "windows-1251"

    .line 323
    .line 324
    .line 325
    filled-new-array {v1}, [Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v2, "Cp1251"

    .line 330
    .line 331
    const/16 v3, 0x16

    .line 332
    .line 333
    const/16 v4, 0x12

    .line 334
    .line 335
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 339
    .line 340
    move-object/from16 v19, v0

    .line 341
    .line 342
    const-string/jumbo v1, "windows-1252"

    .line 343
    .line 344
    .line 345
    filled-new-array {v1}, [Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const-string v2, "Cp1252"

    .line 350
    .line 351
    const/16 v4, 0x13

    .line 352
    .line 353
    const/16 v3, 0x17

    .line 354
    .line 355
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 359
    .line 360
    move-object/from16 v20, v0

    .line 361
    .line 362
    const-string/jumbo v1, "windows-1256"

    .line 363
    .line 364
    .line 365
    filled-new-array {v1}, [Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, "Cp1256"

    .line 370
    .line 371
    const/16 v4, 0x18

    .line 372
    .line 373
    const/16 v3, 0x14

    .line 374
    .line 375
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 379
    .line 380
    move-object/from16 v21, v0

    .line 381
    .line 382
    const-string v1, "UTF-16BE"

    .line 383
    .line 384
    const-string v2, "UnicodeBig"

    .line 385
    .line 386
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    const-string v2, "UnicodeBigUnmarked"

    .line 391
    .line 392
    const/16 v3, 0x19

    .line 393
    .line 394
    const/16 v4, 0x15

    .line 395
    .line 396
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 400
    .line 401
    move-object/from16 v22, v0

    .line 402
    .line 403
    const-string v1, "UTF-8"

    .line 404
    .line 405
    filled-new-array {v1}, [Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v2, "UTF8"

    .line 410
    .line 411
    const/16 v4, 0x1a

    .line 412
    .line 413
    const/16 v3, 0x16

    .line 414
    .line 415
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 419
    .line 420
    move-object/from16 v23, v0

    .line 421
    .line 422
    const/16 v1, 0x1b

    .line 423
    .line 424
    const/16 v2, 0xaa

    .line 425
    .line 426
    filled-new-array {v1, v2}, [I

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    const-string v2, "US-ASCII"

    .line 431
    .line 432
    filled-new-array {v2}, [Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    const-string v3, "ASCII"

    .line 437
    .line 438
    const/16 v4, 0x17

    .line 439
    .line 440
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 444
    .line 445
    move-object/from16 v24, v0

    .line 446
    .line 447
    const/16 v1, 0x1c

    .line 448
    .line 449
    const-string v2, "Big5"

    .line 450
    .line 451
    const/16 v3, 0x18

    .line 452
    .line 453
    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    .line 454
    .line 455
    .line 456
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 457
    .line 458
    move-object/from16 v25, v0

    .line 459
    .line 460
    const-string v1, "GBK"

    .line 461
    .line 462
    const-string v2, "GB2312"

    .line 463
    .line 464
    const-string v3, "EUC_CN"

    .line 465
    .line 466
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    const-string v2, "GB18030"

    .line 471
    .line 472
    const/16 v3, 0x1d

    .line 473
    .line 474
    const/16 v4, 0x19

    .line 475
    .line 476
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 480
    .line 481
    move-object/from16 v26, v0

    .line 482
    .line 483
    const-string v1, "EUC-KR"

    .line 484
    .line 485
    filled-new-array {v1}, [Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const-string v2, "EUC_KR"

    .line 490
    .line 491
    const/16 v3, 0x1e

    .line 492
    .line 493
    const/16 v4, 0x1a

    .line 494
    .line 495
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    move-object/from16 v0, v27

    .line 499
    .line 500
    move-object/from16 v1, v28

    .line 501
    .line 502
    move-object/from16 v2, v29

    .line 503
    .line 504
    move-object/from16 v3, v30

    .line 505
    .line 506
    move-object/from16 v4, v32

    .line 507
    .line 508
    filled-new-array/range {v0 .. v26}, [Lcom/google/zxing/common/CharacterSetECI;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 513
    .line 514
    new-instance v0, Ljava/util/HashMap;

    .line 515
    .line 516
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    .line 518
    .line 519
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 520
    .line 521
    new-instance v0, Ljava/util/HashMap;

    .line 522
    .line 523
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 524
    .line 525
    .line 526
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 527
    .line 528
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    array-length v1, v0

    .line 533
    move/from16 v15, v31

    .line 534
    .line 535
    :goto_0
    if-ge v15, v1, :cond_2

    .line 536
    .line 537
    aget-object v2, v0, v15

    .line 538
    .line 539
    iget-object v3, v2, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 540
    .line 541
    array-length v4, v3

    .line 542
    move/from16 v5, v31

    .line 543
    .line 544
    :goto_1
    if-ge v5, v4, :cond_0

    .line 545
    .line 546
    aget v6, v3, v5

    .line 547
    .line 548
    sget-object v7, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 549
    .line 550
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    check-cast v7, Ljava/util/HashMap;

    .line 555
    .line 556
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    add-int/lit8 v5, v5, 0x1

    .line 560
    .line 561
    goto :goto_1

    .line 562
    :cond_0
    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 563
    .line 564
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    check-cast v3, Ljava/util/HashMap;

    .line 569
    .line 570
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    iget-object v3, v2, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 574
    .line 575
    array-length v4, v3

    .line 576
    move/from16 v5, v31

    .line 577
    .line 578
    :goto_2
    if-ge v5, v4, :cond_1

    .line 579
    .line 580
    aget-object v6, v3, v5

    .line 581
    .line 582
    sget-object v7, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 583
    .line 584
    check-cast v7, Ljava/util/HashMap;

    .line 585
    .line 586
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    add-int/lit8 v5, v5, 0x1

    .line 590
    .line 591
    goto :goto_2

    .line 592
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 593
    .line 594
    goto :goto_0

    .line 595
    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    filled-new-array {p3}, [I

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 4
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 7
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    return p0
.end method
