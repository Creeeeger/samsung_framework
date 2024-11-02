.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sTempTypedValue:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p2, v0, p1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string/jumbo v4, "selector"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_23

    .line 19
    .line 20
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    add-int/2addr v3, v4

    .line 26
    const/16 v5, 0x14

    .line 27
    .line 28
    new-array v6, v5, [[I

    .line 29
    .line 30
    new-array v5, v5, [I

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    move v8, v7

    .line 34
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    if-eq v9, v4, :cond_22

    .line 39
    .line 40
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    const/4 v11, 0x3

    .line 45
    if-ge v10, v3, :cond_0

    .line 46
    .line 47
    if-eq v9, v11, :cond_22

    .line 48
    .line 49
    :cond_0
    const/4 v12, 0x2

    .line 50
    if-ne v9, v12, :cond_21

    .line 51
    .line 52
    if-gt v10, v3, :cond_21

    .line 53
    .line 54
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const-string v10, "item"

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-nez v9, :cond_1

    .line 65
    .line 66
    goto/16 :goto_17

    .line 67
    .line 68
    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    .line 69
    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0, v2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v1, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    :goto_1
    const/4 v10, -0x1

    .line 82
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    const v14, -0xff01

    .line 87
    .line 88
    .line 89
    if-eq v13, v10, :cond_5

    .line 90
    .line 91
    sget-object v10, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    check-cast v15, Landroid/util/TypedValue;

    .line 98
    .line 99
    if-nez v15, :cond_3

    .line 100
    .line 101
    new-instance v15, Landroid/util/TypedValue;

    .line 102
    .line 103
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 110
    .line 111
    .line 112
    iget v10, v15, Landroid/util/TypedValue;->type:I

    .line 113
    .line 114
    const/16 v15, 0x1c

    .line 115
    .line 116
    if-lt v10, v15, :cond_4

    .line 117
    .line 118
    const/16 v15, 0x1f

    .line 119
    .line 120
    if-gt v10, v15, :cond_4

    .line 121
    .line 122
    move v10, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move v10, v7

    .line 125
    :goto_2
    if-nez v10, :cond_5

    .line 126
    .line 127
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-static {v0, v10, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 136
    .line 137
    .line 138
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_3

    .line 140
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    :goto_3
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    const/high16 v14, 0x3f800000    # 1.0f

    .line 154
    .line 155
    if-eqz v13, :cond_6

    .line 156
    .line 157
    invoke-virtual {v9, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_7

    .line 167
    .line 168
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    move v11, v14

    .line 174
    :goto_4
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    const/4 v15, 0x4

    .line 179
    const/high16 v4, -0x40800000    # -1.0f

    .line 180
    .line 181
    if-eqz v13, :cond_8

    .line 182
    .line 183
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    goto :goto_5

    .line 188
    :cond_8
    invoke-virtual {v9, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    .line 194
    .line 195
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    new-array v13, v9, [I

    .line 200
    .line 201
    move v12, v7

    .line 202
    move v15, v12

    .line 203
    :goto_6
    if-ge v15, v9, :cond_b

    .line 204
    .line 205
    invoke-interface {v2, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    const v7, 0x10101a5

    .line 210
    .line 211
    .line 212
    if-eq v14, v7, :cond_a

    .line 213
    .line 214
    const v7, 0x101031f

    .line 215
    .line 216
    .line 217
    if-eq v14, v7, :cond_a

    .line 218
    .line 219
    const v7, 0x7f040038

    .line 220
    .line 221
    .line 222
    if-eq v14, v7, :cond_a

    .line 223
    .line 224
    const v7, 0x7f040328

    .line 225
    .line 226
    .line 227
    if-eq v14, v7, :cond_a

    .line 228
    .line 229
    add-int/lit8 v7, v12, 0x1

    .line 230
    .line 231
    const/4 v0, 0x0

    .line 232
    invoke-interface {v2, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 233
    .line 234
    .line 235
    move-result v19

    .line 236
    if-eqz v19, :cond_9

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_9
    neg-int v14, v14

    .line 240
    :goto_7
    aput v14, v13, v12

    .line 241
    .line 242
    move v12, v7

    .line 243
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 244
    .line 245
    move-object/from16 v0, p0

    .line 246
    .line 247
    const/4 v7, 0x0

    .line 248
    const/high16 v14, 0x3f800000    # 1.0f

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_b
    invoke-static {v13, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const/4 v7, 0x0

    .line 256
    cmpl-float v9, v4, v7

    .line 257
    .line 258
    const/high16 v12, 0x42c80000    # 100.0f

    .line 259
    .line 260
    if-ltz v9, :cond_c

    .line 261
    .line 262
    cmpg-float v9, v4, v12

    .line 263
    .line 264
    if-gtz v9, :cond_c

    .line 265
    .line 266
    const/4 v9, 0x1

    .line 267
    goto :goto_8

    .line 268
    :cond_c
    const/4 v9, 0x0

    .line 269
    :goto_8
    const/high16 v13, 0x3f800000    # 1.0f

    .line 270
    .line 271
    cmpl-float v14, v11, v13

    .line 272
    .line 273
    if-nez v14, :cond_d

    .line 274
    .line 275
    if-nez v9, :cond_d

    .line 276
    .line 277
    move-object v7, v0

    .line 278
    move/from16 v28, v3

    .line 279
    .line 280
    const/16 v16, 0x1

    .line 281
    .line 282
    goto/16 :goto_14

    .line 283
    .line 284
    :cond_d
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    int-to-float v13, v13

    .line 289
    mul-float/2addr v13, v11

    .line 290
    const/high16 v11, 0x3f000000    # 0.5f

    .line 291
    .line 292
    add-float/2addr v13, v11

    .line 293
    float-to-int v11, v13

    .line 294
    const/16 v13, 0xff

    .line 295
    .line 296
    const/4 v14, 0x0

    .line 297
    invoke-static {v11, v14, v13}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-eqz v9, :cond_1c

    .line 302
    .line 303
    invoke-static {v10}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    sget-object v10, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 308
    .line 309
    iget v13, v9, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 310
    .line 311
    float-to-double v14, v13

    .line 312
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 313
    .line 314
    cmpg-double v14, v14, v19

    .line 315
    .line 316
    if-ltz v14, :cond_1b

    .line 317
    .line 318
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 319
    .line 320
    .line 321
    move-result v14

    .line 322
    int-to-double v14, v14

    .line 323
    const-wide/16 v19, 0x0

    .line 324
    .line 325
    cmpg-double v14, v14, v19

    .line 326
    .line 327
    if-lez v14, :cond_1b

    .line 328
    .line 329
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 330
    .line 331
    .line 332
    move-result v14

    .line 333
    int-to-double v14, v14

    .line 334
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 335
    .line 336
    cmpl-double v14, v14, v19

    .line 337
    .line 338
    if-ltz v14, :cond_e

    .line 339
    .line 340
    goto/16 :goto_12

    .line 341
    .line 342
    :cond_e
    iget v9, v9, Landroidx/core/content/res/CamColor;->mHue:F

    .line 343
    .line 344
    cmpg-float v14, v9, v7

    .line 345
    .line 346
    if-gez v14, :cond_f

    .line 347
    .line 348
    move v9, v7

    .line 349
    goto :goto_9

    .line 350
    :cond_f
    const/high16 v14, 0x43b40000    # 360.0f

    .line 351
    .line 352
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    :goto_9
    move/from16 v20, v7

    .line 357
    .line 358
    move v15, v13

    .line 359
    const/4 v14, 0x0

    .line 360
    const/16 v19, 0x1

    .line 361
    .line 362
    :goto_a
    sub-float v21, v20, v13

    .line 363
    .line 364
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    .line 365
    .line 366
    .line 367
    move-result v21

    .line 368
    const v22, 0x3ecccccd    # 0.4f

    .line 369
    .line 370
    .line 371
    cmpl-float v21, v21, v22

    .line 372
    .line 373
    if-ltz v21, :cond_19

    .line 374
    .line 375
    const/high16 v21, 0x447a0000    # 1000.0f

    .line 376
    .line 377
    move/from16 v23, v7

    .line 378
    .line 379
    move/from16 v24, v12

    .line 380
    .line 381
    move/from16 v22, v21

    .line 382
    .line 383
    const/16 v25, 0x0

    .line 384
    .line 385
    :goto_b
    sub-float v26, v23, v24

    .line 386
    .line 387
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    .line 388
    .line 389
    .line 390
    move-result v26

    .line 391
    const v27, 0x3c23d70a    # 0.01f

    .line 392
    .line 393
    .line 394
    cmpl-float v26, v26, v27

    .line 395
    .line 396
    const/high16 v27, 0x40000000    # 2.0f

    .line 397
    .line 398
    if-lez v26, :cond_15

    .line 399
    .line 400
    sub-float v26, v24, v23

    .line 401
    .line 402
    div-float v26, v26, v27

    .line 403
    .line 404
    add-float v7, v26, v23

    .line 405
    .line 406
    invoke-static {v7, v15, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    sget-object v1, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 411
    .line 412
    invoke-virtual {v12, v1}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    invoke-static {v12}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 421
    .line 422
    .line 423
    move-result v12

    .line 424
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 425
    .line 426
    .line 427
    move-result v28

    .line 428
    invoke-static/range {v28 .. v28}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 429
    .line 430
    .line 431
    move-result v28

    .line 432
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 433
    .line 434
    .line 435
    move-result v29

    .line 436
    invoke-static/range {v29 .. v29}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 437
    .line 438
    .line 439
    move-result v29

    .line 440
    sget-object v30, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 441
    .line 442
    const/16 v16, 0x1

    .line 443
    .line 444
    aget-object v30, v30, v16

    .line 445
    .line 446
    const/16 v18, 0x0

    .line 447
    .line 448
    aget v31, v30, v18

    .line 449
    .line 450
    mul-float v12, v12, v31

    .line 451
    .line 452
    aget v31, v30, v16

    .line 453
    .line 454
    mul-float v28, v28, v31

    .line 455
    .line 456
    add-float v28, v28, v12

    .line 457
    .line 458
    const/4 v12, 0x2

    .line 459
    aget v17, v30, v12

    .line 460
    .line 461
    mul-float v29, v29, v17

    .line 462
    .line 463
    add-float v29, v29, v28

    .line 464
    .line 465
    const/high16 v17, 0x42c80000    # 100.0f

    .line 466
    .line 467
    div-float v12, v29, v17

    .line 468
    .line 469
    const v28, 0x3c111aa7

    .line 470
    .line 471
    .line 472
    cmpg-float v28, v12, v28

    .line 473
    .line 474
    if-gtz v28, :cond_10

    .line 475
    .line 476
    const v28, 0x4461d2f7

    .line 477
    .line 478
    .line 479
    mul-float v12, v12, v28

    .line 480
    .line 481
    move/from16 v28, v3

    .line 482
    .line 483
    goto :goto_c

    .line 484
    :cond_10
    move/from16 v28, v3

    .line 485
    .line 486
    float-to-double v2, v12

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 488
    .line 489
    .line 490
    move-result-wide v2

    .line 491
    double-to-float v2, v2

    .line 492
    const/high16 v3, 0x42e80000    # 116.0f

    .line 493
    .line 494
    mul-float/2addr v2, v3

    .line 495
    const/high16 v3, 0x41800000    # 16.0f

    .line 496
    .line 497
    sub-float v12, v2, v3

    .line 498
    .line 499
    :goto_c
    sub-float v2, v4, v12

    .line 500
    .line 501
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    const v3, 0x3e4ccccd    # 0.2f

    .line 506
    .line 507
    .line 508
    cmpg-float v3, v2, v3

    .line 509
    .line 510
    if-gez v3, :cond_11

    .line 511
    .line 512
    invoke-static {v1}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iget v3, v1, Landroidx/core/content/res/CamColor;->mJ:F

    .line 517
    .line 518
    move/from16 v29, v2

    .line 519
    .line 520
    iget v2, v1, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 521
    .line 522
    invoke-static {v3, v2, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    iget v3, v2, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 527
    .line 528
    move/from16 v30, v7

    .line 529
    .line 530
    iget v7, v1, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 531
    .line 532
    sub-float/2addr v7, v3

    .line 533
    iget v3, v1, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 534
    .line 535
    move/from16 v31, v9

    .line 536
    .line 537
    iget v9, v2, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 538
    .line 539
    sub-float/2addr v3, v9

    .line 540
    iget v9, v1, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 541
    .line 542
    iget v2, v2, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 543
    .line 544
    sub-float/2addr v9, v2

    .line 545
    mul-float/2addr v7, v7

    .line 546
    mul-float/2addr v3, v3

    .line 547
    add-float/2addr v3, v7

    .line 548
    mul-float/2addr v9, v9

    .line 549
    add-float/2addr v9, v3

    .line 550
    float-to-double v2, v9

    .line 551
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 552
    .line 553
    .line 554
    move-result-wide v2

    .line 555
    move-object v7, v0

    .line 556
    move-object v9, v1

    .line 557
    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 563
    .line 564
    .line 565
    move-result-wide v0

    .line 566
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    mul-double/2addr v0, v2

    .line 572
    double-to-float v0, v0

    .line 573
    const/high16 v1, 0x3f800000    # 1.0f

    .line 574
    .line 575
    cmpg-float v2, v0, v1

    .line 576
    .line 577
    if-gtz v2, :cond_12

    .line 578
    .line 579
    move/from16 v22, v0

    .line 580
    .line 581
    move-object/from16 v25, v9

    .line 582
    .line 583
    move/from16 v21, v29

    .line 584
    .line 585
    goto :goto_d

    .line 586
    :cond_11
    move/from16 v30, v7

    .line 587
    .line 588
    move/from16 v31, v9

    .line 589
    .line 590
    const/high16 v1, 0x3f800000    # 1.0f

    .line 591
    .line 592
    move-object v7, v0

    .line 593
    :cond_12
    :goto_d
    const/4 v0, 0x0

    .line 594
    cmpl-float v2, v21, v0

    .line 595
    .line 596
    if-nez v2, :cond_13

    .line 597
    .line 598
    cmpl-float v2, v22, v0

    .line 599
    .line 600
    if-nez v2, :cond_13

    .line 601
    .line 602
    goto :goto_f

    .line 603
    :cond_13
    cmpg-float v2, v12, v4

    .line 604
    .line 605
    if-gez v2, :cond_14

    .line 606
    .line 607
    move/from16 v23, v30

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_14
    move/from16 v24, v30

    .line 611
    .line 612
    :goto_e
    move-object/from16 v1, p1

    .line 613
    .line 614
    move-object/from16 v2, p2

    .line 615
    .line 616
    move/from16 v12, v17

    .line 617
    .line 618
    move/from16 v3, v28

    .line 619
    .line 620
    move/from16 v9, v31

    .line 621
    .line 622
    move-object/from16 v32, v7

    .line 623
    .line 624
    move v7, v0

    .line 625
    move-object/from16 v0, v32

    .line 626
    .line 627
    goto/16 :goto_b

    .line 628
    .line 629
    :cond_15
    move/from16 v28, v3

    .line 630
    .line 631
    move/from16 v31, v9

    .line 632
    .line 633
    move/from16 v17, v12

    .line 634
    .line 635
    const/high16 v1, 0x3f800000    # 1.0f

    .line 636
    .line 637
    const/16 v16, 0x1

    .line 638
    .line 639
    move/from16 v32, v7

    .line 640
    .line 641
    move-object v7, v0

    .line 642
    move/from16 v0, v32

    .line 643
    .line 644
    :goto_f
    move-object/from16 v2, v25

    .line 645
    .line 646
    if-eqz v19, :cond_17

    .line 647
    .line 648
    if-eqz v2, :cond_16

    .line 649
    .line 650
    invoke-virtual {v2, v10}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 651
    .line 652
    .line 653
    move-result v10

    .line 654
    goto :goto_13

    .line 655
    :cond_16
    sub-float v2, v13, v20

    .line 656
    .line 657
    div-float v2, v2, v27

    .line 658
    .line 659
    add-float v2, v2, v20

    .line 660
    .line 661
    move v15, v2

    .line 662
    const/16 v19, 0x0

    .line 663
    .line 664
    goto :goto_11

    .line 665
    :cond_17
    if-nez v2, :cond_18

    .line 666
    .line 667
    move v13, v15

    .line 668
    move/from16 v15, v20

    .line 669
    .line 670
    goto :goto_10

    .line 671
    :cond_18
    move-object v14, v2

    .line 672
    :goto_10
    sub-float v2, v13, v15

    .line 673
    .line 674
    div-float v2, v2, v27

    .line 675
    .line 676
    add-float/2addr v2, v15

    .line 677
    move/from16 v20, v15

    .line 678
    .line 679
    move v15, v2

    .line 680
    :goto_11
    move-object/from16 v1, p1

    .line 681
    .line 682
    move-object/from16 v2, p2

    .line 683
    .line 684
    move/from16 v12, v17

    .line 685
    .line 686
    move/from16 v3, v28

    .line 687
    .line 688
    move/from16 v9, v31

    .line 689
    .line 690
    move-object/from16 v32, v7

    .line 691
    .line 692
    move v7, v0

    .line 693
    move-object/from16 v0, v32

    .line 694
    .line 695
    goto/16 :goto_a

    .line 696
    .line 697
    :cond_19
    move-object v7, v0

    .line 698
    move/from16 v28, v3

    .line 699
    .line 700
    const/16 v16, 0x1

    .line 701
    .line 702
    if-nez v14, :cond_1a

    .line 703
    .line 704
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    goto :goto_13

    .line 709
    :cond_1a
    invoke-virtual {v14, v10}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 710
    .line 711
    .line 712
    move-result v10

    .line 713
    goto :goto_13

    .line 714
    :cond_1b
    :goto_12
    move-object v7, v0

    .line 715
    move/from16 v28, v3

    .line 716
    .line 717
    const/16 v16, 0x1

    .line 718
    .line 719
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 720
    .line 721
    .line 722
    move-result v10

    .line 723
    goto :goto_13

    .line 724
    :cond_1c
    move-object v7, v0

    .line 725
    move/from16 v28, v3

    .line 726
    .line 727
    const/16 v16, 0x1

    .line 728
    .line 729
    :goto_13
    const v0, 0xffffff

    .line 730
    .line 731
    .line 732
    and-int/2addr v0, v10

    .line 733
    shl-int/lit8 v1, v11, 0x18

    .line 734
    .line 735
    or-int v10, v0, v1

    .line 736
    .line 737
    :goto_14
    add-int/lit8 v0, v8, 0x1

    .line 738
    .line 739
    array-length v1, v5

    .line 740
    const/16 v2, 0x8

    .line 741
    .line 742
    if-le v0, v1, :cond_1e

    .line 743
    .line 744
    const/4 v1, 0x4

    .line 745
    if-gt v8, v1, :cond_1d

    .line 746
    .line 747
    move v1, v2

    .line 748
    goto :goto_15

    .line 749
    :cond_1d
    mul-int/lit8 v1, v8, 0x2

    .line 750
    .line 751
    :goto_15
    new-array v1, v1, [I

    .line 752
    .line 753
    const/4 v3, 0x0

    .line 754
    invoke-static {v5, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    .line 756
    .line 757
    move-object v5, v1

    .line 758
    :cond_1e
    aput v10, v5, v8

    .line 759
    .line 760
    array-length v1, v6

    .line 761
    if-le v0, v1, :cond_20

    .line 762
    .line 763
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    const/4 v3, 0x4

    .line 772
    if-gt v8, v3, :cond_1f

    .line 773
    .line 774
    goto :goto_16

    .line 775
    :cond_1f
    mul-int/lit8 v2, v8, 0x2

    .line 776
    .line 777
    :goto_16
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    check-cast v1, [Ljava/lang/Object;

    .line 782
    .line 783
    const/4 v2, 0x0

    .line 784
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    .line 786
    .line 787
    move-object v6, v1

    .line 788
    :cond_20
    aput-object v7, v6, v8

    .line 789
    .line 790
    check-cast v6, [[I

    .line 791
    .line 792
    move-object/from16 v1, p1

    .line 793
    .line 794
    move-object/from16 v2, p2

    .line 795
    .line 796
    move v8, v0

    .line 797
    move/from16 v4, v16

    .line 798
    .line 799
    move/from16 v3, v28

    .line 800
    .line 801
    const/4 v7, 0x0

    .line 802
    move-object/from16 v0, p0

    .line 803
    .line 804
    goto/16 :goto_0

    .line 805
    .line 806
    :cond_21
    :goto_17
    move/from16 v28, v3

    .line 807
    .line 808
    move/from16 v16, v4

    .line 809
    .line 810
    move-object/from16 v0, p0

    .line 811
    .line 812
    move-object/from16 v1, p1

    .line 813
    .line 814
    move-object/from16 v2, p2

    .line 815
    .line 816
    move/from16 v4, v16

    .line 817
    .line 818
    move/from16 v3, v28

    .line 819
    .line 820
    const/4 v7, 0x0

    .line 821
    goto/16 :goto_0

    .line 822
    .line 823
    :cond_22
    new-array v0, v8, [I

    .line 824
    .line 825
    new-array v1, v8, [[I

    .line 826
    .line 827
    const/4 v2, 0x0

    .line 828
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    .line 830
    .line 831
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    .line 833
    .line 834
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 835
    .line 836
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 837
    .line 838
    .line 839
    return-object v2

    .line 840
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 841
    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string v2, ": invalid color state list tag "

    .line 855
    .line 856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    throw v0
.end method
