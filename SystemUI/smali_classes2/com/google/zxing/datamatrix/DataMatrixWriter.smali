.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
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
    .locals 17

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
    if-nez v4, :cond_32

    .line 14
    .line 15
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 16
    .line 17
    if-ne v1, v4, :cond_31

    .line 18
    .line 19
    if-ltz v2, :cond_30

    .line 20
    .line 21
    if-ltz v3, :cond_30

    .line 22
    .line 23
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 24
    .line 25
    sget-object v2, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    .line 26
    .line 27
    move-object/from16 v3, p5

    .line 28
    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    move-object v1, v2

    .line 40
    :cond_0
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/google/zxing/Dimension;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v2, v4

    .line 53
    :goto_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/google/zxing/Dimension;

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    move-object v4, v3

    .line 64
    :cond_2
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    .line 65
    .line 66
    invoke-direct {v5}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    .line 70
    .line 71
    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    .line 75
    .line 76
    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v8, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    .line 80
    .line 81
    invoke-direct {v8}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    .line 85
    .line 86
    invoke-direct {v9}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    .line 90
    .line 91
    invoke-direct {v10}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    .line 92
    .line 93
    .line 94
    filled-new-array/range {v5 .. v10}, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .line 99
    .line 100
    invoke-direct {v5, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 104
    .line 105
    iput-object v2, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    .line 106
    .line 107
    iput-object v4, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    .line 108
    .line 109
    const-string v6, "[)>\u001e05\u001d"

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const/4 v7, 0x7

    .line 116
    const/4 v8, 0x2

    .line 117
    const-string v9, "\u001e\u0004"

    .line 118
    .line 119
    if-eqz v6, :cond_3

    .line 120
    .line 121
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    const/16 v0, 0xec

    .line 128
    .line 129
    invoke-virtual {v5, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 130
    .line 131
    .line 132
    iput v8, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    .line 133
    .line 134
    iget v0, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 135
    .line 136
    add-int/2addr v0, v7

    .line 137
    iput v0, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    const-string v6, "[)>\u001e06\u001d"

    .line 141
    .line 142
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_4

    .line 147
    .line 148
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    const/16 v0, 0xed

    .line 155
    .line 156
    invoke-virtual {v5, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 157
    .line 158
    .line 159
    iput v8, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    .line 160
    .line 161
    iget v0, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 162
    .line 163
    add-int/2addr v0, v7

    .line 164
    iput v0, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 165
    .line 166
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 167
    move v6, v0

    .line 168
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_6

    .line 173
    .line 174
    aget-object v9, v3, v6

    .line 175
    .line 176
    invoke-interface {v9, v5}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 177
    .line 178
    .line 179
    iget v9, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 180
    .line 181
    if-ltz v9, :cond_5

    .line 182
    .line 183
    const/4 v6, -0x1

    .line 184
    iput v6, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 185
    .line 186
    move v6, v9

    .line 187
    goto :goto_2

    .line 188
    :cond_6
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-virtual {v5, v9}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 197
    .line 198
    .line 199
    iget-object v9, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 200
    .line 201
    iget v9, v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 202
    .line 203
    const/4 v10, 0x5

    .line 204
    const/16 v11, 0xfe

    .line 205
    .line 206
    if-ge v3, v9, :cond_7

    .line 207
    .line 208
    if-eqz v6, :cond_7

    .line 209
    .line 210
    if-eq v6, v10, :cond_7

    .line 211
    .line 212
    invoke-virtual {v5, v11}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 213
    .line 214
    .line 215
    :cond_7
    iget-object v3, v5, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    const/16 v6, 0x81

    .line 222
    .line 223
    if-ge v5, v9, :cond_8

    .line 224
    .line 225
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :cond_8
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    const/4 v12, 0x1

    .line 233
    if-ge v5, v9, :cond_a

    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    add-int/2addr v5, v12

    .line 240
    mul-int/lit16 v5, v5, 0x95

    .line 241
    .line 242
    rem-int/lit16 v5, v5, 0xfd

    .line 243
    .line 244
    add-int/2addr v5, v12

    .line 245
    add-int/2addr v5, v6

    .line 246
    if-gt v5, v11, :cond_9

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_9
    add-int/lit16 v5, v5, -0xfe

    .line 250
    .line 251
    :goto_4
    int-to-char v5, v5

    .line 252
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    invoke-static {v5, v1, v2, v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    iget v4, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 275
    .line 276
    if-ne v2, v4, :cond_2f

    .line 277
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    iget v5, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 281
    .line 282
    add-int v6, v4, v5

    .line 283
    .line 284
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getInterleavedBlockCount()I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-ne v6, v12, :cond_b

    .line 295
    .line 296
    invoke-static {v5, v3}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_9

    .line 304
    .line 305
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->capacity()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    .line 311
    .line 312
    new-array v5, v6, [I

    .line 313
    .line 314
    new-array v9, v6, [I

    .line 315
    .line 316
    new-array v11, v6, [I

    .line 317
    .line 318
    move v13, v0

    .line 319
    :goto_5
    if-ge v13, v6, :cond_d

    .line 320
    .line 321
    add-int/lit8 v14, v13, 0x1

    .line 322
    .line 323
    invoke-virtual {v1, v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataLengthForInterleavedBlock(I)I

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    aput v15, v5, v13

    .line 328
    .line 329
    iget v15, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    .line 330
    .line 331
    aput v15, v9, v13

    .line 332
    .line 333
    aput v0, v11, v13

    .line 334
    .line 335
    if-lez v13, :cond_c

    .line 336
    .line 337
    add-int/lit8 v15, v13, -0x1

    .line 338
    .line 339
    aget v15, v11, v15

    .line 340
    .line 341
    aget v16, v5, v13

    .line 342
    .line 343
    add-int v15, v15, v16

    .line 344
    .line 345
    aput v15, v11, v13

    .line 346
    .line 347
    :cond_c
    move v13, v14

    .line 348
    goto :goto_5

    .line 349
    :cond_d
    move v11, v0

    .line 350
    :goto_6
    if-ge v11, v6, :cond_10

    .line 351
    .line 352
    new-instance v13, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    aget v14, v5, v11

    .line 355
    .line 356
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 357
    .line 358
    .line 359
    move v14, v11

    .line 360
    :goto_7
    if-ge v14, v4, :cond_e

    .line 361
    .line 362
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    .line 363
    .line 364
    .line 365
    move-result v15

    .line 366
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    add-int/2addr v14, v6

    .line 370
    goto :goto_7

    .line 371
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v13

    .line 375
    aget v14, v9, v11

    .line 376
    .line 377
    invoke-static {v14, v13}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v13

    .line 381
    move v15, v0

    .line 382
    move v14, v11

    .line 383
    :goto_8
    aget v16, v9, v11

    .line 384
    .line 385
    mul-int v7, v16, v6

    .line 386
    .line 387
    if-ge v14, v7, :cond_f

    .line 388
    .line 389
    add-int v7, v4, v14

    .line 390
    .line 391
    add-int/lit8 v16, v15, 0x1

    .line 392
    .line 393
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    .line 394
    .line 395
    .line 396
    move-result v15

    .line 397
    invoke-virtual {v2, v7, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 398
    .line 399
    .line 400
    add-int/2addr v14, v6

    .line 401
    move/from16 v15, v16

    .line 402
    .line 403
    const/4 v7, 0x7

    .line 404
    goto :goto_8

    .line 405
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 406
    .line 407
    const/4 v7, 0x7

    .line 408
    goto :goto_6

    .line 409
    :cond_10
    :goto_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    new-instance v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    iget v5, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 420
    .line 421
    mul-int/2addr v4, v5

    .line 422
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    iget v7, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 427
    .line 428
    mul-int/2addr v6, v7

    .line 429
    invoke-direct {v3, v2, v4, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/String;II)V

    .line 430
    .line 431
    .line 432
    const/4 v2, 0x4

    .line 433
    move v6, v0

    .line 434
    move v9, v6

    .line 435
    move v4, v2

    .line 436
    :goto_a
    const/4 v11, 0x3

    .line 437
    iget v15, v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    .line 438
    .line 439
    iget v14, v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    .line 440
    .line 441
    if-ne v4, v14, :cond_11

    .line 442
    .line 443
    if-nez v6, :cond_11

    .line 444
    .line 445
    add-int/lit8 v16, v9, 0x1

    .line 446
    .line 447
    add-int/lit8 v13, v14, -0x1

    .line 448
    .line 449
    invoke-virtual {v3, v13, v0, v9, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v13, v12, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v13, v8, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 456
    .line 457
    .line 458
    add-int/lit8 v13, v15, -0x2

    .line 459
    .line 460
    invoke-virtual {v3, v0, v13, v9, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 461
    .line 462
    .line 463
    add-int/lit8 v13, v15, -0x1

    .line 464
    .line 465
    invoke-virtual {v3, v0, v13, v9, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 466
    .line 467
    .line 468
    const/4 v10, 0x6

    .line 469
    invoke-virtual {v3, v12, v13, v9, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 470
    .line 471
    .line 472
    const/4 v10, 0x7

    .line 473
    invoke-virtual {v3, v8, v13, v9, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 474
    .line 475
    .line 476
    const/16 v10, 0x8

    .line 477
    .line 478
    invoke-virtual {v3, v11, v13, v9, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 479
    .line 480
    .line 481
    move/from16 v9, v16

    .line 482
    .line 483
    :cond_11
    add-int/lit8 v10, v14, -0x2

    .line 484
    .line 485
    if-ne v4, v10, :cond_12

    .line 486
    .line 487
    if-nez v6, :cond_12

    .line 488
    .line 489
    rem-int/lit8 v13, v15, 0x4

    .line 490
    .line 491
    if-eqz v13, :cond_12

    .line 492
    .line 493
    add-int/lit8 v13, v9, 0x1

    .line 494
    .line 495
    add-int/lit8 v2, v14, -0x3

    .line 496
    .line 497
    invoke-virtual {v3, v2, v0, v9, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v10, v0, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 501
    .line 502
    .line 503
    add-int/lit8 v2, v14, -0x1

    .line 504
    .line 505
    invoke-virtual {v3, v2, v0, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v2, v15, -0x4

    .line 509
    .line 510
    const/4 v11, 0x4

    .line 511
    invoke-virtual {v3, v0, v2, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 512
    .line 513
    .line 514
    add-int/lit8 v2, v15, -0x3

    .line 515
    .line 516
    const/4 v11, 0x5

    .line 517
    invoke-virtual {v3, v0, v2, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 518
    .line 519
    .line 520
    add-int/lit8 v2, v15, -0x2

    .line 521
    .line 522
    const/4 v11, 0x6

    .line 523
    invoke-virtual {v3, v0, v2, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 524
    .line 525
    .line 526
    add-int/lit8 v2, v15, -0x1

    .line 527
    .line 528
    const/4 v11, 0x7

    .line 529
    invoke-virtual {v3, v0, v2, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 530
    .line 531
    .line 532
    const/16 v11, 0x8

    .line 533
    .line 534
    invoke-virtual {v3, v12, v2, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 535
    .line 536
    .line 537
    move v9, v13

    .line 538
    :cond_12
    if-ne v4, v10, :cond_13

    .line 539
    .line 540
    if-nez v6, :cond_13

    .line 541
    .line 542
    rem-int/lit8 v2, v15, 0x8

    .line 543
    .line 544
    const/4 v11, 0x4

    .line 545
    if-ne v2, v11, :cond_13

    .line 546
    .line 547
    add-int/lit8 v2, v9, 0x1

    .line 548
    .line 549
    add-int/lit8 v11, v14, -0x3

    .line 550
    .line 551
    invoke-virtual {v3, v11, v0, v9, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v10, v0, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 555
    .line 556
    .line 557
    add-int/lit8 v10, v14, -0x1

    .line 558
    .line 559
    const/4 v11, 0x3

    .line 560
    invoke-virtual {v3, v10, v0, v9, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 561
    .line 562
    .line 563
    add-int/lit8 v10, v15, -0x2

    .line 564
    .line 565
    const/4 v13, 0x4

    .line 566
    invoke-virtual {v3, v0, v10, v9, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 567
    .line 568
    .line 569
    add-int/lit8 v10, v15, -0x1

    .line 570
    .line 571
    const/4 v13, 0x5

    .line 572
    invoke-virtual {v3, v0, v10, v9, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 573
    .line 574
    .line 575
    const/4 v13, 0x6

    .line 576
    invoke-virtual {v3, v12, v10, v9, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 577
    .line 578
    .line 579
    const/4 v13, 0x7

    .line 580
    invoke-virtual {v3, v8, v10, v9, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 581
    .line 582
    .line 583
    const/16 v13, 0x8

    .line 584
    .line 585
    invoke-virtual {v3, v11, v10, v9, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 586
    .line 587
    .line 588
    move v9, v2

    .line 589
    :cond_13
    add-int/lit8 v2, v14, 0x4

    .line 590
    .line 591
    if-ne v4, v2, :cond_14

    .line 592
    .line 593
    if-ne v6, v8, :cond_14

    .line 594
    .line 595
    rem-int/lit8 v2, v15, 0x8

    .line 596
    .line 597
    if-nez v2, :cond_14

    .line 598
    .line 599
    add-int/lit8 v2, v9, 0x1

    .line 600
    .line 601
    add-int/lit8 v10, v14, -0x1

    .line 602
    .line 603
    invoke-virtual {v3, v10, v0, v9, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 604
    .line 605
    .line 606
    add-int/lit8 v11, v15, -0x1

    .line 607
    .line 608
    invoke-virtual {v3, v10, v11, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 609
    .line 610
    .line 611
    add-int/lit8 v10, v15, -0x3

    .line 612
    .line 613
    const/4 v13, 0x3

    .line 614
    invoke-virtual {v3, v0, v10, v9, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 615
    .line 616
    .line 617
    add-int/lit8 v13, v15, -0x2

    .line 618
    .line 619
    const/4 v8, 0x4

    .line 620
    invoke-virtual {v3, v0, v13, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 621
    .line 622
    .line 623
    const/4 v8, 0x5

    .line 624
    invoke-virtual {v3, v0, v11, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 625
    .line 626
    .line 627
    const/4 v8, 0x6

    .line 628
    invoke-virtual {v3, v12, v10, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 629
    .line 630
    .line 631
    const/4 v8, 0x7

    .line 632
    invoke-virtual {v3, v12, v13, v9, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 633
    .line 634
    .line 635
    const/16 v10, 0x8

    .line 636
    .line 637
    invoke-virtual {v3, v12, v11, v9, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 638
    .line 639
    .line 640
    move v9, v2

    .line 641
    goto :goto_b

    .line 642
    :cond_14
    const/4 v8, 0x7

    .line 643
    :cond_15
    :goto_b
    iget-object v2, v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    .line 644
    .line 645
    if-ge v4, v14, :cond_17

    .line 646
    .line 647
    if-ltz v6, :cond_17

    .line 648
    .line 649
    mul-int v10, v4, v15

    .line 650
    .line 651
    add-int/2addr v10, v6

    .line 652
    aget-byte v10, v2, v10

    .line 653
    .line 654
    if-ltz v10, :cond_16

    .line 655
    .line 656
    move v10, v12

    .line 657
    goto :goto_c

    .line 658
    :cond_16
    move v10, v0

    .line 659
    :goto_c
    if-nez v10, :cond_17

    .line 660
    .line 661
    add-int/lit8 v10, v9, 0x1

    .line 662
    .line 663
    invoke-virtual {v3, v4, v6, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    .line 664
    .line 665
    .line 666
    move v9, v10

    .line 667
    :cond_17
    add-int/lit8 v4, v4, -0x2

    .line 668
    .line 669
    add-int/lit8 v6, v6, 0x2

    .line 670
    .line 671
    if-ltz v4, :cond_18

    .line 672
    .line 673
    if-lt v6, v15, :cond_15

    .line 674
    .line 675
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 676
    .line 677
    add-int/lit8 v6, v6, 0x3

    .line 678
    .line 679
    :cond_19
    if-ltz v4, :cond_1b

    .line 680
    .line 681
    if-ge v6, v15, :cond_1b

    .line 682
    .line 683
    mul-int v10, v4, v15

    .line 684
    .line 685
    add-int/2addr v10, v6

    .line 686
    aget-byte v10, v2, v10

    .line 687
    .line 688
    if-ltz v10, :cond_1a

    .line 689
    .line 690
    move v10, v12

    .line 691
    goto :goto_d

    .line 692
    :cond_1a
    move v10, v0

    .line 693
    :goto_d
    if-nez v10, :cond_1b

    .line 694
    .line 695
    add-int/lit8 v10, v9, 0x1

    .line 696
    .line 697
    invoke-virtual {v3, v4, v6, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    .line 698
    .line 699
    .line 700
    move v9, v10

    .line 701
    :cond_1b
    add-int/lit8 v4, v4, 0x2

    .line 702
    .line 703
    add-int/lit8 v6, v6, -0x2

    .line 704
    .line 705
    if-ge v4, v14, :cond_1c

    .line 706
    .line 707
    if-gez v6, :cond_19

    .line 708
    .line 709
    :cond_1c
    add-int/lit8 v4, v4, 0x3

    .line 710
    .line 711
    add-int/lit8 v6, v6, 0x1

    .line 712
    .line 713
    if-lt v4, v14, :cond_2e

    .line 714
    .line 715
    if-lt v6, v15, :cond_2e

    .line 716
    .line 717
    add-int/lit8 v3, v15, -0x1

    .line 718
    .line 719
    add-int/lit8 v4, v14, -0x1

    .line 720
    .line 721
    mul-int v6, v4, v15

    .line 722
    .line 723
    add-int/2addr v6, v3

    .line 724
    aget-byte v6, v2, v6

    .line 725
    .line 726
    if-ltz v6, :cond_1d

    .line 727
    .line 728
    move v6, v12

    .line 729
    goto :goto_e

    .line 730
    :cond_1d
    move v6, v0

    .line 731
    :goto_e
    if-nez v6, :cond_1e

    .line 732
    .line 733
    mul-int/2addr v4, v15

    .line 734
    add-int/2addr v4, v3

    .line 735
    aput-byte v12, v2, v4

    .line 736
    .line 737
    add-int/lit8 v3, v15, -0x2

    .line 738
    .line 739
    const/4 v4, 0x2

    .line 740
    sub-int/2addr v14, v4

    .line 741
    mul-int/2addr v14, v15

    .line 742
    add-int/2addr v14, v3

    .line 743
    aput-byte v12, v2, v14

    .line 744
    .line 745
    :cond_1e
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    mul-int/2addr v3, v5

    .line 750
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 751
    .line 752
    .line 753
    move-result v4

    .line 754
    mul-int/2addr v4, v7

    .line 755
    new-instance v6, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 756
    .line 757
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 758
    .line 759
    .line 760
    move-result v8

    .line 761
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 762
    .line 763
    .line 764
    move-result v9

    .line 765
    mul-int/2addr v9, v7

    .line 766
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 767
    .line 768
    .line 769
    move-result v10

    .line 770
    const/4 v11, 0x2

    .line 771
    mul-int/2addr v10, v11

    .line 772
    add-int/2addr v10, v9

    .line 773
    invoke-direct {v6, v8, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 774
    .line 775
    .line 776
    move v8, v0

    .line 777
    move v9, v8

    .line 778
    :goto_f
    if-ge v8, v4, :cond_29

    .line 779
    .line 780
    rem-int v10, v8, v7

    .line 781
    .line 782
    if-nez v10, :cond_21

    .line 783
    .line 784
    move v11, v0

    .line 785
    move v13, v11

    .line 786
    :goto_10
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 787
    .line 788
    .line 789
    move-result v14

    .line 790
    if-ge v11, v14, :cond_20

    .line 791
    .line 792
    rem-int/lit8 v14, v11, 0x2

    .line 793
    .line 794
    if-nez v14, :cond_1f

    .line 795
    .line 796
    move v14, v12

    .line 797
    goto :goto_11

    .line 798
    :cond_1f
    move v14, v0

    .line 799
    :goto_11
    invoke-virtual {v6, v13, v9, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 800
    .line 801
    .line 802
    add-int/2addr v13, v12

    .line 803
    add-int/lit8 v11, v11, 0x1

    .line 804
    .line 805
    goto :goto_10

    .line 806
    :cond_20
    add-int/lit8 v9, v9, 0x1

    .line 807
    .line 808
    :cond_21
    move v11, v0

    .line 809
    move v13, v11

    .line 810
    :goto_12
    if-ge v11, v3, :cond_26

    .line 811
    .line 812
    rem-int v14, v11, v5

    .line 813
    .line 814
    if-nez v14, :cond_22

    .line 815
    .line 816
    invoke-virtual {v6, v13, v9, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 817
    .line 818
    .line 819
    add-int/lit8 v13, v13, 0x1

    .line 820
    .line 821
    :cond_22
    mul-int v16, v15, v8

    .line 822
    .line 823
    add-int v16, v16, v11

    .line 824
    .line 825
    aget-byte v0, v2, v16

    .line 826
    .line 827
    if-ne v0, v12, :cond_23

    .line 828
    .line 829
    move v0, v12

    .line 830
    goto :goto_13

    .line 831
    :cond_23
    const/4 v0, 0x0

    .line 832
    :goto_13
    invoke-virtual {v6, v13, v9, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 833
    .line 834
    .line 835
    add-int/2addr v13, v12

    .line 836
    add-int/lit8 v0, v5, -0x1

    .line 837
    .line 838
    if-ne v14, v0, :cond_25

    .line 839
    .line 840
    rem-int/lit8 v0, v8, 0x2

    .line 841
    .line 842
    if-nez v0, :cond_24

    .line 843
    .line 844
    move v0, v12

    .line 845
    goto :goto_14

    .line 846
    :cond_24
    const/4 v0, 0x0

    .line 847
    :goto_14
    invoke-virtual {v6, v13, v9, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 848
    .line 849
    .line 850
    add-int/lit8 v13, v13, 0x1

    .line 851
    .line 852
    :cond_25
    add-int/lit8 v11, v11, 0x1

    .line 853
    .line 854
    const/4 v0, 0x0

    .line 855
    goto :goto_12

    .line 856
    :cond_26
    add-int/lit8 v9, v9, 0x1

    .line 857
    .line 858
    add-int/lit8 v0, v7, -0x1

    .line 859
    .line 860
    if-ne v10, v0, :cond_28

    .line 861
    .line 862
    const/4 v0, 0x0

    .line 863
    const/4 v10, 0x0

    .line 864
    :goto_15
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 865
    .line 866
    .line 867
    move-result v11

    .line 868
    if-ge v0, v11, :cond_27

    .line 869
    .line 870
    invoke-virtual {v6, v10, v9, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 871
    .line 872
    .line 873
    add-int/2addr v10, v12

    .line 874
    add-int/lit8 v0, v0, 0x1

    .line 875
    .line 876
    goto :goto_15

    .line 877
    :cond_27
    add-int/lit8 v9, v9, 0x1

    .line 878
    .line 879
    :cond_28
    add-int/lit8 v8, v8, 0x1

    .line 880
    .line 881
    const/4 v0, 0x0

    .line 882
    goto :goto_f

    .line 883
    :cond_29
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    .line 884
    .line 885
    iget v1, v6, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 886
    .line 887
    iget v2, v6, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 888
    .line 889
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 890
    .line 891
    .line 892
    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 893
    .line 894
    array-length v4, v3

    .line 895
    const/4 v5, 0x0

    .line 896
    :goto_16
    if-ge v5, v4, :cond_2a

    .line 897
    .line 898
    const/4 v10, 0x0

    .line 899
    aput v10, v3, v5

    .line 900
    .line 901
    add-int/lit8 v5, v5, 0x1

    .line 902
    .line 903
    goto :goto_16

    .line 904
    :cond_2a
    const/4 v10, 0x0

    .line 905
    move v3, v10

    .line 906
    :goto_17
    if-ge v3, v1, :cond_2d

    .line 907
    .line 908
    move v4, v10

    .line 909
    :goto_18
    if-ge v4, v2, :cond_2c

    .line 910
    .line 911
    invoke-virtual {v6, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    if-ne v5, v12, :cond_2b

    .line 916
    .line 917
    invoke-virtual {v0, v3, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 918
    .line 919
    .line 920
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 921
    .line 922
    goto :goto_18

    .line 923
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 924
    .line 925
    goto :goto_17

    .line 926
    :cond_2d
    return-object v0

    .line 927
    :cond_2e
    move v10, v0

    .line 928
    const/4 v11, 0x2

    .line 929
    move v0, v10

    .line 930
    move v8, v11

    .line 931
    const/4 v2, 0x4

    .line 932
    const/4 v10, 0x5

    .line 933
    goto/16 :goto_a

    .line 934
    .line 935
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 936
    .line 937
    const-string v1, "The number of codewords does not match the selected symbol"

    .line 938
    .line 939
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    throw v0

    .line 943
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 944
    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    const-string v4, "Requested dimensions are too small: "

    .line 948
    .line 949
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    const/16 v2, 0x78

    .line 956
    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw v0

    .line 971
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 972
    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    .line 974
    .line 975
    const-string v3, "Can only encode DATA_MATRIX, but got "

    .line 976
    .line 977
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    throw v0

    .line 991
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 992
    .line 993
    const-string v1, "Found empty contents"

    .line 994
    .line 995
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    throw v0
.end method
