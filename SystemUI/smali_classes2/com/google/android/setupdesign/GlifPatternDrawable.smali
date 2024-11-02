.class public final Lcom/google/android/setupdesign/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static bitmapCache:Ljava/lang/ref/SoftReference;

.field public static patternLightness:[I

.field public static patternPaths:[Landroid/graphics/Path;


# instance fields
.field public color:I

.field public final tempPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v2, 0xcc

    .line 25
    .line 26
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->color:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static invalidatePattern()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    const v2, 0x44aac000    # 1366.0f

    .line 7
    .line 8
    .line 9
    div-float/2addr v1, v2

    .line 10
    move/from16 v3, p2

    .line 11
    .line 12
    int-to-float v3, v3

    .line 13
    const/high16 v4, 0x44400000    # 768.0f

    .line 14
    .line 15
    div-float/2addr v3, v4

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 21
    .line 22
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    mul-float v3, v1, v2

    .line 27
    .line 28
    float-to-int v3, v3

    .line 29
    mul-float v5, v1, v4

    .line 30
    .line 31
    float-to-int v5, v5

    .line 32
    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 33
    .line 34
    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v5, Landroid/graphics/Canvas;

    .line 39
    .line 40
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 50
    .line 51
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 52
    .line 53
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 54
    .line 55
    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x7

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    new-array v1, v7, [Landroid/graphics/Path;

    .line 68
    .line 69
    sput-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 70
    .line 71
    new-array v8, v7, [I

    .line 72
    .line 73
    fill-array-data v8, :array_0

    .line 74
    .line 75
    .line 76
    sput-object v8, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternLightness:[I

    .line 77
    .line 78
    new-instance v8, Landroid/graphics/Path;

    .line 79
    .line 80
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 81
    .line 82
    .line 83
    aput-object v8, v1, v6

    .line 84
    .line 85
    const v1, 0x4480accd    # 1029.4f

    .line 86
    .line 87
    .line 88
    const v9, 0x43b2c000    # 357.5f

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    .line 93
    .line 94
    const v1, 0x443dc666    # 759.1f

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    .line 103
    .line 104
    const v2, 0x448e3666    # 1137.7f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 111
    .line 112
    .line 113
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 114
    .line 115
    new-instance v15, Landroid/graphics/Path;

    .line 116
    .line 117
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 118
    .line 119
    .line 120
    const/4 v8, 0x1

    .line 121
    aput-object v15, v2, v8

    .line 122
    .line 123
    const v2, 0x448e4333    # 1138.1f

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    .line 128
    .line 129
    const v2, -0x3cef3333    # -144.8f

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 133
    .line 134
    .line 135
    const v2, 0x43ba599a    # 372.7f

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 139
    .line 140
    .line 141
    const/high16 v2, -0x3bfd0000    # -524.0f

    .line 142
    .line 143
    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 144
    .line 145
    .line 146
    const v9, 0x44a15666    # 1290.7f

    .line 147
    .line 148
    .line 149
    const v10, 0x42f33333    # 121.6f

    .line 150
    .line 151
    .line 152
    const v11, 0x44986666    # 1219.2f

    .line 153
    .line 154
    .line 155
    const v12, 0x42246666    # 41.1f

    .line 156
    .line 157
    .line 158
    const v13, 0x44935666    # 1178.7f

    .line 159
    .line 160
    .line 161
    const/4 v14, 0x0

    .line 162
    move-object v8, v15

    .line 163
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 167
    .line 168
    .line 169
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 170
    .line 171
    new-instance v15, Landroid/graphics/Path;

    .line 172
    .line 173
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 174
    .line 175
    .line 176
    const/4 v8, 0x2

    .line 177
    aput-object v15, v2, v8

    .line 178
    .line 179
    const v2, 0x446d7333    # 949.8f

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    .line 184
    .line 185
    const v9, 0x42b93333    # 92.6f

    .line 186
    .line 187
    .line 188
    const v10, -0x3cd56666    # -170.6f

    .line 189
    .line 190
    .line 191
    const/high16 v11, 0x43550000    # 213.0f

    .line 192
    .line 193
    const v12, -0x3c23d99a    # -440.3f

    .line 194
    .line 195
    .line 196
    const v13, 0x4386b333    # 269.4f

    .line 197
    .line 198
    .line 199
    const/high16 v14, -0x3bc00000    # -768.0f

    .line 200
    .line 201
    move-object v8, v15

    .line 202
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 203
    .line 204
    .line 205
    const v2, 0x44124000    # 585.0f

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    .line 210
    .line 211
    const v2, 0x40066666    # 2.1f

    .line 212
    .line 213
    .line 214
    const v8, 0x443f8000    # 766.0f

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 221
    .line 222
    .line 223
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 224
    .line 225
    new-instance v15, Landroid/graphics/Path;

    .line 226
    .line 227
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 228
    .line 229
    .line 230
    const/4 v8, 0x3

    .line 231
    aput-object v15, v2, v8

    .line 232
    .line 233
    const v2, 0x43eb8ccd    # 471.1f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    .line 238
    .line 239
    const v2, 0x44302000    # 704.5f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 243
    .line 244
    .line 245
    const v9, 0x448c7333    # 1123.6f

    .line 246
    .line 247
    .line 248
    const v10, 0x440cd333    # 563.3f

    .line 249
    .line 250
    .line 251
    const v11, 0x44806ccd    # 1027.4f

    .line 252
    .line 253
    .line 254
    const v12, 0x4389999a    # 275.2f

    .line 255
    .line 256
    .line 257
    const v13, 0x44560ccd    # 856.2f

    .line 258
    .line 259
    .line 260
    const/4 v14, 0x0

    .line 261
    move-object v8, v15

    .line 262
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 263
    .line 264
    .line 265
    const v2, 0x43ee3333    # 476.4f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    .line 270
    .line 271
    const v2, -0x3f566666    # -5.3f

    .line 272
    .line 273
    .line 274
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 278
    .line 279
    .line 280
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 281
    .line 282
    new-instance v15, Landroid/graphics/Path;

    .line 283
    .line 284
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 285
    .line 286
    .line 287
    const/4 v8, 0x4

    .line 288
    aput-object v15, v2, v8

    .line 289
    .line 290
    const v2, 0x43a18ccd    # 323.1f

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 294
    .line 295
    .line 296
    const v8, 0x44426000    # 777.5f

    .line 297
    .line 298
    .line 299
    invoke-virtual {v15, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    .line 301
    .line 302
    const v9, 0x4425799a    # 661.9f

    .line 303
    .line 304
    .line 305
    const v10, 0x43ae6666    # 348.8f

    .line 306
    .line 307
    .line 308
    const v11, 0x43d5999a    # 427.2f

    .line 309
    .line 310
    .line 311
    const v12, 0x41ab3333    # 21.4f

    .line 312
    .line 313
    .line 314
    const v13, 0x43c8999a    # 401.2f

    .line 315
    .line 316
    .line 317
    const v14, 0x41cb3333    # 25.4f

    .line 318
    .line 319
    .line 320
    move-object v8, v15

    .line 321
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 328
    .line 329
    .line 330
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 331
    .line 332
    new-instance v15, Landroid/graphics/Path;

    .line 333
    .line 334
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 335
    .line 336
    .line 337
    const/4 v8, 0x5

    .line 338
    aput-object v15, v2, v8

    .line 339
    .line 340
    const v2, 0x4332715f

    .line 341
    .line 342
    .line 343
    const v8, 0x443fb6db

    .line 344
    .line 345
    .line 346
    invoke-virtual {v15, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 347
    .line 348
    .line 349
    const v2, 0x439a599a    # 308.7f

    .line 350
    .line 351
    .line 352
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 353
    .line 354
    .line 355
    const v9, 0x43bed99a    # 381.7f

    .line 356
    .line 357
    .line 358
    const v10, 0x44172666    # 604.6f

    .line 359
    .line 360
    .line 361
    const v11, 0x43f0cccd    # 481.6f

    .line 362
    .line 363
    .line 364
    const v12, 0x43ac2666    # 344.3f

    .line 365
    .line 366
    .line 367
    const v13, 0x440c8ccd    # 562.2f

    .line 368
    .line 369
    .line 370
    const/16 v22, 0x0

    .line 371
    .line 372
    const/4 v14, 0x0

    .line 373
    move-object v8, v15

    .line 374
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v15, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 381
    .line 382
    .line 383
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 384
    .line 385
    new-instance v8, Landroid/graphics/Path;

    .line 386
    .line 387
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 388
    .line 389
    .line 390
    const/4 v9, 0x6

    .line 391
    aput-object v8, v2, v9

    .line 392
    .line 393
    const/high16 v2, 0x43120000    # 146.0f

    .line 394
    .line 395
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    .line 403
    .line 404
    const v1, 0x43c5199a    # 394.2f

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    .line 409
    .line 410
    const v17, 0x43a3d99a    # 327.7f

    .line 411
    .line 412
    .line 413
    const v18, 0x43eda666    # 475.3f

    .line 414
    .line 415
    .line 416
    const v19, 0x43648000    # 228.5f

    .line 417
    .line 418
    .line 419
    const/high16 v20, 0x43490000    # 201.0f

    .line 420
    .line 421
    const/high16 v21, 0x43120000    # 146.0f

    .line 422
    .line 423
    move-object/from16 v16, v8

    .line 424
    .line 425
    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 429
    .line 430
    .line 431
    :cond_0
    :goto_0
    if-ge v6, v7, :cond_1

    .line 432
    .line 433
    iget-object v1, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 434
    .line 435
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternLightness:[I

    .line 436
    .line 437
    aget v2, v2, v6

    .line 438
    .line 439
    shl-int/lit8 v2, v2, 0x18

    .line 440
    .line 441
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    .line 443
    .line 444
    sget-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 445
    .line 446
    aget-object v1, v1, v6

    .line 447
    .line 448
    iget-object v2, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 449
    .line 450
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 451
    .line 452
    .line 453
    add-int/lit8 v6, v6, 0x1

    .line 454
    .line 455
    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 457
    .line 458
    .line 459
    iget-object v0, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 462
    .line 463
    .line 464
    return-object v3

    .line 465
    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object v3, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/graphics/Bitmap;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v4

    .line 26
    :goto_0
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-le v1, v5, :cond_1

    .line 37
    .line 38
    int-to-float v5, v5

    .line 39
    const v7, 0x45001000    # 2049.0f

    .line 40
    .line 41
    .line 42
    cmpg-float v5, v5, v7

    .line 43
    .line 44
    if-gez v5, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-le v2, v6, :cond_2

    .line 48
    .line 49
    int-to-float v5, v6

    .line 50
    const/high16 v6, 0x44900000    # 1152.0f

    .line 51
    .line 52
    cmpg-float v5, v5, v6

    .line 53
    .line 54
    if-gez v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v4, v3

    .line 58
    :goto_1
    if-nez v4, :cond_3

    .line 59
    .line 60
    iget-object v3, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, v2}, Lcom/google/android/setupdesign/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 70
    .line 71
    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/setupdesign/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 88
    .line 89
    .line 90
    const/high16 v0, -0x1000000

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 96
    .line 97
    const/4 v1, -0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    iget p0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->color:I

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    int-to-float p0, p0

    .line 15
    div-float/2addr v0, p0

    .line 16
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    int-to-float p3, p3

    .line 21
    int-to-float p2, p2

    .line 22
    div-float/2addr p3, p2

    .line 23
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 24
    .line 25
    .line 26
    cmpl-float v1, p3, v0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    div-float/2addr p3, v0

    .line 34
    const p2, 0x3e158106    # 0.146f

    .line 35
    .line 36
    .line 37
    mul-float/2addr p0, p2

    .line 38
    invoke-virtual {p1, p3, v3, p0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    cmpl-float p0, v0, p3

    .line 43
    .line 44
    if-lez p0, :cond_1

    .line 45
    .line 46
    div-float/2addr v0, p3

    .line 47
    const p0, 0x3e6978d5    # 0.228f

    .line 48
    .line 49
    .line 50
    mul-float/2addr p2, p0

    .line 51
    invoke-virtual {p1, v3, v0, v2, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
