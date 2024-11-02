.class public final Landroidx/picker/adapter/AbsAdapter$1;
.super Landroid/widget/Filter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/picker/adapter/AbsAdapter;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/picker/adapter/AbsAdapter;->mDataSet:Ljava/util/List;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroidx/picker/model/viewdata/ViewData;

    .line 61
    .line 62
    instance-of v5, v4, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 63
    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    move-object v5, v4

    .line 67
    check-cast v5, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 68
    .line 69
    iget-object v5, v5, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    instance-of v5, v4, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    check-cast v4, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 86
    .line 87
    iget-object v4, v4, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    .line 88
    .line 89
    iget-object v5, p0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :cond_3
    iget-object v3, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 105
    .line 106
    iput-object p1, v3, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v3, v3, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    sget-object v4, Landroidx/picker/features/search/InitialSearchUtils;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    .line 111
    .line 112
    const-string/jumbo v4, "packageName"

    .line 113
    .line 114
    .line 115
    const-string v5, "componentName"

    .line 116
    .line 117
    const-string v6, "label"

    .line 118
    .line 119
    const-string v7, "InitialSearchUtils"

    .line 120
    .line 121
    new-instance v8, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v9, Landroid/os/Bundle;

    .line 127
    .line 128
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v10, "android:query-arg-sql-selection"

    .line 132
    .line 133
    invoke-virtual {v9, v10, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    sget-object v3, Landroidx/picker/features/search/InitialSearchUtils;->SCS_PROVIDER_URI:Landroid/net/Uri;

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    invoke-virtual {p1, v3, v10, v9, v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 144
    .line 145
    .line 146
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    if-nez p1, :cond_4

    .line 148
    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_5

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    const-string/jumbo v11, "user"

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    const/4 v12, -0x1

    .line 179
    if-eq v3, v12, :cond_7

    .line 180
    .line 181
    if-eq v9, v12, :cond_7

    .line 182
    .line 183
    if-ne v10, v12, :cond_6

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    sget-object v11, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    .line 199
    .line 200
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v11, Landroidx/picker/model/AppInfo;

    .line 208
    .line 209
    invoke-direct {v11, v9, v3, v10}, Landroidx/picker/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_7
    :goto_2
    const-string v11, "Can\'t find columnIndex (%s : %d, %s : %d, %s : %d)"

    .line 217
    .line 218
    const/4 v12, 0x6

    .line 219
    new-array v12, v12, [Ljava/lang/Object;

    .line 220
    .line 221
    const/4 v13, 0x0

    .line 222
    aput-object v6, v12, v13

    .line 223
    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    const/4 v13, 0x1

    .line 229
    aput-object v3, v12, v13

    .line 230
    .line 231
    const/4 v3, 0x2

    .line 232
    aput-object v5, v12, v3

    .line 233
    .line 234
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    const/4 v9, 0x3

    .line 239
    aput-object v3, v12, v9

    .line 240
    .line 241
    const/4 v3, 0x4

    .line 242
    aput-object v4, v12, v3

    .line 243
    .line 244
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const/4 v9, 0x5

    .line 249
    aput-object v3, v12, v9

    .line 250
    .line 251
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 259
    .line 260
    .line 261
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-nez v3, :cond_5

    .line 263
    .line 264
    :goto_4
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :catchall_0
    move-exception v3

    .line 269
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :catchall_1
    move-exception p1

    .line 274
    :try_start_4
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    :goto_5
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 278
    :catch_0
    move-exception p1

    .line 279
    const-string v3, "Fail to get application query result: "

    .line 280
    .line 281
    invoke-static {v3, p1, v7}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_8
    :goto_6
    const-class p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 285
    .line 286
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt___CollectionsJvmKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    const-class v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 291
    .line 292
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt___CollectionsJvmKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    iget-object v3, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 297
    .line 298
    invoke-virtual {v3, p1, v8}, Landroidx/picker/adapter/AbsAdapter;->getAppInfoFilterResult(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iget-object v4, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 303
    .line 304
    invoke-virtual {v4, v2, v8}, Landroidx/picker/adapter/AbsAdapter;->getAppInfoFilterResult(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    move-object v4, v3

    .line 309
    check-cast v4, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-nez v5, :cond_a

    .line 316
    .line 317
    iget-object v5, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 318
    .line 319
    iget-object v5, v5, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    .line 320
    .line 321
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    const v6, 0x7f13114d

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    iget-object v6, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-static {v5, v3}, Landroidx/picker/adapter/AbsAdapter;->generateFilterHeader(Ljava/lang/String;Ljava/util/List;)Landroidx/picker/model/viewdata/GroupTitleViewData;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    iget-object v3, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    new-instance v5, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-eqz v6, :cond_9

    .line 363
    .line 364
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    check-cast v6, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 369
    .line 370
    new-instance v7, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    .line 371
    .line 372
    iget-object v8, v6, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    .line 373
    .line 374
    iget-object v8, v8, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    .line 375
    .line 376
    invoke-direct {v7, v8}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    .line 377
    .line 378
    .line 379
    iget-object v8, v6, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    .line 380
    .line 381
    iget-object v9, v8, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v7, v9}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    iget-object v8, v8, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    .line 388
    .line 389
    invoke-virtual {v7, v8}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    iget-object v8, v6, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 394
    .line 395
    invoke-virtual {v8}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    invoke-virtual {v7, v8}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-virtual {v7}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    move-object v9, v7

    .line 408
    check-cast v9, Landroidx/picker/model/AppInfoDataImpl;

    .line 409
    .line 410
    new-instance v7, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 411
    .line 412
    new-instance v10, Landroidx/picker/loader/AppIconFlow;

    .line 413
    .line 414
    new-instance v8, Landroidx/picker/adapter/AbsAdapter$2;

    .line 415
    .line 416
    invoke-direct {v8, v3, v9, v9}, Landroidx/picker/adapter/AbsAdapter$2;-><init>(Landroidx/picker/adapter/AbsAdapter;Landroidx/picker/model/AppInfoData;Landroidx/picker/model/AppInfoDataImpl;)V

    .line 417
    .line 418
    .line 419
    new-instance v11, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;

    .line 420
    .line 421
    invoke-direct {v11, v6}, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/model/viewdata/CategoryViewData;)V

    .line 422
    .line 423
    .line 424
    invoke-direct {v10, v8, v11}, Landroidx/picker/loader/AppIconFlow;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlinx/coroutines/flow/Flow;)V

    .line 425
    .line 426
    .line 427
    iget-object v11, v6, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 428
    .line 429
    const/4 v12, -0x1

    .line 430
    const/4 v13, 0x0

    .line 431
    move-object v8, v7

    .line 432
    invoke-direct/range {v8 .. v13}, Landroidx/picker/model/viewdata/AppInfoViewData;-><init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    .line 441
    .line 442
    :cond_a
    move-object v3, v2

    .line 443
    check-cast v3, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-nez v3, :cond_c

    .line 450
    .line 451
    check-cast p1, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-lez p1, :cond_b

    .line 458
    .line 459
    iget-object p1, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 460
    .line 461
    iget-object p1, p1, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    const v3, 0x7f13114c

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 475
    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    invoke-static {p1, v2}, Landroidx/picker/adapter/AbsAdapter;->generateFilterHeader(Ljava/lang/String;Ljava/util/List;)Landroidx/picker/model/viewdata/GroupTitleViewData;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 487
    .line 488
    .line 489
    :cond_c
    :goto_8
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 490
    .line 491
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 1
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/picker/model/viewdata/ViewData;

    .line 20
    .line 21
    instance-of v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p2, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 38
    .line 39
    new-instance v0, Landroidx/picker/adapter/DiffUtilCallback;

    .line 40
    .line 41
    iget-object v1, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {v0, v1, p1}, Landroidx/picker/adapter/DiffUtilCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 51
    .line 52
    check-cast v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 58
    .line 59
    check-cast v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroidx/picker/adapter/NearbyListUpdateCallback;

    .line 65
    .line 66
    invoke-direct {p1, p2}, Landroidx/picker/adapter/NearbyListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    return-void
.end method
