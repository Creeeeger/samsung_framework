.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static findMinimums([F[I[B)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    .line 4
    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    move v2, v0

    .line 9
    :goto_0
    const/4 v3, 0x6

    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    aget v3, p0, v2

    .line 13
    .line 14
    float-to-double v3, v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    double-to-int v3, v3

    .line 20
    aput v3, p1, v2

    .line 21
    .line 22
    if-le v1, v3, :cond_0

    .line 23
    .line 24
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 25
    .line 26
    .line 27
    move v1, v3

    .line 28
    :cond_0
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    aget-byte v3, p2, v2

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, p2, v2

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v1
.end method

.method public static illegalCharacter(C)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    rsub-int/lit8 v2, v2, 0x4

    .line 15
    .line 16
    const-string v3, "0000"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Illegal character: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " (0x"

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x29

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method public static isExtendedASCII(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static isNativeX12(C)Z
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x2a

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x3e

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v2

    .line 19
    :goto_1
    if-nez v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    if-eq p0, v0, :cond_3

    .line 24
    .line 25
    const/16 v0, 0x30

    .line 26
    .line 27
    if-lt p0, v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x39

    .line 30
    .line 31
    if-le p0, v0, :cond_3

    .line 32
    .line 33
    :cond_2
    const/16 v0, 0x41

    .line 34
    .line 35
    if-lt p0, v0, :cond_4

    .line 36
    .line 37
    const/16 v0, 0x5a

    .line 38
    .line 39
    if-gt p0, v0, :cond_4

    .line 40
    .line 41
    :cond_3
    move v1, v2

    .line 42
    :cond_4
    return v1
.end method

.method public static lookAheadTest(IILjava/lang/CharSequence;)I
    .locals 18

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const/4 v2, 0x6

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    new-array v3, v2, [F

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-array v3, v2, [F

    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput v4, v3, p1

    .line 30
    .line 31
    :goto_0
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :cond_2
    add-int v6, v0, v5

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v8, 0x5

    .line 40
    const/4 v9, 0x1

    .line 41
    const/4 v10, 0x2

    .line 42
    const/4 v11, 0x3

    .line 43
    const/4 v12, 0x4

    .line 44
    if-ne v6, v7, :cond_9

    .line 45
    .line 46
    new-array v0, v2, [B

    .line 47
    .line 48
    new-array v1, v2, [I

    .line 49
    .line 50
    invoke-static {v3, v1, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[I[B)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    move v5, v4

    .line 55
    move v6, v5

    .line 56
    :goto_1
    if-ge v5, v2, :cond_3

    .line 57
    .line 58
    aget-byte v7, v0, v5

    .line 59
    .line 60
    add-int/2addr v6, v7

    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    aget v1, v1, v4

    .line 65
    .line 66
    if-ne v1, v3, :cond_4

    .line 67
    .line 68
    return v4

    .line 69
    :cond_4
    if-ne v6, v9, :cond_5

    .line 70
    .line 71
    aget-byte v1, v0, v8

    .line 72
    .line 73
    if-lez v1, :cond_5

    .line 74
    .line 75
    return v8

    .line 76
    :cond_5
    if-ne v6, v9, :cond_6

    .line 77
    .line 78
    aget-byte v1, v0, v12

    .line 79
    .line 80
    if-lez v1, :cond_6

    .line 81
    .line 82
    return v12

    .line 83
    :cond_6
    if-ne v6, v9, :cond_7

    .line 84
    .line 85
    aget-byte v1, v0, v10

    .line 86
    .line 87
    if-lez v1, :cond_7

    .line 88
    .line 89
    return v10

    .line 90
    :cond_7
    if-ne v6, v9, :cond_8

    .line 91
    .line 92
    aget-byte v0, v0, v11

    .line 93
    .line 94
    if-lez v0, :cond_8

    .line 95
    .line 96
    return v11

    .line 97
    :cond_8
    return v9

    .line 98
    :cond_9
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    const/16 v7, 0x39

    .line 105
    .line 106
    const/16 v13, 0x30

    .line 107
    .line 108
    if-lt v6, v13, :cond_a

    .line 109
    .line 110
    if-gt v6, v7, :cond_a

    .line 111
    .line 112
    move v14, v9

    .line 113
    goto :goto_2

    .line 114
    :cond_a
    move v14, v4

    .line 115
    :goto_2
    const/high16 v15, 0x3f800000    # 1.0f

    .line 116
    .line 117
    if-eqz v14, :cond_b

    .line 118
    .line 119
    aget v14, v3, v4

    .line 120
    .line 121
    float-to-double v11, v14

    .line 122
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 123
    .line 124
    add-double v11, v11, v16

    .line 125
    .line 126
    double-to-float v11, v11

    .line 127
    aput v11, v3, v4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_b
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_c

    .line 135
    .line 136
    aget v11, v3, v4

    .line 137
    .line 138
    float-to-double v11, v11

    .line 139
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v11

    .line 143
    double-to-int v11, v11

    .line 144
    int-to-float v11, v11

    .line 145
    aput v11, v3, v4

    .line 146
    .line 147
    const/high16 v12, 0x40000000    # 2.0f

    .line 148
    .line 149
    add-float/2addr v11, v12

    .line 150
    aput v11, v3, v4

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_c
    aget v11, v3, v4

    .line 154
    .line 155
    float-to-double v11, v11

    .line 156
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    double-to-int v11, v11

    .line 161
    int-to-float v11, v11

    .line 162
    aput v11, v3, v4

    .line 163
    .line 164
    add-float/2addr v11, v15

    .line 165
    aput v11, v3, v4

    .line 166
    .line 167
    :goto_3
    const/16 v11, 0x20

    .line 168
    .line 169
    if-eq v6, v11, :cond_f

    .line 170
    .line 171
    if-lt v6, v13, :cond_d

    .line 172
    .line 173
    if-le v6, v7, :cond_f

    .line 174
    .line 175
    :cond_d
    const/16 v12, 0x41

    .line 176
    .line 177
    if-lt v6, v12, :cond_e

    .line 178
    .line 179
    const/16 v12, 0x5a

    .line 180
    .line 181
    if-gt v6, v12, :cond_e

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_e
    move v12, v4

    .line 185
    goto :goto_5

    .line 186
    :cond_f
    :goto_4
    move v12, v9

    .line 187
    :goto_5
    const v14, 0x402aaaab

    .line 188
    .line 189
    .line 190
    const v16, 0x3faaaaab

    .line 191
    .line 192
    .line 193
    const v17, 0x3f2aaaab

    .line 194
    .line 195
    .line 196
    if-eqz v12, :cond_10

    .line 197
    .line 198
    aget v12, v3, v9

    .line 199
    .line 200
    add-float v12, v12, v17

    .line 201
    .line 202
    aput v12, v3, v9

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_10
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_11

    .line 210
    .line 211
    aget v12, v3, v9

    .line 212
    .line 213
    add-float/2addr v12, v14

    .line 214
    aput v12, v3, v9

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_11
    aget v12, v3, v9

    .line 218
    .line 219
    add-float v12, v12, v16

    .line 220
    .line 221
    aput v12, v3, v9

    .line 222
    .line 223
    :goto_6
    if-eq v6, v11, :cond_14

    .line 224
    .line 225
    if-lt v6, v13, :cond_12

    .line 226
    .line 227
    if-le v6, v7, :cond_14

    .line 228
    .line 229
    :cond_12
    const/16 v7, 0x61

    .line 230
    .line 231
    if-lt v6, v7, :cond_13

    .line 232
    .line 233
    const/16 v7, 0x7a

    .line 234
    .line 235
    if-gt v6, v7, :cond_13

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_13
    move v7, v4

    .line 239
    goto :goto_8

    .line 240
    :cond_14
    :goto_7
    move v7, v9

    .line 241
    :goto_8
    if-eqz v7, :cond_15

    .line 242
    .line 243
    aget v7, v3, v10

    .line 244
    .line 245
    add-float v7, v7, v17

    .line 246
    .line 247
    aput v7, v3, v10

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_15
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_16

    .line 255
    .line 256
    aget v7, v3, v10

    .line 257
    .line 258
    add-float/2addr v7, v14

    .line 259
    aput v7, v3, v10

    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_16
    aget v7, v3, v10

    .line 263
    .line 264
    add-float v7, v7, v16

    .line 265
    .line 266
    aput v7, v3, v10

    .line 267
    .line 268
    :goto_9
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_17

    .line 273
    .line 274
    const/4 v7, 0x3

    .line 275
    aget v12, v3, v7

    .line 276
    .line 277
    add-float v12, v12, v17

    .line 278
    .line 279
    aput v12, v3, v7

    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_17
    const/4 v7, 0x3

    .line 283
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    if-eqz v12, :cond_18

    .line 288
    .line 289
    aget v12, v3, v7

    .line 290
    .line 291
    const v13, 0x408aaaab

    .line 292
    .line 293
    .line 294
    add-float/2addr v12, v13

    .line 295
    aput v12, v3, v7

    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_18
    aget v12, v3, v7

    .line 299
    .line 300
    const v13, 0x40555555

    .line 301
    .line 302
    .line 303
    add-float/2addr v12, v13

    .line 304
    aput v12, v3, v7

    .line 305
    .line 306
    :goto_a
    if-lt v6, v11, :cond_19

    .line 307
    .line 308
    const/16 v7, 0x5e

    .line 309
    .line 310
    if-gt v6, v7, :cond_19

    .line 311
    .line 312
    move v7, v9

    .line 313
    goto :goto_b

    .line 314
    :cond_19
    move v7, v4

    .line 315
    :goto_b
    if-eqz v7, :cond_1a

    .line 316
    .line 317
    const/4 v7, 0x4

    .line 318
    aget v6, v3, v7

    .line 319
    .line 320
    const/high16 v11, 0x3f400000    # 0.75f

    .line 321
    .line 322
    add-float/2addr v6, v11

    .line 323
    aput v6, v3, v7

    .line 324
    .line 325
    goto :goto_c

    .line 326
    :cond_1a
    const/4 v7, 0x4

    .line 327
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_1b

    .line 332
    .line 333
    aget v6, v3, v7

    .line 334
    .line 335
    const/high16 v11, 0x40880000    # 4.25f

    .line 336
    .line 337
    add-float/2addr v6, v11

    .line 338
    aput v6, v3, v7

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_1b
    aget v6, v3, v7

    .line 342
    .line 343
    const/high16 v11, 0x40500000    # 3.25f

    .line 344
    .line 345
    add-float/2addr v6, v11

    .line 346
    aput v6, v3, v7

    .line 347
    .line 348
    :goto_c
    aget v6, v3, v8

    .line 349
    .line 350
    add-float/2addr v6, v15

    .line 351
    aput v6, v3, v8

    .line 352
    .line 353
    if-lt v5, v7, :cond_2

    .line 354
    .line 355
    new-array v6, v2, [I

    .line 356
    .line 357
    new-array v7, v2, [B

    .line 358
    .line 359
    invoke-static {v3, v6, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[I[B)I

    .line 360
    .line 361
    .line 362
    move v11, v4

    .line 363
    move v12, v11

    .line 364
    :goto_d
    if-ge v11, v2, :cond_1c

    .line 365
    .line 366
    aget-byte v13, v7, v11

    .line 367
    .line 368
    add-int/2addr v12, v13

    .line 369
    add-int/lit8 v11, v11, 0x1

    .line 370
    .line 371
    goto :goto_d

    .line 372
    :cond_1c
    aget v11, v6, v4

    .line 373
    .line 374
    aget v13, v6, v8

    .line 375
    .line 376
    if-ge v11, v13, :cond_1d

    .line 377
    .line 378
    aget v14, v6, v9

    .line 379
    .line 380
    if-ge v11, v14, :cond_1d

    .line 381
    .line 382
    aget v14, v6, v10

    .line 383
    .line 384
    if-ge v11, v14, :cond_1d

    .line 385
    .line 386
    const/4 v14, 0x3

    .line 387
    aget v15, v6, v14

    .line 388
    .line 389
    if-ge v11, v15, :cond_1d

    .line 390
    .line 391
    const/4 v14, 0x4

    .line 392
    aget v15, v6, v14

    .line 393
    .line 394
    if-ge v11, v15, :cond_1d

    .line 395
    .line 396
    return v4

    .line 397
    :cond_1d
    if-lt v13, v11, :cond_28

    .line 398
    .line 399
    aget-byte v14, v7, v9

    .line 400
    .line 401
    aget-byte v15, v7, v10

    .line 402
    .line 403
    add-int/2addr v14, v15

    .line 404
    const/16 v16, 0x3

    .line 405
    .line 406
    aget-byte v17, v7, v16

    .line 407
    .line 408
    add-int v14, v14, v17

    .line 409
    .line 410
    const/16 v16, 0x4

    .line 411
    .line 412
    aget-byte v7, v7, v16

    .line 413
    .line 414
    add-int/2addr v14, v7

    .line 415
    if-nez v14, :cond_1e

    .line 416
    .line 417
    goto :goto_12

    .line 418
    :cond_1e
    if-ne v12, v9, :cond_1f

    .line 419
    .line 420
    if-lez v7, :cond_1f

    .line 421
    .line 422
    return v16

    .line 423
    :cond_1f
    if-ne v12, v9, :cond_20

    .line 424
    .line 425
    if-lez v15, :cond_20

    .line 426
    .line 427
    return v10

    .line 428
    :cond_20
    if-ne v12, v9, :cond_21

    .line 429
    .line 430
    if-lez v17, :cond_21

    .line 431
    .line 432
    const/4 v7, 0x3

    .line 433
    return v7

    .line 434
    :cond_21
    aget v7, v6, v9

    .line 435
    .line 436
    add-int/lit8 v8, v7, 0x1

    .line 437
    .line 438
    if-ge v8, v11, :cond_2

    .line 439
    .line 440
    if-ge v8, v13, :cond_2

    .line 441
    .line 442
    const/4 v11, 0x4

    .line 443
    aget v11, v6, v11

    .line 444
    .line 445
    if-ge v8, v11, :cond_2

    .line 446
    .line 447
    aget v10, v6, v10

    .line 448
    .line 449
    if-ge v8, v10, :cond_2

    .line 450
    .line 451
    const/4 v8, 0x3

    .line 452
    aget v6, v6, v8

    .line 453
    .line 454
    if-ge v7, v6, :cond_22

    .line 455
    .line 456
    return v9

    .line 457
    :cond_22
    if-ne v7, v6, :cond_2

    .line 458
    .line 459
    add-int/2addr v0, v5

    .line 460
    add-int/2addr v0, v9

    .line 461
    :goto_e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-ge v0, v2, :cond_27

    .line 466
    .line 467
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    const/16 v3, 0xd

    .line 472
    .line 473
    if-eq v2, v3, :cond_24

    .line 474
    .line 475
    const/16 v3, 0x2a

    .line 476
    .line 477
    if-eq v2, v3, :cond_24

    .line 478
    .line 479
    const/16 v3, 0x3e

    .line 480
    .line 481
    if-ne v2, v3, :cond_23

    .line 482
    .line 483
    goto :goto_f

    .line 484
    :cond_23
    move v3, v4

    .line 485
    goto :goto_10

    .line 486
    :cond_24
    :goto_f
    move v3, v9

    .line 487
    :goto_10
    if-eqz v3, :cond_25

    .line 488
    .line 489
    const/4 v3, 0x3

    .line 490
    return v3

    .line 491
    :cond_25
    const/4 v3, 0x3

    .line 492
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-nez v2, :cond_26

    .line 497
    .line 498
    goto :goto_11

    .line 499
    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 500
    .line 501
    goto :goto_e

    .line 502
    :cond_27
    :goto_11
    return v9

    .line 503
    :cond_28
    :goto_12
    return v8

    .line 504
    nop

    .line 505
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
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
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method
