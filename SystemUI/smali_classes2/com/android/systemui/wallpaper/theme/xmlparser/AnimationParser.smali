.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAttribute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    .line 13
    .line 14
    if-eqz v1, :cond_2e

    .line 15
    .line 16
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 22
    .line 23
    iget-boolean v4, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    .line 24
    .line 25
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    :goto_0
    if-ge v2, v5, :cond_2d

    .line 30
    .line 31
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_2c

    .line 44
    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_2
    iget v8, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 54
    .line 55
    iput v8, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    .line 56
    .line 57
    iget v8, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 58
    .line 59
    iput v8, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    .line 60
    .line 61
    const-string v8, "fromDegrees"

    .line 62
    .line 63
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_3

    .line 68
    .line 69
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_3
    const-string/jumbo v8, "toDegrees"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_4

    .line 85
    .line 86
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_4
    const-string v8, "key"

    .line 95
    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_5

    .line 101
    .line 102
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_5
    const-string/jumbo v9, "xFrom"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_6

    .line 118
    .line 119
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_6
    const-string/jumbo v9, "xTo"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_7

    .line 139
    .line 140
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 149
    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_7
    const-string/jumbo v9, "xOffSet"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_8

    .line 160
    .line 161
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_8
    const-string/jumbo v9, "yOffSet"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    if-eqz v9, :cond_9

    .line 181
    .line 182
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 191
    .line 192
    goto/16 :goto_5

    .line 193
    .line 194
    :cond_9
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_a

    .line 199
    .line 200
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 205
    .line 206
    goto/16 :goto_5

    .line 207
    .line 208
    :cond_a
    const-string v8, "adjust"

    .line 209
    .line 210
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-eqz v8, :cond_b

    .line 215
    .line 216
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_b
    const-string/jumbo v8, "yFrom"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-eqz v8, :cond_c

    .line 232
    .line 233
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 242
    .line 243
    goto/16 :goto_5

    .line 244
    .line 245
    :cond_c
    const-string/jumbo v8, "yTo"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-eqz v8, :cond_d

    .line 253
    .line 254
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 263
    .line 264
    goto/16 :goto_5

    .line 265
    .line 266
    :cond_d
    const-string/jumbo v8, "r"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_e

    .line 274
    .line 275
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    mul-float/2addr v6, v1

    .line 280
    const/high16 v7, 0x3f000000    # 0.5f

    .line 281
    .line 282
    add-float/2addr v6, v7

    .line 283
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    .line 284
    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :cond_e
    const-string v8, "a"

    .line 288
    .line 289
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_f

    .line 294
    .line 295
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 304
    .line 305
    add-float/2addr v6, v7

    .line 306
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    .line 307
    .line 308
    goto/16 :goto_5

    .line 309
    .line 310
    :cond_f
    const-string v8, "b"

    .line 311
    .line 312
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-eqz v8, :cond_10

    .line 317
    .line 318
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 327
    .line 328
    add-float/2addr v6, v7

    .line 329
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :cond_10
    const-string/jumbo v8, "ra"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_11

    .line 341
    .line 342
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    .line 351
    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_11
    const-string/jumbo v8, "rb"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_12

    .line 362
    .line 363
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    .line 372
    .line 373
    goto/16 :goto_5

    .line 374
    .line 375
    :cond_12
    const-string v8, "fromAlpha"

    .line 376
    .line 377
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    if-eqz v8, :cond_13

    .line 382
    .line 383
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 388
    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :cond_13
    const-string/jumbo v8, "toAlpha"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-eqz v8, :cond_14

    .line 399
    .line 400
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 405
    .line 406
    goto/16 :goto_5

    .line 407
    .line 408
    :cond_14
    const-string v8, "fromXDelta"

    .line 409
    .line 410
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    if-eqz v8, :cond_16

    .line 415
    .line 416
    if-eqz v4, :cond_15

    .line 417
    .line 418
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    goto :goto_1

    .line 427
    :cond_15
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 432
    .line 433
    .line 434
    move-result v6

    .line 435
    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 436
    .line 437
    add-float/2addr v6, v7

    .line 438
    :goto_1
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 439
    .line 440
    goto/16 :goto_5

    .line 441
    .line 442
    :cond_16
    const-string/jumbo v8, "toXDelta"

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    if-eqz v8, :cond_18

    .line 450
    .line 451
    if-eqz v4, :cond_17

    .line 452
    .line 453
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    goto :goto_2

    .line 462
    :cond_17
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 471
    .line 472
    add-float/2addr v6, v7

    .line 473
    :goto_2
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 474
    .line 475
    goto/16 :goto_5

    .line 476
    .line 477
    :cond_18
    const-string v8, "fromYDelta"

    .line 478
    .line 479
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result v8

    .line 483
    if-eqz v8, :cond_1a

    .line 484
    .line 485
    if-eqz v4, :cond_19

    .line 486
    .line 487
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 488
    .line 489
    .line 490
    move-result v6

    .line 491
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 492
    .line 493
    .line 494
    move-result v6

    .line 495
    goto :goto_3

    .line 496
    :cond_19
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 505
    .line 506
    add-float/2addr v6, v7

    .line 507
    :goto_3
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 508
    .line 509
    goto/16 :goto_5

    .line 510
    .line 511
    :cond_1a
    const-string/jumbo v8, "toYDelta"

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-eqz v8, :cond_1c

    .line 519
    .line 520
    if-eqz v4, :cond_1b

    .line 521
    .line 522
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 527
    .line 528
    .line 529
    move-result v6

    .line 530
    goto :goto_4

    .line 531
    :cond_1b
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 536
    .line 537
    .line 538
    move-result v6

    .line 539
    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 540
    .line 541
    add-float/2addr v6, v7

    .line 542
    :goto_4
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 543
    .line 544
    goto/16 :goto_5

    .line 545
    .line 546
    :cond_1c
    const-string v8, "fromXScale"

    .line 547
    .line 548
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 549
    .line 550
    .line 551
    move-result v8

    .line 552
    if-eqz v8, :cond_1d

    .line 553
    .line 554
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :cond_1d
    const-string/jumbo v8, "toXScale"

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    move-result v8

    .line 569
    if-eqz v8, :cond_1e

    .line 570
    .line 571
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 576
    .line 577
    goto/16 :goto_5

    .line 578
    .line 579
    :cond_1e
    const-string v8, "fromYScale"

    .line 580
    .line 581
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    if-eqz v8, :cond_1f

    .line 586
    .line 587
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 592
    .line 593
    goto/16 :goto_5

    .line 594
    .line 595
    :cond_1f
    const-string/jumbo v8, "toYScale"

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    if-eqz v8, :cond_20

    .line 603
    .line 604
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 605
    .line 606
    .line 607
    move-result v6

    .line 608
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 609
    .line 610
    goto/16 :goto_5

    .line 611
    .line 612
    :cond_20
    const-string v8, "length"

    .line 613
    .line 614
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 615
    .line 616
    .line 617
    move-result v8

    .line 618
    if-eqz v8, :cond_21

    .line 619
    .line 620
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v6

    .line 624
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    .line 625
    .line 626
    goto/16 :goto_5

    .line 627
    .line 628
    :cond_21
    const-string v8, "image"

    .line 629
    .line 630
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 631
    .line 632
    .line 633
    move-result v8

    .line 634
    if-eqz v8, :cond_22

    .line 635
    .line 636
    const-string v6, "drawable"

    .line 637
    .line 638
    iget-object v8, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v3, v7, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .line 642
    .line 643
    move-result v6

    .line 644
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    .line 645
    .line 646
    goto/16 :goto_5

    .line 647
    .line 648
    :cond_22
    const-string v8, "duration"

    .line 649
    .line 650
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 651
    .line 652
    .line 653
    move-result v8

    .line 654
    if-eqz v8, :cond_23

    .line 655
    .line 656
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 657
    .line 658
    .line 659
    move-result-wide v6

    .line 660
    iput-wide v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    .line 661
    .line 662
    goto/16 :goto_5

    .line 663
    .line 664
    :cond_23
    const-string/jumbo v8, "repeatCount"

    .line 665
    .line 666
    .line 667
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    if-eqz v8, :cond_24

    .line 672
    .line 673
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    move-result v6

    .line 677
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    .line 678
    .line 679
    goto/16 :goto_5

    .line 680
    .line 681
    :cond_24
    const-string/jumbo v8, "repeatMode"

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-eqz v8, :cond_25

    .line 689
    .line 690
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    .line 695
    .line 696
    goto/16 :goto_5

    .line 697
    .line 698
    :cond_25
    const-string v8, "delay"

    .line 699
    .line 700
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 701
    .line 702
    .line 703
    move-result v8

    .line 704
    if-eqz v8, :cond_26

    .line 705
    .line 706
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 707
    .line 708
    .line 709
    move-result-wide v6

    .line 710
    iput-wide v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    .line 711
    .line 712
    goto :goto_5

    .line 713
    :cond_26
    const-string v8, "accelerateInterpolator"

    .line 714
    .line 715
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 716
    .line 717
    .line 718
    move-result v8

    .line 719
    const-string v9, "default"

    .line 720
    .line 721
    if-eqz v8, :cond_28

    .line 722
    .line 723
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    if-eqz v6, :cond_27

    .line 728
    .line 729
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    .line 730
    .line 731
    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 732
    .line 733
    .line 734
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 735
    .line 736
    goto :goto_5

    .line 737
    :cond_27
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    .line 738
    .line 739
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 740
    .line 741
    .line 742
    move-result v7

    .line 743
    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 744
    .line 745
    .line 746
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 747
    .line 748
    goto :goto_5

    .line 749
    :cond_28
    const-string v8, "decelerateInterpolator"

    .line 750
    .line 751
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 752
    .line 753
    .line 754
    move-result v8

    .line 755
    if-eqz v8, :cond_2a

    .line 756
    .line 757
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    if-eqz v6, :cond_29

    .line 762
    .line 763
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 764
    .line 765
    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 766
    .line 767
    .line 768
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 769
    .line 770
    goto :goto_5

    .line 771
    :cond_29
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 772
    .line 773
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 774
    .line 775
    .line 776
    move-result v7

    .line 777
    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 778
    .line 779
    .line 780
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 781
    .line 782
    goto :goto_5

    .line 783
    :cond_2a
    const-string v7, "accelerateDecelerateInterpolator"

    .line 784
    .line 785
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 786
    .line 787
    .line 788
    move-result v7

    .line 789
    if-eqz v7, :cond_2b

    .line 790
    .line 791
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 792
    .line 793
    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 794
    .line 795
    .line 796
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 797
    .line 798
    goto :goto_5

    .line 799
    :cond_2b
    const-string v7, "normalSpeed"

    .line 800
    .line 801
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 802
    .line 803
    .line 804
    move-result v6

    .line 805
    if-eqz v6, :cond_2c

    .line 806
    .line 807
    const/4 v6, 0x0

    .line 808
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 809
    .line 810
    :cond_2c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 811
    .line 812
    goto/16 :goto_0

    .line 813
    .line 814
    :cond_2d
    iput-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 815
    .line 816
    goto/16 :goto_8

    .line 817
    .line 818
    :cond_2e
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    .line 819
    .line 820
    const-string v0, "ImageResource"

    .line 821
    .line 822
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v1

    .line 826
    if-eqz v1, :cond_2f

    .line 827
    .line 828
    iget-object v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 829
    .line 830
    if-eqz v1, :cond_2f

    .line 831
    .line 832
    iput-object v3, v1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkResources:Landroid/content/res/Resources;

    .line 833
    .line 834
    :cond_2f
    iget-object v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 835
    .line 836
    if-nez v1, :cond_30

    .line 837
    .line 838
    return-void

    .line 839
    :cond_30
    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 840
    .line 841
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 842
    .line 843
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    const-string/jumbo v4, "round"

    .line 847
    .line 848
    .line 849
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    move-result v4

    .line 853
    const/4 v5, 0x1

    .line 854
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    const/high16 v8, 0x40000000    # 2.0f

    .line 860
    .line 861
    const/high16 v9, 0x43b40000    # 360.0f

    .line 862
    .line 863
    const/4 v10, 0x2

    .line 864
    if-eqz v4, :cond_31

    .line 865
    .line 866
    iput-object p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 867
    .line 868
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 869
    .line 870
    div-float/2addr p0, v9

    .line 871
    mul-float/2addr p0, v8

    .line 872
    float-to-double p0, p0

    .line 873
    mul-double/2addr p0, v6

    .line 874
    double-to-float p0, p0

    .line 875
    iput p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 876
    .line 877
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 878
    .line 879
    div-float/2addr p1, v9

    .line 880
    mul-float/2addr p1, v8

    .line 881
    float-to-double v8, p1

    .line 882
    mul-double/2addr v8, v6

    .line 883
    double-to-float p1, v8

    .line 884
    iput p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 885
    .line 886
    new-array v0, v10, [F

    .line 887
    .line 888
    aput p0, v0, v2

    .line 889
    .line 890
    aput p1, v0, v5

    .line 891
    .line 892
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 893
    .line 894
    .line 895
    move-result-object p0

    .line 896
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;

    .line 897
    .line 898
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_7

    .line 905
    .line 906
    :cond_31
    const-string v4, "ellipse"

    .line 907
    .line 908
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v4

    .line 912
    if-eqz v4, :cond_32

    .line 913
    .line 914
    iput-object p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 915
    .line 916
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 917
    .line 918
    div-float/2addr p0, v9

    .line 919
    mul-float/2addr p0, v8

    .line 920
    float-to-double p0, p0

    .line 921
    mul-double/2addr p0, v6

    .line 922
    double-to-float p0, p0

    .line 923
    iput p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 924
    .line 925
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 926
    .line 927
    div-float/2addr p1, v9

    .line 928
    mul-float/2addr p1, v8

    .line 929
    float-to-double v8, p1

    .line 930
    mul-double/2addr v8, v6

    .line 931
    double-to-float p1, v8

    .line 932
    iput p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 933
    .line 934
    new-array v0, v10, [F

    .line 935
    .line 936
    aput p0, v0, v2

    .line 937
    .line 938
    aput p1, v0, v5

    .line 939
    .line 940
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 941
    .line 942
    .line 943
    move-result-object p0

    .line 944
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;

    .line 945
    .line 946
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 950
    .line 951
    .line 952
    goto/16 :goto_7

    .line 953
    .line 954
    :cond_32
    const-string/jumbo v4, "parabola"

    .line 955
    .line 956
    .line 957
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    move-result v4

    .line 961
    if-eqz v4, :cond_34

    .line 962
    .line 963
    iput-object p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 964
    .line 965
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 966
    .line 967
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 968
    .line 969
    cmpl-float p0, p0, p1

    .line 970
    .line 971
    if-lez p0, :cond_33

    .line 972
    .line 973
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;

    .line 974
    .line 975
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 976
    .line 977
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 978
    .line 979
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 980
    .line 981
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;-><init>(FFF)V

    .line 982
    .line 983
    .line 984
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 985
    .line 986
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 987
    .line 988
    .line 989
    move-result-object p1

    .line 990
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 991
    .line 992
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object p1

    .line 1000
    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p0

    .line 1004
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;

    .line 1005
    .line 1006
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_7

    .line 1013
    .line 1014
    :cond_33
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;

    .line 1015
    .line 1016
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 1017
    .line 1018
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 1019
    .line 1020
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 1021
    .line 1022
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;-><init>(FFF)V

    .line 1023
    .line 1024
    .line 1025
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1026
    .line 1027
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1028
    .line 1029
    .line 1030
    move-result-object p1

    .line 1031
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1032
    .line 1033
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p1

    .line 1041
    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 1042
    .line 1043
    .line 1044
    move-result-object p0

    .line 1045
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;

    .line 1046
    .line 1047
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1051
    .line 1052
    .line 1053
    goto/16 :goto_7

    .line 1054
    .line 1055
    :cond_34
    const-string/jumbo v4, "sinX"

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v4

    .line 1062
    if-eqz v4, :cond_36

    .line 1063
    .line 1064
    iput-object p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 1065
    .line 1066
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1067
    .line 1068
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1069
    .line 1070
    cmpl-float p0, p0, p1

    .line 1071
    .line 1072
    if-lez p0, :cond_35

    .line 1073
    .line 1074
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;

    .line 1075
    .line 1076
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 1077
    .line 1078
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    .line 1079
    .line 1080
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 1081
    .line 1082
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 1083
    .line 1084
    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;-><init>(FFFF)V

    .line 1085
    .line 1086
    .line 1087
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1088
    .line 1089
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1090
    .line 1091
    .line 1092
    move-result-object p1

    .line 1093
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1094
    .line 1095
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object p1

    .line 1103
    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 1104
    .line 1105
    .line 1106
    move-result-object p0

    .line 1107
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;

    .line 1108
    .line 1109
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1113
    .line 1114
    .line 1115
    goto/16 :goto_7

    .line 1116
    .line 1117
    :cond_35
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;

    .line 1118
    .line 1119
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 1120
    .line 1121
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    .line 1122
    .line 1123
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 1124
    .line 1125
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 1126
    .line 1127
    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;-><init>(FFFF)V

    .line 1128
    .line 1129
    .line 1130
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1131
    .line 1132
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1133
    .line 1134
    .line 1135
    move-result-object p1

    .line 1136
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1137
    .line 1138
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object p1

    .line 1146
    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 1147
    .line 1148
    .line 1149
    move-result-object p0

    .line 1150
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;

    .line 1151
    .line 1152
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1156
    .line 1157
    .line 1158
    goto/16 :goto_7

    .line 1159
    .line 1160
    :cond_36
    const-string/jumbo v4, "sinY"

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v4

    .line 1167
    if-eqz v4, :cond_38

    .line 1168
    .line 1169
    iput-object p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 1170
    .line 1171
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1172
    .line 1173
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1174
    .line 1175
    cmpl-float p0, p0, p1

    .line 1176
    .line 1177
    if-lez p0, :cond_37

    .line 1178
    .line 1179
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;

    .line 1180
    .line 1181
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 1182
    .line 1183
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    .line 1184
    .line 1185
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 1186
    .line 1187
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 1188
    .line 1189
    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;-><init>(FFFF)V

    .line 1190
    .line 1191
    .line 1192
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1193
    .line 1194
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1195
    .line 1196
    .line 1197
    move-result-object p1

    .line 1198
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1199
    .line 1200
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object p1

    .line 1208
    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 1209
    .line 1210
    .line 1211
    move-result-object p0

    .line 1212
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;

    .line 1213
    .line 1214
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1218
    .line 1219
    .line 1220
    goto/16 :goto_7

    .line 1221
    .line 1222
    :cond_37
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;

    .line 1223
    .line 1224
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 1225
    .line 1226
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    .line 1227
    .line 1228
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 1229
    .line 1230
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 1231
    .line 1232
    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;-><init>(FFFF)V

    .line 1233
    .line 1234
    .line 1235
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1236
    .line 1237
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p1

    .line 1241
    iget v0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1242
    .line 1243
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object p1

    .line 1251
    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 1252
    .line 1253
    .line 1254
    move-result-object p0

    .line 1255
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;

    .line 1256
    .line 1257
    invoke-direct {p1, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_7

    .line 1264
    :cond_38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v0

    .line 1268
    if-eqz v0, :cond_3a

    .line 1269
    .line 1270
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    .line 1271
    .line 1272
    new-array v0, p0, [I

    .line 1273
    .line 1274
    new-array v4, p0, [I

    .line 1275
    .line 1276
    new-array v6, p0, [I

    .line 1277
    .line 1278
    iput-object v6, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    .line 1279
    .line 1280
    iget-wide v6, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    .line 1281
    .line 1282
    sub-int/2addr p0, v5

    .line 1283
    int-to-long v8, p0

    .line 1284
    div-long/2addr v6, v8

    .line 1285
    iput-wide v6, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    .line 1286
    .line 1287
    :goto_6
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    .line 1288
    .line 1289
    if-ge v2, p0, :cond_39

    .line 1290
    .line 1291
    aput v2, v4, v2

    .line 1292
    .line 1293
    iget p0, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    .line 1294
    .line 1295
    add-int/lit8 v5, p0, 0x1

    .line 1296
    .line 1297
    iput v5, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    .line 1298
    .line 1299
    aput p0, v0, v2

    .line 1300
    .line 1301
    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    .line 1302
    .line 1303
    aput p0, v5, v2

    .line 1304
    .line 1305
    add-int/lit8 v2, v2, 0x1

    .line 1306
    .line 1307
    goto :goto_6

    .line 1308
    :cond_39
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 1309
    .line 1310
    .line 1311
    move-result-object p0

    .line 1312
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;

    .line 1313
    .line 1314
    invoke-direct {v0, v3, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1318
    .line 1319
    .line 1320
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    .line 1321
    .line 1322
    invoke-direct {v0, v3, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_7

    .line 1329
    :cond_3a
    new-array v0, v10, [F

    .line 1330
    .line 1331
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 1332
    .line 1333
    aput v4, v0, v2

    .line 1334
    .line 1335
    iget v2, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 1336
    .line 1337
    aput v2, v0, v5

    .line 1338
    .line 1339
    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1340
    .line 1341
    .line 1342
    move-result-object p0

    .line 1343
    :goto_7
    iget-wide v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    .line 1344
    .line 1345
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1346
    .line 1347
    .line 1348
    iget-wide v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    .line 1349
    .line 1350
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1351
    .line 1352
    .line 1353
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    .line 1354
    .line 1355
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1356
    .line 1357
    .line 1358
    iget p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    .line 1359
    .line 1360
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1361
    .line 1362
    .line 1363
    iget-object p1, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 1364
    .line 1365
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1366
    .line 1367
    .line 1368
    iget-object p1, v1, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1369
    .line 1370
    filled-new-array {p0}, [Landroid/animation/Animator;

    .line 1371
    .line 1372
    .line 1373
    move-result-object p0

    .line 1374
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1375
    .line 1376
    .line 1377
    :goto_8
    return-void
.end method
