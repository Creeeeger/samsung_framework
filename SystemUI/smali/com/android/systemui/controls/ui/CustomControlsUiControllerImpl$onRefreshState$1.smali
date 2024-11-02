.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controls:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$componentName:Landroid/content/ComponentName;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$componentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "onRefreshState: app="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "}, controls.size="

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "CustomControlsUiControllerImpl"

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    .line 50
    .line 51
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v5, 0x0

    .line 58
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x1

    .line 63
    if-eqz v6, :cond_31

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Landroid/service/controls/Control;

    .line 70
    .line 71
    iget-object v8, v4, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 72
    .line 73
    sget-object v9, Lcom/android/systemui/controls/ui/util/ControlExtension;->Companion:Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;

    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v6}, Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v11, "onRefreshState: "

    .line 85
    .line 86
    .line 87
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v8, v3, v9}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v8, v4, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 101
    .line 102
    new-instance v9, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    move-object v10, v8

    .line 108
    check-cast v10, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_1

    .line 119
    .line 120
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    instance-of v13, v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 125
    .line 126
    if-eqz v13, :cond_0

    .line 127
    .line 128
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_4

    .line 141
    .line 142
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    move-object v12, v11

    .line 147
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 148
    .line 149
    iget-object v12, v12, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 150
    .line 151
    if-eqz v12, :cond_3

    .line 152
    .line 153
    iget-object v12, v12, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 154
    .line 155
    if-eqz v12, :cond_3

    .line 156
    .line 157
    iget-object v12, v12, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const/4 v12, 0x0

    .line 161
    :goto_2
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-eqz v12, :cond_2

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_4
    const/4 v11, 0x0

    .line 173
    :goto_3
    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 174
    .line 175
    if-eqz v11, :cond_30

    .line 176
    .line 177
    invoke-virtual {v6}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const-string v9, ""

    .line 182
    .line 183
    if-eqz v5, :cond_5

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    if-nez v5, :cond_6

    .line 190
    .line 191
    :cond_5
    move-object v5, v9

    .line 192
    :cond_6
    invoke-virtual {v6}, Landroid/service/controls/Control;->getStatus()I

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    iget-object v13, v4, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 197
    .line 198
    if-ne v12, v7, :cond_17

    .line 199
    .line 200
    iget-object v12, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    xor-int/2addr v7, v12

    .line 207
    if-eqz v7, :cond_17

    .line 208
    .line 209
    iget-object v7, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    iget-object v5, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v6}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    if-eqz v7, :cond_8

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    if-nez v7, :cond_7

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    move-object v9, v7

    .line 233
    :cond_8
    :goto_4
    new-instance v7, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    if-eqz v14, :cond_a

    .line 247
    .line 248
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    instance-of v15, v14, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 253
    .line 254
    if-eqz v15, :cond_9

    .line 255
    .line 256
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_a
    new-instance v12, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    :cond_b
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    if-eqz v14, :cond_c

    .line 274
    .line 275
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    move-object v15, v14

    .line 280
    check-cast v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 281
    .line 282
    iget-object v15, v15, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v15

    .line 288
    if-eqz v15, :cond_b

    .line 289
    .line 290
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_c
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    add-int/lit8 v14, v14, -0x1

    .line 303
    .line 304
    new-instance v15, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v16

    .line 313
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v17

    .line 317
    if-eqz v17, :cond_e

    .line 318
    .line 319
    move-object/from16 v17, v2

    .line 320
    .line 321
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    move/from16 v18, v14

    .line 326
    .line 327
    instance-of v14, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 328
    .line 329
    if-eqz v14, :cond_d

    .line 330
    .line 331
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :cond_d
    move-object/from16 v2, v17

    .line 335
    .line 336
    move/from16 v14, v18

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_e
    move-object/from16 v17, v2

    .line 340
    .line 341
    move/from16 v18, v14

    .line 342
    .line 343
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    :cond_f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    if-eqz v14, :cond_10

    .line 356
    .line 357
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v14

    .line 361
    move-object v15, v14

    .line 362
    check-cast v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 363
    .line 364
    iget-object v15, v15, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v15

    .line 370
    if-eqz v15, :cond_f

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_10
    const/4 v14, 0x0

    .line 374
    :goto_8
    check-cast v14, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 375
    .line 376
    if-eqz v14, :cond_11

    .line 377
    .line 378
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 379
    .line 380
    .line 381
    move-result v14

    .line 382
    goto :goto_9

    .line 383
    :cond_11
    move/from16 v14, v18

    .line 384
    .line 385
    :goto_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    xor-int/lit8 v2, v2, 0x1

    .line 390
    .line 391
    if-eqz v2, :cond_12

    .line 392
    .line 393
    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 398
    .line 399
    .line 400
    move-result v14

    .line 401
    if-le v7, v14, :cond_12

    .line 402
    .line 403
    add-int/lit8 v14, v14, 0x1

    .line 404
    .line 405
    :cond_12
    iput-object v9, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 406
    .line 407
    iget-object v2, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 408
    .line 409
    if-eqz v2, :cond_13

    .line 410
    .line 411
    new-instance v10, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 412
    .line 413
    iget-object v12, v2, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    .line 414
    .line 415
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 416
    .line 417
    invoke-direct {v10, v12, v2, v6}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 418
    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_13
    const/4 v10, 0x0

    .line 422
    :goto_a
    iput-object v10, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 423
    .line 424
    if-ge v7, v14, :cond_14

    .line 425
    .line 426
    move v2, v7

    .line 427
    :goto_b
    if-ge v2, v14, :cond_15

    .line 428
    .line 429
    add-int/lit8 v6, v2, 0x1

    .line 430
    .line 431
    invoke-static {v8, v2, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 432
    .line 433
    .line 434
    move v2, v6

    .line 435
    goto :goto_b

    .line 436
    :cond_14
    add-int/lit8 v2, v14, 0x1

    .line 437
    .line 438
    if-gt v2, v7, :cond_15

    .line 439
    .line 440
    move v6, v7

    .line 441
    :goto_c
    add-int/lit8 v10, v6, -0x1

    .line 442
    .line 443
    invoke-static {v8, v6, v10}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 444
    .line 445
    .line 446
    if-eq v6, v2, :cond_15

    .line 447
    .line 448
    move v6, v10

    .line 449
    goto :goto_c

    .line 450
    :cond_15
    iget-object v2, v4, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 451
    .line 452
    if-eqz v2, :cond_16

    .line 453
    .line 454
    invoke-virtual {v2, v7, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 455
    .line 456
    .line 457
    :cond_16
    invoke-virtual {v4, v14, v11}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    .line 458
    .line 459
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string/jumbo v6, "notifyItemMoved: from "

    .line 463
    .line 464
    .line 465
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v5, " to "

    .line 472
    .line 473
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v5, " ("

    .line 480
    .line 481
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v5, "->"

    .line 488
    .line 489
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v5, ")"

    .line 496
    .line 497
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v13, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_1a

    .line 508
    .line 509
    :cond_17
    move-object/from16 v17, v2

    .line 510
    .line 511
    const/4 v2, -0x1

    .line 512
    iget-object v5, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 513
    .line 514
    if-eqz v5, :cond_18

    .line 515
    .line 516
    new-instance v7, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 517
    .line 518
    sget-object v12, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    .line 519
    .line 520
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-static {v6}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    .line 524
    .line 525
    .line 526
    move-result-object v12

    .line 527
    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    .line 528
    .line 529
    invoke-direct {v7, v5, v12, v6}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 530
    .line 531
    .line 532
    goto :goto_d

    .line 533
    :cond_18
    const/4 v7, 0x0

    .line 534
    :goto_d
    iput-object v7, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 535
    .line 536
    sget-boolean v5, Lcom/android/systemui/BasicRune;->CONTROLS_DYNAMIC_ORDERING:Z

    .line 537
    .line 538
    if-eqz v5, :cond_2e

    .line 539
    .line 540
    invoke-virtual {v6}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-virtual {v5}, Landroid/service/controls/CustomControl;->getLayoutType()I

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    const/4 v7, 0x1

    .line 549
    if-ne v5, v7, :cond_1d

    .line 550
    .line 551
    new-instance v5, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 552
    .line 553
    invoke-direct {v5, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 554
    .line 555
    .line 556
    sget-object v7, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$$inlined$filterIsInstance$1;

    .line 557
    .line 558
    invoke-static {v5, v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    new-instance v7, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;

    .line 563
    .line 564
    invoke-direct {v7, v6}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$1;-><init>(Landroid/service/controls/Control;)V

    .line 565
    .line 566
    .line 567
    invoke-static {v5, v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    sget-object v7, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$2;

    .line 572
    .line 573
    invoke-static {v5, v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    sget-object v7, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateControl$isAllSmallType$3;

    .line 578
    .line 579
    new-instance v12, Lkotlin/sequences/TransformingSequence;

    .line 580
    .line 581
    invoke-direct {v12, v5, v7}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 582
    .line 583
    .line 584
    new-instance v5, Lkotlin/sequences/TransformingSequence$iterator$1;

    .line 585
    .line 586
    invoke-direct {v5, v12}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    .line 587
    .line 588
    .line 589
    const/4 v7, 0x0

    .line 590
    :goto_e
    invoke-virtual {v5}, Lkotlin/sequences/TransformingSequence$iterator$1;->hasNext()Z

    .line 591
    .line 592
    .line 593
    move-result v12

    .line 594
    if-eqz v12, :cond_1b

    .line 595
    .line 596
    invoke-virtual {v5}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v12

    .line 600
    if-ltz v7, :cond_1a

    .line 601
    .line 602
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v12

    .line 606
    if-eqz v12, :cond_19

    .line 607
    .line 608
    move v2, v7

    .line 609
    goto :goto_f

    .line 610
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 611
    .line 612
    goto :goto_e

    .line 613
    :cond_1a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 614
    .line 615
    .line 616
    const/4 v0, 0x0

    .line 617
    throw v0

    .line 618
    :cond_1b
    :goto_f
    const/4 v5, 0x0

    .line 619
    if-ltz v2, :cond_1c

    .line 620
    .line 621
    const/4 v2, 0x1

    .line 622
    goto :goto_10

    .line 623
    :cond_1c
    const/4 v2, 0x0

    .line 624
    :goto_10
    if-eqz v2, :cond_1e

    .line 625
    .line 626
    const/4 v2, 0x1

    .line 627
    goto :goto_11

    .line 628
    :cond_1d
    const/4 v5, 0x0

    .line 629
    :cond_1e
    const/4 v2, 0x0

    .line 630
    :goto_11
    if-eqz v2, :cond_2e

    .line 631
    .line 632
    iget-object v2, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 633
    .line 634
    if-eqz v2, :cond_2f

    .line 635
    .line 636
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 637
    .line 638
    if-eqz v2, :cond_2f

    .line 639
    .line 640
    invoke-virtual {v2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    if-nez v2, :cond_1f

    .line 645
    .line 646
    goto :goto_12

    .line 647
    :cond_1f
    move-object v9, v2

    .line 648
    :goto_12
    new-instance v2, Ljava/util/ArrayList;

    .line 649
    .line 650
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    :cond_20
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 658
    .line 659
    .line 660
    move-result v7

    .line 661
    if-eqz v7, :cond_21

    .line 662
    .line 663
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    instance-of v12, v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 668
    .line 669
    if-eqz v12, :cond_20

    .line 670
    .line 671
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    goto :goto_13

    .line 675
    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    :cond_22
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    if-eqz v7, :cond_23

    .line 689
    .line 690
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v7

    .line 694
    move-object v12, v7

    .line 695
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 696
    .line 697
    iget-object v12, v12, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 698
    .line 699
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v12

    .line 703
    if-eqz v12, :cond_22

    .line 704
    .line 705
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    goto :goto_14

    .line 709
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    :cond_24
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v9

    .line 722
    if-eqz v9, :cond_26

    .line 723
    .line 724
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v9

    .line 728
    move-object v12, v9

    .line 729
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 730
    .line 731
    invoke-virtual {v12}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 732
    .line 733
    .line 734
    move-result-object v12

    .line 735
    sget-object v14, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 736
    .line 737
    if-ne v12, v14, :cond_25

    .line 738
    .line 739
    const/4 v12, 0x1

    .line 740
    goto :goto_16

    .line 741
    :cond_25
    const/4 v12, 0x0

    .line 742
    :goto_16
    if-eqz v12, :cond_24

    .line 743
    .line 744
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    goto :goto_15

    .line 748
    :cond_26
    sget-object v7, Lkotlin/comparisons/NaturalOrderComparator;->INSTANCE:Lkotlin/comparisons/NaturalOrderComparator;

    .line 749
    .line 750
    new-instance v9, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    .line 751
    .line 752
    const/4 v12, 0x1

    .line 753
    invoke-direct {v9, v7, v12}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 754
    .line 755
    .line 756
    new-instance v7, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$refreshOrdering$lambda$57$$inlined$compareBy$1;

    .line 757
    .line 758
    invoke-direct {v7, v9}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$refreshOrdering$lambda$57$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    .line 759
    .line 760
    .line 761
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 766
    .line 767
    .line 768
    move-result v7

    .line 769
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 770
    .line 771
    .line 772
    move-result v9

    .line 773
    xor-int/2addr v9, v12

    .line 774
    if-eqz v9, :cond_2d

    .line 775
    .line 776
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 777
    .line 778
    .line 779
    move-result-object v6

    .line 780
    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 781
    .line 782
    .line 783
    move-result v9

    .line 784
    if-eqz v9, :cond_29

    .line 785
    .line 786
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v9

    .line 790
    move-object v12, v9

    .line 791
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 792
    .line 793
    invoke-virtual {v12}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 794
    .line 795
    .line 796
    move-result-object v12

    .line 797
    sget-object v14, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 798
    .line 799
    if-ne v12, v14, :cond_28

    .line 800
    .line 801
    const/4 v12, 0x1

    .line 802
    goto :goto_17

    .line 803
    :cond_28
    const/4 v12, 0x0

    .line 804
    :goto_17
    if-eqz v12, :cond_27

    .line 805
    .line 806
    move-object v5, v9

    .line 807
    :cond_29
    check-cast v5, Lcom/android/systemui/controls/management/model/MainModel;

    .line 808
    .line 809
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 810
    .line 811
    .line 812
    move-result v5

    .line 813
    add-int/lit8 v5, v5, 0x1

    .line 814
    .line 815
    invoke-interface {v2, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    add-int/2addr v2, v5

    .line 820
    if-ge v7, v2, :cond_2a

    .line 821
    .line 822
    move v5, v7

    .line 823
    :goto_18
    if-ge v5, v2, :cond_2b

    .line 824
    .line 825
    add-int/lit8 v6, v5, 0x1

    .line 826
    .line 827
    invoke-static {v8, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 828
    .line 829
    .line 830
    move v5, v6

    .line 831
    goto :goto_18

    .line 832
    :cond_2a
    add-int/lit8 v5, v2, 0x1

    .line 833
    .line 834
    if-gt v5, v7, :cond_2b

    .line 835
    .line 836
    move v6, v7

    .line 837
    :goto_19
    add-int/lit8 v9, v6, -0x1

    .line 838
    .line 839
    invoke-static {v8, v6, v9}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 840
    .line 841
    .line 842
    if-eq v6, v5, :cond_2b

    .line 843
    .line 844
    move v6, v9

    .line 845
    goto :goto_19

    .line 846
    :cond_2b
    iget-object v5, v4, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 847
    .line 848
    if-eqz v5, :cond_2c

    .line 849
    .line 850
    invoke-virtual {v5, v7, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v5, v2, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 854
    .line 855
    .line 856
    :cond_2c
    const-string/jumbo v5, "refreshOrdering: "

    .line 857
    .line 858
    .line 859
    const-string v6, " -> "

    .line 860
    .line 861
    invoke-static {v5, v7, v6, v2}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    invoke-virtual {v13, v3, v5}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    move v7, v2

    .line 869
    :cond_2d
    iget-object v2, v4, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 870
    .line 871
    if-eqz v2, :cond_2f

    .line 872
    .line 873
    invoke-virtual {v2, v7, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    goto :goto_1a

    .line 877
    :cond_2e
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    invoke-virtual {v4, v2, v11}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    .line 882
    .line 883
    .line 884
    :cond_2f
    :goto_1a
    const/4 v2, 0x1

    .line 885
    move v5, v2

    .line 886
    goto :goto_1b

    .line 887
    :cond_30
    move-object/from16 v17, v2

    .line 888
    .line 889
    :goto_1b
    move-object/from16 v2, v17

    .line 890
    .line 891
    goto/16 :goto_0

    .line 892
    .line 893
    :cond_31
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 894
    .line 895
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    invoke-static {v2, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V

    .line 900
    .line 901
    .line 902
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 903
    .line 904
    invoke-static {v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    .line 905
    .line 906
    .line 907
    if-eqz v5, :cond_32

    .line 908
    .line 909
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 910
    .line 911
    const/4 v1, 0x1

    .line 912
    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    .line 913
    .line 914
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 915
    .line 916
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 925
    .line 926
    :cond_32
    return-void
.end method
