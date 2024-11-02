.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    .line 6
    .line 7
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    const-wide/high16 v5, 0x4054000000000000L    # 80.0

    .line 10
    .line 11
    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    .line 12
    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    .line 16
    .line 17
    const-wide v13, 0x4056800000000000L    # 90.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_13

    .line 26
    .line 27
    :pswitch_0
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-wide v11, v13

    .line 37
    :goto_0
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_1
    move-object/from16 v0, p1

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_2
    move-object/from16 v0, p1

    .line 50
    .line 51
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 52
    .line 53
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-wide v1, v3

    .line 59
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :pswitch_3
    move-object/from16 v0, p1

    .line 65
    .line 66
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_4
    move-object/from16 v0, p1

    .line 72
    .line 73
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 76
    .line 77
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 78
    .line 79
    if-ne v0, v1, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v9, v10

    .line 83
    :goto_2
    if-eqz v9, :cond_3

    .line 84
    .line 85
    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    .line 86
    .line 87
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :pswitch_5
    move-object/from16 v0, p1

    .line 93
    .line 94
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_6
    move-object/from16 v0, p1

    .line 100
    .line 101
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 102
    .line 103
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_7
    move-object/from16 v0, p1

    .line 109
    .line 110
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 113
    .line 114
    return-object v0

    .line 115
    :pswitch_8
    move-object/from16 v0, p1

    .line 116
    .line 117
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 118
    .line 119
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 127
    .line 128
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :pswitch_9
    move-object/from16 v0, p1

    .line 134
    .line 135
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 138
    .line 139
    return-object v0

    .line 140
    :pswitch_a
    move-object/from16 v0, p1

    .line 141
    .line 142
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 143
    .line 144
    iget-object v5, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 145
    .line 146
    sget-object v6, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 147
    .line 148
    if-ne v5, v6, :cond_5

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    move v9, v10

    .line 152
    :goto_4
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 153
    .line 154
    if-eqz v9, :cond_7

    .line 155
    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_6
    move-wide v11, v13

    .line 160
    :goto_5
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_7

    .line 165
    :cond_7
    if-eqz v0, :cond_8

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_8
    move-wide v1, v3

    .line 169
    :goto_6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_7
    return-object v0

    .line 174
    :pswitch_b
    move-object/from16 v0, p1

    .line 175
    .line 176
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 179
    .line 180
    return-object v0

    .line 181
    :pswitch_c
    move-object/from16 v0, p1

    .line 182
    .line 183
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 184
    .line 185
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 186
    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    move-wide v11, v13

    .line 190
    :cond_9
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :pswitch_d
    move-object/from16 v0, p1

    .line 196
    .line 197
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 200
    .line 201
    return-object v0

    .line 202
    :pswitch_e
    move-object/from16 v0, p1

    .line 203
    .line 204
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 209
    .line 210
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 211
    .line 212
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0

    .line 217
    :pswitch_f
    move-object/from16 v0, p1

    .line 218
    .line 219
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_10
    move-object/from16 v0, p1

    .line 225
    .line 226
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 227
    .line 228
    iget-object v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 229
    .line 230
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 231
    .line 232
    if-ne v1, v2, :cond_a

    .line 233
    .line 234
    move v10, v9

    .line 235
    :cond_a
    iget-boolean v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 236
    .line 237
    if-eqz v10, :cond_c

    .line 238
    .line 239
    if-eqz v1, :cond_b

    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_b
    const-wide v7, 0x4055400000000000L    # 85.0

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :goto_8
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto/16 :goto_e

    .line 252
    .line 253
    :cond_c
    if-eqz v1, :cond_d

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_d
    move-wide v7, v13

    .line 257
    :goto_9
    invoke-static {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_e

    .line 262
    .line 263
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    goto/16 :goto_e

    .line 268
    .line 269
    :cond_e
    iget-object v10, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 270
    .line 271
    iget-wide v13, v10, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 272
    .line 273
    iget-wide v11, v10, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 274
    .line 275
    xor-int/2addr v9, v1

    .line 276
    move-wide v1, v13

    .line 277
    move-wide v3, v11

    .line 278
    move-wide v5, v7

    .line 279
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-wide v2, v1, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 284
    .line 285
    cmpg-double v4, v2, v11

    .line 286
    .line 287
    if-gez v4, :cond_13

    .line 288
    .line 289
    :goto_a
    iget-wide v4, v1, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 290
    .line 291
    cmpg-double v4, v4, v11

    .line 292
    .line 293
    if-gez v4, :cond_13

    .line 294
    .line 295
    if-eqz v9, :cond_f

    .line 296
    .line 297
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_f
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 301
    .line 302
    :goto_b
    add-double/2addr v7, v4

    .line 303
    move-wide v4, v11

    .line 304
    move-wide v11, v13

    .line 305
    move-wide/from16 v17, v13

    .line 306
    .line 307
    move-wide v13, v4

    .line 308
    move-wide v15, v7

    .line 309
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 314
    .line 315
    cmpl-double v13, v2, v11

    .line 316
    .line 317
    if-lez v13, :cond_10

    .line 318
    .line 319
    goto :goto_c

    .line 320
    :cond_10
    sub-double/2addr v11, v4

    .line 321
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 322
    .line 323
    .line 324
    move-result-wide v11

    .line 325
    const-wide v13, 0x3fd999999999999aL    # 0.4

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    cmpg-double v11, v11, v13

    .line 331
    .line 332
    if-gez v11, :cond_11

    .line 333
    .line 334
    :goto_c
    goto :goto_d

    .line 335
    :cond_11
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 336
    .line 337
    sub-double/2addr v11, v4

    .line 338
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 339
    .line 340
    .line 341
    move-result-wide v11

    .line 342
    iget-wide v13, v1, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 343
    .line 344
    sub-double/2addr v13, v4

    .line 345
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 346
    .line 347
    .line 348
    move-result-wide v13

    .line 349
    cmpg-double v11, v11, v13

    .line 350
    .line 351
    if-gez v11, :cond_12

    .line 352
    .line 353
    move-object v1, v6

    .line 354
    :cond_12
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 355
    .line 356
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 357
    .line 358
    .line 359
    move-result-wide v2

    .line 360
    move-wide v11, v4

    .line 361
    move-wide/from16 v13, v17

    .line 362
    .line 363
    goto :goto_a

    .line 364
    :cond_13
    :goto_d
    move-wide v15, v7

    .line 365
    iget-wide v11, v10, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 366
    .line 367
    iget-wide v13, v10, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 368
    .line 369
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v1, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 374
    .line 375
    .line 376
    move-result-wide v0

    .line 377
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_e
    return-object v0

    .line 382
    :pswitch_11
    move-object/from16 v0, p1

    .line 383
    .line 384
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 387
    .line 388
    return-object v0

    .line 389
    :pswitch_12
    move-object/from16 v0, p1

    .line 390
    .line 391
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 392
    .line 393
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 394
    .line 395
    return-object v0

    .line 396
    :pswitch_13
    move-object/from16 v0, p1

    .line 397
    .line 398
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 399
    .line 400
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 401
    .line 402
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 403
    .line 404
    if-ne v0, v1, :cond_14

    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_14
    move v9, v10

    .line 408
    :goto_f
    if-eqz v9, :cond_15

    .line 409
    .line 410
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    goto :goto_10

    .line 415
    :cond_15
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    :goto_10
    return-object v0

    .line 420
    :pswitch_14
    move-object/from16 v0, p1

    .line 421
    .line 422
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 423
    .line 424
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 425
    .line 426
    return-object v0

    .line 427
    :pswitch_15
    move-object/from16 v0, p1

    .line 428
    .line 429
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 430
    .line 431
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 432
    .line 433
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 434
    .line 435
    if-ne v0, v1, :cond_16

    .line 436
    .line 437
    goto :goto_11

    .line 438
    :cond_16
    move v9, v10

    .line 439
    :goto_11
    if-eqz v9, :cond_17

    .line 440
    .line 441
    const-wide v5, 0x4051800000000000L    # 70.0

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    :cond_17
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :pswitch_16
    move-object/from16 v0, p1

    .line 452
    .line 453
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 456
    .line 457
    return-object v0

    .line 458
    :pswitch_17
    move-object/from16 v0, p1

    .line 459
    .line 460
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 461
    .line 462
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 463
    .line 464
    iget-object v0, v0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 465
    .line 466
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 467
    .line 468
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    return-object v0

    .line 473
    :pswitch_18
    move-object/from16 v0, p1

    .line 474
    .line 475
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 476
    .line 477
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 478
    .line 479
    return-object v0

    .line 480
    :pswitch_19
    move-object/from16 v0, p1

    .line 481
    .line 482
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 483
    .line 484
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 485
    .line 486
    if-eqz v0, :cond_18

    .line 487
    .line 488
    move-wide v5, v7

    .line 489
    :cond_18
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    return-object v0

    .line 494
    :pswitch_1a
    move-object/from16 v0, p1

    .line 495
    .line 496
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 497
    .line 498
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 499
    .line 500
    return-object v0

    .line 501
    :pswitch_1b
    move-object/from16 v0, p1

    .line 502
    .line 503
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 504
    .line 505
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 506
    .line 507
    if-eqz v0, :cond_19

    .line 508
    .line 509
    goto :goto_12

    .line 510
    :cond_19
    move-wide v11, v13

    .line 511
    :goto_12
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    return-object v0

    .line 516
    :pswitch_1c
    move-object/from16 v0, p1

    .line 517
    .line 518
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 519
    .line 520
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 521
    .line 522
    return-object v0

    .line 523
    :goto_13
    move-object/from16 v0, p1

    .line 524
    .line 525
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 526
    .line 527
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 528
    .line 529
    return-object v0

    .line 530
    nop

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
