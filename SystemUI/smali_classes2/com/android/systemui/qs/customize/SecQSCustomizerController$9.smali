.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleMessage() msg.what="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const-string v2, "SecQSCustomizerController"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 16
    .line 17
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 18
    .line 19
    const/16 v1, 0x1388

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 27
    .line 28
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :pswitch_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 53
    .line 54
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 55
    .line 56
    const-string v3, "CSTMPagedTileLayout"

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    const-string p0, "TileInfo is null"

    .line 61
    .line 62
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "handleAnimate addInfo.spce"

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v5, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, "animation type = "

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 85
    .line 86
    invoke-static {v4, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 90
    .line 91
    const/16 v5, 0xca

    .line 92
    .line 93
    const-string v6, "CustomizerTileLayout"

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    if-ne v4, v5, :cond_6

    .line 97
    .line 98
    iget-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-gez p1, :cond_2

    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 115
    .line 116
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 117
    .line 118
    mul-int/2addr v0, v3

    .line 119
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/lit8 v3, v0, -0x1

    .line 130
    .line 131
    if-le v2, v3, :cond_3

    .line 132
    .line 133
    move v2, v3

    .line 134
    :cond_3
    const-string v3, "moveTile from = "

    .line 135
    .line 136
    const-string v4, " to  = "

    .line 137
    .line 138
    const-string/jumbo v5, "total = "

    .line 139
    .line 140
    .line 141
    invoke-static {v3, p1, v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, "fromtileInfo = "

    .line 149
    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v0, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 166
    .line 167
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 168
    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    const-string/jumbo v4, "y"

    .line 172
    .line 173
    .line 174
    const-string/jumbo v5, "x"

    .line 175
    .line 176
    .line 177
    const/4 v6, 0x2

    .line 178
    if-ge p1, v2, :cond_4

    .line 179
    .line 180
    move v8, p1

    .line 181
    :goto_1
    if-ge v8, v2, :cond_5

    .line 182
    .line 183
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 184
    .line 185
    add-int/lit8 v10, v8, 0x1

    .line 186
    .line 187
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    check-cast v9, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 192
    .line 193
    iget-object v9, v9, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 194
    .line 195
    new-array v11, v6, [F

    .line 196
    .line 197
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    check-cast v12, Landroid/widget/FrameLayout;

    .line 204
    .line 205
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLeft()I

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    int-to-float v12, v12

    .line 210
    aput v12, v11, v7

    .line 211
    .line 212
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    check-cast v12, Landroid/widget/FrameLayout;

    .line 219
    .line 220
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLeft()I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    int-to-float v12, v12

    .line 225
    aput v12, v11, v3

    .line 226
    .line 227
    invoke-static {v9, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    filled-new-array {v11}, [Landroid/animation/Animator;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    .line 237
    .line 238
    new-array v11, v6, [F

    .line 239
    .line 240
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    check-cast v12, Landroid/widget/FrameLayout;

    .line 247
    .line 248
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    int-to-float v12, v12

    .line 253
    aput v12, v11, v7

    .line 254
    .line 255
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    check-cast v8, Landroid/widget/FrameLayout;

    .line 262
    .line 263
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    int-to-float v8, v8

    .line 268
    aput v8, v11, v3

    .line 269
    .line 270
    invoke-static {v9, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    filled-new-array {v8}, [Landroid/animation/Animator;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 279
    .line 280
    .line 281
    move v8, v10

    .line 282
    goto :goto_1

    .line 283
    :cond_4
    move v8, p1

    .line 284
    :goto_2
    if-le v8, v2, :cond_5

    .line 285
    .line 286
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 287
    .line 288
    add-int/lit8 v10, v8, -0x1

    .line 289
    .line 290
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    check-cast v9, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 295
    .line 296
    iget-object v9, v9, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 297
    .line 298
    new-array v11, v6, [F

    .line 299
    .line 300
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    check-cast v12, Landroid/widget/FrameLayout;

    .line 307
    .line 308
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLeft()I

    .line 309
    .line 310
    .line 311
    move-result v12

    .line 312
    int-to-float v12, v12

    .line 313
    aput v12, v11, v7

    .line 314
    .line 315
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    check-cast v12, Landroid/widget/FrameLayout;

    .line 322
    .line 323
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLeft()I

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    int-to-float v12, v12

    .line 328
    aput v12, v11, v3

    .line 329
    .line 330
    invoke-static {v9, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    filled-new-array {v11}, [Landroid/animation/Animator;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 339
    .line 340
    .line 341
    new-array v11, v6, [F

    .line 342
    .line 343
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    check-cast v12, Landroid/widget/FrameLayout;

    .line 350
    .line 351
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    int-to-float v12, v12

    .line 356
    aput v12, v11, v7

    .line 357
    .line 358
    iget-object v12, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    check-cast v8, Landroid/widget/FrameLayout;

    .line 365
    .line 366
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    int-to-float v8, v8

    .line 371
    aput v8, v11, v3

    .line 372
    .line 373
    invoke-static {v9, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    filled-new-array {v8}, [Landroid/animation/Animator;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 382
    .line 383
    .line 384
    move v8, v10

    .line 385
    goto :goto_2

    .line 386
    :cond_5
    const-wide/16 v3, 0xc8

    .line 387
    .line 388
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 389
    .line 390
    .line 391
    new-instance v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;

    .line 392
    .line 393
    invoke-direct {v3, p0, v2, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 409
    .line 410
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_4

    .line 421
    .line 422
    :cond_6
    const/16 v2, 0xc9

    .line 423
    .line 424
    if-ne v4, v2, :cond_7

    .line 425
    .line 426
    iget-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 433
    .line 434
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V

    .line 437
    .line 438
    .line 439
    const/4 p0, 0x0

    .line 440
    iput-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 441
    .line 442
    goto/16 :goto_4

    .line 443
    .line 444
    :cond_7
    const/16 v2, 0xcb

    .line 445
    .line 446
    if-eq v4, v2, :cond_e

    .line 447
    .line 448
    const/16 v2, 0xcc

    .line 449
    .line 450
    if-ne v4, v2, :cond_8

    .line 451
    .line 452
    goto/16 :goto_3

    .line 453
    .line 454
    :cond_8
    const/16 p0, 0xc8

    .line 455
    .line 456
    if-ne v4, p0, :cond_9

    .line 457
    .line 458
    iget-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p0

    .line 464
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 465
    .line 466
    invoke-virtual {p0, v1, v7}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 467
    .line 468
    .line 469
    goto :goto_4

    .line 470
    :cond_9
    const/16 p0, 0xd3

    .line 471
    .line 472
    const/4 v2, -0x1

    .line 473
    if-ne v4, p0, :cond_c

    .line 474
    .line 475
    iget-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 482
    .line 483
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-gez p1, :cond_a

    .line 488
    .line 489
    goto :goto_4

    .line 490
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-lt p1, v0, :cond_b

    .line 497
    .line 498
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 501
    .line 502
    .line 503
    move-result p1

    .line 504
    add-int/2addr p1, v2

    .line 505
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 512
    .line 513
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 514
    .line 515
    const-string/jumbo v0, "selectTileByAccessibility position = "

    .line 516
    .line 517
    .line 518
    invoke-static {v0, p1, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 522
    .line 523
    const/4 p1, 0x0

    .line 524
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 525
    .line 526
    .line 527
    goto :goto_4

    .line 528
    :cond_c
    const/16 p0, 0xd2

    .line 529
    .line 530
    if-ne v4, p0, :cond_f

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTiledPageIndex(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 533
    .line 534
    .line 535
    move-result p0

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v4, "handleAnimate dropTile: "

    .line 539
    .line 540
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v4, ", pageIndex="

    .line 547
    .line 548
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    if-ne p0, v2, :cond_d

    .line 562
    .line 563
    goto :goto_4

    .line 564
    :cond_d
    iget-object p1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 571
    .line 572
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 573
    .line 574
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V

    .line 575
    .line 576
    .line 577
    goto :goto_4

    .line 578
    :cond_e
    :goto_3
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;I)V

    .line 579
    .line 580
    .line 581
    :cond_f
    :goto_4
    return-void

    .line 582
    nop

    .line 583
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
