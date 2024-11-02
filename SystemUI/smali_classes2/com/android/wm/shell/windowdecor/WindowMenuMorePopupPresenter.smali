.class public final Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;
.super Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mButtonSet:[Landroid/view/ViewGroup;

.field public final mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

.field public mFirstButtonId:I

.field public mLastButtonId:I

.field public final mMoreButtons:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;FILcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;Z)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    move-object/from16 v4, p4

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    move/from16 v6, p5

    .line 20
    .line 21
    move/from16 v7, p8

    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View;FZ)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mMoreButtons:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 38
    .line 39
    move/from16 v1, p6

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v0, p7

    .line 45
    .line 46
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 47
    .line 48
    const v0, 0x7f0a0819

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    .line 57
    const v1, 0x7f0a09b1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .line 66
    filled-new-array {v0, v1}, [Landroid/view/ViewGroup;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    iput v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mFirstButtonId:I

    .line 74
    .line 75
    iput v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mLastButtonId:I

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    move v2, v1

    .line 79
    :goto_0
    iget-object v3, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    .line 80
    .line 81
    array-length v4, v3

    .line 82
    iget-object v5, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 83
    .line 84
    iget-boolean v6, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNewDexMode:Z

    .line 85
    .line 86
    iget-object v7, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 87
    .line 88
    iget-object v9, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mMoreButtons:Landroid/util/SparseArray;

    .line 89
    .line 90
    const/4 v10, 0x1

    .line 91
    const v11, 0x7f0a021e

    .line 92
    .line 93
    .line 94
    const/16 v12, 0x8

    .line 95
    .line 96
    if-ge v2, v4, :cond_a

    .line 97
    .line 98
    aget-object v3, v3, v2

    .line 99
    .line 100
    iget-object v4, v7, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    .line 101
    .line 102
    array-length v13, v4

    .line 103
    if-le v13, v2, :cond_0

    .line 104
    .line 105
    aget-object v4, v4, v2

    .line 106
    .line 107
    if-eqz v4, :cond_0

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_0

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    move v10, v1

    .line 117
    :goto_1
    if-nez v3, :cond_1

    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_1
    if-eqz v10, :cond_2

    .line 122
    .line 123
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_2
    move v4, v1

    .line 129
    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-ge v4, v10, :cond_9

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    instance-of v13, v10, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 140
    .line 141
    if-eqz v13, :cond_8

    .line 142
    .line 143
    check-cast v10, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 144
    .line 145
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    iget-object v14, v7, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 150
    .line 151
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    check-cast v13, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 156
    .line 157
    if-eqz v13, :cond_6

    .line 158
    .line 159
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getVisibility()I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    if-nez v14, :cond_8

    .line 167
    .line 168
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    invoke-virtual {v9, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13}, Landroid/widget/ImageButton;->isEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mFirstButtonId:I

    .line 186
    .line 187
    if-ne v14, v0, :cond_3

    .line 188
    .line 189
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    iput v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mFirstButtonId:I

    .line 194
    .line 195
    :cond_3
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    iput v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mLastButtonId:I

    .line 200
    .line 201
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 202
    .line 203
    .line 204
    move-result v14

    .line 205
    const v15, 0x7f0a0d5f

    .line 206
    .line 207
    .line 208
    if-ne v14, v15, :cond_5

    .line 209
    .line 210
    iget-boolean v13, v13, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 211
    .line 212
    if-eqz v13, :cond_4

    .line 213
    .line 214
    const v13, 0x7f130f36

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_4
    const v13, 0x7f130f35

    .line 219
    .line 220
    .line 221
    :goto_3
    iget-boolean v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 222
    .line 223
    invoke-virtual {v10, v13, v14}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setTextView(IZ)V

    .line 224
    .line 225
    .line 226
    iget-object v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    invoke-virtual {v14, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    invoke-virtual {v10, v13}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    iget-boolean v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 237
    .line 238
    invoke-virtual {v10, v0, v13}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setTextView(IZ)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_6
    if-nez v6, :cond_7

    .line 243
    .line 244
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-ne v13, v11, :cond_7

    .line 249
    .line 250
    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 251
    .line 252
    if-eqz v13, :cond_8

    .line 253
    .line 254
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    invoke-virtual {v9, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-boolean v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 268
    .line 269
    invoke-virtual {v10, v0, v13}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setTextView(IZ)V

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_7
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_a
    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 285
    .line 286
    const v3, 0x7f0a02f7

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Landroid/view/ViewGroup;

    .line 294
    .line 295
    if-eqz v2, :cond_15

    .line 296
    .line 297
    move v3, v1

    .line 298
    :goto_6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-ge v3, v4, :cond_15

    .line 303
    .line 304
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    instance-of v13, v4, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 309
    .line 310
    if-eqz v13, :cond_14

    .line 311
    .line 312
    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 313
    .line 314
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 315
    .line 316
    .line 317
    move-result v13

    .line 318
    iget-boolean v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 319
    .line 320
    iget v15, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mWindowingMode:I

    .line 321
    .line 322
    invoke-static {v13, v15, v1, v14}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->isButtonVisible(IIZZ)Z

    .line 323
    .line 324
    .line 325
    move-result v13

    .line 326
    if-eqz v13, :cond_b

    .line 327
    .line 328
    move v14, v1

    .line 329
    goto :goto_7

    .line 330
    :cond_b
    move v14, v12

    .line 331
    :goto_7
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    if-eqz v13, :cond_14

    .line 335
    .line 336
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 337
    .line 338
    if-eqz v13, :cond_c

    .line 339
    .line 340
    if-eqz v6, :cond_c

    .line 341
    .line 342
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 343
    .line 344
    .line 345
    move-result v13

    .line 346
    if-ne v13, v11, :cond_c

    .line 347
    .line 348
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_a

    .line 352
    .line 353
    :cond_c
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 354
    .line 355
    const v14, 0x7f0a06bd

    .line 356
    .line 357
    .line 358
    if-eqz v13, :cond_f

    .line 359
    .line 360
    iget-boolean v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 361
    .line 362
    if-eqz v13, :cond_f

    .line 363
    .line 364
    if-eqz v6, :cond_f

    .line 365
    .line 366
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 367
    .line 368
    .line 369
    move-result v13

    .line 370
    if-ne v13, v14, :cond_f

    .line 371
    .line 372
    iget-object v13, v7, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 373
    .line 374
    if-eqz v13, :cond_d

    .line 375
    .line 376
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 377
    .line 378
    .line 379
    move-result v13

    .line 380
    if-nez v13, :cond_d

    .line 381
    .line 382
    move v13, v10

    .line 383
    goto :goto_8

    .line 384
    :cond_d
    move v13, v1

    .line 385
    :goto_8
    if-eqz v13, :cond_e

    .line 386
    .line 387
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_e
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    :cond_f
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 395
    .line 396
    .line 397
    move-result v13

    .line 398
    const v15, 0x7f0a0792

    .line 399
    .line 400
    .line 401
    if-ne v13, v15, :cond_10

    .line 402
    .line 403
    invoke-virtual {v7}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setupOpacitySlider()V

    .line 404
    .line 405
    .line 406
    :cond_10
    iget v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mFirstButtonId:I

    .line 407
    .line 408
    if-ne v13, v0, :cond_11

    .line 409
    .line 410
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 411
    .line 412
    .line 413
    move-result v13

    .line 414
    iput v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mFirstButtonId:I

    .line 415
    .line 416
    :cond_11
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    iput v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mLastButtonId:I

    .line 421
    .line 422
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 423
    .line 424
    .line 425
    move-result v13

    .line 426
    invoke-virtual {v9, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    .line 433
    .line 434
    .line 435
    move-result v13

    .line 436
    if-ne v13, v14, :cond_13

    .line 437
    .line 438
    iget-object v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 439
    .line 440
    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 441
    .line 442
    .line 443
    move-result v13

    .line 444
    if-nez v13, :cond_12

    .line 445
    .line 446
    const v13, 0x7f130f25

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_12
    const v13, 0x7f130f24

    .line 451
    .line 452
    .line 453
    :goto_9
    iget-boolean v14, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 454
    .line 455
    invoke-virtual {v4, v13, v14}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setTextView(IZ)V

    .line 456
    .line 457
    .line 458
    goto :goto_a

    .line 459
    :cond_13
    iget-boolean v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 460
    .line 461
    invoke-virtual {v4, v0, v13}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setTextView(IZ)V

    .line 462
    .line 463
    .line 464
    :cond_14
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 465
    .line 466
    goto/16 :goto_6

    .line 467
    .line 468
    :cond_15
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-lez v0, :cond_16

    .line 473
    .line 474
    iget v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mLastButtonId:I

    .line 475
    .line 476
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setVerticalPadding(Z)V

    .line 483
    .line 484
    .line 485
    iget v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;->mFirstButtonId:I

    .line 486
    .line 487
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 492
    .line 493
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;->setVerticalPadding(Z)V

    .line 494
    .line 495
    .line 496
    :cond_16
    return-void
.end method
