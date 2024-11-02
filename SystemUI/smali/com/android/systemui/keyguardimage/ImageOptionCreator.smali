.class public final Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    if-eqz v1, :cond_33

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_13

    .line 10
    .line 11
    :cond_0
    new-instance v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v4, 0x4

    .line 21
    new-array v5, v4, [Z

    .line 22
    .line 23
    fill-array-data v5, :array_0

    .line 24
    .line 25
    .line 26
    const-string v6, "&"

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v0, 0x0

    .line 41
    move v7, v0

    .line 42
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const-string v9, "ImageOptionCreator"

    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    if-eqz v8, :cond_21

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Ljava/lang/String;

    .line 56
    .line 57
    const-string v11, "="

    .line 58
    .line 59
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    array-length v11, v8

    .line 64
    const/4 v12, 0x2

    .line 65
    if-eq v11, v12, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    aget-object v11, v8, v7

    .line 69
    .line 70
    aget-object v8, v8, v10

    .line 71
    .line 72
    const-string v13, "createImageOption() key: "

    .line 73
    .line 74
    const-string v14, ", value: "

    .line 75
    .line 76
    invoke-static {v13, v11, v14, v8}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    new-array v7, v7, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v9, v13, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    const/16 v9, 0xa

    .line 93
    .line 94
    const/4 v13, 0x3

    .line 95
    const/4 v14, -0x1

    .line 96
    const/4 v15, 0x5

    .line 97
    sparse-switch v7, :sswitch_data_0

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_0
    const-string v7, "display"

    .line 103
    .line 104
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_2

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_2
    const/16 v7, 0xb

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :sswitch_1
    const-string v7, "color_main"

    .line 117
    .line 118
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_3

    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_3
    move v7, v9

    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :sswitch_2
    const-string v7, "colorClock"

    .line 130
    .line 131
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_4

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_4
    const/16 v7, 0x9

    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :sswitch_3
    const-string v7, "legibilityColor"

    .line 144
    .line 145
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-nez v7, :cond_5

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_5
    const/16 v7, 0x8

    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :sswitch_4
    const-string/jumbo v7, "paletteIndex"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-nez v7, :cond_6

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_6
    const/4 v7, 0x7

    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :sswitch_5
    const-string/jumbo v7, "type"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-nez v7, :cond_7

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    const/4 v7, 0x6

    .line 182
    goto :goto_2

    .line 183
    :sswitch_6
    const-string/jumbo v7, "white_theme"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-nez v7, :cond_8

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    move v7, v15

    .line 194
    goto :goto_2

    .line 195
    :sswitch_7
    const-string v7, "color_bg_main"

    .line 196
    .line 197
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-nez v7, :cond_9

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_9
    move v7, v4

    .line 205
    goto :goto_2

    .line 206
    :sswitch_8
    const-string v7, "coverClockColor"

    .line 207
    .line 208
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-nez v7, :cond_a

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_a
    move v7, v13

    .line 216
    goto :goto_2

    .line 217
    :sswitch_9
    const-string v7, "fontColor"

    .line 218
    .line 219
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-nez v7, :cond_b

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_b
    move v7, v12

    .line 227
    goto :goto_2

    .line 228
    :sswitch_a
    const-string v7, "color_bg_second"

    .line 229
    .line 230
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-nez v7, :cond_c

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_c
    move v7, v10

    .line 238
    goto :goto_2

    .line 239
    :sswitch_b
    const-string v7, "color_second"

    .line 240
    .line 241
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-nez v7, :cond_d

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_d
    const/4 v7, 0x0

    .line 249
    goto :goto_2

    .line 250
    :goto_1
    move v7, v14

    .line 251
    :goto_2
    iget-object v11, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    .line 252
    .line 253
    packed-switch v7, :pswitch_data_0

    .line 254
    .line 255
    .line 256
    goto/16 :goto_5

    .line 257
    .line 258
    :pswitch_0
    if-eqz v8, :cond_e

    .line 259
    .line 260
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-nez v7, :cond_1f

    .line 265
    .line 266
    :cond_e
    if-eqz v8, :cond_1f

    .line 267
    .line 268
    const-string/jumbo v7, "virtual"

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-eqz v7, :cond_1f

    .line 276
    .line 277
    const/16 v7, 0x21

    .line 278
    .line 279
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 280
    .line 281
    goto/16 :goto_5

    .line 282
    .line 283
    :pswitch_1
    if-nez v0, :cond_1f

    .line 284
    .line 285
    const/4 v12, 0x0

    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :pswitch_2
    iput-boolean v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 289
    .line 290
    if-eqz v8, :cond_f

    .line 291
    .line 292
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    if-nez v7, :cond_1f

    .line 297
    .line 298
    :cond_f
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_1f

    .line 303
    .line 304
    iput-object v8, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 305
    .line 306
    goto/16 :goto_5

    .line 307
    .line 308
    :pswitch_3
    if-eqz v8, :cond_10

    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-nez v7, :cond_1f

    .line 315
    .line 316
    :cond_10
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_1f

    .line 321
    .line 322
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    .line 327
    .line 328
    goto/16 :goto_5

    .line 329
    .line 330
    :pswitch_4
    if-eqz v8, :cond_11

    .line 331
    .line 332
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-nez v7, :cond_1f

    .line 337
    .line 338
    :cond_11
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    if-eqz v7, :cond_1f

    .line 343
    .line 344
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 349
    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :pswitch_5
    const-string/jumbo v7, "wallpaper"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_12

    .line 360
    .line 361
    iput v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 362
    .line 363
    goto/16 :goto_5

    .line 364
    .line 365
    :cond_12
    const-string v7, "cover_wallpaper"

    .line 366
    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_13

    .line 372
    .line 373
    iput v15, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 374
    .line 375
    const/16 v7, 0x11

    .line 376
    .line 377
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :cond_13
    const-string v7, "all"

    .line 382
    .line 383
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-eqz v7, :cond_14

    .line 388
    .line 389
    iput v13, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :cond_14
    const-string v7, "clockColor"

    .line 394
    .line 395
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    if-eqz v7, :cond_16

    .line 400
    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    iput v12, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 406
    .line 407
    iput-boolean v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 408
    .line 409
    if-eqz v7, :cond_15

    .line 410
    .line 411
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_1f

    .line 416
    .line 417
    :cond_15
    invoke-static {v7}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    if-eqz v9, :cond_1f

    .line 422
    .line 423
    iput-object v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 424
    .line 425
    goto/16 :goto_5

    .line 426
    .line 427
    :cond_16
    const-string v7, "clock"

    .line 428
    .line 429
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-eqz v7, :cond_18

    .line 434
    .line 435
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    iput v12, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 440
    .line 441
    if-eqz v7, :cond_17

    .line 442
    .line 443
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    if-nez v9, :cond_1f

    .line 448
    .line 449
    :cond_17
    invoke-static {v7}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-eqz v9, :cond_1f

    .line 454
    .line 455
    iput-object v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 456
    .line 457
    goto/16 :goto_5

    .line 458
    .line 459
    :cond_18
    const-string v7, "cover"

    .line 460
    .line 461
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    if-eqz v7, :cond_1f

    .line 466
    .line 467
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 472
    .line 473
    if-eqz v7, :cond_19

    .line 474
    .line 475
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    if-nez v9, :cond_1f

    .line 480
    .line 481
    :cond_19
    invoke-static {v7}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v9

    .line 485
    if-eqz v9, :cond_1f

    .line 486
    .line 487
    iput-object v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 488
    .line 489
    goto/16 :goto_5

    .line 490
    .line 491
    :pswitch_6
    const-string/jumbo v7, "true"

    .line 492
    .line 493
    .line 494
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    if-nez v7, :cond_1a

    .line 499
    .line 500
    const-string/jumbo v7, "on"

    .line 501
    .line 502
    .line 503
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    if-eqz v7, :cond_1f

    .line 508
    .line 509
    :cond_1a
    const/4 v0, 0x0

    .line 510
    :goto_3
    if-ge v0, v4, :cond_1b

    .line 511
    .line 512
    const v7, -0xbababb

    .line 513
    .line 514
    .line 515
    aput v7, v11, v0

    .line 516
    .line 517
    add-int/lit8 v0, v0, 0x1

    .line 518
    .line 519
    goto :goto_3

    .line 520
    :cond_1b
    move v7, v10

    .line 521
    goto :goto_6

    .line 522
    :pswitch_7
    if-nez v0, :cond_1f

    .line 523
    .line 524
    :goto_4
    move v7, v0

    .line 525
    goto :goto_7

    .line 526
    :pswitch_8
    if-eqz v8, :cond_1c

    .line 527
    .line 528
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    if-nez v7, :cond_1f

    .line 533
    .line 534
    :cond_1c
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    if-eqz v7, :cond_1f

    .line 539
    .line 540
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    move-result v7

    .line 544
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    .line 545
    .line 546
    goto :goto_5

    .line 547
    :pswitch_9
    if-eqz v8, :cond_1d

    .line 548
    .line 549
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    if-nez v7, :cond_1f

    .line 554
    .line 555
    :cond_1d
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v7

    .line 559
    if-eqz v7, :cond_1f

    .line 560
    .line 561
    iget-boolean v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 562
    .line 563
    if-eqz v7, :cond_1e

    .line 564
    .line 565
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    move-result v7

    .line 569
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    .line 570
    .line 571
    goto :goto_5

    .line 572
    :cond_1e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    .line 577
    .line 578
    goto :goto_5

    .line 579
    :pswitch_a
    if-nez v0, :cond_1f

    .line 580
    .line 581
    move v7, v0

    .line 582
    move v12, v13

    .line 583
    goto :goto_7

    .line 584
    :pswitch_b
    if-nez v0, :cond_1f

    .line 585
    .line 586
    move v7, v0

    .line 587
    move v12, v10

    .line 588
    goto :goto_7

    .line 589
    :cond_1f
    :goto_5
    move v7, v0

    .line 590
    :goto_6
    move v12, v14

    .line 591
    :goto_7
    if-le v12, v14, :cond_20

    .line 592
    .line 593
    const/16 v0, 0x10

    .line 594
    .line 595
    :try_start_0
    invoke-static {v8, v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    aput v0, v11, v12

    .line 600
    .line 601
    aput-boolean v10, v5, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .line 603
    goto :goto_8

    .line 604
    :catch_0
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    .line 607
    .line 608
    :cond_20
    :goto_8
    const/4 v0, 0x0

    .line 609
    move/from16 v16, v7

    .line 610
    .line 611
    move v7, v0

    .line 612
    move/from16 v0, v16

    .line 613
    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :cond_21
    if-nez v0, :cond_23

    .line 617
    .line 618
    const/4 v0, 0x0

    .line 619
    :goto_9
    if-ge v0, v4, :cond_23

    .line 620
    .line 621
    aget-boolean v6, v5, v0

    .line 622
    .line 623
    if-nez v6, :cond_22

    .line 624
    .line 625
    iput-boolean v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    .line 626
    .line 627
    goto :goto_a

    .line 628
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 629
    .line 630
    goto :goto_9

    .line 631
    :cond_23
    :goto_a
    if-eqz p2, :cond_24

    .line 632
    .line 633
    return-object v3

    .line 634
    :cond_24
    iget v0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 635
    .line 636
    if-ne v0, v4, :cond_25

    .line 637
    .line 638
    move v4, v10

    .line 639
    goto :goto_b

    .line 640
    :cond_25
    const/4 v0, 0x0

    .line 641
    move v4, v0

    .line 642
    :goto_b
    invoke-static {v1, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 647
    .line 648
    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 649
    .line 650
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 655
    .line 656
    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 657
    .line 658
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 659
    .line 660
    .line 661
    move-result v6

    .line 662
    if-eqz v4, :cond_26

    .line 663
    .line 664
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 665
    .line 666
    :cond_26
    if-eqz v4, :cond_27

    .line 667
    .line 668
    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 669
    .line 670
    :cond_27
    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 671
    .line 672
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realWidth:I

    .line 673
    .line 674
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 675
    .line 676
    iput v0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realHeight:I

    .line 677
    .line 678
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-ne v0, v10, :cond_28

    .line 683
    .line 684
    goto :goto_c

    .line 685
    :cond_28
    const/4 v10, 0x0

    .line 686
    :goto_c
    iput-boolean v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    .line 687
    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-nez v1, :cond_31

    .line 697
    .line 698
    const-string v1, "/portrait"

    .line 699
    .line 700
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    if-eqz v1, :cond_29

    .line 705
    .line 706
    goto/16 :goto_11

    .line 707
    .line 708
    :cond_29
    const-string v1, "/landscape"

    .line 709
    .line 710
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-eqz v1, :cond_2a

    .line 715
    .line 716
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 717
    .line 718
    iput v5, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 719
    .line 720
    goto :goto_12

    .line 721
    :cond_2a
    const-string v1, "/custom"

    .line 722
    .line 723
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    if-eqz v0, :cond_32

    .line 728
    .line 729
    :try_start_1
    const-string/jumbo v0, "width"

    .line 730
    .line 731
    .line 732
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 740
    :try_start_2
    const-string v0, "height"

    .line 741
    .line 742
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 750
    goto :goto_e

    .line 751
    :catch_1
    move-exception v0

    .line 752
    goto :goto_d

    .line 753
    :catch_2
    move-exception v0

    .line 754
    const/4 v1, 0x0

    .line 755
    :goto_d
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 756
    .line 757
    .line 758
    const/4 v0, 0x0

    .line 759
    :goto_e
    if-eqz v1, :cond_30

    .line 760
    .line 761
    if-nez v0, :cond_2b

    .line 762
    .line 763
    goto :goto_10

    .line 764
    :cond_2b
    const/4 v2, 0x0

    .line 765
    if-ge v1, v0, :cond_2c

    .line 766
    .line 767
    if-gt v1, v5, :cond_2c

    .line 768
    .line 769
    if-gt v0, v6, :cond_2c

    .line 770
    .line 771
    int-to-float v6, v1

    .line 772
    int-to-float v7, v5

    .line 773
    div-float/2addr v6, v7

    .line 774
    goto :goto_f

    .line 775
    :cond_2c
    if-le v1, v0, :cond_2d

    .line 776
    .line 777
    if-gt v1, v6, :cond_2d

    .line 778
    .line 779
    if-gt v0, v5, :cond_2d

    .line 780
    .line 781
    int-to-float v7, v1

    .line 782
    int-to-float v6, v6

    .line 783
    div-float v6, v7, v6

    .line 784
    .line 785
    goto :goto_f

    .line 786
    :cond_2d
    move v6, v2

    .line 787
    :goto_f
    if-eqz v4, :cond_2e

    .line 788
    .line 789
    const-string v4, "createImageOption(), scale for cover"

    .line 790
    .line 791
    const/4 v6, 0x0

    .line 792
    new-array v6, v6, [Ljava/lang/Object;

    .line 793
    .line 794
    invoke-static {v9, v4, v6}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    .line 796
    .line 797
    int-to-float v4, v1

    .line 798
    int-to-float v5, v5

    .line 799
    div-float v6, v4, v5

    .line 800
    .line 801
    :cond_2e
    cmpl-float v2, v6, v2

    .line 802
    .line 803
    if-nez v2, :cond_2f

    .line 804
    .line 805
    const/4 v0, 0x0

    .line 806
    return-object v0

    .line 807
    :cond_2f
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 808
    .line 809
    iput v1, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 810
    .line 811
    iput v0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 812
    .line 813
    goto :goto_12

    .line 814
    :cond_30
    :goto_10
    const/4 v0, 0x0

    .line 815
    return-object v0

    .line 816
    :cond_31
    :goto_11
    iput v5, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 817
    .line 818
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 819
    .line 820
    :cond_32
    :goto_12
    return-object v3

    .line 821
    :cond_33
    :goto_13
    const/4 v0, 0x0

    .line 822
    return-object v0

    .line 823
    :sswitch_data_0
    .sparse-switch
        -0x70ca7330 -> :sswitch_b
        -0x6d5ea82e -> :sswitch_a
        -0x5d5573ac -> :sswitch_9
        -0x536b0cf4 -> :sswitch_8
        -0x289da769 -> :sswitch_7
        -0x223bddcd -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x11487717 -> :sswitch_4
        0x483d5c5f -> :sswitch_3
        0x4b50e26b -> :sswitch_2
        0x4cdbb515 -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const-string v0, "isNumeric() return false - "

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "ImageOptionCreator"

    .line 16
    .line 17
    invoke-static {v2, p0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v0
.end method
