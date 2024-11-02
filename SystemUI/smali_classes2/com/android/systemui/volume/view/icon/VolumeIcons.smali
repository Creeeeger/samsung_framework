.class public final Lcom/android/systemui/volume/view/icon/VolumeIcons;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final MUTE_ICONS:Ljava/util/HashMap;

.field public static final NORMAL_ICONS:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIcons;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0812ef

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lkotlin/Pair;

    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    const v3, 0x7f0812e4

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lkotlin/Pair;

    .line 36
    .line 37
    invoke-direct {v4, v15, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    const v5, 0x7f0812f2

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Lkotlin/Pair;

    .line 53
    .line 54
    invoke-direct {v6, v14, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x5

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    const v5, 0x7f0812ec

    .line 63
    .line 64
    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v7, Lkotlin/Pair;

    .line 70
    .line 71
    invoke-direct {v7, v13, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/16 v5, 0xa

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    const v5, 0x7f0812d9

    .line 81
    .line 82
    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    new-instance v8, Lkotlin/Pair;

    .line 88
    .line 89
    invoke-direct {v8, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    new-instance v9, Lkotlin/Pair;

    .line 98
    .line 99
    invoke-direct {v9, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const v16, 0x7f0812df

    .line 108
    .line 109
    .line 110
    move-object/from16 v17, v15

    .line 111
    .line 112
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    move-object/from16 v16, v10

    .line 117
    .line 118
    new-instance v10, Lkotlin/Pair;

    .line 119
    .line 120
    invoke-direct {v10, v5, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/16 v18, 0x6

    .line 124
    .line 125
    move-object/from16 v19, v15

    .line 126
    .line 127
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    const v18, 0x7f0812de

    .line 132
    .line 133
    .line 134
    move-object/from16 v20, v0

    .line 135
    .line 136
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    move-object/from16 v18, v11

    .line 141
    .line 142
    new-instance v11, Lkotlin/Pair;

    .line 143
    .line 144
    invoke-direct {v11, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const/16 v21, 0xb

    .line 148
    .line 149
    move-object/from16 v22, v0

    .line 150
    .line 151
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const v21, 0x7f0812da

    .line 156
    .line 157
    .line 158
    move-object/from16 v23, v15

    .line 159
    .line 160
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    move-object/from16 v21, v12

    .line 165
    .line 166
    new-instance v12, Lkotlin/Pair;

    .line 167
    .line 168
    invoke-direct {v12, v0, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const/16 v24, 0x14

    .line 172
    .line 173
    move-object/from16 v25, v5

    .line 174
    .line 175
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    move-object/from16 v26, v13

    .line 180
    .line 181
    new-instance v13, Lkotlin/Pair;

    .line 182
    .line 183
    invoke-direct {v13, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    const/16 v1, 0x15

    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    new-instance v1, Lkotlin/Pair;

    .line 193
    .line 194
    invoke-direct {v1, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    const/16 v27, 0x16

    .line 198
    .line 199
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const v5, 0x7f0812db

    .line 204
    .line 205
    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    move-object/from16 v28, v14

    .line 211
    .line 212
    new-instance v14, Lkotlin/Pair;

    .line 213
    .line 214
    invoke-direct {v14, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const/16 v29, 0x17

    .line 218
    .line 219
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    move-object/from16 v30, v0

    .line 224
    .line 225
    new-instance v0, Lkotlin/Pair;

    .line 226
    .line 227
    invoke-direct {v0, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    move-object v3, v4

    .line 231
    move-object v4, v6

    .line 232
    move-object v6, v5

    .line 233
    move-object/from16 v32, v25

    .line 234
    .line 235
    move-object/from16 v25, v15

    .line 236
    .line 237
    move-object/from16 v15, v32

    .line 238
    .line 239
    move-object v5, v7

    .line 240
    move-object v7, v6

    .line 241
    move-object v6, v8

    .line 242
    move-object v8, v7

    .line 243
    move-object v7, v9

    .line 244
    move-object v9, v8

    .line 245
    move-object v8, v10

    .line 246
    move-object v10, v9

    .line 247
    move-object v9, v11

    .line 248
    move-object v11, v10

    .line 249
    move-object/from16 v32, v16

    .line 250
    .line 251
    move-object/from16 v16, v15

    .line 252
    .line 253
    move-object/from16 v15, v32

    .line 254
    .line 255
    move-object v10, v12

    .line 256
    move-object v12, v11

    .line 257
    move-object/from16 v32, v18

    .line 258
    .line 259
    move-object/from16 v18, v15

    .line 260
    .line 261
    move-object/from16 v15, v32

    .line 262
    .line 263
    move-object v11, v13

    .line 264
    move-object v13, v12

    .line 265
    move-object/from16 v31, v21

    .line 266
    .line 267
    move-object v12, v1

    .line 268
    move-object/from16 v21, v13

    .line 269
    .line 270
    move-object/from16 v1, v26

    .line 271
    .line 272
    move-object v13, v14

    .line 273
    move-object/from16 v26, v15

    .line 274
    .line 275
    move-object/from16 v15, v28

    .line 276
    .line 277
    move-object v14, v0

    .line 278
    filled-new-array/range {v2 .. v14}, [Lkotlin/Pair;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sput-object v0, Lcom/android/systemui/volume/view/icon/VolumeIcons;->NORMAL_ICONS:Ljava/util/HashMap;

    .line 287
    .line 288
    const v0, 0x7f0812ea

    .line 289
    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-instance v2, Lkotlin/Pair;

    .line 296
    .line 297
    move-object/from16 v3, v20

    .line 298
    .line 299
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    const v3, 0x7f0812e3

    .line 303
    .line 304
    .line 305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    new-instance v5, Lkotlin/Pair;

    .line 310
    .line 311
    move-object/from16 v6, v17

    .line 312
    .line 313
    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    const v4, 0x7f0812f3

    .line 317
    .line 318
    .line 319
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    new-instance v6, Lkotlin/Pair;

    .line 324
    .line 325
    invoke-direct {v6, v15, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    const v4, 0x7f0812ed

    .line 329
    .line 330
    .line 331
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    new-instance v7, Lkotlin/Pair;

    .line 336
    .line 337
    invoke-direct {v7, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    new-instance v1, Lkotlin/Pair;

    .line 341
    .line 342
    move-object/from16 v8, v26

    .line 343
    .line 344
    move-object/from16 v4, v31

    .line 345
    .line 346
    invoke-direct {v1, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    new-instance v8, Lkotlin/Pair;

    .line 350
    .line 351
    move-object/from16 v4, v18

    .line 352
    .line 353
    invoke-direct {v8, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    new-instance v9, Lkotlin/Pair;

    .line 357
    .line 358
    move-object/from16 v4, v16

    .line 359
    .line 360
    move-object/from16 v10, v19

    .line 361
    .line 362
    invoke-direct {v9, v4, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    new-instance v10, Lkotlin/Pair;

    .line 366
    .line 367
    move-object/from16 v11, v22

    .line 368
    .line 369
    move-object/from16 v4, v23

    .line 370
    .line 371
    invoke-direct {v10, v4, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    new-instance v11, Lkotlin/Pair;

    .line 375
    .line 376
    move-object/from16 v12, v25

    .line 377
    .line 378
    move-object/from16 v4, v30

    .line 379
    .line 380
    invoke-direct {v11, v4, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    new-instance v12, Lkotlin/Pair;

    .line 388
    .line 389
    invoke-direct {v12, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    const/16 v0, 0x15

    .line 393
    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    new-instance v13, Lkotlin/Pair;

    .line 403
    .line 404
    invoke-direct {v13, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    new-instance v14, Lkotlin/Pair;

    .line 412
    .line 413
    move-object/from16 v3, v21

    .line 414
    .line 415
    invoke-direct {v14, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    new-instance v15, Lkotlin/Pair;

    .line 423
    .line 424
    invoke-direct {v15, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    move-object v3, v5

    .line 428
    move-object v4, v6

    .line 429
    move-object v5, v7

    .line 430
    move-object v6, v1

    .line 431
    move-object v7, v8

    .line 432
    move-object v8, v9

    .line 433
    move-object v9, v10

    .line 434
    move-object v10, v11

    .line 435
    move-object v11, v12

    .line 436
    move-object v12, v13

    .line 437
    move-object v13, v14

    .line 438
    move-object v14, v15

    .line 439
    filled-new-array/range {v2 .. v14}, [Lkotlin/Pair;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    sput-object v0, Lcom/android/systemui/volume/view/icon/VolumeIcons;->MUTE_ICONS:Ljava/util/HashMap;

    .line 448
    .line 449
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultIconResId(II)I
    .locals 2

    .line 1
    const v0, 0x7f0812ef

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/systemui/volume/view/icon/VolumeIcons;->NORMAL_ICONS:Ljava/util/HashMap;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto :goto_1

    .line 14
    :pswitch_1
    const p0, 0x7f0812e2

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :pswitch_2
    const p0, 0x7f0812dd

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :pswitch_3
    const p0, 0x7f0812e1

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :pswitch_4
    const p0, 0x7f0812e8

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :pswitch_5
    const p0, 0x7f0812dc

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :pswitch_6
    const p0, 0x7f0812f5

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :pswitch_7
    const p0, 0x7f0812e7

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :pswitch_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/Integer;

    .line 54
    .line 55
    if-nez p0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v0, p0

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    goto :goto_3

    .line 64
    :pswitch_9
    const p0, 0x7f0812db

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :pswitch_a
    sget-object p1, Lcom/android/systemui/volume/view/icon/VolumeIcons;->MUTE_ICONS:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/Integer;

    .line 79
    .line 80
    if-nez p0, :cond_1

    .line 81
    .line 82
    const p0, 0x7f0812ea

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    goto :goto_3

    .line 94
    :pswitch_b
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNotification(I)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    const p0, 0x7f0812ee

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    const p0, 0x7f0812f4

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Ljava/lang/Integer;

    .line 117
    .line 118
    if-nez p0, :cond_3

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move-object v0, p0

    .line 122
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    :goto_3
    return p0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final isAnimatableIcon(II)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableMediaIconType(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNotification(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSystem(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 41
    :goto_1
    return p0
.end method

.method public static final isAnimatableMediaIconType(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x9

    .line 9
    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0xd

    .line 17
    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    if-eq p0, v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0xb

    .line 25
    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    const/16 v0, 0xe

    .line 29
    .line 30
    if-eq p0, v0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method public static final isForMediaIcon(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static final isWaveAnimatableIcon(II)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableMediaIconType(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method
