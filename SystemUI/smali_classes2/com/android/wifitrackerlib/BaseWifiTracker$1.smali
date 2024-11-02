.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 25
    .line 26
    const-string/jumbo v0, "wifi_state"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 34
    .line 35
    sget-boolean p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 44
    .line 45
    iget-object p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 46
    .line 47
    iget p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 48
    .line 49
    if-ne p1, v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v2, v3

    .line 53
    :goto_0
    iget-boolean p1, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    .line 54
    .line 55
    iput-boolean v2, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    .line 56
    .line 57
    if-eq v2, p1, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->possiblyStartScanning()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->stopScanning()V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 69
    .line 70
    iget-object p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    .line 71
    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-direct {v0, p2, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleWifiStateChangedAction()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_b

    .line 91
    .line 92
    :cond_6
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_16

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 101
    .line 102
    iget-boolean v0, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    .line 103
    .line 104
    if-eqz v0, :cond_15

    .line 105
    .line 106
    iget-object v0, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v4}, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda0;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda1;

    .line 128
    .line 129
    invoke-direct {v4}, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda1;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Ljava/util/Collection;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v4, Ljava/util/HashSet;

    .line 150
    .line 151
    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    goto/16 :goto_a

    .line 161
    .line 162
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v5, Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_8

    .line 181
    .line 182
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Landroid/net/NetworkKey;

    .line 187
    .line 188
    iget-object v8, v7, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 189
    .line 190
    iget-object v8, v8, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    iget-object v7, v7, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 196
    .line 197
    iget-object v7, v7, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_9

    .line 208
    .line 209
    goto/16 :goto_a

    .line 210
    .line 211
    :cond_9
    iget-object v6, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 212
    .line 213
    invoke-virtual {v6, p1}, Lcom/samsung/android/wifi/SemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_15

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_a

    .line 224
    .line 225
    goto/16 :goto_a

    .line 226
    .line 227
    :cond_a
    iget-object v6, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    .line 228
    .line 229
    monitor-enter v6

    .line 230
    :try_start_0
    iget-object v7, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    .line 231
    .line 232
    check-cast v7, Ljava/util/HashMap;

    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 235
    .line 236
    .line 237
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    iput-boolean v3, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    .line 239
    .line 240
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_b

    .line 245
    .line 246
    move v6, v2

    .line 247
    goto :goto_3

    .line 248
    :cond_b
    const-string v6, "WifiTracker.WifiWifiQoSScoreCache"

    .line 249
    .line 250
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    :goto_3
    if-eqz v6, :cond_c

    .line 255
    .line 256
    const-string v6, "WifiTracker.WifiWifiQoSScoreCache"

    .line 257
    .line 258
    const-string v7, "------ Add scored data start -----"

    .line 259
    .line 260
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    :cond_d
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-eqz v7, :cond_12

    .line 276
    .line 277
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    check-cast v7, Ljava/util/Map$Entry;

    .line 282
    .line 283
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_d

    .line 298
    .line 299
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    check-cast v8, Ljava/util/Map;

    .line 304
    .line 305
    const-string v9, "networkType"

    .line 306
    .line 307
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    check-cast v9, Ljava/lang/Integer;

    .line 312
    .line 313
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    const-string v10, "levelMax-2"

    .line 318
    .line 319
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    check-cast v10, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    const-string v11, "levelMax-1"

    .line 330
    .line 331
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    check-cast v11, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    const-string v12, "levelMax"

    .line 342
    .line 343
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    check-cast v8, Ljava/lang/Integer;

    .line 348
    .line 349
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    filled-new-array {v10, v11, v8}, [I

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    new-instance v10, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;

    .line 358
    .line 359
    invoke-direct {v10, v7, v9, v8}, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;-><init>(Ljava/lang/String;I[I)V

    .line 360
    .line 361
    .line 362
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    if-nez v8, :cond_11

    .line 367
    .line 368
    iget v8, v10, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;->networkType:I

    .line 369
    .line 370
    if-ne v8, v1, :cond_e

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_e
    iget-object v8, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    .line 374
    .line 375
    monitor-enter v8

    .line 376
    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    .line 377
    .line 378
    check-cast v9, Ljava/util/HashMap;

    .line 379
    .line 380
    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    if-eqz v9, :cond_f

    .line 388
    .line 389
    move v9, v2

    .line 390
    goto :goto_5

    .line 391
    :cond_f
    const-string v9, "WifiTracker.WifiWifiQoSScoreCache"

    .line 392
    .line 393
    invoke-static {v9, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 394
    .line 395
    .line 396
    move-result v9

    .line 397
    :goto_5
    if-eqz v9, :cond_10

    .line 398
    .line 399
    iget-object v9, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    .line 400
    .line 401
    const-string v11, "WifiTracker.WifiWifiQoSScoreCache"

    .line 402
    .line 403
    invoke-virtual {v10}, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    iget-boolean v12, v9, Lcom/samsung/android/wifitrackerlib/LogUtils;->isProductDev:Z

    .line 408
    .line 409
    if-eqz v12, :cond_10

    .line 410
    .line 411
    invoke-virtual {v9, v10}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :catchall_0
    move-exception p0

    .line 420
    goto :goto_7

    .line 421
    :cond_10
    :goto_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    iput-boolean v2, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :goto_7
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    throw p0

    .line 427
    :cond_11
    :goto_8
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    add-int/lit8 v3, v3, 0x1

    .line 435
    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :cond_12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-eqz p1, :cond_13

    .line 443
    .line 444
    goto :goto_9

    .line 445
    :cond_13
    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    .line 446
    .line 447
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    :goto_9
    if-eqz v2, :cond_14

    .line 452
    .line 453
    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    .line 454
    .line 455
    const-string v1, "------ Add scored data end -----"

    .line 456
    .line 457
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_14
    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    .line 461
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v2, " key set are removed"

    .line 471
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    iget-object p1, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mListener:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

    .line 483
    .line 484
    if-eqz p1, :cond_15

    .line 485
    .line 486
    iget-boolean v0, v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    .line 487
    .line 488
    if-eqz v0, :cond_15

    .line 489
    .line 490
    new-instance v0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;

    .line 491
    .line 492
    invoke-direct {v0, p1}, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;-><init>(Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->mHandler:Landroid/os/Handler;

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    .line 499
    .line 500
    goto :goto_a

    .line 501
    :catchall_1
    move-exception p0

    .line 502
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    throw p0

    .line 504
    :cond_15
    :goto_a
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 505
    .line 506
    invoke-virtual {p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleScanResultsAvailableAction(Landroid/content/Intent;)V

    .line 507
    .line 508
    .line 509
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 510
    .line 511
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->semNotifyScanStateChanged()V

    .line 512
    .line 513
    .line 514
    goto :goto_b

    .line 515
    :cond_16
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 516
    .line 517
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-eqz v0, :cond_17

    .line 522
    .line 523
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 524
    .line 525
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V

    .line 526
    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_17
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 530
    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_18

    .line 536
    .line 537
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 538
    .line 539
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkStateChangedAction(Landroid/content/Intent;)V

    .line 540
    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_18
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 544
    .line 545
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result p1

    .line 549
    if-eqz p1, :cond_19

    .line 550
    .line 551
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 552
    .line 553
    const-string/jumbo p1, "subscription"

    .line 554
    .line 555
    .line 556
    const/4 v0, -0x1

    .line 557
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleDefaultSubscriptionChanged(I)V

    .line 562
    .line 563
    .line 564
    :cond_19
    :goto_b
    return-void
.end method
