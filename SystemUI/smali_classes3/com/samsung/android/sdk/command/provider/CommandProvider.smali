.class public Lcom/samsung/android/sdk/command/provider/CommandProvider;
.super Landroid/content/ContentProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CORE_SYSTEM_PACKAGES:[Ljava/lang/String;

.field public static final WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;

    .line 2
    .line 3
    const-string v1, "com.android.settings.intelligence"

    .line 4
    .line 5
    const-string v2, "com.android.settings"

    .line 6
    .line 7
    const-string v3, "com.samsung.android.app.routines"

    .line 8
    .line 9
    const-string v4, "com.samsung.android.app.settings.bixby"

    .line 10
    .line 11
    const-string v5, "com.samsung.accessibility"

    .line 12
    .line 13
    const-string v6, "com.samsung.android.app.galaxyfinder"

    .line 14
    .line 15
    const-string v7, "com.samsung.android.app.galaxyregistry"

    .line 16
    .line 17
    const-string v8, "com.sec.android.app.launcher"

    .line 18
    .line 19
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "com.android.settings.intelligence"

    .line 26
    .line 27
    const-string v1, "com.samsung.android.app.galaxyfinder"

    .line 28
    .line 29
    const-string v2, "com.samsung.android.app.galaxyregistry"

    .line 30
    .line 31
    const-string v3, "com.sec.android.app.launcher"

    .line 32
    .line 33
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->CORE_SYSTEM_PACKAGES:[Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "version"

    .line 11
    .line 12
    const-string v4, "2.0.8"

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x1

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    sget-object v4, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    .line 30
    .line 31
    move v7, v5

    .line 32
    :goto_0
    const/16 v8, 0x8

    .line 33
    .line 34
    if-ge v7, v8, :cond_1

    .line 35
    .line 36
    aget-object v8, v4, v7

    .line 37
    .line 38
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    move v5, v6

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    const/4 v3, 0x2

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    const-string p1, "response_code"

    .line 53
    .line 54
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string p1, "response_message"

    .line 58
    .line 59
    const-string p2, "invalid_calling_package"

    .line 60
    .line 61
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "CommandProvider"

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p3, "called from unauthorized package : "

    .line 69
    .line 70
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v5, "call() version : 2.0.8, caller : "

    .line 91
    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, ", package : "

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v5, ", method : "

    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, ", id : "

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-object v4, Lcom/samsung/android/sdk/command/provider/CommandProvider;->CORE_SYSTEM_PACKAGES:[Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-instance v5, Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_3

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    const/4 v4, 0x0

    .line 164
    :goto_2
    sget-object v5, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    .line 165
    .line 166
    sget-object v5, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v7, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    .line 172
    .line 173
    monitor-enter v7

    .line 174
    :try_start_0
    iget-object v8, v5, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 175
    .line 176
    if-nez v8, :cond_4

    .line 177
    .line 178
    :try_start_1
    const-string v8, "wait until the handler is set (timeout 3 seconds)"

    .line 179
    .line 180
    const-string v9, "[CmdL-2.0.8]CommandSdk"

    .line 181
    .line 182
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    const-wide/16 v8, 0xbb8

    .line 186
    .line 187
    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :catch_0
    move-exception v8

    .line 192
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 196
    iget-object v5, v5, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    .line 197
    .line 198
    if-eqz v5, :cond_1c

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 204
    .line 205
    .line 206
    const/4 v7, -0x1

    .line 207
    const/4 v8, -0x1

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    sparse-switch v9, :sswitch_data_0

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :sswitch_0
    const-string v9, "method_CREATE"

    .line 217
    .line 218
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-nez v9, :cond_5

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_5
    const/4 v8, 0x4

    .line 226
    goto :goto_4

    .line 227
    :sswitch_1
    const-string v9, "method_ACTION"

    .line 228
    .line 229
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-nez v9, :cond_6

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_6
    const/4 v8, 0x3

    .line 237
    goto :goto_4

    .line 238
    :sswitch_2
    const-string v9, "method_LOAD_ALL"

    .line 239
    .line 240
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-nez v9, :cond_7

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_7
    const/4 v8, 0x2

    .line 248
    goto :goto_4

    .line 249
    :sswitch_3
    const-string v9, "method_MIGRATE"

    .line 250
    .line 251
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-nez v9, :cond_8

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_8
    const/4 v8, 0x1

    .line 259
    goto :goto_4

    .line 260
    :sswitch_4
    const-string v9, "method_LOAD"

    .line 261
    .line 262
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-nez v9, :cond_9

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_9
    const/4 v8, 0x0

    .line 270
    :goto_4
    packed-switch v8, :pswitch_data_0

    .line 271
    .line 272
    .line 273
    const-string p2, "response_code"

    .line 274
    .line 275
    invoke-virtual {v2, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    .line 277
    .line 278
    const-string p2, "response_message"

    .line 279
    .line 280
    const-string p3, "invalid_method"

    .line 281
    .line 282
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string p2, "CommandProvider"

    .line 286
    .line 287
    const-string p3, "unknown method : "

    .line 288
    .line 289
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {p2, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_15

    .line 297
    .line 298
    :pswitch_0
    :try_start_3
    invoke-interface {v5}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->createStatelessCommands()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Ljava/util/ArrayList;

    .line 303
    .line 304
    new-instance p2, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result p3

    .line 317
    if-eqz p3, :cond_a

    .line 318
    .line 319
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    check-cast p3, Lcom/samsung/android/sdk/command/Command;

    .line 324
    .line 325
    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    .line 326
    .line 327
    .line 328
    move-result-object p3

    .line 329
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_a
    const-string p1, "response_code"

    .line 334
    .line 335
    invoke-virtual {v2, p1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    const-string p1, "command_list"

    .line 339
    .line 340
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    .line 342
    .line 343
    const-string p1, "response_code"

    .line 344
    .line 345
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-nez p1, :cond_1d

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :catchall_0
    move-exception p0

    .line 353
    goto :goto_7

    .line 354
    :catch_1
    move-exception p1

    .line 355
    :try_start_4
    const-string p2, "CommandProvider"

    .line 356
    .line 357
    new-instance p3, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v5, "cannot create command list : "

    .line 363
    .line 364
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-static {p2, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    .line 380
    .line 381
    const-string p1, "response_code"

    .line 382
    .line 383
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-nez p1, :cond_1d

    .line 388
    .line 389
    :goto_6
    const-string p1, "response_code"

    .line 390
    .line 391
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    const-string p1, "CommandProvider"

    .line 395
    .line 396
    const-string p2, "cannot create command list"

    .line 397
    .line 398
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_15

    .line 402
    .line 403
    :goto_7
    const-string p1, "response_code"

    .line 404
    .line 405
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-nez p1, :cond_b

    .line 410
    .line 411
    const-string p1, "response_code"

    .line 412
    .line 413
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    .line 415
    .line 416
    const-string p1, "CommandProvider"

    .line 417
    .line 418
    const-string p2, "cannot create command list"

    .line 419
    .line 420
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_b
    throw p0

    .line 424
    :pswitch_1
    if-eqz p3, :cond_f

    .line 425
    .line 426
    const-string p1, "action"

    .line 427
    .line 428
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-nez p1, :cond_c

    .line 433
    .line 434
    goto/16 :goto_a

    .line 435
    .line 436
    :cond_c
    const-string p1, "action"

    .line 437
    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-static {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    :try_start_5
    new-instance p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 447
    .line 448
    invoke-direct {p3, p0, v2, v5, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;-><init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;Landroid/os/Bundle;Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-interface {v5, p2, p1, p3}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 452
    .line 453
    .line 454
    const-string p1, "response_code"

    .line 455
    .line 456
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-nez p1, :cond_1d

    .line 461
    .line 462
    const-string p1, "response_code"

    .line 463
    .line 464
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    .line 466
    .line 467
    const-string p1, "CommandProvider"

    .line 468
    .line 469
    new-instance p3, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v3, "failed to perform action : "

    .line 472
    .line 473
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto :goto_8

    .line 477
    :catchall_1
    move-exception p0

    .line 478
    goto :goto_9

    .line 479
    :catch_2
    move-exception p3

    .line 480
    :try_start_6
    const-string v5, "CommandProvider"

    .line 481
    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    const-string v8, "failed to perform action : "

    .line 488
    .line 489
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v8, ", action type : "

    .line 496
    .line 497
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    if-eqz p1, :cond_d

    .line 501
    .line 502
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    :cond_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string p1, ", reason : "

    .line 510
    .line 511
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-static {v5, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 526
    .line 527
    .line 528
    const-string p1, "response_code"

    .line 529
    .line 530
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-nez p1, :cond_1d

    .line 535
    .line 536
    const-string p1, "response_code"

    .line 537
    .line 538
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    .line 540
    .line 541
    const-string p1, "CommandProvider"

    .line 542
    .line 543
    new-instance p3, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v3, "failed to perform action : "

    .line 546
    .line 547
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    :goto_8
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_15

    .line 561
    .line 562
    :goto_9
    const-string p1, "response_code"

    .line 563
    .line 564
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    if-nez p1, :cond_e

    .line 569
    .line 570
    const-string p1, "response_code"

    .line 571
    .line 572
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    .line 574
    .line 575
    const-string p1, "CommandProvider"

    .line 576
    .line 577
    new-instance p3, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v0, "failed to perform action : "

    .line 580
    .line 581
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object p2

    .line 591
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :cond_e
    throw p0

    .line 595
    :cond_f
    :goto_a
    const-string p1, "response_code"

    .line 596
    .line 597
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    .line 599
    .line 600
    const-string p1, "response_message"

    .line 601
    .line 602
    const-string p2, "invalid_action"

    .line 603
    .line 604
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_15

    .line 608
    .line 609
    :pswitch_2
    :try_start_7
    invoke-interface {v5}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->createStatelessCommands()Ljava/util/List;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    check-cast p1, Ljava/util/ArrayList;

    .line 614
    .line 615
    new-instance p2, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    :cond_10
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 625
    .line 626
    .line 627
    move-result p3

    .line 628
    if-eqz p3, :cond_12

    .line 629
    .line 630
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object p3

    .line 634
    check-cast p3, Lcom/samsung/android/sdk/command/Command;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 635
    .line 636
    :try_start_8
    iget v7, p3, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    .line 637
    .line 638
    if-ne v7, v3, :cond_11

    .line 639
    .line 640
    new-instance v7, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .line 644
    .line 645
    const-string v8, "not supported command : "

    .line 646
    .line 647
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    iget-object v8, p3, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 651
    .line 652
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v7

    .line 659
    invoke-static {v7}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    goto :goto_b

    .line 663
    :cond_11
    iget-object v7, p3, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 664
    .line 665
    invoke-interface {v5, v7}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    .line 666
    .line 667
    .line 668
    move-result-object v7

    .line 669
    if-eqz v7, :cond_10

    .line 670
    .line 671
    invoke-virtual {v7}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    .line 672
    .line 673
    .line 674
    move-result-object v7

    .line 675
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 676
    .line 677
    .line 678
    goto :goto_b

    .line 679
    :catch_3
    move-exception v7

    .line 680
    :try_start_9
    const-string v8, "CommandProvider"

    .line 681
    .line 682
    new-instance v9, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    const-string v10, "failed to load a command : "

    .line 688
    .line 689
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    iget-object p3, p3, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 693
    .line 694
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    const-string p3, ", reason : "

    .line 698
    .line 699
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object p3

    .line 706
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object p3

    .line 713
    invoke-static {v8, p3}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto :goto_b

    .line 717
    :cond_12
    const-string p1, "response_code"

    .line 718
    .line 719
    invoke-virtual {v2, p1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    .line 721
    .line 722
    const-string p1, "command_list"

    .line 723
    .line 724
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 725
    .line 726
    .line 727
    const-string p1, "response_code"

    .line 728
    .line 729
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 730
    .line 731
    .line 732
    move-result p1

    .line 733
    if-nez p1, :cond_1d

    .line 734
    .line 735
    goto :goto_c

    .line 736
    :catchall_2
    move-exception p0

    .line 737
    goto :goto_d

    .line 738
    :catch_4
    move-exception p1

    .line 739
    :try_start_a
    const-string p2, "CommandProvider"

    .line 740
    .line 741
    new-instance p3, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .line 745
    .line 746
    const-string v5, "failed to load all commands : "

    .line 747
    .line 748
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    invoke-static {p2, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 763
    .line 764
    .line 765
    const-string p1, "response_code"

    .line 766
    .line 767
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 768
    .line 769
    .line 770
    move-result p1

    .line 771
    if-nez p1, :cond_1d

    .line 772
    .line 773
    :goto_c
    const-string p1, "response_code"

    .line 774
    .line 775
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    .line 777
    .line 778
    const-string p1, "CommandProvider"

    .line 779
    .line 780
    const-string p2, "failed to load all commands"

    .line 781
    .line 782
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_15

    .line 786
    .line 787
    :goto_d
    const-string p1, "response_code"

    .line 788
    .line 789
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 790
    .line 791
    .line 792
    move-result p1

    .line 793
    if-nez p1, :cond_13

    .line 794
    .line 795
    const-string p1, "response_code"

    .line 796
    .line 797
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    .line 799
    .line 800
    const-string p1, "CommandProvider"

    .line 801
    .line 802
    const-string p2, "failed to load all commands"

    .line 803
    .line 804
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    :cond_13
    throw p0

    .line 808
    :pswitch_3
    if-eqz p3, :cond_17

    .line 809
    .line 810
    const-string p1, "action"

    .line 811
    .line 812
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 813
    .line 814
    .line 815
    move-result p1

    .line 816
    if-nez p1, :cond_14

    .line 817
    .line 818
    goto/16 :goto_11

    .line 819
    .line 820
    :cond_14
    const-string p1, "action"

    .line 821
    .line 822
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 823
    .line 824
    .line 825
    move-result-object p1

    .line 826
    invoke-static {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    .line 827
    .line 828
    .line 829
    move-result-object p1

    .line 830
    :try_start_b
    invoke-interface {v5, p2, p1}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->migrateCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/action/CommandAction;

    .line 831
    .line 832
    .line 833
    move-result-object p1

    .line 834
    if-eqz p1, :cond_15

    .line 835
    .line 836
    const-string p3, "response_code"

    .line 837
    .line 838
    invoke-virtual {v2, p3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    .line 840
    .line 841
    const-string p3, "action"

    .line 842
    .line 843
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    .line 844
    .line 845
    .line 846
    move-result-object p1

    .line 847
    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 848
    .line 849
    .line 850
    goto :goto_e

    .line 851
    :cond_15
    const-string p1, "response_code"

    .line 852
    .line 853
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 854
    .line 855
    .line 856
    :goto_e
    const-string p1, "response_code"

    .line 857
    .line 858
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 859
    .line 860
    .line 861
    move-result p1

    .line 862
    if-nez p1, :cond_1d

    .line 863
    .line 864
    const-string p1, "response_code"

    .line 865
    .line 866
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    .line 868
    .line 869
    const-string p1, "CommandProvider"

    .line 870
    .line 871
    new-instance p3, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    const-string v3, "failed to migrate an action : "

    .line 874
    .line 875
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    goto :goto_f

    .line 879
    :catchall_3
    move-exception p0

    .line 880
    goto :goto_10

    .line 881
    :catch_5
    move-exception p1

    .line 882
    :try_start_c
    const-string p3, "CommandProvider"

    .line 883
    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    .line 885
    .line 886
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .line 888
    .line 889
    const-string v6, "failed to migrate an action : "

    .line 890
    .line 891
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    const-string v6, ", reason : "

    .line 898
    .line 899
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object p1

    .line 913
    invoke-static {p3, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 914
    .line 915
    .line 916
    const-string p1, "response_code"

    .line 917
    .line 918
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 919
    .line 920
    .line 921
    move-result p1

    .line 922
    if-nez p1, :cond_1d

    .line 923
    .line 924
    const-string p1, "response_code"

    .line 925
    .line 926
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    .line 928
    .line 929
    const-string p1, "CommandProvider"

    .line 930
    .line 931
    new-instance p3, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    const-string v3, "failed to migrate an action : "

    .line 934
    .line 935
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    :goto_f
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object p2

    .line 945
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    goto/16 :goto_15

    .line 949
    .line 950
    :goto_10
    const-string p1, "response_code"

    .line 951
    .line 952
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 953
    .line 954
    .line 955
    move-result p1

    .line 956
    if-nez p1, :cond_16

    .line 957
    .line 958
    const-string p1, "response_code"

    .line 959
    .line 960
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    .line 962
    .line 963
    const-string p1, "CommandProvider"

    .line 964
    .line 965
    new-instance p3, Ljava/lang/StringBuilder;

    .line 966
    .line 967
    const-string v0, "failed to migrate an action : "

    .line 968
    .line 969
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object p2

    .line 979
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    :cond_16
    throw p0

    .line 983
    :cond_17
    :goto_11
    const-string p1, "response_code"

    .line 984
    .line 985
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    .line 987
    .line 988
    const-string p1, "response_message"

    .line 989
    .line 990
    const-string p2, "invalid_action"

    .line 991
    .line 992
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    goto/16 :goto_15

    .line 996
    .line 997
    :pswitch_4
    if-eqz p3, :cond_18

    .line 998
    .line 999
    :try_start_d
    const-string p1, "action"

    .line 1000
    .line 1001
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result p1

    .line 1005
    if-eqz p1, :cond_18

    .line 1006
    .line 1007
    const-string p1, "action"

    .line 1008
    .line 1009
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p1

    .line 1013
    invoke-static {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    .line 1014
    .line 1015
    .line 1016
    move-result-object p1

    .line 1017
    invoke-interface {v5, p2, p1}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    .line 1018
    .line 1019
    .line 1020
    move-result-object p1

    .line 1021
    if-nez p1, :cond_19

    .line 1022
    .line 1023
    invoke-interface {v5, p2}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p1

    .line 1027
    goto :goto_12

    .line 1028
    :cond_18
    invoke-interface {v5, p2}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    .line 1029
    .line 1030
    .line 1031
    move-result-object p1

    .line 1032
    :cond_19
    :goto_12
    if-nez p1, :cond_1a

    .line 1033
    .line 1034
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    .line 1035
    .line 1036
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;-><init>(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    iput v3, p1, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    .line 1040
    .line 1041
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    .line 1042
    .line 1043
    .line 1044
    move-result-object p1

    .line 1045
    :cond_1a
    const-string p3, "response_code"

    .line 1046
    .line 1047
    invoke-virtual {v2, p3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    .line 1049
    .line 1050
    const-string p3, "command"

    .line 1051
    .line 1052
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p1

    .line 1056
    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1057
    .line 1058
    .line 1059
    const-string p1, "response_code"

    .line 1060
    .line 1061
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result p1

    .line 1065
    if-nez p1, :cond_1d

    .line 1066
    .line 1067
    const-string p1, "response_code"

    .line 1068
    .line 1069
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    .line 1071
    .line 1072
    const-string p1, "CommandProvider"

    .line 1073
    .line 1074
    new-instance p3, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    const-string v3, "failed to load a command : "

    .line 1077
    .line 1078
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_13

    .line 1082
    :catchall_4
    move-exception p0

    .line 1083
    goto :goto_14

    .line 1084
    :catch_6
    move-exception p1

    .line 1085
    :try_start_e
    const-string p3, "CommandProvider"

    .line 1086
    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    const-string v6, "failed to load a command : "

    .line 1093
    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    const-string v6, ", reason : "

    .line 1101
    .line 1102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object p1

    .line 1109
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object p1

    .line 1116
    invoke-static {p3, p1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1117
    .line 1118
    .line 1119
    const-string p1, "response_code"

    .line 1120
    .line 1121
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result p1

    .line 1125
    if-nez p1, :cond_1d

    .line 1126
    .line 1127
    const-string p1, "response_code"

    .line 1128
    .line 1129
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1130
    .line 1131
    .line 1132
    const-string p1, "CommandProvider"

    .line 1133
    .line 1134
    new-instance p3, Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    const-string v3, "failed to load a command : "

    .line 1137
    .line 1138
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    :goto_13
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object p2

    .line 1148
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    goto :goto_15

    .line 1152
    :goto_14
    const-string p1, "response_code"

    .line 1153
    .line 1154
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result p1

    .line 1158
    if-nez p1, :cond_1b

    .line 1159
    .line 1160
    const-string p1, "response_code"

    .line 1161
    .line 1162
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1163
    .line 1164
    .line 1165
    const-string p1, "CommandProvider"

    .line 1166
    .line 1167
    new-instance p3, Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    const-string v0, "failed to load a command : "

    .line 1170
    .line 1171
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object p2

    .line 1181
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    :cond_1b
    throw p0

    .line 1185
    :cond_1c
    const-string p1, "response_code"

    .line 1186
    .line 1187
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    .line 1189
    .line 1190
    const-string p1, "response_message"

    .line 1191
    .line 1192
    const-string p2, "handler_timeout"

    .line 1193
    .line 1194
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    const-string p1, "CommandProvider"

    .line 1198
    .line 1199
    const-string p2, "command action handler is not set"

    .line 1200
    .line 1201
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    :cond_1d
    :goto_15
    if-eqz v4, :cond_1e

    .line 1205
    .line 1206
    invoke-virtual {p0, v4}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1207
    .line 1208
    .line 1209
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    const-string p1, "call() took time : "

    .line 1212
    .line 1213
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1217
    .line 1218
    .line 1219
    move-result-wide p1

    .line 1220
    sub-long/2addr p1, v0

    .line 1221
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object p0

    .line 1228
    invoke-static {p0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    return-object v2

    .line 1232
    :catchall_5
    move-exception p0

    .line 1233
    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1234
    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x3752f67c -> :sswitch_4
        0xb8b682d -> :sswitch_3
        0x3070d446 -> :sswitch_2
        0x3e2b0f54 -> :sswitch_1
        0x4261321a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
