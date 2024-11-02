.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $model:Lcom/android/systemui/controls/management/model/AllStructureModel;

.field public final synthetic $orderList:Ljava/util/List;

.field public final synthetic $update:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;",
            "Lcom/android/systemui/controls/management/model/AllStructureModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$model:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$orderList:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$update:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$model:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$orderList:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    check-cast v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    instance-of v7, v6, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 31
    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v7, v6

    .line 58
    check-cast v7, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 59
    .line 60
    iget-object v7, v7, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 61
    .line 62
    iget-object v8, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_2

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_4

    .line 93
    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 99
    .line 100
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object v8, v7, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 112
    .line 113
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    new-instance v6, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_6

    .line 139
    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    move-object v8, v7

    .line 145
    check-cast v8, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 146
    .line 147
    iget-object v8, v8, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 148
    .line 149
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-nez v8, :cond_5

    .line 154
    .line 155
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    const-string v7, "StructureModel"

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    if-eqz v5, :cond_d

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    check-cast v5, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 177
    .line 178
    sget-boolean v9, Lcom/android/systemui/BasicRune;->CONTROLS_SMALL_TYPE_NEW_STRUCTURE_ORDER_FIRST:Z

    .line 179
    .line 180
    if-eqz v9, :cond_c

    .line 181
    .line 182
    iget-object v9, v5, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 183
    .line 184
    iget-object v9, v9, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 185
    .line 186
    instance-of v10, v9, Ljava/util/Collection;

    .line 187
    .line 188
    if-eqz v10, :cond_7

    .line 189
    .line 190
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_7

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_7
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_a

    .line 206
    .line 207
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    check-cast v10, Lcom/android/systemui/controls/ControlStatus;

    .line 212
    .line 213
    iget-object v10, v10, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 214
    .line 215
    invoke-virtual {v10}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v10}, Landroid/service/controls/CustomControl;->getLayoutType()I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    const/4 v11, 0x1

    .line 224
    if-ne v10, v11, :cond_9

    .line 225
    .line 226
    move v10, v11

    .line 227
    goto :goto_5

    .line 228
    :cond_9
    move v10, v8

    .line 229
    :goto_5
    if-eqz v10, :cond_8

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_a
    :goto_6
    move v11, v8

    .line 233
    :goto_7
    iget-object v5, v5, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 234
    .line 235
    if-eqz v11, :cond_b

    .line 236
    .line 237
    invoke-virtual {v6, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    const-string v5, "changeStructureOrder SmallType Reorder"

    .line 241
    .line 242
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_b
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_c
    iget-object v5, v5, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 251
    .line 252
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    :cond_e
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_f

    .line 265
    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Ljava/lang/CharSequence;

    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    check-cast v5, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 277
    .line 278
    if-eqz v5, :cond_e

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    if-ge v8, v9, :cond_e

    .line 285
    .line 286
    add-int/lit8 v9, v8, 0x1

    .line 287
    .line 288
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    check-cast v8, Ljava/lang/Number;

    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    invoke-virtual {v3, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    move v8, v9

    .line 302
    goto :goto_8

    .line 303
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_11

    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    instance-of v4, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 323
    .line 324
    if-eqz v4, :cond_10

    .line 325
    .line 326
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    .line 331
    .line 332
    const/16 v3, 0xa

    .line 333
    .line 334
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_12

    .line 350
    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 356
    .line 357
    iget-object v3, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 358
    .line 359
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v3, "changeStructureOrder after="

    .line 366
    .line 367
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string/jumbo v2, "}"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    iput-object v6, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    .line 387
    .line 388
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->$update:Lkotlin/jvm/functions/Function0;

    .line 389
    .line 390
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 394
    .line 395
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 396
    .line 397
    if-nez p0, :cond_13

    .line 398
    .line 399
    const/4 p0, 0x0

    .line 400
    :cond_13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 401
    .line 402
    .line 403
    return-void
.end method
