.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ALT_START_END_CHARS:[C

.field public static final START_END_CHARS:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 8
    .line 9
    new-array v0, v0, [C

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;)[Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-lt p0, v0, :cond_14

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v1, v2

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sget-object v3, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 32
    .line 33
    invoke-static {v0, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains(C[C)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-static {v1, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains(C[C)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    move v4, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, p0

    .line 48
    :goto_0
    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 49
    .line 50
    invoke-static {v0, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains(C[C)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-static {v1, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains(C[C)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    move v0, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v0, p0

    .line 65
    :goto_1
    if-nez v4, :cond_3

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "Codabar should start/end with "

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ", or start/end with "

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_3
    :goto_2
    const/4 v0, 0x4

    .line 107
    new-array v0, v0, [C

    .line 108
    .line 109
    fill-array-data v0, :array_0

    .line 110
    .line 111
    .line 112
    const/16 v1, 0x14

    .line 113
    .line 114
    move v3, v2

    .line 115
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    sub-int/2addr v4, v2

    .line 120
    if-ge v3, v4, :cond_7

    .line 121
    .line 122
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    const/16 v5, 0x2d

    .line 137
    .line 138
    if-eq v4, v5, :cond_6

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    const/16 v5, 0x24

    .line 145
    .line 146
    if-ne v4, v5, :cond_4

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains(C[C)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_5

    .line 158
    .line 159
    add-int/lit8 v1, v1, 0xa

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, "Cannot encode : \'"

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const/16 p1, 0x27

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x9

    .line 192
    .line 193
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    sub-int/2addr v0, v2

    .line 201
    add-int/2addr v0, v1

    .line 202
    new-array v0, v0, [Z

    .line 203
    .line 204
    move v1, p0

    .line 205
    move v3, v1

    .line 206
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-ge v1, v4, :cond_13

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    sub-int/2addr v5, v2

    .line 225
    if-ne v1, v5, :cond_c

    .line 226
    .line 227
    const/16 v5, 0x2a

    .line 228
    .line 229
    if-eq v4, v5, :cond_b

    .line 230
    .line 231
    const/16 v5, 0x45

    .line 232
    .line 233
    if-eq v4, v5, :cond_a

    .line 234
    .line 235
    const/16 v5, 0x4e

    .line 236
    .line 237
    if-eq v4, v5, :cond_9

    .line 238
    .line 239
    const/16 v5, 0x54

    .line 240
    .line 241
    if-eq v4, v5, :cond_8

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_8
    const/16 v4, 0x41

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_9
    const/16 v4, 0x42

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_a
    const/16 v4, 0x44

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_b
    const/16 v4, 0x43

    .line 254
    .line 255
    :cond_c
    :goto_7
    move v5, p0

    .line 256
    :goto_8
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 257
    .line 258
    array-length v7, v6

    .line 259
    if-ge v5, v7, :cond_e

    .line 260
    .line 261
    aget-char v6, v6, v5

    .line 262
    .line 263
    if-ne v4, v6, :cond_d

    .line 264
    .line 265
    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 266
    .line 267
    aget v4, v4, v5

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_e
    move v4, p0

    .line 274
    :goto_9
    move v5, p0

    .line 275
    move v7, v5

    .line 276
    move v6, v2

    .line 277
    :goto_a
    const/4 v8, 0x7

    .line 278
    if-ge v5, v8, :cond_11

    .line 279
    .line 280
    aput-boolean v6, v0, v3

    .line 281
    .line 282
    add-int/lit8 v3, v3, 0x1

    .line 283
    .line 284
    rsub-int/lit8 v8, v5, 0x6

    .line 285
    .line 286
    shr-int v8, v4, v8

    .line 287
    .line 288
    and-int/2addr v8, v2

    .line 289
    if-eqz v8, :cond_10

    .line 290
    .line 291
    if-ne v7, v2, :cond_f

    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_10
    :goto_b
    xor-int/lit8 v6, v6, 0x1

    .line 298
    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 300
    .line 301
    move v7, p0

    .line 302
    goto :goto_a

    .line 303
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    sub-int/2addr v4, v2

    .line 308
    if-ge v1, v4, :cond_12

    .line 309
    .line 310
    aput-boolean p0, v0, v3

    .line 311
    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_13
    return-object v0

    .line 318
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 319
    .line 320
    const-string p1, "Codabar should start/end with start/stop symbols"

    .line 321
    .line 322
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p0

    .line 326
    nop

    .line 327
    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method
