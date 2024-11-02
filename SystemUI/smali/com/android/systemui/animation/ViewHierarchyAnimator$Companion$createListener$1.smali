.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $duration:J

.field public final synthetic $ephemeral:Z

.field public final synthetic $ignorePreviousValues:Z

.field public final synthetic $interpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZLandroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ignorePreviousValues:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$interpolator:Landroid/view/animation/Interpolator;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$duration:J

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ephemeral:Z

    .line 10
    .line 11
    iput-object p7, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 17
    .line 18
    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    .line 19
    .line 20
    invoke-static {v6, v1, v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move/from16 v8, p6

    .line 32
    .line 33
    :goto_0
    sget-object v9, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    .line 34
    .line 35
    invoke-static {v6, v1, v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    if-eqz v10, :cond_2

    .line 40
    .line 41
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move/from16 v10, p7

    .line 47
    .line 48
    :goto_1
    sget-object v11, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    .line 49
    .line 50
    invoke-static {v6, v1, v11}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    if-eqz v12, :cond_3

    .line 55
    .line 56
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move/from16 v12, p8

    .line 62
    .line 63
    :goto_2
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    .line 64
    .line 65
    invoke-static {v6, v1, v13}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move/from16 v6, p9

    .line 77
    .line 78
    :goto_3
    const v14, 0x7f0a0b9d

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    instance-of v15, v14, Landroid/animation/ObjectAnimator;

    .line 86
    .line 87
    if-eqz v15, :cond_5

    .line 88
    .line 89
    check-cast v14, Landroid/animation/ObjectAnimator;

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    const/4 v14, 0x0

    .line 93
    :goto_4
    if-eqz v14, :cond_6

    .line 94
    .line 95
    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    const/16 v15, 0x8

    .line 103
    .line 104
    const/16 v16, 0x1

    .line 105
    .line 106
    if-eq v14, v15, :cond_7

    .line 107
    .line 108
    if-eq v2, v4, :cond_7

    .line 109
    .line 110
    if-eq v3, v5, :cond_7

    .line 111
    .line 112
    move/from16 v14, v16

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    const/4 v14, 0x0

    .line 116
    :goto_5
    if-nez v14, :cond_8

    .line 117
    .line 118
    invoke-static {v1, v7, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v9, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v11, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v13, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_8
    iget-object v14, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    .line 132
    .line 133
    iget-boolean v15, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ignorePreviousValues:Z

    .line 134
    .line 135
    if-eqz v15, :cond_9

    .line 136
    .line 137
    move v8, v2

    .line 138
    :cond_9
    if-eqz v15, :cond_a

    .line 139
    .line 140
    move v10, v3

    .line 141
    :cond_a
    if-eqz v15, :cond_b

    .line 142
    .line 143
    move v12, v4

    .line 144
    :cond_b
    if-eqz v15, :cond_c

    .line 145
    .line 146
    move v6, v5

    .line 147
    :cond_c
    if-eqz v14, :cond_d

    .line 148
    .line 149
    sget-object v15, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 150
    .line 151
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 152
    .line 153
    .line 154
    move-result v17

    .line 155
    aget v17, v15, v17

    .line 156
    .line 157
    packed-switch v17, :pswitch_data_0

    .line 158
    .line 159
    .line 160
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 161
    .line 162
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :pswitch_0
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v17

    .line 170
    goto :goto_6

    .line 171
    :pswitch_1
    move/from16 v17, v2

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :pswitch_2
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    .line 175
    .line 176
    .line 177
    move-result v17

    .line 178
    goto :goto_6

    .line 179
    :pswitch_3
    add-int v17, v2, v4

    .line 180
    .line 181
    div-int/lit8 v17, v17, 0x2

    .line 182
    .line 183
    :goto_6
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 184
    .line 185
    .line 186
    move-result v18

    .line 187
    aget v18, v15, v18

    .line 188
    .line 189
    packed-switch v18, :pswitch_data_1

    .line 190
    .line 191
    .line 192
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 193
    .line 194
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :pswitch_4
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    .line 199
    .line 200
    .line 201
    move-result v18

    .line 202
    goto :goto_7

    .line 203
    :pswitch_5
    move/from16 v18, v3

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :pswitch_6
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 207
    .line 208
    .line 209
    move-result v18

    .line 210
    goto :goto_7

    .line 211
    :pswitch_7
    add-int v18, v3, v5

    .line 212
    .line 213
    div-int/lit8 v18, v18, 0x2

    .line 214
    .line 215
    :goto_7
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 216
    .line 217
    .line 218
    move-result v19

    .line 219
    aget v19, v15, v19

    .line 220
    .line 221
    packed-switch v19, :pswitch_data_2

    .line 222
    .line 223
    .line 224
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 225
    .line 226
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :pswitch_8
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    goto :goto_8

    .line 235
    :pswitch_9
    move v12, v4

    .line 236
    goto :goto_9

    .line 237
    :pswitch_a
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    goto :goto_8

    .line 242
    :pswitch_b
    add-int v8, v2, v4

    .line 243
    .line 244
    div-int/lit8 v8, v8, 0x2

    .line 245
    .line 246
    :goto_8
    move v12, v8

    .line 247
    :goto_9
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    aget v8, v15, v8

    .line 252
    .line 253
    packed-switch v8, :pswitch_data_3

    .line 254
    .line 255
    .line 256
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 257
    .line 258
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :pswitch_c
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    goto :goto_a

    .line 267
    :pswitch_d
    move v6, v5

    .line 268
    goto :goto_a

    .line 269
    :pswitch_e
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    goto :goto_a

    .line 274
    :pswitch_f
    add-int v6, v3, v5

    .line 275
    .line 276
    div-int/lit8 v6, v6, 0x2

    .line 277
    .line 278
    :goto_a
    move/from16 v8, v17

    .line 279
    .line 280
    move/from16 v10, v18

    .line 281
    .line 282
    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    new-instance v14, Lkotlin/Pair;

    .line 287
    .line 288
    invoke-direct {v14, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    new-instance v10, Lkotlin/Pair;

    .line 296
    .line 297
    invoke-direct {v10, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    new-instance v12, Lkotlin/Pair;

    .line 305
    .line 306
    invoke-direct {v12, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    new-instance v8, Lkotlin/Pair;

    .line 314
    .line 315
    invoke-direct {v8, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    filled-new-array {v14, v10, v12, v8}, [Lkotlin/Pair;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    new-instance v10, Lkotlin/Pair;

    .line 331
    .line 332
    invoke-direct {v10, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    new-instance v12, Lkotlin/Pair;

    .line 340
    .line 341
    invoke-direct {v12, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    new-instance v14, Lkotlin/Pair;

    .line 349
    .line 350
    invoke-direct {v14, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    new-instance v15, Lkotlin/Pair;

    .line 358
    .line 359
    invoke-direct {v15, v13, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    filled-new-array {v10, v12, v14, v15}, [Lkotlin/Pair;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 371
    .line 372
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-static {v6, v7}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    check-cast v12, Ljava/lang/Number;

    .line 380
    .line 381
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 382
    .line 383
    .line 384
    move-result v12

    .line 385
    if-eq v12, v2, :cond_e

    .line 386
    .line 387
    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    :cond_e
    invoke-static {v6, v9}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    check-cast v2, Ljava/lang/Number;

    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-eq v2, v3, :cond_f

    .line 401
    .line 402
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    :cond_f
    invoke-static {v6, v11}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Ljava/lang/Number;

    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eq v2, v4, :cond_10

    .line 416
    .line 417
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    :cond_10
    invoke-static {v6, v13}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    check-cast v2, Ljava/lang/Number;

    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eq v2, v5, :cond_11

    .line 431
    .line 432
    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    :cond_11
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    xor-int/lit8 v2, v2, 0x1

    .line 440
    .line 441
    if-eqz v2, :cond_12

    .line 442
    .line 443
    iget-object v2, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$interpolator:Landroid/view/animation/Interpolator;

    .line 444
    .line 445
    iget-wide v3, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$duration:J

    .line 446
    .line 447
    iget-boolean v5, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ephemeral:Z

    .line 448
    .line 449
    iget-object v0, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 450
    .line 451
    move-object/from16 p0, p1

    .line 452
    .line 453
    move-object/from16 p1, v10

    .line 454
    .line 455
    move-object/from16 p2, v6

    .line 456
    .line 457
    move-object/from16 p3, v8

    .line 458
    .line 459
    move-object/from16 p4, v2

    .line 460
    .line 461
    move-wide/from16 p5, v3

    .line 462
    .line 463
    move/from16 p7, v5

    .line 464
    .line 465
    move-object/from16 p8, v0

    .line 466
    .line 467
    invoke-static/range {p0 .. p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    .line 468
    .line 469
    .line 470
    :cond_12
    return-void

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
