.class public final Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final opCode:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    iget p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    move v0, p1

    .line 13
    :goto_0
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ge v0, v2, :cond_8

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 18
    .line 19
    sget-object v4, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    const-string v4, "KeyguardUCMPinView"

    .line 23
    .line 24
    const-string v5, "getAgentInfoAndUpdateStatus called"

    .line 25
    .line 26
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-wide/16 v5, 0x3e8

    .line 34
    .line 35
    const/4 v7, -0x1

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    const-string v2, "KeyguardUCMPinView"

    .line 39
    .line 40
    const-string v4, "failed to get UCM service"

    .line 41
    .line 42
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit v3

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-interface {v4, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    if-nez v9, :cond_2

    .line 57
    .line 58
    const-string v2, "KeyguardUCMPinView"

    .line 59
    .line 60
    const-string v4, "failed to get getStatus"

    .line 61
    .line 62
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit v3

    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_2
    :try_start_2
    const-string v10, "errorresponse"

    .line 69
    .line 70
    invoke-virtual {v9, v10, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const/16 v11, 0xe

    .line 75
    .line 76
    if-ne v10, v11, :cond_5

    .line 77
    .line 78
    const-string v10, "KeyguardUCMPinView"

    .line 79
    .line 80
    const-string v12, "Boot init condition"

    .line 81
    .line 82
    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-interface {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    .line 86
    .line 87
    .line 88
    move v10, p1

    .line 89
    :goto_1
    if-ge v10, v2, :cond_5

    .line 90
    .line 91
    invoke-interface {v4, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    if-eqz v9, :cond_4

    .line 96
    .line 97
    const-string v12, "errorresponse"

    .line 98
    .line 99
    invoke-virtual {v9, v12, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-eq v12, v11, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const-string v12, "KeyguardUCMPinView"

    .line 107
    .line 108
    const-string v13, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    .line 109
    .line 110
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception v2

    .line 120
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const-string v2, "KeyguardUCMPinView"

    .line 125
    .line 126
    const-string v4, "failed to get getStatus"

    .line 127
    .line 128
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    .line 130
    .line 131
    monitor-exit v3

    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_5
    :goto_2
    :try_start_5
    const-string/jumbo v2, "state"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 142
    .line 143
    const-string v2, "lockscreen_message"

    .line 144
    .line 145
    const-string v4, ""

    .line 146
    .line 147
    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    .line 152
    .line 153
    const-string/jumbo v2, "miscInfo"

    .line 154
    .line 155
    .line 156
    const-string v4, ""

    .line 157
    .line 158
    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    .line 163
    .line 164
    const-string/jumbo v2, "minPinLength"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    .line 172
    .line 173
    const-string/jumbo v2, "maxPinLength"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    .line 181
    .line 182
    const-string/jumbo v2, "minPukLength"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    .line 190
    .line 191
    const-string/jumbo v2, "maxPukLength"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    .line 199
    .line 200
    const-string/jumbo v2, "remainCnt"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 208
    .line 209
    const-string v2, "errorresponse"

    .line 210
    .line 211
    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    .line 216
    .line 217
    const-string v2, "KeyguardUCMPinView"

    .line 218
    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string/jumbo v8, "status "

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 231
    .line 232
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    const-string v2, "KeyguardUCMPinView"

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v8, "pin puk "

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    .line 256
    .line 257
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v8, " "

    .line 261
    .line 262
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    .line 266
    .line 267
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v8, " "

    .line 271
    .line 272
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    .line 276
    .line 277
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v8, " "

    .line 281
    .line 282
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    .line 286
    .line 287
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    const-string v2, "KeyguardUCMPinView"

    .line 298
    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v8, "misc : "

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    const-string v2, "KeyguardUCMPinView"

    .line 323
    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string/jumbo v8, "pin remain : "

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 336
    .line 337
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    const-string v2, "KeyguardUCMPinView"

    .line 348
    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const-string v8, "error : "

    .line 355
    .line 356
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    .line 360
    .line 361
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :catch_1
    move-exception v2

    .line 373
    :try_start_6
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 374
    .line 375
    .line 376
    :goto_3
    monitor-exit v3

    .line 377
    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 378
    .line 379
    iget v3, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 380
    .line 381
    if-eq v3, v7, :cond_6

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_6
    iget v2, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    .line 385
    .line 386
    if-eqz v2, :cond_7

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_7
    :try_start_7
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :catch_2
    move-exception v2

    .line 394
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 395
    .line 396
    .line 397
    :goto_5
    const-string v2, "KeyguardUCMPinView"

    .line 398
    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string v4, "GetStatus thread result : "

    .line 402
    .line 403
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 407
    .line 408
    iget v4, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 409
    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    add-int/lit8 v0, v0, 0x1

    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :catchall_0
    move-exception p0

    .line 425
    monitor-exit v3

    .line 426
    throw p0

    .line 427
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 428
    .line 429
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    if-eqz p1, :cond_9

    .line 434
    .line 435
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 436
    .line 437
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 442
    .line 443
    .line 444
    :cond_9
    sget-object p1, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter p1

    .line 447
    :try_start_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 448
    .line 449
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    .line 450
    .line 451
    monitor-exit p1

    .line 452
    :goto_7
    return-object v1

    .line 453
    :catchall_1
    move-exception p0

    .line 454
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 455
    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 8
    .line 9
    iget p1, p1, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 28
    .line 29
    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v1, p0, :cond_0

    .line 7
    .line 8
    move p0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    sget-object v2, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 18
    .line 19
    .line 20
    iget-object p0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 21
    .line 22
    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
