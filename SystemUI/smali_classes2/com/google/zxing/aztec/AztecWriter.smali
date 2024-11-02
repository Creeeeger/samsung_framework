.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ISO-8859-1"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    sget-object v2, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 16
    .line 17
    move-object/from16 v3, p5

    .line 18
    .line 19
    check-cast v3, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Number;

    .line 26
    .line 27
    sget-object v3, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    .line 28
    .line 29
    move-object/from16 v4, p5

    .line 30
    .line 31
    check-cast v4, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Integer;

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    sget-object v1, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    if-nez v2, :cond_1

    .line 49
    .line 50
    const/16 v2, 0x21

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    if-nez v3, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_2
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 66
    .line 67
    if-ne v0, v5, :cond_48

    .line 68
    .line 69
    move-object/from16 v5, p1

    .line 70
    .line 71
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    .line 81
    .line 82
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v5, 0x0

    .line 87
    :goto_3
    iget-object v6, v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 88
    .line 89
    array-length v7, v6

    .line 90
    const/4 v9, 0x3

    .line 91
    const/16 v10, 0xa

    .line 92
    .line 93
    const/4 v12, 0x4

    .line 94
    const/4 v13, 0x2

    .line 95
    const/4 v14, 0x1

    .line 96
    const/16 v15, 0x20

    .line 97
    .line 98
    if-ge v5, v7, :cond_18

    .line 99
    .line 100
    add-int/lit8 v7, v5, 0x1

    .line 101
    .line 102
    array-length v4, v6

    .line 103
    if-ge v7, v4, :cond_3

    .line 104
    .line 105
    aget-byte v4, v6, v7

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    const/4 v4, 0x0

    .line 109
    :goto_4
    aget-byte v8, v6, v5

    .line 110
    .line 111
    const/16 v11, 0xd

    .line 112
    .line 113
    if-eq v8, v11, :cond_7

    .line 114
    .line 115
    const/16 v10, 0x2c

    .line 116
    .line 117
    if-eq v8, v10, :cond_6

    .line 118
    .line 119
    const/16 v10, 0x2e

    .line 120
    .line 121
    if-eq v8, v10, :cond_5

    .line 122
    .line 123
    const/16 v10, 0x3a

    .line 124
    .line 125
    if-eq v8, v10, :cond_4

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_4
    if-ne v4, v15, :cond_8

    .line 129
    .line 130
    const/4 v11, 0x5

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    if-ne v4, v15, :cond_8

    .line 133
    .line 134
    move v11, v9

    .line 135
    goto :goto_6

    .line 136
    :cond_6
    if-ne v4, v15, :cond_8

    .line 137
    .line 138
    move v11, v12

    .line 139
    goto :goto_6

    .line 140
    :cond_7
    if-ne v4, v10, :cond_8

    .line 141
    .line 142
    move v11, v13

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    :goto_5
    const/4 v11, 0x0

    .line 145
    :goto_6
    if-lez v11, :cond_e

    .line 146
    .line 147
    new-instance v4, Ljava/util/LinkedList;

    .line 148
    .line 149
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :cond_9
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_d

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lcom/google/zxing/aztec/encoder/State;

    .line 167
    .line 168
    invoke-virtual {v6, v5}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8, v12, v11}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    iget v10, v6, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 180
    .line 181
    if-eq v10, v12, :cond_a

    .line 182
    .line 183
    invoke-virtual {v8, v12, v11}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_a
    if-eq v11, v9, :cond_b

    .line 191
    .line 192
    if-ne v11, v12, :cond_c

    .line 193
    .line 194
    :cond_b
    rsub-int/lit8 v10, v11, 0x10

    .line 195
    .line 196
    invoke-virtual {v8, v13, v10}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v8, v13, v14}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_c
    iget v8, v6, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 208
    .line 209
    if-lez v8, :cond_9

    .line 210
    .line 211
    invoke-virtual {v6, v5}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v6, v7}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_d
    invoke-static {v4}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    move v5, v7

    .line 228
    move v4, v14

    .line 229
    goto/16 :goto_b

    .line 230
    .line 231
    :cond_e
    new-instance v4, Ljava/util/LinkedList;

    .line 232
    .line 233
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_17

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    check-cast v7, Lcom/google/zxing/aztec/encoder/State;

    .line 251
    .line 252
    aget-byte v8, v6, v5

    .line 253
    .line 254
    and-int/lit16 v8, v8, 0xff

    .line 255
    .line 256
    int-to-char v8, v8

    .line 257
    iget v9, v7, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 258
    .line 259
    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 260
    .line 261
    aget-object v9, v10, v9

    .line 262
    .line 263
    aget v9, v9, v8

    .line 264
    .line 265
    if-lez v9, :cond_f

    .line 266
    .line 267
    move v9, v14

    .line 268
    goto :goto_9

    .line 269
    :cond_f
    const/4 v9, 0x0

    .line 270
    :goto_9
    const/4 v11, 0x0

    .line 271
    const/4 v15, 0x0

    .line 272
    :goto_a
    iget v14, v7, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 273
    .line 274
    if-gt v11, v12, :cond_14

    .line 275
    .line 276
    aget-object v16, v10, v11

    .line 277
    .line 278
    aget v12, v16, v8

    .line 279
    .line 280
    if-lez v12, :cond_13

    .line 281
    .line 282
    if-nez v15, :cond_10

    .line 283
    .line 284
    invoke-virtual {v7, v5}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    .line 285
    .line 286
    .line 287
    move-result-object v15

    .line 288
    :cond_10
    if-eqz v9, :cond_11

    .line 289
    .line 290
    if-eq v11, v14, :cond_11

    .line 291
    .line 292
    if-ne v11, v13, :cond_12

    .line 293
    .line 294
    :cond_11
    invoke-virtual {v15, v11, v12}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    invoke-virtual {v4, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :cond_12
    if-nez v9, :cond_13

    .line 302
    .line 303
    sget-object v13, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 304
    .line 305
    aget-object v13, v13, v14

    .line 306
    .line 307
    aget v13, v13, v11

    .line 308
    .line 309
    if-ltz v13, :cond_13

    .line 310
    .line 311
    invoke-virtual {v15, v11, v12}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    invoke-virtual {v4, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    :cond_13
    add-int/lit8 v11, v11, 0x1

    .line 319
    .line 320
    const/4 v12, 0x4

    .line 321
    const/4 v13, 0x2

    .line 322
    goto :goto_a

    .line 323
    :cond_14
    iget v9, v7, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 324
    .line 325
    if-gtz v9, :cond_15

    .line 326
    .line 327
    aget-object v9, v10, v14

    .line 328
    .line 329
    aget v8, v9, v8

    .line 330
    .line 331
    if-nez v8, :cond_16

    .line 332
    .line 333
    :cond_15
    invoke-virtual {v7, v5}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    :cond_16
    const/4 v12, 0x4

    .line 341
    const/4 v13, 0x2

    .line 342
    const/4 v14, 0x1

    .line 343
    goto :goto_8

    .line 344
    :cond_17
    invoke-static {v4}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const/4 v4, 0x1

    .line 349
    :goto_b
    add-int/2addr v5, v4

    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :cond_18
    new-instance v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    .line 353
    .line 354
    invoke-direct {v4, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v0, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    new-instance v1, Ljava/util/LinkedList;

    .line 367
    .line 368
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 369
    .line 370
    .line 371
    array-length v4, v6

    .line 372
    invoke-virtual {v0, v4}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iget-object v0, v0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 377
    .line 378
    :goto_c
    if-eqz v0, :cond_19

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, v0, Lcom/google/zxing/aztec/encoder/Token;->previous:Lcom/google/zxing/aztec/encoder/Token;

    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_19
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 387
    .line 388
    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_1a

    .line 400
    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Lcom/google/zxing/aztec/encoder/Token;

    .line 406
    .line 407
    invoke-virtual {v4, v0, v6}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    .line 408
    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_1a
    iget v1, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 412
    .line 413
    mul-int/2addr v2, v1

    .line 414
    div-int/lit8 v2, v2, 0x64

    .line 415
    .line 416
    const/16 v4, 0xb

    .line 417
    .line 418
    add-int/2addr v2, v4

    .line 419
    add-int/2addr v1, v2

    .line 420
    sget-object v5, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    .line 421
    .line 422
    if-eqz v3, :cond_21

    .line 423
    .line 424
    if-gez v3, :cond_1b

    .line 425
    .line 426
    const/4 v1, 0x1

    .line 427
    goto :goto_e

    .line 428
    :cond_1b
    const/4 v1, 0x0

    .line 429
    :goto_e
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    if-eqz v1, :cond_1c

    .line 434
    .line 435
    const/4 v15, 0x4

    .line 436
    :cond_1c
    if-gt v8, v15, :cond_20

    .line 437
    .line 438
    if-eqz v1, :cond_1d

    .line 439
    .line 440
    const/16 v6, 0x58

    .line 441
    .line 442
    goto :goto_f

    .line 443
    :cond_1d
    const/16 v6, 0x70

    .line 444
    .line 445
    :goto_f
    mul-int/lit8 v3, v8, 0x10

    .line 446
    .line 447
    add-int/2addr v3, v6

    .line 448
    mul-int/2addr v3, v8

    .line 449
    aget v5, v5, v8

    .line 450
    .line 451
    rem-int v6, v3, v5

    .line 452
    .line 453
    sub-int v6, v3, v6

    .line 454
    .line 455
    invoke-static {v5, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget v7, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 460
    .line 461
    add-int/2addr v2, v7

    .line 462
    const-string v9, "Data to large for user specified layer"

    .line 463
    .line 464
    if-gt v2, v6, :cond_1f

    .line 465
    .line 466
    if-eqz v1, :cond_29

    .line 467
    .line 468
    mul-int/lit8 v2, v5, 0x40

    .line 469
    .line 470
    if-gt v7, v2, :cond_1e

    .line 471
    .line 472
    goto/16 :goto_15

    .line 473
    .line 474
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 475
    .line 476
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v0

    .line 480
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 481
    .line 482
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v0

    .line 486
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 487
    .line 488
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    const-string v2, "Illegal value %s for layers"

    .line 497
    .line 498
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :cond_21
    const/4 v3, 0x0

    .line 507
    const/4 v8, 0x0

    .line 508
    const/4 v11, 0x0

    .line 509
    :goto_10
    if-gt v3, v15, :cond_47

    .line 510
    .line 511
    if-gt v3, v9, :cond_22

    .line 512
    .line 513
    const/4 v12, 0x1

    .line 514
    goto :goto_11

    .line 515
    :cond_22
    const/4 v12, 0x0

    .line 516
    :goto_11
    if-eqz v12, :cond_23

    .line 517
    .line 518
    add-int/lit8 v13, v3, 0x1

    .line 519
    .line 520
    goto :goto_12

    .line 521
    :cond_23
    move v13, v3

    .line 522
    :goto_12
    if-eqz v12, :cond_24

    .line 523
    .line 524
    const/16 v14, 0x58

    .line 525
    .line 526
    goto :goto_13

    .line 527
    :cond_24
    const/16 v14, 0x70

    .line 528
    .line 529
    :goto_13
    mul-int/lit8 v17, v13, 0x10

    .line 530
    .line 531
    add-int v17, v17, v14

    .line 532
    .line 533
    mul-int v14, v17, v13

    .line 534
    .line 535
    if-le v1, v14, :cond_26

    .line 536
    .line 537
    :cond_25
    :goto_14
    move/from16 v7, p3

    .line 538
    .line 539
    move/from16 v12, p4

    .line 540
    .line 541
    move v9, v10

    .line 542
    const/4 v6, 0x5

    .line 543
    const/4 v10, 0x1

    .line 544
    const/4 v13, 0x2

    .line 545
    goto/16 :goto_26

    .line 546
    .line 547
    :cond_26
    aget v6, v5, v13

    .line 548
    .line 549
    if-eq v11, v6, :cond_27

    .line 550
    .line 551
    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    .line 552
    .line 553
    .line 554
    move-result-object v8

    .line 555
    move v11, v6

    .line 556
    :cond_27
    rem-int v6, v14, v11

    .line 557
    .line 558
    sub-int v6, v14, v6

    .line 559
    .line 560
    if-eqz v12, :cond_28

    .line 561
    .line 562
    iget v7, v8, Lcom/google/zxing/common/BitArray;->size:I

    .line 563
    .line 564
    mul-int/lit8 v9, v11, 0x40

    .line 565
    .line 566
    if-le v7, v9, :cond_28

    .line 567
    .line 568
    goto :goto_14

    .line 569
    :cond_28
    iget v7, v8, Lcom/google/zxing/common/BitArray;->size:I

    .line 570
    .line 571
    add-int/2addr v7, v2

    .line 572
    if-gt v7, v6, :cond_25

    .line 573
    .line 574
    move-object v0, v8

    .line 575
    move v5, v11

    .line 576
    move v1, v12

    .line 577
    move v8, v13

    .line 578
    move v3, v14

    .line 579
    :cond_29
    :goto_15
    invoke-static {v0, v3, v5}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 584
    .line 585
    div-int/2addr v0, v5

    .line 586
    new-instance v3, Lcom/google/zxing/common/BitArray;

    .line 587
    .line 588
    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 589
    .line 590
    .line 591
    if-eqz v1, :cond_2a

    .line 592
    .line 593
    add-int/lit8 v5, v8, -0x1

    .line 594
    .line 595
    const/4 v6, 0x2

    .line 596
    invoke-virtual {v3, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 597
    .line 598
    .line 599
    add-int/lit8 v0, v0, -0x1

    .line 600
    .line 601
    const/4 v5, 0x6

    .line 602
    invoke-virtual {v3, v0, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 603
    .line 604
    .line 605
    const/16 v0, 0x1c

    .line 606
    .line 607
    const/4 v5, 0x4

    .line 608
    invoke-static {v3, v0, v5}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    goto :goto_16

    .line 613
    :cond_2a
    const/4 v5, 0x4

    .line 614
    add-int/lit8 v6, v8, -0x1

    .line 615
    .line 616
    const/4 v7, 0x5

    .line 617
    invoke-virtual {v3, v6, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 618
    .line 619
    .line 620
    add-int/lit8 v0, v0, -0x1

    .line 621
    .line 622
    invoke-virtual {v3, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 623
    .line 624
    .line 625
    const/16 v0, 0x28

    .line 626
    .line 627
    invoke-static {v3, v0, v5}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    :goto_16
    mul-int/lit8 v3, v8, 0x4

    .line 632
    .line 633
    if-eqz v1, :cond_2b

    .line 634
    .line 635
    add-int/2addr v3, v4

    .line 636
    goto :goto_17

    .line 637
    :cond_2b
    add-int/lit8 v3, v3, 0xe

    .line 638
    .line 639
    :goto_17
    new-array v4, v3, [I

    .line 640
    .line 641
    if-eqz v1, :cond_2d

    .line 642
    .line 643
    const/4 v5, 0x0

    .line 644
    :goto_18
    if-ge v5, v3, :cond_2c

    .line 645
    .line 646
    aput v5, v4, v5

    .line 647
    .line 648
    add-int/lit8 v5, v5, 0x1

    .line 649
    .line 650
    goto :goto_18

    .line 651
    :cond_2c
    move v7, v3

    .line 652
    goto :goto_1a

    .line 653
    :cond_2d
    add-int/lit8 v5, v3, 0x1

    .line 654
    .line 655
    div-int/lit8 v6, v3, 0x2

    .line 656
    .line 657
    add-int/lit8 v7, v6, -0x1

    .line 658
    .line 659
    div-int/lit8 v7, v7, 0xf

    .line 660
    .line 661
    const/4 v9, 0x2

    .line 662
    mul-int/2addr v7, v9

    .line 663
    add-int/2addr v7, v5

    .line 664
    div-int/lit8 v5, v7, 0x2

    .line 665
    .line 666
    const/4 v9, 0x0

    .line 667
    :goto_19
    if-ge v9, v6, :cond_2e

    .line 668
    .line 669
    div-int/lit8 v11, v9, 0xf

    .line 670
    .line 671
    add-int/2addr v11, v9

    .line 672
    sub-int v12, v6, v9

    .line 673
    .line 674
    const/4 v13, 0x1

    .line 675
    sub-int/2addr v12, v13

    .line 676
    sub-int v14, v5, v11

    .line 677
    .line 678
    sub-int/2addr v14, v13

    .line 679
    aput v14, v4, v12

    .line 680
    .line 681
    add-int v12, v6, v9

    .line 682
    .line 683
    add-int/2addr v11, v5

    .line 684
    add-int/2addr v11, v13

    .line 685
    aput v11, v4, v12

    .line 686
    .line 687
    add-int/lit8 v9, v9, 0x1

    .line 688
    .line 689
    goto :goto_19

    .line 690
    :cond_2e
    :goto_1a
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    .line 691
    .line 692
    invoke-direct {v5, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 693
    .line 694
    .line 695
    const/4 v6, 0x0

    .line 696
    const/4 v9, 0x0

    .line 697
    :goto_1b
    if-ge v6, v8, :cond_36

    .line 698
    .line 699
    if-eqz v1, :cond_2f

    .line 700
    .line 701
    sub-int v11, v8, v6

    .line 702
    .line 703
    const/4 v12, 0x4

    .line 704
    mul-int/2addr v11, v12

    .line 705
    add-int/lit8 v11, v11, 0x9

    .line 706
    .line 707
    goto :goto_1c

    .line 708
    :cond_2f
    const/4 v12, 0x4

    .line 709
    sub-int v11, v8, v6

    .line 710
    .line 711
    mul-int/2addr v11, v12

    .line 712
    add-int/lit8 v11, v11, 0xc

    .line 713
    .line 714
    :goto_1c
    const/4 v13, 0x0

    .line 715
    :goto_1d
    if-ge v13, v11, :cond_35

    .line 716
    .line 717
    mul-int/lit8 v14, v13, 0x2

    .line 718
    .line 719
    const/4 v12, 0x2

    .line 720
    const/4 v15, 0x0

    .line 721
    :goto_1e
    if-ge v15, v12, :cond_34

    .line 722
    .line 723
    add-int v12, v9, v14

    .line 724
    .line 725
    add-int/2addr v12, v15

    .line 726
    invoke-virtual {v2, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 727
    .line 728
    .line 729
    move-result v12

    .line 730
    if-eqz v12, :cond_30

    .line 731
    .line 732
    mul-int/lit8 v12, v6, 0x2

    .line 733
    .line 734
    add-int v17, v12, v15

    .line 735
    .line 736
    aget v10, v4, v17

    .line 737
    .line 738
    add-int/2addr v12, v13

    .line 739
    aget v12, v4, v12

    .line 740
    .line 741
    invoke-virtual {v5, v10, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 742
    .line 743
    .line 744
    :cond_30
    mul-int/lit8 v10, v11, 0x2

    .line 745
    .line 746
    add-int/2addr v10, v9

    .line 747
    add-int/2addr v10, v14

    .line 748
    add-int/2addr v10, v15

    .line 749
    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 750
    .line 751
    .line 752
    move-result v10

    .line 753
    if-eqz v10, :cond_31

    .line 754
    .line 755
    mul-int/lit8 v10, v6, 0x2

    .line 756
    .line 757
    add-int v12, v10, v13

    .line 758
    .line 759
    aget v12, v4, v12

    .line 760
    .line 761
    add-int/lit8 v17, v3, -0x1

    .line 762
    .line 763
    sub-int v17, v17, v10

    .line 764
    .line 765
    sub-int v17, v17, v15

    .line 766
    .line 767
    aget v10, v4, v17

    .line 768
    .line 769
    invoke-virtual {v5, v12, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 770
    .line 771
    .line 772
    :cond_31
    mul-int/lit8 v10, v11, 0x4

    .line 773
    .line 774
    add-int/2addr v10, v9

    .line 775
    add-int/2addr v10, v14

    .line 776
    add-int/2addr v10, v15

    .line 777
    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 778
    .line 779
    .line 780
    move-result v10

    .line 781
    if-eqz v10, :cond_32

    .line 782
    .line 783
    add-int/lit8 v10, v3, -0x1

    .line 784
    .line 785
    mul-int/lit8 v12, v6, 0x2

    .line 786
    .line 787
    sub-int/2addr v10, v12

    .line 788
    sub-int v12, v10, v15

    .line 789
    .line 790
    aget v12, v4, v12

    .line 791
    .line 792
    sub-int/2addr v10, v13

    .line 793
    aget v10, v4, v10

    .line 794
    .line 795
    invoke-virtual {v5, v12, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 796
    .line 797
    .line 798
    :cond_32
    mul-int/lit8 v10, v11, 0x6

    .line 799
    .line 800
    add-int/2addr v10, v9

    .line 801
    add-int/2addr v10, v14

    .line 802
    add-int/2addr v10, v15

    .line 803
    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 804
    .line 805
    .line 806
    move-result v10

    .line 807
    if-eqz v10, :cond_33

    .line 808
    .line 809
    add-int/lit8 v10, v3, -0x1

    .line 810
    .line 811
    mul-int/lit8 v12, v6, 0x2

    .line 812
    .line 813
    sub-int/2addr v10, v12

    .line 814
    sub-int/2addr v10, v13

    .line 815
    aget v10, v4, v10

    .line 816
    .line 817
    add-int/2addr v12, v15

    .line 818
    aget v12, v4, v12

    .line 819
    .line 820
    invoke-virtual {v5, v10, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 821
    .line 822
    .line 823
    :cond_33
    add-int/lit8 v15, v15, 0x1

    .line 824
    .line 825
    const/16 v10, 0xa

    .line 826
    .line 827
    const/4 v12, 0x2

    .line 828
    goto :goto_1e

    .line 829
    :cond_34
    add-int/lit8 v13, v13, 0x1

    .line 830
    .line 831
    const/16 v10, 0xa

    .line 832
    .line 833
    const/4 v12, 0x4

    .line 834
    goto :goto_1d

    .line 835
    :cond_35
    mul-int/lit8 v11, v11, 0x8

    .line 836
    .line 837
    add-int/2addr v9, v11

    .line 838
    add-int/lit8 v6, v6, 0x1

    .line 839
    .line 840
    const/16 v10, 0xa

    .line 841
    .line 842
    goto/16 :goto_1b

    .line 843
    .line 844
    :cond_36
    div-int/lit8 v2, v7, 0x2

    .line 845
    .line 846
    const/4 v4, 0x7

    .line 847
    if-eqz v1, :cond_3b

    .line 848
    .line 849
    const/4 v6, 0x0

    .line 850
    :goto_1f
    if-ge v6, v4, :cond_40

    .line 851
    .line 852
    add-int/lit8 v8, v2, -0x3

    .line 853
    .line 854
    add-int/2addr v8, v6

    .line 855
    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 856
    .line 857
    .line 858
    move-result v9

    .line 859
    if-eqz v9, :cond_37

    .line 860
    .line 861
    add-int/lit8 v9, v2, -0x5

    .line 862
    .line 863
    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 864
    .line 865
    .line 866
    :cond_37
    add-int/lit8 v9, v6, 0x7

    .line 867
    .line 868
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 869
    .line 870
    .line 871
    move-result v9

    .line 872
    if-eqz v9, :cond_38

    .line 873
    .line 874
    add-int/lit8 v9, v2, 0x5

    .line 875
    .line 876
    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 877
    .line 878
    .line 879
    :cond_38
    rsub-int/lit8 v9, v6, 0x14

    .line 880
    .line 881
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 882
    .line 883
    .line 884
    move-result v9

    .line 885
    if-eqz v9, :cond_39

    .line 886
    .line 887
    add-int/lit8 v9, v2, 0x5

    .line 888
    .line 889
    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 890
    .line 891
    .line 892
    :cond_39
    rsub-int/lit8 v9, v6, 0x1b

    .line 893
    .line 894
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 895
    .line 896
    .line 897
    move-result v9

    .line 898
    if-eqz v9, :cond_3a

    .line 899
    .line 900
    add-int/lit8 v9, v2, -0x5

    .line 901
    .line 902
    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 903
    .line 904
    .line 905
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    .line 906
    .line 907
    goto :goto_1f

    .line 908
    :cond_3b
    const/4 v6, 0x0

    .line 909
    const/16 v9, 0xa

    .line 910
    .line 911
    :goto_20
    if-ge v6, v9, :cond_40

    .line 912
    .line 913
    add-int/lit8 v8, v2, -0x5

    .line 914
    .line 915
    add-int/2addr v8, v6

    .line 916
    div-int/lit8 v10, v6, 0x5

    .line 917
    .line 918
    add-int/2addr v10, v8

    .line 919
    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 920
    .line 921
    .line 922
    move-result v8

    .line 923
    if-eqz v8, :cond_3c

    .line 924
    .line 925
    add-int/lit8 v8, v2, -0x7

    .line 926
    .line 927
    invoke-virtual {v5, v10, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 928
    .line 929
    .line 930
    :cond_3c
    add-int/lit8 v8, v6, 0xa

    .line 931
    .line 932
    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 933
    .line 934
    .line 935
    move-result v8

    .line 936
    if-eqz v8, :cond_3d

    .line 937
    .line 938
    add-int/lit8 v8, v2, 0x7

    .line 939
    .line 940
    invoke-virtual {v5, v8, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 941
    .line 942
    .line 943
    :cond_3d
    rsub-int/lit8 v8, v6, 0x1d

    .line 944
    .line 945
    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 946
    .line 947
    .line 948
    move-result v8

    .line 949
    if-eqz v8, :cond_3e

    .line 950
    .line 951
    add-int/lit8 v8, v2, 0x7

    .line 952
    .line 953
    invoke-virtual {v5, v10, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 954
    .line 955
    .line 956
    :cond_3e
    rsub-int/lit8 v8, v6, 0x27

    .line 957
    .line 958
    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 959
    .line 960
    .line 961
    move-result v8

    .line 962
    if-eqz v8, :cond_3f

    .line 963
    .line 964
    add-int/lit8 v8, v2, -0x7

    .line 965
    .line 966
    invoke-virtual {v5, v8, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 967
    .line 968
    .line 969
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    .line 970
    .line 971
    goto :goto_20

    .line 972
    :cond_40
    if-eqz v1, :cond_41

    .line 973
    .line 974
    const/4 v6, 0x5

    .line 975
    invoke-static {v5, v2, v6}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 976
    .line 977
    .line 978
    goto :goto_23

    .line 979
    :cond_41
    invoke-static {v5, v2, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 980
    .line 981
    .line 982
    const/4 v0, 0x0

    .line 983
    const/4 v1, 0x0

    .line 984
    :goto_21
    const/4 v4, 0x2

    .line 985
    div-int/lit8 v6, v3, 0x2

    .line 986
    .line 987
    const/4 v10, 0x1

    .line 988
    sub-int/2addr v6, v10

    .line 989
    if-ge v0, v6, :cond_43

    .line 990
    .line 991
    and-int/lit8 v4, v2, 0x1

    .line 992
    .line 993
    :goto_22
    if-ge v4, v7, :cond_42

    .line 994
    .line 995
    sub-int v6, v2, v1

    .line 996
    .line 997
    invoke-virtual {v5, v6, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 998
    .line 999
    .line 1000
    add-int v8, v2, v1

    .line 1001
    .line 1002
    invoke-virtual {v5, v8, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v5, v4, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v5, v4, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 1009
    .line 1010
    .line 1011
    add-int/lit8 v4, v4, 0x2

    .line 1012
    .line 1013
    goto :goto_22

    .line 1014
    :cond_42
    add-int/lit8 v0, v0, 0xf

    .line 1015
    .line 1016
    add-int/lit8 v1, v1, 0x10

    .line 1017
    .line 1018
    goto :goto_21

    .line 1019
    :cond_43
    :goto_23
    new-instance v0, Lcom/google/zxing/aztec/encoder/AztecCode;

    .line 1020
    .line 1021
    invoke-direct {v0}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    iget v0, v5, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 1025
    .line 1026
    move/from16 v7, p3

    .line 1027
    .line 1028
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 1029
    .line 1030
    .line 1031
    move-result v1

    .line 1032
    iget v2, v5, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 1033
    .line 1034
    move/from16 v12, p4

    .line 1035
    .line 1036
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    div-int v4, v1, v0

    .line 1041
    .line 1042
    div-int v6, v3, v2

    .line 1043
    .line 1044
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 1045
    .line 1046
    .line 1047
    move-result v4

    .line 1048
    mul-int v6, v0, v4

    .line 1049
    .line 1050
    sub-int v6, v1, v6

    .line 1051
    .line 1052
    const/4 v13, 0x2

    .line 1053
    div-int/2addr v6, v13

    .line 1054
    mul-int v7, v2, v4

    .line 1055
    .line 1056
    sub-int v7, v3, v7

    .line 1057
    .line 1058
    div-int/2addr v7, v13

    .line 1059
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    .line 1060
    .line 1061
    invoke-direct {v8, v1, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 1062
    .line 1063
    .line 1064
    const/4 v1, 0x0

    .line 1065
    :goto_24
    if-ge v1, v2, :cond_46

    .line 1066
    .line 1067
    move v9, v6

    .line 1068
    const/4 v3, 0x0

    .line 1069
    :goto_25
    if-ge v3, v0, :cond_45

    .line 1070
    .line 1071
    invoke-virtual {v5, v3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v10

    .line 1075
    if-eqz v10, :cond_44

    .line 1076
    .line 1077
    invoke-virtual {v8, v9, v7, v4, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 1078
    .line 1079
    .line 1080
    :cond_44
    add-int/lit8 v3, v3, 0x1

    .line 1081
    .line 1082
    add-int/2addr v9, v4

    .line 1083
    goto :goto_25

    .line 1084
    :cond_45
    add-int/lit8 v1, v1, 0x1

    .line 1085
    .line 1086
    add-int/2addr v7, v4

    .line 1087
    goto :goto_24

    .line 1088
    :cond_46
    return-object v8

    .line 1089
    :goto_26
    add-int/lit8 v3, v3, 0x1

    .line 1090
    .line 1091
    move v10, v9

    .line 1092
    const/4 v9, 0x3

    .line 1093
    goto/16 :goto_10

    .line 1094
    .line 1095
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1096
    .line 1097
    const-string v1, "Data too large for an Aztec code"

    .line 1098
    .line 1099
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    throw v0

    .line 1103
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1104
    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    const-string v3, "Can only encode AZTEC, but got "

    .line 1108
    .line 1109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    throw v1
.end method
