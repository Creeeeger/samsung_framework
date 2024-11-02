.class public final Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 8
    .line 9
    const-string v3, "SplitScreenProxyService"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    .line 14
    .line 15
    const-string v0, "mSplitScreenController is null"

    .line 16
    .line 17
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    .line 28
    .line 29
    const-string v0, "msg data is empty"

    .line 30
    .line 31
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget v0, v2, Landroid/os/Message;->what:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    const/16 v7, 0x3e8

    .line 41
    .line 42
    if-eq v0, v7, :cond_2

    .line 43
    .line 44
    move v0, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v8, "recent_tasks_max"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string/jumbo v9, "recent_tasks_flag"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const-string/jumbo v10, "userid"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v10, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 72
    .line 73
    iget-object v10, v10, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mRecentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 74
    .line 75
    invoke-virtual {v10, v8, v9, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->getRecentTasks(III)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v8, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    new-array v9, v9, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 89
    .line 90
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string/jumbo v0, "response"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 97
    .line 98
    .line 99
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 100
    .line 101
    invoke-static {v4, v7, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    :try_start_0
    iget-object v7, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 109
    .line 110
    invoke-virtual {v7, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :goto_0
    move v0, v6

    .line 119
    :goto_1
    if-eqz v0, :cond_3

    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-direct {v0, v7}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>(Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 132
    .line 133
    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mPendingMsg:Landroid/os/Message;

    .line 134
    .line 135
    const/16 v8, 0x8

    .line 136
    .line 137
    const/4 v9, 0x5

    .line 138
    const/4 v10, 0x2

    .line 139
    const/4 v12, 0x4

    .line 140
    const/4 v13, 0x3

    .line 141
    iget v14, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    .line 142
    .line 143
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    .line 144
    .line 145
    iget v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    .line 146
    .line 147
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    .line 148
    .line 149
    iget v11, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    .line 150
    .line 151
    if-nez v7, :cond_f

    .line 152
    .line 153
    iget v7, v2, Landroid/os/Message;->what:I

    .line 154
    .line 155
    if-eq v7, v6, :cond_4

    .line 156
    .line 157
    if-eq v7, v10, :cond_4

    .line 158
    .line 159
    if-eq v7, v13, :cond_4

    .line 160
    .line 161
    if-eq v7, v12, :cond_4

    .line 162
    .line 163
    if-eq v7, v9, :cond_4

    .line 164
    .line 165
    if-eq v7, v8, :cond_4

    .line 166
    .line 167
    const/4 v7, 0x0

    .line 168
    goto :goto_2

    .line 169
    :cond_4
    move v7, v6

    .line 170
    :goto_2
    if-eqz v7, :cond_f

    .line 171
    .line 172
    new-instance v7, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v6, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v10, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 188
    .line 189
    if-eqz v9, :cond_5

    .line 190
    .line 191
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_5
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 195
    .line 196
    if-eqz v9, :cond_6

    .line 197
    .line 198
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 199
    .line 200
    invoke-virtual {v10, v9, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_6
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 208
    .line 209
    if-eqz v9, :cond_7

    .line 210
    .line 211
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 212
    .line 213
    invoke-virtual {v10, v9, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    :cond_7
    if-eqz v4, :cond_8

    .line 221
    .line 222
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    .line 223
    .line 224
    invoke-virtual {v10, v4, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :cond_8
    if-eqz v15, :cond_9

    .line 232
    .line 233
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    .line 234
    .line 235
    invoke-virtual {v10, v15, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    :cond_9
    iget v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 243
    .line 244
    const/4 v10, -0x1

    .line 245
    if-eq v9, v10, :cond_a

    .line 246
    .line 247
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_a
    if-eq v11, v10, :cond_b

    .line 255
    .line 256
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_b
    if-eq v5, v10, :cond_c

    .line 264
    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_c
    iget v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    .line 273
    .line 274
    if-eq v9, v10, :cond_d

    .line 275
    .line 276
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :cond_d
    if-eq v14, v10, :cond_e

    .line 284
    .line 285
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    :cond_e
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-virtual {v9, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->shouldDeferEnterSplit(Ljava/util/List;Ljava/util/List;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-eqz v6, :cond_f

    .line 301
    .line 302
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 303
    .line 304
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mPendingMsg:Landroid/os/Message;

    .line 309
    .line 310
    return-void

    .line 311
    :cond_f
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 312
    .line 313
    const/4 v7, 0x0

    .line 314
    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mPendingMsg:Landroid/os/Message;

    .line 315
    .line 316
    sget-boolean v6, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    .line 317
    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v9, "handle msg, what:"

    .line 321
    .line 322
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget v9, v2, Landroid/os/Message;->what:I

    .line 326
    .line 327
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v9, " called:"

    .line 331
    .line 332
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    iget v9, v2, Landroid/os/Message;->sendingUid:I

    .line 336
    .line 337
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    iget v6, v2, Landroid/os/Message;->what:I

    .line 348
    .line 349
    packed-switch v6, :pswitch_data_0

    .line 350
    .line 351
    .line 352
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_d

    .line 356
    .line 357
    :pswitch_1
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 360
    .line 361
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda1;

    .line 362
    .line 363
    invoke-direct {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda1;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-static {v0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_d

    .line 370
    .line 371
    :pswitch_2
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 372
    .line 373
    const/4 v4, -0x1

    .line 374
    if-ne v2, v4, :cond_10

    .line 375
    .line 376
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 377
    .line 378
    if-nez v2, :cond_10

    .line 379
    .line 380
    const-string v0, "OPEN_IN_SPLIT_WITH_ALLAPPS has no valid start info"

    .line 381
    .line 382
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_10
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 387
    .line 388
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 389
    .line 390
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 391
    .line 392
    const/16 v3, 0x9

    .line 393
    .line 394
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 395
    .line 396
    .line 397
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_d

    .line 401
    .line 402
    :pswitch_3
    const/4 v2, -0x1

    .line 403
    if-eq v11, v2, :cond_12

    .line 404
    .line 405
    if-ne v5, v2, :cond_11

    .line 406
    .line 407
    goto :goto_3

    .line 408
    :cond_11
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 409
    .line 410
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 411
    .line 412
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 413
    .line 414
    const/4 v3, 0x7

    .line 415
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 416
    .line 417
    .line 418
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_d

    .line 422
    .line 423
    :cond_12
    :goto_3
    const-string v0, "START_MULTI_SPLIT_TASKS has not enough task ids"

    .line 424
    .line 425
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_4
    if-nez v15, :cond_13

    .line 430
    .line 431
    const/4 v2, -0x1

    .line 432
    if-ne v14, v2, :cond_13

    .line 433
    .line 434
    const-string v0, "OPEN_IN_SPLIT_WITH_TAP has no valid start info"

    .line 435
    .line 436
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :cond_13
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 441
    .line 442
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 443
    .line 444
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 445
    .line 446
    invoke-direct {v2, v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 447
    .line 448
    .line 449
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_d

    .line 453
    .line 454
    :pswitch_5
    const/4 v2, -0x1

    .line 455
    if-eq v11, v2, :cond_15

    .line 456
    .line 457
    if-ne v5, v2, :cond_14

    .line 458
    .line 459
    goto :goto_4

    .line 460
    :cond_14
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 461
    .line 462
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 463
    .line 464
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 465
    .line 466
    const/4 v3, 0x6

    .line 467
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_d

    .line 474
    .line 475
    :cond_15
    :goto_4
    const-string v0, "START_SPLIT_TASKS has not enough task ids"

    .line 476
    .line 477
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :pswitch_6
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 482
    .line 483
    if-nez v2, :cond_16

    .line 484
    .line 485
    const-string v0, "START_INTENT has no intent"

    .line 486
    .line 487
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_16
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 492
    .line 493
    if-eqz v2, :cond_17

    .line 494
    .line 495
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 496
    .line 497
    if-eqz v2, :cond_17

    .line 498
    .line 499
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 500
    .line 501
    if-eqz v2, :cond_17

    .line 502
    .line 503
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 504
    .line 505
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 506
    .line 507
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 508
    .line 509
    invoke-direct {v2, v0, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 510
    .line 511
    .line 512
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_d

    .line 516
    .line 517
    :cond_17
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 518
    .line 519
    if-eqz v2, :cond_18

    .line 520
    .line 521
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 522
    .line 523
    const/4 v3, -0x1

    .line 524
    if-eq v2, v3, :cond_18

    .line 525
    .line 526
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 527
    .line 528
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 529
    .line 530
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-nez v2, :cond_18

    .line 535
    .line 536
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 537
    .line 538
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 539
    .line 540
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 541
    .line 542
    const/4 v3, 0x4

    .line 543
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 544
    .line 545
    .line 546
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_d

    .line 550
    .line 551
    :cond_18
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 552
    .line 553
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 554
    .line 555
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 556
    .line 557
    const/4 v3, 0x5

    .line 558
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 559
    .line 560
    .line 561
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_d

    .line 565
    .line 566
    :pswitch_7
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 567
    .line 568
    const/4 v4, -0x1

    .line 569
    if-eq v2, v4, :cond_1a

    .line 570
    .line 571
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 572
    .line 573
    if-nez v2, :cond_19

    .line 574
    .line 575
    goto :goto_5

    .line 576
    :cond_19
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 577
    .line 578
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 579
    .line 580
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 581
    .line 582
    const/4 v3, 0x2

    .line 583
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 584
    .line 585
    .line 586
    invoke-static {v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_d

    .line 590
    .line 591
    :cond_1a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    const-string v2, "START_TASK_AND_INTENT has less data. taskId:"

    .line 594
    .line 595
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 599
    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v2, ", sideStageIntent:"

    .line 604
    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 609
    .line 610
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_8
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 622
    .line 623
    if-eqz v2, :cond_2f

    .line 624
    .line 625
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 626
    .line 627
    if-nez v2, :cond_1b

    .line 628
    .line 629
    goto/16 :goto_c

    .line 630
    .line 631
    :cond_1b
    sget-boolean v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    .line 632
    .line 633
    if-eqz v2, :cond_1c

    .line 634
    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    const-string v5, "START_INTENTS: client request("

    .line 638
    .line 639
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 643
    .line 644
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v5, ") is ignored, reason=test_remote_transition"

    .line 648
    .line 649
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    new-instance v2, Landroid/window/RemoteTransition;

    .line 660
    .line 661
    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 662
    .line 663
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mTestRemoteTransition:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;

    .line 664
    .line 665
    invoke-direct {v2, v5}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    .line 666
    .line 667
    .line 668
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 669
    .line 670
    :cond_1c
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 671
    .line 672
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 673
    .line 674
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    .line 678
    .line 679
    if-eqz v5, :cond_21

    .line 680
    .line 681
    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 682
    .line 683
    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    if-nez v5, :cond_21

    .line 688
    .line 689
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    .line 690
    .line 691
    const/4 v5, 0x2

    .line 692
    if-eq v2, v5, :cond_20

    .line 693
    .line 694
    if-eq v2, v13, :cond_1f

    .line 695
    .line 696
    const/4 v5, 0x4

    .line 697
    if-eq v2, v5, :cond_1e

    .line 698
    .line 699
    const/4 v5, 0x5

    .line 700
    if-eq v2, v5, :cond_1d

    .line 701
    .line 702
    const/4 v5, 0x1

    .line 703
    goto :goto_6

    .line 704
    :cond_1d
    const/4 v2, 0x0

    .line 705
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 706
    .line 707
    const/4 v5, 0x1

    .line 708
    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 709
    .line 710
    const/16 v6, 0x48

    .line 711
    .line 712
    iput v6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 713
    .line 714
    goto :goto_6

    .line 715
    :cond_1e
    const/4 v2, 0x0

    .line 716
    const/4 v5, 0x1

    .line 717
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 718
    .line 719
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 720
    .line 721
    const/16 v6, 0x60

    .line 722
    .line 723
    iput v6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 724
    .line 725
    goto :goto_6

    .line 726
    :cond_1f
    const/4 v2, 0x0

    .line 727
    const/4 v5, 0x1

    .line 728
    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 729
    .line 730
    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 731
    .line 732
    const/16 v6, 0x30

    .line 733
    .line 734
    iput v6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 735
    .line 736
    goto :goto_6

    .line 737
    :cond_20
    const/4 v2, 0x0

    .line 738
    const/4 v5, 0x1

    .line 739
    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 740
    .line 741
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 742
    .line 743
    const/16 v2, 0x18

    .line 744
    .line 745
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 746
    .line 747
    :goto_6
    const/4 v6, -0x1

    .line 748
    goto :goto_7

    .line 749
    :cond_21
    const/4 v5, 0x1

    .line 750
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 751
    .line 752
    iget v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 753
    .line 754
    const/4 v6, -0x1

    .line 755
    if-ne v2, v6, :cond_22

    .line 756
    .line 757
    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 758
    .line 759
    goto :goto_7

    .line 760
    :cond_22
    if-nez v2, :cond_23

    .line 761
    .line 762
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 763
    .line 764
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 765
    .line 766
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 767
    .line 768
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 769
    .line 770
    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 771
    .line 772
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 773
    .line 774
    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 775
    .line 776
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 777
    .line 778
    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 779
    .line 780
    goto :goto_7

    .line 781
    :cond_23
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 782
    .line 783
    :goto_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 784
    .line 785
    if-eqz v2, :cond_24

    .line 786
    .line 787
    if-eqz v4, :cond_24

    .line 788
    .line 789
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 790
    .line 791
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 792
    .line 793
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 794
    .line 795
    const/4 v8, 0x0

    .line 796
    invoke-direct {v5, v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 797
    .line 798
    .line 799
    invoke-static {v2, v5}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 800
    .line 801
    .line 802
    goto :goto_8

    .line 803
    :cond_24
    const/4 v8, 0x0

    .line 804
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 805
    .line 806
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 807
    .line 808
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;

    .line 809
    .line 810
    const/4 v9, 0x1

    .line 811
    invoke-direct {v5, v0, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 812
    .line 813
    .line 814
    invoke-static {v2, v5}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenController;Ljava/util/function/Consumer;)V

    .line 815
    .line 816
    .line 817
    :goto_8
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_APP_PAIR_SA_LOGGING:Z

    .line 818
    .line 819
    if-eqz v2, :cond_30

    .line 820
    .line 821
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 822
    .line 823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchFrom:Ljava/lang/String;

    .line 827
    .line 828
    if-nez v0, :cond_25

    .line 829
    .line 830
    const-string v0, "mLaunchFrom is null"

    .line 831
    .line 832
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    goto/16 :goto_d

    .line 836
    .line 837
    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    const v2, -0x5ba06392

    .line 842
    .line 843
    .line 844
    if-eq v1, v2, :cond_2a

    .line 845
    .line 846
    const v2, 0x30f4df

    .line 847
    .line 848
    .line 849
    if-eq v1, v2, :cond_28

    .line 850
    .line 851
    const v2, 0x46a0234f

    .line 852
    .line 853
    .line 854
    if-eq v1, v2, :cond_26

    .line 855
    .line 856
    goto :goto_9

    .line 857
    :cond_26
    const-string v1, "appsEdge"

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    if-nez v0, :cond_27

    .line 864
    .line 865
    goto :goto_9

    .line 866
    :cond_27
    const/4 v5, 0x2

    .line 867
    goto :goto_a

    .line 868
    :cond_28
    const-string v1, "home"

    .line 869
    .line 870
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    if-nez v0, :cond_29

    .line 875
    .line 876
    goto :goto_9

    .line 877
    :cond_29
    const/4 v5, 0x1

    .line 878
    goto :goto_a

    .line 879
    :cond_2a
    const-string/jumbo v1, "taskbar"

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-nez v0, :cond_2b

    .line 887
    .line 888
    :goto_9
    move v5, v6

    .line 889
    goto :goto_a

    .line 890
    :cond_2b
    move v5, v8

    .line 891
    :goto_a
    if-eqz v5, :cond_2e

    .line 892
    .line 893
    const/4 v1, 0x1

    .line 894
    if-eq v5, v1, :cond_2d

    .line 895
    .line 896
    const/4 v0, 0x2

    .line 897
    if-eq v5, v0, :cond_2c

    .line 898
    .line 899
    move-object v0, v7

    .line 900
    goto :goto_b

    .line 901
    :cond_2c
    const-string v0, "From Apps edge_AppPair"

    .line 902
    .line 903
    goto :goto_b

    .line 904
    :cond_2d
    const-string v0, "From App pair on Home"

    .line 905
    .line 906
    goto :goto_b

    .line 907
    :cond_2e
    const-string v0, "From App pair on TaskBar"

    .line 908
    .line 909
    :goto_b
    if-eqz v0, :cond_30

    .line 910
    .line 911
    const-string v1, "1000"

    .line 912
    .line 913
    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 917
    .line 918
    if-eqz v1, :cond_30

    .line 919
    .line 920
    if-eqz v4, :cond_30

    .line 921
    .line 922
    const-string v1, "1021"

    .line 923
    .line 924
    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    goto :goto_d

    .line 928
    :cond_2f
    :goto_c
    const-string v0, "START_INTENTS StageLaunchOptions has less intent"

    .line 929
    .line 930
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    :cond_30
    :goto_d
    return-void

    .line 934
    nop

    .line 935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
