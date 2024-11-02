.class public final Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(I)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    add-int/lit16 p0, p0, -0xff

    .line 6
    .line 7
    shr-int/lit8 v0, p0, 0x1f

    .line 8
    .line 9
    and-int/2addr p0, v0

    .line 10
    add-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "\""

    .line 6
    .line 7
    const-string v3, " on View \""

    .line 8
    .line 9
    const-string v4, "CustomSupport"

    .line 10
    .line 11
    const-string/jumbo v5, "unable to interpolate strings "

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v8, "set"

    .line 21
    .line 22
    .line 23
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    :try_start_0
    sget-object v8, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 36
    .line 37
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 38
    .line 39
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    aget v8, v8, v9

    .line 44
    .line 45
    const/4 v9, 0x3

    .line 46
    const/4 v10, 0x2

    .line 47
    const-wide v11, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/high16 v13, 0x437f0000    # 255.0f

    .line 53
    .line 54
    const/4 v14, 0x1

    .line 55
    const/4 v15, 0x0

    .line 56
    packed-switch v8, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :pswitch_0
    new-array v0, v14, [Ljava/lang/Class;

    .line 62
    .line 63
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v5, v0, v15

    .line 66
    .line 67
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-array v5, v14, [Ljava/lang/Object;

    .line 72
    .line 73
    aget v6, p2, v15

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    aput-object v6, v5, v15

    .line 80
    .line 81
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :pswitch_1
    new-array v0, v14, [Ljava/lang/Class;

    .line 87
    .line 88
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v5, v0, v15

    .line 91
    .line 92
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-array v5, v14, [Ljava/lang/Object;

    .line 97
    .line 98
    aget v6, p2, v15

    .line 99
    .line 100
    const/high16 v8, 0x3f000000    # 0.5f

    .line 101
    .line 102
    cmpl-float v6, v6, v8

    .line 103
    .line 104
    if-lez v6, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    move v14, v15

    .line 108
    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    aput-object v6, v5, v15

    .line 113
    .line 114
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :pswitch_2
    new-instance v6, Ljava/lang/RuntimeException;

    .line 120
    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v6

    .line 139
    :pswitch_3
    new-array v0, v14, [Ljava/lang/Class;

    .line 140
    .line 141
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 142
    .line 143
    aput-object v5, v0, v15

    .line 144
    .line 145
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    aget v5, p2, v15

    .line 150
    .line 151
    float-to-double v5, v5

    .line 152
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    double-to-float v5, v5

    .line 157
    mul-float/2addr v5, v13

    .line 158
    float-to-int v5, v5

    .line 159
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    aget v6, p2, v14

    .line 164
    .line 165
    float-to-double v14, v6

    .line 166
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 167
    .line 168
    .line 169
    move-result-wide v14

    .line 170
    double-to-float v6, v14

    .line 171
    mul-float/2addr v6, v13

    .line 172
    float-to-int v6, v6

    .line 173
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    aget v8, p2, v10

    .line 178
    .line 179
    float-to-double v14, v8

    .line 180
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    double-to-float v8, v10

    .line 185
    mul-float/2addr v8, v13

    .line 186
    float-to-int v8, v8

    .line 187
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    aget v9, p2, v9

    .line 192
    .line 193
    mul-float/2addr v9, v13

    .line 194
    float-to-int v9, v9

    .line 195
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    shl-int/lit8 v9, v9, 0x18

    .line 200
    .line 201
    shl-int/lit8 v5, v5, 0x10

    .line 202
    .line 203
    or-int/2addr v5, v9

    .line 204
    shl-int/lit8 v6, v6, 0x8

    .line 205
    .line 206
    or-int/2addr v5, v6

    .line 207
    or-int/2addr v5, v8

    .line 208
    const/4 v6, 0x1

    .line 209
    new-array v6, v6, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    const/4 v8, 0x0

    .line 216
    aput-object v5, v6, v8

    .line 217
    .line 218
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :pswitch_4
    new-array v0, v14, [Ljava/lang/Class;

    .line 224
    .line 225
    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    aput-object v5, v0, v8

    .line 229
    .line 230
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    aget v5, p2, v8

    .line 235
    .line 236
    float-to-double v5, v5

    .line 237
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 238
    .line 239
    .line 240
    move-result-wide v5

    .line 241
    double-to-float v5, v5

    .line 242
    mul-float/2addr v5, v13

    .line 243
    float-to-int v5, v5

    .line 244
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    const/4 v6, 0x1

    .line 249
    aget v6, p2, v6

    .line 250
    .line 251
    float-to-double v14, v6

    .line 252
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 253
    .line 254
    .line 255
    move-result-wide v14

    .line 256
    double-to-float v6, v14

    .line 257
    mul-float/2addr v6, v13

    .line 258
    float-to-int v6, v6

    .line 259
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    aget v8, p2, v10

    .line 264
    .line 265
    float-to-double v14, v8

    .line 266
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 267
    .line 268
    .line 269
    move-result-wide v10

    .line 270
    double-to-float v8, v10

    .line 271
    mul-float/2addr v8, v13

    .line 272
    float-to-int v8, v8

    .line 273
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    aget v9, p2, v9

    .line 278
    .line 279
    mul-float/2addr v9, v13

    .line 280
    float-to-int v9, v9

    .line 281
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    shl-int/lit8 v9, v9, 0x18

    .line 286
    .line 287
    shl-int/lit8 v5, v5, 0x10

    .line 288
    .line 289
    or-int/2addr v5, v9

    .line 290
    shl-int/lit8 v6, v6, 0x8

    .line 291
    .line 292
    or-int/2addr v5, v6

    .line 293
    or-int/2addr v5, v8

    .line 294
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 295
    .line 296
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 300
    .line 301
    .line 302
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :pswitch_5
    new-array v0, v14, [Ljava/lang/Class;

    .line 311
    .line 312
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 313
    .line 314
    const/4 v8, 0x0

    .line 315
    aput-object v5, v0, v8

    .line 316
    .line 317
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    new-array v5, v14, [Ljava/lang/Object;

    .line 322
    .line 323
    aget v6, p2, v8

    .line 324
    .line 325
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    aput-object v6, v5, v8

    .line 330
    .line 331
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    goto :goto_1

    .line 335
    :pswitch_6
    new-array v0, v14, [Ljava/lang/Class;

    .line 336
    .line 337
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 338
    .line 339
    const/4 v8, 0x0

    .line 340
    aput-object v5, v0, v8

    .line 341
    .line 342
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-array v5, v14, [Ljava/lang/Object;

    .line 347
    .line 348
    aget v6, p2, v8

    .line 349
    .line 350
    float-to-int v6, v6

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    aput-object v6, v5, v8

    .line 356
    .line 357
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .line 359
    .line 360
    goto :goto_1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 363
    .line 364
    .line 365
    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    .line 367
    const-string v5, "cannot access method "

    .line 368
    .line 369
    invoke-static {v5, v7, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 391
    .line 392
    .line 393
    goto :goto_1

    .line 394
    :catch_2
    move-exception v0

    .line 395
    const-string/jumbo v5, "no method "

    .line 396
    .line 397
    .line 398
    invoke-static {v5, v7, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 420
    .line 421
    .line 422
    :goto_1
    return-void

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
