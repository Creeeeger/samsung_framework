.class public final Lcom/android/systemui/popup/view/SimTrayProtectionDialog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field public mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBodyLayout:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public mDialog:Landroid/app/AlertDialog;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mDisplayWidth:I

.field public final mGlobalLayoutListener:Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;IZI)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;-><init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V

    .line 15
    .line 16
    .line 17
    iput-object v4, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object v2, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 22
    .line 23
    new-instance v5, Lcom/android/systemui/popup/data/SimTrayProtectionData;

    .line 24
    .line 25
    invoke-direct {v5, v1}, Lcom/android/systemui/popup/data/SimTrayProtectionData;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    sget-boolean v7, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    const v8, 0x7f131073

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const v8, 0x7f131072

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    sget-boolean v8, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x1

    .line 51
    const-class v11, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 52
    .line 53
    if-eqz v8, :cond_1

    .line 54
    .line 55
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 60
    .line 61
    iget-boolean v8, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 62
    .line 63
    if-nez v8, :cond_1

    .line 64
    .line 65
    move v8, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v8, v9

    .line 68
    :goto_1
    new-instance v12, Landroid/view/ContextThemeWrapper;

    .line 69
    .line 70
    const v13, 0x7f14056c

    .line 71
    .line 72
    .line 73
    invoke-direct {v12, v1, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    const v14, 0x7f0d0404

    .line 81
    .line 82
    .line 83
    const/4 v15, 0x0

    .line 84
    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    const v14, 0x7f0a0a3c

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    check-cast v14, Landroid/widget/LinearLayout;

    .line 96
    .line 97
    iput-object v14, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    invoke-virtual {v14, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 104
    .line 105
    .line 106
    const v4, 0x7f0a0a3b

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    .line 114
    .line 115
    iput-object v4, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    sget-boolean v16, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_TYPE:Z

    .line 126
    .line 127
    if-eqz v16, :cond_2

    .line 128
    .line 129
    sget-boolean v17, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

    .line 130
    .line 131
    if-nez v17, :cond_2

    .line 132
    .line 133
    move/from16 v17, v10

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    move/from16 v17, v9

    .line 137
    .line 138
    :goto_2
    if-eqz v17, :cond_3

    .line 139
    .line 140
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    check-cast v11, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 145
    .line 146
    iget-boolean v11, v11, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 147
    .line 148
    if-nez v11, :cond_3

    .line 149
    .line 150
    const v11, 0x7f0711c0

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    if-ne v3, v10, :cond_4

    .line 155
    .line 156
    sget-boolean v11, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    .line 157
    .line 158
    if-eqz v11, :cond_4

    .line 159
    .line 160
    const v11, 0x7f0711c1

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    const v11, 0x7f0711bf

    .line 165
    .line 166
    .line 167
    :goto_3
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    .line 173
    if-eqz v16, :cond_5

    .line 174
    .line 175
    sget-boolean v4, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

    .line 176
    .line 177
    if-nez v4, :cond_5

    .line 178
    .line 179
    move v4, v10

    .line 180
    goto :goto_4

    .line 181
    :cond_5
    move v4, v9

    .line 182
    :goto_4
    if-eqz v4, :cond_6

    .line 183
    .line 184
    const v4, 0x7f0810ea

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_6
    if-eq v3, v10, :cond_8

    .line 189
    .line 190
    if-nez v16, :cond_8

    .line 191
    .line 192
    sget-boolean v4, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FOLD_TYPE:Z

    .line 193
    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    const v4, 0x7f0810eb

    .line 198
    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_8
    :goto_5
    const v4, 0x7f0810e8

    .line 202
    .line 203
    .line 204
    :goto_6
    if-nez v4, :cond_9

    .line 205
    .line 206
    const-string v11, ""

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    :goto_7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const-string v14, "drawable"

    .line 221
    .line 222
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    const-string v13, "SimTrayProtectionDialog"

    .line 227
    .line 228
    if-nez v14, :cond_b

    .line 229
    .line 230
    const-string/jumbo v14, "raw"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-nez v11, :cond_a

    .line 238
    .line 239
    const-string v4, "Unknown resource type"

    .line 240
    .line 241
    invoke-virtual {v2, v13, v4}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_a
    iget-object v2, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 246
    .line 247
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object v2, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 257
    .line 258
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    invoke-virtual {v11, v4, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    .line 273
    .line 274
    :goto_8
    const v2, 0x7f0a0a3e

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Landroid/widget/TextView;

    .line 282
    .line 283
    const/16 v4, 0x8

    .line 284
    .line 285
    move/from16 v11, p3

    .line 286
    .line 287
    if-ne v11, v10, :cond_c

    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    const v14, 0x7f13106f

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_c
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    :goto_9
    const v11, 0x7f0a0a3f

    .line 308
    .line 309
    .line 310
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    check-cast v11, Landroid/widget/TextView;

    .line 315
    .line 316
    move/from16 v14, p4

    .line 317
    .line 318
    if-ne v14, v10, :cond_e

    .line 319
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 321
    .line 322
    .line 323
    move-result-object v14

    .line 324
    if-eqz v7, :cond_d

    .line 325
    .line 326
    const v7, 0x7f131071

    .line 327
    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_d
    const v7, 0x7f131070

    .line 331
    .line 332
    .line 333
    :goto_a
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_e
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    :goto_b
    const v7, 0x7f0a0a3d

    .line 345
    .line 346
    .line 347
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    check-cast v7, Landroid/widget/TextView;

    .line 352
    .line 353
    if-nez v3, :cond_f

    .line 354
    .line 355
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    goto :goto_f

    .line 359
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    iget-object v5, v5, Lcom/android/systemui/popup/data/SimTrayProtectionData;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    const v14, 0x7f05000f

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-eqz v5, :cond_10

    .line 377
    .line 378
    const v3, 0x7f13106a

    .line 379
    .line 380
    .line 381
    goto :goto_e

    .line 382
    :cond_10
    sget-boolean v5, Lcom/android/systemui/BasicRune;->POPUPUI_MODEL_TYPE_WINNER:Z

    .line 383
    .line 384
    if-nez v5, :cond_17

    .line 385
    .line 386
    sget-boolean v5, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

    .line 387
    .line 388
    if-eqz v5, :cond_11

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_11
    sget-boolean v5, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FOLD_TYPE:Z

    .line 392
    .line 393
    if-eqz v5, :cond_12

    .line 394
    .line 395
    const v3, 0x7f13106c

    .line 396
    .line 397
    .line 398
    goto :goto_e

    .line 399
    :cond_12
    if-eqz v16, :cond_13

    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_13
    if-ne v3, v10, :cond_15

    .line 403
    .line 404
    sget-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    .line 405
    .line 406
    if-eqz v3, :cond_14

    .line 407
    .line 408
    :goto_c
    const v3, 0x7f13106d

    .line 409
    .line 410
    .line 411
    goto :goto_e

    .line 412
    :cond_14
    const v3, 0x7f13106e

    .line 413
    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_15
    sget-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    .line 417
    .line 418
    if-eqz v3, :cond_16

    .line 419
    .line 420
    const v3, 0x7f131068

    .line 421
    .line 422
    .line 423
    goto :goto_e

    .line 424
    :cond_16
    const v3, 0x7f131069

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_17
    :goto_d
    const v3, 0x7f13106b

    .line 429
    .line 430
    .line 431
    :goto_e
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    :goto_f
    sget-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    .line 439
    .line 440
    if-eqz v3, :cond_19

    .line 441
    .line 442
    if-eqz v8, :cond_19

    .line 443
    .line 444
    filled-new-array {v7, v11, v2}, [Landroid/widget/TextView;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    :goto_10
    const/4 v3, 0x3

    .line 449
    if-ge v9, v3, :cond_19

    .line 450
    .line 451
    aget-object v3, v2, v9

    .line 452
    .line 453
    if-nez v3, :cond_18

    .line 454
    .line 455
    goto :goto_11

    .line 456
    :cond_18
    const v4, 0x3f666666    # 0.9f

    .line 457
    .line 458
    .line 459
    const v5, 0x3fa66666    # 1.3f

    .line 460
    .line 461
    .line 462
    const v7, 0x7f0712f0

    .line 463
    .line 464
    .line 465
    invoke-static {v3, v7, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 466
    .line 467
    .line 468
    :goto_11
    add-int/lit8 v9, v9, 0x1

    .line 469
    .line 470
    goto :goto_10

    .line 471
    :cond_19
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 472
    .line 473
    const v3, 0x7f14056c

    .line 474
    .line 475
    .line 476
    invoke-direct {v2, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 483
    .line 484
    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const v3, 0x7f131331

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v2, v1, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    .line 498
    .line 499
    new-instance v1, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$$ExternalSyntheticLambda0;

    .line 500
    .line 501
    invoke-direct {v1, v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v2, v13}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    sget-boolean v2, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    .line 523
    .line 524
    if-eqz v2, :cond_1a

    .line 525
    .line 526
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    const/16 v3, 0x7e1

    .line 531
    .line 532
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 533
    .line 534
    .line 535
    goto :goto_12

    .line 536
    :cond_1a
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    const/16 v3, 0x7d9

    .line 541
    .line 542
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 543
    .line 544
    .line 545
    :goto_12
    iput-object v1, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 546
    .line 547
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mGlobalLayoutListener:Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final show()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v0, "SimTrayProtectionDialog"

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method
