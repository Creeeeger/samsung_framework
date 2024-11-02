.class final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    sget-object v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v5, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v1, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const-string v6, "android.largeIcon.big"

    .line 52
    .line 53
    invoke-static {v1, v6, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const-string v7, "android.picture"

    .line 58
    .line 59
    invoke-static {v1, v7, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const-string v10, "android.pictureIcon"

    .line 64
    .line 65
    invoke-static {v1, v10, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    add-int v13, v10, v7

    .line 70
    .line 71
    const-string v7, "android.people.list"

    .line 72
    .line 73
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    if-eqz v7, :cond_0

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    move/from16 v10, v16

    .line 86
    .line 87
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_1

    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Landroid/app/Person;

    .line 98
    .line 99
    invoke-virtual {v11}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-static {v11, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    add-int/2addr v10, v11

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    move/from16 v10, v16

    .line 110
    .line 111
    :cond_1
    const-string v7, "android.callPerson"

    .line 112
    .line 113
    invoke-static {v1, v7, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    const-string v11, "android.verificationIcon"

    .line 118
    .line 119
    invoke-static {v1, v11, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    const-string v12, "android.messages"

    .line 124
    .line 125
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-static {v12}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    move/from16 v14, v16

    .line 138
    .line 139
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    if-eqz v15, :cond_3

    .line 146
    .line 147
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    check-cast v15, Landroid/app/Notification$MessagingStyle$Message;

    .line 152
    .line 153
    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    if-eqz v15, :cond_2

    .line 158
    .line 159
    invoke-virtual {v15}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 160
    .line 161
    .line 162
    move-result-object v17

    .line 163
    :cond_2
    move-object/from16 v15, v17

    .line 164
    .line 165
    invoke-static {v15, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    add-int/2addr v14, v15

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    const-string v12, "android.messages.historic"

    .line 172
    .line 173
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-static {v12}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    move/from16 v15, v16

    .line 186
    .line 187
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v18

    .line 191
    if-eqz v18, :cond_5

    .line 192
    .line 193
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v18

    .line 197
    check-cast v18, Landroid/app/Notification$MessagingStyle$Message;

    .line 198
    .line 199
    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 200
    .line 201
    .line 202
    move-result-object v18

    .line 203
    if-eqz v18, :cond_4

    .line 204
    .line 205
    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 206
    .line 207
    .line 208
    move-result-object v18

    .line 209
    move-object/from16 p0, v12

    .line 210
    .line 211
    move-object/from16 v12, v18

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_4
    move-object/from16 p0, v12

    .line 215
    .line 216
    move-object/from16 v12, v17

    .line 217
    .line 218
    :goto_3
    invoke-static {v12, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    add-int/2addr v15, v12

    .line 223
    move-object/from16 v12, p0

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_5
    const-string v12, "android.car.EXTENSIONS"

    .line 227
    .line 228
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    if-eqz v12, :cond_6

    .line 233
    .line 234
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 235
    .line 236
    .line 237
    move-result v18

    .line 238
    move/from16 p0, v4

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_6
    move/from16 p0, v4

    .line 242
    .line 243
    move/from16 v18, v16

    .line 244
    .line 245
    :goto_4
    const-string v4, "large_icon"

    .line 246
    .line 247
    invoke-static {v12, v4, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    const-string v12, "android.tv.EXTENSIONS"

    .line 252
    .line 253
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    if-eqz v12, :cond_7

    .line 258
    .line 259
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    move-object/from16 p1, v3

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_7
    move-object/from16 p1, v3

    .line 267
    .line 268
    move/from16 v12, v16

    .line 269
    .line 270
    :goto_5
    const-string v3, "android.wearable.EXTENSIONS"

    .line 271
    .line 272
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-eqz v3, :cond_8

    .line 277
    .line 278
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 279
    .line 280
    .line 281
    move-result v19

    .line 282
    move-object/from16 v20, v0

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_8
    move-object/from16 v20, v0

    .line 286
    .line 287
    move/from16 v19, v16

    .line 288
    .line 289
    :goto_6
    const-string v0, "background"

    .line 290
    .line 291
    invoke-static {v3, v0, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    const-string/jumbo v5, "ranker_group"

    .line 300
    .line 301
    .line 302
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    const/16 v21, 0x5

    .line 307
    .line 308
    const/16 v22, 0x2

    .line 309
    .line 310
    if-eqz v3, :cond_9

    .line 311
    .line 312
    const/16 v3, 0x8

    .line 313
    .line 314
    goto/16 :goto_8

    .line 315
    .line 316
    :cond_9
    invoke-virtual {v2}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    goto :goto_7

    .line 327
    :cond_a
    move-object/from16 v3, v17

    .line 328
    .line 329
    :goto_7
    if-nez v3, :cond_b

    .line 330
    .line 331
    move/from16 v3, v16

    .line 332
    .line 333
    goto/16 :goto_8

    .line 334
    .line 335
    :cond_b
    const-class v23, Landroid/app/Notification$BigTextStyle;

    .line 336
    .line 337
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_c

    .line 346
    .line 347
    move/from16 v3, v22

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_c
    const-class v5, Landroid/app/Notification$BigPictureStyle;

    .line 351
    .line 352
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_d

    .line 361
    .line 362
    const/4 v3, 0x1

    .line 363
    goto :goto_8

    .line 364
    :cond_d
    const-class v5, Landroid/app/Notification$InboxStyle;

    .line 365
    .line 366
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-eqz v5, :cond_e

    .line 375
    .line 376
    move/from16 v3, v21

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_e
    const-class v5, Landroid/app/Notification$MediaStyle;

    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_f

    .line 390
    .line 391
    const/4 v3, 0x6

    .line 392
    goto :goto_8

    .line 393
    :cond_f
    const-class v5, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 394
    .line 395
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-eqz v5, :cond_10

    .line 404
    .line 405
    const/4 v3, 0x4

    .line 406
    goto :goto_8

    .line 407
    :cond_10
    const-class v5, Landroid/app/Notification$MessagingStyle;

    .line 408
    .line 409
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    if-eqz v5, :cond_11

    .line 418
    .line 419
    const/4 v3, 0x7

    .line 420
    goto :goto_8

    .line 421
    :cond_11
    const-class v5, Landroid/app/Notification$CallStyle;

    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-eqz v3, :cond_12

    .line 432
    .line 433
    const/4 v3, 0x3

    .line 434
    goto :goto_8

    .line 435
    :cond_12
    const/16 v3, -0x3e8

    .line 436
    .line 437
    :goto_8
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 438
    .line 439
    if-nez v5, :cond_14

    .line 440
    .line 441
    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 442
    .line 443
    if-eqz v2, :cond_13

    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_13
    move/from16 v2, v16

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_14
    :goto_9
    const/4 v2, 0x1

    .line 450
    :goto_a
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    new-instance v23, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 455
    .line 456
    add-int/2addr v6, v10

    .line 457
    add-int/2addr v6, v7

    .line 458
    add-int/2addr v6, v11

    .line 459
    add-int/2addr v6, v14

    .line 460
    add-int v5, v6, v15

    .line 461
    .line 462
    add-int v18, v18, v4

    .line 463
    .line 464
    add-int v18, v18, v12

    .line 465
    .line 466
    add-int v18, v18, v19

    .line 467
    .line 468
    add-int v14, v18, v0

    .line 469
    .line 470
    move-object/from16 v7, v23

    .line 471
    .line 472
    move v10, v1

    .line 473
    move v11, v3

    .line 474
    move v12, v5

    .line 475
    move v15, v2

    .line 476
    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;-><init>(IIIIIIIZ)V

    .line 477
    .line 478
    .line 479
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    .line 480
    .line 481
    move-object/from16 v1, v20

    .line 482
    .line 483
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    if-nez v2, :cond_15

    .line 489
    .line 490
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 491
    .line 492
    move-object v8, v0

    .line 493
    goto/16 :goto_18

    .line 494
    .line 495
    :cond_15
    const/4 v0, 0x4

    .line 496
    new-array v3, v0, [Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 497
    .line 498
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_EXPANDED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 499
    .line 500
    const/4 v4, 0x1

    .line 501
    new-array v5, v4, [Landroid/view/View;

    .line 502
    .line 503
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 504
    .line 505
    if-eqz v6, :cond_16

    .line 506
    .line 507
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 508
    .line 509
    goto :goto_b

    .line 510
    :cond_16
    move-object/from16 v6, v17

    .line 511
    .line 512
    :goto_b
    aput-object v6, v5, v16

    .line 513
    .line 514
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    aput-object v0, v3, v16

    .line 519
    .line 520
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_CONTRACTED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 521
    .line 522
    new-array v5, v4, [Landroid/view/View;

    .line 523
    .line 524
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 525
    .line 526
    if-eqz v6, :cond_17

    .line 527
    .line 528
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_17
    move-object/from16 v6, v17

    .line 532
    .line 533
    :goto_c
    aput-object v6, v5, v16

    .line 534
    .line 535
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    aput-object v0, v3, v4

    .line 540
    .line 541
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_HEADS_UP_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 542
    .line 543
    new-array v5, v4, [Landroid/view/View;

    .line 544
    .line 545
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 546
    .line 547
    if-eqz v4, :cond_18

    .line 548
    .line 549
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 550
    .line 551
    goto :goto_d

    .line 552
    :cond_18
    move-object/from16 v4, v17

    .line 553
    .line 554
    :goto_d
    aput-object v4, v5, v16

    .line 555
    .line 556
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    aput-object v0, v3, v22

    .line 561
    .line 562
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PUBLIC_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 563
    .line 564
    const/4 v4, 0x3

    .line 565
    new-array v5, v4, [Landroid/view/View;

    .line 566
    .line 567
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 568
    .line 569
    if-eqz v4, :cond_19

    .line 570
    .line 571
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 572
    .line 573
    goto :goto_e

    .line 574
    :cond_19
    move-object/from16 v6, v17

    .line 575
    .line 576
    :goto_e
    aput-object v6, v5, v16

    .line 577
    .line 578
    if-eqz v4, :cond_1a

    .line 579
    .line 580
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 581
    .line 582
    goto :goto_f

    .line 583
    :cond_1a
    move-object/from16 v6, v17

    .line 584
    .line 585
    :goto_f
    const/4 v7, 0x1

    .line 586
    aput-object v6, v5, v7

    .line 587
    .line 588
    if-eqz v4, :cond_1b

    .line 589
    .line 590
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 591
    .line 592
    goto :goto_10

    .line 593
    :cond_1b
    move-object/from16 v4, v17

    .line 594
    .line 595
    :goto_10
    aput-object v4, v5, v22

    .line 596
    .line 597
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    const/4 v4, 0x3

    .line 602
    aput-object v0, v3, v4

    .line 603
    .line 604
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    new-instance v3, Ljava/util/ArrayList;

    .line 609
    .line 610
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    :cond_1c
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    if-eqz v4, :cond_1d

    .line 622
    .line 623
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    if-eqz v4, :cond_1c

    .line 628
    .line 629
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    goto :goto_11

    .line 633
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    const/4 v4, 0x1

    .line 638
    xor-int/2addr v0, v4

    .line 639
    if-eqz v0, :cond_25

    .line 640
    .line 641
    new-instance v0, Ljava/util/HashSet;

    .line 642
    .line 643
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 644
    .line 645
    .line 646
    sget-object v4, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 647
    .line 648
    const/4 v5, 0x6

    .line 649
    new-array v5, v5, [Landroid/view/View;

    .line 650
    .line 651
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 652
    .line 653
    if-eqz v6, :cond_1e

    .line 654
    .line 655
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 656
    .line 657
    goto :goto_12

    .line 658
    :cond_1e
    move-object/from16 v7, v17

    .line 659
    .line 660
    :goto_12
    aput-object v7, v5, v16

    .line 661
    .line 662
    if-eqz v6, :cond_1f

    .line 663
    .line 664
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 665
    .line 666
    goto :goto_13

    .line 667
    :cond_1f
    move-object/from16 v7, v17

    .line 668
    .line 669
    :goto_13
    const/4 v8, 0x1

    .line 670
    aput-object v7, v5, v8

    .line 671
    .line 672
    if-eqz v6, :cond_20

    .line 673
    .line 674
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 675
    .line 676
    goto :goto_14

    .line 677
    :cond_20
    move-object/from16 v6, v17

    .line 678
    .line 679
    :goto_14
    aput-object v6, v5, v22

    .line 680
    .line 681
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 682
    .line 683
    if-eqz v2, :cond_21

    .line 684
    .line 685
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 686
    .line 687
    goto :goto_15

    .line 688
    :cond_21
    move-object/from16 v6, v17

    .line 689
    .line 690
    :goto_15
    const/4 v7, 0x3

    .line 691
    aput-object v6, v5, v7

    .line 692
    .line 693
    if-eqz v2, :cond_22

    .line 694
    .line 695
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 696
    .line 697
    goto :goto_16

    .line 698
    :cond_22
    move-object/from16 v6, v17

    .line 699
    .line 700
    :goto_16
    const/4 v7, 0x4

    .line 701
    aput-object v6, v5, v7

    .line 702
    .line 703
    if-eqz v2, :cond_23

    .line 704
    .line 705
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 706
    .line 707
    move-object/from16 v17, v2

    .line 708
    .line 709
    :cond_23
    aput-object v17, v5, v21

    .line 710
    .line 711
    invoke-static {v4, v5, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    if-nez v0, :cond_24

    .line 716
    .line 717
    goto :goto_17

    .line 718
    :cond_24
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    goto :goto_17

    .line 723
    :cond_25
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 724
    .line 725
    :goto_17
    move-object v8, v3

    .line 726
    :goto_18
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 727
    .line 728
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 729
    .line 730
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 739
    .line 740
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 741
    .line 742
    .line 743
    move-result-object v6

    .line 744
    move-object v2, v0

    .line 745
    move-object/from16 v3, p1

    .line 746
    .line 747
    move/from16 v4, p0

    .line 748
    .line 749
    move-object/from16 v7, v23

    .line 750
    .line 751
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;Ljava/util/List;)V

    .line 752
    .line 753
    .line 754
    return-object v0
.end method
