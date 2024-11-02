.class public final Lokio/Options;
.super Lkotlin/collections/AbstractList;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final Companion:Lokio/Options$Companion;


# instance fields
.field public final byteStrings:[Lokio/ByteString;

.field public final trie:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/Options$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokio/Options$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method public synthetic constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lokio/Options;->Companion:Lokio/Options$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    const/4 v4, 0x0

    .line 17
    const/4 v5, -0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v0, Lokio/Options;

    .line 21
    .line 22
    new-array v1, v2, [Lokio/ByteString;

    .line 23
    .line 24
    filled-new-array {v2, v5}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v1, v2, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_c

    .line 32
    .line 33
    :cond_1
    invoke-static/range {p0 .. p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    move-object v1, v9

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-le v6, v3, :cond_2

    .line 45
    .line 46
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 50
    .line 51
    array-length v7, v0

    .line 52
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    array-length v7, v0

    .line 56
    move v8, v2

    .line 57
    :goto_1
    if-ge v8, v7, :cond_3

    .line 58
    .line 59
    aget-object v10, v0, v8

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v8, v8, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    new-array v5, v2, [Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_18

    .line 78
    .line 79
    check-cast v5, [Ljava/lang/Integer;

    .line 80
    .line 81
    array-length v6, v5

    .line 82
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, [Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    array-length v5, v0

    .line 93
    move v6, v2

    .line 94
    move v7, v6

    .line 95
    :goto_2
    if-ge v6, v5, :cond_9

    .line 96
    .line 97
    aget-object v8, v0, v6

    .line 98
    .line 99
    add-int/lit8 v10, v7, 0x1

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    const-string v14, ")."

    .line 110
    .line 111
    if-ltz v11, :cond_8

    .line 112
    .line 113
    if-gt v11, v13, :cond_7

    .line 114
    .line 115
    add-int/lit8 v11, v11, -0x1

    .line 116
    .line 117
    move v13, v2

    .line 118
    :goto_3
    if-gt v13, v11, :cond_5

    .line 119
    .line 120
    add-int v14, v13, v11

    .line 121
    .line 122
    ushr-int/2addr v14, v3

    .line 123
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    check-cast v15, Ljava/lang/Comparable;

    .line 128
    .line 129
    invoke-static {v15, v8}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    if-gez v15, :cond_4

    .line 134
    .line 135
    add-int/lit8 v13, v14, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    if-lez v15, :cond_6

    .line 139
    .line 140
    add-int/lit8 v11, v14, -0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 144
    .line 145
    neg-int v14, v13

    .line 146
    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {v12, v14, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v6, v6, 0x1

    .line 154
    .line 155
    move v7, v10

    .line 156
    goto :goto_2

    .line 157
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 158
    .line 159
    const-string v1, "toIndex ("

    .line 160
    .line 161
    const-string v2, ") is greater than size ("

    .line 162
    .line 163
    invoke-static {v1, v11, v2, v13, v14}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    const-string v1, "fromIndex (0) is greater than toIndex ("

    .line 174
    .line 175
    invoke-static {v1, v11, v14}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Lokio/ByteString;

    .line 188
    .line 189
    invoke-virtual {v5}, Lokio/ByteString;->getSize$okio()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-lez v5, :cond_a

    .line 194
    .line 195
    move v5, v3

    .line 196
    goto :goto_4

    .line 197
    :cond_a
    move v5, v2

    .line 198
    :goto_4
    if-eqz v5, :cond_17

    .line 199
    .line 200
    move v5, v2

    .line 201
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-ge v5, v6, :cond_10

    .line 206
    .line 207
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Lokio/ByteString;

    .line 212
    .line 213
    add-int/lit8 v7, v5, 0x1

    .line 214
    .line 215
    move v8, v7

    .line 216
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-ge v8, v10, :cond_f

    .line 221
    .line 222
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    check-cast v10, Lokio/ByteString;

    .line 227
    .line 228
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    invoke-virtual {v10, v6, v11}, Lokio/ByteString;->rangeEquals(Lokio/ByteString;I)Z

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    if-nez v11, :cond_b

    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_b
    invoke-virtual {v10}, Lokio/ByteString;->getSize$okio()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    if-eq v11, v13, :cond_c

    .line 251
    .line 252
    move v11, v3

    .line 253
    goto :goto_7

    .line 254
    :cond_c
    move v11, v2

    .line 255
    :goto_7
    if-eqz v11, :cond_e

    .line 256
    .line 257
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    check-cast v10, Ljava/lang/Number;

    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    check-cast v11, Ljava/lang/Number;

    .line 272
    .line 273
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    if-le v10, v11, :cond_d

    .line 278
    .line 279
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v1, "duplicate option: "

    .line 292
    .line 293
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v1

    .line 313
    :cond_f
    :goto_8
    move v5, v7

    .line 314
    goto :goto_5

    .line 315
    :cond_10
    new-instance v13, Lokio/Buffer;

    .line 316
    .line 317
    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    .line 318
    .line 319
    .line 320
    const-wide/16 v5, 0x0

    .line 321
    .line 322
    const/4 v8, 0x0

    .line 323
    const/4 v10, 0x0

    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    move-object v7, v13

    .line 329
    invoke-static/range {v5 .. v12}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 330
    .line 331
    .line 332
    iget-wide v5, v13, Lokio/Buffer;->size:J

    .line 333
    .line 334
    const/4 v1, 0x4

    .line 335
    int-to-long v7, v1

    .line 336
    div-long/2addr v5, v7

    .line 337
    long-to-int v1, v5

    .line 338
    new-array v1, v1, [I

    .line 339
    .line 340
    move v5, v3

    .line 341
    move v3, v2

    .line 342
    :goto_9
    iget-wide v6, v13, Lokio/Buffer;->size:J

    .line 343
    .line 344
    const-wide/16 v8, 0x0

    .line 345
    .line 346
    cmp-long v8, v6, v8

    .line 347
    .line 348
    if-nez v8, :cond_11

    .line 349
    .line 350
    move v2, v5

    .line 351
    :cond_11
    if-nez v2, :cond_16

    .line 352
    .line 353
    add-int/lit8 v2, v3, 0x1

    .line 354
    .line 355
    const-wide/16 v8, 0x4

    .line 356
    .line 357
    cmp-long v5, v6, v8

    .line 358
    .line 359
    if-ltz v5, :cond_15

    .line 360
    .line 361
    iget-object v5, v13, Lokio/Buffer;->head:Lokio/Segment;

    .line 362
    .line 363
    if-eqz v5, :cond_14

    .line 364
    .line 365
    iget v10, v5, Lokio/Segment;->pos:I

    .line 366
    .line 367
    iget v11, v5, Lokio/Segment;->limit:I

    .line 368
    .line 369
    sub-int v12, v11, v10

    .line 370
    .line 371
    int-to-long v14, v12

    .line 372
    cmp-long v12, v14, v8

    .line 373
    .line 374
    if-gez v12, :cond_12

    .line 375
    .line 376
    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    and-int/lit16 v5, v5, 0xff

    .line 381
    .line 382
    shl-int/lit8 v5, v5, 0x18

    .line 383
    .line 384
    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    and-int/lit16 v6, v6, 0xff

    .line 389
    .line 390
    shl-int/lit8 v6, v6, 0x10

    .line 391
    .line 392
    or-int/2addr v5, v6

    .line 393
    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    and-int/lit16 v6, v6, 0xff

    .line 398
    .line 399
    shl-int/lit8 v6, v6, 0x8

    .line 400
    .line 401
    or-int/2addr v5, v6

    .line 402
    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    and-int/lit16 v6, v6, 0xff

    .line 407
    .line 408
    or-int/2addr v5, v6

    .line 409
    goto :goto_b

    .line 410
    :cond_12
    add-int/lit8 v12, v10, 0x1

    .line 411
    .line 412
    iget-object v14, v5, Lokio/Segment;->data:[B

    .line 413
    .line 414
    aget-byte v10, v14, v10

    .line 415
    .line 416
    and-int/lit16 v10, v10, 0xff

    .line 417
    .line 418
    shl-int/lit8 v10, v10, 0x18

    .line 419
    .line 420
    add-int/lit8 v15, v12, 0x1

    .line 421
    .line 422
    aget-byte v12, v14, v12

    .line 423
    .line 424
    and-int/lit16 v12, v12, 0xff

    .line 425
    .line 426
    shl-int/lit8 v12, v12, 0x10

    .line 427
    .line 428
    or-int/2addr v10, v12

    .line 429
    add-int/lit8 v12, v15, 0x1

    .line 430
    .line 431
    aget-byte v15, v14, v15

    .line 432
    .line 433
    and-int/lit16 v15, v15, 0xff

    .line 434
    .line 435
    shl-int/lit8 v15, v15, 0x8

    .line 436
    .line 437
    or-int/2addr v10, v15

    .line 438
    add-int/lit8 v15, v12, 0x1

    .line 439
    .line 440
    aget-byte v12, v14, v12

    .line 441
    .line 442
    and-int/lit16 v12, v12, 0xff

    .line 443
    .line 444
    or-int/2addr v10, v12

    .line 445
    sub-long/2addr v6, v8

    .line 446
    iput-wide v6, v13, Lokio/Buffer;->size:J

    .line 447
    .line 448
    if-ne v15, v11, :cond_13

    .line 449
    .line 450
    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    iput-object v6, v13, Lokio/Buffer;->head:Lokio/Segment;

    .line 455
    .line 456
    sget-object v6, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    .line 457
    .line 458
    invoke-virtual {v6, v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 459
    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_13
    iput v15, v5, Lokio/Segment;->pos:I

    .line 463
    .line 464
    :goto_a
    move v5, v10

    .line 465
    :goto_b
    aput v5, v1, v3

    .line 466
    .line 467
    const/4 v3, 0x0

    .line 468
    const/4 v5, 0x1

    .line 469
    move/from16 v16, v3

    .line 470
    .line 471
    move v3, v2

    .line 472
    move/from16 v2, v16

    .line 473
    .line 474
    goto/16 :goto_9

    .line 475
    .line 476
    :cond_14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 477
    .line 478
    .line 479
    throw v4

    .line 480
    :cond_15
    new-instance v0, Ljava/io/EOFException;

    .line 481
    .line 482
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 483
    .line 484
    .line 485
    throw v0

    .line 486
    :cond_16
    array-length v2, v0

    .line 487
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, [Lokio/ByteString;

    .line 492
    .line 493
    new-instance v2, Lokio/Options;

    .line 494
    .line 495
    invoke-direct {v2, v0, v1, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 496
    .line 497
    .line 498
    move-object v0, v2

    .line 499
    :goto_c
    return-object v0

    .line 500
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 501
    .line 502
    const-string v1, "the empty byte string is not a supported option"

    .line 503
    .line 504
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw v0

    .line 512
    :cond_18
    new-instance v0, Lkotlin/TypeCastException;

    .line 513
    .line 514
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    .line 515
    .line 516
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lokio/ByteString;

    .line 6
    .line 7
    invoke-super {p0, p1}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lokio/ByteString;

    .line 6
    .line 7
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lokio/ByteString;

    .line 6
    .line 7
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method
