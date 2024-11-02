.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mFilters:Ljava/util/List;

.field public mMaxColors:I

.field public final mResizeArea:I

.field public final mResizeMaxDimension:I

.field public final mSwatches:Ljava/util/List;

.field public final mTargets:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v1, 0x10

    .line 3
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v1, 0x3100

    .line 4
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 11
    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object p0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bitmap is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v0, 0x10

    .line 20
    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v0, 0x3100

    .line 21
    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    sget-object v1, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List of Swatches is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final generate()Landroidx/palette/graphics/Palette;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-eqz v3, :cond_5

    .line 7
    .line 8
    iget v4, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    .line 9
    .line 10
    if-lez v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    mul-int/2addr v6, v5

    .line 21
    if-le v6, v4, :cond_1

    .line 22
    .line 23
    int-to-double v4, v4

    .line 24
    int-to-double v6, v6

    .line 25
    div-double/2addr v4, v6

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v4, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 32
    .line 33
    if-lez v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-le v5, v4, :cond_1

    .line 48
    .line 49
    int-to-double v6, v4

    .line 50
    int-to-double v4, v5

    .line 51
    div-double v4, v6, v4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 55
    .line 56
    :goto_0
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    cmpg-double v6, v4, v6

    .line 59
    .line 60
    if-gtz v6, :cond_2

    .line 61
    .line 62
    move-object v4, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    int-to-double v6, v6

    .line 69
    mul-double/2addr v6, v4

    .line 70
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    double-to-int v6, v6

    .line 75
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    int-to-double v7, v7

    .line 80
    mul-double/2addr v7, v4

    .line 81
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    double-to-int v4, v4

    .line 86
    invoke-static {v3, v6, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_1
    new-instance v13, Landroidx/palette/graphics/ColorCutQuantizer;

    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    mul-int v5, v11, v12

    .line 101
    .line 102
    new-array v14, v5, [I

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v10, 0x0

    .line 107
    move-object v5, v4

    .line 108
    move-object v6, v14

    .line 109
    move v8, v11

    .line 110
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 111
    .line 112
    .line 113
    iget v5, v0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    .line 114
    .line 115
    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 116
    .line 117
    check-cast v6, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_3

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    new-array v7, v7, [Landroidx/palette/graphics/Palette$Filter;

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, [Landroidx/palette/graphics/Palette$Filter;

    .line 138
    .line 139
    :goto_2
    invoke-direct {v13, v14, v5, v6}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$Filter;)V

    .line 140
    .line 141
    .line 142
    if-eq v4, v3, :cond_4

    .line 143
    .line 144
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    .line 146
    .line 147
    :cond_4
    iget-object v3, v13, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 151
    .line 152
    if-eqz v3, :cond_15

    .line 153
    .line 154
    :goto_3
    new-instance v4, Landroidx/palette/graphics/Palette;

    .line 155
    .line 156
    iget-object v0, v0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    .line 157
    .line 158
    invoke-direct {v4, v3, v0}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v4, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    move v5, v2

    .line 168
    :goto_4
    iget-object v6, v4, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 169
    .line 170
    if-ge v5, v3, :cond_14

    .line 171
    .line 172
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Landroidx/palette/graphics/Target;

    .line 177
    .line 178
    iget-object v8, v7, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 179
    .line 180
    array-length v9, v8

    .line 181
    const/4 v10, 0x0

    .line 182
    move v11, v2

    .line 183
    move v12, v10

    .line 184
    :goto_5
    if-ge v11, v9, :cond_7

    .line 185
    .line 186
    aget v13, v8, v11

    .line 187
    .line 188
    cmpl-float v14, v13, v10

    .line 189
    .line 190
    if-lez v14, :cond_6

    .line 191
    .line 192
    add-float/2addr v12, v13

    .line 193
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_7
    cmpl-float v9, v12, v10

    .line 197
    .line 198
    if-eqz v9, :cond_9

    .line 199
    .line 200
    array-length v9, v8

    .line 201
    move v11, v2

    .line 202
    :goto_6
    if-ge v11, v9, :cond_9

    .line 203
    .line 204
    aget v13, v8, v11

    .line 205
    .line 206
    cmpl-float v14, v13, v10

    .line 207
    .line 208
    if-lez v14, :cond_8

    .line 209
    .line 210
    div-float/2addr v13, v12

    .line 211
    aput v13, v8, v11

    .line 212
    .line 213
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_9
    iget-object v8, v4, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    move v11, v2

    .line 223
    move v13, v10

    .line 224
    const/4 v12, 0x0

    .line 225
    :goto_7
    const/4 v14, 0x1

    .line 226
    if-ge v11, v9, :cond_12

    .line 227
    .line 228
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    check-cast v15, Landroidx/palette/graphics/Palette$Swatch;

    .line 233
    .line 234
    invoke-virtual {v15}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 235
    .line 236
    .line 237
    move-result-object v16

    .line 238
    aget v17, v16, v14

    .line 239
    .line 240
    iget-object v1, v7, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 241
    .line 242
    aget v18, v1, v2

    .line 243
    .line 244
    cmpl-float v18, v17, v18

    .line 245
    .line 246
    iget-object v14, v7, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 247
    .line 248
    const/16 v19, 0x2

    .line 249
    .line 250
    if-ltz v18, :cond_a

    .line 251
    .line 252
    aget v18, v1, v19

    .line 253
    .line 254
    cmpg-float v17, v17, v18

    .line 255
    .line 256
    if-gtz v17, :cond_a

    .line 257
    .line 258
    aget v16, v16, v19

    .line 259
    .line 260
    aget v17, v14, v2

    .line 261
    .line 262
    cmpl-float v17, v16, v17

    .line 263
    .line 264
    if-ltz v17, :cond_a

    .line 265
    .line 266
    aget v17, v14, v19

    .line 267
    .line 268
    cmpg-float v16, v16, v17

    .line 269
    .line 270
    if-gtz v16, :cond_a

    .line 271
    .line 272
    iget v10, v15, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 273
    .line 274
    invoke-virtual {v6, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    if-nez v10, :cond_a

    .line 279
    .line 280
    const/4 v10, 0x1

    .line 281
    goto :goto_8

    .line 282
    :cond_a
    move v10, v2

    .line 283
    :goto_8
    if-eqz v10, :cond_10

    .line 284
    .line 285
    invoke-virtual {v15}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    iget-object v2, v4, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    .line 290
    .line 291
    if-eqz v2, :cond_b

    .line 292
    .line 293
    iget v2, v2, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 294
    .line 295
    move-object/from16 v18, v0

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_b
    move-object/from16 v18, v0

    .line 299
    .line 300
    const/4 v2, 0x1

    .line 301
    :goto_9
    iget-object v0, v7, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 302
    .line 303
    const/16 v17, 0x0

    .line 304
    .line 305
    aget v20, v0, v17

    .line 306
    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    cmpl-float v21, v20, v16

    .line 310
    .line 311
    const/high16 v22, 0x3f800000    # 1.0f

    .line 312
    .line 313
    if-lez v21, :cond_c

    .line 314
    .line 315
    const/16 v21, 0x1

    .line 316
    .line 317
    aget v23, v10, v21

    .line 318
    .line 319
    aget v1, v1, v21

    .line 320
    .line 321
    sub-float v23, v23, v1

    .line 322
    .line 323
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    sub-float v1, v22, v1

    .line 328
    .line 329
    mul-float v1, v1, v20

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_c
    const/16 v21, 0x1

    .line 333
    .line 334
    const/4 v1, 0x0

    .line 335
    :goto_a
    aget v20, v0, v21

    .line 336
    .line 337
    const/16 v16, 0x0

    .line 338
    .line 339
    cmpl-float v23, v20, v16

    .line 340
    .line 341
    if-lez v23, :cond_d

    .line 342
    .line 343
    aget v10, v10, v19

    .line 344
    .line 345
    aget v14, v14, v21

    .line 346
    .line 347
    sub-float/2addr v10, v14

    .line 348
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    sub-float v22, v22, v10

    .line 353
    .line 354
    mul-float v10, v22, v20

    .line 355
    .line 356
    goto :goto_b

    .line 357
    :cond_d
    move/from16 v10, v16

    .line 358
    .line 359
    :goto_b
    aget v0, v0, v19

    .line 360
    .line 361
    cmpl-float v14, v0, v16

    .line 362
    .line 363
    if-lez v14, :cond_e

    .line 364
    .line 365
    iget v14, v15, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 366
    .line 367
    int-to-float v14, v14

    .line 368
    int-to-float v2, v2

    .line 369
    div-float/2addr v14, v2

    .line 370
    mul-float/2addr v0, v14

    .line 371
    goto :goto_c

    .line 372
    :cond_e
    move/from16 v0, v16

    .line 373
    .line 374
    :goto_c
    add-float/2addr v1, v10

    .line 375
    add-float/2addr v1, v0

    .line 376
    if-eqz v12, :cond_f

    .line 377
    .line 378
    cmpl-float v0, v1, v13

    .line 379
    .line 380
    if-lez v0, :cond_11

    .line 381
    .line 382
    :cond_f
    move v13, v1

    .line 383
    move-object v12, v15

    .line 384
    goto :goto_d

    .line 385
    :cond_10
    move-object/from16 v18, v0

    .line 386
    .line 387
    move/from16 v17, v2

    .line 388
    .line 389
    const/16 v16, 0x0

    .line 390
    .line 391
    :cond_11
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 392
    .line 393
    move/from16 v10, v16

    .line 394
    .line 395
    move/from16 v2, v17

    .line 396
    .line 397
    move-object/from16 v0, v18

    .line 398
    .line 399
    goto/16 :goto_7

    .line 400
    .line 401
    :cond_12
    move-object/from16 v18, v0

    .line 402
    .line 403
    move/from16 v17, v2

    .line 404
    .line 405
    if-eqz v12, :cond_13

    .line 406
    .line 407
    iget-boolean v0, v7, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    .line 408
    .line 409
    if-eqz v0, :cond_13

    .line 410
    .line 411
    iget v0, v12, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 412
    .line 413
    const/4 v1, 0x1

    .line 414
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 415
    .line 416
    .line 417
    :cond_13
    iget-object v0, v4, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/ArrayMap;

    .line 418
    .line 419
    invoke-virtual {v0, v7, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    add-int/lit8 v5, v5, 0x1

    .line 423
    .line 424
    move/from16 v2, v17

    .line 425
    .line 426
    move-object/from16 v0, v18

    .line 427
    .line 428
    goto/16 :goto_4

    .line 429
    .line 430
    :cond_14
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 431
    .line 432
    .line 433
    return-object v4

    .line 434
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    .line 435
    .line 436
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 437
    .line 438
    .line 439
    throw v0
.end method
