.class public abstract Lcom/android/wm/shell/draganddrop/BaseAppResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/AppResult;


# instance fields
.field public final mContentType:Ljava/lang/String;

.field public final mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

.field public final mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mContentType:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mContentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z
    .locals 11

    .line 1
    const-string v0, "com.samsung.android.drag_and_drop.launch.multiwindow.mode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    :goto_0
    if-eqz v3, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_4

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ne v5, v2, :cond_2

    .line 44
    .line 45
    iget-object v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v0, v1

    .line 62
    :goto_1
    if-eqz v0, :cond_4

    .line 63
    .line 64
    return v1

    .line 65
    :cond_4
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v3, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_a

    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 116
    .line 117
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 118
    .line 119
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 120
    .line 121
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 134
    .line 135
    if-eqz v6, :cond_7

    .line 136
    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eq v5, v6, :cond_9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_a
    :goto_4
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 160
    .line 161
    if-eqz v3, :cond_b

    .line 162
    .line 163
    const-string v4, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_b

    .line 174
    .line 175
    new-instance v4, Landroid/content/ComponentName;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-direct {v4, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    move v3, v2

    .line 185
    move-object v0, v4

    .line 186
    goto :goto_5

    .line 187
    :cond_b
    move v3, v1

    .line 188
    :goto_5
    iget v4, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 189
    .line 190
    if-ne v4, v2, :cond_e

    .line 191
    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_e

    .line 201
    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 207
    .line 208
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 209
    .line 210
    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_d

    .line 215
    .line 216
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 217
    .line 218
    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_c

    .line 223
    .line 224
    :cond_d
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 225
    .line 226
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 227
    .line 228
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 229
    .line 230
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-ne v5, v6, :cond_c

    .line 235
    .line 236
    return v2

    .line 237
    :cond_e
    iget v4, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 238
    .line 239
    const/4 v5, 0x2

    .line 240
    const/4 v6, 0x3

    .line 241
    if-eq v4, v6, :cond_10

    .line 242
    .line 243
    if-ne v4, v5, :cond_f

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_f
    move v4, v1

    .line 247
    goto :goto_7

    .line 248
    :cond_10
    :goto_6
    move v4, v2

    .line 249
    :goto_7
    if-eqz v4, :cond_12

    .line 250
    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_12

    .line 260
    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 266
    .line 267
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 268
    .line 269
    invoke-virtual {v0, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_11

    .line 274
    .line 275
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 276
    .line 277
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 278
    .line 279
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 280
    .line 281
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-ne v7, v8, :cond_11

    .line 286
    .line 287
    return v2

    .line 288
    :cond_12
    iget v4, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 289
    .line 290
    const/4 v7, 0x4

    .line 291
    if-ne v4, v7, :cond_13

    .line 292
    .line 293
    return v1

    .line 294
    :cond_13
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 295
    .line 296
    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    .line 297
    .line 298
    iget-object v7, v7, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    .line 299
    .line 300
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_15

    .line 305
    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-eqz v7, :cond_15

    .line 315
    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 321
    .line 322
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 327
    .line 328
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-eqz v8, :cond_14

    .line 337
    .line 338
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 339
    .line 340
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .line 342
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 343
    .line 344
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-ne v7, v8, :cond_14

    .line 349
    .line 350
    return v2

    .line 351
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    :cond_16
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_1e

    .line 360
    .line 361
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 366
    .line 367
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 368
    .line 369
    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 370
    .line 371
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 372
    .line 373
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-ne v8, v9, :cond_17

    .line 378
    .line 379
    move v8, v2

    .line 380
    goto :goto_9

    .line 381
    :cond_17
    move v8, v1

    .line 382
    :goto_9
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 383
    .line 384
    if-eqz v9, :cond_18

    .line 385
    .line 386
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    if-eqz v9, :cond_18

    .line 397
    .line 398
    move v9, v2

    .line 399
    goto :goto_a

    .line 400
    :cond_18
    move v9, v1

    .line 401
    :goto_a
    iget-object v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 402
    .line 403
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    if-nez v10, :cond_1a

    .line 412
    .line 413
    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 414
    .line 415
    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    if-eqz v7, :cond_19

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_19
    move v7, v1

    .line 423
    goto :goto_c

    .line 424
    :cond_1a
    :goto_b
    move v7, v2

    .line 425
    :goto_c
    if-nez v8, :cond_1b

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_1b
    if-eqz v9, :cond_1c

    .line 429
    .line 430
    if-nez v7, :cond_1c

    .line 431
    .line 432
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 433
    .line 434
    iget-object v10, p0, Lcom/android/wm/shell/draganddrop/BaseAppResult;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    .line 435
    .line 436
    iget-object v10, v10, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    .line 437
    .line 438
    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-eqz v8, :cond_1c

    .line 443
    .line 444
    return v1

    .line 445
    :cond_1c
    if-nez v7, :cond_1d

    .line 446
    .line 447
    if-eqz v9, :cond_16

    .line 448
    .line 449
    :cond_1d
    xor-int/lit8 p0, v3, 0x1

    .line 450
    .line 451
    return p0

    .line 452
    :cond_1e
    iget p0, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 453
    .line 454
    if-eq p0, v6, :cond_20

    .line 455
    .line 456
    if-ne p0, v5, :cond_1f

    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_1f
    move p0, v1

    .line 460
    goto :goto_e

    .line 461
    :cond_20
    :goto_d
    move p0, v2

    .line 462
    :goto_e
    if-eqz p0, :cond_23

    .line 463
    .line 464
    iget-object p0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 465
    .line 466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_23

    .line 475
    .line 476
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 481
    .line 482
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->rootAffinity:Ljava/lang/String;

    .line 483
    .line 484
    if-eqz v3, :cond_22

    .line 485
    .line 486
    const-string v4, ":"

    .line 487
    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-ltz v4, :cond_22

    .line 493
    .line 494
    add-int/lit8 v4, v4, 0x1

    .line 495
    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    goto :goto_f

    .line 501
    :cond_22
    const/4 v3, 0x0

    .line 502
    :goto_f
    if-eqz p0, :cond_21

    .line 503
    .line 504
    if-eqz v3, :cond_21

    .line 505
    .line 506
    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 507
    .line 508
    if-eqz v4, :cond_21

    .line 509
    .line 510
    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 511
    .line 512
    if-eq v4, v6, :cond_21

    .line 513
    .line 514
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    if-eqz v3, :cond_21

    .line 519
    .line 520
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 521
    .line 522
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 523
    .line 524
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 525
    .line 526
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-ne v0, v3, :cond_21

    .line 531
    .line 532
    return v2

    .line 533
    :cond_23
    return v1
.end method
