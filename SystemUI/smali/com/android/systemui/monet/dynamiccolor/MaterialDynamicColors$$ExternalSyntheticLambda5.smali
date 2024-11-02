.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    .line 6
    .line 7
    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    .line 8
    .line 9
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    .line 13
    .line 14
    const/4 v10, 0x1

    .line 15
    const/4 v11, 0x0

    .line 16
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 17
    .line 18
    const-wide v14, 0x4056800000000000L    # 90.0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide/16 v16, 0x0

    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_16

    .line 29
    .line 30
    :pswitch_0
    move-object/from16 v0, p1

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-wide/from16 v12, v16

    .line 40
    .line 41
    :goto_0
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :pswitch_1
    move-object/from16 v0, p1

    .line 47
    .line 48
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-wide v1, v14

    .line 56
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :pswitch_2
    move-object/from16 v0, p1

    .line 62
    .line 63
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_3
    move-object/from16 v0, p1

    .line 69
    .line 70
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    move-wide v5, v14

    .line 77
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :pswitch_4
    move-object/from16 v0, p1

    .line 83
    .line 84
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 87
    .line 88
    return-object v0

    .line 89
    :pswitch_5
    move-object/from16 v0, p1

    .line 90
    .line 91
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 92
    .line 93
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move-wide v3, v8

    .line 99
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :pswitch_6
    move-object/from16 v0, p1

    .line 105
    .line 106
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_7
    move-object/from16 v0, p1

    .line 112
    .line 113
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 116
    .line 117
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 118
    .line 119
    if-ne v0, v1, :cond_4

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    move v10, v11

    .line 123
    :goto_3
    if-eqz v10, :cond_5

    .line 124
    .line 125
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_4
    return-object v0

    .line 135
    :pswitch_8
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 140
    .line 141
    return-object v0

    .line 142
    :pswitch_9
    move-object/from16 v0, p1

    .line 143
    .line 144
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 145
    .line 146
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    const-wide v0, 0x4058800000000000L    # 98.0

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :pswitch_a
    move-object/from16 v0, p1

    .line 164
    .line 165
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 168
    .line 169
    return-object v0

    .line 170
    :pswitch_b
    move-object/from16 v0, p1

    .line 171
    .line 172
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 173
    .line 174
    iget-object v3, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 175
    .line 176
    sget-object v4, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 177
    .line 178
    if-ne v3, v4, :cond_7

    .line 179
    .line 180
    move v3, v10

    .line 181
    goto :goto_6

    .line 182
    :cond_7
    move v3, v11

    .line 183
    :goto_6
    iget-boolean v4, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 184
    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    if-eqz v4, :cond_8

    .line 188
    .line 189
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_8
    const-wide v0, 0x4048800000000000L    # 49.0

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    goto/16 :goto_d

    .line 202
    .line 203
    :cond_9
    invoke-static {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_b

    .line 208
    .line 209
    if-eqz v4, :cond_a

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_a
    move-wide v1, v14

    .line 213
    :goto_8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    goto/16 :goto_d

    .line 218
    .line 219
    :cond_b
    iget-object v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->sourceColorHct:Lcom/android/systemui/monet/hct/Hct;

    .line 220
    .line 221
    iget-wide v6, v1, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 222
    .line 223
    iget-object v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 224
    .line 225
    iget-wide v2, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 226
    .line 227
    iget-wide v4, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 228
    .line 229
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 234
    .line 235
    .line 236
    move-result-wide v7

    .line 237
    iget-wide v3, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 238
    .line 239
    iget-wide v5, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 240
    .line 241
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 246
    .line 247
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 248
    .line 249
    .line 250
    move-result-wide v1

    .line 251
    long-to-double v1, v1

    .line 252
    cmpl-double v1, v1, v14

    .line 253
    .line 254
    if-ltz v1, :cond_c

    .line 255
    .line 256
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 257
    .line 258
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 259
    .line 260
    .line 261
    move-result-wide v1

    .line 262
    long-to-double v1, v1

    .line 263
    const-wide v3, 0x405bc00000000000L    # 111.0

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    cmpg-double v1, v1, v3

    .line 269
    .line 270
    if-gtz v1, :cond_c

    .line 271
    .line 272
    move v1, v10

    .line 273
    goto :goto_9

    .line 274
    :cond_c
    move v1, v11

    .line 275
    :goto_9
    iget-wide v2, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 276
    .line 277
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 278
    .line 279
    .line 280
    move-result-wide v2

    .line 281
    long-to-double v2, v2

    .line 282
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 283
    .line 284
    cmpl-double v2, v2, v4

    .line 285
    .line 286
    if-lez v2, :cond_d

    .line 287
    .line 288
    move v2, v10

    .line 289
    goto :goto_a

    .line 290
    :cond_d
    move v2, v11

    .line 291
    :goto_a
    iget-wide v3, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 292
    .line 293
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 294
    .line 295
    .line 296
    move-result-wide v3

    .line 297
    long-to-double v3, v3

    .line 298
    const-wide v5, 0x4051800000000000L    # 70.0

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    cmpg-double v3, v3, v5

    .line 304
    .line 305
    if-gez v3, :cond_e

    .line 306
    .line 307
    move v3, v10

    .line 308
    goto :goto_b

    .line 309
    :cond_e
    move v3, v11

    .line 310
    :goto_b
    if-eqz v1, :cond_f

    .line 311
    .line 312
    if-eqz v2, :cond_f

    .line 313
    .line 314
    if-eqz v3, :cond_f

    .line 315
    .line 316
    goto :goto_c

    .line 317
    :cond_f
    move v10, v11

    .line 318
    :goto_c
    if-eqz v10, :cond_10

    .line 319
    .line 320
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 321
    .line 322
    iget-wide v3, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 323
    .line 324
    const-wide v5, 0x4051800000000000L    # 70.0

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :cond_10
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 334
    .line 335
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    :goto_d
    return-object v0

    .line 340
    :pswitch_c
    move-object/from16 v0, p1

    .line 341
    .line 342
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 343
    .line 344
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 345
    .line 346
    return-object v0

    .line 347
    :pswitch_d
    move-object/from16 v0, p1

    .line 348
    .line 349
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 350
    .line 351
    iget-object v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 352
    .line 353
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 354
    .line 355
    if-ne v1, v2, :cond_11

    .line 356
    .line 357
    goto :goto_e

    .line 358
    :cond_11
    move v10, v11

    .line 359
    :goto_e
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 360
    .line 361
    if-eqz v10, :cond_13

    .line 362
    .line 363
    if-eqz v0, :cond_12

    .line 364
    .line 365
    goto :goto_f

    .line 366
    :cond_12
    move-wide/from16 v12, v16

    .line 367
    .line 368
    :goto_f
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    goto :goto_11

    .line 373
    :cond_13
    if-eqz v0, :cond_14

    .line 374
    .line 375
    goto :goto_10

    .line 376
    :cond_14
    move-wide v3, v8

    .line 377
    :goto_10
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_11
    return-object v0

    .line 382
    :pswitch_e
    move-object/from16 v0, p1

    .line 383
    .line 384
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 387
    .line 388
    return-object v0

    .line 389
    :pswitch_f
    move-object/from16 v0, p1

    .line 390
    .line 391
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 392
    .line 393
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 394
    .line 395
    if-eqz v0, :cond_15

    .line 396
    .line 397
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 398
    .line 399
    goto :goto_12

    .line 400
    :cond_15
    const-wide v0, 0x4055c00000000000L    # 87.0

    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :goto_12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    return-object v0

    .line 410
    :pswitch_10
    move-object/from16 v0, p1

    .line 411
    .line 412
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 413
    .line 414
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 415
    .line 416
    return-object v0

    .line 417
    :pswitch_11
    move-object/from16 v0, p1

    .line 418
    .line 419
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 420
    .line 421
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 422
    .line 423
    if-eqz v0, :cond_16

    .line 424
    .line 425
    goto :goto_13

    .line 426
    :cond_16
    move-wide v5, v14

    .line 427
    :goto_13
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    return-object v0

    .line 432
    :pswitch_12
    move-object/from16 v0, p1

    .line 433
    .line 434
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 435
    .line 436
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 437
    .line 438
    return-object v0

    .line 439
    :pswitch_13
    move-object/from16 v1, p1

    .line 440
    .line 441
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 442
    .line 443
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 444
    .line 445
    const/16 v0, 0x17

    .line 446
    .line 447
    invoke-direct {v2, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 448
    .line 449
    .line 450
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 451
    .line 452
    const/4 v0, 0x2

    .line 453
    invoke-direct {v3, v1, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 454
    .line 455
    .line 456
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;

    .line 457
    .line 458
    invoke-direct {v4, v7, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;)V

    .line 459
    .line 460
    .line 461
    const/4 v7, 0x0

    .line 462
    const/4 v8, 0x0

    .line 463
    const/4 v6, 0x0

    .line 464
    move-object v5, v6

    .line 465
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 466
    .line 467
    .line 468
    move-result-wide v0

    .line 469
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    return-object v0

    .line 474
    :pswitch_14
    move-object/from16 v1, p1

    .line 475
    .line 476
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 477
    .line 478
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 479
    .line 480
    const/16 v0, 0x18

    .line 481
    .line 482
    invoke-direct {v2, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 483
    .line 484
    .line 485
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 486
    .line 487
    invoke-direct {v3, v1, v10}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 488
    .line 489
    .line 490
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;

    .line 491
    .line 492
    invoke-direct {v4, v2, v1, v7}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;)V

    .line 493
    .line 494
    .line 495
    const/4 v7, 0x0

    .line 496
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda6;

    .line 497
    .line 498
    invoke-direct {v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda6;-><init>()V

    .line 499
    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    move-object v5, v6

    .line 503
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 504
    .line 505
    .line 506
    move-result-wide v0

    .line 507
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    return-object v0

    .line 512
    :pswitch_15
    move-object/from16 v0, p1

    .line 513
    .line 514
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 515
    .line 516
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 517
    .line 518
    if-eqz v0, :cond_17

    .line 519
    .line 520
    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    goto :goto_14

    .line 526
    :cond_17
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    return-object v0

    .line 536
    :pswitch_16
    move-object/from16 v0, p1

    .line 537
    .line 538
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 539
    .line 540
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 541
    .line 542
    if-eqz v0, :cond_18

    .line 543
    .line 544
    goto :goto_15

    .line 545
    :cond_18
    move-wide/from16 v12, v16

    .line 546
    .line 547
    :goto_15
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    return-object v0

    .line 552
    :pswitch_17
    move-object/from16 v0, p1

    .line 553
    .line 554
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 555
    .line 556
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    return-object v0

    .line 561
    :goto_16
    move-object/from16 v0, p1

    .line 562
    .line 563
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 564
    .line 565
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 566
    .line 567
    if-eqz v0, :cond_19

    .line 568
    .line 569
    goto :goto_17

    .line 570
    :cond_19
    move-wide/from16 v12, v16

    .line 571
    .line 572
    :goto_17
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    return-object v0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
.end method
