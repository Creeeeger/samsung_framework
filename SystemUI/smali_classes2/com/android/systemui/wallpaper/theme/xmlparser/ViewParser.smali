.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    .line 12
    .line 13
    if-eqz v2, :cond_17

    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 23
    .line 24
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-boolean v4, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x4

    .line 40
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string/jumbo v7, "parseAttribute: ["

    .line 49
    .line 50
    .line 51
    const-string v8, " , "

    .line 52
    .line 53
    const-string v9, "] , ["

    .line 54
    .line 55
    invoke-static {v7, v5, v8, v6, v9}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget v9, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    .line 60
    .line 61
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v8, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v8, "]"

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const-string v8, "ViewParser"

    .line 82
    .line 83
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget v7, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    .line 91
    .line 92
    sub-float/2addr v5, v7

    .line 93
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    .line 99
    cmpg-float v5, v5, v7

    .line 100
    .line 101
    if-gez v5, :cond_2

    .line 102
    .line 103
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iget v6, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    .line 108
    .line 109
    sub-float/2addr v5, v6

    .line 110
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    cmpg-float v5, v5, v7

    .line 115
    .line 116
    if-gez v5, :cond_2

    .line 117
    .line 118
    const/4 v5, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v5, 0x0

    .line 121
    :goto_0
    const-string/jumbo v6, "parseAttribute: isWallpaperView : "

    .line 122
    .line 123
    .line 124
    invoke-static {v6, v5, v8}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-boolean v5, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    :goto_1
    if-ge v6, v3, :cond_1a

    .line 131
    .line 132
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-nez v10, :cond_15

    .line 149
    .line 150
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_3

    .line 155
    .line 156
    goto/16 :goto_8

    .line 157
    .line 158
    :cond_3
    const-string v10, ""

    .line 159
    .line 160
    const-string v11, "=\""

    .line 161
    .line 162
    const-string v12, "\" "

    .line 163
    .line 164
    invoke-static {v10, v7, v11, v9, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    const-string v10, "img"

    .line 172
    .line 173
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_a

    .line 178
    .line 179
    const-string v7, "drawable"

    .line 180
    .line 181
    iget-object v10, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v11, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    .line 184
    .line 185
    invoke-virtual {v11, v9, v7, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    if-nez v7, :cond_4

    .line 194
    .line 195
    goto/16 :goto_8

    .line 196
    .line 197
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-nez v4, :cond_6

    .line 206
    .line 207
    if-eqz v5, :cond_6

    .line 208
    .line 209
    iget v11, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 210
    .line 211
    iget v12, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 212
    .line 213
    mul-float/2addr v11, v12

    .line 214
    iget v13, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    .line 215
    .line 216
    mul-float/2addr v13, v12

    .line 217
    int-to-float v12, v9

    .line 218
    mul-float v14, v12, v13

    .line 219
    .line 220
    int-to-float v15, v10

    .line 221
    mul-float v16, v11, v15

    .line 222
    .line 223
    cmpl-float v14, v14, v16

    .line 224
    .line 225
    if-lez v14, :cond_5

    .line 226
    .line 227
    div-float v14, v13, v15

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_5
    div-float v14, v11, v12

    .line 231
    .line 232
    :goto_2
    mul-float/2addr v12, v14

    .line 233
    sub-float v12, v11, v12

    .line 234
    .line 235
    const/high16 v16, 0x3f000000    # 0.5f

    .line 236
    .line 237
    mul-float v12, v12, v16

    .line 238
    .line 239
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    int-to-float v12, v12

    .line 244
    mul-float/2addr v15, v14

    .line 245
    sub-float v15, v13, v15

    .line 246
    .line 247
    mul-float v15, v15, v16

    .line 248
    .line 249
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    int-to-float v15, v15

    .line 254
    iput v14, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    .line 255
    .line 256
    iput v12, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 257
    .line 258
    iput v15, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 259
    .line 260
    move-object/from16 v16, v1

    .line 261
    .line 262
    const/4 v1, 0x1

    .line 263
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    .line 264
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    move/from16 p0, v3

    .line 268
    .line 269
    const-string v3, "drawableWidth = "

    .line 270
    .line 271
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v3, "drawableHeight = "

    .line 287
    .line 288
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string/jumbo v3, "viewWidth = "

    .line 304
    .line 305
    .line 306
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string/jumbo v3, "viewHeight = "

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string/jumbo v3, "scaledRatio = "

    .line 340
    .line 341
    .line 342
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string/jumbo v3, "scaledDx = "

    .line 358
    .line 359
    .line 360
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string/jumbo v3, "scaledDy = "

    .line 376
    .line 377
    .line 378
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v15, v8}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_6
    move-object/from16 v16, v1

    .line 386
    .line 387
    move/from16 p0, v3

    .line 388
    .line 389
    :goto_3
    if-eqz v5, :cond_8

    .line 390
    .line 391
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 392
    .line 393
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 394
    .line 395
    .line 396
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    .line 397
    .line 398
    if-nez v1, :cond_9

    .line 399
    .line 400
    if-nez v4, :cond_9

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 403
    .line 404
    if-eqz v1, :cond_9

    .line 405
    .line 406
    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 407
    .line 408
    instance-of v3, v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 409
    .line 410
    if-eqz v3, :cond_7

    .line 411
    .line 412
    move-object v3, v7

    .line 413
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 414
    .line 415
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    goto :goto_4

    .line 420
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 425
    .line 426
    .line 427
    move-result v9

    .line 428
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 429
    .line 430
    invoke-static {v3, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    new-instance v9, Landroid/graphics/Canvas;

    .line 435
    .line 436
    invoke-direct {v9, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    const/4 v12, 0x0

    .line 448
    invoke-virtual {v7, v12, v12, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 452
    .line 453
    .line 454
    :goto_4
    invoke-interface {v1, v3}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;)V

    .line 455
    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 459
    .line 460
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 461
    .line 462
    .line 463
    :cond_9
    :goto_5
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_9

    .line 467
    .line 468
    :cond_a
    move-object/from16 v16, v1

    .line 469
    .line 470
    move/from16 p0, v3

    .line 471
    .line 472
    const-string/jumbo v1, "x"

    .line 473
    .line 474
    .line 475
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_b

    .line 480
    .line 481
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 490
    .line 491
    add-float/2addr v1, v3

    .line 492
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_9

    .line 496
    .line 497
    :cond_b
    const-string/jumbo v1, "y"

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-eqz v1, :cond_c

    .line 505
    .line 506
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 515
    .line 516
    add-float/2addr v1, v3

    .line 517
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_9

    .line 521
    .line 522
    :cond_c
    const-string/jumbo v1, "width"

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_d

    .line 530
    .line 531
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    float-to-int v1, v1

    .line 540
    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    .line 541
    .line 542
    goto/16 :goto_9

    .line 543
    .line 544
    :cond_d
    const-string v1, "height"

    .line 545
    .line 546
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-eqz v1, :cond_e

    .line 551
    .line 552
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    float-to-int v1, v1

    .line 561
    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    .line 562
    .line 563
    goto/16 :goto_9

    .line 564
    .line 565
    :cond_e
    const-string/jumbo v1, "pivotX"

    .line 566
    .line 567
    .line 568
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_10

    .line 573
    .line 574
    if-eqz v5, :cond_f

    .line 575
    .line 576
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 585
    .line 586
    add-float/2addr v1, v3

    .line 587
    goto :goto_6

    .line 588
    :cond_f
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 597
    .line 598
    .line 599
    goto :goto_9

    .line 600
    :cond_10
    const-string/jumbo v1, "pivotY"

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_12

    .line 608
    .line 609
    if-eqz v5, :cond_11

    .line 610
    .line 611
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    .line 620
    .line 621
    add-float/2addr v1, v3

    .line 622
    goto :goto_7

    .line 623
    :cond_11
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 632
    .line 633
    .line 634
    goto :goto_9

    .line 635
    :cond_12
    const-string v1, "alpha"

    .line 636
    .line 637
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_13

    .line 642
    .line 643
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 648
    .line 649
    .line 650
    goto :goto_9

    .line 651
    :cond_13
    const-string/jumbo v1, "scaleX"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_14

    .line 659
    .line 660
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 669
    .line 670
    .line 671
    goto :goto_9

    .line 672
    :cond_14
    const-string/jumbo v1, "scaleY"

    .line 673
    .line 674
    .line 675
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_16

    .line 680
    .line 681
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 690
    .line 691
    .line 692
    goto :goto_9

    .line 693
    :cond_15
    :goto_8
    move-object/from16 v16, v1

    .line 694
    .line 695
    move/from16 p0, v3

    .line 696
    .line 697
    :cond_16
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 698
    .line 699
    move/from16 v3, p0

    .line 700
    .line 701
    move-object/from16 v1, v16

    .line 702
    .line 703
    goto/16 :goto_1

    .line 704
    .line 705
    :cond_17
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 706
    .line 707
    if-eqz v1, :cond_1a

    .line 708
    .line 709
    iget-object v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    .line 710
    .line 711
    if-nez v2, :cond_18

    .line 712
    .line 713
    goto :goto_a

    .line 714
    :cond_18
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    .line 715
    .line 716
    if-eqz v3, :cond_19

    .line 717
    .line 718
    const/4 v3, 0x0

    .line 719
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 723
    .line 724
    .line 725
    const/4 v3, -0x1

    .line 726
    iput v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    .line 727
    .line 728
    iput v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    .line 729
    .line 730
    :cond_19
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    .line 731
    .line 732
    iget v4, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    .line 733
    .line 734
    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 735
    .line 736
    .line 737
    const/4 v1, -0x2

    .line 738
    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    .line 739
    .line 740
    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    .line 741
    .line 742
    :cond_1a
    :goto_a
    return-void
.end method
