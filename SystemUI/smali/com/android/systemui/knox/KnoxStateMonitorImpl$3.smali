.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

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
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "KnoxStateMonitorImpl"

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    const-string p0, "ignore message"

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto/16 :goto_16

    .line 15
    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string p1, "handleDisableProfileWhenReachMaxFailed"

    .line 22
    .line 23
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge v1, v0, :cond_12

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDisableProfileWhenReachMaxFailed()V

    .line 49
    .line 50
    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string p1, "handleUpdateQuickPanelUnavailableButtons"

    .line 60
    .line 61
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ge v1, v0, :cond_12

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelUnavailableButtons()V

    .line 87
    .line 88
    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 93
    .line 94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const-string v0, "handleSetHardKeyIntentState"

    .line 106
    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ge v1, v2, :cond_12

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 129
    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onSetHardKeyIntentState(Z)V

    .line 133
    .line 134
    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const-string p1, "handleUpdateAdminLock"

    .line 144
    .line 145
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-ge v1, v0, :cond_12

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 167
    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateAdminLock()V

    .line 171
    .line 172
    .line 173
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const-string p1, "handleMDMWallpaperChanged"

    .line 182
    .line 183
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ge v1, v0, :cond_12

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 205
    .line 206
    if-eqz p1, :cond_4

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onMDMWallpaperChanged()V

    .line 209
    .line 210
    .line 211
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    const-string p1, "handleEnableMDMWallpaper"

    .line 220
    .line 221
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-ge v1, v0, :cond_12

    .line 231
    .line 232
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 243
    .line 244
    if-eqz p1, :cond_5

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    .line 247
    .line 248
    .line 249
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const-string p1, "handleUpdateQuickPanelButtonUsers"

    .line 258
    .line 259
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-ge v1, v0, :cond_12

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 281
    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    const-string p1, "handleDisableDeviceWhenReachMaxFailed"

    .line 291
    .line 292
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-ge v1, v0, :cond_12

    .line 302
    .line 303
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 314
    .line 315
    if-eqz p1, :cond_6

    .line 316
    .line 317
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    .line 318
    .line 319
    .line 320
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string p1, "handleUpdateNavigationBarHidden"

    .line 329
    .line 330
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-ge v1, v0, :cond_12

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 352
    .line 353
    if-eqz p1, :cond_7

    .line 354
    .line 355
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    .line 356
    .line 357
    .line 358
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 362
    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v0, "handleUpdateStatusBarHidden() - mCallbacks.size is "

    .line 366
    .line 367
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    if-ge v1, p1, :cond_12

    .line 391
    .line 392
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 403
    .line 404
    if-eqz p1, :cond_8

    .line 405
    .line 406
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    .line 407
    .line 408
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v3, "         -"

    .line 412
    .line 413
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v3, "="

    .line 420
    .line 421
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 435
    .line 436
    goto :goto_9

    .line 437
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 438
    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    const-string p1, "handleUpdateStatusBarBatteryColour"

    .line 443
    .line 444
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    :goto_a
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-ge v1, v0, :cond_12

    .line 454
    .line 455
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 460
    .line 461
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 466
    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 471
    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    const-string p1, "handleUpdateStatusBarIcons"

    .line 476
    .line 477
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    :goto_b
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-ge v1, v0, :cond_12

    .line 487
    .line 488
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 493
    .line 494
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 499
    .line 500
    if-eqz p1, :cond_9

    .line 501
    .line 502
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    .line 503
    .line 504
    .line 505
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 506
    .line 507
    goto :goto_b

    .line 508
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 509
    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    const-string p1, "handleUpdateStatusBarText"

    .line 514
    .line 515
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    :goto_c
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-ge v1, v0, :cond_12

    .line 525
    .line 526
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 531
    .line 532
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 537
    .line 538
    if-eqz p1, :cond_a

    .line 539
    .line 540
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    .line 541
    .line 542
    .line 543
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 544
    .line 545
    goto :goto_c

    .line 546
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 547
    .line 548
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    const-string p1, "handleUpdateQuickPanelItems"

    .line 552
    .line 553
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    :goto_d
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-ge v1, v0, :cond_12

    .line 563
    .line 564
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 569
    .line 570
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 575
    .line 576
    if-eqz p1, :cond_b

    .line 577
    .line 578
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    .line 579
    .line 580
    .line 581
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 582
    .line 583
    goto :goto_d

    .line 584
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 585
    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    const-string p1, "handleUpdateQuickPanelEdit"

    .line 590
    .line 591
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    :goto_e
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-ge v1, v0, :cond_12

    .line 601
    .line 602
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 607
    .line 608
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 613
    .line 614
    if-eqz p1, :cond_c

    .line 615
    .line 616
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelEdit()V

    .line 617
    .line 618
    .line 619
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 620
    .line 621
    goto :goto_e

    .line 622
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 623
    .line 624
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    const-string p1, "handleUpdateQuickPanelButtons"

    .line 628
    .line 629
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    :goto_f
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-ge v1, v0, :cond_12

    .line 639
    .line 640
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 645
    .line 646
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 651
    .line 652
    if-eqz p1, :cond_d

    .line 653
    .line 654
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    .line 655
    .line 656
    .line 657
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 661
    .line 662
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    const-string p1, "handleUpdateLockTypeOverride"

    .line 666
    .line 667
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    :goto_10
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-ge v1, v0, :cond_12

    .line 677
    .line 678
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 683
    .line 684
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 689
    .line 690
    add-int/lit8 v1, v1, 0x1

    .line 691
    .line 692
    goto :goto_10

    .line 693
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 694
    .line 695
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    const-string p1, "handleUpdateLockscreenHiddenItems"

    .line 699
    .line 700
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    :goto_11
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    if-ge v1, v0, :cond_12

    .line 710
    .line 711
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object p1

    .line 715
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 716
    .line 717
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object p1

    .line 721
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 722
    .line 723
    if-eqz p1, :cond_e

    .line 724
    .line 725
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    .line 726
    .line 727
    .line 728
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 729
    .line 730
    goto :goto_11

    .line 731
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 732
    .line 733
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    const-string p1, "handleEnableUCMLock"

    .line 737
    .line 738
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .line 740
    .line 741
    :goto_12
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-ge v1, v0, :cond_12

    .line 748
    .line 749
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 754
    .line 755
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 760
    .line 761
    if-eqz p1, :cond_f

    .line 762
    .line 763
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onEnableUCMLock()V

    .line 764
    .line 765
    .line 766
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 767
    .line 768
    goto :goto_12

    .line 769
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 770
    .line 771
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    const-string p1, "handleDPMPasswordChanged"

    .line 775
    .line 776
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .line 778
    .line 779
    :goto_13
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 780
    .line 781
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-ge v1, v0, :cond_12

    .line 786
    .line 787
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 792
    .line 793
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 798
    .line 799
    if-eqz p1, :cond_10

    .line 800
    .line 801
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    .line 802
    .line 803
    .line 804
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 805
    .line 806
    goto :goto_13

    .line 807
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 808
    .line 809
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast p1, Ljava/lang/Integer;

    .line 812
    .line 813
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 814
    .line 815
    .line 816
    move-result p1

    .line 817
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    .line 821
    .line 822
    const-string v3, "handleDoKeyguard "

    .line 823
    .line 824
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .line 836
    .line 837
    :goto_14
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-ge v1, v2, :cond_12

    .line 844
    .line 845
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 856
    .line 857
    if-eqz v0, :cond_11

    .line 858
    .line 859
    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    .line 860
    .line 861
    .line 862
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 863
    .line 864
    goto :goto_14

    .line 865
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 866
    .line 867
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast p1, Ljava/lang/Boolean;

    .line 870
    .line 871
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 872
    .line 873
    .line 874
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    const-string p1, "handleUpdateKnoxKeyguardState"

    .line 878
    .line 879
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .line 881
    .line 882
    :goto_15
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 883
    .line 884
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    if-ge v1, v0, :cond_12

    .line 889
    .line 890
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object p1

    .line 894
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 895
    .line 896
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 901
    .line 902
    add-int/lit8 v1, v1, 0x1

    .line 903
    .line 904
    goto :goto_15

    .line 905
    :cond_12
    :goto_16
    return-void

    .line 906
    nop

    .line 907
    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
