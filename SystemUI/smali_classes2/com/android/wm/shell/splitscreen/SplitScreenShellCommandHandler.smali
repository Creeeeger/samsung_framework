.class public final Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 5
    .line 6
    return-void
.end method

.method public static makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const v0, 0x10204000

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aget-object v4, v2, v3

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x3

    .line 19
    const/4 v8, 0x2

    .line 20
    const/4 v9, 0x1

    .line 21
    sparse-switch v5, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :sswitch_0
    const-string v5, "enterSplitByGesture"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    const/16 v4, 0xa

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :sswitch_1
    const-string/jumbo v5, "startIntents"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    const/16 v4, 0x9

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :sswitch_2
    const-string/jumbo v5, "startSplitTasks"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_2
    const/16 v4, 0x8

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :sswitch_3
    const-string/jumbo v5, "setSideStagePosition"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    const/4 v4, 0x7

    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string/jumbo v5, "setSplitCreateMode"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 v4, 0x6

    .line 94
    goto :goto_1

    .line 95
    :sswitch_5
    const-string/jumbo v5, "removeFromSideStage"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_5

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/4 v4, 0x5

    .line 106
    goto :goto_1

    .line 107
    :sswitch_6
    const-string v5, "moveToSideStage"

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_6

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    move v4, v6

    .line 117
    goto :goto_1

    .line 118
    :sswitch_7
    const-string/jumbo v5, "openInSplitWithAllApps"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_7

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    move v4, v7

    .line 129
    goto :goto_1

    .line 130
    :sswitch_8
    const-string/jumbo v5, "startIntentToCell"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_8

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    move v4, v8

    .line 141
    goto :goto_1

    .line 142
    :sswitch_9
    const-string/jumbo v5, "startTaskWithAllApps"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    move v4, v9

    .line 153
    goto :goto_1

    .line 154
    :sswitch_a
    const-string/jumbo v5, "startTasks"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    move v4, v3

    .line 165
    goto :goto_1

    .line 166
    :goto_0
    const/4 v4, -0x1

    .line 167
    :goto_1
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 168
    .line 169
    const/4 v10, 0x0

    .line 170
    const-string v11, "Error: start multiple tasks should be provided as arguments"

    .line 171
    .line 172
    const-string v12, "Error: task id should be provided as arguments"

    .line 173
    .line 174
    packed-switch v4, :pswitch_data_0

    .line 175
    .line 176
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v4, "Invalid command: "

    .line 180
    .line 181
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    aget-object v2, v2, v3

    .line 185
    .line 186
    invoke-static {v0, v2, v1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 187
    .line 188
    .line 189
    return v3

    .line 190
    :pswitch_0
    array-length v0, v2

    .line 191
    if-ge v0, v6, :cond_b

    .line 192
    .line 193
    const-string v0, "Error: gestureFrom should be provided"

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_b
    aget-object v0, v2, v8

    .line 200
    .line 201
    const-string v1, "interface"

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    .line 210
    .line 211
    aget-object v1, v2, v7

    .line 212
    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->startSplitByTwoTouchSwipeIfPossible(I)V

    .line 218
    .line 219
    .line 220
    :cond_c
    move v3, v9

    .line 221
    :goto_2
    return v3

    .line 222
    :pswitch_1
    array-length v3, v2

    .line 223
    if-ge v3, v6, :cond_d

    .line 224
    .line 225
    const-string v0, "Error: start intents should be provided as arguments"

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v0, "$ adb shell ~ WMShell splitscreen startIntents pkg1 pkg2 pkg3(optional) [splitDivision]"

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_d
    aget-object v1, v2, v9

    .line 237
    .line 238
    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    aget-object v1, v2, v8

    .line 243
    .line 244
    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    array-length v1, v2

    .line 249
    if-le v1, v6, :cond_e

    .line 250
    .line 251
    aget-object v1, v2, v7

    .line 252
    .line 253
    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    aget-object v1, v2, v6

    .line 258
    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    goto :goto_3

    .line 264
    :cond_e
    aget-object v1, v2, v7

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    :goto_3
    move/from16 v22, v1

    .line 271
    .line 272
    move-object v14, v10

    .line 273
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 274
    .line 275
    const/4 v15, 0x0

    .line 276
    const/16 v16, 0x0

    .line 277
    .line 278
    const/16 v17, 0x0

    .line 279
    .line 280
    const/16 v18, 0x0

    .line 281
    .line 282
    const/16 v19, 0x0

    .line 283
    .line 284
    const/high16 v20, 0x3f000000    # 0.5f

    .line 285
    .line 286
    const/high16 v21, 0x3f000000    # 0.5f

    .line 287
    .line 288
    const/16 v23, 0x0

    .line 289
    .line 290
    invoke-virtual/range {v11 .. v23}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFILandroid/window/RemoteTransition;)V

    .line 291
    .line 292
    .line 293
    :goto_4
    return v9

    .line 294
    :pswitch_2
    array-length v4, v2

    .line 295
    if-ge v4, v6, :cond_f

    .line 296
    .line 297
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_f
    aget-object v1, v2, v9

    .line 302
    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    aget-object v1, v2, v8

    .line 308
    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v12

    .line 313
    aget-object v1, v2, v7

    .line 314
    .line 315
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 316
    .line 317
    .line 318
    move-result v16

    .line 319
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 320
    .line 321
    const/4 v13, -0x1

    .line 322
    const/4 v14, 0x0

    .line 323
    const/4 v15, 0x0

    .line 324
    const/high16 v17, 0x3f000000    # 0.5f

    .line 325
    .line 326
    invoke-virtual/range {v10 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startSplitTasks(IIIZIFF)V

    .line 327
    .line 328
    .line 329
    move v3, v9

    .line 330
    :goto_5
    return v3

    .line 331
    :pswitch_3
    array-length v0, v2

    .line 332
    if-ge v0, v8, :cond_10

    .line 333
    .line 334
    const-string v0, "Error: side stage position should be provided as arguments"

    .line 335
    .line 336
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_10
    new-instance v0, Ljava/lang/Integer;

    .line 341
    .line 342
    aget-object v1, v2, v9

    .line 343
    .line 344
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 352
    .line 353
    if-eqz v1, :cond_11

    .line 354
    .line 355
    invoke-virtual {v5, v0, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 356
    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_11
    iget-object v1, v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 360
    .line 361
    invoke-virtual {v1, v10, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 362
    .line 363
    .line 364
    :goto_6
    move v3, v9

    .line 365
    :goto_7
    return v3

    .line 366
    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    .line 367
    .line 368
    if-nez v0, :cond_12

    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_12
    array-length v0, v2

    .line 372
    if-ge v0, v7, :cond_13

    .line 373
    .line 374
    const-string v0, "Error: A createMode should be provided as an argument"

    .line 375
    .line 376
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_13
    aget-object v0, v2, v8

    .line 381
    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    iget-object v2, v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 387
    .line 388
    invoke-virtual {v2, v0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitCreateMode(IZ)Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 389
    .line 390
    .line 391
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_DUMP:Z

    .line 392
    .line 393
    if-eqz v0, :cond_14

    .line 394
    .line 395
    const-string v0, "SplitScreenController"

    .line 396
    .line 397
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 401
    .line 402
    if-eqz v0, :cond_14

    .line 403
    .line 404
    const-string v2, ""

    .line 405
    .line 406
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :cond_14
    move v3, v9

    .line 410
    :goto_8
    return v3

    .line 411
    :pswitch_5
    array-length v0, v2

    .line 412
    if-ge v0, v8, :cond_15

    .line 413
    .line 414
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    goto :goto_9

    .line 418
    :cond_15
    new-instance v0, Ljava/lang/Integer;

    .line 419
    .line 420
    aget-object v1, v2, v9

    .line 421
    .line 422
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    invoke-virtual {v5, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->removeFromSideStage(I)Z

    .line 430
    .line 431
    .line 432
    move v3, v9

    .line 433
    :goto_9
    return v3

    .line 434
    :pswitch_6
    array-length v0, v2

    .line 435
    if-ge v0, v7, :cond_16

    .line 436
    .line 437
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    goto :goto_b

    .line 441
    :cond_16
    new-instance v0, Ljava/lang/Integer;

    .line 442
    .line 443
    aget-object v1, v2, v9

    .line 444
    .line 445
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    array-length v1, v2

    .line 453
    if-le v1, v8, :cond_17

    .line 454
    .line 455
    new-instance v1, Ljava/lang/Integer;

    .line 456
    .line 457
    aget-object v2, v2, v8

    .line 458
    .line 459
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    goto :goto_a

    .line 467
    :cond_17
    move v1, v9

    .line 468
    :goto_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 472
    .line 473
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5, v0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)V

    .line 477
    .line 478
    .line 479
    move v3, v9

    .line 480
    :goto_b
    return v3

    .line 481
    :pswitch_7
    array-length v0, v2

    .line 482
    if-ge v0, v6, :cond_18

    .line 483
    .line 484
    const-string v0, "Error: task id or intent to make split should be provided as arguments"

    .line 485
    .line 486
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    const-string v0, "$ adb shell ~ WMShell openInSplitWithAllApps [taskId] [package]"

    .line 490
    .line 491
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto :goto_c

    .line 495
    :cond_18
    aget-object v0, v2, v8

    .line 496
    .line 497
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    aget-object v1, v2, v7

    .line 502
    .line 503
    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v5, v0, v1, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->openInSplitWithAllApps(ILandroid/content/Intent;Landroid/os/UserHandle;)V

    .line 508
    .line 509
    .line 510
    move v3, v9

    .line 511
    :goto_c
    return v3

    .line 512
    :pswitch_8
    array-length v0, v2

    .line 513
    if-ge v0, v8, :cond_19

    .line 514
    .line 515
    const-string v0, "Error: start intent should be provided as arguments"

    .line 516
    .line 517
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    goto :goto_d

    .line 521
    :cond_19
    aget-object v0, v2, v9

    .line 522
    .line 523
    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->makeBasicIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    array-length v1, v2

    .line 528
    if-lt v1, v7, :cond_1a

    .line 529
    .line 530
    aget-object v1, v2, v8

    .line 531
    .line 532
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    :cond_1a
    invoke-virtual {v5, v10, v0, v10, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V

    .line 537
    .line 538
    .line 539
    move v3, v9

    .line 540
    :goto_d
    return v3

    .line 541
    :pswitch_9
    array-length v4, v2

    .line 542
    if-ge v4, v8, :cond_1b

    .line 543
    .line 544
    const-string v0, "Error: start taskId to make split with allapps"

    .line 545
    .line 546
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const-string v0, "$ adb shell ~ WMShell startTaskWithAllApps taskId"

    .line 550
    .line 551
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    goto :goto_e

    .line 555
    :cond_1b
    aget-object v1, v2, v9

    .line 556
    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    move-result v11

    .line 561
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 562
    .line 563
    const/4 v12, 0x0

    .line 564
    const/4 v13, -0x1

    .line 565
    const/4 v14, 0x0

    .line 566
    const/4 v15, 0x1

    .line 567
    const/16 v16, 0x0

    .line 568
    .line 569
    const/16 v17, 0x0

    .line 570
    .line 571
    const/16 v18, 0x0

    .line 572
    .line 573
    invoke-virtual/range {v10 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 574
    .line 575
    .line 576
    move v3, v9

    .line 577
    :goto_e
    return v3

    .line 578
    :pswitch_a
    array-length v4, v2

    .line 579
    if-ge v4, v7, :cond_1c

    .line 580
    .line 581
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_1c
    aget-object v1, v2, v9

    .line 586
    .line 587
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    move-result v11

    .line 591
    aget-object v1, v2, v8

    .line 592
    .line 593
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    move-result v13

    .line 597
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 598
    .line 599
    const/4 v12, 0x0

    .line 600
    const/4 v14, 0x0

    .line 601
    const/4 v15, 0x1

    .line 602
    const/16 v16, 0x0

    .line 603
    .line 604
    const/16 v17, 0x0

    .line 605
    .line 606
    const/16 v18, 0x0

    .line 607
    .line 608
    invoke-virtual/range {v10 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 609
    .line 610
    .line 611
    move v3, v9

    .line 612
    :goto_f
    return v3

    .line 613
    :sswitch_data_0
    .sparse-switch
        -0x5e67cbb4 -> :sswitch_a
        -0x5bc9c37a -> :sswitch_9
        -0x4c775645 -> :sswitch_8
        -0x4934e03e -> :sswitch_7
        -0x56f90e5 -> :sswitch_6
        0x119de939 -> :sswitch_5
        0x51013ab7 -> :sswitch_4
        0x5abe6dee -> :sswitch_3
        0x5c5f5e96 -> :sswitch_2
        0x6cb21e95 -> :sswitch_1
        0x723583f0 -> :sswitch_0
    .end sparse-switch

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "    moveToSideStage <taskId> <SideStagePosition>"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "      Move a task with given id in split-screen mode."

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "    removeFromSideStage <taskId>"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "      Remove a task with given id in split-screen mode."

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "    setSideStagePosition <SideStagePosition>"

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "      Sets the position of the side-stage."

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
