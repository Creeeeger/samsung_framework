.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

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
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mUpdateShortcutsRunnable$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 6
    .line 7
    const-string v1, "lock_application_shortcut"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 33
    .line 34
    const/16 v8, 0xa

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v1, :cond_a

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mSb:Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    move v11, v5

    .line 49
    :goto_0
    if-ge v11, v10, :cond_1

    .line 50
    .line 51
    rem-int/lit8 v12, v11, 0x5

    .line 52
    .line 53
    if-nez v12, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v11}, Ljava/lang/String;->codePointAt(I)I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    add-int/2addr v12, v3

    .line 60
    int-to-char v12, v12

    .line 61
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Lkotlin/text/Regex;

    .line 76
    .line 77
    const-string v10, ";"

    .line 78
    .line 79
    invoke-direct {v1, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-eqz v10, :cond_4

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_3

    .line 117
    .line 118
    move v10, v3

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move v10, v5

    .line 121
    :goto_2
    if-nez v10, :cond_2

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    add-int/2addr v1, v3

    .line 128
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 134
    .line 135
    :goto_3
    new-array v1, v5, [Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, [Ljava/lang/String;

    .line 142
    .line 143
    array-length v1, v0

    .line 144
    if-ge v1, v2, :cond_6

    .line 145
    .line 146
    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_5

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    aget-object v3, v7, v3

    .line 184
    .line 185
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iput-object v9, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 189
    .line 190
    iput-object v9, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 191
    .line 192
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 193
    .line 194
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    .line 202
    goto/16 :goto_8

    .line 203
    .line 204
    :cond_6
    array-length v1, v0

    .line 205
    div-int/2addr v1, v2

    .line 206
    move v4, v5

    .line 207
    :goto_5
    if-ge v4, v1, :cond_b

    .line 208
    .line 209
    if-ge v4, v2, :cond_b

    .line 210
    .line 211
    mul-int/lit8 v6, v4, 0x2

    .line 212
    .line 213
    const-string v8, "1"

    .line 214
    .line 215
    aget-object v10, v0, v6

    .line 216
    .line 217
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-eqz v8, :cond_9

    .line 222
    .line 223
    add-int/lit8 v6, v6, 0x1

    .line 224
    .line 225
    aget-object v8, v0, v6

    .line 226
    .line 227
    if-eqz v8, :cond_7

    .line 228
    .line 229
    const-string v10, "NoUnlockNeeded"

    .line 230
    .line 231
    invoke-static {v8, v10, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-eqz v8, :cond_7

    .line 236
    .line 237
    aget-object v8, v7, v4

    .line 238
    .line 239
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iput v3, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    .line 243
    .line 244
    aget-object v8, v7, v4

    .line 245
    .line 246
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    aget-object v10, v0, v6

    .line 250
    .line 251
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    aget-object v6, v0, v6

    .line 255
    .line 256
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const-string v11, "/"

    .line 260
    .line 261
    const/4 v12, 0x6

    .line 262
    invoke-static {v6, v11, v12}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    add-int/2addr v6, v3

    .line 267
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    iput-object v6, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_7
    aget-object v8, v7, v4

    .line 275
    .line 276
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iput v5, v8, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->shortcutProperty:I

    .line 280
    .line 281
    aget-object v8, v0, v6

    .line 282
    .line 283
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    if-nez v8, :cond_8

    .line 291
    .line 292
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 293
    .line 294
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    aget-object v6, v0, v6

    .line 298
    .line 299
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    if-eqz v6, :cond_8

    .line 307
    .line 308
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    :cond_8
    aget-object v6, v7, v4

    .line 313
    .line 314
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    iput-object v8, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_9
    aget-object v6, v0, v6

    .line 321
    .line 322
    aget-object v6, v7, v4

    .line 323
    .line 324
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    iput-object v9, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 328
    .line 329
    aget-object v6, v7, v4

    .line 330
    .line 331
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iput-object v9, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 335
    .line 336
    aget-object v6, v7, v4

    .line 337
    .line 338
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 342
    .line 343
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 344
    .line 345
    goto/16 :goto_5

    .line 346
    .line 347
    :cond_a
    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_b

    .line 373
    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Ljava/lang/Number;

    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    aget-object v3, v7, v3

    .line 385
    .line 386
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    iput-object v9, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 390
    .line 391
    iput-object v9, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 392
    .line 393
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 394
    .line 395
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 396
    .line 397
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 402
    .line 403
    :goto_8
    if-ge v5, v2, :cond_d

    .line 404
    .line 405
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 410
    .line 411
    if-eqz v0, :cond_c

    .line 412
    .line 413
    aget-object v0, v7, v5

    .line 414
    .line 415
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 419
    .line 420
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;

    .line 421
    .line 422
    invoke-direct {v3, v0, p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_c
    aget-object v0, v7, v5

    .line 430
    .line 431
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 435
    .line 436
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;

    .line 437
    .line 438
    invoke-direct {v3, v0, p0, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 442
    .line 443
    .line 444
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 445
    .line 446
    goto :goto_8

    .line 447
    :cond_d
    return-void
.end method
