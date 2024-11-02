.class public final Lcom/android/systemui/controls/management/model/AllControlsModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/management/model/CustomControlsModel;


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final categoryHeader:Ljava/lang/CharSequence;

.field public final controls:Ljava/util/List;

.field public final elements:Ljava/util/List;

.field public final emptyStructureZoneString:Ljava/lang/CharSequence;

.field public final favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

.field public final favoriteIds:Ljava/util/List;

.field public final needCategoryHeader:Z

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 13
    .line 14
    move-object/from16 v1, p3

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 17
    .line 18
    move-object/from16 v2, p5

    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    .line 21
    .line 22
    move/from16 v2, p6

    .line 23
    .line 24
    iput-boolean v2, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    .line 25
    .line 26
    move-object/from16 v2, p7

    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 29
    .line 30
    new-instance v2, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    move-object v5, v4

    .line 81
    check-cast v5, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 101
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v4, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    .line 113
    .line 114
    const v5, 0x7f070233

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    const v6, 0x7f070223

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    .line 129
    .line 130
    const/16 v8, 0xa

    .line 131
    .line 132
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-eqz v10, :cond_3

    .line 148
    .line 149
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    check-cast v10, Lcom/android/systemui/controls/ControlStatus;

    .line 154
    .line 155
    invoke-virtual {v10}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    iget-object v9, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    .line 172
    .line 173
    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    const/4 v13, 0x1

    .line 190
    if-ne v10, v11, :cond_4

    .line 191
    .line 192
    invoke-interface {v7, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_4

    .line 197
    .line 198
    move v7, v13

    .line 199
    goto :goto_3

    .line 200
    :cond_4
    const/4 v7, 0x0

    .line 201
    :goto_3
    const v9, 0x7f1303b1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    new-instance v4, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    :cond_5
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_6

    .line 221
    .line 222
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    move-object v11, v10

    .line 227
    check-cast v11, Lcom/android/systemui/controls/ControlStatus;

    .line 228
    .line 229
    iget-boolean v11, v11, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    .line 230
    .line 231
    if-eqz v11, :cond_5

    .line 232
    .line 233
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_6
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    iget-object v10, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 242
    .line 243
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    iget-object v14, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    .line 248
    .line 249
    if-eqz v11, :cond_7

    .line 250
    .line 251
    move-object v11, v14

    .line 252
    goto :goto_5

    .line 253
    :cond_7
    move-object v11, v10

    .line 254
    :goto_5
    new-instance v15, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 255
    .line 256
    iget-boolean v12, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    .line 257
    .line 258
    invoke-direct {v15, v10, v7, v11, v12}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;-><init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    if-eqz v9, :cond_9

    .line 265
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_8

    .line 284
    .line 285
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    .line 290
    .line 291
    new-instance v6, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 292
    .line 293
    invoke-direct {v6, v4}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;-><init>(Lcom/android/systemui/controls/ControlStatus;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    .line 302
    .line 303
    new-instance v1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    .line 304
    .line 305
    invoke-direct {v1, v5}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    goto/16 :goto_b

    .line 312
    .line 313
    :cond_9
    new-instance v4, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;

    .line 314
    .line 315
    new-instance v7, Landroid/util/ArrayMap;

    .line 316
    .line 317
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-direct {v4, v7}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;-><init>(Ljava/util/Map;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_c

    .line 332
    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    move-object v8, v7

    .line 338
    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    .line 339
    .line 340
    iget-object v8, v8, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 341
    .line 342
    invoke-virtual {v8}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    if-nez v8, :cond_a

    .line 347
    .line 348
    const-string v8, ""

    .line 349
    .line 350
    :cond_a
    invoke-virtual {v4, v8}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    if-nez v9, :cond_b

    .line 355
    .line 356
    new-instance v9, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v8, v9}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    :cond_b
    check-cast v9, Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_c
    iget-object v1, v4, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->orderedKeys:Ljava/util/List;

    .line 371
    .line 372
    check-cast v1, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    move v7, v13

    .line 379
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    if-eqz v8, :cond_f

    .line 384
    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    check-cast v8, Ljava/lang/CharSequence;

    .line 390
    .line 391
    invoke-static {v4, v8}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    check-cast v9, Ljava/lang/Iterable;

    .line 396
    .line 397
    new-instance v10, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 398
    .line 399
    invoke-direct {v10, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 400
    .line 401
    .line 402
    sget-object v9, Lcom/android/systemui/controls/management/model/AllControlsModel$createWrappers$values$1;->INSTANCE:Lcom/android/systemui/controls/management/model/AllControlsModel$createWrappers$values$1;

    .line 403
    .line 404
    new-instance v11, Lkotlin/sequences/TransformingSequence;

    .line 405
    .line 406
    invoke-direct {v11, v10, v9}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    if-eqz v9, :cond_d

    .line 414
    .line 415
    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 416
    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_d
    if-nez v7, :cond_e

    .line 420
    .line 421
    new-instance v9, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    .line 422
    .line 423
    invoke-direct {v9, v6}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_e
    const/4 v7, 0x0

    .line 431
    :goto_9
    new-instance v9, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    .line 432
    .line 433
    invoke-direct {v9, v8}, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    xor-int/2addr v1, v13

    .line 448
    if-eqz v1, :cond_13

    .line 449
    .line 450
    new-instance v1, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    :cond_10
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    if-eqz v6, :cond_11

    .line 464
    .line 465
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    instance-of v7, v6, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    .line 470
    .line 471
    if-eqz v7, :cond_10

    .line 472
    .line 473
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    xor-int/2addr v1, v13

    .line 482
    if-eqz v1, :cond_12

    .line 483
    .line 484
    new-instance v1, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    .line 485
    .line 486
    invoke-direct {v1, v14}, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    :cond_12
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 493
    .line 494
    .line 495
    :cond_13
    new-instance v1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    .line 496
    .line 497
    invoke-direct {v1, v5}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    :goto_b
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 504
    .line 505
    return-void
.end method


# virtual methods
.method public final changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 22
    .line 23
    instance-of v7, v6, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 24
    .line 25
    if-eqz v7, :cond_1

    .line 26
    .line 27
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 30
    .line 31
    iget-object v6, v6, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    move v6, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v6, v3

    .line 46
    :goto_0
    if-eqz v6, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v2, v4

    .line 50
    :goto_1
    check-cast v2, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 51
    .line 52
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;Z)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    move-object v1, p2

    .line 72
    check-cast v1, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 73
    .line 74
    instance-of v2, v1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    check-cast v1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    move v1, v5

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move v1, v3

    .line 93
    :goto_2
    if-eqz v1, :cond_3

    .line 94
    .line 95
    move-object v4, p2

    .line 96
    :cond_5
    check-cast v4, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 97
    .line 98
    if-eqz v4, :cond_e

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    add-int/lit8 p2, p1, 0x1

    .line 105
    .line 106
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move v2, v3

    .line 115
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    const/4 v7, -0x1

    .line 120
    if-eqz v6, :cond_7

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 127
    .line 128
    instance-of v6, v6, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 129
    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    move v2, v7

    .line 137
    :goto_4
    if-ne v2, v7, :cond_8

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    :cond_8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sub-int/2addr v2, p2

    .line 148
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    instance-of v2, v1, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 172
    .line 173
    if-eqz v2, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_b

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 203
    .line 204
    iget-boolean v0, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 205
    .line 206
    if-nez v0, :cond_c

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_d
    :goto_6
    move v3, v5

    .line 210
    :goto_7
    iput-boolean v3, v4, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 211
    .line 212
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 213
    .line 214
    if-eqz p0, :cond_e

    .line 215
    .line 216
    new-instance p2, Ljava/lang/Object;

    .line 217
    .line 218
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_e
    return-void
.end method

.method public final setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 7
    .line 8
    if-ne p2, v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    :cond_3
    new-instance v2, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v2, v1, v3, p2}, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;->onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V

    .line 56
    .line 57
    .line 58
    iput-boolean p2, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 61
    .line 62
    check-cast p2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    new-instance p2, Ljava/lang/Object;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void
.end method
