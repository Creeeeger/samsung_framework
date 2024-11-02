.class public final Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ty"

    .line 2
    .line 3
    .line 4
    const-string v1, "d"

    .line 5
    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 15
    .line 16
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

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    move v3, v2

    .line 10
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    sget-object v4, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    if-eq v4, v5, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v4, v6

    .line 46
    :goto_1
    if-nez v4, :cond_3

    .line 47
    .line 48
    return-object v6

    .line 49
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/16 v7, 0xca7

    .line 54
    .line 55
    const/4 v8, -0x1

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x5

    .line 58
    const/4 v11, 0x4

    .line 59
    const/4 v12, 0x3

    .line 60
    if-eq v6, v7, :cond_1e

    .line 61
    .line 62
    const/16 v7, 0xcc6

    .line 63
    .line 64
    if-eq v6, v7, :cond_1c

    .line 65
    .line 66
    const/16 v7, 0xcdf

    .line 67
    .line 68
    if-eq v6, v7, :cond_1a

    .line 69
    .line 70
    const/16 v7, 0xda0

    .line 71
    .line 72
    if-eq v6, v7, :cond_18

    .line 73
    .line 74
    const/16 v7, 0xe3e

    .line 75
    .line 76
    if-eq v6, v7, :cond_16

    .line 77
    .line 78
    const/16 v7, 0xe55

    .line 79
    .line 80
    if-eq v6, v7, :cond_14

    .line 81
    .line 82
    const/16 v7, 0xe5f

    .line 83
    .line 84
    if-eq v6, v7, :cond_12

    .line 85
    .line 86
    const/16 v7, 0xe61

    .line 87
    .line 88
    if-eq v6, v7, :cond_10

    .line 89
    .line 90
    const/16 v7, 0xe79

    .line 91
    .line 92
    if-eq v6, v7, :cond_e

    .line 93
    .line 94
    const/16 v7, 0xe7e

    .line 95
    .line 96
    if-eq v6, v7, :cond_c

    .line 97
    .line 98
    const/16 v7, 0xceb

    .line 99
    .line 100
    if-eq v6, v7, :cond_a

    .line 101
    .line 102
    const/16 v7, 0xcec

    .line 103
    .line 104
    if-eq v6, v7, :cond_8

    .line 105
    .line 106
    const/16 v7, 0xe31

    .line 107
    .line 108
    if-eq v6, v7, :cond_6

    .line 109
    .line 110
    const/16 v7, 0xe32

    .line 111
    .line 112
    if-eq v6, v7, :cond_4

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :cond_4
    const-string/jumbo v6, "rd"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_5

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_5
    const/4 v6, 0x7

    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_6
    const-string/jumbo v6, "rc"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_7

    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_7
    const/4 v6, 0x6

    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_8
    const-string v6, "gs"

    .line 145
    .line 146
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_9

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :cond_9
    move v6, v11

    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :cond_a
    const-string v6, "gr"

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_b

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_b
    move v6, v12

    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :cond_c
    const-string/jumbo v6, "tr"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_d

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_d
    const/16 v6, 0xd

    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    :cond_e
    const-string/jumbo v6, "tm"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-nez v6, :cond_f

    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_f
    const/16 v6, 0xc

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_10
    const-string/jumbo v6, "st"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_11

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_11
    const/16 v6, 0xb

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_12
    const-string/jumbo v6, "sr"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_13

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_13
    const/16 v6, 0xa

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_14
    const-string/jumbo v6, "sh"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-nez v6, :cond_15

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_15
    const/16 v6, 0x9

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_16
    const-string/jumbo v6, "rp"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-nez v6, :cond_17

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_17
    const/16 v6, 0x8

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_18
    const-string/jumbo v6, "mm"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-nez v6, :cond_19

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_19
    move v6, v10

    .line 263
    goto :goto_3

    .line 264
    :cond_1a
    const-string v6, "gf"

    .line 265
    .line 266
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-nez v6, :cond_1b

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_1b
    move v6, v2

    .line 274
    goto :goto_3

    .line 275
    :cond_1c
    const-string v6, "fl"

    .line 276
    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_1d

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_1d
    move v6, v5

    .line 285
    goto :goto_3

    .line 286
    :cond_1e
    const-string v6, "el"

    .line 287
    .line 288
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-nez v6, :cond_1f

    .line 293
    .line 294
    :goto_2
    move v6, v8

    .line 295
    goto :goto_3

    .line 296
    :cond_1f
    move v6, v9

    .line 297
    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    .line 298
    .line 299
    const-string v13, "d"

    .line 300
    .line 301
    const-string v14, "g"

    .line 302
    .line 303
    const-string/jumbo v15, "o"

    .line 304
    .line 305
    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    const/16 v17, 0x64

    .line 309
    .line 310
    packed-switch v6, :pswitch_data_0

    .line 311
    .line 312
    .line 313
    const-string v1, "Unknown shape type "

    .line 314
    .line 315
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_26

    .line 323
    .line 324
    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    goto/16 :goto_27

    .line 329
    .line 330
    :pswitch_1
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 331
    .line 332
    const/4 v3, 0x0

    .line 333
    const/4 v4, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    const/4 v7, 0x0

    .line 336
    const/4 v8, 0x0

    .line 337
    move-object v14, v3

    .line 338
    move-object v15, v4

    .line 339
    move-object/from16 v16, v6

    .line 340
    .line 341
    move-object/from16 v17, v7

    .line 342
    .line 343
    move-object/from16 v18, v8

    .line 344
    .line 345
    move/from16 v19, v9

    .line 346
    .line 347
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v3, :cond_28

    .line 352
    .line 353
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 354
    .line 355
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-eqz v3, :cond_27

    .line 360
    .line 361
    if-eq v3, v5, :cond_26

    .line 362
    .line 363
    if-eq v3, v2, :cond_25

    .line 364
    .line 365
    if-eq v3, v12, :cond_24

    .line 366
    .line 367
    if-eq v3, v11, :cond_21

    .line 368
    .line 369
    if-eq v3, v10, :cond_20

    .line 370
    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 372
    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 376
    .line 377
    .line 378
    move-result v19

    .line 379
    goto :goto_4

    .line 380
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eq v3, v5, :cond_23

    .line 385
    .line 386
    if-ne v3, v2, :cond_22

    .line 387
    .line 388
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_22
    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 392
    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 394
    .line 395
    const-string v1, "Unknown trim path type "

    .line 396
    .line 397
    invoke-static {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :cond_23
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 406
    .line 407
    :goto_5
    move-object v15, v3

    .line 408
    goto :goto_4

    .line 409
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    goto :goto_4

    .line 414
    :cond_25
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 415
    .line 416
    .line 417
    move-result-object v18

    .line 418
    goto :goto_4

    .line 419
    :cond_26
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 420
    .line 421
    .line 422
    move-result-object v17

    .line 423
    goto :goto_4

    .line 424
    :cond_27
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 425
    .line 426
    .line 427
    move-result-object v16

    .line 428
    goto :goto_4

    .line 429
    :cond_28
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 430
    .line 431
    move-object v13, v1

    .line 432
    invoke-direct/range {v13 .. v19}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_27

    .line 436
    .line 437
    :pswitch_2
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 438
    .line 439
    new-instance v2, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    const/4 v3, 0x0

    .line 445
    const/4 v4, 0x0

    .line 446
    const/4 v6, 0x0

    .line 447
    const/4 v7, 0x0

    .line 448
    const/4 v8, 0x0

    .line 449
    const/4 v10, 0x0

    .line 450
    const/4 v11, 0x0

    .line 451
    move-object/from16 v19, v7

    .line 452
    .line 453
    move-object/from16 v20, v8

    .line 454
    .line 455
    move/from16 v28, v9

    .line 456
    .line 457
    move-object/from16 v22, v10

    .line 458
    .line 459
    move-object/from16 v24, v11

    .line 460
    .line 461
    move/from16 v27, v16

    .line 462
    .line 463
    :cond_29
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    if-eqz v7, :cond_31

    .line 468
    .line 469
    sget-object v7, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 470
    .line 471
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    packed-switch v7, :pswitch_data_1

    .line 476
    .line 477
    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 479
    .line 480
    .line 481
    goto :goto_6

    .line 482
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 483
    .line 484
    .line 485
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_30

    .line 490
    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 492
    .line 493
    .line 494
    const/4 v7, 0x0

    .line 495
    const/4 v8, 0x0

    .line 496
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v10

    .line 500
    if-eqz v10, :cond_2c

    .line 501
    .line 502
    sget-object v10, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 503
    .line 504
    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    if-eqz v10, :cond_2b

    .line 509
    .line 510
    if-eq v10, v5, :cond_2a

    .line 511
    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 516
    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_2a
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 520
    .line 521
    .line 522
    move-result-object v8

    .line 523
    goto :goto_8

    .line 524
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    goto :goto_8

    .line 529
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 536
    .line 537
    .line 538
    const/4 v10, -0x1

    .line 539
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 540
    .line 541
    .line 542
    move-result v11

    .line 543
    sparse-switch v11, :sswitch_data_0

    .line 544
    .line 545
    .line 546
    goto :goto_9

    .line 547
    :sswitch_0
    const-string/jumbo v11, "o"

    .line 548
    .line 549
    .line 550
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    if-nez v7, :cond_2d

    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_2d
    const/4 v10, 0x2

    .line 558
    goto :goto_9

    .line 559
    :sswitch_1
    const-string v11, "g"

    .line 560
    .line 561
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v7

    .line 565
    if-nez v7, :cond_2e

    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_2e
    const/4 v10, 0x1

    .line 569
    goto :goto_9

    .line 570
    :sswitch_2
    const-string v11, "d"

    .line 571
    .line 572
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    if-nez v7, :cond_2f

    .line 577
    .line 578
    goto :goto_9

    .line 579
    :cond_2f
    const/4 v10, 0x0

    .line 580
    :goto_9
    packed-switch v10, :pswitch_data_2

    .line 581
    .line 582
    .line 583
    goto :goto_7

    .line 584
    :pswitch_4
    move-object/from16 v20, v8

    .line 585
    .line 586
    goto :goto_7

    .line 587
    :pswitch_5
    iput-boolean v5, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 588
    .line 589
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_7

    .line 593
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 597
    .line 598
    .line 599
    move-result v7

    .line 600
    if-ne v7, v5, :cond_29

    .line 601
    .line 602
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    check-cast v7, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 607
    .line 608
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    goto/16 :goto_6

    .line 612
    .line 613
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 614
    .line 615
    .line 616
    move-result v28

    .line 617
    goto/16 :goto_6

    .line 618
    .line 619
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 620
    .line 621
    .line 622
    move-result-wide v7

    .line 623
    double-to-float v7, v7

    .line 624
    move/from16 v27, v7

    .line 625
    .line 626
    goto/16 :goto_6

    .line 627
    .line 628
    :pswitch_8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 633
    .line 634
    .line 635
    move-result v7

    .line 636
    sub-int/2addr v7, v5

    .line 637
    aget-object v6, v6, v7

    .line 638
    .line 639
    goto/16 :goto_6

    .line 640
    .line 641
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 646
    .line 647
    .line 648
    move-result v7

    .line 649
    sub-int/2addr v7, v5

    .line 650
    aget-object v4, v4, v7

    .line 651
    .line 652
    goto/16 :goto_6

    .line 653
    .line 654
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    goto/16 :goto_6

    .line 659
    .line 660
    :pswitch_b
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 661
    .line 662
    .line 663
    move-result-object v24

    .line 664
    goto/16 :goto_6

    .line 665
    .line 666
    :pswitch_c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 667
    .line 668
    .line 669
    move-result-object v22

    .line 670
    goto/16 :goto_6

    .line 671
    .line 672
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v19

    .line 676
    goto/16 :goto_6

    .line 677
    .line 678
    :cond_31
    if-nez v3, :cond_32

    .line 679
    .line 680
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 681
    .line 682
    new-instance v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 683
    .line 684
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    invoke-direct {v3, v5}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 696
    .line 697
    .line 698
    move-object/from16 v23, v1

    .line 699
    .line 700
    goto :goto_a

    .line 701
    :cond_32
    move-object/from16 v23, v3

    .line 702
    .line 703
    :goto_a
    if-nez v4, :cond_33

    .line 704
    .line 705
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 706
    .line 707
    move-object/from16 v25, v1

    .line 708
    .line 709
    goto :goto_b

    .line 710
    :cond_33
    move-object/from16 v25, v4

    .line 711
    .line 712
    :goto_b
    if-nez v6, :cond_34

    .line 713
    .line 714
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 715
    .line 716
    move-object/from16 v26, v1

    .line 717
    .line 718
    goto :goto_c

    .line 719
    :cond_34
    move-object/from16 v26, v6

    .line 720
    .line 721
    :goto_c
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 722
    .line 723
    move-object/from16 v18, v1

    .line 724
    .line 725
    move-object/from16 v21, v2

    .line 726
    .line 727
    invoke-direct/range {v18 .. v28}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_27

    .line 731
    .line 732
    :pswitch_e
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 733
    .line 734
    if-ne v3, v12, :cond_35

    .line 735
    .line 736
    move v2, v5

    .line 737
    goto :goto_d

    .line 738
    :cond_35
    move v2, v9

    .line 739
    :goto_d
    const/4 v3, 0x0

    .line 740
    const/4 v4, 0x0

    .line 741
    const/4 v6, 0x0

    .line 742
    const/4 v7, 0x0

    .line 743
    const/4 v8, 0x0

    .line 744
    const/4 v10, 0x0

    .line 745
    const/4 v11, 0x0

    .line 746
    const/4 v13, 0x0

    .line 747
    const/4 v14, 0x0

    .line 748
    move/from16 v26, v2

    .line 749
    .line 750
    move-object/from16 v16, v3

    .line 751
    .line 752
    move-object/from16 v17, v4

    .line 753
    .line 754
    move-object/from16 v18, v6

    .line 755
    .line 756
    move-object/from16 v19, v7

    .line 757
    .line 758
    move-object/from16 v20, v8

    .line 759
    .line 760
    move/from16 v25, v9

    .line 761
    .line 762
    move-object/from16 v21, v10

    .line 763
    .line 764
    move-object/from16 v22, v11

    .line 765
    .line 766
    move-object/from16 v23, v13

    .line 767
    .line 768
    move-object/from16 v24, v14

    .line 769
    .line 770
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    if-eqz v2, :cond_37

    .line 775
    .line 776
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 777
    .line 778
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    packed-switch v2, :pswitch_data_3

    .line 783
    .line 784
    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 786
    .line 787
    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 789
    .line 790
    .line 791
    goto :goto_e

    .line 792
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    if-ne v2, v12, :cond_36

    .line 797
    .line 798
    move/from16 v26, v5

    .line 799
    .line 800
    goto :goto_e

    .line 801
    :cond_36
    move/from16 v26, v9

    .line 802
    .line 803
    goto :goto_e

    .line 804
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 805
    .line 806
    .line 807
    move-result v25

    .line 808
    goto :goto_e

    .line 809
    :pswitch_11
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 810
    .line 811
    .line 812
    move-result-object v23

    .line 813
    goto :goto_e

    .line 814
    :pswitch_12
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 815
    .line 816
    .line 817
    move-result-object v21

    .line 818
    goto :goto_e

    .line 819
    :pswitch_13
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 820
    .line 821
    .line 822
    move-result-object v24

    .line 823
    goto :goto_e

    .line 824
    :pswitch_14
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 825
    .line 826
    .line 827
    move-result-object v22

    .line 828
    goto :goto_e

    .line 829
    :pswitch_15
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 830
    .line 831
    .line 832
    move-result-object v20

    .line 833
    goto :goto_e

    .line 834
    :pswitch_16
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 835
    .line 836
    .line 837
    move-result-object v19

    .line 838
    goto :goto_e

    .line 839
    :pswitch_17
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 840
    .line 841
    .line 842
    move-result-object v18

    .line 843
    goto :goto_e

    .line 844
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 849
    .line 850
    .line 851
    move-result-object v17

    .line 852
    goto :goto_e

    .line 853
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v16

    .line 857
    goto :goto_e

    .line 858
    :cond_37
    new-instance v1, Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 859
    .line 860
    move-object v15, v1

    .line 861
    invoke-direct/range {v15 .. v26}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_27

    .line 865
    .line 866
    :pswitch_1a
    sget-object v3, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 867
    .line 868
    const/4 v3, 0x0

    .line 869
    const/4 v4, 0x0

    .line 870
    move v6, v9

    .line 871
    move v7, v6

    .line 872
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 873
    .line 874
    .line 875
    move-result v8

    .line 876
    if-eqz v8, :cond_3c

    .line 877
    .line 878
    sget-object v8, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 879
    .line 880
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 881
    .line 882
    .line 883
    move-result v8

    .line 884
    if-eqz v8, :cond_3b

    .line 885
    .line 886
    if-eq v8, v5, :cond_3a

    .line 887
    .line 888
    if-eq v8, v2, :cond_39

    .line 889
    .line 890
    if-eq v8, v12, :cond_38

    .line 891
    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 893
    .line 894
    .line 895
    goto :goto_f

    .line 896
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 897
    .line 898
    .line 899
    move-result v7

    .line 900
    goto :goto_f

    .line 901
    :cond_39
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 902
    .line 903
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 904
    .line 905
    .line 906
    move-result v8

    .line 907
    sget-object v10, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 908
    .line 909
    invoke-static {v0, v1, v8, v10, v9}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 910
    .line 911
    .line 912
    move-result-object v8

    .line 913
    invoke-direct {v3, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    .line 914
    .line 915
    .line 916
    goto :goto_f

    .line 917
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 918
    .line 919
    .line 920
    move-result v6

    .line 921
    goto :goto_f

    .line 922
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    goto :goto_f

    .line 927
    :cond_3c
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapePath;

    .line 928
    .line 929
    invoke-direct {v1, v4, v6, v3, v7}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Z)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_27

    .line 933
    .line 934
    :pswitch_1b
    sget-object v3, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 935
    .line 936
    const/4 v3, 0x0

    .line 937
    const/4 v4, 0x0

    .line 938
    const/4 v6, 0x0

    .line 939
    const/4 v7, 0x0

    .line 940
    move-object v14, v3

    .line 941
    move-object v15, v4

    .line 942
    move-object/from16 v16, v6

    .line 943
    .line 944
    move-object/from16 v17, v7

    .line 945
    .line 946
    move/from16 v18, v9

    .line 947
    .line 948
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 949
    .line 950
    .line 951
    move-result v3

    .line 952
    if-eqz v3, :cond_42

    .line 953
    .line 954
    sget-object v3, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 955
    .line 956
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 957
    .line 958
    .line 959
    move-result v3

    .line 960
    if-eqz v3, :cond_41

    .line 961
    .line 962
    if-eq v3, v5, :cond_40

    .line 963
    .line 964
    if-eq v3, v2, :cond_3f

    .line 965
    .line 966
    if-eq v3, v12, :cond_3e

    .line 967
    .line 968
    if-eq v3, v11, :cond_3d

    .line 969
    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 971
    .line 972
    .line 973
    goto :goto_10

    .line 974
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 975
    .line 976
    .line 977
    move-result v18

    .line 978
    goto :goto_10

    .line 979
    :cond_3e
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 980
    .line 981
    .line 982
    move-result-object v17

    .line 983
    goto :goto_10

    .line 984
    :cond_3f
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 985
    .line 986
    .line 987
    move-result-object v16

    .line 988
    goto :goto_10

    .line 989
    :cond_40
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 990
    .line 991
    .line 992
    move-result-object v15

    .line 993
    goto :goto_10

    .line 994
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v14

    .line 998
    goto :goto_10

    .line 999
    :cond_42
    new-instance v1, Lcom/airbnb/lottie/model/content/Repeater;

    .line 1000
    .line 1001
    move-object v13, v1

    .line 1002
    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_27

    .line 1006
    .line 1007
    :pswitch_1c
    sget-object v3, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1008
    .line 1009
    const/4 v3, 0x0

    .line 1010
    const/4 v4, 0x0

    .line 1011
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v6

    .line 1015
    if-eqz v6, :cond_46

    .line 1016
    .line 1017
    sget-object v6, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1018
    .line 1019
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v6

    .line 1023
    if-eqz v6, :cond_45

    .line 1024
    .line 1025
    if-eq v6, v5, :cond_44

    .line 1026
    .line 1027
    if-eq v6, v2, :cond_43

    .line 1028
    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_11

    .line 1033
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1034
    .line 1035
    .line 1036
    move-result v9

    .line 1037
    goto :goto_11

    .line 1038
    :cond_44
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v4

    .line 1042
    goto :goto_11

    .line 1043
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v3

    .line 1047
    goto :goto_11

    .line 1048
    :cond_46
    if-eqz v9, :cond_47

    .line 1049
    .line 1050
    goto/16 :goto_26

    .line 1051
    .line 1052
    :cond_47
    new-instance v1, Lcom/airbnb/lottie/model/content/RoundedCorners;

    .line 1053
    .line 1054
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/RoundedCorners;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;)V

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_27

    .line 1058
    .line 1059
    :pswitch_1d
    sget-object v3, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1060
    .line 1061
    const/4 v3, 0x0

    .line 1062
    const/4 v4, 0x0

    .line 1063
    const/4 v6, 0x0

    .line 1064
    const/4 v7, 0x0

    .line 1065
    move-object v14, v3

    .line 1066
    move-object v15, v4

    .line 1067
    move-object/from16 v16, v6

    .line 1068
    .line 1069
    move-object/from16 v17, v7

    .line 1070
    .line 1071
    move/from16 v18, v9

    .line 1072
    .line 1073
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v3

    .line 1077
    if-eqz v3, :cond_4d

    .line 1078
    .line 1079
    sget-object v3, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1080
    .line 1081
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1082
    .line 1083
    .line 1084
    move-result v3

    .line 1085
    if-eqz v3, :cond_4c

    .line 1086
    .line 1087
    if-eq v3, v5, :cond_4b

    .line 1088
    .line 1089
    if-eq v3, v2, :cond_4a

    .line 1090
    .line 1091
    if-eq v3, v12, :cond_49

    .line 1092
    .line 1093
    if-eq v3, v11, :cond_48

    .line 1094
    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1096
    .line 1097
    .line 1098
    goto :goto_12

    .line 1099
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v18

    .line 1103
    goto :goto_12

    .line 1104
    :cond_49
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v17

    .line 1108
    goto :goto_12

    .line 1109
    :cond_4a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v16

    .line 1113
    goto :goto_12

    .line 1114
    :cond_4b
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v15

    .line 1118
    goto :goto_12

    .line 1119
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v14

    .line 1123
    goto :goto_12

    .line 1124
    :cond_4d
    new-instance v1, Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 1125
    .line 1126
    move-object v13, v1

    .line 1127
    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_27

    .line 1131
    .line 1132
    :pswitch_1e
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1133
    .line 1134
    const/4 v3, 0x0

    .line 1135
    const/4 v4, 0x0

    .line 1136
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1137
    .line 1138
    .line 1139
    move-result v6

    .line 1140
    if-eqz v6, :cond_56

    .line 1141
    .line 1142
    sget-object v6, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1143
    .line 1144
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v6

    .line 1148
    if-eqz v6, :cond_55

    .line 1149
    .line 1150
    if-eq v6, v5, :cond_4f

    .line 1151
    .line 1152
    if-eq v6, v2, :cond_4e

    .line 1153
    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_13

    .line 1161
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v9

    .line 1165
    goto :goto_13

    .line 1166
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    sget-object v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1171
    .line 1172
    if-eq v3, v5, :cond_54

    .line 1173
    .line 1174
    if-eq v3, v2, :cond_53

    .line 1175
    .line 1176
    if-eq v3, v12, :cond_52

    .line 1177
    .line 1178
    if-eq v3, v11, :cond_51

    .line 1179
    .line 1180
    if-eq v3, v10, :cond_50

    .line 1181
    .line 1182
    goto :goto_14

    .line 1183
    :cond_50
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1184
    .line 1185
    goto :goto_13

    .line 1186
    :cond_51
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1187
    .line 1188
    goto :goto_13

    .line 1189
    :cond_52
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1190
    .line 1191
    goto :goto_13

    .line 1192
    :cond_53
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1193
    .line 1194
    goto :goto_13

    .line 1195
    :cond_54
    :goto_14
    move-object v3, v6

    .line 1196
    goto :goto_13

    .line 1197
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v4

    .line 1201
    goto :goto_13

    .line 1202
    :cond_56
    new-instance v2, Lcom/airbnb/lottie/model/content/MergePaths;

    .line 1203
    .line 1204
    invoke-direct {v2, v4, v3, v9}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    .line 1205
    .line 1206
    .line 1207
    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 1208
    .line 1209
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    move-object v1, v2

    .line 1213
    goto/16 :goto_27

    .line 1214
    .line 1215
    :pswitch_1f
    sget-object v2, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1216
    .line 1217
    new-instance v2, Ljava/util/ArrayList;

    .line 1218
    .line 1219
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .line 1221
    .line 1222
    const/4 v3, 0x0

    .line 1223
    const/4 v4, 0x0

    .line 1224
    const/4 v6, 0x0

    .line 1225
    const/4 v10, 0x0

    .line 1226
    const/4 v11, 0x0

    .line 1227
    const/4 v12, 0x0

    .line 1228
    const/16 v18, 0x0

    .line 1229
    .line 1230
    const/16 v19, 0x0

    .line 1231
    .line 1232
    const/16 v20, 0x0

    .line 1233
    .line 1234
    const/16 v21, 0x0

    .line 1235
    .line 1236
    move/from16 v31, v9

    .line 1237
    .line 1238
    move-object/from16 v23, v11

    .line 1239
    .line 1240
    move-object/from16 v24, v12

    .line 1241
    .line 1242
    move/from16 v28, v16

    .line 1243
    .line 1244
    move-object/from16 v25, v18

    .line 1245
    .line 1246
    move-object/from16 v26, v19

    .line 1247
    .line 1248
    move-object/from16 v27, v20

    .line 1249
    .line 1250
    move-object/from16 v30, v21

    .line 1251
    .line 1252
    move-object/from16 v19, v4

    .line 1253
    .line 1254
    move-object/from16 v20, v6

    .line 1255
    .line 1256
    move-object/from16 v21, v10

    .line 1257
    .line 1258
    :cond_57
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v4

    .line 1262
    if-eqz v4, :cond_63

    .line 1263
    .line 1264
    sget-object v4, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1265
    .line 1266
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1267
    .line 1268
    .line 1269
    move-result v4

    .line 1270
    packed-switch v4, :pswitch_data_4

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_15

    .line 1280
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1281
    .line 1282
    .line 1283
    :cond_58
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1284
    .line 1285
    .line 1286
    move-result v4

    .line 1287
    if-eqz v4, :cond_5e

    .line 1288
    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1290
    .line 1291
    .line 1292
    const/4 v4, 0x0

    .line 1293
    const/4 v6, 0x0

    .line 1294
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1295
    .line 1296
    .line 1297
    move-result v10

    .line 1298
    if-eqz v10, :cond_5b

    .line 1299
    .line 1300
    sget-object v10, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1301
    .line 1302
    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1303
    .line 1304
    .line 1305
    move-result v10

    .line 1306
    if-eqz v10, :cond_5a

    .line 1307
    .line 1308
    if-eq v10, v5, :cond_59

    .line 1309
    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1314
    .line 1315
    .line 1316
    goto :goto_17

    .line 1317
    :cond_59
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v4

    .line 1321
    goto :goto_17

    .line 1322
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v6

    .line 1326
    goto :goto_17

    .line 1327
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1331
    .line 1332
    .line 1333
    move-result v10

    .line 1334
    if-eqz v10, :cond_5c

    .line 1335
    .line 1336
    move-object/from16 v30, v4

    .line 1337
    .line 1338
    goto :goto_16

    .line 1339
    :cond_5c
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v10

    .line 1343
    if-nez v10, :cond_5d

    .line 1344
    .line 1345
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v6

    .line 1349
    if-eqz v6, :cond_58

    .line 1350
    .line 1351
    :cond_5d
    iput-boolean v5, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 1352
    .line 1353
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    goto :goto_16

    .line 1357
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1361
    .line 1362
    .line 1363
    move-result v4

    .line 1364
    if-ne v4, v5, :cond_57

    .line 1365
    .line 1366
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v4

    .line 1370
    check-cast v4, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1371
    .line 1372
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    goto :goto_15

    .line 1376
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v31

    .line 1380
    goto :goto_15

    .line 1381
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 1382
    .line 1383
    .line 1384
    move-result-wide v10

    .line 1385
    double-to-float v4, v10

    .line 1386
    move/from16 v28, v4

    .line 1387
    .line 1388
    goto/16 :goto_15

    .line 1389
    .line 1390
    :pswitch_23
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v4

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1395
    .line 1396
    .line 1397
    move-result v6

    .line 1398
    sub-int/2addr v6, v5

    .line 1399
    aget-object v27, v4, v6

    .line 1400
    .line 1401
    goto/16 :goto_15

    .line 1402
    .line 1403
    :pswitch_24
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1408
    .line 1409
    .line 1410
    move-result v6

    .line 1411
    sub-int/2addr v6, v5

    .line 1412
    aget-object v26, v4, v6

    .line 1413
    .line 1414
    goto/16 :goto_15

    .line 1415
    .line 1416
    :pswitch_25
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v25

    .line 1420
    goto/16 :goto_15

    .line 1421
    .line 1422
    :pswitch_26
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v24

    .line 1426
    goto/16 :goto_15

    .line 1427
    .line 1428
    :pswitch_27
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v23

    .line 1432
    goto/16 :goto_15

    .line 1433
    .line 1434
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1435
    .line 1436
    .line 1437
    move-result v4

    .line 1438
    if-ne v4, v5, :cond_5f

    .line 1439
    .line 1440
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1441
    .line 1442
    goto :goto_18

    .line 1443
    :cond_5f
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1444
    .line 1445
    :goto_18
    move-object/from16 v20, v4

    .line 1446
    .line 1447
    goto/16 :goto_15

    .line 1448
    .line 1449
    :pswitch_29
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v3

    .line 1453
    goto/16 :goto_15

    .line 1454
    .line 1455
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1456
    .line 1457
    .line 1458
    move v4, v8

    .line 1459
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1460
    .line 1461
    .line 1462
    move-result v6

    .line 1463
    if-eqz v6, :cond_62

    .line 1464
    .line 1465
    sget-object v6, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1466
    .line 1467
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1468
    .line 1469
    .line 1470
    move-result v6

    .line 1471
    if-eqz v6, :cond_61

    .line 1472
    .line 1473
    if-eq v6, v5, :cond_60

    .line 1474
    .line 1475
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_19

    .line 1482
    :cond_60
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 1483
    .line 1484
    new-instance v10, Lcom/airbnb/lottie/parser/GradientColorParser;

    .line 1485
    .line 1486
    invoke-direct {v10, v4}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    .line 1487
    .line 1488
    .line 1489
    invoke-static {v0, v1, v7, v10, v9}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v10

    .line 1493
    invoke-direct {v6, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    .line 1494
    .line 1495
    .line 1496
    move-object/from16 v21, v6

    .line 1497
    .line 1498
    goto :goto_19

    .line 1499
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1500
    .line 1501
    .line 1502
    move-result v4

    .line 1503
    goto :goto_19

    .line 1504
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1505
    .line 1506
    .line 1507
    goto/16 :goto_15

    .line 1508
    .line 1509
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v19

    .line 1513
    goto/16 :goto_15

    .line 1514
    .line 1515
    :cond_63
    if-nez v3, :cond_64

    .line 1516
    .line 1517
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1518
    .line 1519
    new-instance v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 1520
    .line 1521
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v4

    .line 1525
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v3

    .line 1532
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 1533
    .line 1534
    .line 1535
    move-object/from16 v22, v1

    .line 1536
    .line 1537
    goto :goto_1a

    .line 1538
    :cond_64
    move-object/from16 v22, v3

    .line 1539
    .line 1540
    :goto_1a
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 1541
    .line 1542
    move-object/from16 v18, v1

    .line 1543
    .line 1544
    move-object/from16 v29, v2

    .line 1545
    .line 1546
    invoke-direct/range {v18 .. v31}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1547
    .line 1548
    .line 1549
    goto/16 :goto_27

    .line 1550
    .line 1551
    :pswitch_2c
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1552
    .line 1553
    new-instance v3, Ljava/util/ArrayList;

    .line 1554
    .line 1555
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .line 1557
    .line 1558
    const/4 v4, 0x0

    .line 1559
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1560
    .line 1561
    .line 1562
    move-result v6

    .line 1563
    if-eqz v6, :cond_6a

    .line 1564
    .line 1565
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1566
    .line 1567
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1568
    .line 1569
    .line 1570
    move-result v6

    .line 1571
    if-eqz v6, :cond_69

    .line 1572
    .line 1573
    if-eq v6, v5, :cond_68

    .line 1574
    .line 1575
    if-eq v6, v2, :cond_65

    .line 1576
    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1578
    .line 1579
    .line 1580
    goto :goto_1b

    .line 1581
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1582
    .line 1583
    .line 1584
    :cond_66
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1585
    .line 1586
    .line 1587
    move-result v6

    .line 1588
    if-eqz v6, :cond_67

    .line 1589
    .line 1590
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v6

    .line 1594
    if-eqz v6, :cond_66

    .line 1595
    .line 1596
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    .line 1598
    .line 1599
    goto :goto_1c

    .line 1600
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1601
    .line 1602
    .line 1603
    goto :goto_1b

    .line 1604
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1605
    .line 1606
    .line 1607
    move-result v9

    .line 1608
    goto :goto_1b

    .line 1609
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v4

    .line 1613
    goto :goto_1b

    .line 1614
    :cond_6a
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 1615
    .line 1616
    invoke-direct {v1, v4, v3, v9}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1617
    .line 1618
    .line 1619
    goto/16 :goto_27

    .line 1620
    .line 1621
    :pswitch_2d
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1622
    .line 1623
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1624
    .line 1625
    const/4 v3, 0x0

    .line 1626
    const/4 v4, 0x0

    .line 1627
    const/4 v6, 0x0

    .line 1628
    const/4 v10, 0x0

    .line 1629
    const/4 v11, 0x0

    .line 1630
    const/4 v12, 0x0

    .line 1631
    move-object/from16 v21, v2

    .line 1632
    .line 1633
    move-object/from16 v19, v4

    .line 1634
    .line 1635
    move-object/from16 v20, v6

    .line 1636
    .line 1637
    move/from16 v28, v9

    .line 1638
    .line 1639
    move-object/from16 v22, v10

    .line 1640
    .line 1641
    move-object/from16 v24, v11

    .line 1642
    .line 1643
    move-object/from16 v25, v12

    .line 1644
    .line 1645
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1646
    .line 1647
    .line 1648
    move-result v2

    .line 1649
    if-eqz v2, :cond_70

    .line 1650
    .line 1651
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1652
    .line 1653
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1654
    .line 1655
    .line 1656
    move-result v2

    .line 1657
    packed-switch v2, :pswitch_data_5

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1664
    .line 1665
    .line 1666
    goto :goto_1d

    .line 1667
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1668
    .line 1669
    .line 1670
    move-result v28

    .line 1671
    goto :goto_1d

    .line 1672
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1673
    .line 1674
    .line 1675
    move-result v2

    .line 1676
    if-ne v2, v5, :cond_6b

    .line 1677
    .line 1678
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1679
    .line 1680
    goto :goto_1e

    .line 1681
    :cond_6b
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1682
    .line 1683
    :goto_1e
    move-object/from16 v21, v2

    .line 1684
    .line 1685
    goto :goto_1d

    .line 1686
    :pswitch_30
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v25

    .line 1690
    goto :goto_1d

    .line 1691
    :pswitch_31
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v24

    .line 1695
    goto :goto_1d

    .line 1696
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1697
    .line 1698
    .line 1699
    move-result v2

    .line 1700
    if-ne v2, v5, :cond_6c

    .line 1701
    .line 1702
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1703
    .line 1704
    goto :goto_1f

    .line 1705
    :cond_6c
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1706
    .line 1707
    :goto_1f
    move-object/from16 v20, v2

    .line 1708
    .line 1709
    goto :goto_1d

    .line 1710
    :pswitch_33
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v3

    .line 1714
    goto :goto_1d

    .line 1715
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1716
    .line 1717
    .line 1718
    move v2, v8

    .line 1719
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1720
    .line 1721
    .line 1722
    move-result v4

    .line 1723
    if-eqz v4, :cond_6f

    .line 1724
    .line 1725
    sget-object v4, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1726
    .line 1727
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1728
    .line 1729
    .line 1730
    move-result v4

    .line 1731
    if-eqz v4, :cond_6e

    .line 1732
    .line 1733
    if-eq v4, v5, :cond_6d

    .line 1734
    .line 1735
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1739
    .line 1740
    .line 1741
    goto :goto_20

    .line 1742
    :cond_6d
    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 1743
    .line 1744
    new-instance v6, Lcom/airbnb/lottie/parser/GradientColorParser;

    .line 1745
    .line 1746
    invoke-direct {v6, v2}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    .line 1747
    .line 1748
    .line 1749
    invoke-static {v0, v1, v7, v6, v9}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v6

    .line 1753
    invoke-direct {v4, v6}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    .line 1754
    .line 1755
    .line 1756
    move-object/from16 v22, v4

    .line 1757
    .line 1758
    goto :goto_20

    .line 1759
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1760
    .line 1761
    .line 1762
    move-result v2

    .line 1763
    goto :goto_20

    .line 1764
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1765
    .line 1766
    .line 1767
    goto :goto_1d

    .line 1768
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v19

    .line 1772
    goto :goto_1d

    .line 1773
    :cond_70
    if-nez v3, :cond_71

    .line 1774
    .line 1775
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1776
    .line 1777
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 1778
    .line 1779
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v3

    .line 1783
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1784
    .line 1785
    .line 1786
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v2

    .line 1790
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 1791
    .line 1792
    .line 1793
    move-object/from16 v23, v1

    .line 1794
    .line 1795
    goto :goto_21

    .line 1796
    :cond_71
    move-object/from16 v23, v3

    .line 1797
    .line 1798
    :goto_21
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientFill;

    .line 1799
    .line 1800
    const/16 v26, 0x0

    .line 1801
    .line 1802
    const/16 v27, 0x0

    .line 1803
    .line 1804
    move-object/from16 v18, v1

    .line 1805
    .line 1806
    invoke-direct/range {v18 .. v28}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1807
    .line 1808
    .line 1809
    goto/16 :goto_27

    .line 1810
    .line 1811
    :pswitch_36
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1812
    .line 1813
    const/4 v3, 0x0

    .line 1814
    const/4 v4, 0x0

    .line 1815
    const/4 v6, 0x0

    .line 1816
    move-object/from16 v19, v4

    .line 1817
    .line 1818
    move v4, v5

    .line 1819
    move-object/from16 v22, v6

    .line 1820
    .line 1821
    move/from16 v20, v9

    .line 1822
    .line 1823
    move/from16 v24, v20

    .line 1824
    .line 1825
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1826
    .line 1827
    .line 1828
    move-result v6

    .line 1829
    if-eqz v6, :cond_78

    .line 1830
    .line 1831
    sget-object v6, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1832
    .line 1833
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1834
    .line 1835
    .line 1836
    move-result v6

    .line 1837
    if-eqz v6, :cond_77

    .line 1838
    .line 1839
    if-eq v6, v5, :cond_76

    .line 1840
    .line 1841
    if-eq v6, v2, :cond_75

    .line 1842
    .line 1843
    if-eq v6, v12, :cond_74

    .line 1844
    .line 1845
    if-eq v6, v11, :cond_73

    .line 1846
    .line 1847
    if-eq v6, v10, :cond_72

    .line 1848
    .line 1849
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1853
    .line 1854
    .line 1855
    goto :goto_22

    .line 1856
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1857
    .line 1858
    .line 1859
    move-result v24

    .line 1860
    goto :goto_22

    .line 1861
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1862
    .line 1863
    .line 1864
    move-result v4

    .line 1865
    goto :goto_22

    .line 1866
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1867
    .line 1868
    .line 1869
    move-result v20

    .line 1870
    goto :goto_22

    .line 1871
    :cond_75
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v3

    .line 1875
    goto :goto_22

    .line 1876
    :cond_76
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v22

    .line 1880
    goto :goto_22

    .line 1881
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v19

    .line 1885
    goto :goto_22

    .line 1886
    :cond_78
    if-nez v3, :cond_79

    .line 1887
    .line 1888
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1889
    .line 1890
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 1891
    .line 1892
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v2

    .line 1896
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1897
    .line 1898
    .line 1899
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v1

    .line 1903
    invoke-direct {v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    .line 1904
    .line 1905
    .line 1906
    :cond_79
    move-object/from16 v23, v3

    .line 1907
    .line 1908
    if-ne v4, v5, :cond_7a

    .line 1909
    .line 1910
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1911
    .line 1912
    goto :goto_23

    .line 1913
    :cond_7a
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1914
    .line 1915
    :goto_23
    move-object/from16 v21, v1

    .line 1916
    .line 1917
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 1918
    .line 1919
    move-object/from16 v18, v1

    .line 1920
    .line 1921
    invoke-direct/range {v18 .. v24}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_27

    .line 1925
    .line 1926
    :pswitch_37
    sget-object v4, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1927
    .line 1928
    if-ne v3, v12, :cond_7b

    .line 1929
    .line 1930
    move v3, v5

    .line 1931
    goto :goto_24

    .line 1932
    :cond_7b
    move v3, v9

    .line 1933
    :goto_24
    const/4 v4, 0x0

    .line 1934
    const/4 v6, 0x0

    .line 1935
    const/4 v7, 0x0

    .line 1936
    move/from16 v17, v3

    .line 1937
    .line 1938
    move-object v14, v4

    .line 1939
    move-object v15, v6

    .line 1940
    move-object/from16 v16, v7

    .line 1941
    .line 1942
    move/from16 v18, v9

    .line 1943
    .line 1944
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1945
    .line 1946
    .line 1947
    move-result v3

    .line 1948
    if-eqz v3, :cond_82

    .line 1949
    .line 1950
    sget-object v3, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1951
    .line 1952
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1953
    .line 1954
    .line 1955
    move-result v3

    .line 1956
    if-eqz v3, :cond_81

    .line 1957
    .line 1958
    if-eq v3, v5, :cond_80

    .line 1959
    .line 1960
    if-eq v3, v2, :cond_7f

    .line 1961
    .line 1962
    if-eq v3, v12, :cond_7e

    .line 1963
    .line 1964
    if-eq v3, v11, :cond_7c

    .line 1965
    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1970
    .line 1971
    .line 1972
    goto :goto_25

    .line 1973
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1974
    .line 1975
    .line 1976
    move-result v3

    .line 1977
    if-ne v3, v12, :cond_7d

    .line 1978
    .line 1979
    move/from16 v17, v5

    .line 1980
    .line 1981
    goto :goto_25

    .line 1982
    :cond_7d
    move/from16 v17, v9

    .line 1983
    .line 1984
    goto :goto_25

    .line 1985
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1986
    .line 1987
    .line 1988
    move-result v18

    .line 1989
    goto :goto_25

    .line 1990
    :cond_7f
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v16

    .line 1994
    goto :goto_25

    .line 1995
    :cond_80
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v15

    .line 1999
    goto :goto_25

    .line 2000
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v14

    .line 2004
    goto :goto_25

    .line 2005
    :cond_82
    new-instance v1, Lcom/airbnb/lottie/model/content/CircleShape;

    .line 2006
    .line 2007
    move-object v13, v1

    .line 2008
    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    .line 2009
    .line 2010
    .line 2011
    goto :goto_27

    .line 2012
    :goto_26
    const/4 v1, 0x0

    .line 2013
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 2014
    .line 2015
    .line 2016
    move-result v2

    .line 2017
    if-eqz v2, :cond_83

    .line 2018
    .line 2019
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 2020
    .line 2021
    .line 2022
    goto :goto_27

    .line 2023
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 2024
    .line 2025
    .line 2026
    return-object v1

    .line 2027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x67 -> :sswitch_1
        0x6f -> :sswitch_0
    .end sparse-switch

    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
