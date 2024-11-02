.class public final Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBuilder:Landroid/app/Notification$Builder;

.field public final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field public final mContext:Landroid/content/Context;

.field public final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 20

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
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v2, Landroid/app/Notification$Builder;

    .line 27
    .line 28
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 38
    .line 39
    iget-wide v5, v3, Landroid/app/Notification;->when:J

    .line 40
    .line 41
    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget v6, v3, Landroid/app/Notification;->icon:I

    .line 46
    .line 47
    iget v7, v3, Landroid/app/Notification;->iconLevel:I

    .line 48
    .line 49
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v6, v3, Landroid/app/Notification;->vibrate:[J

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 73
    .line 74
    iget v8, v3, Landroid/app/Notification;->ledOnMS:I

    .line 75
    .line 76
    iget v9, v3, Landroid/app/Notification;->ledOffMS:I

    .line 77
    .line 78
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 83
    .line 84
    and-int/lit8 v6, v6, 0x2

    .line 85
    .line 86
    const/4 v9, 0x1

    .line 87
    if-eqz v6, :cond_0

    .line 88
    .line 89
    move v6, v9

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/4 v6, 0x0

    .line 92
    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 97
    .line 98
    and-int/lit8 v6, v6, 0x8

    .line 99
    .line 100
    if-eqz v6, :cond_1

    .line 101
    .line 102
    move v6, v9

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const/4 v6, 0x0

    .line 105
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 110
    .line 111
    and-int/lit8 v6, v6, 0x10

    .line 112
    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    move v6, v9

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const/4 v6, 0x0

    .line 118
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    iget v6, v3, Landroid/app/Notification;->defaults:I

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iget-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 159
    .line 160
    iget v10, v3, Landroid/app/Notification;->flags:I

    .line 161
    .line 162
    and-int/lit16 v10, v10, 0x80

    .line 163
    .line 164
    if-eqz v10, :cond_3

    .line 165
    .line 166
    move v10, v9

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    const/4 v10, 0x0

    .line 169
    :goto_3
    invoke-virtual {v5, v6, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    iget v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 186
    .line 187
    iget v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 188
    .line 189
    iget-boolean v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 190
    .line 191
    invoke-virtual {v5, v6, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 192
    .line 193
    .line 194
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 195
    .line 196
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 201
    .line 202
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 207
    .line 208
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 209
    .line 210
    .line 211
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    const-string v6, "android.support.allowGeneratedReplies"

    .line 222
    .line 223
    if-eqz v5, :cond_a

    .line 224
    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    .line 230
    .line 231
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    new-instance v11, Landroid/app/Notification$Action$Builder;

    .line 236
    .line 237
    if-eqz v10, :cond_4

    .line 238
    .line 239
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    goto :goto_5

    .line 244
    :cond_4
    move-object v10, v7

    .line 245
    :goto_5
    iget-object v12, v5, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 246
    .line 247
    iget-object v13, v5, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 248
    .line 249
    invoke-direct {v11, v10, v12, v13}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 250
    .line 251
    .line 252
    iget-object v10, v5, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 253
    .line 254
    if-eqz v10, :cond_7

    .line 255
    .line 256
    array-length v12, v10

    .line 257
    new-array v13, v12, [Landroid/app/RemoteInput;

    .line 258
    .line 259
    const/4 v14, 0x0

    .line 260
    :goto_6
    array-length v15, v10

    .line 261
    if-ge v14, v15, :cond_6

    .line 262
    .line 263
    aget-object v15, v10, v14

    .line 264
    .line 265
    new-instance v8, Landroid/app/RemoteInput$Builder;

    .line 266
    .line 267
    iget-object v7, v15, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {v8, v7}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v7, v15, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 273
    .line 274
    invoke-virtual {v8, v7}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    iget-object v8, v15, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 279
    .line 280
    invoke-virtual {v7, v8}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    iget-boolean v8, v15, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 285
    .line 286
    invoke-virtual {v7, v8}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    iget-object v8, v15, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 291
    .line 292
    invoke-virtual {v7, v8}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    iget-object v8, v15, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    .line 297
    .line 298
    if-eqz v8, :cond_5

    .line 299
    .line 300
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v16

    .line 308
    if-eqz v16, :cond_5

    .line 309
    .line 310
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v16

    .line 314
    move-object/from16 v17, v2

    .line 315
    .line 316
    move-object/from16 v2, v16

    .line 317
    .line 318
    check-cast v2, Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v7, v2, v9}, Landroid/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    .line 321
    .line 322
    .line 323
    move-object/from16 v2, v17

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_5
    move-object/from16 v17, v2

    .line 327
    .line 328
    iget v2, v15, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 329
    .line 330
    invoke-virtual {v7, v2}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    aput-object v2, v13, v14

    .line 338
    .line 339
    add-int/lit8 v14, v14, 0x1

    .line 340
    .line 341
    move-object/from16 v2, v17

    .line 342
    .line 343
    const/4 v7, 0x0

    .line 344
    goto :goto_6

    .line 345
    :cond_6
    move-object/from16 v17, v2

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    :goto_8
    if-ge v2, v12, :cond_8

    .line 349
    .line 350
    aget-object v7, v13, v2

    .line 351
    .line 352
    invoke-virtual {v11, v7}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 353
    .line 354
    .line 355
    add-int/lit8 v2, v2, 0x1

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_7
    move-object/from16 v17, v2

    .line 359
    .line 360
    :cond_8
    iget-object v2, v5, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 361
    .line 362
    if-eqz v2, :cond_9

    .line 363
    .line 364
    new-instance v7, Landroid/os/Bundle;

    .line 365
    .line 366
    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 367
    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_9
    new-instance v7, Landroid/os/Bundle;

    .line 371
    .line 372
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 373
    .line 374
    .line 375
    :goto_9
    iget-boolean v2, v5, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 376
    .line 377
    invoke-virtual {v7, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v11, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 381
    .line 382
    .line 383
    const-string v2, "android.support.action.semanticAction"

    .line 384
    .line 385
    iget v6, v5, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 386
    .line 387
    invoke-virtual {v7, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11, v6}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 391
    .line 392
    .line 393
    iget-boolean v2, v5, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    .line 394
    .line 395
    invoke-virtual {v11, v2}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 396
    .line 397
    .line 398
    iget-boolean v2, v5, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    .line 399
    .line 400
    invoke-virtual {v11, v2}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    .line 401
    .line 402
    .line 403
    const-string v2, "android.support.action.showsUserInterface"

    .line 404
    .line 405
    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 406
    .line 407
    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v11, v7}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 411
    .line 412
    .line 413
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 414
    .line 415
    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 420
    .line 421
    .line 422
    move-object/from16 v2, v17

    .line 423
    .line 424
    const/4 v7, 0x0

    .line 425
    goto/16 :goto_4

    .line 426
    .line 427
    :cond_a
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 428
    .line 429
    if-eqz v2, :cond_b

    .line 430
    .line 431
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 432
    .line 433
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 434
    .line 435
    .line 436
    :cond_b
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 437
    .line 438
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 439
    .line 440
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 441
    .line 442
    .line 443
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 444
    .line 445
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 446
    .line 447
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 458
    .line 459
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 466
    .line 467
    .line 468
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 469
    .line 470
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 477
    .line 478
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 483
    .line 484
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 489
    .line 490
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    iget-object v5, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 495
    .line 496
    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 497
    .line 498
    invoke-virtual {v2, v5, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 499
    .line 500
    .line 501
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 502
    .line 503
    if-eqz v2, :cond_c

    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    if-nez v3, :cond_c

    .line 510
    .line 511
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-eqz v3, :cond_c

    .line 520
    .line 521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast v3, Ljava/lang/String;

    .line 526
    .line 527
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 528
    .line 529
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 530
    .line 531
    .line 532
    goto :goto_a

    .line 533
    :cond_c
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-lez v3, :cond_17

    .line 540
    .line 541
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 542
    .line 543
    if-nez v3, :cond_d

    .line 544
    .line 545
    new-instance v3, Landroid/os/Bundle;

    .line 546
    .line 547
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 548
    .line 549
    .line 550
    iput-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 551
    .line 552
    :cond_d
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 553
    .line 554
    const-string v5, "android.car.EXTENSIONS"

    .line 555
    .line 556
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    if-nez v3, :cond_e

    .line 561
    .line 562
    new-instance v3, Landroid/os/Bundle;

    .line 563
    .line 564
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 565
    .line 566
    .line 567
    :cond_e
    new-instance v7, Landroid/os/Bundle;

    .line 568
    .line 569
    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 570
    .line 571
    .line 572
    new-instance v8, Landroid/os/Bundle;

    .line 573
    .line 574
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 575
    .line 576
    .line 577
    const/4 v9, 0x0

    .line 578
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-ge v9, v10, :cond_15

    .line 583
    .line 584
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v11

    .line 592
    check-cast v11, Landroidx/core/app/NotificationCompat$Action;

    .line 593
    .line 594
    sget-object v12, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 595
    .line 596
    new-instance v12, Landroid/os/Bundle;

    .line 597
    .line 598
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    if-eqz v13, :cond_f

    .line 606
    .line 607
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    .line 608
    .line 609
    .line 610
    move-result v13

    .line 611
    goto :goto_c

    .line 612
    :cond_f
    const/4 v13, 0x0

    .line 613
    :goto_c
    const-string v14, "icon"

    .line 614
    .line 615
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    .line 617
    .line 618
    const-string/jumbo v13, "title"

    .line 619
    .line 620
    .line 621
    iget-object v14, v11, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 622
    .line 623
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 624
    .line 625
    .line 626
    const-string v13, "actionIntent"

    .line 627
    .line 628
    iget-object v14, v11, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 629
    .line 630
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 631
    .line 632
    .line 633
    iget-object v13, v11, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 634
    .line 635
    if-eqz v13, :cond_10

    .line 636
    .line 637
    new-instance v14, Landroid/os/Bundle;

    .line 638
    .line 639
    invoke-direct {v14, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 640
    .line 641
    .line 642
    goto :goto_d

    .line 643
    :cond_10
    new-instance v14, Landroid/os/Bundle;

    .line 644
    .line 645
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 646
    .line 647
    .line 648
    :goto_d
    iget-boolean v13, v11, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 649
    .line 650
    invoke-virtual {v14, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    .line 652
    .line 653
    const-string v13, "extras"

    .line 654
    .line 655
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 656
    .line 657
    .line 658
    iget-object v14, v11, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 659
    .line 660
    if-nez v14, :cond_11

    .line 661
    .line 662
    move-object/from16 v16, v2

    .line 663
    .line 664
    move-object/from16 v19, v4

    .line 665
    .line 666
    move-object/from16 v17, v6

    .line 667
    .line 668
    const/4 v15, 0x0

    .line 669
    goto/16 :goto_10

    .line 670
    .line 671
    :cond_11
    array-length v15, v14

    .line 672
    new-array v15, v15, [Landroid/os/Bundle;

    .line 673
    .line 674
    move-object/from16 v16, v2

    .line 675
    .line 676
    move-object/from16 v17, v6

    .line 677
    .line 678
    const/4 v2, 0x0

    .line 679
    :goto_e
    array-length v6, v14

    .line 680
    if-ge v2, v6, :cond_14

    .line 681
    .line 682
    aget-object v6, v14, v2

    .line 683
    .line 684
    move-object/from16 v18, v14

    .line 685
    .line 686
    new-instance v14, Landroid/os/Bundle;

    .line 687
    .line 688
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 689
    .line 690
    .line 691
    move-object/from16 v19, v4

    .line 692
    .line 693
    iget-object v4, v6, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 694
    .line 695
    const-string/jumbo v0, "resultKey"

    .line 696
    .line 697
    .line 698
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    const-string v0, "label"

    .line 702
    .line 703
    iget-object v4, v6, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 704
    .line 705
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 706
    .line 707
    .line 708
    const-string v0, "choices"

    .line 709
    .line 710
    iget-object v4, v6, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 711
    .line 712
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    const-string v0, "allowFreeFormInput"

    .line 716
    .line 717
    iget-boolean v4, v6, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 718
    .line 719
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    .line 721
    .line 722
    iget-object v0, v6, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 723
    .line 724
    invoke-virtual {v14, v13, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 725
    .line 726
    .line 727
    iget-object v0, v6, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    .line 728
    .line 729
    if-eqz v0, :cond_13

    .line 730
    .line 731
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 732
    .line 733
    .line 734
    move-result v4

    .line 735
    if-nez v4, :cond_13

    .line 736
    .line 737
    new-instance v4, Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 740
    .line 741
    .line 742
    move-result v6

    .line 743
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .line 745
    .line 746
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 751
    .line 752
    .line 753
    move-result v6

    .line 754
    if-eqz v6, :cond_12

    .line 755
    .line 756
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v6

    .line 760
    check-cast v6, Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    goto :goto_f

    .line 766
    :cond_12
    const-string v0, "allowedDataTypes"

    .line 767
    .line 768
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 769
    .line 770
    .line 771
    :cond_13
    aput-object v14, v15, v2

    .line 772
    .line 773
    add-int/lit8 v2, v2, 0x1

    .line 774
    .line 775
    move-object/from16 v0, p0

    .line 776
    .line 777
    move-object/from16 v14, v18

    .line 778
    .line 779
    move-object/from16 v4, v19

    .line 780
    .line 781
    goto :goto_e

    .line 782
    :cond_14
    move-object/from16 v19, v4

    .line 783
    .line 784
    :goto_10
    const-string/jumbo v0, "remoteInputs"

    .line 785
    .line 786
    .line 787
    invoke-virtual {v12, v0, v15}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 788
    .line 789
    .line 790
    const-string/jumbo v0, "showsUserInterface"

    .line 791
    .line 792
    .line 793
    iget-boolean v2, v11, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 794
    .line 795
    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 796
    .line 797
    .line 798
    const-string/jumbo v0, "semanticAction"

    .line 799
    .line 800
    .line 801
    iget v2, v11, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 802
    .line 803
    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v8, v10, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 807
    .line 808
    .line 809
    add-int/lit8 v9, v9, 0x1

    .line 810
    .line 811
    move-object/from16 v0, p0

    .line 812
    .line 813
    move-object/from16 v2, v16

    .line 814
    .line 815
    move-object/from16 v6, v17

    .line 816
    .line 817
    move-object/from16 v4, v19

    .line 818
    .line 819
    goto/16 :goto_b

    .line 820
    .line 821
    :cond_15
    move-object/from16 v19, v4

    .line 822
    .line 823
    const-string v0, "invisible_actions"

    .line 824
    .line 825
    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 829
    .line 830
    .line 831
    iget-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 832
    .line 833
    if-nez v0, :cond_16

    .line 834
    .line 835
    new-instance v0, Landroid/os/Bundle;

    .line 836
    .line 837
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 838
    .line 839
    .line 840
    iput-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 841
    .line 842
    :cond_16
    iget-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 843
    .line 844
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 845
    .line 846
    .line 847
    move-object/from16 v0, p0

    .line 848
    .line 849
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 850
    .line 851
    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 852
    .line 853
    .line 854
    goto :goto_11

    .line 855
    :cond_17
    move-object/from16 v19, v4

    .line 856
    .line 857
    :goto_11
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 858
    .line 859
    if-eqz v2, :cond_18

    .line 860
    .line 861
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 862
    .line 863
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 864
    .line 865
    .line 866
    :cond_18
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 867
    .line 868
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 869
    .line 870
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    const/4 v3, 0x0

    .line 875
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 876
    .line 877
    .line 878
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 879
    .line 880
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 881
    .line 882
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 887
    .line 888
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 893
    .line 894
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    iget-wide v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 899
    .line 900
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    const/4 v3, 0x0

    .line 905
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 906
    .line 907
    .line 908
    iget-boolean v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 909
    .line 910
    if-eqz v2, :cond_19

    .line 911
    .line 912
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 913
    .line 914
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 915
    .line 916
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 917
    .line 918
    .line 919
    :cond_19
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 920
    .line 921
    .line 922
    move-result v2

    .line 923
    if-nez v2, :cond_1a

    .line 924
    .line 925
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 926
    .line 927
    const/4 v3, 0x0

    .line 928
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    const/4 v4, 0x0

    .line 933
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    invoke-virtual {v2, v4, v4, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 942
    .line 943
    .line 944
    goto :goto_12

    .line 945
    :cond_1a
    const/4 v3, 0x0

    .line 946
    :goto_12
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 947
    .line 948
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 953
    .line 954
    .line 955
    move-result v4

    .line 956
    if-eqz v4, :cond_1b

    .line 957
    .line 958
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v4

    .line 962
    check-cast v4, Landroidx/core/app/Person;

    .line 963
    .line 964
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 965
    .line 966
    invoke-virtual {v4}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    .line 967
    .line 968
    .line 969
    move-result-object v4

    .line 970
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 971
    .line 972
    .line 973
    goto :goto_13

    .line 974
    :cond_1b
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 975
    .line 976
    iget-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 977
    .line 978
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 979
    .line 980
    .line 981
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 982
    .line 983
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 984
    .line 985
    if-nez v4, :cond_1c

    .line 986
    .line 987
    move-object v7, v3

    .line 988
    goto :goto_14

    .line 989
    :cond_1c
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    .line 990
    .line 991
    .line 992
    move-result-object v7

    .line 993
    :goto_14
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 994
    .line 995
    .line 996
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 997
    .line 998
    if-eqz v1, :cond_1d

    .line 999
    .line 1000
    iget-object v0, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 1001
    .line 1002
    iget-object v1, v1, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    .line 1003
    .line 1004
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;

    .line 1005
    .line 1006
    .line 1007
    :cond_1d
    return-void
.end method
