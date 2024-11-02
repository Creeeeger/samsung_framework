.class public final Lcom/android/systemui/controls/management/model/AllStructureModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel;


# instance fields
.field public final controls:Ljava/util/List;

.field public final elements:Ljava/util/List;

.field public final favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

.field public final favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

.field public final favoriteIds:Ljava/util/Map;

.field public final isLoading:Z

.field public final removedString:Ljava/lang/String;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    .line 13
    .line 14
    move-object/from16 v3, p4

    .line 15
    .line 16
    iput-object v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 17
    .line 18
    move/from16 v3, p5

    .line 19
    .line 20
    iput-boolean v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->isLoading:Z

    .line 21
    .line 22
    const v3, 0x7f1303b1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const-string v5, ""

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v6, v4

    .line 58
    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 59
    .line 60
    iget-object v6, v6, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-nez v6, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    move-object v5, v6

    .line 70
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v6, :cond_1

    .line 75
    .line 76
    new-instance v6, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/CharSequence;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/util/List;

    .line 121
    .line 122
    new-instance v6, Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_3

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    .line 142
    .line 143
    iget-object v7, v7, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-nez v3, :cond_4

    .line 158
    .line 159
    new-instance v3, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 168
    .line 169
    new-instance v4, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_6

    .line 183
    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    move-object v9, v8

    .line 189
    check-cast v9, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_5

    .line 196
    .line 197
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_7
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 206
    .line 207
    new-instance v1, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    .line 208
    .line 209
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;-><init>(Lcom/android/systemui/controls/management/model/AllStructureModel;)V

    .line 210
    .line 211
    .line 212
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    .line 213
    .line 214
    iget-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    .line 215
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 222
    .line 223
    const v4, 0x7f070233

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    const v6, 0x7f1303c2

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    const v7, 0x7f130396

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    new-instance v10, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    :cond_8
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_9

    .line 258
    .line 259
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    move-object v11, v9

    .line 264
    check-cast v11, Lcom/android/systemui/controls/ControlStatus;

    .line 265
    .line 266
    iget-boolean v11, v11, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    .line 267
    .line 268
    if-eqz v11, :cond_8

    .line 269
    .line 270
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_9
    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-eqz v8, :cond_c

    .line 292
    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    move-object v9, v8

    .line 298
    check-cast v9, Lcom/android/systemui/controls/ControlStatus;

    .line 299
    .line 300
    iget-object v9, v9, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 301
    .line 302
    invoke-virtual {v9}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    if-nez v9, :cond_a

    .line 307
    .line 308
    move-object v9, v5

    .line 309
    :cond_a
    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    if-nez v11, :cond_b

    .line 314
    .line 315
    new-instance v11, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-interface {v15, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :cond_b
    check-cast v11, Ljava/util/List;

    .line 324
    .line 325
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_c
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    .line 330
    .line 331
    if-eqz v1, :cond_d

    .line 332
    .line 333
    iget-boolean v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->isLoading:Z

    .line 334
    .line 335
    if-eqz v1, :cond_d

    .line 336
    .line 337
    new-instance v1, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    .line 338
    .line 339
    invoke-direct {v1, v7}, Lcom/android/systemui/controls/management/model/LoadingWrapper;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto/16 :goto_15

    .line 346
    .line 347
    :cond_d
    new-instance v1, Lcom/android/systemui/controls/management/model/SubtitleWrapper;

    .line 348
    .line 349
    invoke-direct {v1, v7}, Lcom/android/systemui/controls/management/model/SubtitleWrapper;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    const/4 v5, 0x1

    .line 360
    xor-int/2addr v1, v5

    .line 361
    const/16 v14, 0xa

    .line 362
    .line 363
    if-eqz v1, :cond_f

    .line 364
    .line 365
    new-instance v11, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-static {v10, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-eqz v7, :cond_e

    .line 383
    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    .line 389
    .line 390
    invoke-virtual {v7}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_e
    new-instance v18, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 399
    .line 400
    iget-object v8, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    .line 403
    .line 404
    const/4 v13, 0x1

    .line 405
    iget-object v12, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    .line 406
    .line 407
    move-object/from16 v7, v18

    .line 408
    .line 409
    move-object v9, v1

    .line 410
    move-object/from16 v16, v12

    .line 411
    .line 412
    move-object v12, v6

    .line 413
    move v5, v14

    .line 414
    move-object/from16 v14, v16

    .line 415
    .line 416
    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/controls/management/model/AllControlsModel;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V

    .line 417
    .line 418
    .line 419
    new-instance v7, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    .line 420
    .line 421
    invoke-direct {v7, v4}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    new-instance v7, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 428
    .line 429
    const/16 v19, 0x0

    .line 430
    .line 431
    const/16 v20, 0x0

    .line 432
    .line 433
    const/16 v21, 0xc

    .line 434
    .line 435
    const/16 v22, 0x0

    .line 436
    .line 437
    move-object/from16 v16, v7

    .line 438
    .line 439
    move-object/from16 v17, v1

    .line 440
    .line 441
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_f
    move v5, v14

    .line 449
    :goto_8
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    const/4 v7, 0x0

    .line 458
    move-object v14, v7

    .line 459
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    const/4 v8, 0x0

    .line 464
    if-eqz v7, :cond_15

    .line 465
    .line 466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    move-object v13, v7

    .line 471
    check-cast v13, Ljava/lang/CharSequence;

    .line 472
    .line 473
    invoke-static {v15, v13}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    move-object v10, v7

    .line 478
    check-cast v10, Ljava/util/List;

    .line 479
    .line 480
    iget-object v7, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 481
    .line 482
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    check-cast v7, Ljava/util/List;

    .line 487
    .line 488
    if-eqz v7, :cond_11

    .line 489
    .line 490
    new-instance v9, Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 493
    .line 494
    .line 495
    move-result v11

    .line 496
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .line 498
    .line 499
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v11

    .line 507
    if-eqz v11, :cond_10

    .line 508
    .line 509
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    check-cast v11, Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_10
    move-object v11, v9

    .line 520
    goto :goto_b

    .line 521
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .line 525
    .line 526
    move-object v11, v7

    .line 527
    :goto_b
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    invoke-interface {v7}, Ljava/util/Set;->size()I

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    const/4 v12, 0x1

    .line 536
    if-ne v7, v12, :cond_13

    .line 537
    .line 538
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result v7

    .line 542
    if-nez v7, :cond_12

    .line 543
    .line 544
    goto :goto_c

    .line 545
    :cond_12
    move/from16 v16, v8

    .line 546
    .line 547
    goto :goto_d

    .line 548
    :cond_13
    :goto_c
    move/from16 v16, v12

    .line 549
    .line 550
    :goto_d
    new-instance v18, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 551
    .line 552
    iget-object v8, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 553
    .line 554
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    iget-object v7, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    .line 559
    .line 560
    move-object/from16 v17, v7

    .line 561
    .line 562
    move-object/from16 v7, v18

    .line 563
    .line 564
    move/from16 v23, v12

    .line 565
    .line 566
    move-object v12, v6

    .line 567
    move-object/from16 v19, v13

    .line 568
    .line 569
    move/from16 v13, v16

    .line 570
    .line 571
    move-object v5, v14

    .line 572
    move-object/from16 v14, v17

    .line 573
    .line 574
    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/controls/management/model/AllControlsModel;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V

    .line 575
    .line 576
    .line 577
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    if-eqz v7, :cond_14

    .line 582
    .line 583
    move-object/from16 v14, v18

    .line 584
    .line 585
    goto :goto_e

    .line 586
    :cond_14
    new-instance v7, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    .line 587
    .line 588
    invoke-direct {v7, v4}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    new-instance v7, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 595
    .line 596
    const/4 v8, 0x0

    .line 597
    const/16 v20, 0x0

    .line 598
    .line 599
    const/16 v21, 0xc

    .line 600
    .line 601
    const/16 v22, 0x0

    .line 602
    .line 603
    move-object/from16 v16, v7

    .line 604
    .line 605
    move-object/from16 v17, v19

    .line 606
    .line 607
    move-object/from16 v19, v8

    .line 608
    .line 609
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-object v14, v5

    .line 616
    :goto_e
    const/16 v5, 0xa

    .line 617
    .line 618
    goto/16 :goto_9

    .line 619
    .line 620
    :cond_15
    move-object v5, v14

    .line 621
    const/16 v23, 0x1

    .line 622
    .line 623
    if-eqz v5, :cond_1e

    .line 624
    .line 625
    const v1, 0x7f070232

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    new-instance v3, Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    :cond_16
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 642
    .line 643
    .line 644
    move-result v9

    .line 645
    if-eqz v9, :cond_17

    .line 646
    .line 647
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    instance-of v10, v9, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 652
    .line 653
    if-eqz v10, :cond_16

    .line 654
    .line 655
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    goto :goto_f

    .line 659
    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    if-eqz v3, :cond_1c

    .line 664
    .line 665
    iget-object v3, v5, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 666
    .line 667
    instance-of v7, v3, Ljava/util/Collection;

    .line 668
    .line 669
    if-eqz v7, :cond_18

    .line 670
    .line 671
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 672
    .line 673
    .line 674
    move-result v7

    .line 675
    if-eqz v7, :cond_18

    .line 676
    .line 677
    goto :goto_11

    .line 678
    :cond_18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 683
    .line 684
    .line 685
    move-result v7

    .line 686
    if-eqz v7, :cond_1b

    .line 687
    .line 688
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    .line 693
    .line 694
    iget-object v7, v7, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 695
    .line 696
    invoke-virtual {v7}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    .line 697
    .line 698
    .line 699
    move-result-object v7

    .line 700
    if-eqz v7, :cond_1a

    .line 701
    .line 702
    move/from16 v12, v23

    .line 703
    .line 704
    goto :goto_10

    .line 705
    :cond_1a
    move v12, v8

    .line 706
    :goto_10
    if-eqz v12, :cond_19

    .line 707
    .line 708
    move/from16 v12, v23

    .line 709
    .line 710
    goto :goto_12

    .line 711
    :cond_1b
    :goto_11
    move v12, v8

    .line 712
    :goto_12
    if-eqz v12, :cond_1c

    .line 713
    .line 714
    goto :goto_13

    .line 715
    :cond_1c
    move/from16 v23, v8

    .line 716
    .line 717
    :goto_13
    if-eqz v23, :cond_1d

    .line 718
    .line 719
    new-instance v3, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    .line 720
    .line 721
    invoke-direct {v3, v1}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    goto :goto_14

    .line 728
    :cond_1d
    new-instance v1, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    .line 729
    .line 730
    invoke-direct {v1, v4}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    :goto_14
    new-instance v1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 737
    .line 738
    iget-object v3, v5, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 739
    .line 740
    iget-boolean v4, v5, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    .line 741
    .line 742
    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    :cond_1e
    :goto_15
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    .line 749
    .line 750
    return-void
.end method


# virtual methods
.method public final getElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFavorites()Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    move-object v6, v4

    .line 54
    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 55
    .line 56
    iget-object v6, v6, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v4, v5

    .line 70
    :goto_1
    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    iget-object v2, v4, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v2, v5

    .line 78
    :goto_2
    if-eqz v2, :cond_4

    .line 79
    .line 80
    sget-object v3, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :cond_4
    if-eqz v5, :cond_0

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    return-object v1
.end method
