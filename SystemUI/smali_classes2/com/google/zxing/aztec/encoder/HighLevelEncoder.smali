.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CHAR_MAP:[[I

.field public static final LATCH_TABLE:[[I

.field public static final MODE_NAMES:[Ljava/lang/String;

.field public static final SHIFT_TABLE:[[I


# instance fields
.field public final text:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "MIXED"

    .line 2
    .line 3
    const-string v1, "PUNCT"

    .line 4
    .line 5
    const-string v2, "UPPER"

    .line 6
    .line 7
    const-string v3, "LOWER"

    .line 8
    .line 9
    const-string v4, "DIGIT"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const v1, 0x5001c

    .line 19
    .line 20
    .line 21
    const v2, 0x5001e

    .line 22
    .line 23
    .line 24
    const v3, 0x5001d

    .line 25
    .line 26
    .line 27
    const v4, 0xa03be

    .line 28
    .line 29
    .line 30
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const v6, 0x901ee

    .line 35
    .line 36
    .line 37
    filled-new-array {v6, v0, v2, v3, v4}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const v7, 0x901dd

    .line 42
    .line 43
    .line 44
    const v8, 0xe3bbe

    .line 45
    .line 46
    .line 47
    const v9, 0x4000e

    .line 48
    .line 49
    .line 50
    const v10, 0x901dc

    .line 51
    .line 52
    .line 53
    filled-new-array {v9, v10, v0, v7, v8}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    filled-new-array {v3, v1, v4, v0, v2}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const v2, 0xa03fe

    .line 62
    .line 63
    .line 64
    const v3, 0xa03fd

    .line 65
    .line 66
    .line 67
    const v4, 0x5001f

    .line 68
    .line 69
    .line 70
    const v8, 0xa03fc

    .line 71
    .line 72
    .line 73
    filled-new-array {v4, v8, v2, v3, v0}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    filled-new-array {v5, v6, v7, v1, v2}, [[I

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 82
    .line 83
    const/4 v1, 0x5

    .line 84
    const/16 v2, 0x100

    .line 85
    .line 86
    filled-new-array {v1, v2}, [I

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, [[I

    .line 97
    .line 98
    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 99
    .line 100
    aget-object v1, v1, v0

    .line 101
    .line 102
    const/16 v2, 0x20

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    aput v3, v1, v2

    .line 106
    .line 107
    const/16 v1, 0x41

    .line 108
    .line 109
    :goto_0
    const/16 v4, 0x5a

    .line 110
    .line 111
    const/4 v5, 0x2

    .line 112
    if-gt v1, v4, :cond_0

    .line 113
    .line 114
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 115
    .line 116
    aget-object v4, v4, v0

    .line 117
    .line 118
    add-int/lit8 v6, v1, -0x41

    .line 119
    .line 120
    add-int/2addr v6, v5

    .line 121
    aput v6, v4, v1

    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 127
    .line 128
    aget-object v1, v1, v3

    .line 129
    .line 130
    aput v3, v1, v2

    .line 131
    .line 132
    const/16 v1, 0x61

    .line 133
    .line 134
    :goto_1
    const/16 v4, 0x7a

    .line 135
    .line 136
    if-gt v1, v4, :cond_1

    .line 137
    .line 138
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 139
    .line 140
    aget-object v4, v4, v3

    .line 141
    .line 142
    add-int/lit8 v6, v1, -0x61

    .line 143
    .line 144
    add-int/2addr v6, v5

    .line 145
    aput v6, v4, v1

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 151
    .line 152
    aget-object v1, v1, v5

    .line 153
    .line 154
    aput v3, v1, v2

    .line 155
    .line 156
    const/16 v1, 0x30

    .line 157
    .line 158
    :goto_2
    const/16 v2, 0x39

    .line 159
    .line 160
    if-gt v1, v2, :cond_2

    .line 161
    .line 162
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 163
    .line 164
    aget-object v2, v2, v5

    .line 165
    .line 166
    add-int/lit8 v4, v1, -0x30

    .line 167
    .line 168
    add-int/2addr v4, v5

    .line 169
    aput v4, v2, v1

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 175
    .line 176
    aget-object v1, v1, v5

    .line 177
    .line 178
    const/16 v2, 0x2c

    .line 179
    .line 180
    const/16 v4, 0xc

    .line 181
    .line 182
    aput v4, v1, v2

    .line 183
    .line 184
    const/16 v2, 0x2e

    .line 185
    .line 186
    const/16 v4, 0xd

    .line 187
    .line 188
    aput v4, v1, v2

    .line 189
    .line 190
    const/16 v1, 0x1c

    .line 191
    .line 192
    new-array v2, v1, [I

    .line 193
    .line 194
    fill-array-data v2, :array_0

    .line 195
    .line 196
    .line 197
    move v4, v0

    .line 198
    :goto_3
    const/4 v6, 0x3

    .line 199
    if-ge v4, v1, :cond_3

    .line 200
    .line 201
    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 202
    .line 203
    aget-object v6, v7, v6

    .line 204
    .line 205
    aget v7, v2, v4

    .line 206
    .line 207
    aput v4, v6, v7

    .line 208
    .line 209
    add-int/lit8 v4, v4, 0x1

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_3
    const/16 v2, 0x1f

    .line 213
    .line 214
    new-array v4, v2, [I

    .line 215
    .line 216
    fill-array-data v4, :array_1

    .line 217
    .line 218
    .line 219
    move v7, v0

    .line 220
    :goto_4
    const/4 v8, 0x4

    .line 221
    if-ge v7, v2, :cond_5

    .line 222
    .line 223
    aget v9, v4, v7

    .line 224
    .line 225
    if-lez v9, :cond_4

    .line 226
    .line 227
    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 228
    .line 229
    aget-object v8, v10, v8

    .line 230
    .line 231
    aput v7, v8, v9

    .line 232
    .line 233
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    const/4 v2, 0x6

    .line 237
    filled-new-array {v2, v2}, [I

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 242
    .line 243
    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, [[I

    .line 248
    .line 249
    sput-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 250
    .line 251
    array-length v4, v2

    .line 252
    move v7, v0

    .line 253
    :goto_5
    if-ge v7, v4, :cond_6

    .line 254
    .line 255
    aget-object v9, v2, v7

    .line 256
    .line 257
    const/4 v10, -0x1

    .line 258
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 259
    .line 260
    .line 261
    add-int/lit8 v7, v7, 0x1

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_6
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 265
    .line 266
    aget-object v4, v2, v0

    .line 267
    .line 268
    aput v0, v4, v8

    .line 269
    .line 270
    aget-object v3, v2, v3

    .line 271
    .line 272
    aput v0, v3, v8

    .line 273
    .line 274
    aput v1, v3, v0

    .line 275
    .line 276
    aget-object v1, v2, v6

    .line 277
    .line 278
    aput v0, v1, v8

    .line 279
    .line 280
    aget-object v1, v2, v5

    .line 281
    .line 282
    aput v0, v1, v8

    .line 283
    .line 284
    const/16 v2, 0xf

    .line 285
    .line 286
    aput v2, v1, v0

    .line 287
    .line 288
    return-void

    .line 289
    :array_0
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_1
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 5
    .line 6
    return-void
.end method

.method public static simplifyStates(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 v2, 0x1

    .line 57
    :goto_2
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    return-object v0
.end method
