.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mColor:I

.field public final mColorStateList:Landroid/content/res/ColorStateList;

.field public final mShader:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 9
    .line 10
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eq v4, v5, :cond_0

    .line 20
    .line 21
    if-eq v4, v6, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v5, :cond_18

    .line 25
    .line 26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v7, "gradient"

    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v8, :cond_2

    .line 41
    .line 42
    const-string/jumbo v5, "selector"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-direct {v1, v9, v0, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ": unsupported complex color tag "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_17

    .line 104
    .line 105
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    .line 106
    .line 107
    invoke-static {v0, v1, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string/jumbo v7, "startX"

    .line 112
    .line 113
    .line 114
    const/16 v8, 0x8

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    const-string/jumbo v7, "startY"

    .line 122
    .line 123
    .line 124
    const/16 v8, 0x9

    .line 125
    .line 126
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    const-string v7, "endX"

    .line 131
    .line 132
    const/16 v8, 0xa

    .line 133
    .line 134
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    const-string v7, "endY"

    .line 139
    .line 140
    const/16 v8, 0xb

    .line 141
    .line 142
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    const-string v7, "centerX"

    .line 147
    .line 148
    const/4 v8, 0x3

    .line 149
    invoke-static {v4, v2, v7, v8, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    const-string v11, "centerY"

    .line 154
    .line 155
    const/4 v9, 0x4

    .line 156
    invoke-static {v4, v2, v11, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    const-string/jumbo v11, "type"

    .line 161
    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    invoke-static {v4, v2, v11, v5, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    const-string/jumbo v5, "startColor"

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v5}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_3

    .line 176
    .line 177
    move v5, v8

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v4, v8, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    :goto_1
    const-string v10, "centerColor"

    .line 184
    .line 185
    invoke-static {v2, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v19

    .line 189
    invoke-static {v2, v10}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    if-nez v10, :cond_4

    .line 194
    .line 195
    move v10, v8

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const/4 v10, 0x7

    .line 198
    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    :goto_2
    const-string v6, "endColor"

    .line 203
    .line 204
    invoke-static {v2, v6}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-nez v6, :cond_5

    .line 209
    .line 210
    move v6, v8

    .line 211
    goto :goto_3

    .line 212
    :cond_5
    const/4 v6, 0x1

    .line 213
    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 214
    .line 215
    .line 216
    move-result v21

    .line 217
    move/from16 v6, v21

    .line 218
    .line 219
    :goto_3
    move/from16 v21, v7

    .line 220
    .line 221
    const-string/jumbo v7, "tileMode"

    .line 222
    .line 223
    .line 224
    move/from16 v22, v9

    .line 225
    .line 226
    const/4 v9, 0x6

    .line 227
    invoke-static {v4, v2, v7, v9, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    const-string v9, "gradientRadius"

    .line 232
    .line 233
    const/4 v8, 0x5

    .line 234
    move/from16 v23, v15

    .line 235
    .line 236
    const/4 v15, 0x0

    .line 237
    invoke-static {v4, v2, v9, v8, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    .line 243
    .line 244
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    const/4 v9, 0x1

    .line 249
    add-int/2addr v4, v9

    .line 250
    new-instance v15, Ljava/util/ArrayList;

    .line 251
    .line 252
    const/16 v9, 0x14

    .line 253
    .line 254
    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .line 256
    .line 257
    move/from16 v24, v8

    .line 258
    .line 259
    new-instance v8, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    .line 263
    .line 264
    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    move/from16 v25, v14

    .line 269
    .line 270
    const/4 v14, 0x1

    .line 271
    if-eq v9, v14, :cond_b

    .line 272
    .line 273
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    move/from16 v26, v13

    .line 278
    .line 279
    if-ge v14, v4, :cond_6

    .line 280
    .line 281
    const/4 v13, 0x3

    .line 282
    if-eq v9, v13, :cond_c

    .line 283
    .line 284
    :cond_6
    const/4 v13, 0x2

    .line 285
    if-eq v9, v13, :cond_7

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_7
    if-gt v14, v4, :cond_a

    .line 289
    .line 290
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const-string v13, "item"

    .line 295
    .line 296
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    if-nez v9, :cond_8

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_8
    sget-object v9, Landroidx/core/R$styleable;->GradientColorItem:[I

    .line 304
    .line 305
    invoke-static {v0, v1, v3, v9}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    const/4 v13, 0x1

    .line 315
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 316
    .line 317
    .line 318
    move-result v20

    .line 319
    if-eqz v14, :cond_9

    .line 320
    .line 321
    if-eqz v20, :cond_9

    .line 322
    .line 323
    const/4 v14, 0x0

    .line 324
    invoke-virtual {v9, v14, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 325
    .line 326
    .line 327
    move-result v27

    .line 328
    const/4 v14, 0x0

    .line 329
    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 330
    .line 331
    .line 332
    move-result v28

    .line 333
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    .line 335
    .line 336
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 352
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 366
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_a
    :goto_5
    move/from16 v14, v25

    .line 379
    .line 380
    move/from16 v13, v26

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_b
    move/from16 v26, v13

    .line 384
    .line 385
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-lez v0, :cond_d

    .line 390
    .line 391
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 392
    .line 393
    invoke-direct {v0, v8, v15}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 394
    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_d
    const/4 v0, 0x0

    .line 398
    :goto_6
    if-eqz v0, :cond_e

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_e
    if-eqz v19, :cond_f

    .line 402
    .line 403
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 404
    .line 405
    invoke-direct {v0, v5, v10, v6}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_f
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 410
    .line 411
    invoke-direct {v0, v5, v6}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    .line 412
    .line 413
    .line 414
    :goto_7
    const/4 v1, 0x1

    .line 415
    if-eq v11, v1, :cond_13

    .line 416
    .line 417
    const/4 v2, 0x2

    .line 418
    if-eq v11, v2, :cond_12

    .line 419
    .line 420
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 421
    .line 422
    iget-object v4, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 423
    .line 424
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 425
    .line 426
    if-eq v7, v1, :cond_11

    .line 427
    .line 428
    if-eq v7, v2, :cond_10

    .line 429
    .line 430
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_10
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_11
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 437
    .line 438
    :goto_8
    move-object/from16 v18, v1

    .line 439
    .line 440
    move-object v11, v3

    .line 441
    move/from16 v13, v26

    .line 442
    .line 443
    move/from16 v14, v25

    .line 444
    .line 445
    move/from16 v15, v23

    .line 446
    .line 447
    move-object/from16 v16, v4

    .line 448
    .line 449
    move-object/from16 v17, v0

    .line 450
    .line 451
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 452
    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_12
    new-instance v3, Landroid/graphics/SweepGradient;

    .line 456
    .line 457
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 458
    .line 459
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 460
    .line 461
    move/from16 v2, v21

    .line 462
    .line 463
    move/from16 v4, v22

    .line 464
    .line 465
    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 466
    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_13
    move/from16 v2, v21

    .line 470
    .line 471
    move/from16 v4, v22

    .line 472
    .line 473
    const/4 v1, 0x0

    .line 474
    cmpg-float v1, v24, v1

    .line 475
    .line 476
    if-lez v1, :cond_16

    .line 477
    .line 478
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 479
    .line 480
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 481
    .line 482
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 483
    .line 484
    const/4 v5, 0x1

    .line 485
    if-eq v7, v5, :cond_15

    .line 486
    .line 487
    const/4 v5, 0x2

    .line 488
    if-eq v7, v5, :cond_14

    .line 489
    .line 490
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_14
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 494
    .line 495
    goto :goto_9

    .line 496
    :cond_15
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 497
    .line 498
    :goto_9
    move-object/from16 v22, v5

    .line 499
    .line 500
    move-object/from16 v16, v3

    .line 501
    .line 502
    move/from16 v17, v2

    .line 503
    .line 504
    move/from16 v18, v4

    .line 505
    .line 506
    move/from16 v19, v24

    .line 507
    .line 508
    move-object/from16 v20, v1

    .line 509
    .line 510
    move-object/from16 v21, v0

    .line 511
    .line 512
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 513
    .line 514
    .line 515
    :goto_a
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    .line 516
    .line 517
    const/4 v1, 0x0

    .line 518
    const/4 v2, 0x0

    .line 519
    invoke-direct {v0, v3, v1, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 520
    .line 521
    .line 522
    return-object v0

    .line 523
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 524
    .line 525
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 526
    .line 527
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v0

    .line 531
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 532
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v2, ": invalid gradient color tag "

    .line 546
    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v0

    .line 561
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 562
    .line 563
    const-string v1, "No start tag found"

    .line 564
    .line 565
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw v0
.end method

.method public static from(I)Landroidx/core/content/res/ComplexColorCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, p0}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
