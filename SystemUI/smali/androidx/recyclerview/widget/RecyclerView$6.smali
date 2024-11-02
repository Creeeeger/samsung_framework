.class public final Landroidx/recyclerview/widget/RecyclerView$6;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v1, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_11

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string v0, "SeslRecyclerView"

    .line 18
    .line 19
    const-string v1, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iget-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    .line 34
    .line 35
    iget-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 36
    .line 37
    sub-long v4, v2, v4

    .line 38
    .line 39
    const-wide/16 v6, 0x3e8

    .line 40
    .line 41
    div-long/2addr v4, v6

    .line 42
    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    .line 43
    .line 44
    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 49
    .line 50
    sub-long v5, v2, v5

    .line 51
    .line 52
    iget-wide v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    .line 53
    .line 54
    cmp-long v5, v5, v7

    .line 55
    .line 56
    if-gez v5, :cond_2

    .line 57
    .line 58
    goto/16 :goto_11

    .line 59
    .line 60
    :cond_2
    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 61
    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 65
    .line 66
    sub-long/2addr v2, v5

    .line 67
    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    .line 68
    .line 69
    cmp-long v2, v2, v5

    .line 70
    .line 71
    if-gez v2, :cond_3

    .line 72
    .line 73
    goto/16 :goto_11

    .line 74
    .line 75
    :cond_3
    const/4 v2, 0x1

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 79
    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 83
    .line 84
    :cond_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x0

    .line 107
    if-ne v4, v2, :cond_5

    .line 108
    .line 109
    move v4, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_5
    move v4, v5

    .line 112
    :goto_0
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    .line 114
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->access$1800(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    .line 126
    sget v9, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    .line 127
    .line 128
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-static {v2, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    const/high16 v10, 0x3f000000    # 0.5f

    .line 143
    .line 144
    add-float/2addr v9, v10

    .line 145
    float-to-int v9, v9

    .line 146
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 147
    .line 148
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    iget-wide v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    .line 151
    .line 152
    const-wide/16 v11, 0x2

    .line 153
    .line 154
    cmp-long v11, v9, v11

    .line 155
    .line 156
    const-wide/16 v12, 0x4

    .line 157
    .line 158
    if-lez v11, :cond_6

    .line 159
    .line 160
    cmp-long v11, v9, v12

    .line 161
    .line 162
    if-gez v11, :cond_6

    .line 163
    .line 164
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 165
    .line 166
    int-to-double v10, v9

    .line 167
    const-wide v12, 0x3fb999999999999aL    # 0.1

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    mul-double/2addr v10, v12

    .line 173
    double-to-int v10, v10

    .line 174
    add-int/2addr v9, v10

    .line 175
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    cmp-long v11, v9, v12

    .line 179
    .line 180
    const-wide/16 v12, 0x5

    .line 181
    .line 182
    if-ltz v11, :cond_7

    .line 183
    .line 184
    cmp-long v11, v9, v12

    .line 185
    .line 186
    if-gez v11, :cond_7

    .line 187
    .line 188
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 189
    .line 190
    int-to-double v10, v9

    .line 191
    const-wide v12, 0x3fc999999999999aL    # 0.2

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    mul-double/2addr v10, v12

    .line 197
    double-to-int v10, v10

    .line 198
    add-int/2addr v9, v10

    .line 199
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_7
    cmp-long v9, v9, v12

    .line 203
    .line 204
    if-ltz v9, :cond_8

    .line 205
    .line 206
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 207
    .line 208
    int-to-double v10, v9

    .line 209
    const-wide v12, 0x3fd3333333333333L    # 0.3

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    mul-double/2addr v10, v12

    .line 215
    double-to-int v10, v10

    .line 216
    add-int/2addr v9, v10

    .line 217
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 218
    .line 219
    :cond_8
    :goto_1
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 220
    .line 221
    const/4 v10, 0x0

    .line 222
    const/4 v11, 0x2

    .line 223
    if-ne v9, v11, :cond_a

    .line 224
    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    if-eqz v4, :cond_9

    .line 228
    .line 229
    iget v12, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 230
    .line 231
    mul-int/2addr v12, v2

    .line 232
    goto :goto_2

    .line 233
    :cond_9
    iget v12, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 234
    .line 235
    mul-int/lit8 v12, v12, -0x1

    .line 236
    .line 237
    :goto_2
    iget v13, v8, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 238
    .line 239
    if-eq v13, v9, :cond_c

    .line 240
    .line 241
    iget-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 242
    .line 243
    if-ne v9, v2, :cond_c

    .line 244
    .line 245
    iput-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 246
    .line 247
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    iput v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 251
    .line 252
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    .line 254
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    .line 255
    .line 256
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 257
    .line 258
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 259
    .line 260
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 261
    .line 262
    iput-boolean v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_a
    if-eqz v3, :cond_b

    .line 266
    .line 267
    if-eqz v4, :cond_b

    .line 268
    .line 269
    iget v12, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 270
    .line 271
    mul-int/lit8 v12, v12, -0x1

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_b
    iget v12, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    .line 275
    .line 276
    mul-int/2addr v12, v2

    .line 277
    :goto_3
    iget v13, v8, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 278
    .line 279
    if-eq v13, v9, :cond_c

    .line 280
    .line 281
    iget-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 282
    .line 283
    if-ne v9, v2, :cond_c

    .line 284
    .line 285
    iput-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 286
    .line 287
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iput v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 291
    .line 292
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    .line 294
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    .line 295
    .line 296
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 297
    .line 298
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 299
    .line 300
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 301
    .line 302
    iput-boolean v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 303
    .line 304
    :cond_c
    :goto_4
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 305
    .line 306
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    sub-int/2addr v9, v2

    .line 311
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    if-nez v8, :cond_d

    .line 316
    .line 317
    goto/16 :goto_11

    .line 318
    .line 319
    :cond_d
    if-gez v12, :cond_e

    .line 320
    .line 321
    if-nez v7, :cond_f

    .line 322
    .line 323
    :cond_e
    if-lez v12, :cond_18

    .line 324
    .line 325
    if-eqz v6, :cond_18

    .line 326
    .line 327
    :cond_f
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 328
    .line 329
    if-eqz v3, :cond_10

    .line 330
    .line 331
    move v11, v2

    .line 332
    :cond_10
    invoke-virtual {v6, v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 333
    .line 334
    .line 335
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 336
    .line 337
    if-eqz v3, :cond_12

    .line 338
    .line 339
    if-eqz v4, :cond_11

    .line 340
    .line 341
    neg-int v6, v12

    .line 342
    move v14, v6

    .line 343
    goto :goto_5

    .line 344
    :cond_11
    move v14, v12

    .line 345
    goto :goto_5

    .line 346
    :cond_12
    move v14, v5

    .line 347
    :goto_5
    if-eqz v1, :cond_13

    .line 348
    .line 349
    move v15, v12

    .line 350
    goto :goto_6

    .line 351
    :cond_13
    move v15, v5

    .line 352
    :goto_6
    const/16 v17, 0x0

    .line 353
    .line 354
    const/16 v18, 0x0

    .line 355
    .line 356
    const/16 v16, 0x1

    .line 357
    .line 358
    invoke-virtual/range {v13 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-nez v6, :cond_17

    .line 363
    .line 364
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 365
    .line 366
    if-eqz v3, :cond_15

    .line 367
    .line 368
    if-eqz v4, :cond_14

    .line 369
    .line 370
    neg-int v3, v12

    .line 371
    goto :goto_7

    .line 372
    :cond_14
    move v3, v12

    .line 373
    goto :goto_7

    .line 374
    :cond_15
    move v3, v5

    .line 375
    :goto_7
    if-eqz v1, :cond_16

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_16
    move v12, v5

    .line 379
    :goto_8
    invoke-virtual {v6, v3, v12, v10, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_17
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    .line 395
    invoke-static {v1, v12}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 396
    .line 397
    .line 398
    :goto_9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    .line 400
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 401
    .line 402
    const-wide/16 v1, 0x0

    .line 403
    .line 404
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    .line 406
    .line 407
    goto/16 :goto_11

    .line 408
    .line 409
    :cond_18
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    .line 411
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_1d

    .line 416
    .line 417
    if-ne v1, v2, :cond_1c

    .line 418
    .line 419
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 420
    .line 421
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-nez v4, :cond_19

    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_19
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 429
    .line 430
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    if-eq v4, v6, :cond_1a

    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_1a
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 446
    .line 447
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 448
    .line 449
    if-lt v6, v7, :cond_1b

    .line 450
    .line 451
    sub-int/2addr v4, v2

    .line 452
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 465
    .line 466
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 467
    .line 468
    sub-int/2addr v6, v1

    .line 469
    if-gt v4, v6, :cond_1b

    .line 470
    .line 471
    :goto_a
    move v1, v2

    .line 472
    goto :goto_c

    .line 473
    :cond_1b
    :goto_b
    move v1, v5

    .line 474
    :goto_c
    if-nez v1, :cond_1c

    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_1c
    move v1, v5

    .line 478
    goto :goto_e

    .line 479
    :cond_1d
    :goto_d
    move v1, v2

    .line 480
    :goto_e
    if-eqz v1, :cond_23

    .line 481
    .line 482
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 483
    .line 484
    iget-boolean v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 485
    .line 486
    if-nez v6, :cond_23

    .line 487
    .line 488
    if-eqz v3, :cond_1e

    .line 489
    .line 490
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 491
    .line 492
    .line 493
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 494
    .line 495
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 496
    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_1e
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 500
    .line 501
    .line 502
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 503
    .line 504
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 505
    .line 506
    .line 507
    :goto_f
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 508
    .line 509
    iget v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 510
    .line 511
    const/16 v7, 0x2710

    .line 512
    .line 513
    if-ne v6, v11, :cond_20

    .line 514
    .line 515
    if-eqz v3, :cond_1f

    .line 516
    .line 517
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 518
    .line 519
    invoke-virtual {v3, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 523
    .line 524
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 525
    .line 526
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-nez v3, :cond_22

    .line 531
    .line 532
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 533
    .line 534
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 535
    .line 536
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 537
    .line 538
    .line 539
    goto :goto_10

    .line 540
    :cond_1f
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 541
    .line 542
    invoke-virtual {v3, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 543
    .line 544
    .line 545
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 546
    .line 547
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 548
    .line 549
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-nez v3, :cond_22

    .line 554
    .line 555
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 556
    .line 557
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 558
    .line 559
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 560
    .line 561
    .line 562
    goto :goto_10

    .line 563
    :cond_20
    if-ne v6, v2, :cond_22

    .line 564
    .line 565
    if-eqz v3, :cond_21

    .line 566
    .line 567
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 568
    .line 569
    invoke-virtual {v3, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 570
    .line 571
    .line 572
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 573
    .line 574
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 575
    .line 576
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-nez v3, :cond_22

    .line 581
    .line 582
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 583
    .line 584
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 585
    .line 586
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 587
    .line 588
    .line 589
    goto :goto_10

    .line 590
    :cond_21
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 591
    .line 592
    invoke-virtual {v3, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 593
    .line 594
    .line 595
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 596
    .line 597
    invoke-static {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 598
    .line 599
    .line 600
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 601
    .line 602
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    .line 603
    .line 604
    .line 605
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 606
    .line 607
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 608
    .line 609
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-nez v3, :cond_22

    .line 614
    .line 615
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 616
    .line 617
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 618
    .line 619
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 620
    .line 621
    .line 622
    :cond_22
    :goto_10
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 623
    .line 624
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 625
    .line 626
    .line 627
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 628
    .line 629
    iput-boolean v2, v3, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 630
    .line 631
    :cond_23
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 632
    .line 633
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 634
    .line 635
    if-ne v4, v2, :cond_24

    .line 636
    .line 637
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 638
    .line 639
    .line 640
    :cond_24
    if-nez v1, :cond_25

    .line 641
    .line 642
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 643
    .line 644
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 645
    .line 646
    if-nez v1, :cond_25

    .line 647
    .line 648
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 649
    .line 650
    :cond_25
    :goto_11
    return-void
.end method
