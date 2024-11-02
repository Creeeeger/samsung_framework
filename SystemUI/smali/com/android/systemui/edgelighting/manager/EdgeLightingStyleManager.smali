.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;


# instance fields
.field public mStyleHashMap:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    new-instance v11, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 19
    .line 20
    const-string/jumbo v3, "preload/noframe"

    .line 21
    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const v7, 0x7f130514

    .line 27
    .line 28
    .line 29
    const v8, 0x7f130515

    .line 30
    .line 31
    .line 32
    const v9, 0x7f080cbc

    .line 33
    .line 34
    .line 35
    const/4 v10, 0x1

    .line 36
    const/4 v4, 0x1

    .line 37
    move-object v2, v11

    .line 38
    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZZIIIZ)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "preload/noframe"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 50
    .line 51
    const-string/jumbo v5, "preload/basic"

    .line 52
    .line 53
    .line 54
    sget-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BASIC_LIGHTING:Z

    .line 55
    .line 56
    const v8, 0x7f1304ff

    .line 57
    .line 58
    .line 59
    const v9, 0x7f130500

    .line 60
    .line 61
    .line 62
    const v10, 0x7f080697

    .line 63
    .line 64
    .line 65
    move-object v4, v2

    .line 66
    move v6, v12

    .line 67
    move v7, v3

    .line 68
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "preload/basic"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 80
    .line 81
    const-string/jumbo v14, "preload/wave"

    .line 82
    .line 83
    .line 84
    const/4 v15, 0x1

    .line 85
    const v17, 0x7f13051a

    .line 86
    .line 87
    .line 88
    const v18, 0x7f13051b

    .line 89
    .line 90
    .line 91
    const v19, 0x7f081339

    .line 92
    .line 93
    .line 94
    sget-boolean v21, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    .line 95
    .line 96
    move-object v13, v2

    .line 97
    move/from16 v16, v3

    .line 98
    .line 99
    move/from16 v20, v21

    .line 100
    .line 101
    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v12, "preload/wave"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v12, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "preload/bubble"

    .line 111
    .line 112
    .line 113
    if-nez v3, :cond_0

    .line 114
    .line 115
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 116
    .line 117
    new-instance v5, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 118
    .line 119
    const-string/jumbo v14, "preload/bubble"

    .line 120
    .line 121
    .line 122
    const/4 v15, 0x1

    .line 123
    const v17, 0x7f130501

    .line 124
    .line 125
    .line 126
    const v18, 0x7f130502

    .line 127
    .line 128
    .line 129
    const v19, 0x7f0806c4

    .line 130
    .line 131
    .line 132
    move-object v13, v5

    .line 133
    move/from16 v16, v3

    .line 134
    .line 135
    move/from16 v20, v21

    .line 136
    .line 137
    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    new-instance v5, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 147
    .line 148
    const-string/jumbo v14, "preload/bubble"

    .line 149
    .line 150
    .line 151
    const/4 v15, 0x1

    .line 152
    const v17, 0x7f130501

    .line 153
    .line 154
    .line 155
    const v18, 0x7f130502

    .line 156
    .line 157
    .line 158
    const v19, 0x7f0806c3

    .line 159
    .line 160
    .line 161
    move-object v13, v5

    .line 162
    move/from16 v16, v3

    .line 163
    .line 164
    move/from16 v20, v21

    .line 165
    .line 166
    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 173
    .line 174
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 175
    .line 176
    const-string/jumbo v14, "preload/gradation"

    .line 177
    .line 178
    .line 179
    const/4 v5, 0x1

    .line 180
    const v17, 0x7f130512

    .line 181
    .line 182
    .line 183
    const v18, 0x7f130513

    .line 184
    .line 185
    .line 186
    const v19, 0x7f0807c1

    .line 187
    .line 188
    .line 189
    const/4 v15, 0x1

    .line 190
    move-object v13, v2

    .line 191
    move/from16 v16, v3

    .line 192
    .line 193
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    .line 194
    .line 195
    .line 196
    const-string/jumbo v11, "preload/gradation"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v11, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 203
    .line 204
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 205
    .line 206
    const-string/jumbo v14, "preload/glow"

    .line 207
    .line 208
    .line 209
    const v17, 0x7f13050e

    .line 210
    .line 211
    .line 212
    const v18, 0x7f13050f

    .line 213
    .line 214
    .line 215
    const v19, 0x7f0807c0

    .line 216
    .line 217
    .line 218
    move-object v13, v2

    .line 219
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v10, "preload/glow"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v10, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 229
    .line 230
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 231
    .line 232
    const-string/jumbo v14, "preload/reflection"

    .line 233
    .line 234
    .line 235
    const v17, 0x7f13050c

    .line 236
    .line 237
    .line 238
    const v18, 0x7f13050d

    .line 239
    .line 240
    .line 241
    const v19, 0x7f0807ba

    .line 242
    .line 243
    .line 244
    move-object v13, v2

    .line 245
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo v9, "preload/reflection"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 255
    .line 256
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 257
    .line 258
    const-string/jumbo v14, "preload/heart"

    .line 259
    .line 260
    .line 261
    const v17, 0x7f130510

    .line 262
    .line 263
    .line 264
    const v18, 0x7f130511

    .line 265
    .line 266
    .line 267
    if-eqz v3, :cond_1

    .line 268
    .line 269
    const v6, 0x7f0807ca

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_1
    const v6, 0x7f0807cb

    .line 274
    .line 275
    .line 276
    :goto_1
    move/from16 v19, v6

    .line 277
    .line 278
    move-object v13, v2

    .line 279
    move v15, v5

    .line 280
    move/from16 v16, v3

    .line 281
    .line 282
    move/from16 v20, v21

    .line 283
    .line 284
    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 285
    .line 286
    .line 287
    const-string/jumbo v5, "preload/heart"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 294
    .line 295
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 296
    .line 297
    const-string/jumbo v14, "preload/fireworks"

    .line 298
    .line 299
    .line 300
    const/4 v15, 0x1

    .line 301
    const v17, 0x7f130509

    .line 302
    .line 303
    .line 304
    const v18, 0x7f13050a

    .line 305
    .line 306
    .line 307
    if-eqz v3, :cond_2

    .line 308
    .line 309
    const v5, 0x7f08079e

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_2
    const v5, 0x7f08079f

    .line 314
    .line 315
    .line 316
    :goto_2
    move/from16 v19, v5

    .line 317
    .line 318
    move-object v13, v2

    .line 319
    move/from16 v16, v3

    .line 320
    .line 321
    move/from16 v20, v21

    .line 322
    .line 323
    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 324
    .line 325
    .line 326
    const-string/jumbo v5, "preload/fireworks"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 333
    .line 334
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 335
    .line 336
    const-string/jumbo v6, "preload/eclipse"

    .line 337
    .line 338
    .line 339
    const/4 v13, 0x1

    .line 340
    const/4 v14, 0x0

    .line 341
    const v15, 0x7f130506

    .line 342
    .line 343
    .line 344
    const v16, 0x7f130507

    .line 345
    .line 346
    .line 347
    const v17, 0x7f080774

    .line 348
    .line 349
    .line 350
    const/4 v7, 0x1

    .line 351
    const/4 v8, 0x0

    .line 352
    move-object v5, v2

    .line 353
    move-object/from16 v22, v9

    .line 354
    .line 355
    move v9, v15

    .line 356
    move-object v15, v10

    .line 357
    move/from16 v10, v16

    .line 358
    .line 359
    move-object/from16 v23, v11

    .line 360
    .line 361
    move/from16 v11, v17

    .line 362
    .line 363
    move-object/from16 v24, v12

    .line 364
    .line 365
    move/from16 v12, v21

    .line 366
    .line 367
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 368
    .line 369
    .line 370
    const-string/jumbo v5, "preload/eclipse"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 377
    .line 378
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 379
    .line 380
    const-string/jumbo v6, "preload/echo"

    .line 381
    .line 382
    .line 383
    const v9, 0x7f130504

    .line 384
    .line 385
    .line 386
    const v10, 0x7f130505

    .line 387
    .line 388
    .line 389
    const v11, 0x7f080772

    .line 390
    .line 391
    .line 392
    move-object v5, v2

    .line 393
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 394
    .line 395
    .line 396
    const-string/jumbo v5, "preload/echo"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 403
    .line 404
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 405
    .line 406
    const-string/jumbo v6, "preload/spotlight"

    .line 407
    .line 408
    .line 409
    const v9, 0x7f130516

    .line 410
    .line 411
    .line 412
    const v10, 0x7f130517

    .line 413
    .line 414
    .line 415
    const v11, 0x7f081103

    .line 416
    .line 417
    .line 418
    move-object v5, v2

    .line 419
    move v7, v13

    .line 420
    move v8, v14

    .line 421
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    .line 422
    .line 423
    .line 424
    const-string/jumbo v5, "preload/spotlight"

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    if-nez v3, :cond_8

    .line 431
    .line 432
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 433
    .line 434
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 435
    .line 436
    .line 437
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_7

    .line 452
    .line 453
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 458
    .line 459
    iget-object v5, v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    if-nez v6, :cond_3

    .line 466
    .line 467
    move-object/from16 v6, v24

    .line 468
    .line 469
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-nez v7, :cond_6

    .line 474
    .line 475
    move-object/from16 v7, v23

    .line 476
    .line 477
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v8

    .line 481
    if-nez v8, :cond_5

    .line 482
    .line 483
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    if-nez v8, :cond_5

    .line 488
    .line 489
    move-object/from16 v8, v22

    .line 490
    .line 491
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    if-eqz v9, :cond_4

    .line 496
    .line 497
    goto :goto_4

    .line 498
    :cond_4
    invoke-virtual {v1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    :goto_4
    move-object/from16 v24, v6

    .line 502
    .line 503
    move-object/from16 v23, v7

    .line 504
    .line 505
    move-object/from16 v22, v8

    .line 506
    .line 507
    goto :goto_3

    .line 508
    :cond_5
    move-object/from16 v24, v6

    .line 509
    .line 510
    move-object/from16 v23, v7

    .line 511
    .line 512
    goto :goto_3

    .line 513
    :cond_6
    move-object/from16 v24, v6

    .line 514
    .line 515
    goto :goto_3

    .line 516
    :cond_7
    iput-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 517
    .line 518
    :cond_8
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 13
    .line 14
    return-object v0
.end method

.method public static isSupportEffectForRoutine(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "preload/bubble"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string/jumbo v0, "preload/wave"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string/jumbo v0, "preload/heart"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string/jumbo v0, "preload/fireworks"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string/jumbo v0, "preload/eclipse"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method


# virtual methods
.method public final getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "edge_lighting_style_type"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "getEdgeLightingStyleType : "

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "EdgeLightingStyleManager"

    .line 24
    .line 25
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x0

    .line 30
    const-string/jumbo v6, "preload/noframe"

    .line 31
    .line 32
    .line 33
    const-string v7, "edge_lighting_style_type_str"

    .line 34
    .line 35
    if-ltz v3, :cond_b

    .line 36
    .line 37
    new-instance v8, Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 49
    .line 50
    .line 51
    if-eqz v3, :cond_9

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-eq v3, v0, :cond_6

    .line 55
    .line 56
    if-eq v3, v4, :cond_3

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    if-eq v3, v0, :cond_0

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    const-string/jumbo v3, "preload/reflection"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-static {p1, v7, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-le v1, v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    const-string/jumbo v1, "preload/glow"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-static {p1, v7, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-le v0, v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    const-string/jumbo v3, "preload/gradation"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    invoke-static {p1, v7, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-le v1, v0, :cond_8

    .line 176
    .line 177
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_8
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 202
    .line 203
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-static {p1, v7, v6, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_a
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 222
    .line 223
    .line 224
    :cond_b
    :goto_0
    invoke-static {p1, v7, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-nez v0, :cond_d

    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 231
    .line 232
    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_c

    .line 237
    .line 238
    return-object v6

    .line 239
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 242
    .line 243
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 255
    .line 256
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 257
    .line 258
    return-object p0

    .line 259
    :cond_d
    const-string v1, "/"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    array-length v1, v1

    .line 266
    if-gt v1, v4, :cond_f

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 269
    .line 270
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    if-nez p0, :cond_e

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_e
    return-object v0

    .line 278
    :cond_f
    :goto_1
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v7, v6, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 286
    .line 287
    .line 288
    return-object v6
.end method

.method public final getPreloadIndex(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    const-string/jumbo v0, "preload/noframe"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    const-string/jumbo v0, "preload/basic"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const-string/jumbo v0, "preload/gradation"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x2

    .line 41
    return p0

    .line 42
    :cond_2
    const-string/jumbo v0, "preload/glow"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const/4 p0, 0x3

    .line 52
    return p0

    .line 53
    :cond_3
    const-string/jumbo v0, "preload/reflection"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/4 p0, 0x4

    .line 63
    return p0

    .line 64
    :cond_4
    const-string/jumbo v0, "preload/wave"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    const/4 p0, 0x5

    .line 74
    return p0

    .line 75
    :cond_5
    const-string/jumbo v0, "preload/bubble"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const/4 p0, 0x6

    .line 85
    return p0

    .line 86
    :cond_6
    const-string/jumbo v0, "preload/heart"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    const/4 p0, 0x7

    .line 96
    return p0

    .line 97
    :cond_7
    const-string/jumbo v0, "preload/fireworks"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    const/16 p0, 0x8

    .line 107
    .line 108
    return p0

    .line 109
    :cond_8
    const-string/jumbo v0, "preload/eclipse"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    const/16 p0, 0x9

    .line 119
    .line 120
    return p0

    .line 121
    :cond_9
    const-string/jumbo v0, "preload/echo"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    const/16 p0, 0xa

    .line 131
    .line 132
    return p0

    .line 133
    :cond_a
    const-string/jumbo v0, "preload/spotlight"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_b

    .line 141
    .line 142
    const/16 p0, 0xb

    .line 143
    .line 144
    return p0

    .line 145
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    return p0

    .line 169
    :cond_c
    const/16 p0, 0x64

    .line 170
    .line 171
    return p0
.end method
