.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->applyDelayNextViewState:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->applyDelayNextViewState:Z

    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const/16 v17, 0x0

    .line 32
    .line 33
    const/16 v18, 0x0

    .line 34
    .line 35
    const/16 v19, 0x0

    .line 36
    .line 37
    const/16 v20, 0x0

    .line 38
    .line 39
    const/16 v21, 0x0

    .line 40
    .line 41
    const v22, 0x3ffff

    .line 42
    .line 43
    .line 44
    invoke-static/range {v3 .. v22}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIII)Lcom/android/systemui/statusbar/events/ViewState;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto/16 :goto_13

    .line 59
    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 61
    .line 62
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    goto/16 :goto_13

    .line 69
    .line 70
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 71
    .line 72
    iget v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    .line 73
    .line 74
    iget v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    .line 75
    .line 76
    iget v5, v3, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    const v7, 0x7f0a0823

    .line 80
    .line 81
    .line 82
    if-eq v4, v1, :cond_b

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_b

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v8, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    sub-int/2addr v9, v4

    .line 112
    if-gez v9, :cond_3

    .line 113
    .line 114
    add-int/lit8 v9, v9, 0x4

    .line 115
    .line 116
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    .line 122
    const-string v11, "Not a corner"

    .line 123
    .line 124
    const/4 v12, 0x3

    .line 125
    const/4 v13, 0x2

    .line 126
    if-eqz v9, :cond_7

    .line 127
    .line 128
    if-eq v9, v6, :cond_6

    .line 129
    .line 130
    if-eq v9, v13, :cond_5

    .line 131
    .line 132
    if-ne v9, v12, :cond_4

    .line 133
    .line 134
    const/16 v14, 0x53

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_5
    const/16 v14, 0x55

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const/16 v14, 0x35

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    const/16 v14, 0x33

    .line 150
    .line 151
    :goto_1
    iput v14, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    .line 153
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    .line 163
    if-eqz v9, :cond_a

    .line 164
    .line 165
    if-eq v9, v6, :cond_9

    .line 166
    .line 167
    if-eq v9, v13, :cond_9

    .line 168
    .line 169
    if-ne v9, v12, :cond_8

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_9
    const/16 v9, 0x13

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_a
    :goto_2
    const/16 v9, 0x15

    .line 182
    .line 183
    :goto_3
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_b
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 187
    .line 188
    iget v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    .line 189
    .line 190
    iget v9, v3, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    .line 191
    .line 192
    iget v10, v3, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    .line 193
    .line 194
    iget v11, v3, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    .line 195
    .line 196
    iget v12, v3, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    .line 197
    .line 198
    iget-boolean v13, v3, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    .line 199
    .line 200
    if-ne v4, v8, :cond_d

    .line 201
    .line 202
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    .line 203
    .line 204
    if-ne v13, v4, :cond_d

    .line 205
    .line 206
    iget-object v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    .line 207
    .line 208
    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    .line 209
    .line 210
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_d

    .line 215
    .line 216
    iget-object v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    .line 217
    .line 218
    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_d

    .line 225
    .line 226
    iget-object v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    .line 227
    .line 228
    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    .line 229
    .line 230
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_d

    .line 235
    .line 236
    iget-object v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    .line 237
    .line 238
    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    .line 239
    .line 240
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_d

    .line 245
    .line 246
    iget v4, v1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    .line 247
    .line 248
    if-ne v12, v4, :cond_d

    .line 249
    .line 250
    iget v4, v1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    .line 251
    .line 252
    if-ne v11, v4, :cond_d

    .line 253
    .line 254
    iget v4, v1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    .line 255
    .line 256
    if-ne v10, v4, :cond_d

    .line 257
    .line 258
    iget v4, v1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    .line 259
    .line 260
    if-ne v9, v4, :cond_d

    .line 261
    .line 262
    iget v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    .line 263
    .line 264
    if-eq v5, v1, :cond_c

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_c
    move v1, v2

    .line 268
    goto :goto_5

    .line 269
    :cond_d
    :goto_4
    move v1, v6

    .line 270
    :goto_5
    const/4 v4, 0x0

    .line 271
    if-eqz v1, :cond_24

    .line 272
    .line 273
    new-instance v1, Landroid/graphics/Point;

    .line 274
    .line 275
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 276
    .line 277
    .line 278
    iget-object v8, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 279
    .line 280
    if-nez v8, :cond_e

    .line 281
    .line 282
    move-object v8, v4

    .line 283
    :cond_e
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-virtual {v8}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v8, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 295
    .line 296
    if-nez v1, :cond_f

    .line 297
    .line 298
    move-object v1, v4

    .line 299
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 307
    .line 308
    if-nez v1, :cond_10

    .line 309
    .line 310
    move-object v1, v4

    .line 311
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    iget-object v8, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 316
    .line 317
    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    iget v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    .line 322
    .line 323
    iget-object v8, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 324
    .line 325
    if-nez v8, :cond_11

    .line 326
    .line 327
    move-object v8, v4

    .line 328
    :cond_11
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    const v14, 0x7f070b31

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    int-to-float v8, v8

    .line 344
    mul-float/2addr v8, v1

    .line 345
    invoke-static {v8}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    iget-object v14, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 350
    .line 351
    if-nez v14, :cond_12

    .line 352
    .line 353
    move-object v14, v4

    .line 354
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v14

    .line 358
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    .line 360
    .line 361
    move-result-object v14

    .line 362
    const v15, 0x7f070a6d

    .line 363
    .line 364
    .line 365
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    int-to-float v14, v14

    .line 370
    mul-float/2addr v14, v1

    .line 371
    invoke-static {v14}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    invoke-interface {v14}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v14

    .line 383
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v15

    .line 387
    if-eqz v15, :cond_13

    .line 388
    .line 389
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v15

    .line 393
    check-cast v15, Landroid/view/View;

    .line 394
    .line 395
    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v15

    .line 399
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 400
    .line 401
    .line 402
    move-result-object v15

    .line 403
    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 404
    .line 405
    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_13
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 409
    .line 410
    if-nez v1, :cond_14

    .line 411
    .line 412
    move-object v1, v4

    .line 413
    :cond_14
    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 422
    .line 423
    if-nez v7, :cond_15

    .line 424
    .line 425
    move-object v7, v4

    .line 426
    :cond_15
    invoke-virtual {v7, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 427
    .line 428
    .line 429
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 430
    .line 431
    if-nez v7, :cond_16

    .line 432
    .line 433
    move-object v7, v4

    .line 434
    :cond_16
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 439
    .line 440
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 445
    .line 446
    if-eqz v13, :cond_17

    .line 447
    .line 448
    sub-int v1, v12, v8

    .line 449
    .line 450
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_17
    sub-int v1, v11, v8

    .line 454
    .line 455
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 456
    .line 457
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 458
    .line 459
    if-nez v1, :cond_18

    .line 460
    .line 461
    move-object v1, v4

    .line 462
    :cond_18
    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 471
    .line 472
    if-nez v7, :cond_19

    .line 473
    .line 474
    move-object v7, v4

    .line 475
    :cond_19
    invoke-virtual {v7, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 476
    .line 477
    .line 478
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 479
    .line 480
    if-nez v7, :cond_1a

    .line 481
    .line 482
    move-object v7, v4

    .line 483
    :cond_1a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 488
    .line 489
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 494
    .line 495
    if-eqz v13, :cond_1b

    .line 496
    .line 497
    sub-int v1, v12, v8

    .line 498
    .line 499
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_1b
    sub-int v1, v11, v8

    .line 503
    .line 504
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 505
    .line 506
    :goto_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 507
    .line 508
    if-nez v1, :cond_1c

    .line 509
    .line 510
    move-object v1, v4

    .line 511
    :cond_1c
    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 520
    .line 521
    if-nez v7, :cond_1d

    .line 522
    .line 523
    move-object v7, v4

    .line 524
    :cond_1d
    invoke-virtual {v7, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 525
    .line 526
    .line 527
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 528
    .line 529
    if-nez v7, :cond_1e

    .line 530
    .line 531
    move-object v7, v4

    .line 532
    :cond_1e
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 543
    .line 544
    if-eqz v13, :cond_1f

    .line 545
    .line 546
    sub-int v1, v12, v8

    .line 547
    .line 548
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_1f
    add-int/2addr v9, v11

    .line 552
    sub-int/2addr v9, v8

    .line 553
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 554
    .line 555
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 556
    .line 557
    if-nez v1, :cond_20

    .line 558
    .line 559
    move-object v1, v4

    .line 560
    :cond_20
    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 569
    .line 570
    if-nez v7, :cond_21

    .line 571
    .line 572
    move-object v7, v4

    .line 573
    :cond_21
    invoke-virtual {v7, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 574
    .line 575
    .line 576
    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 577
    .line 578
    if-nez v5, :cond_22

    .line 579
    .line 580
    move-object v5, v4

    .line 581
    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 586
    .line 587
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 592
    .line 593
    if-eqz v13, :cond_23

    .line 594
    .line 595
    add-int/2addr v12, v10

    .line 596
    sub-int/2addr v12, v8

    .line 597
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 598
    .line 599
    goto :goto_a

    .line 600
    :cond_23
    sub-int/2addr v11, v8

    .line 601
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 602
    .line 603
    :goto_a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    if-eqz v5, :cond_24

    .line 616
    .line 617
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    check-cast v5, Landroid/view/View;

    .line 622
    .line 623
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 624
    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_24
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 628
    .line 629
    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    .line 630
    .line 631
    iget-object v5, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    .line 632
    .line 633
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    iget-object v7, v3, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    .line 638
    .line 639
    const/high16 v8, 0x3f800000    # 1.0f

    .line 640
    .line 641
    const/4 v9, 0x0

    .line 642
    if-nez v1, :cond_29

    .line 643
    .line 644
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 645
    .line 646
    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    .line 647
    .line 648
    if-nez v1, :cond_25

    .line 649
    .line 650
    goto :goto_c

    .line 651
    :cond_25
    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 652
    .line 653
    .line 654
    :goto_c
    if-nez v5, :cond_26

    .line 655
    .line 656
    goto :goto_d

    .line 657
    :cond_26
    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 658
    .line 659
    .line 660
    :goto_d
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    .line 661
    .line 662
    if-eqz v1, :cond_27

    .line 663
    .line 664
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    .line 665
    .line 666
    if-nez v1, :cond_27

    .line 667
    .line 668
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    .line 669
    .line 670
    if-nez v1, :cond_27

    .line 671
    .line 672
    move v1, v6

    .line 673
    goto :goto_e

    .line 674
    :cond_27
    move v1, v2

    .line 675
    :goto_e
    if-eqz v1, :cond_2b

    .line 676
    .line 677
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    .line 678
    .line 679
    if-eqz v1, :cond_28

    .line 680
    .line 681
    check-cast v1, Lcom/android/systemui/ScreenDecorations$3;

    .line 682
    .line 683
    iget-object v1, v1, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 684
    .line 685
    invoke-virtual {v1, v5}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    .line 686
    .line 687
    .line 688
    :cond_28
    if-eqz v5, :cond_2b

    .line 689
    .line 690
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    const-wide/16 v10, 0x12c

    .line 708
    .line 709
    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 714
    .line 715
    .line 716
    goto :goto_f

    .line 717
    :cond_29
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 718
    .line 719
    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    .line 720
    .line 721
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-nez v1, :cond_2b

    .line 726
    .line 727
    if-nez v5, :cond_2a

    .line 728
    .line 729
    goto :goto_f

    .line 730
    :cond_2a
    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    .line 732
    .line 733
    :cond_2b
    :goto_f
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    .line 734
    .line 735
    if-eqz v1, :cond_2c

    .line 736
    .line 737
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    .line 738
    .line 739
    if-nez v1, :cond_2c

    .line 740
    .line 741
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    .line 742
    .line 743
    if-nez v1, :cond_2c

    .line 744
    .line 745
    move v1, v6

    .line 746
    goto :goto_10

    .line 747
    :cond_2c
    move v1, v2

    .line 748
    :goto_10
    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 749
    .line 750
    iget-boolean v7, v4, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    .line 751
    .line 752
    if-eqz v7, :cond_2d

    .line 753
    .line 754
    iget-boolean v7, v4, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    .line 755
    .line 756
    if-nez v7, :cond_2d

    .line 757
    .line 758
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    .line 759
    .line 760
    if-nez v4, :cond_2d

    .line 761
    .line 762
    goto :goto_11

    .line 763
    :cond_2d
    move v6, v2

    .line 764
    :goto_11
    if-eq v1, v6, :cond_2f

    .line 765
    .line 766
    const-wide/16 v6, 0xa0

    .line 767
    .line 768
    if-eqz v1, :cond_2e

    .line 769
    .line 770
    if-eqz v5, :cond_2e

    .line 771
    .line 772
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 794
    .line 795
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 800
    .line 801
    .line 802
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    .line 803
    .line 804
    if-eqz v2, :cond_2f

    .line 805
    .line 806
    check-cast v2, Lcom/android/systemui/ScreenDecorations$3;

    .line 807
    .line 808
    iget-object v2, v2, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 809
    .line 810
    invoke-virtual {v2, v5}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    .line 811
    .line 812
    .line 813
    goto :goto_12

    .line 814
    :cond_2e
    if-nez v1, :cond_2f

    .line 815
    .line 816
    if-eqz v5, :cond_2f

    .line 817
    .line 818
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 830
    .line 831
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    new-instance v4, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;

    .line 840
    .line 841
    invoke-direct {v4, v5, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 849
    .line 850
    .line 851
    :cond_2f
    :goto_12
    if-eqz v1, :cond_30

    .line 852
    .line 853
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 854
    .line 855
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/events/ViewState;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-virtual {v1, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyDotViewState(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    :cond_30
    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 863
    .line 864
    :goto_13
    return-void

    .line 865
    :catchall_0
    move-exception v0

    .line 866
    monitor-exit v1

    .line 867
    throw v0
.end method
