.class public final Lcom/google/zxing/pdf417/PDF417Writer;
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

.method public static bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, p0, v1

    .line 5
    .line 6
    array-length v2, v2

    .line 7
    mul-int/lit8 v3, p1, 0x2

    .line 8
    .line 9
    add-int/2addr v2, v3

    .line 10
    array-length v4, p0

    .line 11
    add-int/2addr v4, v3

    .line 12
    invoke-direct {v0, v2, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-ge v4, v3, :cond_0

    .line 20
    .line 21
    aput v1, v2, v4

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v2, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 27
    .line 28
    sub-int/2addr v2, p1

    .line 29
    const/4 v3, 0x1

    .line 30
    sub-int/2addr v2, v3

    .line 31
    move v4, v1

    .line 32
    :goto_1
    array-length v5, p0

    .line 33
    if-ge v4, v5, :cond_3

    .line 34
    .line 35
    move v5, v1

    .line 36
    :goto_2
    aget-object v6, p0, v1

    .line 37
    .line 38
    array-length v6, v6

    .line 39
    if-ge v5, v6, :cond_2

    .line 40
    .line 41
    aget-object v6, p0, v4

    .line 42
    .line 43
    aget-byte v6, v6, v5

    .line 44
    .line 45
    if-ne v6, v3, :cond_1

    .line 46
    .line 47
    add-int v6, v5, p1

    .line 48
    .line 49
    invoke-virtual {v0, v6, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    return-object v0
.end method

.method public static rotateArray([[B)[[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    array-length v2, p0

    .line 6
    filled-new-array {v1, v2}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [[B

    .line 17
    .line 18
    move v2, v0

    .line 19
    :goto_0
    array-length v3, p0

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    array-length v3, p0

    .line 23
    sub-int/2addr v3, v2

    .line 24
    add-int/lit8 v3, v3, -0x1

    .line 25
    .line 26
    move v4, v0

    .line 27
    :goto_1
    aget-object v5, p0, v0

    .line 28
    .line 29
    array-length v5, v5

    .line 30
    if-ge v4, v5, :cond_0

    .line 31
    .line 32
    aget-object v5, v1, v4

    .line 33
    .line 34
    aget-object v6, p0, v2

    .line 35
    .line 36
    aget-byte v6, v6, v4

    .line 37
    .line 38
    aput-byte v6, v5, v3

    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 18

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
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 10
    .line 11
    if-ne v1, v4, :cond_42

    .line 12
    .line 13
    new-instance v1, Lcom/google/zxing/pdf417/encoder/PDF417;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 19
    .line 20
    move-object/from16 v5, p5

    .line 21
    .line 22
    check-cast v5, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iput-boolean v4, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compact:Z

    .line 41
    .line 42
    :cond_0
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 55
    .line 56
    iput-object v4, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compaction:Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 57
    .line 58
    :cond_1
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/google/zxing/pdf417/encoder/Dimensions;

    .line 71
    .line 72
    iget v6, v4, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    .line 73
    .line 74
    iput v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxCols:I

    .line 75
    .line 76
    iget v6, v4, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    .line 77
    .line 78
    iput v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minCols:I

    .line 79
    .line 80
    iget v6, v4, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    .line 81
    .line 82
    iput v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxRows:I

    .line 83
    .line 84
    iget v4, v4, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    .line 85
    .line 86
    iput v4, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minRows:I

    .line 87
    .line 88
    :cond_2
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/16 v4, 0x1e

    .line 108
    .line 109
    :goto_0
    iget-object v5, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compaction:Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 110
    .line 111
    sget-object v6, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 112
    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    sget-object v8, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v10, 0x1

    .line 130
    if-ne v5, v8, :cond_5

    .line 131
    .line 132
    invoke-static {v0, v9, v7, v6, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    move/from16 v16, v4

    .line 136
    .line 137
    goto/16 :goto_1b

    .line 138
    .line 139
    :cond_5
    sget-object v8, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 140
    .line 141
    if-ne v5, v8, :cond_6

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    array-length v7, v5

    .line 148
    invoke-static {v5, v9, v7, v10, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    sget-object v8, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 153
    .line 154
    const/16 v10, 0x386

    .line 155
    .line 156
    if-ne v5, v8, :cond_7

    .line 157
    .line 158
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-static {v9, v7, v0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    const/4 v5, 0x0

    .line 166
    move v8, v9

    .line 167
    move v11, v8

    .line 168
    move v12, v10

    .line 169
    move v10, v11

    .line 170
    :goto_2
    if-ge v9, v7, :cond_4

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    const/16 v14, 0x39

    .line 177
    .line 178
    const/16 v15, 0x30

    .line 179
    .line 180
    if-ge v9, v13, :cond_a

    .line 181
    .line 182
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v16

    .line 186
    move/from16 p0, v10

    .line 187
    .line 188
    move/from16 v10, v16

    .line 189
    .line 190
    move/from16 v16, v4

    .line 191
    .line 192
    move v4, v9

    .line 193
    :cond_8
    :goto_3
    if-lt v10, v15, :cond_9

    .line 194
    .line 195
    if-gt v10, v14, :cond_9

    .line 196
    .line 197
    const/16 v17, 0x1

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    const/16 v17, 0x0

    .line 201
    .line 202
    :goto_4
    if-eqz v17, :cond_b

    .line 203
    .line 204
    if-ge v4, v13, :cond_b

    .line 205
    .line 206
    add-int/lit8 v8, v8, 0x1

    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    if-ge v4, v13, :cond_8

    .line 211
    .line 212
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    goto :goto_3

    .line 217
    :cond_a
    move/from16 v16, v4

    .line 218
    .line 219
    move/from16 p0, v10

    .line 220
    .line 221
    const/4 v8, 0x0

    .line 222
    :cond_b
    const/16 v4, 0xd

    .line 223
    .line 224
    if-lt v8, v4, :cond_c

    .line 225
    .line 226
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-static {v9, v8, v0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 230
    .line 231
    .line 232
    add-int/2addr v9, v8

    .line 233
    const/4 v4, 0x2

    .line 234
    const/4 v8, 0x0

    .line 235
    move v11, v4

    .line 236
    move v10, v8

    .line 237
    goto/16 :goto_1a

    .line 238
    .line 239
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    move v12, v9

    .line 244
    :goto_5
    if-ge v12, v10, :cond_15

    .line 245
    .line 246
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    const/4 v14, 0x0

    .line 251
    :goto_6
    if-ge v14, v4, :cond_f

    .line 252
    .line 253
    if-lt v13, v15, :cond_d

    .line 254
    .line 255
    const/16 v15, 0x39

    .line 256
    .line 257
    if-gt v13, v15, :cond_d

    .line 258
    .line 259
    const/4 v15, 0x1

    .line 260
    goto :goto_7

    .line 261
    :cond_d
    const/4 v15, 0x0

    .line 262
    :goto_7
    if-eqz v15, :cond_f

    .line 263
    .line 264
    if-ge v12, v10, :cond_f

    .line 265
    .line 266
    add-int/lit8 v14, v14, 0x1

    .line 267
    .line 268
    add-int/lit8 v12, v12, 0x1

    .line 269
    .line 270
    if-ge v12, v10, :cond_e

    .line 271
    .line 272
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    :cond_e
    const/16 v15, 0x30

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_f
    if-lt v14, v4, :cond_10

    .line 280
    .line 281
    sub-int/2addr v12, v9

    .line 282
    sub-int/2addr v12, v14

    .line 283
    goto :goto_c

    .line 284
    :cond_10
    if-lez v14, :cond_11

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_11
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    const/16 v14, 0x9

    .line 292
    .line 293
    if-eq v13, v14, :cond_13

    .line 294
    .line 295
    const/16 v14, 0xa

    .line 296
    .line 297
    if-eq v13, v14, :cond_13

    .line 298
    .line 299
    if-eq v13, v4, :cond_13

    .line 300
    .line 301
    const/16 v14, 0x20

    .line 302
    .line 303
    if-lt v13, v14, :cond_12

    .line 304
    .line 305
    const/16 v14, 0x7e

    .line 306
    .line 307
    if-gt v13, v14, :cond_12

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_12
    const/4 v13, 0x0

    .line 311
    goto :goto_9

    .line 312
    :cond_13
    :goto_8
    const/4 v13, 0x1

    .line 313
    :goto_9
    if-nez v13, :cond_14

    .line 314
    .line 315
    goto :goto_b

    .line 316
    :cond_14
    add-int/lit8 v12, v12, 0x1

    .line 317
    .line 318
    :goto_a
    const/16 v15, 0x30

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_15
    :goto_b
    sub-int/2addr v12, v9

    .line 322
    :goto_c
    const/4 v10, 0x5

    .line 323
    if-ge v12, v10, :cond_26

    .line 324
    .line 325
    if-ne v8, v7, :cond_16

    .line 326
    .line 327
    goto/16 :goto_18

    .line 328
    .line 329
    :cond_16
    if-nez v5, :cond_17

    .line 330
    .line 331
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    move v12, v9

    .line 340
    :goto_d
    if-ge v12, v8, :cond_23

    .line 341
    .line 342
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 343
    .line 344
    .line 345
    move-result v13

    .line 346
    const/4 v14, 0x0

    .line 347
    :goto_e
    if-ge v14, v4, :cond_1a

    .line 348
    .line 349
    const/16 v15, 0x30

    .line 350
    .line 351
    if-lt v13, v15, :cond_18

    .line 352
    .line 353
    const/16 v15, 0x39

    .line 354
    .line 355
    if-gt v13, v15, :cond_18

    .line 356
    .line 357
    const/4 v15, 0x1

    .line 358
    goto :goto_f

    .line 359
    :cond_18
    const/4 v15, 0x0

    .line 360
    :goto_f
    if-eqz v15, :cond_1a

    .line 361
    .line 362
    add-int/lit8 v14, v14, 0x1

    .line 363
    .line 364
    add-int v15, v12, v14

    .line 365
    .line 366
    if-lt v15, v8, :cond_19

    .line 367
    .line 368
    goto :goto_10

    .line 369
    :cond_19
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    goto :goto_e

    .line 374
    :cond_1a
    :goto_10
    if-lt v14, v4, :cond_1b

    .line 375
    .line 376
    goto :goto_16

    .line 377
    :cond_1b
    const/4 v14, 0x0

    .line 378
    :goto_11
    if-ge v14, v10, :cond_1f

    .line 379
    .line 380
    const/16 v15, 0x9

    .line 381
    .line 382
    if-eq v13, v15, :cond_1d

    .line 383
    .line 384
    const/16 v15, 0xa

    .line 385
    .line 386
    if-eq v13, v15, :cond_1d

    .line 387
    .line 388
    if-eq v13, v4, :cond_1d

    .line 389
    .line 390
    const/16 v4, 0x20

    .line 391
    .line 392
    if-lt v13, v4, :cond_1c

    .line 393
    .line 394
    const/16 v4, 0x7e

    .line 395
    .line 396
    if-gt v13, v4, :cond_1c

    .line 397
    .line 398
    goto :goto_12

    .line 399
    :cond_1c
    const/4 v4, 0x0

    .line 400
    goto :goto_13

    .line 401
    :cond_1d
    :goto_12
    const/4 v4, 0x1

    .line 402
    :goto_13
    if-eqz v4, :cond_1f

    .line 403
    .line 404
    add-int/lit8 v14, v14, 0x1

    .line 405
    .line 406
    add-int v4, v12, v14

    .line 407
    .line 408
    if-lt v4, v8, :cond_1e

    .line 409
    .line 410
    goto :goto_14

    .line 411
    :cond_1e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    const/16 v4, 0xd

    .line 416
    .line 417
    goto :goto_11

    .line 418
    :cond_1f
    :goto_14
    if-lt v14, v10, :cond_20

    .line 419
    .line 420
    goto :goto_16

    .line 421
    :cond_20
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    aget-byte v10, v5, v12

    .line 426
    .line 427
    const/16 v13, 0x3f

    .line 428
    .line 429
    if-ne v10, v13, :cond_22

    .line 430
    .line 431
    if-ne v4, v13, :cond_21

    .line 432
    .line 433
    goto :goto_15

    .line 434
    :cond_21
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 435
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v2, "Non-encodable character detected: "

    .line 439
    .line 440
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v2, " (Unicode: "

    .line 447
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const/16 v2, 0x29

    .line 455
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0

    .line 467
    :cond_22
    :goto_15
    add-int/lit8 v12, v12, 0x1

    .line 468
    .line 469
    const/4 v10, 0x5

    .line 470
    const/16 v4, 0xd

    .line 471
    .line 472
    goto/16 :goto_d

    .line 473
    .line 474
    :cond_23
    :goto_16
    sub-int/2addr v12, v9

    .line 475
    if-nez v12, :cond_24

    .line 476
    .line 477
    const/4 v12, 0x1

    .line 478
    :cond_24
    const/4 v4, 0x1

    .line 479
    if-ne v12, v4, :cond_25

    .line 480
    .line 481
    if-nez v11, :cond_25

    .line 482
    .line 483
    const/4 v8, 0x0

    .line 484
    invoke-static {v5, v9, v4, v8, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 485
    .line 486
    .line 487
    move/from16 v10, p0

    .line 488
    .line 489
    goto :goto_17

    .line 490
    :cond_25
    invoke-static {v5, v9, v12, v11, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 491
    .line 492
    .line 493
    const/4 v11, 0x1

    .line 494
    const/4 v10, 0x0

    .line 495
    :goto_17
    add-int/2addr v9, v12

    .line 496
    goto :goto_1a

    .line 497
    :cond_26
    :goto_18
    if-eqz v11, :cond_27

    .line 498
    .line 499
    const/16 v4, 0x384

    .line 500
    .line 501
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const/4 v10, 0x0

    .line 505
    const/4 v11, 0x0

    .line 506
    goto :goto_19

    .line 507
    :cond_27
    move/from16 v10, p0

    .line 508
    .line 509
    :goto_19
    invoke-static {v0, v9, v12, v6, v10}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    add-int/2addr v9, v12

    .line 514
    move v10, v4

    .line 515
    :goto_1a
    const/4 v8, 0x0

    .line 516
    const/16 v12, 0x386

    .line 517
    .line 518
    move/from16 v4, v16

    .line 519
    .line 520
    goto/16 :goto_2

    .line 521
    .line 522
    :goto_1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    iget v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minCols:I

    .line 531
    .line 532
    const/4 v7, 0x0

    .line 533
    const/4 v8, 0x0

    .line 534
    :goto_1c
    iget v9, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxCols:I

    .line 535
    .line 536
    const/16 v10, 0x8

    .line 537
    .line 538
    if-gt v6, v9, :cond_2c

    .line 539
    .line 540
    add-int/lit8 v9, v5, 0x1

    .line 541
    .line 542
    add-int/2addr v9, v10

    .line 543
    div-int v11, v9, v6

    .line 544
    .line 545
    add-int/lit8 v11, v11, 0x1

    .line 546
    .line 547
    mul-int v12, v6, v11

    .line 548
    .line 549
    add-int/2addr v9, v6

    .line 550
    if-lt v12, v9, :cond_28

    .line 551
    .line 552
    add-int/lit8 v11, v11, -0x1

    .line 553
    .line 554
    :cond_28
    iget v9, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minRows:I

    .line 555
    .line 556
    if-ge v11, v9, :cond_29

    .line 557
    .line 558
    goto :goto_1e

    .line 559
    :cond_29
    iget v9, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxRows:I

    .line 560
    .line 561
    if-le v11, v9, :cond_2a

    .line 562
    .line 563
    goto :goto_1d

    .line 564
    :cond_2a
    mul-int/lit8 v9, v6, 0x11

    .line 565
    .line 566
    add-int/lit8 v9, v9, 0x45

    .line 567
    .line 568
    int-to-float v9, v9

    .line 569
    const v10, 0x3eb6c8b4    # 0.357f

    .line 570
    .line 571
    .line 572
    mul-float/2addr v9, v10

    .line 573
    int-to-float v10, v11

    .line 574
    const/high16 v12, 0x40000000    # 2.0f

    .line 575
    .line 576
    mul-float/2addr v10, v12

    .line 577
    div-float/2addr v9, v10

    .line 578
    if-eqz v8, :cond_2b

    .line 579
    .line 580
    const/high16 v10, 0x40400000    # 3.0f

    .line 581
    .line 582
    sub-float v12, v9, v10

    .line 583
    .line 584
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 585
    .line 586
    .line 587
    move-result v12

    .line 588
    sub-float v10, v7, v10

    .line 589
    .line 590
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 591
    .line 592
    .line 593
    move-result v10

    .line 594
    cmpl-float v10, v12, v10

    .line 595
    .line 596
    if-lez v10, :cond_2b

    .line 597
    .line 598
    goto :goto_1d

    .line 599
    :cond_2b
    filled-new-array {v6, v11}, [I

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    move-object v8, v7

    .line 604
    move v7, v9

    .line 605
    :goto_1d
    add-int/lit8 v6, v6, 0x1

    .line 606
    .line 607
    goto :goto_1c

    .line 608
    :cond_2c
    :goto_1e
    if-nez v8, :cond_2e

    .line 609
    .line 610
    iget v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minCols:I

    .line 611
    .line 612
    add-int/lit8 v7, v5, 0x1

    .line 613
    .line 614
    add-int/2addr v7, v10

    .line 615
    div-int v9, v7, v6

    .line 616
    .line 617
    add-int/lit8 v9, v9, 0x1

    .line 618
    .line 619
    mul-int v11, v6, v9

    .line 620
    .line 621
    add-int/2addr v7, v6

    .line 622
    if-lt v11, v7, :cond_2d

    .line 623
    .line 624
    add-int/lit8 v9, v9, -0x1

    .line 625
    .line 626
    :cond_2d
    iget v7, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minRows:I

    .line 627
    .line 628
    if-ge v9, v7, :cond_2e

    .line 629
    .line 630
    filled-new-array {v6, v7}, [I

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    :cond_2e
    if-eqz v8, :cond_41

    .line 635
    .line 636
    const/4 v6, 0x0

    .line 637
    aget v6, v8, v6

    .line 638
    .line 639
    const/4 v7, 0x1

    .line 640
    aget v7, v8, v7

    .line 641
    .line 642
    mul-int v8, v6, v7

    .line 643
    .line 644
    sub-int/2addr v8, v10

    .line 645
    add-int/lit8 v9, v5, 0x1

    .line 646
    .line 647
    if-le v8, v9, :cond_2f

    .line 648
    .line 649
    sub-int/2addr v8, v5

    .line 650
    add-int/lit8 v8, v8, -0x1

    .line 651
    .line 652
    goto :goto_1f

    .line 653
    :cond_2f
    const/4 v8, 0x0

    .line 654
    :goto_1f
    add-int/lit8 v9, v5, 0x8

    .line 655
    .line 656
    add-int/lit8 v9, v9, 0x1

    .line 657
    .line 658
    const/16 v11, 0x3a1

    .line 659
    .line 660
    if-gt v9, v11, :cond_40

    .line 661
    .line 662
    add-int/2addr v5, v8

    .line 663
    add-int/lit8 v5, v5, 0x1

    .line 664
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 668
    .line 669
    .line 670
    int-to-char v5, v5

    .line 671
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const/4 v4, 0x0

    .line 678
    :goto_20
    if-ge v4, v8, :cond_30

    .line 679
    .line 680
    const/16 v5, 0x384

    .line 681
    .line 682
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    add-int/lit8 v4, v4, 0x1

    .line 686
    .line 687
    goto :goto_20

    .line 688
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    new-array v4, v10, [C

    .line 693
    .line 694
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    const/4 v8, 0x0

    .line 699
    :goto_21
    const/4 v9, 0x7

    .line 700
    if-ge v8, v5, :cond_32

    .line 701
    .line 702
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 703
    .line 704
    .line 705
    move-result v12

    .line 706
    aget-char v13, v4, v9

    .line 707
    .line 708
    add-int/2addr v12, v13

    .line 709
    rem-int/2addr v12, v11

    .line 710
    :goto_22
    sget-object v13, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    .line 711
    .line 712
    const/4 v14, 0x1

    .line 713
    if-lt v9, v14, :cond_31

    .line 714
    .line 715
    const/4 v14, 0x2

    .line 716
    aget-object v13, v13, v14

    .line 717
    .line 718
    aget v13, v13, v9

    .line 719
    .line 720
    mul-int/2addr v13, v12

    .line 721
    rem-int/2addr v13, v11

    .line 722
    rsub-int v13, v13, 0x3a1

    .line 723
    .line 724
    add-int/lit8 v14, v9, -0x1

    .line 725
    .line 726
    aget-char v15, v4, v14

    .line 727
    .line 728
    add-int/2addr v15, v13

    .line 729
    rem-int/2addr v15, v11

    .line 730
    int-to-char v13, v15

    .line 731
    aput-char v13, v4, v9

    .line 732
    .line 733
    move v9, v14

    .line 734
    goto :goto_22

    .line 735
    :cond_31
    const/4 v9, 0x2

    .line 736
    aget-object v9, v13, v9

    .line 737
    .line 738
    const/4 v13, 0x0

    .line 739
    aget v9, v9, v13

    .line 740
    .line 741
    mul-int/2addr v12, v9

    .line 742
    rem-int/2addr v12, v11

    .line 743
    rsub-int v9, v12, 0x3a1

    .line 744
    .line 745
    rem-int/2addr v9, v11

    .line 746
    int-to-char v9, v9

    .line 747
    aput-char v9, v4, v13

    .line 748
    .line 749
    add-int/lit8 v8, v8, 0x1

    .line 750
    .line 751
    goto :goto_21

    .line 752
    :cond_32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 755
    .line 756
    .line 757
    :goto_23
    if-ltz v9, :cond_34

    .line 758
    .line 759
    aget-char v8, v4, v9

    .line 760
    .line 761
    if-eqz v8, :cond_33

    .line 762
    .line 763
    rsub-int v8, v8, 0x3a1

    .line 764
    .line 765
    int-to-char v8, v8

    .line 766
    aput-char v8, v4, v9

    .line 767
    .line 768
    :cond_33
    aget-char v8, v4, v9

    .line 769
    .line 770
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    add-int/lit8 v9, v9, -0x1

    .line 774
    .line 775
    goto :goto_23

    .line 776
    :cond_34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-static {v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    new-instance v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    .line 785
    .line 786
    invoke-direct {v4, v7, v6}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;-><init>(II)V

    .line 787
    .line 788
    .line 789
    iput-object v4, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    .line 790
    .line 791
    const/4 v5, 0x0

    .line 792
    const/4 v8, 0x0

    .line 793
    :goto_24
    if-ge v8, v7, :cond_39

    .line 794
    .line 795
    rem-int/lit8 v9, v8, 0x3

    .line 796
    .line 797
    iget v10, v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    .line 798
    .line 799
    add-int/lit8 v10, v10, 0x1

    .line 800
    .line 801
    iput v10, v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    .line 802
    .line 803
    const v10, 0x1fea8

    .line 804
    .line 805
    .line 806
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 807
    .line 808
    .line 809
    move-result-object v11

    .line 810
    const/16 v12, 0x11

    .line 811
    .line 812
    invoke-static {v10, v12, v11}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    .line 813
    .line 814
    .line 815
    if-nez v9, :cond_35

    .line 816
    .line 817
    div-int/lit8 v10, v8, 0x3

    .line 818
    .line 819
    mul-int/lit8 v10, v10, 0x1e

    .line 820
    .line 821
    add-int/lit8 v11, v7, -0x1

    .line 822
    .line 823
    div-int/lit8 v11, v11, 0x3

    .line 824
    .line 825
    add-int/2addr v11, v10

    .line 826
    add-int/lit8 v13, v6, -0x1

    .line 827
    .line 828
    goto :goto_25

    .line 829
    :cond_35
    const/4 v10, 0x1

    .line 830
    if-ne v9, v10, :cond_36

    .line 831
    .line 832
    div-int/lit8 v10, v8, 0x3

    .line 833
    .line 834
    mul-int/lit8 v10, v10, 0x1e

    .line 835
    .line 836
    add-int/lit8 v11, v10, 0x6

    .line 837
    .line 838
    add-int/lit8 v13, v7, -0x1

    .line 839
    .line 840
    rem-int/lit8 v14, v13, 0x3

    .line 841
    .line 842
    add-int/2addr v11, v14

    .line 843
    div-int/lit8 v13, v13, 0x3

    .line 844
    .line 845
    goto :goto_25

    .line 846
    :cond_36
    div-int/lit8 v10, v8, 0x3

    .line 847
    .line 848
    mul-int/lit8 v10, v10, 0x1e

    .line 849
    .line 850
    add-int/lit8 v11, v6, -0x1

    .line 851
    .line 852
    add-int/2addr v11, v10

    .line 853
    add-int/lit8 v10, v10, 0x6

    .line 854
    .line 855
    add-int/lit8 v13, v7, -0x1

    .line 856
    .line 857
    rem-int/lit8 v13, v13, 0x3

    .line 858
    .line 859
    :goto_25
    add-int/2addr v13, v10

    .line 860
    sget-object v10, Lcom/google/zxing/pdf417/encoder/PDF417;->CODEWORD_TABLE:[[I

    .line 861
    .line 862
    aget-object v14, v10, v9

    .line 863
    .line 864
    aget v11, v14, v11

    .line 865
    .line 866
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 867
    .line 868
    .line 869
    move-result-object v14

    .line 870
    invoke-static {v11, v12, v14}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    .line 871
    .line 872
    .line 873
    const/4 v11, 0x0

    .line 874
    :goto_26
    if-ge v11, v6, :cond_37

    .line 875
    .line 876
    aget-object v14, v10, v9

    .line 877
    .line 878
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 879
    .line 880
    .line 881
    move-result v15

    .line 882
    aget v14, v14, v15

    .line 883
    .line 884
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 885
    .line 886
    .line 887
    move-result-object v15

    .line 888
    invoke-static {v14, v12, v15}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    .line 889
    .line 890
    .line 891
    add-int/lit8 v5, v5, 0x1

    .line 892
    .line 893
    add-int/lit8 v11, v11, 0x1

    .line 894
    .line 895
    goto :goto_26

    .line 896
    :cond_37
    iget-boolean v11, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compact:Z

    .line 897
    .line 898
    const v14, 0x3fa29

    .line 899
    .line 900
    .line 901
    if-eqz v11, :cond_38

    .line 902
    .line 903
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    const/4 v10, 0x1

    .line 908
    invoke-static {v14, v10, v9}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    .line 909
    .line 910
    .line 911
    goto :goto_27

    .line 912
    :cond_38
    aget-object v9, v10, v9

    .line 913
    .line 914
    aget v9, v9, v13

    .line 915
    .line 916
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 917
    .line 918
    .line 919
    move-result-object v10

    .line 920
    invoke-static {v9, v12, v10}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    .line 921
    .line 922
    .line 923
    const/16 v9, 0x12

    .line 924
    .line 925
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 926
    .line 927
    .line 928
    move-result-object v10

    .line 929
    invoke-static {v14, v9, v10}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    .line 930
    .line 931
    .line 932
    :goto_27
    add-int/lit8 v8, v8, 0x1

    .line 933
    .line 934
    goto/16 :goto_24

    .line 935
    .line 936
    :cond_39
    iget-object v0, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    .line 937
    .line 938
    const/16 v4, 0x8

    .line 939
    .line 940
    const/4 v5, 0x2

    .line 941
    invoke-virtual {v0, v5, v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    const/4 v4, 0x0

    .line 946
    if-le v3, v2, :cond_3a

    .line 947
    .line 948
    const/4 v5, 0x1

    .line 949
    goto :goto_28

    .line 950
    :cond_3a
    const/4 v5, 0x0

    .line 951
    :goto_28
    aget-object v6, v0, v4

    .line 952
    .line 953
    array-length v6, v6

    .line 954
    array-length v7, v0

    .line 955
    if-ge v6, v7, :cond_3b

    .line 956
    .line 957
    const/4 v6, 0x1

    .line 958
    goto :goto_29

    .line 959
    :cond_3b
    move v6, v4

    .line 960
    :goto_29
    xor-int/2addr v5, v6

    .line 961
    if-eqz v5, :cond_3c

    .line 962
    .line 963
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    const/4 v5, 0x1

    .line 968
    goto :goto_2a

    .line 969
    :cond_3c
    move v5, v4

    .line 970
    :goto_2a
    aget-object v4, v0, v4

    .line 971
    .line 972
    array-length v4, v4

    .line 973
    div-int/2addr v2, v4

    .line 974
    array-length v4, v0

    .line 975
    div-int/2addr v3, v4

    .line 976
    if-ge v2, v3, :cond_3d

    .line 977
    .line 978
    goto :goto_2b

    .line 979
    :cond_3d
    move v2, v3

    .line 980
    :goto_2b
    const/4 v3, 0x1

    .line 981
    if-le v2, v3, :cond_3f

    .line 982
    .line 983
    iget-object v0, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    .line 984
    .line 985
    mul-int/lit8 v1, v2, 0x2

    .line 986
    .line 987
    mul-int/lit8 v2, v2, 0x4

    .line 988
    .line 989
    mul-int/lit8 v2, v2, 0x2

    .line 990
    .line 991
    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    if-eqz v5, :cond_3e

    .line 996
    .line 997
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    :cond_3e
    move/from16 v4, v16

    .line 1002
    .line 1003
    invoke-static {v0, v4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    goto :goto_2c

    .line 1008
    :cond_3f
    move/from16 v4, v16

    .line 1009
    .line 1010
    invoke-static {v0, v4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    :goto_2c
    return-object v0

    .line 1015
    :cond_40
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 1016
    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    const-string v3, "Encoded message contains to many code words, message to big ("

    .line 1020
    .line 1021
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    const-string v0, " bytes)"

    .line 1032
    .line 1033
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    throw v1

    .line 1044
    :cond_41
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 1045
    .line 1046
    const-string v1, "Unable to fit message in columns"

    .line 1047
    .line 1048
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    throw v0

    .line 1052
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1053
    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    const-string v3, "Can only encode PDF_417, but got "

    .line 1057
    .line 1058
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    throw v0
.end method
