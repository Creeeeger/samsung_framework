.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isNewlyActiveEntry:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$isNewlyActiveEntry:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v15, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$isNewlyActiveEntry:Z

    .line 12
    .line 13
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 21
    .line 22
    const-string v5, "android.mediaSession"

    .line 23
    .line 24
    const-class v6, Landroid/media/session/MediaSession$Token;

    .line 25
    .line 26
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v13, v0

    .line 31
    check-cast v13, Landroid/media/session/MediaSession$Token;

    .line 32
    .line 33
    if-nez v13, :cond_0

    .line 34
    .line 35
    goto/16 :goto_29

    .line 36
    .line 37
    :cond_0
    iget-object v0, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v5, Landroid/media/session/MediaController;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v5, v0, v13}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    iget-object v0, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 58
    .line 59
    const-string v7, "android.appInfo"

    .line 60
    .line 61
    const-class v8, Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    iget-object v8, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->context:Landroid/content/Context;

    .line 71
    .line 72
    const-string v9, "MediaDataManager"

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v10, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v7, "Could not get app info for "

    .line 91
    .line 92
    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v9, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 105
    .line 106
    const-string v10, "android.substName"

    .line 107
    .line 108
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    if-eqz v7, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    :goto_1
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 135
    .line 136
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 137
    .line 138
    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    const-string v11, "android.media.metadata.DISPLAY_TITLE"

    .line 142
    .line 143
    invoke-virtual {v6, v11}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const/4 v11, 0x0

    .line 149
    :goto_2
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    if-eqz v11, :cond_6

    .line 152
    .line 153
    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    const/4 v11, 0x0

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    :goto_3
    const/4 v11, 0x1

    .line 163
    :goto_4
    if-eqz v11, :cond_8

    .line 164
    .line 165
    if-eqz v6, :cond_7

    .line 166
    .line 167
    const-string v11, "android.media.metadata.TITLE"

    .line 168
    .line 169
    invoke-virtual {v6, v11}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    goto :goto_5

    .line 174
    :cond_7
    const/4 v11, 0x0

    .line 175
    :goto_5
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    .line 177
    :cond_8
    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v11, Ljava/lang/CharSequence;

    .line 180
    .line 181
    if-eqz v11, :cond_a

    .line 182
    .line 183
    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_9

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_9
    const/4 v11, 0x0

    .line 191
    goto :goto_7

    .line 192
    :cond_a
    :goto_6
    const/4 v11, 0x1

    .line 193
    :goto_7
    if-eqz v11, :cond_c

    .line 194
    .line 195
    iget-object v11, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 196
    .line 197
    const-string v12, "android.title"

    .line 198
    .line 199
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    if-nez v11, :cond_b

    .line 204
    .line 205
    iget-object v11, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 206
    .line 207
    const-string v12, "android.title.big"

    .line 208
    .line 209
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    :cond_b
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 214
    .line 215
    :cond_c
    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v11, Ljava/lang/CharSequence;

    .line 218
    .line 219
    if-eqz v11, :cond_e

    .line 220
    .line 221
    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    if-eqz v11, :cond_d

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_d
    const/4 v11, 0x0

    .line 229
    goto :goto_9

    .line 230
    :cond_e
    :goto_8
    const/4 v11, 0x1

    .line 231
    :goto_9
    if-eqz v11, :cond_f

    .line 232
    .line 233
    const v11, 0x7f1303d4

    .line 234
    .line 235
    .line 236
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    .line 246
    :try_start_1
    iget-object v11, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->statusBarManager:Landroid/app/StatusBarManager;

    .line 247
    .line 248
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 253
    .line 254
    .line 255
    move-result-object v16
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    move-object/from16 p0, v13

    .line 257
    .line 258
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    invoke-virtual {v11, v12, v13}, Landroid/app/StatusBarManager;->logBlankMediaTitle(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 263
    .line 264
    .line 265
    goto :goto_a

    .line 266
    :catch_1
    move-object/from16 p0, v13

    .line 267
    .line 268
    :catch_2
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    new-instance v12, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v13, "Error reporting blank media title for package "

    .line 275
    .line 276
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_f
    move-object/from16 p0, v13

    .line 291
    .line 292
    :goto_a
    if-eqz v6, :cond_12

    .line 293
    .line 294
    sget-object v11, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    .line 295
    .line 296
    const/4 v12, 0x0

    .line 297
    :goto_b
    const/4 v13, 0x3

    .line 298
    if-ge v12, v13, :cond_12

    .line 299
    .line 300
    aget-object v13, v11, v12

    .line 301
    .line 302
    invoke-virtual {v6, v13}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v16

    .line 306
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v17

    .line 310
    if-nez v17, :cond_10

    .line 311
    .line 312
    move-object/from16 v17, v11

    .line 313
    .line 314
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    invoke-virtual {v15, v11}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    if-eqz v11, :cond_11

    .line 323
    .line 324
    const-string v12, "loaded art from "

    .line 325
    .line 326
    invoke-static {v12, v13, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_c

    .line 330
    :cond_10
    move-object/from16 v17, v11

    .line 331
    .line 332
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 333
    .line 334
    move-object/from16 v11, v17

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_12
    const/4 v11, 0x0

    .line 338
    :goto_c
    if-nez v11, :cond_14

    .line 339
    .line 340
    if-eqz v6, :cond_13

    .line 341
    .line 342
    const-string v11, "android.media.metadata.ART"

    .line 343
    .line 344
    invoke-virtual {v6, v11}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    goto :goto_d

    .line 349
    :cond_13
    const/4 v11, 0x0

    .line 350
    :cond_14
    :goto_d
    if-nez v11, :cond_16

    .line 351
    .line 352
    if-eqz v6, :cond_15

    .line 353
    .line 354
    const-string v11, "android.media.metadata.ALBUM_ART"

    .line 355
    .line 356
    invoke-virtual {v6, v11}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    goto :goto_e

    .line 361
    :cond_15
    const/4 v11, 0x0

    .line 362
    :cond_16
    :goto_e
    if-nez v11, :cond_17

    .line 363
    .line 364
    invoke-virtual {v14}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    goto :goto_f

    .line 369
    :cond_17
    invoke-static {v11}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    :goto_f
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 378
    .line 379
    .line 380
    move-result-object v12

    .line 381
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 382
    .line 383
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 384
    .line 385
    .line 386
    move-object/from16 v16, v11

    .line 387
    .line 388
    iget-object v11, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 389
    .line 390
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    sget-object v17, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 394
    .line 395
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    move-object/from16 v17, v10

    .line 399
    .line 400
    sget-object v10, Lcom/android/systemui/flags/Flags;->MEDIA_EXPLICIT_INDICATOR:Lcom/android/systemui/flags/ReleasedFlag;

    .line 401
    .line 402
    iget-object v11, v11, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 403
    .line 404
    check-cast v11, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 405
    .line 406
    invoke-virtual {v11, v10}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    if-eqz v10, :cond_1a

    .line 411
    .line 412
    invoke-static {v6}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    if-eqz v10, :cond_18

    .line 417
    .line 418
    iget-object v10, v10, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 419
    .line 420
    move-object/from16 v20, v12

    .line 421
    .line 422
    const-wide/16 v11, 0x0

    .line 423
    .line 424
    move-object/from16 v21, v7

    .line 425
    .line 426
    const-string v7, "android.media.IS_EXPLICIT"

    .line 427
    .line 428
    invoke-virtual {v10, v7, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 429
    .line 430
    .line 431
    move-result-wide v10

    .line 432
    const-wide/16 v18, 0x1

    .line 433
    .line 434
    cmp-long v7, v10, v18

    .line 435
    .line 436
    if-nez v7, :cond_19

    .line 437
    .line 438
    const/4 v7, 0x1

    .line 439
    goto :goto_10

    .line 440
    :cond_18
    move-object/from16 v21, v7

    .line 441
    .line 442
    move-object/from16 v20, v12

    .line 443
    .line 444
    :cond_19
    const/4 v7, 0x0

    .line 445
    :goto_10
    iput-boolean v7, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 446
    .line 447
    goto :goto_11

    .line 448
    :cond_1a
    move-object/from16 v21, v7

    .line 449
    .line 450
    move-object/from16 v20, v12

    .line 451
    .line 452
    :goto_11
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 453
    .line 454
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 455
    .line 456
    .line 457
    if-eqz v6, :cond_1b

    .line 458
    .line 459
    const-string v10, "android.media.metadata.ARTIST"

    .line 460
    .line 461
    invoke-virtual {v6, v10}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    goto :goto_12

    .line 466
    :cond_1b
    const/4 v6, 0x0

    .line 467
    :goto_12
    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 468
    .line 469
    if-eqz v6, :cond_1d

    .line 470
    .line 471
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    if-eqz v6, :cond_1c

    .line 476
    .line 477
    goto :goto_13

    .line 478
    :cond_1c
    const/4 v6, 0x0

    .line 479
    goto :goto_14

    .line 480
    :cond_1d
    :goto_13
    const/4 v6, 0x1

    .line 481
    :goto_14
    if-eqz v6, :cond_1f

    .line 482
    .line 483
    iget-object v6, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 484
    .line 485
    const-string v10, "android.text"

    .line 486
    .line 487
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    if-nez v6, :cond_1e

    .line 492
    .line 493
    iget-object v6, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 494
    .line 495
    const-string v10, "android.bigText"

    .line 496
    .line 497
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    :cond_1e
    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 502
    .line 503
    :cond_1f
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 504
    .line 505
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 513
    .line 514
    const-string v10, "android.mediaRemoteDevice"

    .line 515
    .line 516
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    if-eqz v6, :cond_21

    .line 521
    .line 522
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 523
    .line 524
    .line 525
    move-result-object v6

    .line 526
    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 527
    .line 528
    const/4 v11, 0x0

    .line 529
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    move-object/from16 v32, v13

    .line 534
    .line 535
    const-string v13, "android.mediaRemoteIcon"

    .line 536
    .line 537
    move-object/from16 v33, v14

    .line 538
    .line 539
    const/4 v14, -0x1

    .line 540
    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 541
    .line 542
    .line 543
    move-result v13

    .line 544
    const-string v14, "android.mediaRemoteIntent"

    .line 545
    .line 546
    move-object/from16 v34, v7

    .line 547
    .line 548
    const-class v7, Landroid/app/PendingIntent;

    .line 549
    .line 550
    invoke-virtual {v6, v14, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    move-object/from16 v26, v6

    .line 555
    .line 556
    check-cast v26, Landroid/app/PendingIntent;

    .line 557
    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v7, " is RCN for "

    .line 567
    .line 568
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    const/4 v6, -0x1

    .line 582
    if-eqz v11, :cond_22

    .line 583
    .line 584
    if-le v13, v6, :cond_22

    .line 585
    .line 586
    if-eqz v26, :cond_20

    .line 587
    .line 588
    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->isActivity()Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-eqz v6, :cond_20

    .line 593
    .line 594
    const/4 v6, 0x1

    .line 595
    goto :goto_15

    .line 596
    :cond_20
    const/4 v6, 0x0

    .line 597
    :goto_15
    move/from16 v23, v6

    .line 598
    .line 599
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v6

    .line 603
    invoke-static {v6, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    invoke-virtual {v4, v8}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 612
    .line 613
    .line 614
    move-result-object v24

    .line 615
    new-instance v6, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 616
    .line 617
    const/16 v27, 0x0

    .line 618
    .line 619
    const/16 v28, 0x0

    .line 620
    .line 621
    const/16 v29, 0x0

    .line 622
    .line 623
    const/16 v30, 0x50

    .line 624
    .line 625
    const/16 v31, 0x0

    .line 626
    .line 627
    move-object/from16 v22, v6

    .line 628
    .line 629
    move-object/from16 v25, v11

    .line 630
    .line 631
    invoke-direct/range {v22 .. v31}, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/controls/models/player/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 632
    .line 633
    .line 634
    iput-object v6, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 635
    .line 636
    goto :goto_16

    .line 637
    :cond_21
    move-object/from16 v34, v7

    .line 638
    .line 639
    move-object/from16 v32, v13

    .line 640
    .line 641
    move-object/from16 v33, v14

    .line 642
    .line 643
    :cond_22
    :goto_16
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 644
    .line 645
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 646
    .line 647
    .line 648
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 649
    .line 650
    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 651
    .line 652
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 653
    .line 654
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 655
    .line 656
    .line 657
    iput-object v6, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 658
    .line 659
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    invoke-virtual {v15, v6, v5, v7}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->createActionsFromState(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 668
    .line 669
    .line 670
    move-result-object v14

    .line 671
    if-nez v14, :cond_2c

    .line 672
    .line 673
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 674
    .line 675
    .line 676
    move-result-object v6

    .line 677
    new-instance v7, Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .line 681
    .line 682
    move-object/from16 v22, v12

    .line 683
    .line 684
    iget-object v12, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 685
    .line 686
    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 687
    .line 688
    move-object/from16 v23, v3

    .line 689
    .line 690
    const-string v3, "android.compactActions"

    .line 691
    .line 692
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    if-eqz v3, :cond_23

    .line 697
    .line 698
    new-instance v6, Ljava/util/ArrayList;

    .line 699
    .line 700
    move/from16 v18, v1

    .line 701
    .line 702
    array-length v1, v3

    .line 703
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 704
    .line 705
    .line 706
    array-length v1, v3

    .line 707
    const/16 v19, 0x0

    .line 708
    .line 709
    move-object/from16 v24, v0

    .line 710
    .line 711
    move/from16 v0, v19

    .line 712
    .line 713
    :goto_17
    if-ge v0, v1, :cond_24

    .line 714
    .line 715
    aget v19, v3, v0

    .line 716
    .line 717
    move/from16 v25, v1

    .line 718
    .line 719
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    add-int/lit8 v0, v0, 0x1

    .line 727
    .line 728
    move/from16 v1, v25

    .line 729
    .line 730
    goto :goto_17

    .line 731
    :cond_23
    move-object/from16 v24, v0

    .line 732
    .line 733
    move/from16 v18, v1

    .line 734
    .line 735
    new-instance v6, Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .line 739
    .line 740
    :cond_24
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    sget v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->MAX_COMPACT_ACTIONS:I

    .line 745
    .line 746
    if-le v0, v1, :cond_25

    .line 747
    .line 748
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    move-object/from16 v25, v2

    .line 755
    .line 756
    const-string v2, "Too many compact actions for "

    .line 757
    .line 758
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    const-string v0, ",limiting to first "

    .line 765
    .line 766
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .line 778
    .line 779
    const/4 v0, 0x0

    .line 780
    invoke-interface {v6, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 781
    .line 782
    .line 783
    move-result-object v6

    .line 784
    goto :goto_18

    .line 785
    :cond_25
    move-object/from16 v25, v2

    .line 786
    .line 787
    const/4 v0, 0x0

    .line 788
    :goto_18
    if-eqz v12, :cond_2b

    .line 789
    .line 790
    array-length v1, v12

    .line 791
    :goto_19
    if-ge v0, v1, :cond_2b

    .line 792
    .line 793
    aget-object v2, v12, v0

    .line 794
    .line 795
    sget v3, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->MAX_NOTIFICATION_ACTIONS:I

    .line 796
    .line 797
    if-ne v0, v3, :cond_26

    .line 798
    .line 799
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    const-string v2, "Too many notification actions for "

    .line 806
    .line 807
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    const-string v0, ", limiting to first "

    .line 814
    .line 815
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .line 827
    .line 828
    goto/16 :goto_1e

    .line 829
    .line 830
    :cond_26
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    if-nez v3, :cond_27

    .line 835
    .line 836
    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 837
    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    .line 839
    .line 840
    move/from16 v19, v1

    .line 841
    .line 842
    const-string v1, "No icon for action "

    .line 843
    .line 844
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    const-string v1, " "

    .line 851
    .line 852
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .line 864
    .line 865
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    goto :goto_1d

    .line 873
    :cond_27
    move/from16 v19, v1

    .line 874
    .line 875
    iget-object v1, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 876
    .line 877
    if-eqz v1, :cond_28

    .line 878
    .line 879
    new-instance v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1;

    .line 880
    .line 881
    invoke-direct {v1, v2, v15}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;)V

    .line 882
    .line 883
    .line 884
    goto :goto_1a

    .line 885
    :cond_28
    const/4 v1, 0x0

    .line 886
    :goto_1a
    move-object/from16 v37, v1

    .line 887
    .line 888
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    if-eqz v1, :cond_29

    .line 893
    .line 894
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    const/4 v3, 0x2

    .line 899
    if-ne v1, v3, :cond_29

    .line 900
    .line 901
    const/4 v1, 0x1

    .line 902
    goto :goto_1b

    .line 903
    :cond_29
    const/4 v1, 0x0

    .line 904
    :goto_1b
    if-eqz v1, :cond_2a

    .line 905
    .line 906
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 918
    .line 919
    .line 920
    move-result v3

    .line 921
    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    goto :goto_1c

    .line 926
    :cond_2a
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    :goto_1c
    iget v3, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->themeText:I

    .line 931
    .line 932
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 937
    .line 938
    .line 939
    move-result-object v36

    .line 940
    new-instance v1, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 941
    .line 942
    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 943
    .line 944
    const/16 v39, 0x0

    .line 945
    .line 946
    const/16 v40, 0x0

    .line 947
    .line 948
    const/16 v41, 0x10

    .line 949
    .line 950
    const/16 v42, 0x0

    .line 951
    .line 952
    move-object/from16 v35, v1

    .line 953
    .line 954
    move-object/from16 v38, v2

    .line 955
    .line 956
    invoke-direct/range {v35 .. v42}, Lcom/android/systemui/media/controls/models/player/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    .line 963
    .line 964
    move/from16 v1, v19

    .line 965
    .line 966
    goto/16 :goto_19

    .line 967
    .line 968
    :cond_2b
    :goto_1e
    new-instance v0, Lkotlin/Pair;

    .line 969
    .line 970
    invoke-direct {v0, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 978
    .line 979
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    iput-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 984
    .line 985
    goto :goto_1f

    .line 986
    :cond_2c
    move-object/from16 v24, v0

    .line 987
    .line 988
    move/from16 v18, v1

    .line 989
    .line 990
    move-object/from16 v25, v2

    .line 991
    .line 992
    move-object/from16 v23, v3

    .line 993
    .line 994
    move-object/from16 v22, v12

    .line 995
    .line 996
    invoke-static {v14}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->generateActionsFromSemantic(Lcom/android/systemui/media/controls/models/player/MediaButton;)Lkotlin/Pair;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1005
    .line 1006
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    iput-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1011
    .line 1012
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    const-string/jumbo v1, "semanticActions="

    .line 1015
    .line 1016
    .line 1017
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .line 1029
    .line 1030
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1031
    .line 1032
    iget-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1033
    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    const-string v3, "actionsToShowCollapsed="

    .line 1037
    .line 1038
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    const-string v0, ", actionIcons="

    .line 1045
    .line 1046
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1064
    .line 1065
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    if-eqz v0, :cond_2d

    .line 1070
    .line 1071
    const/4 v0, 0x2

    .line 1072
    :goto_20
    move v12, v0

    .line 1073
    goto :goto_22

    .line 1074
    :cond_2d
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    if-eqz v0, :cond_2e

    .line 1079
    .line 1080
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 1081
    .line 1082
    .line 1083
    move-result v0

    .line 1084
    const/4 v1, 0x1

    .line 1085
    if-ne v0, v1, :cond_2e

    .line 1086
    .line 1087
    const/4 v0, 0x1

    .line 1088
    goto :goto_21

    .line 1089
    :cond_2e
    const/4 v0, 0x0

    .line 1090
    :goto_21
    if-eqz v0, :cond_2f

    .line 1091
    .line 1092
    const/4 v0, 0x0

    .line 1093
    goto :goto_20

    .line 1094
    :cond_2f
    const/4 v0, 0x1

    .line 1095
    goto :goto_20

    .line 1096
    :goto_22
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    if-eqz v0, :cond_30

    .line 1101
    .line 1102
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    goto :goto_23

    .line 1115
    :cond_30
    const/4 v0, 0x0

    .line 1116
    :goto_23
    move-object/from16 v26, v0

    .line 1117
    .line 1118
    iget-object v0, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 1119
    .line 1120
    move-object/from16 v2, v25

    .line 1121
    .line 1122
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 1127
    .line 1128
    iget-object v1, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 1129
    .line 1130
    if-eqz v0, :cond_31

    .line 1131
    .line 1132
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 1133
    .line 1134
    if-nez v3, :cond_32

    .line 1135
    .line 1136
    :cond_31
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    :cond_32
    move-object v10, v3

    .line 1141
    if-eqz v24, :cond_33

    .line 1142
    .line 1143
    move-object/from16 v3, v24

    .line 1144
    .line 1145
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1146
    .line 1147
    goto :goto_24

    .line 1148
    :cond_33
    const/4 v3, -0x1

    .line 1149
    :goto_24
    move v9, v3

    .line 1150
    const-string v3, "Unknown playback location"

    .line 1151
    .line 1152
    if-eqz v18, :cond_37

    .line 1153
    .line 1154
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-virtual {v15, v9, v0, v10}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logSingleVsMultipleMediaAdded(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v0

    .line 1165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    if-eqz v12, :cond_36

    .line 1169
    .line 1170
    const/4 v5, 0x1

    .line 1171
    if-eq v12, v5, :cond_35

    .line 1172
    .line 1173
    const/4 v5, 0x2

    .line 1174
    if-ne v12, v5, :cond_34

    .line 1175
    .line 1176
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1177
    .line 1178
    goto :goto_25

    .line 1179
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1180
    .line 1181
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    throw v0

    .line 1185
    :cond_35
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAST_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1186
    .line 1187
    goto :goto_25

    .line 1188
    :cond_36
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1189
    .line 1190
    :goto_25
    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 1191
    .line 1192
    invoke-interface {v1, v3, v9, v0, v10}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 1193
    .line 1194
    .line 1195
    goto :goto_28

    .line 1196
    :cond_37
    if-eqz v0, :cond_38

    .line 1197
    .line 1198
    iget v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 1199
    .line 1200
    if-ne v12, v0, :cond_38

    .line 1201
    .line 1202
    const/4 v0, 0x1

    .line 1203
    goto :goto_26

    .line 1204
    :cond_38
    const/4 v0, 0x0

    .line 1205
    :goto_26
    if-nez v0, :cond_3c

    .line 1206
    .line 1207
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    .line 1213
    .line 1214
    if-eqz v12, :cond_3b

    .line 1215
    .line 1216
    const/4 v5, 0x1

    .line 1217
    if-eq v12, v5, :cond_3a

    .line 1218
    .line 1219
    const/4 v5, 0x2

    .line 1220
    if-ne v12, v5, :cond_39

    .line 1221
    .line 1222
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_REMOTE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1223
    .line 1224
    goto :goto_27

    .line 1225
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1226
    .line 1227
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    throw v0

    .line 1231
    :cond_3a
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_CAST:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1232
    .line 1233
    goto :goto_27

    .line 1234
    :cond_3b
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_LOCAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1235
    .line 1236
    :goto_27
    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 1237
    .line 1238
    invoke-interface {v1, v3, v9, v0, v10}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 1239
    .line 1240
    .line 1241
    :cond_3c
    :goto_28
    iget-object v0, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 1242
    .line 1243
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 1244
    .line 1245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1246
    .line 1247
    .line 1248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v18

    .line 1252
    new-instance v8, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;

    .line 1253
    .line 1254
    move-object v0, v8

    .line 1255
    move-object v1, v15

    .line 1256
    move-object/from16 v3, v23

    .line 1257
    .line 1258
    move-object/from16 v5, v21

    .line 1259
    .line 1260
    move-object/from16 v6, v20

    .line 1261
    .line 1262
    move-object/from16 v7, v34

    .line 1263
    .line 1264
    move-object/from16 v43, v8

    .line 1265
    .line 1266
    move-object/from16 v8, v17

    .line 1267
    .line 1268
    move/from16 v21, v9

    .line 1269
    .line 1270
    move-object/from16 v9, v16

    .line 1271
    .line 1272
    move-object/from16 v20, v10

    .line 1273
    .line 1274
    move-object v10, v11

    .line 1275
    move-object v11, v13

    .line 1276
    move/from16 v17, v12

    .line 1277
    .line 1278
    move-object/from16 v16, v22

    .line 1279
    .line 1280
    move-object v12, v14

    .line 1281
    move-object/from16 v22, v32

    .line 1282
    .line 1283
    move-object/from16 v13, p0

    .line 1284
    .line 1285
    move-object/from16 v14, v33

    .line 1286
    .line 1287
    move-object/from16 v44, v15

    .line 1288
    .line 1289
    move-object/from16 v15, v16

    .line 1290
    .line 1291
    move/from16 v16, v17

    .line 1292
    .line 1293
    move-object/from16 v17, v26

    .line 1294
    .line 1295
    invoke-direct/range {v0 .. v22}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/controls/models/player/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 1296
    .line 1297
    .line 1298
    move-object/from16 v1, v44

    .line 1299
    .line 1300
    iget-object v0, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 1301
    .line 1302
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 1303
    .line 1304
    move-object/from16 v1, v43

    .line 1305
    .line 1306
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 1307
    .line 1308
    .line 1309
    :goto_29
    return-void
.end method
