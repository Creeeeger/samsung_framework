.class public final Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget v0, v2, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-nez v0, :cond_11

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_d

    .line 16
    .line 17
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move v0, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v0, v4

    .line 33
    :goto_0
    const-string/jumbo v6, "wallpaper_path"

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->-$$Nest$mrequestImageWallpaper(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void

    .line 53
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 54
    .line 55
    iget-object v7, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 56
    .line 57
    const-string/jumbo v8, "request2DLS fail."

    .line 58
    .line 59
    .line 60
    const-string v9, "02"

    .line 61
    .line 62
    const-string v10, "01"

    .line 63
    .line 64
    const-string/jumbo v11, "request2DLS: error = "

    .line 65
    .line 66
    .line 67
    const-string/jumbo v12, "uri"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    check-cast v12, Landroid/net/Uri;

    .line 75
    .line 76
    const-string/jumbo v14, "screen"

    .line 77
    .line 78
    .line 79
    const-string v15, "MultiPackDispatcher"

    .line 80
    .line 81
    if-nez v12, :cond_3

    .line 82
    .line 83
    const-string/jumbo v0, "request2DLS: uri is null."

    .line 84
    .line 85
    .line 86
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x4

    .line 90
    goto/16 :goto_9

    .line 91
    .line 92
    :cond_3
    invoke-virtual {v3, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-ne v13, v5, :cond_4

    .line 97
    .line 98
    move v13, v5

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move v13, v4

    .line 101
    :goto_2
    const-string v5, "isMigration"

    .line 102
    .line 103
    invoke-virtual {v12, v5, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    const-string v1, "isCustom"

    .line 108
    .line 109
    invoke-virtual {v12, v1, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string/jumbo v2, "request2DLS path= "

    .line 120
    .line 121
    .line 122
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ", isSubDisplay = "

    .line 129
    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 144
    .line 145
    .line 146
    move-result-wide v17

    .line 147
    :try_start_1
    const-string v2, ""

    .line 148
    .line 149
    new-instance v4, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    const-string v1, "USER.PACK."

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    const-string v1, "MULTI.PACK."

    .line 160
    .line 161
    :goto_3
    if-eqz v13, :cond_6

    .line 162
    .line 163
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :goto_4
    const-string v9, "name"

    .line 173
    .line 174
    invoke-virtual {v4, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v6, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-eqz v13, :cond_7

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_5

    .line 184
    :cond_7
    const/4 v1, 0x0

    .line 185
    :goto_5
    invoke-virtual {v4, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    if-eqz v16, :cond_8

    .line 189
    .line 190
    const/4 v1, 0x1

    .line 191
    goto :goto_6

    .line 192
    :cond_8
    const/4 v1, 0x0

    .line 193
    :goto_6
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 197
    .line 198
    const-string/jumbo v1, "user_pack"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->callProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    const-string/jumbo v1, "result"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .line 209
    .line 210
    const/4 v4, 0x0

    .line 211
    :try_start_2
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    const-string/jumbo v2, "reason"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    goto :goto_7

    .line 223
    :cond_9
    const/4 v4, 0x0

    .line 224
    move v1, v4

    .line 225
    :goto_7
    if-nez v1, :cond_b

    .line 226
    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_a

    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object v1, v7

    .line 246
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 247
    .line 248
    invoke-virtual {v1, v15, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .line 250
    .line 251
    :cond_a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    .line 253
    .line 254
    const/4 v4, 0x3

    .line 255
    goto :goto_9

    .line 256
    :catch_1
    move-exception v0

    .line 257
    goto :goto_8

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    goto/16 :goto_c

    .line 260
    .line 261
    :catch_2
    move-exception v0

    .line 262
    const/4 v4, 0x0

    .line 263
    :goto_8
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    .line 281
    .line 282
    :cond_b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    .line 284
    .line 285
    const-string/jumbo v0, "request2DLS success."

    .line 286
    .line 287
    .line 288
    check-cast v7, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 289
    .line 290
    invoke-virtual {v7, v15, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :goto_9
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v4, :cond_f

    .line 298
    .line 299
    const/4 v1, 0x2

    .line 300
    if-eq v4, v1, :cond_f

    .line 301
    .line 302
    const/4 v1, 0x3

    .line 303
    if-eq v4, v1, :cond_c

    .line 304
    .line 305
    const-string v0, "handleMessage: NOT A CASE!"

    .line 306
    .line 307
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_c
    if-nez v0, :cond_d

    .line 312
    .line 313
    sget v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    .line 314
    .line 315
    const/4 v2, 0x1

    .line 316
    add-int/2addr v1, v2

    .line 317
    sput v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_d
    const/4 v2, 0x1

    .line 321
    sget v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    .line 322
    .line 323
    add-int/2addr v1, v2

    .line 324
    sput v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    .line 325
    .line 326
    :goto_a
    const/16 v2, 0x14

    .line 327
    .line 328
    if-ge v1, v2, :cond_e

    .line 329
    .line 330
    new-instance v0, Landroid/os/Message;

    .line 331
    .line 332
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 333
    .line 334
    .line 335
    new-instance v1, Landroid/os/Bundle;

    .line 336
    .line 337
    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v2, p1

    .line 341
    .line 342
    iget v2, v2, Landroid/os/Message;->what:I

    .line 343
    .line 344
    iput v2, v0, Landroid/os/Message;->what:I

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 347
    .line 348
    .line 349
    const-wide/16 v1, 0x2bc

    .line 350
    .line 351
    move-object/from16 v3, p0

    .line 352
    .line 353
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 354
    .line 355
    .line 356
    goto :goto_b

    .line 357
    :cond_e
    move-object/from16 v3, p0

    .line 358
    .line 359
    iget-object v1, v3, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 360
    .line 361
    iget-object v1, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    .line 362
    .line 363
    if-eqz v1, :cond_10

    .line 364
    .line 365
    const/4 v2, 0x1

    .line 366
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;->onMultipackApplied(II)V

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_f
    move-object/from16 v3, p0

    .line 371
    .line 372
    iget-object v1, v3, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 373
    .line 374
    iget-object v2, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    .line 375
    .line 376
    if-eqz v2, :cond_10

    .line 377
    .line 378
    iget-object v1, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    .line 379
    .line 380
    new-instance v2, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;

    .line 381
    .line 382
    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;II)V

    .line 383
    .line 384
    .line 385
    const-wide/16 v3, 0x1f4

    .line 386
    .line 387
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    .line 389
    .line 390
    :cond_10
    :goto_b
    return-void

    .line 391
    :goto_c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_11
    :goto_d
    return-void
.end method
