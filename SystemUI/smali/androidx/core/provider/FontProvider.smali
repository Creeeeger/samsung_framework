.class public final Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_12

    .line 19
    .line 20
    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v8, v0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_11

    .line 29
    .line 30
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v7, 0x40

    .line 33
    .line 34
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    array-length v7, v1

    .line 46
    move v8, v4

    .line 47
    :goto_0
    if-ge v8, v7, :cond_0

    .line 48
    .line 49
    aget-object v9, v1, v8

    .line 50
    .line 51
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    .line 65
    .line 66
    iget-object v7, v0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget v7, v0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    .line 72
    .line 73
    invoke-static {v7, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(ILandroid/content/res/Resources;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    :goto_1
    move v2, v4

    .line 78
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const/4 v9, 0x1

    .line 83
    const/4 v10, 0x0

    .line 84
    if-ge v2, v8, :cond_6

    .line 85
    .line 86
    new-instance v8, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v11, Ljava/util/Collection;

    .line 93
    .line 94
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-eq v11, v12, :cond_2

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_2
    move v11, v4

    .line 112
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-ge v11, v12, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, [B

    .line 123
    .line 124
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    check-cast v13, [B

    .line 129
    .line 130
    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-nez v12, :cond_3

    .line 135
    .line 136
    :goto_4
    move v8, v4

    .line 137
    goto :goto_5

    .line 138
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move v8, v9

    .line 142
    :goto_5
    if-eqz v8, :cond_5

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    move-object v5, v10

    .line 149
    :goto_6
    if-nez v5, :cond_7

    .line 150
    .line 151
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 152
    .line 153
    invoke-direct {v0, v9, v10}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_7
    iget-object v1, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 158
    .line 159
    const-string/jumbo v7, "result_code"

    .line 160
    .line 161
    .line 162
    const-string v8, "font_italic"

    .line 163
    .line 164
    const-string v10, "font_weight"

    .line 165
    .line 166
    const-string v11, "font_ttc_index"

    .line 167
    .line 168
    const-string v12, "file_id"

    .line 169
    .line 170
    const-string v13, "_id"

    .line 171
    .line 172
    new-instance v14, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v2, Landroid/net/Uri$Builder;

    .line 178
    .line 179
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v3, "content"

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    new-instance v2, Landroid/net/Uri$Builder;

    .line 197
    .line 198
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v2, "file"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const/4 v1, 0x7

    .line 220
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 221
    .line 222
    aput-object v13, v2, v4

    .line 223
    .line 224
    aput-object v12, v2, v9

    .line 225
    .line 226
    const/4 v1, 0x2

    .line 227
    aput-object v11, v2, v1

    .line 228
    .line 229
    const-string v1, "font_variation_settings"

    .line 230
    .line 231
    const/4 v3, 0x3

    .line 232
    aput-object v1, v2, v3

    .line 233
    .line 234
    const/4 v1, 0x4

    .line 235
    aput-object v10, v2, v1

    .line 236
    .line 237
    const/4 v1, 0x5

    .line 238
    aput-object v8, v2, v1

    .line 239
    .line 240
    const/4 v1, 0x6

    .line 241
    aput-object v7, v2, v1

    .line 242
    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string/jumbo v3, "query = ?"

    .line 248
    .line 249
    .line 250
    new-array v6, v9, [Ljava/lang/String;

    .line 251
    .line 252
    iget-object v0, v0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    .line 253
    .line 254
    aput-object v0, v6, v4

    .line 255
    .line 256
    const/16 v16, 0x0

    .line 257
    .line 258
    move-object v0, v1

    .line 259
    move-object v1, v15

    .line 260
    move-object v4, v6

    .line 261
    move-object v6, v5

    .line 262
    move-object/from16 v5, v16

    .line 263
    .line 264
    move-object v9, v6

    .line 265
    const/4 v6, 0x0

    .line 266
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 267
    .line 268
    .line 269
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    if-eqz v1, :cond_e

    .line 271
    .line 272
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-lez v0, :cond_e

    .line 277
    .line 278
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    new-instance v14, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    if-eqz v7, :cond_e

    .line 312
    .line 313
    const/4 v7, -0x1

    .line 314
    if-eq v0, v7, :cond_8

    .line 315
    .line 316
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    goto :goto_8

    .line 321
    :cond_8
    const/4 v8, 0x0

    .line 322
    :goto_8
    move/from16 v21, v8

    .line 323
    .line 324
    if-eq v4, v7, :cond_9

    .line 325
    .line 326
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    goto :goto_9

    .line 331
    :cond_9
    const/4 v8, 0x0

    .line 332
    :goto_9
    move/from16 v18, v8

    .line 333
    .line 334
    if-ne v3, v7, :cond_a

    .line 335
    .line 336
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v10

    .line 340
    invoke-static {v15, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    goto :goto_a

    .line 345
    :cond_a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v10

    .line 349
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    :goto_a
    move-object/from16 v17, v8

    .line 354
    .line 355
    if-eq v5, v7, :cond_b

    .line 356
    .line 357
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    goto :goto_b

    .line 362
    :cond_b
    const/16 v8, 0x190

    .line 363
    .line 364
    :goto_b
    move/from16 v19, v8

    .line 365
    .line 366
    if-eq v6, v7, :cond_c

    .line 367
    .line 368
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    const/4 v8, 0x1

    .line 373
    if-ne v7, v8, :cond_d

    .line 374
    .line 375
    move/from16 v20, v8

    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_c
    const/4 v8, 0x1

    .line 379
    :cond_d
    const/4 v7, 0x0

    .line 380
    move/from16 v20, v7

    .line 381
    .line 382
    :goto_c
    new-instance v7, Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 383
    .line 384
    move-object/from16 v16, v7

    .line 385
    .line 386
    invoke-direct/range {v16 .. v21}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .line 391
    .line 392
    goto :goto_7

    .line 393
    :catchall_0
    move-exception v0

    .line 394
    goto :goto_d

    .line 395
    :cond_e
    if-eqz v1, :cond_f

    .line 396
    .line 397
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 398
    .line 399
    .line 400
    :cond_f
    const/4 v0, 0x0

    .line 401
    new-array v1, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 402
    .line 403
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 408
    .line 409
    new-instance v2, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 410
    .line 411
    invoke-direct {v2, v0, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    .line 412
    .line 413
    .line 414
    return-object v2

    .line 415
    :catchall_1
    move-exception v0

    .line 416
    const/4 v1, 0x0

    .line 417
    :goto_d
    if-eqz v1, :cond_10

    .line 418
    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 420
    .line 421
    .line 422
    :cond_10
    throw v0

    .line 423
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 424
    .line 425
    const-string v1, "Found content provider "

    .line 426
    .line 427
    const-string v2, ", but package was not "

    .line 428
    .line 429
    invoke-static {v1, v3, v2, v8}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v0

    .line 437
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 438
    .line 439
    const-string v1, "No package found for authority: "

    .line 440
    .line 441
    invoke-static {v1, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0
.end method
