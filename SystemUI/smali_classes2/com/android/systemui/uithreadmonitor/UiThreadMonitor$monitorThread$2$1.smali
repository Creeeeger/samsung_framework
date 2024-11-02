.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 4
    .line 5
    const-string v2, "\n"

    .line 6
    .line 7
    const-string v3, "   "

    .line 8
    .line 9
    const-string v4, " ms) ***\n"

    .line 10
    .line 11
    const-string v5, "("

    .line 12
    .line 13
    const-string v6, ","

    .line 14
    .line 15
    const-string v7, "*** Traced call stack: count="

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 19
    .line 20
    const/16 v8, 0x13

    .line 21
    .line 22
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    const-string v8, "debug.sysui.looper.msg_log"

    .line 26
    .line 27
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    iget-object v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    iget-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    .line 37
    .line 38
    if-nez v8, :cond_1

    .line 39
    .line 40
    sget-object v8, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$updateLooperMsgLog$1;->INSTANCE:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$updateLooperMsgLog$1;

    .line 41
    .line 42
    invoke-virtual {v9, v8}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    .line 49
    .line 50
    if-eqz v8, :cond_1

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-virtual {v9, v8}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    .line 57
    .line 58
    :cond_1
    :goto_1
    const-string v8, "debug.sysui.looper.slow_log"

    .line 59
    .line 60
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-wide/16 v11, -0x1

    .line 65
    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    iget-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    const-string v0, "debug.sysui.looper.slow_dispatch"

    .line 73
    .line 74
    const-wide/16 v8, 0x1e

    .line 75
    .line 76
    invoke-static {v0, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v13

    .line 80
    const-string v0, "debug.sysui.looper.slow_delivery"

    .line 81
    .line 82
    invoke-static {v0, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    iput-boolean v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    .line 87
    .line 88
    move-wide v14, v13

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    iget-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    .line 91
    .line 92
    if-eqz v8, :cond_3

    .line 93
    .line 94
    iput-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    .line 95
    .line 96
    const-wide/16 v8, 0x0

    .line 97
    .line 98
    move-wide v13, v8

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move-wide v13, v11

    .line 101
    :goto_2
    move-wide v8, v13

    .line 102
    move-wide v14, v8

    .line 103
    :goto_3
    cmp-long v0, v14, v11

    .line 104
    .line 105
    const-string v10, "UiThreadMonitor"

    .line 106
    .line 107
    if-lez v0, :cond_4

    .line 108
    .line 109
    cmp-long v0, v8, v11

    .line 110
    .line 111
    if-lez v0, :cond_4

    .line 112
    .line 113
    const-string/jumbo v0, "updateShowLooperSlowLog dispatch="

    .line 114
    .line 115
    .line 116
    const-string v11, " ms, delivery="

    .line 117
    .line 118
    invoke-static {v0, v14, v15, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v8, " ms"

    .line 126
    .line 127
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    iget-object v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 139
    .line 140
    move-object v13, v8

    .line 141
    check-cast v13, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 142
    .line 143
    const-wide/16 v19, 0x0

    .line 144
    .line 145
    const/16 v21, 0x0

    .line 146
    .line 147
    const/16 v22, 0x0

    .line 148
    .line 149
    move-wide v8, v14

    .line 150
    move v14, v0

    .line 151
    move-wide v15, v8

    .line 152
    move-wide/from16 v17, v8

    .line 153
    .line 154
    invoke-virtual/range {v13 .. v22}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 155
    .line 156
    .line 157
    :cond_4
    iget-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 158
    .line 159
    if-eqz v8, :cond_5

    .line 160
    .line 161
    const-wide/32 v11, 0x5265c00

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    const-wide/16 v11, 0x1770

    .line 166
    .line 167
    :goto_4
    const-string/jumbo v0, "run isPaused="

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v8}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-boolean v9, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    .line 175
    .line 176
    if-eqz v9, :cond_6

    .line 177
    .line 178
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    .line 182
    .line 183
    iget-object v13, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    .line 184
    .line 185
    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    .line 187
    .line 188
    if-nez v8, :cond_7

    .line 189
    .line 190
    iget-object v13, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    .line 191
    .line 192
    const-wide/16 v14, 0xbb8

    .line 193
    .line 194
    invoke-virtual {v0, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .line 196
    .line 197
    :cond_7
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string/jumbo v13, "wait "

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v9, :cond_8

    .line 216
    .line 217
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :cond_8
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 221
    .line 222
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 223
    .line 224
    invoke-virtual {v0, v11, v12, v9}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .line 230
    if-nez v8, :cond_a

    .line 231
    .line 232
    if-nez v0, :cond_a

    .line 233
    .line 234
    iget v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 235
    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 237
    .line 238
    iput v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 239
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 241
    .line 242
    .line 243
    move-result-wide v8

    .line 244
    iput-wide v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 245
    .line 246
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    .line 247
    .line 248
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Ljava/lang/Thread;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 264
    .line 265
    iget-wide v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 266
    .line 267
    invoke-static {v11, v12}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    iget-wide v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 272
    .line 273
    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 274
    .line 275
    sub-long/2addr v12, v14

    .line 276
    invoke-static {v7, v9, v6, v11, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    array-length v9, v0

    .line 294
    const/4 v11, 0x0

    .line 295
    :goto_5
    if-ge v11, v9, :cond_9

    .line 296
    .line 297
    aget-object v12, v0, v11

    .line 298
    .line 299
    new-instance v13, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    add-int/lit8 v11, v11, 0x1

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    new-instance v9, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string/jumbo v11, "run exception: "

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    .line 345
    .line 346
    if-nez v8, :cond_a

    .line 347
    .line 348
    iget v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 349
    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 351
    .line 352
    iput v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 353
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 355
    .line 356
    .line 357
    move-result-wide v8

    .line 358
    iput-wide v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 359
    .line 360
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    .line 361
    .line 362
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Ljava/lang/Thread;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    new-instance v8, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    iget v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 378
    .line 379
    iget-wide v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 380
    .line 381
    invoke-static {v11, v12}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    iget-wide v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 386
    .line 387
    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 388
    .line 389
    sub-long/2addr v12, v14

    .line 390
    invoke-static {v7, v9, v6, v11, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    array-length v9, v0

    .line 408
    const/4 v11, 0x0

    .line 409
    :goto_6
    if-ge v11, v9, :cond_9

    .line 410
    .line 411
    aget-object v12, v0, v11

    .line 412
    .line 413
    new-instance v13, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v12

    .line 428
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    add-int/lit8 v11, v11, 0x1

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    iput-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    .line 442
    .line 443
    :cond_a
    const-string v0, "debug.sysui.anr_detector.disabled"

    .line 444
    .line 445
    const/4 v8, 0x0

    .line 446
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_b

    .line 451
    .line 452
    const-string v9, "disabled"

    .line 453
    .line 454
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    :cond_b
    if-eqz v0, :cond_c

    .line 458
    .line 459
    const/4 v0, 0x1

    .line 460
    iput-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 461
    .line 462
    return-void

    .line 463
    :cond_c
    move v0, v8

    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :catchall_1
    move-exception v0

    .line 467
    if-nez v8, :cond_e

    .line 468
    .line 469
    iget v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 470
    .line 471
    add-int/lit8 v8, v8, 0x1

    .line 472
    .line 473
    iput v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 474
    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 476
    .line 477
    .line 478
    move-result-wide v8

    .line 479
    iput-wide v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 480
    .line 481
    iget-object v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    .line 482
    .line 483
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    check-cast v8, Ljava/lang/Thread;

    .line 488
    .line 489
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    new-instance v9, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .line 497
    .line 498
    iget v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 499
    .line 500
    iget-wide v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 501
    .line 502
    invoke-static {v12, v13}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v12

    .line 506
    iget-wide v13, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 507
    .line 508
    move-object/from16 p0, v2

    .line 509
    .line 510
    move-object v15, v3

    .line 511
    iget-wide v2, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 512
    .line 513
    sub-long/2addr v13, v2

    .line 514
    invoke-static {v7, v11, v6, v12, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    array-length v2, v8

    .line 532
    const/4 v3, 0x0

    .line 533
    :goto_7
    if-ge v3, v2, :cond_d

    .line 534
    .line 535
    aget-object v4, v8, v3

    .line 536
    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    move-object v6, v15

    .line 540
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    move-object/from16 v4, p0

    .line 547
    .line 548
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    add-int/lit8 v3, v3, 0x1

    .line 559
    .line 560
    goto :goto_7

    .line 561
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    iput-object v2, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    .line 569
    .line 570
    :cond_e
    throw v0
.end method
