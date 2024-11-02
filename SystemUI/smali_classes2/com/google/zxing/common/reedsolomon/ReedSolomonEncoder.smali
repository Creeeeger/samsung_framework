.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final cachedGenerators:Ljava/util/List;

.field public final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 12
    .line 13
    new-instance p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    filled-new-array {v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final encode(I[I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-eqz v1, :cond_e

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    sub-int/2addr v3, v1

    .line 11
    if-lez v3, :cond_d

    .line 12
    .line 13
    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 14
    .line 15
    check-cast v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x1

    .line 22
    const-string v7, "GenericGFPolys do not have same GenericGF field"

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 25
    .line 26
    if-lt v1, v5, :cond_5

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v5, v6

    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    :goto_0
    if-gt v8, v1, :cond_5

    .line 44
    .line 45
    new-instance v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 46
    .line 47
    add-int/lit8 v10, v8, -0x1

    .line 48
    .line 49
    iget v11, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 50
    .line 51
    add-int/2addr v10, v11

    .line 52
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 53
    .line 54
    .line 55
    iget-object v11, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 56
    .line 57
    aget v10, v11, v10

    .line 58
    .line 59
    filled-new-array {v6, v10}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-direct {v9, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v6, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 70
    .line 71
    iget-object v10, v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 72
    .line 73
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_4

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-nez v10, :cond_3

    .line 84
    .line 85
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_0

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_0
    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 93
    .line 94
    array-length v10, v5

    .line 95
    iget-object v9, v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 96
    .line 97
    array-length v11, v9

    .line 98
    add-int v12, v10, v11

    .line 99
    .line 100
    add-int/lit8 v12, v12, -0x1

    .line 101
    .line 102
    new-array v12, v12, [I

    .line 103
    .line 104
    const/4 v13, 0x0

    .line 105
    :goto_1
    if-ge v13, v10, :cond_2

    .line 106
    .line 107
    aget v14, v5, v13

    .line 108
    .line 109
    const/4 v15, 0x0

    .line 110
    :goto_2
    if-ge v15, v11, :cond_1

    .line 111
    .line 112
    add-int v16, v13, v15

    .line 113
    .line 114
    aget v17, v12, v16

    .line 115
    .line 116
    move-object/from16 p0, v5

    .line 117
    .line 118
    aget v5, v9, v15

    .line 119
    .line 120
    invoke-virtual {v6, v14, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    xor-int v5, v17, v5

    .line 125
    .line 126
    aput v5, v12, v16

    .line 127
    .line 128
    add-int/lit8 v15, v15, 0x1

    .line 129
    .line 130
    move-object/from16 v5, p0

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    move-object/from16 p0, v5

    .line 134
    .line 135
    add-int/lit8 v13, v13, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 139
    .line 140
    invoke-direct {v5, v6, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_3
    :goto_3
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 145
    .line 146
    .line 147
    iget-object v5, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 148
    .line 149
    :goto_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    add-int/lit8 v8, v8, 0x1

    .line 153
    .line 154
    const/4 v6, 0x1

    .line 155
    goto :goto_0

    .line 156
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_5
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 167
    .line 168
    new-array v5, v3, [I

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 175
    .line 176
    invoke-direct {v6, v0, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 177
    .line 178
    .line 179
    const/4 v0, 0x1

    .line 180
    invoke-virtual {v6, v1, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget-object v5, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 188
    .line 189
    iget-object v6, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 190
    .line 191
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_c

    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-nez v5, :cond_b

    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 204
    .line 205
    .line 206
    iget-object v5, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 207
    .line 208
    iget-object v7, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 209
    .line 210
    array-length v8, v7

    .line 211
    add-int/lit8 v8, v8, -0x1

    .line 212
    .line 213
    array-length v9, v7

    .line 214
    add-int/lit8 v9, v9, -0x1

    .line 215
    .line 216
    sub-int/2addr v9, v8

    .line 217
    aget v8, v7, v9

    .line 218
    .line 219
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 220
    .line 221
    .line 222
    if-eqz v8, :cond_a

    .line 223
    .line 224
    iget-object v9, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 225
    .line 226
    iget-object v10, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 227
    .line 228
    aget v8, v10, v8

    .line 229
    .line 230
    iget v10, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 231
    .line 232
    sub-int/2addr v10, v8

    .line 233
    add-int/lit8 v10, v10, -0x1

    .line 234
    .line 235
    aget v8, v9, v10

    .line 236
    .line 237
    :goto_5
    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 238
    .line 239
    array-length v9, v9

    .line 240
    add-int/lit8 v9, v9, -0x1

    .line 241
    .line 242
    array-length v10, v7

    .line 243
    add-int/lit8 v10, v10, -0x1

    .line 244
    .line 245
    if-lt v9, v10, :cond_8

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-nez v9, :cond_8

    .line 252
    .line 253
    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 254
    .line 255
    array-length v10, v9

    .line 256
    add-int/lit8 v10, v10, -0x1

    .line 257
    .line 258
    array-length v11, v7

    .line 259
    add-int/lit8 v11, v11, -0x1

    .line 260
    .line 261
    sub-int/2addr v10, v11

    .line 262
    array-length v11, v9

    .line 263
    add-int/lit8 v11, v11, -0x1

    .line 264
    .line 265
    array-length v12, v9

    .line 266
    add-int/lit8 v12, v12, -0x1

    .line 267
    .line 268
    sub-int/2addr v12, v11

    .line 269
    aget v9, v9, v12

    .line 270
    .line 271
    invoke-virtual {v6, v9, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    invoke-virtual {v4, v10, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 280
    .line 281
    .line 282
    if-ltz v10, :cond_7

    .line 283
    .line 284
    if-nez v9, :cond_6

    .line 285
    .line 286
    iget-object v9, v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 290
    .line 291
    new-array v10, v10, [I

    .line 292
    .line 293
    const/4 v12, 0x0

    .line 294
    aput v9, v10, v12

    .line 295
    .line 296
    new-instance v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 297
    .line 298
    invoke-direct {v9, v6, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 299
    .line 300
    .line 301
    :goto_6
    invoke-virtual {v5, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v0, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    goto :goto_5

    .line 310
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 313
    .line 314
    .line 315
    throw v0

    .line 316
    :cond_8
    filled-new-array {v5, v0}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const/4 v4, 0x1

    .line 321
    aget-object v0, v0, v4

    .line 322
    .line 323
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 324
    .line 325
    array-length v4, v0

    .line 326
    sub-int/2addr v1, v4

    .line 327
    const/4 v4, 0x0

    .line 328
    :goto_7
    if-ge v4, v1, :cond_9

    .line 329
    .line 330
    add-int v5, v3, v4

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    aput v6, v2, v5

    .line 334
    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_9
    const/4 v4, 0x0

    .line 339
    add-int/2addr v3, v1

    .line 340
    array-length v1, v0

    .line 341
    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 346
    .line 347
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 348
    .line 349
    .line 350
    throw v0

    .line 351
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 352
    .line 353
    const-string v1, "Divide by 0"

    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 360
    .line 361
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v0

    .line 365
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 366
    .line 367
    const-string v1, "No data bytes provided"

    .line 368
    .line 369
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 374
    .line 375
    const-string v1, "No error correction bytes"

    .line 376
    .line 377
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0
.end method
