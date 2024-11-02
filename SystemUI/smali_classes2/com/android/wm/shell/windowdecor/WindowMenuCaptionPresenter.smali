.class public final Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;
.super Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

.field public final mButtonSet:[Landroid/view/ViewGroup;

.field public mButtonTintColor:Landroid/content/res/ColorStateList;

.field public final mButtonVisibility:[Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

.field public mDivider:Lcom/android/wm/shell/windowdecor/WindowMenuDivider;

.field public mIsTaskFocused:Z

.field public mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

.field public mMoveDisplayButtonSet:Landroid/view/View;

.field public mShowPrimaryButtonSet:Z

.field public mUnpinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$1;

.field public mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;FZ)V
    .locals 18

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
    move/from16 v7, p6

    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View;FZ)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mIsTaskFocused:Z

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->getButtonTintColor()Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    const v1, 0x7f0a0819

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .line 44
    const v2, 0x7f0a09b1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/ViewGroup;

    .line 52
    .line 53
    filled-new-array {v1, v2}, [Landroid/view/ViewGroup;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const v3, 0x7f070da9

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    new-instance v3, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    aget-object v5, v1, v4

    .line 74
    .line 75
    aget-object v6, v1, v0

    .line 76
    .line 77
    invoke-direct {v3, v5, v6, v2, v0}, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;-><init>(Landroid/view/View;Landroid/view/View;IZ)V

    .line 78
    .line 79
    .line 80
    new-instance v5, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

    .line 81
    .line 82
    aget-object v6, v1, v0

    .line 83
    .line 84
    aget-object v7, v1, v4

    .line 85
    .line 86
    invoke-direct {v5, v6, v7, v2, v4}, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;-><init>(Landroid/view/View;Landroid/view/View;IZ)V

    .line 87
    .line 88
    .line 89
    filled-new-array {v3, v5}, [Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonVisibility:[Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

    .line 94
    .line 95
    array-length v2, v1

    .line 96
    move v3, v4

    .line 97
    :goto_0
    iget v5, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mWindowingMode:I

    .line 98
    .line 99
    iget-object v6, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 100
    .line 101
    iget-boolean v7, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDexEnabled:Z

    .line 102
    .line 103
    iget-object v10, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 104
    .line 105
    iget-object v11, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 106
    .line 107
    if-ge v3, v2, :cond_b

    .line 108
    .line 109
    aget-object v15, v1, v3

    .line 110
    .line 111
    if-nez v15, :cond_1

    .line 112
    .line 113
    :cond_0
    move-object/from16 v16, v1

    .line 114
    .line 115
    move/from16 v17, v2

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_1
    move v12, v4

    .line 120
    :goto_1
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-ge v12, v14, :cond_0

    .line 125
    .line 126
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    instance-of v0, v14, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    check-cast v14, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 135
    .line 136
    invoke-virtual {v14}, Landroid/widget/ImageButton;->getId()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iget-object v4, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 141
    .line 142
    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isRotationButtonVisible:Z

    .line 143
    .line 144
    iget-boolean v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 145
    .line 146
    invoke-static {v0, v5, v4, v13}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->isButtonVisible(IIZZ)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_9

    .line 151
    .line 152
    const v4, 0x7f0a0792

    .line 153
    .line 154
    .line 155
    if-ne v0, v4, :cond_2

    .line 156
    .line 157
    if-nez v7, :cond_2

    .line 158
    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setupOpacitySlider()V

    .line 160
    .line 161
    .line 162
    :cond_2
    invoke-virtual {v14}, Landroid/widget/ImageButton;->getId()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    const v13, 0x7f0a0ab7

    .line 167
    .line 168
    .line 169
    move-object/from16 v16, v1

    .line 170
    .line 171
    const/16 v1, 0xa

    .line 172
    .line 173
    if-ne v4, v13, :cond_6

    .line 174
    .line 175
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitEnabled(I)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-eqz v13, :cond_3

    .line 188
    .line 189
    iget-object v13, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 190
    .line 191
    move/from16 v17, v2

    .line 192
    .line 193
    iget v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    .line 194
    .line 195
    if-eq v2, v1, :cond_4

    .line 196
    .line 197
    iget-boolean v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 198
    .line 199
    if-eqz v2, :cond_4

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    goto :goto_2

    .line 203
    :cond_3
    move/from16 v17, v2

    .line 204
    .line 205
    :cond_4
    const/4 v2, 0x0

    .line 206
    :goto_2
    invoke-virtual {v8, v14, v4}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setSplitButtonDrawable(Lcom/android/wm/shell/windowdecor/WindowMenuItemView;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 210
    .line 211
    .line 212
    if-eqz v2, :cond_5

    .line 213
    .line 214
    const/high16 v2, 0x3f800000    # 1.0f

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_5
    const v2, 0x3ecccccd    # 0.4f

    .line 218
    .line 219
    .line 220
    :goto_3
    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_6
    move/from16 v17, v2

    .line 225
    .line 226
    :goto_4
    const v2, 0x7f0a0424

    .line 227
    .line 228
    .line 229
    if-ne v0, v2, :cond_7

    .line 230
    .line 231
    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 232
    .line 233
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    .line 234
    .line 235
    if-ne v2, v1, :cond_7

    .line 236
    .line 237
    const/4 v1, 0x0

    .line 238
    invoke-virtual {v14, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 239
    .line 240
    .line 241
    :cond_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 242
    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    iget-boolean v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNewDexMode:Z

    .line 246
    .line 247
    if-eqz v1, :cond_8

    .line 248
    .line 249
    const v1, 0x7f0a0d5f

    .line 250
    .line 251
    .line 252
    if-ne v0, v1, :cond_8

    .line 253
    .line 254
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 255
    .line 256
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_8

    .line 267
    .line 268
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 273
    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    const/4 v1, 0x1

    .line 277
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 278
    .line 279
    :cond_8
    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 286
    .line 287
    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 288
    .line 289
    .line 290
    const/4 v0, 0x1

    .line 291
    invoke-virtual {v14, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setTaskFocusState(Z)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v14}, Landroid/widget/ImageButton;->getId()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {v6, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_9
    move-object/from16 v16, v1

    .line 303
    .line 304
    move/from16 v17, v2

    .line 305
    .line 306
    const/16 v0, 0x8

    .line 307
    .line 308
    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_a
    move-object/from16 v16, v1

    .line 313
    .line 314
    move/from16 v17, v2

    .line 315
    .line 316
    :goto_5
    const/16 v0, 0x8

    .line 317
    .line 318
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 319
    .line 320
    move-object/from16 v1, v16

    .line 321
    .line 322
    move/from16 v2, v17

    .line 323
    .line 324
    const/4 v0, 0x1

    .line 325
    const/4 v4, 0x0

    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 329
    .line 330
    move-object/from16 v1, v16

    .line 331
    .line 332
    move/from16 v2, v17

    .line 333
    .line 334
    const/4 v0, 0x1

    .line 335
    const/4 v4, 0x0

    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_b
    const/16 v0, 0x8

    .line 339
    .line 340
    const v1, 0x7f0a06b9

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 348
    .line 349
    iput-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 350
    .line 351
    if-eqz v1, :cond_f

    .line 352
    .line 353
    if-nez v7, :cond_d

    .line 354
    .line 355
    iget-boolean v2, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 356
    .line 357
    if-eqz v2, :cond_c

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_c
    new-instance v2, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$$ExternalSyntheticLambda0;

    .line 361
    .line 362
    invoke-direct {v2, v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 369
    .line 370
    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_d
    :goto_8
    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .line 376
    .line 377
    :goto_9
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 378
    .line 379
    const/4 v2, 0x1

    .line 380
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setTaskFocusState(Z)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 384
    .line 385
    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 386
    .line 387
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 388
    .line 389
    .line 390
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 391
    .line 392
    if-eqz v7, :cond_e

    .line 393
    .line 394
    move v14, v0

    .line 395
    goto :goto_a

    .line 396
    :cond_e
    const/4 v14, 0x0

    .line 397
    :goto_a
    invoke-virtual {v1, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 407
    .line 408
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :cond_f
    const v0, 0x7f0a021e

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 419
    .line 420
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 421
    .line 422
    if-eqz v0, :cond_10

    .line 423
    .line 424
    const-string v1, "mw_popup_option_btn_header_handle.json"

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->createLottieTask(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 430
    .line 431
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 435
    .line 436
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 440
    .line 441
    iget-boolean v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->updateNightMode(Z)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$1;

    .line 447
    .line 448
    invoke-direct {v0, v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$1;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;)V

    .line 449
    .line 450
    .line 451
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$1;

    .line 452
    .line 453
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonVisibility:[Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

    .line 454
    .line 455
    const/4 v1, 0x0

    .line 456
    aget-object v2, v0, v1

    .line 457
    .line 458
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mVisibleAnim:Landroid/animation/AnimatorSet;

    .line 459
    .line 460
    new-instance v2, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$2;

    .line 461
    .line 462
    invoke-direct {v2, v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$2;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    .line 467
    .line 468
    const/4 v1, 0x1

    .line 469
    aget-object v0, v0, v1

    .line 470
    .line 471
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mVisibleAnim:Landroid/animation/AnimatorSet;

    .line 472
    .line 473
    new-instance v2, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$3;

    .line 474
    .line 475
    invoke-direct {v2, v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$3;-><init>(Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    .line 480
    .line 481
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 482
    .line 483
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsTaskFocused:Z

    .line 484
    .line 485
    if-eq v2, v1, :cond_10

    .line 486
    .line 487
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsTaskFocused:Z

    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->applyIconColor()V

    .line 490
    .line 491
    .line 492
    :cond_10
    const v0, 0x7f0a034c

    .line 493
    .line 494
    .line 495
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuDivider;

    .line 500
    .line 501
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mDivider:Lcom/android/wm/shell/windowdecor/WindowMenuDivider;

    .line 502
    .line 503
    if-eqz v0, :cond_11

    .line 504
    .line 505
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setDividerColor(Lcom/android/wm/shell/windowdecor/WindowMenuDivider;)V

    .line 506
    .line 507
    .line 508
    :cond_11
    if-eqz v7, :cond_14

    .line 509
    .line 510
    const v0, 0x7f0a011a

    .line 511
    .line 512
    .line 513
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 518
    .line 519
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 520
    .line 521
    if-eqz v0, :cond_12

    .line 522
    .line 523
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 526
    .line 527
    .line 528
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 529
    .line 530
    const/4 v1, 0x1

    .line 531
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setTaskFocusState(Z)V

    .line 532
    .line 533
    .line 534
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 535
    .line 536
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    .line 538
    .line 539
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 540
    .line 541
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    .line 543
    .line 544
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 545
    .line 546
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 551
    .line 552
    invoke-virtual {v6, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_12
    const/4 v1, 0x1

    .line 557
    :goto_b
    if-ne v5, v1, :cond_14

    .line 558
    .line 559
    const v0, 0x7f0a0792

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 567
    .line 568
    if-eqz v0, :cond_13

    .line 569
    .line 570
    const/4 v2, 0x0

    .line 571
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 572
    .line 573
    .line 574
    const v2, 0x3ecccccd    # 0.4f

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 578
    .line 579
    .line 580
    :cond_13
    invoke-virtual {v8, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->changePinButtonDisable(Z)V

    .line 581
    .line 582
    .line 583
    :cond_14
    const v0, 0x7f0a06bb

    .line 584
    .line 585
    .line 586
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 591
    .line 592
    if-eqz v0, :cond_15

    .line 593
    .line 594
    iget-boolean v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 595
    .line 596
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->setupAddDisplayButton(Z)V

    .line 597
    .line 598
    .line 599
    :cond_15
    iget-boolean v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDexEnabled:Z

    .line 600
    .line 601
    if-eqz v0, :cond_16

    .line 602
    .line 603
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 604
    .line 605
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 606
    .line 607
    .line 608
    :cond_16
    return-void
.end method

.method public static measureChild(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final adjustOverflowButton(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 2
    .line 3
    const v1, 0x7f0a0275

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const v4, 0x7f070274

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNewDexMode:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingEnd()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eq v5, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/widget/ImageButton;->setPaddingRelative(IIII)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->updateRippleBackground()V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aget-object v5, v2, v3

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    aget-object v6, v2, v5

    .line 65
    .line 66
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-boolean v6, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 70
    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 74
    .line 75
    if-eqz v6, :cond_1

    .line 76
    .line 77
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    const v6, 0x7f0a011a

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroid/view/View;

    .line 88
    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_2

    .line 96
    .line 97
    invoke-static {v6}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->measureChild(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    sub-int/2addr p1, v6

    .line 105
    :cond_2
    move v6, v3

    .line 106
    move v7, v6

    .line 107
    :goto_0
    aget-object v8, v2, v3

    .line 108
    .line 109
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-ge v6, v8, :cond_4

    .line 114
    .line 115
    aget-object v8, v2, v3

    .line 116
    .line 117
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_3

    .line 126
    .line 127
    invoke-static {v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->measureChild(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    add-int/2addr v7, v8

    .line 135
    if-ge p1, v7, :cond_3

    .line 136
    .line 137
    move v6, v5

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    move v6, v3

    .line 143
    :goto_1
    const v8, 0x7f0a06b9

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Landroid/view/View;

    .line 151
    .line 152
    if-nez v8, :cond_5

    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    if-eqz v4, :cond_6

    .line 156
    .line 157
    invoke-static {v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->measureChild(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    sub-int/2addr p1, v9

    .line 165
    if-gez p1, :cond_6

    .line 166
    .line 167
    move v6, v5

    .line 168
    :cond_6
    iget-boolean v9, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 169
    .line 170
    if-eqz v9, :cond_7

    .line 171
    .line 172
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 173
    .line 174
    if-eqz v9, :cond_7

    .line 175
    .line 176
    invoke-static {v9}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->measureChild(Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    sub-int/2addr p1, v9

    .line 186
    if-gez p1, :cond_7

    .line 187
    .line 188
    move v6, v5

    .line 189
    :cond_7
    const/16 v9, 0x8

    .line 190
    .line 191
    if-eqz v6, :cond_8

    .line 192
    .line 193
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    aget-object p1, v2, v3

    .line 197
    .line 198
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    aget-object p1, v2, v5

    .line 202
    .line 203
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 207
    .line 208
    if-eqz p1, :cond_f

    .line 209
    .line 210
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 211
    .line 212
    if-eqz p0, :cond_f

    .line 213
    .line 214
    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_8
    sub-int/2addr p1, v7

    .line 220
    move v7, v3

    .line 221
    move v10, v7

    .line 222
    :goto_2
    aget-object v11, v2, v5

    .line 223
    .line 224
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-ge v7, v11, :cond_a

    .line 229
    .line 230
    aget-object v11, v2, v5

    .line 231
    .line 232
    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    if-nez v12, :cond_9

    .line 241
    .line 242
    invoke-static {v11}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->measureChild(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    add-int/2addr v10, v11

    .line 250
    if-ge p1, v10, :cond_9

    .line 251
    .line 252
    move v6, v5

    .line 253
    goto :goto_3

    .line 254
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_a
    :goto_3
    if-eqz v6, :cond_d

    .line 258
    .line 259
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    invoke-static {v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->measureChild(Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-nez v4, :cond_b

    .line 270
    .line 271
    if-ge p1, v6, :cond_b

    .line 272
    .line 273
    aget-object p1, v2, v3

    .line 274
    .line 275
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    aget-object p1, v2, v5

    .line 279
    .line 280
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 284
    .line 285
    if-eqz p1, :cond_f

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 288
    .line 289
    if-eqz p0, :cond_f

    .line 290
    .line 291
    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 300
    .line 301
    if-eqz p1, :cond_c

    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingTop()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingStart()I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getPaddingBottom()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->updateRippleBackground()V

    .line 323
    .line 324
    .line 325
    :cond_c
    aget-object p1, v2, v5

    .line 326
    .line 327
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 331
    .line 332
    if-eqz p1, :cond_f

    .line 333
    .line 334
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 335
    .line 336
    if-eqz p0, :cond_f

    .line 337
    .line 338
    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_d
    if-eqz v4, :cond_e

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_e
    move v3, v9

    .line 346
    :goto_4
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    :cond_f
    :goto_5
    return-void
.end method

.method public final changePinButtonDisable(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 2
    .line 3
    const v0, 0x7f0a0d5f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    xor-int/lit8 v0, p1, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final getButtonTintColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->getButtonTintColor()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const v0, 0x7f0405bb

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    filled-new-array {v0, v1}, [[I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0x66

    .line 28
    .line 29
    invoke-static {p0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    filled-new-array {p0, v1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    return-object p0
.end method

.method public final getRotationButton()Lcom/android/wm/shell/windowdecor/WindowMenuItemView;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    .line 8
    aget-object v3, p0, v2

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    move v4, v1

    .line 14
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v4, v5, :cond_2

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    instance-of v6, v5, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const v7, 0x7f0a08e9

    .line 35
    .line 36
    .line 37
    if-ne v6, v7, :cond_1

    .line 38
    .line 39
    return-object v5

    .line 40
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public final setTaskFocusState(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mIsTaskFocused:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mIsTaskFocused:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setTaskFocusState(Z)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsTaskFocused:Z

    .line 33
    .line 34
    if-eq v0, p1, :cond_1

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mIsTaskFocused:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->applyIconColor()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final setupAddDisplayButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/16 v1, 0x8

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoveDisplayButtonSet:Landroid/view/View;

    .line 18
    .line 19
    const v0, 0x7f0a06bd

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setTaskFocusState(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    const v1, 0x7f130f25

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const v1, 0x7f130f24

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 81
    .line 82
    const v0, 0x7f0a06bc

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowMenuDivider;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setDividerColor(Lcom/android/wm/shell/windowdecor/WindowMenuDivider;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method public final updateButtonColor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->getButtonTintColor()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonTintColor:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->updateNightMode(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->applyIconColor()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mDivider:Lcom/android/wm/shell/windowdecor/WindowMenuDivider;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setDividerColor(Lcom/android/wm/shell/windowdecor/WindowMenuDivider;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method
