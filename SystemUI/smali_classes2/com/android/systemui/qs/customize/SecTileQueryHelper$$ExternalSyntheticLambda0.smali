.class public final synthetic Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Lcom/android/systemui/qs/QSHost;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object v13, v2

    .line 12
    goto/16 :goto_d

    .line 13
    .line 14
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Lcom/android/systemui/qs/QSHost;

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    new-instance v8, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v9, "android.service.quicksettings.action.QS_TILE"

    .line 38
    .line 39
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v9, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 43
    .line 44
    check-cast v9, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 45
    .line 46
    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const/16 v11, 0x80

    .line 51
    .line 52
    invoke-virtual {v7, v8, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const v10, 0x7f130e0e

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v11, "CscFeature_SystemUI_ConfigRemoveQuickSettingItem"

    .line 67
    .line 68
    invoke-virtual {v10, v11, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    new-instance v11, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v12, ","

    .line 78
    .line 79
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    array-length v12, v10

    .line 84
    move v13, v3

    .line 85
    :goto_0
    if-ge v13, v12, :cond_1

    .line 86
    .line 87
    aget-object v14, v10, v13

    .line 88
    .line 89
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    if-eqz v15, :cond_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eqz v10, :cond_1c

    .line 115
    .line 116
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 121
    .line 122
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 123
    .line 124
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v13, Landroid/content/ComponentName;

    .line 127
    .line 128
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 129
    .line 130
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v13, v12, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 136
    .line 137
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 138
    .line 139
    if-eqz v14, :cond_3

    .line 140
    .line 141
    const-string v15, "android.service.quicksettings.SEM_DEFAULT_TILE_USER_POLICY"

    .line 142
    .line 143
    invoke-virtual {v14, v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    const-string v15, "OWNER"

    .line 148
    .line 149
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-eqz v14, :cond_2

    .line 154
    .line 155
    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-eqz v14, :cond_2

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 163
    .line 164
    const-string v14, "android.service.quicksettings.SEM_DEFAULT_TILE_DEXMODE_ONLY"

    .line 165
    .line 166
    invoke-virtual {v12, v14, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-eqz v12, :cond_3

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 174
    .line 175
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 176
    .line 177
    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v13}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    invoke-interface {v4, v12}, Lcom/android/systemui/qs/QSHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    const-string v15, "addPackageTiles : tileName = "

    .line 190
    .line 191
    move-object/from16 p0, v8

    .line 192
    .line 193
    const-string v8, "TileQueryHelper"

    .line 194
    .line 195
    invoke-static {v15, v14, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    if-eqz v14, :cond_a

    .line 199
    .line 200
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v15

    .line 204
    if-eqz v15, :cond_4

    .line 205
    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v10, "addPackageTiles : shouldBlockTileArray = "

    .line 209
    .line 210
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-object/from16 v17, v2

    .line 224
    .line 225
    move-object/from16 v16, v11

    .line 226
    .line 227
    goto/16 :goto_8

    .line 228
    .line 229
    :cond_4
    invoke-interface {v4, v14}, Lcom/android/systemui/qs/QSHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v15

    .line 233
    if-eqz v15, :cond_9

    .line 234
    .line 235
    const-string v15, "WifiCalling"

    .line 236
    .line 237
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-eqz v15, :cond_5

    .line 242
    .line 243
    sget-object v15, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 244
    .line 245
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 246
    .line 247
    .line 248
    move-result-object v15

    .line 249
    move-object/from16 v16, v11

    .line 250
    .line 251
    const-string/jumbo v11, "vowifi_menu_enable"

    .line 252
    .line 253
    .line 254
    move-object/from16 v17, v2

    .line 255
    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-static {v15, v11, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_6

    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    goto :goto_3

    .line 265
    :cond_5
    move-object/from16 v17, v2

    .line 266
    .line 267
    move-object/from16 v16, v11

    .line 268
    .line 269
    :cond_6
    const/4 v2, 0x1

    .line 270
    :goto_3
    if-nez v2, :cond_7

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_7
    invoke-interface {v4, v12}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_8

    .line 278
    .line 279
    const-string v2, "addPackageTiles : shouldBeHiddenByKnox : "

    .line 280
    .line 281
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    goto/16 :goto_8

    .line 289
    .line 290
    :cond_8
    if-nez v0, :cond_b

    .line 291
    .line 292
    invoke-interface {v4, v14}, Lcom/android/systemui/qs/QSHost;->isBarTile(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    const-string v2, "addPackageTiles : isBarTile : "

    .line 299
    .line 300
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto/16 :goto_8

    .line 308
    .line 309
    :cond_9
    move-object/from16 v17, v2

    .line 310
    .line 311
    move-object/from16 v16, v11

    .line 312
    .line 313
    :goto_4
    const-string v2, "addPackageTiles : isAvailableCustomTile = false : "

    .line 314
    .line 315
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    goto/16 :goto_8

    .line 323
    .line 324
    :cond_a
    move-object/from16 v17, v2

    .line 325
    .line 326
    move-object/from16 v16, v11

    .line 327
    .line 328
    :cond_b
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    xor-int/lit8 v2, v2, 0x1

    .line 333
    .line 334
    if-nez v2, :cond_c

    .line 335
    .line 336
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    if-eqz v2, :cond_c

    .line 341
    .line 342
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    const-string v11, "com.google.audio.hearing.visualization.accessibility.dolphin.service.DolphinTileService"

    .line 347
    .line 348
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_d

    .line 353
    .line 354
    :cond_c
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    xor-int/lit8 v2, v2, 0x1

    .line 359
    .line 360
    if-nez v2, :cond_e

    .line 361
    .line 362
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    if-eqz v2, :cond_e

    .line 367
    .line 368
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    const-string v11, "com.google.audio.hearing.visualization.accessibility.scribe.service.ScribeTileService"

    .line 373
    .line 374
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_e

    .line 379
    .line 380
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v3, "addPackageTiles : remove componentName : "

    .line 383
    .line 384
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    goto/16 :goto_8

    .line 402
    .line 403
    :cond_e
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    const/4 v11, 0x0

    .line 412
    if-eqz v8, :cond_10

    .line 413
    .line 414
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    check-cast v8, Lcom/android/systemui/plugins/qs/QSTile;

    .line 419
    .line 420
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v13

    .line 424
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    if-eqz v13, :cond_f

    .line 429
    .line 430
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    goto :goto_5

    .line 439
    :cond_10
    move-object v2, v11

    .line 440
    :goto_5
    if-eqz v2, :cond_11

    .line 441
    .line 442
    const/4 v8, 0x0

    .line 443
    invoke-virtual {v1, v12, v3, v2, v8}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 444
    .line 445
    .line 446
    goto :goto_8

    .line 447
    :cond_11
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 448
    .line 449
    iget v8, v2, Landroid/content/pm/ServiceInfo;->icon:I

    .line 450
    .line 451
    if-nez v8, :cond_12

    .line 452
    .line 453
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 454
    .line 455
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 456
    .line 457
    if-nez v2, :cond_12

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_12
    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    :try_start_0
    iget-object v8, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 465
    .line 466
    iget v13, v8, Landroid/content/pm/ServiceInfo;->icon:I

    .line 467
    .line 468
    if-eqz v13, :cond_13

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_13
    iget-object v13, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 472
    .line 473
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 474
    .line 475
    :goto_6
    if-eqz v13, :cond_14

    .line 476
    .line 477
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 478
    .line 479
    invoke-static {v8, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 480
    .line 481
    .line 482
    move-result-object v11

    .line 483
    :cond_14
    if-eqz v11, :cond_15

    .line 484
    .line 485
    invoke-virtual {v11, v6, v2}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    goto :goto_7

    .line 490
    :cond_15
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 491
    .line 492
    invoke-virtual {v2, v7}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 493
    .line 494
    .line 495
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_7

    .line 497
    :catch_0
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 498
    .line 499
    invoke-virtual {v2, v7}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    :goto_7
    iget-object v8, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 504
    .line 505
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 506
    .line 507
    const-string v11, "android.permission.BIND_QUICK_SETTINGS_TILE"

    .line 508
    .line 509
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v8

    .line 513
    if-nez v8, :cond_16

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_16
    if-nez v2, :cond_17

    .line 517
    .line 518
    :goto_8
    move-object/from16 v13, v17

    .line 519
    .line 520
    goto/16 :goto_c

    .line 521
    .line 522
    :cond_17
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 523
    .line 524
    .line 525
    const v8, 0x106000b

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 533
    .line 534
    .line 535
    iget-object v8, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 536
    .line 537
    invoke-virtual {v8, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    if-eqz v8, :cond_18

    .line 542
    .line 543
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    goto :goto_9

    .line 548
    :cond_18
    const-string v8, "null"

    .line 549
    .line 550
    :goto_9
    new-instance v10, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 551
    .line 552
    invoke-direct {v10}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 553
    .line 554
    .line 555
    const/4 v11, 0x1

    .line 556
    iput v11, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 557
    .line 558
    iput-object v8, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 559
    .line 560
    iput-object v8, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 561
    .line 562
    invoke-static {v12}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    const v13, 0xc0080

    .line 571
    .line 572
    .line 573
    invoke-virtual {v11, v8, v13}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 578
    .line 579
    if-eqz v8, :cond_19

    .line 580
    .line 581
    const-string v11, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    .line 583
    move-object/from16 v13, v17

    .line 584
    .line 585
    :try_start_2
    invoke-virtual {v8, v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 593
    if-nez v8, :cond_1a

    .line 594
    .line 595
    const/4 v8, 0x1

    .line 596
    goto :goto_a

    .line 597
    :catch_1
    :cond_19
    move-object/from16 v13, v17

    .line 598
    .line 599
    :catch_2
    :cond_1a
    const/4 v8, 0x0

    .line 600
    :goto_a
    if-nez v8, :cond_1b

    .line 601
    .line 602
    iget-object v8, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 603
    .line 604
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    invoke-static {v6}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    .line 608
    .line 609
    .line 610
    move-result v8

    .line 611
    int-to-float v8, v8

    .line 612
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 613
    .line 614
    .line 615
    move-result v11

    .line 616
    int-to-float v11, v11

    .line 617
    div-float/2addr v8, v11

    .line 618
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 619
    .line 620
    .line 621
    move-result-object v11

    .line 622
    const v14, 0x7f070c52

    .line 623
    .line 624
    .line 625
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getFloat(I)F

    .line 626
    .line 627
    .line 628
    move-result v11

    .line 629
    mul-float/2addr v11, v8

    .line 630
    new-instance v8, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    .line 631
    .line 632
    invoke-direct {v8, v2, v11}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    iput-object v2, v8, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    .line 644
    .line 645
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    .line 646
    .line 647
    invoke-direct {v2, v8, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 648
    .line 649
    .line 650
    iput-object v2, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 651
    .line 652
    goto :goto_b

    .line 653
    :cond_1b
    new-instance v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    .line 654
    .line 655
    invoke-direct {v8, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 656
    .line 657
    .line 658
    iput-object v8, v10, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 659
    .line 660
    :goto_b
    const/4 v2, 0x0

    .line 661
    invoke-virtual {v1, v12, v3, v10, v2}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 662
    .line 663
    .line 664
    :goto_c
    const/4 v3, 0x0

    .line 665
    move-object/from16 v8, p0

    .line 666
    .line 667
    move-object v2, v13

    .line 668
    move-object/from16 v11, v16

    .line 669
    .line 670
    goto/16 :goto_2

    .line 671
    .line 672
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    .line 673
    .line 674
    iget-object v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 675
    .line 676
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 677
    .line 678
    .line 679
    new-instance v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    .line 680
    .line 681
    const/4 v3, 0x1

    .line 682
    invoke-direct {v2, v1, v3, v0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 686
    .line 687
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 688
    .line 689
    .line 690
    return-void

    .line 691
    :goto_d
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    .line 692
    .line 693
    iget-boolean v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 694
    .line 695
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast v0, Ljava/util/ArrayList;

    .line 698
    .line 699
    iput-boolean v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTileQueryFinished:Z

    .line 700
    .line 701
    iget-object v3, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileStateListener;

    .line 702
    .line 703
    if-eqz v3, :cond_27

    .line 704
    .line 705
    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 706
    .line 707
    iput-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    .line 708
    .line 709
    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 710
    .line 711
    if-eqz v4, :cond_25

    .line 712
    .line 713
    if-eqz v0, :cond_25

    .line 714
    .line 715
    iget-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    .line 716
    .line 717
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTileQueryFinished:Z

    .line 718
    .line 719
    if-nez v0, :cond_1d

    .line 720
    .line 721
    goto/16 :goto_14

    .line 722
    .line 723
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    const-string v4, "mCurrentSpecs = "

    .line 726
    .line 727
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 731
    .line 732
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    const-string v4, "mAllTiles size = "

    .line 736
    .line 737
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    .line 741
    .line 742
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 743
    .line 744
    .line 745
    move-result v4

    .line 746
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    const-string v4, "SecQSCustomizerTileAdapter"

    .line 754
    .line 755
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    new-instance v0, Ljava/util/ArrayList;

    .line 759
    .line 760
    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    .line 761
    .line 762
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 763
    .line 764
    .line 765
    const/4 v4, 0x0

    .line 766
    :goto_e
    iget-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 767
    .line 768
    check-cast v5, Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    if-ge v4, v5, :cond_20

    .line 775
    .line 776
    iget-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 777
    .line 778
    check-cast v5, Ljava/util/ArrayList;

    .line 779
    .line 780
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    check-cast v5, Ljava/lang/String;

    .line 785
    .line 786
    const/4 v6, 0x0

    .line 787
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    if-ge v6, v7, :cond_1f

    .line 792
    .line 793
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v7

    .line 797
    check-cast v7, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    .line 798
    .line 799
    iget-object v7, v7, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 800
    .line 801
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-eqz v7, :cond_1e

    .line 806
    .line 807
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    check-cast v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    .line 812
    .line 813
    goto :goto_10

    .line 814
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    .line 815
    .line 816
    goto :goto_f

    .line 817
    :cond_1f
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 818
    .line 819
    goto :goto_e

    .line 820
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    if-eqz v5, :cond_21

    .line 829
    .line 830
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    check-cast v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    .line 835
    .line 836
    const/4 v6, 0x0

    .line 837
    iput-boolean v6, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 838
    .line 839
    goto :goto_11

    .line 840
    :cond_21
    new-instance v4, Ljava/util/ArrayList;

    .line 841
    .line 842
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .line 844
    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .line 849
    .line 850
    iget-object v6, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    .line 851
    .line 852
    const v7, 0x7f130d1a

    .line 853
    .line 854
    .line 855
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v7

    .line 859
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    const-string v7, " "

    .line 863
    .line 864
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v5

    .line 871
    new-instance v7, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    const-string v8, ", "

    .line 874
    .line 875
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    const v9, 0x7f130d15

    .line 879
    .line 880
    .line 881
    invoke-static {v6, v9, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v7

    .line 885
    const/4 v9, 0x0

    .line 886
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 887
    .line 888
    .line 889
    move-result v10

    .line 890
    if-ge v9, v10, :cond_24

    .line 891
    .line 892
    new-instance v10, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 893
    .line 894
    invoke-direct {v10}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;-><init>()V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v11

    .line 901
    check-cast v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    .line 902
    .line 903
    iget-object v12, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 904
    .line 905
    iput-object v12, v10, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 906
    .line 907
    iget-boolean v12, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 908
    .line 909
    iput-boolean v12, v10, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 910
    .line 911
    iget-object v12, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 912
    .line 913
    iput-object v12, v10, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 914
    .line 915
    iget-object v11, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 916
    .line 917
    if-eqz v11, :cond_22

    .line 918
    .line 919
    const-string v12, "custom("

    .line 920
    .line 921
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 922
    .line 923
    .line 924
    move-result v12

    .line 925
    if-eqz v12, :cond_22

    .line 926
    .line 927
    invoke-static {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 928
    .line 929
    .line 930
    :cond_22
    const/4 v11, 0x0

    .line 931
    iput-boolean v11, v10, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->isNewCustomTile:Z

    .line 932
    .line 933
    invoke-static {v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    move-result-object v11

    .line 937
    iget-object v12, v10, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 938
    .line 939
    iget-object v12, v12, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 940
    .line 941
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    iget-boolean v12, v10, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->isNewCustomTile:Z

    .line 945
    .line 946
    if-eqz v12, :cond_23

    .line 947
    .line 948
    new-instance v12, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    const v14, 0x7f130399

    .line 954
    .line 955
    .line 956
    invoke-static {v6, v14, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v12

    .line 960
    goto :goto_13

    .line 961
    :cond_23
    move-object v12, v13

    .line 962
    :goto_13
    invoke-static {v11, v12, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v11

    .line 966
    iput-object v11, v10, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 967
    .line 968
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    add-int/lit8 v9, v9, 0x1

    .line 972
    .line 973
    goto :goto_12

    .line 974
    :cond_24
    iput-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mDefaultAvailableTiles:Ljava/util/ArrayList;

    .line 975
    .line 976
    iput-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    .line 977
    .line 978
    :cond_25
    :goto_14
    iget-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mOnTileChangedCallback:Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda6;

    .line 979
    .line 980
    if-eqz v0, :cond_26

    .line 981
    .line 982
    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    .line 983
    .line 984
    if-eqz v4, :cond_26

    .line 985
    .line 986
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 987
    .line 988
    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 989
    .line 990
    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 998
    .line 999
    .line 1000
    move-result v5

    .line 1001
    if-eqz v5, :cond_26

    .line 1002
    .line 1003
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 1008
    .line 1009
    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;

    .line 1010
    .line 1011
    iput-object v6, v5, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 1012
    .line 1013
    goto :goto_15

    .line 1014
    :cond_26
    iget-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    .line 1015
    .line 1016
    if-eqz v0, :cond_27

    .line 1017
    .line 1018
    const/4 v0, 0x1

    .line 1019
    iput-boolean v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    .line 1020
    .line 1021
    :cond_27
    iput-boolean v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mFinished:Z

    .line 1022
    .line 1023
    return-void

    .line 1024
    nop

    .line 1025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
