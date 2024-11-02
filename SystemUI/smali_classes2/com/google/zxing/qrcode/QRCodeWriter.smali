.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_56

    .line 14
    .line 15
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 16
    .line 17
    if-ne v1, v4, :cond_55

    .line 18
    .line 19
    if-ltz v2, :cond_54

    .line 20
    .line 21
    if-ltz v3, :cond_54

    .line 22
    .line 23
    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 24
    .line 25
    sget-object v4, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 26
    .line 27
    move-object/from16 v5, p5

    .line 28
    .line 29
    check-cast v5, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    move-object v1, v4

    .line 40
    :cond_0
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v4, 0x4

    .line 56
    :goto_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 57
    .line 58
    move-object/from16 v6, p5

    .line 59
    .line 60
    check-cast v6, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    const-string v6, "ISO-8859-1"

    .line 69
    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    move-object v5, v6

    .line 73
    :cond_2
    const-string v7, "Shift_JIS"

    .line 74
    .line 75
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    sget-object v9, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    .line 80
    .line 81
    const/16 v10, 0x60

    .line 82
    .line 83
    const/4 v11, -0x1

    .line 84
    if-eqz v8, :cond_9

    .line 85
    .line 86
    :try_start_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    array-length v10, v8

    .line 91
    rem-int/lit8 v11, v10, 0x2

    .line 92
    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v11, 0x0

    .line 97
    :goto_1
    if-ge v11, v10, :cond_6

    .line 98
    .line 99
    aget-byte v12, v8, v11

    .line 100
    .line 101
    and-int/lit16 v12, v12, 0xff

    .line 102
    .line 103
    const/16 v13, 0x81

    .line 104
    .line 105
    if-lt v12, v13, :cond_4

    .line 106
    .line 107
    const/16 v13, 0x9f

    .line 108
    .line 109
    if-le v12, v13, :cond_5

    .line 110
    .line 111
    :cond_4
    const/16 v13, 0xe0

    .line 112
    .line 113
    if-lt v12, v13, :cond_7

    .line 114
    .line 115
    const/16 v13, 0xeb

    .line 116
    .line 117
    if-le v12, v13, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    add-int/lit8 v11, v11, 0x2

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const/4 v8, 0x1

    .line 124
    goto :goto_3

    .line 125
    :catch_0
    :cond_7
    :goto_2
    const/4 v8, 0x0

    .line 126
    :goto_3
    if-eqz v8, :cond_8

    .line 127
    .line 128
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_8
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_9
    const/4 v8, 0x0

    .line 135
    const/4 v12, 0x0

    .line 136
    const/4 v13, 0x0

    .line 137
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    if-ge v8, v14, :cond_d

    .line 142
    .line 143
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    const/16 v15, 0x30

    .line 148
    .line 149
    if-lt v14, v15, :cond_a

    .line 150
    .line 151
    const/16 v15, 0x39

    .line 152
    .line 153
    if-gt v14, v15, :cond_a

    .line 154
    .line 155
    const/4 v13, 0x1

    .line 156
    goto :goto_6

    .line 157
    :cond_a
    if-ge v14, v10, :cond_b

    .line 158
    .line 159
    aget v12, v9, v14

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_b
    move v12, v11

    .line 163
    :goto_5
    if-eq v12, v11, :cond_c

    .line 164
    .line 165
    const/4 v12, 0x1

    .line 166
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_c
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_d
    if-eqz v12, :cond_e

    .line 173
    .line 174
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_e
    if-eqz v13, :cond_f

    .line 178
    .line 179
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_f
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 183
    .line 184
    :goto_7
    new-instance v10, Lcom/google/zxing/common/BitArray;

    .line 185
    .line 186
    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object v11, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 190
    .line 191
    const/16 v12, 0x8

    .line 192
    .line 193
    if-ne v8, v11, :cond_10

    .line 194
    .line 195
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-nez v6, :cond_10

    .line 200
    .line 201
    sget-object v6, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 202
    .line 203
    check-cast v6, Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    check-cast v6, Lcom/google/zxing/common/CharacterSetECI;

    .line 210
    .line 211
    if-eqz v6, :cond_10

    .line 212
    .line 213
    sget-object v11, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 214
    .line 215
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    const/4 v13, 0x4

    .line 220
    invoke-virtual {v10, v11, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-virtual {v10, v6, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 228
    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_10
    const/4 v13, 0x4

    .line 232
    :goto_8
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-virtual {v10, v6, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 237
    .line 238
    .line 239
    new-instance v6, Lcom/google/zxing/common/BitArray;

    .line 240
    .line 241
    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 242
    .line 243
    .line 244
    sget-object v11, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    .line 245
    .line 246
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    aget v11, v11, v13

    .line 251
    .line 252
    const/4 v13, 0x2

    .line 253
    const/4 v14, 0x3

    .line 254
    const/4 v15, 0x1

    .line 255
    if-eq v11, v15, :cond_1c

    .line 256
    .line 257
    if-eq v11, v13, :cond_16

    .line 258
    .line 259
    if-eq v11, v14, :cond_15

    .line 260
    .line 261
    const/4 v5, 0x4

    .line 262
    if-ne v11, v5, :cond_14

    .line 263
    .line 264
    :try_start_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 265
    .line 266
    .line 267
    move-result-object v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    array-length v7, v5

    .line 269
    const/4 v9, 0x0

    .line 270
    :goto_9
    if-ge v9, v7, :cond_1f

    .line 271
    .line 272
    aget-byte v11, v5, v9

    .line 273
    .line 274
    and-int/lit16 v11, v11, 0xff

    .line 275
    .line 276
    add-int/lit8 v13, v9, 0x1

    .line 277
    .line 278
    aget-byte v13, v5, v13

    .line 279
    .line 280
    and-int/lit16 v13, v13, 0xff

    .line 281
    .line 282
    shl-int/2addr v11, v12

    .line 283
    or-int/2addr v11, v13

    .line 284
    const v13, 0x8140

    .line 285
    .line 286
    .line 287
    if-lt v11, v13, :cond_11

    .line 288
    .line 289
    const v13, 0x9ffc

    .line 290
    .line 291
    .line 292
    if-gt v11, v13, :cond_11

    .line 293
    .line 294
    const v13, 0x8140

    .line 295
    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_11
    const v13, 0xe040

    .line 299
    .line 300
    .line 301
    if-lt v11, v13, :cond_12

    .line 302
    .line 303
    const v13, 0xebbf

    .line 304
    .line 305
    .line 306
    if-gt v11, v13, :cond_12

    .line 307
    .line 308
    const v13, 0xc140

    .line 309
    .line 310
    .line 311
    :goto_a
    sub-int/2addr v11, v13

    .line 312
    goto :goto_b

    .line 313
    :cond_12
    const/4 v11, -0x1

    .line 314
    :goto_b
    const/4 v13, -0x1

    .line 315
    if-eq v11, v13, :cond_13

    .line 316
    .line 317
    shr-int/lit8 v13, v11, 0x8

    .line 318
    .line 319
    mul-int/lit16 v13, v13, 0xc0

    .line 320
    .line 321
    and-int/lit16 v11, v11, 0xff

    .line 322
    .line 323
    add-int/2addr v13, v11

    .line 324
    const/16 v11, 0xd

    .line 325
    .line 326
    invoke-virtual {v6, v13, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 327
    .line 328
    .line 329
    add-int/lit8 v9, v9, 0x2

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_13
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 333
    .line 334
    const-string v1, "Invalid byte sequence"

    .line 335
    .line 336
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :catch_1
    move-exception v0

    .line 341
    move-object v1, v0

    .line 342
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 343
    .line 344
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_14
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 349
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v2, "Invalid mode: "

    .line 353
    .line 354
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :cond_15
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 369
    .line 370
    .line 371
    move-result-object v5
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 372
    array-length v7, v5

    .line 373
    const/4 v9, 0x0

    .line 374
    :goto_c
    if-ge v9, v7, :cond_1f

    .line 375
    .line 376
    aget-byte v11, v5, v9

    .line 377
    .line 378
    invoke-virtual {v6, v11, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 379
    .line 380
    .line 381
    add-int/lit8 v9, v9, 0x1

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :catch_2
    move-exception v0

    .line 385
    move-object v1, v0

    .line 386
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 387
    .line 388
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    const/4 v7, 0x0

    .line 397
    :goto_d
    if-ge v7, v5, :cond_1f

    .line 398
    .line 399
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    const/16 v13, 0x60

    .line 404
    .line 405
    if-ge v11, v13, :cond_17

    .line 406
    .line 407
    aget v11, v9, v11

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_17
    const/4 v11, -0x1

    .line 411
    :goto_e
    const/4 v13, -0x1

    .line 412
    if-eq v11, v13, :cond_1b

    .line 413
    .line 414
    add-int/lit8 v13, v7, 0x1

    .line 415
    .line 416
    if-ge v13, v5, :cond_1a

    .line 417
    .line 418
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 419
    .line 420
    .line 421
    move-result v13

    .line 422
    const/16 v15, 0x60

    .line 423
    .line 424
    if-ge v13, v15, :cond_18

    .line 425
    .line 426
    aget v13, v9, v13

    .line 427
    .line 428
    goto :goto_f

    .line 429
    :cond_18
    const/4 v13, -0x1

    .line 430
    :goto_f
    const/4 v15, -0x1

    .line 431
    if-eq v13, v15, :cond_19

    .line 432
    .line 433
    mul-int/lit8 v11, v11, 0x2d

    .line 434
    .line 435
    add-int/2addr v11, v13

    .line 436
    const/16 v13, 0xb

    .line 437
    .line 438
    invoke-virtual {v6, v11, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 439
    .line 440
    .line 441
    add-int/lit8 v7, v7, 0x2

    .line 442
    .line 443
    goto :goto_d

    .line 444
    :cond_19
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 445
    .line 446
    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 447
    .line 448
    .line 449
    throw v0

    .line 450
    :cond_1a
    const/4 v7, 0x6

    .line 451
    invoke-virtual {v6, v11, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 452
    .line 453
    .line 454
    move v7, v13

    .line 455
    goto :goto_d

    .line 456
    :cond_1b
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 457
    .line 458
    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    const/4 v7, 0x0

    .line 467
    :goto_10
    if-ge v7, v5, :cond_1f

    .line 468
    .line 469
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    add-int/lit8 v9, v9, -0x30

    .line 474
    .line 475
    add-int/lit8 v11, v7, 0x2

    .line 476
    .line 477
    if-ge v11, v5, :cond_1d

    .line 478
    .line 479
    add-int/lit8 v13, v7, 0x1

    .line 480
    .line 481
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    add-int/lit8 v13, v13, -0x30

    .line 486
    .line 487
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 488
    .line 489
    .line 490
    move-result v11

    .line 491
    add-int/lit8 v11, v11, -0x30

    .line 492
    .line 493
    mul-int/lit8 v9, v9, 0x64

    .line 494
    .line 495
    const/16 v15, 0xa

    .line 496
    .line 497
    mul-int/2addr v13, v15

    .line 498
    add-int/2addr v13, v9

    .line 499
    add-int/2addr v13, v11

    .line 500
    invoke-virtual {v6, v13, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 501
    .line 502
    .line 503
    add-int/lit8 v7, v7, 0x3

    .line 504
    .line 505
    goto :goto_10

    .line 506
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    .line 507
    .line 508
    if-ge v7, v5, :cond_1e

    .line 509
    .line 510
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    add-int/lit8 v7, v7, -0x30

    .line 515
    .line 516
    mul-int/lit8 v9, v9, 0xa

    .line 517
    .line 518
    add-int/2addr v9, v7

    .line 519
    const/4 v7, 0x7

    .line 520
    invoke-virtual {v6, v9, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 521
    .line 522
    .line 523
    move v7, v11

    .line 524
    goto :goto_10

    .line 525
    :cond_1e
    const/4 v11, 0x4

    .line 526
    invoke-virtual {v6, v9, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 527
    .line 528
    .line 529
    goto :goto_10

    .line 530
    :cond_1f
    iget v5, v10, Lcom/google/zxing/common/BitArray;->size:I

    .line 531
    .line 532
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    .line 533
    .line 534
    const/4 v9, 0x0

    .line 535
    aget-object v7, v7, v9

    .line 536
    .line 537
    invoke-virtual {v8, v7}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    add-int/2addr v7, v5

    .line 542
    iget v5, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 543
    .line 544
    add-int/2addr v7, v5

    .line 545
    invoke-static {v7, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    iget v7, v10, Lcom/google/zxing/common/BitArray;->size:I

    .line 550
    .line 551
    invoke-virtual {v8, v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    add-int/2addr v5, v7

    .line 556
    iget v7, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 557
    .line 558
    add-int/2addr v5, v7

    .line 559
    invoke-static {v5, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    new-instance v7, Lcom/google/zxing/common/BitArray;

    .line 564
    .line 565
    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 566
    .line 567
    .line 568
    iget v9, v10, Lcom/google/zxing/common/BitArray;->size:I

    .line 569
    .line 570
    iget v11, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 571
    .line 572
    add-int/2addr v11, v9

    .line 573
    invoke-virtual {v7, v11}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 574
    .line 575
    .line 576
    const/4 v11, 0x0

    .line 577
    :goto_11
    if-ge v11, v9, :cond_20

    .line 578
    .line 579
    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 580
    .line 581
    .line 582
    move-result v13

    .line 583
    invoke-virtual {v7, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 584
    .line 585
    .line 586
    add-int/lit8 v11, v11, 0x1

    .line 587
    .line 588
    goto :goto_11

    .line 589
    :cond_20
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 590
    .line 591
    if-ne v8, v9, :cond_21

    .line 592
    .line 593
    iget v0, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 594
    .line 595
    add-int/lit8 v0, v0, 0x7

    .line 596
    .line 597
    shr-int/2addr v0, v14

    .line 598
    goto :goto_12

    .line 599
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    :goto_12
    invoke-virtual {v8, v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 604
    .line 605
    .line 606
    move-result v9

    .line 607
    const/4 v10, 0x1

    .line 608
    shl-int/2addr v10, v9

    .line 609
    if-ge v0, v10, :cond_53

    .line 610
    .line 611
    invoke-virtual {v7, v0, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 612
    .line 613
    .line 614
    iget v0, v6, Lcom/google/zxing/common/BitArray;->size:I

    .line 615
    .line 616
    iget v9, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 617
    .line 618
    add-int/2addr v9, v0

    .line 619
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 620
    .line 621
    .line 622
    const/4 v9, 0x0

    .line 623
    :goto_13
    if-ge v9, v0, :cond_22

    .line 624
    .line 625
    invoke-virtual {v6, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    invoke-virtual {v7, v10}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 630
    .line 631
    .line 632
    add-int/lit8 v9, v9, 0x1

    .line 633
    .line 634
    goto :goto_13

    .line 635
    :cond_22
    iget-object v0, v5, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 638
    .line 639
    .line 640
    move-result v6

    .line 641
    aget-object v0, v0, v6

    .line 642
    .line 643
    iget-object v6, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 644
    .line 645
    array-length v9, v6

    .line 646
    const/4 v10, 0x0

    .line 647
    const/4 v11, 0x0

    .line 648
    :goto_14
    if-ge v10, v9, :cond_23

    .line 649
    .line 650
    aget-object v13, v6, v10

    .line 651
    .line 652
    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 653
    .line 654
    add-int/2addr v11, v13

    .line 655
    add-int/lit8 v10, v10, 0x1

    .line 656
    .line 657
    goto :goto_14

    .line 658
    :cond_23
    iget v6, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 659
    .line 660
    mul-int/2addr v11, v6

    .line 661
    iget v6, v5, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 662
    .line 663
    sub-int v9, v6, v11

    .line 664
    .line 665
    shl-int/lit8 v10, v9, 0x3

    .line 666
    .line 667
    iget v11, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 668
    .line 669
    if-gt v11, v10, :cond_52

    .line 670
    .line 671
    const/4 v11, 0x0

    .line 672
    :goto_15
    const/4 v13, 0x4

    .line 673
    if-ge v11, v13, :cond_24

    .line 674
    .line 675
    iget v13, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 676
    .line 677
    if-ge v13, v10, :cond_24

    .line 678
    .line 679
    const/4 v13, 0x0

    .line 680
    invoke-virtual {v7, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 681
    .line 682
    .line 683
    add-int/lit8 v11, v11, 0x1

    .line 684
    .line 685
    goto :goto_15

    .line 686
    :cond_24
    const/4 v11, 0x0

    .line 687
    iget v13, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 688
    .line 689
    and-int/lit8 v13, v13, 0x7

    .line 690
    .line 691
    if-lez v13, :cond_25

    .line 692
    .line 693
    :goto_16
    if-ge v13, v12, :cond_25

    .line 694
    .line 695
    invoke-virtual {v7, v11}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 696
    .line 697
    .line 698
    add-int/lit8 v13, v13, 0x1

    .line 699
    .line 700
    const/4 v11, 0x0

    .line 701
    goto :goto_16

    .line 702
    :cond_25
    iget v11, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 703
    .line 704
    add-int/lit8 v11, v11, 0x7

    .line 705
    .line 706
    shr-int/2addr v11, v14

    .line 707
    sub-int v11, v9, v11

    .line 708
    .line 709
    const/4 v13, 0x0

    .line 710
    :goto_17
    if-ge v13, v11, :cond_27

    .line 711
    .line 712
    and-int/lit8 v15, v13, 0x1

    .line 713
    .line 714
    if-nez v15, :cond_26

    .line 715
    .line 716
    const/16 v15, 0xec

    .line 717
    .line 718
    goto :goto_18

    .line 719
    :cond_26
    const/16 v15, 0x11

    .line 720
    .line 721
    :goto_18
    invoke-virtual {v7, v15, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 722
    .line 723
    .line 724
    add-int/lit8 v13, v13, 0x1

    .line 725
    .line 726
    goto :goto_17

    .line 727
    :cond_27
    iget v11, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 728
    .line 729
    if-ne v11, v10, :cond_51

    .line 730
    .line 731
    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 732
    .line 733
    array-length v10, v0

    .line 734
    const/4 v11, 0x0

    .line 735
    const/4 v12, 0x0

    .line 736
    :goto_19
    if-ge v11, v10, :cond_28

    .line 737
    .line 738
    aget-object v13, v0, v11

    .line 739
    .line 740
    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 741
    .line 742
    add-int/2addr v12, v13

    .line 743
    add-int/lit8 v11, v11, 0x1

    .line 744
    .line 745
    goto :goto_19

    .line 746
    :cond_28
    iget v0, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 747
    .line 748
    add-int/lit8 v0, v0, 0x7

    .line 749
    .line 750
    shr-int/2addr v0, v14

    .line 751
    if-ne v0, v9, :cond_50

    .line 752
    .line 753
    new-instance v0, Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 756
    .line 757
    .line 758
    const/4 v10, 0x0

    .line 759
    const/4 v11, 0x0

    .line 760
    const/4 v13, 0x0

    .line 761
    const/4 v14, 0x0

    .line 762
    :goto_1a
    if-ge v10, v12, :cond_33

    .line 763
    .line 764
    const/4 v15, 0x1

    .line 765
    new-array v3, v15, [I

    .line 766
    .line 767
    new-array v15, v15, [I

    .line 768
    .line 769
    if-ge v10, v12, :cond_32

    .line 770
    .line 771
    rem-int v16, v6, v12

    .line 772
    .line 773
    sub-int v2, v12, v16

    .line 774
    .line 775
    div-int v17, v6, v12

    .line 776
    .line 777
    add-int/lit8 v18, v17, 0x1

    .line 778
    .line 779
    div-int v19, v9, v12

    .line 780
    .line 781
    add-int/lit8 v20, v19, 0x1

    .line 782
    .line 783
    move/from16 p0, v4

    .line 784
    .line 785
    sub-int v4, v17, v19

    .line 786
    .line 787
    move-object/from16 p2, v5

    .line 788
    .line 789
    sub-int v5, v18, v20

    .line 790
    .line 791
    if-ne v4, v5, :cond_31

    .line 792
    .line 793
    move-object/from16 v17, v8

    .line 794
    .line 795
    add-int v8, v2, v16

    .line 796
    .line 797
    if-ne v12, v8, :cond_30

    .line 798
    .line 799
    add-int v8, v19, v4

    .line 800
    .line 801
    mul-int/2addr v8, v2

    .line 802
    add-int v18, v20, v5

    .line 803
    .line 804
    mul-int v18, v18, v16

    .line 805
    .line 806
    add-int v8, v18, v8

    .line 807
    .line 808
    if-ne v6, v8, :cond_2f

    .line 809
    .line 810
    const/4 v8, 0x0

    .line 811
    if-ge v10, v2, :cond_29

    .line 812
    .line 813
    aput v19, v3, v8

    .line 814
    .line 815
    aput v4, v15, v8

    .line 816
    .line 817
    goto :goto_1b

    .line 818
    :cond_29
    aput v20, v3, v8

    .line 819
    .line 820
    aput v5, v15, v8

    .line 821
    .line 822
    :goto_1b
    aget v2, v3, v8

    .line 823
    .line 824
    new-array v4, v2, [B

    .line 825
    .line 826
    mul-int/lit8 v5, v13, 0x8

    .line 827
    .line 828
    const/4 v8, 0x0

    .line 829
    :goto_1c
    if-ge v8, v2, :cond_2c

    .line 830
    .line 831
    const/16 v16, 0x8

    .line 832
    .line 833
    const/16 v18, 0x0

    .line 834
    .line 835
    const/16 v19, 0x0

    .line 836
    .line 837
    move/from16 p1, v12

    .line 838
    .line 839
    move/from16 v12, v16

    .line 840
    .line 841
    move-object/from16 v16, v1

    .line 842
    .line 843
    move/from16 v1, v18

    .line 844
    .line 845
    move/from16 v18, v6

    .line 846
    .line 847
    move/from16 v6, v19

    .line 848
    .line 849
    :goto_1d
    if-ge v6, v12, :cond_2b

    .line 850
    .line 851
    invoke-virtual {v7, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 852
    .line 853
    .line 854
    move-result v12

    .line 855
    if-eqz v12, :cond_2a

    .line 856
    .line 857
    rsub-int/lit8 v12, v6, 0x7

    .line 858
    .line 859
    const/16 v19, 0x1

    .line 860
    .line 861
    shl-int v12, v19, v12

    .line 862
    .line 863
    or-int/2addr v1, v12

    .line 864
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    .line 865
    .line 866
    add-int/lit8 v6, v6, 0x1

    .line 867
    .line 868
    const/16 v12, 0x8

    .line 869
    .line 870
    goto :goto_1d

    .line 871
    :cond_2b
    add-int/lit8 v6, v8, 0x0

    .line 872
    .line 873
    int-to-byte v1, v1

    .line 874
    aput-byte v1, v4, v6

    .line 875
    .line 876
    add-int/lit8 v8, v8, 0x1

    .line 877
    .line 878
    move/from16 v12, p1

    .line 879
    .line 880
    move-object/from16 v1, v16

    .line 881
    .line 882
    move/from16 v6, v18

    .line 883
    .line 884
    goto :goto_1c

    .line 885
    :cond_2c
    move-object/from16 v16, v1

    .line 886
    .line 887
    move/from16 v18, v6

    .line 888
    .line 889
    move/from16 p1, v12

    .line 890
    .line 891
    const/4 v1, 0x0

    .line 892
    aget v1, v15, v1

    .line 893
    .line 894
    add-int v5, v2, v1

    .line 895
    .line 896
    new-array v5, v5, [I

    .line 897
    .line 898
    const/4 v6, 0x0

    .line 899
    :goto_1e
    if-ge v6, v2, :cond_2d

    .line 900
    .line 901
    aget-byte v8, v4, v6

    .line 902
    .line 903
    and-int/lit16 v8, v8, 0xff

    .line 904
    .line 905
    aput v8, v5, v6

    .line 906
    .line 907
    add-int/lit8 v6, v6, 0x1

    .line 908
    .line 909
    goto :goto_1e

    .line 910
    :cond_2d
    new-instance v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    .line 911
    .line 912
    sget-object v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 913
    .line 914
    invoke-direct {v6, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v6, v1, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode(I[I)V

    .line 918
    .line 919
    .line 920
    new-array v6, v1, [B

    .line 921
    .line 922
    const/4 v8, 0x0

    .line 923
    :goto_1f
    if-ge v8, v1, :cond_2e

    .line 924
    .line 925
    add-int v12, v2, v8

    .line 926
    .line 927
    aget v12, v5, v12

    .line 928
    .line 929
    int-to-byte v12, v12

    .line 930
    aput-byte v12, v6, v8

    .line 931
    .line 932
    add-int/lit8 v8, v8, 0x1

    .line 933
    .line 934
    goto :goto_1f

    .line 935
    :cond_2e
    new-instance v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 936
    .line 937
    invoke-direct {v5, v4, v6}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 944
    .line 945
    .line 946
    move-result v14

    .line 947
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 948
    .line 949
    .line 950
    move-result v11

    .line 951
    const/4 v1, 0x0

    .line 952
    aget v1, v3, v1

    .line 953
    .line 954
    add-int/2addr v13, v1

    .line 955
    add-int/lit8 v10, v10, 0x1

    .line 956
    .line 957
    move/from16 v4, p0

    .line 958
    .line 959
    move/from16 v12, p1

    .line 960
    .line 961
    move-object/from16 v5, p2

    .line 962
    .line 963
    move/from16 v2, p3

    .line 964
    .line 965
    move/from16 v3, p4

    .line 966
    .line 967
    move-object/from16 v1, v16

    .line 968
    .line 969
    move-object/from16 v8, v17

    .line 970
    .line 971
    move/from16 v6, v18

    .line 972
    .line 973
    goto/16 :goto_1a

    .line 974
    .line 975
    :cond_2f
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 976
    .line 977
    const-string v1, "Total bytes mismatch"

    .line 978
    .line 979
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    throw v0

    .line 983
    :cond_30
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 984
    .line 985
    const-string v1, "RS blocks mismatch"

    .line 986
    .line 987
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    throw v0

    .line 991
    :cond_31
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 992
    .line 993
    const-string v1, "EC bytes mismatch"

    .line 994
    .line 995
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    throw v0

    .line 999
    :cond_32
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1000
    .line 1001
    const-string v1, "Block ID too large"

    .line 1002
    .line 1003
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    throw v0

    .line 1007
    :cond_33
    move-object/from16 v16, v1

    .line 1008
    .line 1009
    move/from16 p0, v4

    .line 1010
    .line 1011
    move-object/from16 p2, v5

    .line 1012
    .line 1013
    move/from16 v18, v6

    .line 1014
    .line 1015
    move-object/from16 v17, v8

    .line 1016
    .line 1017
    if-ne v9, v13, :cond_4f

    .line 1018
    .line 1019
    new-instance v1, Lcom/google/zxing/common/BitArray;

    .line 1020
    .line 1021
    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    const/4 v2, 0x0

    .line 1025
    :goto_20
    if-ge v2, v14, :cond_36

    .line 1026
    .line 1027
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    :cond_34
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v4

    .line 1035
    if-eqz v4, :cond_35

    .line 1036
    .line 1037
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v4

    .line 1041
    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 1042
    .line 1043
    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    .line 1044
    .line 1045
    array-length v5, v4

    .line 1046
    if-ge v2, v5, :cond_34

    .line 1047
    .line 1048
    aget-byte v4, v4, v2

    .line 1049
    .line 1050
    const/16 v5, 0x8

    .line 1051
    .line 1052
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 1053
    .line 1054
    .line 1055
    goto :goto_21

    .line 1056
    :cond_35
    add-int/lit8 v2, v2, 0x1

    .line 1057
    .line 1058
    goto :goto_20

    .line 1059
    :cond_36
    const/4 v2, 0x0

    .line 1060
    :goto_22
    if-ge v2, v11, :cond_39

    .line 1061
    .line 1062
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    :cond_37
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v4

    .line 1070
    if-eqz v4, :cond_38

    .line 1071
    .line 1072
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v4

    .line 1076
    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 1077
    .line 1078
    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    .line 1079
    .line 1080
    array-length v5, v4

    .line 1081
    if-ge v2, v5, :cond_37

    .line 1082
    .line 1083
    aget-byte v4, v4, v2

    .line 1084
    .line 1085
    const/16 v5, 0x8

    .line 1086
    .line 1087
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_23

    .line 1091
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 1092
    .line 1093
    goto :goto_22

    .line 1094
    :cond_39
    iget v0, v1, Lcom/google/zxing/common/BitArray;->size:I

    .line 1095
    .line 1096
    add-int/lit8 v0, v0, 0x7

    .line 1097
    .line 1098
    shr-int/lit8 v0, v0, 0x3

    .line 1099
    .line 1100
    move/from16 v2, v18

    .line 1101
    .line 1102
    if-ne v2, v0, :cond_4e

    .line 1103
    .line 1104
    new-instance v0, Lcom/google/zxing/qrcode/encoder/QRCode;

    .line 1105
    .line 1106
    invoke-direct {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    move-object/from16 v4, v16

    .line 1110
    .line 1111
    iput-object v4, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 1112
    .line 1113
    move-object/from16 v8, v17

    .line 1114
    .line 1115
    iput-object v8, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 1116
    .line 1117
    move-object/from16 v2, p2

    .line 1118
    .line 1119
    iput-object v2, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 1120
    .line 1121
    iget v3, v2, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 1122
    .line 1123
    mul-int/lit8 v3, v3, 0x4

    .line 1124
    .line 1125
    add-int/lit8 v3, v3, 0x11

    .line 1126
    .line 1127
    new-instance v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 1128
    .line 1129
    invoke-direct {v5, v3, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 1130
    .line 1131
    .line 1132
    const v3, 0x7fffffff

    .line 1133
    .line 1134
    .line 1135
    const/4 v6, 0x0

    .line 1136
    const/4 v7, -0x1

    .line 1137
    :goto_24
    iget v8, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 1138
    .line 1139
    iget v9, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 1140
    .line 1141
    const/16 v10, 0x8

    .line 1142
    .line 1143
    if-ge v6, v10, :cond_4a

    .line 1144
    .line 1145
    invoke-static {v1, v4, v2, v6, v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 1146
    .line 1147
    .line 1148
    const/4 v10, 0x1

    .line 1149
    invoke-static {v5, v10}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    .line 1150
    .line 1151
    .line 1152
    move-result v10

    .line 1153
    const/4 v11, 0x0

    .line 1154
    invoke-static {v5, v11}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    .line 1155
    .line 1156
    .line 1157
    move-result v12

    .line 1158
    add-int/2addr v12, v10

    .line 1159
    move v10, v11

    .line 1160
    move v13, v10

    .line 1161
    :goto_25
    add-int/lit8 v14, v8, -0x1

    .line 1162
    .line 1163
    iget-object v15, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 1164
    .line 1165
    if-ge v11, v14, :cond_3c

    .line 1166
    .line 1167
    :goto_26
    add-int/lit8 v14, v9, -0x1

    .line 1168
    .line 1169
    if-ge v13, v14, :cond_3b

    .line 1170
    .line 1171
    aget-object v14, v15, v11

    .line 1172
    .line 1173
    move-object/from16 p1, v1

    .line 1174
    .line 1175
    aget-byte v1, v14, v13

    .line 1176
    .line 1177
    add-int/lit8 v16, v13, 0x1

    .line 1178
    .line 1179
    aget-byte v14, v14, v16

    .line 1180
    .line 1181
    if-ne v1, v14, :cond_3a

    .line 1182
    .line 1183
    add-int/lit8 v14, v11, 0x1

    .line 1184
    .line 1185
    aget-object v14, v15, v14

    .line 1186
    .line 1187
    aget-byte v13, v14, v13

    .line 1188
    .line 1189
    if-ne v1, v13, :cond_3a

    .line 1190
    .line 1191
    aget-byte v13, v14, v16

    .line 1192
    .line 1193
    if-ne v1, v13, :cond_3a

    .line 1194
    .line 1195
    add-int/lit8 v10, v10, 0x1

    .line 1196
    .line 1197
    :cond_3a
    move-object/from16 v1, p1

    .line 1198
    .line 1199
    move/from16 v13, v16

    .line 1200
    .line 1201
    goto :goto_26

    .line 1202
    :cond_3b
    move-object/from16 p1, v1

    .line 1203
    .line 1204
    add-int/lit8 v11, v11, 0x1

    .line 1205
    .line 1206
    const/4 v13, 0x0

    .line 1207
    goto :goto_25

    .line 1208
    :cond_3c
    move-object/from16 p1, v1

    .line 1209
    .line 1210
    mul-int/lit8 v10, v10, 0x3

    .line 1211
    .line 1212
    add-int/2addr v10, v12

    .line 1213
    const/4 v1, 0x0

    .line 1214
    const/4 v11, 0x0

    .line 1215
    :goto_27
    if-ge v1, v8, :cond_45

    .line 1216
    .line 1217
    const/4 v12, 0x0

    .line 1218
    :goto_28
    if-ge v12, v9, :cond_44

    .line 1219
    .line 1220
    add-int/lit8 v13, v12, 0x6

    .line 1221
    .line 1222
    if-ge v13, v9, :cond_3f

    .line 1223
    .line 1224
    aget-object v14, v15, v1

    .line 1225
    .line 1226
    move-object/from16 p2, v2

    .line 1227
    .line 1228
    aget-byte v2, v14, v12

    .line 1229
    .line 1230
    move-object/from16 v16, v4

    .line 1231
    .line 1232
    const/4 v4, 0x1

    .line 1233
    if-ne v2, v4, :cond_40

    .line 1234
    .line 1235
    add-int/lit8 v2, v12, 0x1

    .line 1236
    .line 1237
    aget-byte v2, v14, v2

    .line 1238
    .line 1239
    if-nez v2, :cond_40

    .line 1240
    .line 1241
    add-int/lit8 v2, v12, 0x2

    .line 1242
    .line 1243
    aget-byte v2, v14, v2

    .line 1244
    .line 1245
    if-ne v2, v4, :cond_40

    .line 1246
    .line 1247
    add-int/lit8 v2, v12, 0x3

    .line 1248
    .line 1249
    aget-byte v2, v14, v2

    .line 1250
    .line 1251
    if-ne v2, v4, :cond_40

    .line 1252
    .line 1253
    add-int/lit8 v2, v12, 0x4

    .line 1254
    .line 1255
    aget-byte v2, v14, v2

    .line 1256
    .line 1257
    if-ne v2, v4, :cond_40

    .line 1258
    .line 1259
    add-int/lit8 v2, v12, 0x5

    .line 1260
    .line 1261
    aget-byte v2, v14, v2

    .line 1262
    .line 1263
    if-nez v2, :cond_40

    .line 1264
    .line 1265
    aget-byte v2, v14, v13

    .line 1266
    .line 1267
    if-ne v2, v4, :cond_40

    .line 1268
    .line 1269
    add-int/lit8 v2, v12, 0xa

    .line 1270
    .line 1271
    if-ge v2, v9, :cond_3d

    .line 1272
    .line 1273
    add-int/lit8 v4, v12, 0x7

    .line 1274
    .line 1275
    aget-byte v4, v14, v4

    .line 1276
    .line 1277
    if-nez v4, :cond_3d

    .line 1278
    .line 1279
    add-int/lit8 v4, v12, 0x8

    .line 1280
    .line 1281
    aget-byte v4, v14, v4

    .line 1282
    .line 1283
    if-nez v4, :cond_3d

    .line 1284
    .line 1285
    add-int/lit8 v4, v12, 0x9

    .line 1286
    .line 1287
    aget-byte v4, v14, v4

    .line 1288
    .line 1289
    if-nez v4, :cond_3d

    .line 1290
    .line 1291
    aget-byte v2, v14, v2

    .line 1292
    .line 1293
    if-eqz v2, :cond_3e

    .line 1294
    .line 1295
    :cond_3d
    add-int/lit8 v2, v12, -0x4

    .line 1296
    .line 1297
    if-ltz v2, :cond_40

    .line 1298
    .line 1299
    add-int/lit8 v4, v12, -0x1

    .line 1300
    .line 1301
    aget-byte v4, v14, v4

    .line 1302
    .line 1303
    if-nez v4, :cond_40

    .line 1304
    .line 1305
    add-int/lit8 v4, v12, -0x2

    .line 1306
    .line 1307
    aget-byte v4, v14, v4

    .line 1308
    .line 1309
    if-nez v4, :cond_40

    .line 1310
    .line 1311
    add-int/lit8 v4, v12, -0x3

    .line 1312
    .line 1313
    aget-byte v4, v14, v4

    .line 1314
    .line 1315
    if-nez v4, :cond_40

    .line 1316
    .line 1317
    aget-byte v2, v14, v2

    .line 1318
    .line 1319
    if-nez v2, :cond_40

    .line 1320
    .line 1321
    :cond_3e
    add-int/lit8 v11, v11, 0x28

    .line 1322
    .line 1323
    goto :goto_29

    .line 1324
    :cond_3f
    move-object/from16 p2, v2

    .line 1325
    .line 1326
    move-object/from16 v16, v4

    .line 1327
    .line 1328
    :cond_40
    :goto_29
    add-int/lit8 v2, v1, 0x6

    .line 1329
    .line 1330
    if-ge v2, v8, :cond_43

    .line 1331
    .line 1332
    aget-object v4, v15, v1

    .line 1333
    .line 1334
    aget-byte v4, v4, v12

    .line 1335
    .line 1336
    const/4 v13, 0x1

    .line 1337
    if-ne v4, v13, :cond_43

    .line 1338
    .line 1339
    add-int/lit8 v4, v1, 0x1

    .line 1340
    .line 1341
    aget-object v4, v15, v4

    .line 1342
    .line 1343
    aget-byte v4, v4, v12

    .line 1344
    .line 1345
    if-nez v4, :cond_43

    .line 1346
    .line 1347
    add-int/lit8 v4, v1, 0x2

    .line 1348
    .line 1349
    aget-object v4, v15, v4

    .line 1350
    .line 1351
    aget-byte v4, v4, v12

    .line 1352
    .line 1353
    if-ne v4, v13, :cond_43

    .line 1354
    .line 1355
    add-int/lit8 v4, v1, 0x3

    .line 1356
    .line 1357
    aget-object v4, v15, v4

    .line 1358
    .line 1359
    aget-byte v4, v4, v12

    .line 1360
    .line 1361
    if-ne v4, v13, :cond_43

    .line 1362
    .line 1363
    add-int/lit8 v4, v1, 0x4

    .line 1364
    .line 1365
    aget-object v4, v15, v4

    .line 1366
    .line 1367
    aget-byte v4, v4, v12

    .line 1368
    .line 1369
    if-ne v4, v13, :cond_43

    .line 1370
    .line 1371
    add-int/lit8 v4, v1, 0x5

    .line 1372
    .line 1373
    aget-object v4, v15, v4

    .line 1374
    .line 1375
    aget-byte v4, v4, v12

    .line 1376
    .line 1377
    if-nez v4, :cond_43

    .line 1378
    .line 1379
    aget-object v2, v15, v2

    .line 1380
    .line 1381
    aget-byte v2, v2, v12

    .line 1382
    .line 1383
    if-ne v2, v13, :cond_43

    .line 1384
    .line 1385
    add-int/lit8 v2, v1, 0xa

    .line 1386
    .line 1387
    if-ge v2, v8, :cond_41

    .line 1388
    .line 1389
    add-int/lit8 v4, v1, 0x7

    .line 1390
    .line 1391
    aget-object v4, v15, v4

    .line 1392
    .line 1393
    aget-byte v4, v4, v12

    .line 1394
    .line 1395
    if-nez v4, :cond_41

    .line 1396
    .line 1397
    add-int/lit8 v4, v1, 0x8

    .line 1398
    .line 1399
    aget-object v4, v15, v4

    .line 1400
    .line 1401
    aget-byte v4, v4, v12

    .line 1402
    .line 1403
    if-nez v4, :cond_41

    .line 1404
    .line 1405
    add-int/lit8 v4, v1, 0x9

    .line 1406
    .line 1407
    aget-object v4, v15, v4

    .line 1408
    .line 1409
    aget-byte v4, v4, v12

    .line 1410
    .line 1411
    if-nez v4, :cond_41

    .line 1412
    .line 1413
    aget-object v2, v15, v2

    .line 1414
    .line 1415
    aget-byte v2, v2, v12

    .line 1416
    .line 1417
    if-eqz v2, :cond_42

    .line 1418
    .line 1419
    :cond_41
    add-int/lit8 v2, v1, -0x4

    .line 1420
    .line 1421
    if-ltz v2, :cond_43

    .line 1422
    .line 1423
    add-int/lit8 v4, v1, -0x1

    .line 1424
    .line 1425
    aget-object v4, v15, v4

    .line 1426
    .line 1427
    aget-byte v4, v4, v12

    .line 1428
    .line 1429
    if-nez v4, :cond_43

    .line 1430
    .line 1431
    add-int/lit8 v4, v1, -0x2

    .line 1432
    .line 1433
    aget-object v4, v15, v4

    .line 1434
    .line 1435
    aget-byte v4, v4, v12

    .line 1436
    .line 1437
    if-nez v4, :cond_43

    .line 1438
    .line 1439
    add-int/lit8 v4, v1, -0x3

    .line 1440
    .line 1441
    aget-object v4, v15, v4

    .line 1442
    .line 1443
    aget-byte v4, v4, v12

    .line 1444
    .line 1445
    if-nez v4, :cond_43

    .line 1446
    .line 1447
    aget-object v2, v15, v2

    .line 1448
    .line 1449
    aget-byte v2, v2, v12

    .line 1450
    .line 1451
    if-nez v2, :cond_43

    .line 1452
    .line 1453
    :cond_42
    add-int/lit8 v11, v11, 0x28

    .line 1454
    .line 1455
    :cond_43
    add-int/lit8 v12, v12, 0x1

    .line 1456
    .line 1457
    move-object/from16 v2, p2

    .line 1458
    .line 1459
    move-object/from16 v4, v16

    .line 1460
    .line 1461
    goto/16 :goto_28

    .line 1462
    .line 1463
    :cond_44
    move-object/from16 p2, v2

    .line 1464
    .line 1465
    move-object/from16 v16, v4

    .line 1466
    .line 1467
    add-int/lit8 v1, v1, 0x1

    .line 1468
    .line 1469
    goto/16 :goto_27

    .line 1470
    .line 1471
    :cond_45
    move-object/from16 p2, v2

    .line 1472
    .line 1473
    move-object/from16 v16, v4

    .line 1474
    .line 1475
    add-int/2addr v10, v11

    .line 1476
    const/4 v1, 0x0

    .line 1477
    const/4 v2, 0x0

    .line 1478
    :goto_2a
    if-ge v1, v8, :cond_48

    .line 1479
    .line 1480
    aget-object v4, v15, v1

    .line 1481
    .line 1482
    const/4 v11, 0x0

    .line 1483
    :goto_2b
    if-ge v11, v9, :cond_47

    .line 1484
    .line 1485
    aget-byte v12, v4, v11

    .line 1486
    .line 1487
    const/4 v13, 0x1

    .line 1488
    if-ne v12, v13, :cond_46

    .line 1489
    .line 1490
    add-int/lit8 v2, v2, 0x1

    .line 1491
    .line 1492
    :cond_46
    add-int/lit8 v11, v11, 0x1

    .line 1493
    .line 1494
    goto :goto_2b

    .line 1495
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 1496
    .line 1497
    goto :goto_2a

    .line 1498
    :cond_48
    mul-int/2addr v8, v9

    .line 1499
    int-to-double v1, v2

    .line 1500
    int-to-double v8, v8

    .line 1501
    div-double/2addr v1, v8

    .line 1502
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 1503
    .line 1504
    sub-double/2addr v1, v8

    .line 1505
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 1506
    .line 1507
    .line 1508
    move-result-wide v1

    .line 1509
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    .line 1510
    .line 1511
    mul-double/2addr v1, v8

    .line 1512
    double-to-int v1, v1

    .line 1513
    mul-int/lit8 v1, v1, 0xa

    .line 1514
    .line 1515
    add-int/2addr v1, v10

    .line 1516
    if-ge v1, v3, :cond_49

    .line 1517
    .line 1518
    move v3, v1

    .line 1519
    move v7, v6

    .line 1520
    :cond_49
    add-int/lit8 v6, v6, 0x1

    .line 1521
    .line 1522
    move-object/from16 v1, p1

    .line 1523
    .line 1524
    move-object/from16 v2, p2

    .line 1525
    .line 1526
    move-object/from16 v4, v16

    .line 1527
    .line 1528
    goto/16 :goto_24

    .line 1529
    .line 1530
    :cond_4a
    move-object/from16 p1, v1

    .line 1531
    .line 1532
    move-object/from16 p2, v2

    .line 1533
    .line 1534
    move-object/from16 v16, v4

    .line 1535
    .line 1536
    iput v7, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 1537
    .line 1538
    move-object/from16 v3, p1

    .line 1539
    .line 1540
    move-object/from16 v1, p2

    .line 1541
    .line 1542
    invoke-static {v3, v4, v1, v7, v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 1543
    .line 1544
    .line 1545
    iput-object v5, v0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 1546
    .line 1547
    shl-int/lit8 v0, p0, 0x1

    .line 1548
    .line 1549
    add-int v1, v9, v0

    .line 1550
    .line 1551
    add-int/2addr v0, v8

    .line 1552
    move/from16 v2, p3

    .line 1553
    .line 1554
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1555
    .line 1556
    .line 1557
    move-result v2

    .line 1558
    move/from16 v3, p4

    .line 1559
    .line 1560
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1561
    .line 1562
    .line 1563
    move-result v3

    .line 1564
    div-int v1, v2, v1

    .line 1565
    .line 1566
    div-int v0, v3, v0

    .line 1567
    .line 1568
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    mul-int v1, v9, v0

    .line 1573
    .line 1574
    sub-int v1, v2, v1

    .line 1575
    .line 1576
    div-int/lit8 v1, v1, 0x2

    .line 1577
    .line 1578
    mul-int v4, v8, v0

    .line 1579
    .line 1580
    sub-int v4, v3, v4

    .line 1581
    .line 1582
    div-int/lit8 v4, v4, 0x2

    .line 1583
    .line 1584
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    .line 1585
    .line 1586
    invoke-direct {v6, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 1587
    .line 1588
    .line 1589
    const/4 v2, 0x0

    .line 1590
    :goto_2c
    if-ge v2, v8, :cond_4d

    .line 1591
    .line 1592
    const/4 v3, 0x0

    .line 1593
    move v7, v1

    .line 1594
    :goto_2d
    if-ge v3, v9, :cond_4c

    .line 1595
    .line 1596
    invoke-virtual {v5, v3, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 1597
    .line 1598
    .line 1599
    move-result v10

    .line 1600
    const/4 v11, 0x1

    .line 1601
    if-ne v10, v11, :cond_4b

    .line 1602
    .line 1603
    invoke-virtual {v6, v7, v4, v0, v0}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 1604
    .line 1605
    .line 1606
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    .line 1607
    .line 1608
    add-int/2addr v7, v0

    .line 1609
    goto :goto_2d

    .line 1610
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    .line 1611
    .line 1612
    add-int/2addr v4, v0

    .line 1613
    goto :goto_2c

    .line 1614
    :cond_4d
    return-object v6

    .line 1615
    :cond_4e
    move-object v3, v1

    .line 1616
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1617
    .line 1618
    const-string v1, "Interleaving error: "

    .line 1619
    .line 1620
    const-string v4, " and "

    .line 1621
    .line 1622
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v1

    .line 1626
    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 1627
    .line 1628
    add-int/lit8 v2, v2, 0x7

    .line 1629
    .line 1630
    shr-int/lit8 v2, v2, 0x3

    .line 1631
    .line 1632
    const-string v3, " differ."

    .line 1633
    .line 1634
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1

    .line 1638
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1639
    .line 1640
    .line 1641
    throw v0

    .line 1642
    :cond_4f
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1643
    .line 1644
    const-string v1, "Data bytes does not match offset"

    .line 1645
    .line 1646
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1647
    .line 1648
    .line 1649
    throw v0

    .line 1650
    :cond_50
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1651
    .line 1652
    const-string v1, "Number of bits and data bytes does not match"

    .line 1653
    .line 1654
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1655
    .line 1656
    .line 1657
    throw v0

    .line 1658
    :cond_51
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1659
    .line 1660
    const-string v1, "Bits size does not equal capacity"

    .line 1661
    .line 1662
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    throw v0

    .line 1666
    :cond_52
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1667
    .line 1668
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1669
    .line 1670
    const-string v2, "data bits cannot fit in the QR Code"

    .line 1671
    .line 1672
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1673
    .line 1674
    .line 1675
    iget v2, v7, Lcom/google/zxing/common/BitArray;->size:I

    .line 1676
    .line 1677
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1678
    .line 1679
    .line 1680
    const-string v2, " > "

    .line 1681
    .line 1682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v1

    .line 1692
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1693
    .line 1694
    .line 1695
    throw v0

    .line 1696
    :cond_53
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 1697
    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1704
    .line 1705
    .line 1706
    const-string v0, " is bigger than "

    .line 1707
    .line 1708
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    .line 1710
    .line 1711
    add-int/lit8 v10, v10, -0x1

    .line 1712
    .line 1713
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v0

    .line 1720
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1721
    .line 1722
    .line 1723
    throw v1

    .line 1724
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1725
    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1727
    .line 1728
    const-string v4, "Requested dimensions are too small: "

    .line 1729
    .line 1730
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1734
    .line 1735
    .line 1736
    const/16 v2, 0x78

    .line 1737
    .line 1738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v1

    .line 1748
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1749
    .line 1750
    .line 1751
    throw v0

    .line 1752
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1753
    .line 1754
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1755
    .line 1756
    const-string v3, "Can only encode QR_CODE, but got "

    .line 1757
    .line 1758
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1769
    .line 1770
    .line 1771
    throw v0

    .line 1772
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1773
    .line 1774
    const-string v1, "Found empty contents"

    .line 1775
    .line 1776
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1777
    .line 1778
    .line 1779
    throw v0
.end method
