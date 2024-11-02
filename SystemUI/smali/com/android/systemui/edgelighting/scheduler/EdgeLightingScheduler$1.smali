.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/high16 v1, -0x1000000

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    const v3, 0x7f0a0331

    .line 11
    .line 12
    .line 13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const/4 v8, 0x6

    .line 19
    const/4 v9, 0x4

    .line 20
    const/4 v10, 0x1

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    if-eqz v0, :cond_14

    .line 24
    .line 25
    if-eq v0, v10, :cond_0

    .line 26
    .line 27
    goto/16 :goto_25

    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 39
    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 54
    .line 55
    const-string v2, "NotificationLightingScheduler"

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo p1, "removeLighting: invalid param "

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto/16 :goto_25

    .line 78
    .line 79
    :cond_1
    if-eq p1, v9, :cond_2

    .line 80
    .line 81
    if-eq p1, v8, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    const-string/jumbo v4, "releaseWakeLockPackage : "

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v5, "DeviceWakeLockManager"

    .line 105
    .line 106
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iget-object v3, v3, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    .line 115
    .line 116
    if-ne p1, v9, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3, v12}, Landroid/os/Handler;->hasMessages(I)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo v0, "removeLighting: return by reason"

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto/16 :goto_25

    .line 143
    .line 144
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 145
    .line 146
    if-eqz v4, :cond_5

    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    :cond_5
    const-string/jumbo v4, "removeLighting: "

    .line 153
    .line 154
    .line 155
    const-string v5, " reason="

    .line 156
    .line 157
    const-string v8, " cur="

    .line 158
    .line 159
    invoke-static {v4, v0, v5, p1, v8}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 180
    .line 181
    iput v10, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 182
    .line 183
    const/16 p1, 0xfa0

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v12, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    .line 197
    .line 198
    goto/16 :goto_25

    .line 199
    .line 200
    :cond_6
    invoke-virtual {v3, v12, v1}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_63

    .line 205
    .line 206
    invoke-virtual {v3, v12, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v12, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .line 215
    .line 216
    goto/16 :goto_25

    .line 217
    .line 218
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 219
    .line 220
    if-eqz p0, :cond_63

    .line 221
    .line 222
    iget-object p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 223
    .line 224
    if-nez p1, :cond_8

    .line 225
    .line 226
    const-string v0, "ApplicationLightingScheduler"

    .line 227
    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string/jumbo v9, "removeLighting: invalid param "

    .line 231
    .line 232
    .line 233
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 247
    .line 248
    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 250
    .line 251
    invoke-virtual {v8, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 255
    .line 256
    if-nez p1, :cond_9

    .line 257
    .line 258
    const-string p0, "ApplicationLightingScheduler"

    .line 259
    .line 260
    const-string/jumbo p1, "removeLighting: no listener"

    .line 261
    .line 262
    .line 263
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    monitor-exit v0

    .line 267
    goto/16 :goto_25

    .line 268
    .line 269
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_11

    .line 284
    .line 285
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Ljava/util/Map$Entry;

    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 306
    .line 307
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 314
    .line 315
    invoke-virtual {p0, v12}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    iget-object p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 326
    .line 327
    if-eqz p0, :cond_13

    .line 328
    .line 329
    iput-boolean v12, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    .line 332
    .line 333
    .line 334
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 335
    .line 336
    if-nez v8, :cond_a

    .line 337
    .line 338
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 343
    .line 344
    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 345
    .line 346
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 347
    .line 348
    if-eqz v3, :cond_c

    .line 349
    .line 350
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 351
    .line 352
    if-eqz v8, :cond_b

    .line 353
    .line 354
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 355
    .line 356
    .line 357
    iput-object v11, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 358
    .line 359
    :cond_b
    new-instance v3, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 360
    .line 361
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-direct {v3, v8}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 369
    .line 370
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 371
    .line 372
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 376
    .line 377
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 378
    .line 379
    iput-object v8, v3, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 380
    .line 381
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    .line 386
    .line 387
    .line 388
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 389
    .line 390
    if-eqz p1, :cond_d

    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    array-length v3, p1

    .line 396
    if-lez v3, :cond_d

    .line 397
    .line 398
    aget v3, p1, v12

    .line 399
    .line 400
    or-int/2addr v1, v3

    .line 401
    aget p1, p1, v10

    .line 402
    .line 403
    if-eqz p1, :cond_e

    .line 404
    .line 405
    iget-object v3, v2, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 406
    .line 407
    iput p1, v3, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    .line 408
    .line 409
    goto :goto_1

    .line 410
    :cond_d
    const v1, -0xf0551d

    .line 411
    .line 412
    .line 413
    :cond_e
    :goto_1
    iget-object p1, v2, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 414
    .line 415
    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setMainColor(I)V

    .line 416
    .line 417
    .line 418
    iget-object p1, v2, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 419
    .line 420
    iput-boolean v12, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 421
    .line 422
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 423
    .line 424
    invoke-virtual {p0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    .line 428
    .line 429
    .line 430
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 431
    .line 432
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 433
    .line 434
    if-eqz p1, :cond_f

    .line 435
    .line 436
    goto/16 :goto_2

    .line 437
    .line 438
    :cond_f
    iput-boolean v10, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setImageDrawable()V

    .line 441
    .line 442
    .line 443
    iget-wide v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 444
    .line 445
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 446
    .line 447
    .line 448
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 449
    .line 450
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 451
    .line 452
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    .line 453
    .line 454
    const-wide/16 v4, 0x3

    .line 455
    .line 456
    mul-long/2addr v2, v4

    .line 457
    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 458
    .line 459
    .line 460
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    .line 461
    .line 462
    if-eqz p1, :cond_13

    .line 463
    .line 464
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 465
    .line 466
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 467
    .line 468
    if-eqz v2, :cond_10

    .line 469
    .line 470
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 471
    .line 472
    .line 473
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    .line 474
    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string/jumbo v4, "repeat Color Animation from : "

    .line 478
    .line 479
    .line 480
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v4, " toColor "

    .line 487
    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    filled-new-array {v1, p1}, [I

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 510
    .line 511
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;

    .line 512
    .line 513
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 517
    .line 518
    .line 519
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 520
    .line 521
    const/4 v1, 0x2

    .line 522
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 523
    .line 524
    .line 525
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 526
    .line 527
    const/4 v1, -0x1

    .line 528
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 529
    .line 530
    .line 531
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 532
    .line 533
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 534
    .line 535
    .line 536
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 537
    .line 538
    const-wide/16 v1, 0x2710

    .line 539
    .line 540
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 541
    .line 542
    .line 543
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 544
    .line 545
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 546
    .line 547
    .line 548
    goto :goto_2

    .line 549
    :cond_11
    iput-object v11, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 550
    .line 551
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 552
    .line 553
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 554
    .line 555
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 556
    .line 557
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_13

    .line 562
    .line 563
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 564
    .line 565
    invoke-virtual {p0, v12}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 570
    .line 571
    if-eqz p1, :cond_12

    .line 572
    .line 573
    const-string p0, "EdgeLightingDialog"

    .line 574
    .line 575
    const-string/jumbo v1, "stopApplication"

    .line 576
    .line 577
    .line 578
    invoke-static {p0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 582
    .line 583
    if-eqz p0, :cond_13

    .line 584
    .line 585
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 586
    .line 587
    .line 588
    move-result p0

    .line 589
    if-eqz p0, :cond_13

    .line 590
    .line 591
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 592
    .line 593
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    .line 594
    .line 595
    .line 596
    goto :goto_2

    .line 597
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 598
    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    .line 600
    .line 601
    .line 602
    :cond_13
    :goto_2
    monitor-exit v0

    .line 603
    goto/16 :goto_25

    .line 604
    .line 605
    :catchall_0
    move-exception p0

    .line 606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    throw p0

    .line 608
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 609
    .line 610
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 613
    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    iget v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 618
    .line 619
    if-eqz v0, :cond_59

    .line 620
    .line 621
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    const/4 v1, -0x1

    .line 626
    if-eq v0, v1, :cond_15

    .line 627
    .line 628
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-eqz v0, :cond_15

    .line 635
    .line 636
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 637
    .line 638
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 639
    .line 640
    const-string v1, "accessibility"

    .line 641
    .line 642
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 647
    .line 648
    if-eqz v0, :cond_15

    .line 649
    .line 650
    iget v1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    .line 651
    .line 652
    invoke-virtual {v0, v1, v9}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    if-eqz v0, :cond_15

    .line 657
    .line 658
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    .line 659
    .line 660
    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    const-string/jumbo v2, "updateTimeToTakeAction time="

    .line 664
    .line 665
    .line 666
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    const-string v1, "LightingScheduleInfo"

    .line 677
    .line 678
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 682
    .line 683
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 684
    .line 685
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 690
    .line 691
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 692
    .line 693
    iget-object v2, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 694
    .line 695
    iget-object v3, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 696
    .line 697
    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    if-eqz v3, :cond_16

    .line 702
    .line 703
    goto :goto_3

    .line 704
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 705
    .line 706
    .line 707
    move-result-object p0

    .line 708
    invoke-static {p0, v12}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 713
    .line 714
    const/16 v3, 0xb

    .line 715
    .line 716
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object p0

    .line 720
    check-cast p0, Ljava/util/HashMap;

    .line 721
    .line 722
    if-eqz p0, :cond_17

    .line 723
    .line 724
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result p0

    .line 728
    if-eqz p0, :cond_17

    .line 729
    .line 730
    new-instance p0, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    const-string v3, "don\'t need keep notificaton ("

    .line 733
    .line 734
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    const-string v2, ")"

    .line 741
    .line 742
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object p0

    .line 749
    const-string v2, "EdgeLightingScheduler"

    .line 750
    .line 751
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    move p0, v12

    .line 755
    goto :goto_4

    .line 756
    :cond_17
    :goto_3
    move p0, v10

    .line 757
    :goto_4
    const-string v2, "NotificationLightingScheduler"

    .line 758
    .line 759
    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 760
    .line 761
    if-eqz v3, :cond_18

    .line 762
    .line 763
    iget-object v3, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 764
    .line 765
    goto :goto_5

    .line 766
    :cond_18
    move-object v3, v11

    .line 767
    :goto_5
    iget-object v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 768
    .line 769
    if-eqz p0, :cond_19

    .line 770
    .line 771
    move v5, v10

    .line 772
    goto :goto_7

    .line 773
    :cond_19
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    .line 774
    .line 775
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    const-string v7, " getOldLightingInfo "

    .line 781
    .line 782
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v6

    .line 792
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    iget-object v5, v5, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mNotificationMap:Ljava/util/HashMap;

    .line 796
    .line 797
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v6

    .line 801
    if-eqz v6, :cond_1a

    .line 802
    .line 803
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    check-cast v5, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;

    .line 808
    .line 809
    iget-object v5, v5, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;->mEdgeLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 810
    .line 811
    goto :goto_6

    .line 812
    :cond_1a
    move-object v5, v11

    .line 813
    :goto_6
    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    :goto_7
    const-string/jumbo v6, "putLighting: "

    .line 818
    .line 819
    .line 820
    const-string v7, " reason="

    .line 821
    .line 822
    invoke-static {v6, v4, v7}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    move-result-object v6

    .line 826
    iget v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 827
    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    const-string v7, " cur="

    .line 832
    .line 833
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    const-string v3, ", isNeedKeepPackage="

    .line 840
    .line 841
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    const-string p0, ", isNeedKeepNoti="

    .line 848
    .line 849
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p0

    .line 859
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .line 861
    .line 862
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    .line 863
    .line 864
    if-nez p0, :cond_1b

    .line 865
    .line 866
    const-string/jumbo p0, "putLighting: no listener"

    .line 867
    .line 868
    .line 869
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    goto/16 :goto_25

    .line 873
    .line 874
    :cond_1b
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 875
    .line 876
    if-eqz p0, :cond_1c

    .line 877
    .line 878
    move p0, v10

    .line 879
    goto :goto_8

    .line 880
    :cond_1c
    move p0, v12

    .line 881
    :goto_8
    iget-object v3, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 882
    .line 883
    if-eqz p0, :cond_2b

    .line 884
    .line 885
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    .line 886
    .line 887
    if-nez p0, :cond_1d

    .line 888
    .line 889
    new-instance p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    .line 890
    .line 891
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    .line 892
    .line 893
    .line 894
    :cond_1d
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 895
    .line 896
    if-eqz p0, :cond_2b

    .line 897
    .line 898
    if-nez v1, :cond_2b

    .line 899
    .line 900
    new-instance p0, Ljava/lang/StringBuilder;

    .line 901
    .line 902
    const-string/jumbo v1, "putLighting: mCurrentLightingScheduleInfo= "

    .line 903
    .line 904
    .line 905
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 909
    .line 910
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 911
    .line 912
    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    const-string v1, ",new="

    .line 920
    .line 921
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object p0

    .line 935
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .line 937
    .line 938
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 939
    .line 940
    if-eqz p0, :cond_1f

    .line 941
    .line 942
    if-eqz v3, :cond_1f

    .line 943
    .line 944
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 945
    .line 946
    if-nez v1, :cond_1e

    .line 947
    .line 948
    goto :goto_9

    .line 949
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 950
    .line 951
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 952
    .line 953
    .line 954
    move-result v1

    .line 955
    goto :goto_a

    .line 956
    :cond_1f
    :goto_9
    move v1, v12

    .line 957
    :goto_a
    if-nez v1, :cond_20

    .line 958
    .line 959
    goto :goto_b

    .line 960
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    :goto_b
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 964
    .line 965
    if-eqz p0, :cond_29

    .line 966
    .line 967
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 968
    .line 969
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 970
    .line 971
    .line 972
    move-result p0

    .line 973
    if-nez p0, :cond_21

    .line 974
    .line 975
    goto :goto_d

    .line 976
    :cond_21
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 977
    .line 978
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 979
    .line 980
    .line 981
    move-result p0

    .line 982
    if-nez p0, :cond_22

    .line 983
    .line 984
    goto :goto_d

    .line 985
    :cond_22
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 986
    .line 987
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 988
    .line 989
    if-nez p0, :cond_23

    .line 990
    .line 991
    if-nez v3, :cond_23

    .line 992
    .line 993
    goto :goto_c

    .line 994
    :cond_23
    if-eqz p0, :cond_29

    .line 995
    .line 996
    if-nez v3, :cond_24

    .line 997
    .line 998
    goto :goto_d

    .line 999
    :cond_24
    const-string/jumbo v1, "tickerText"

    .line 1000
    .line 1001
    .line 1002
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    invoke-static {v3, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v1

    .line 1010
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    if-nez v1, :cond_25

    .line 1015
    .line 1016
    goto :goto_d

    .line 1017
    :cond_25
    const-string/jumbo v1, "text"

    .line 1018
    .line 1019
    .line 1020
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v5

    .line 1024
    invoke-static {v3, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v6

    .line 1028
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v5

    .line 1032
    if-nez v5, :cond_26

    .line 1033
    .line 1034
    goto :goto_d

    .line 1035
    :cond_26
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v5

    .line 1039
    invoke-static {v3, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v1

    .line 1047
    if-nez v1, :cond_27

    .line 1048
    .line 1049
    goto :goto_d

    .line 1050
    :cond_27
    const-string/jumbo v1, "subText"

    .line 1051
    .line 1052
    .line 1053
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object p0

    .line 1057
    invoke-static {v3, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result p0

    .line 1065
    if-nez p0, :cond_28

    .line 1066
    .line 1067
    goto :goto_d

    .line 1068
    :cond_28
    :goto_c
    move p0, v10

    .line 1069
    goto :goto_e

    .line 1070
    :cond_29
    :goto_d
    move p0, v12

    .line 1071
    :goto_e
    if-eqz p0, :cond_2a

    .line 1072
    .line 1073
    const-string/jumbo p0, "putLighting: skip by isDuplicatedOnGoing"

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_25

    .line 1080
    .line 1081
    :cond_2a
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1082
    .line 1083
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 1084
    .line 1085
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result p0

    .line 1089
    if-eqz p0, :cond_2b

    .line 1090
    .line 1091
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 1092
    .line 1093
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result p0

    .line 1097
    if-nez p0, :cond_2b

    .line 1098
    .line 1099
    const-string/jumbo p0, "putLighting: skip by isOnGoing notification showing"

    .line 1100
    .line 1101
    .line 1102
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .line 1104
    .line 1105
    goto/16 :goto_25

    .line 1106
    .line 1107
    :cond_2b
    iget p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1108
    .line 1109
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    .line 1110
    .line 1111
    if-eq p0, v9, :cond_2d

    .line 1112
    .line 1113
    const/4 v5, 0x5

    .line 1114
    if-eq p0, v5, :cond_2c

    .line 1115
    .line 1116
    if-eq p0, v8, :cond_2d

    .line 1117
    .line 1118
    goto :goto_f

    .line 1119
    :cond_2c
    invoke-virtual {v1, v12}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1120
    .line 1121
    .line 1122
    move-result p0

    .line 1123
    if-eqz p0, :cond_2f

    .line 1124
    .line 1125
    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    .line 1127
    .line 1128
    goto :goto_f

    .line 1129
    :cond_2d
    invoke-static {}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 1130
    .line 1131
    .line 1132
    move-result-object p0

    .line 1133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    .line 1135
    .line 1136
    if-eqz v4, :cond_2e

    .line 1137
    .line 1138
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v5

    .line 1142
    if-nez v5, :cond_2e

    .line 1143
    .line 1144
    const-string/jumbo v5, "setWakeLockPackage : "

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v5

    .line 1151
    const-string v6, "DeviceWakeLockManager"

    .line 1152
    .line 1153
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .line 1155
    .line 1156
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    .line 1157
    .line 1158
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v5

    .line 1162
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    :cond_2e
    invoke-virtual {v1, v12}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1166
    .line 1167
    .line 1168
    move-result p0

    .line 1169
    if-eqz p0, :cond_2f

    .line 1170
    .line 1171
    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1172
    .line 1173
    .line 1174
    :cond_2f
    :goto_f
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1175
    .line 1176
    if-eqz p0, :cond_30

    .line 1177
    .line 1178
    iget-object v11, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 1179
    .line 1180
    :cond_30
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result p0

    .line 1184
    const-string v5, "EdgeLightingScheduler"

    .line 1185
    .line 1186
    sget-boolean v6, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    .line 1187
    .line 1188
    if-nez p0, :cond_37

    .line 1189
    .line 1190
    if-eqz v6, :cond_31

    .line 1191
    .line 1192
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    const-string/jumbo v6, "replaceToNewNoti : "

    .line 1195
    .line 1196
    .line 1197
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v3

    .line 1204
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object p0

    .line 1211
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .line 1213
    .line 1214
    :cond_31
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1215
    .line 1216
    if-eqz p0, :cond_32

    .line 1217
    .line 1218
    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1219
    .line 1220
    .line 1221
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1222
    .line 1223
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p0

    .line 1227
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->expireNotiLighting(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    :cond_32
    iput-object p1, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1231
    .line 1232
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    .line 1233
    .line 1234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1235
    .line 1236
    .line 1237
    new-instance v0, Ljava/lang/StringBuffer;

    .line 1238
    .line 1239
    const-string/jumbo v2, "startNotification: "

    .line 1240
    .line 1241
    .line 1242
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1246
    .line 1247
    .line 1248
    iget v2, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1249
    .line 1250
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 1251
    .line 1252
    invoke-static {p0, v4, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$misNeedToBlockedByPolicy(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;I)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v2

    .line 1256
    if-eqz v2, :cond_33

    .line 1257
    .line 1258
    const-string v2, " +isBlockedByPolicy"

    .line 1259
    .line 1260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v0

    .line 1267
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    .line 1269
    .line 1270
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 1271
    .line 1272
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    .line 1273
    .line 1274
    .line 1275
    goto :goto_12

    .line 1276
    :cond_33
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 1277
    .line 1278
    iget-object v3, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 1279
    .line 1280
    invoke-interface {v3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v3

    .line 1284
    invoke-interface {v3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    .line 1285
    .line 1286
    .line 1287
    move-result v4

    .line 1288
    if-eq v4, v10, :cond_34

    .line 1289
    .line 1290
    const/4 v6, 0x2

    .line 1291
    if-eq v4, v6, :cond_35

    .line 1292
    .line 1293
    iput-object v3, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 1294
    .line 1295
    move v10, v12

    .line 1296
    goto :goto_10

    .line 1297
    :cond_34
    iput-object v3, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 1298
    .line 1299
    :cond_35
    :goto_10
    if-eqz v10, :cond_36

    .line 1300
    .line 1301
    const-string p0, " +ShowWithTurnOver"

    .line 1302
    .line 1303
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    .line 1305
    .line 1306
    goto :goto_11

    .line 1307
    :cond_36
    invoke-static {p0, v12}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    .line 1308
    .line 1309
    .line 1310
    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object p0

    .line 1314
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    .line 1316
    .line 1317
    :goto_12
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 1318
    .line 1319
    .line 1320
    move-result p0

    .line 1321
    const/4 v0, -0x1

    .line 1322
    if-eq p0, v0, :cond_63

    .line 1323
    .line 1324
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object p0

    .line 1328
    invoke-virtual {v1, v12, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1329
    .line 1330
    .line 1331
    move-result-object p0

    .line 1332
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 1333
    .line 1334
    .line 1335
    move-result p1

    .line 1336
    int-to-long v2, p1

    .line 1337
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1338
    .line 1339
    .line 1340
    goto/16 :goto_25

    .line 1341
    .line 1342
    :cond_37
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1343
    .line 1344
    if-nez p0, :cond_38

    .line 1345
    .line 1346
    goto/16 :goto_14

    .line 1347
    .line 1348
    :cond_38
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 1349
    .line 1350
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1351
    .line 1352
    .line 1353
    move-result v7

    .line 1354
    if-nez v7, :cond_39

    .line 1355
    .line 1356
    goto/16 :goto_14

    .line 1357
    .line 1358
    :cond_39
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 1359
    .line 1360
    .line 1361
    move-result v7

    .line 1362
    sget-boolean v8, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 1363
    .line 1364
    const-string v11, "LightingScheduleInfo"

    .line 1365
    .line 1366
    if-eqz v8, :cond_3a

    .line 1367
    .line 1368
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    const-string v13, " getVisibility : "

    .line 1371
    .line 1372
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 1376
    .line 1377
    .line 1378
    move-result v13

    .line 1379
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    const-string v13, " preVisibility : "

    .line 1383
    .line 1384
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    .line 1390
    const-string v13, " getReason : "

    .line 1391
    .line 1392
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    iget v13, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1396
    .line 1397
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v12

    .line 1404
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .line 1406
    .line 1407
    :cond_3a
    if-eqz v7, :cond_3b

    .line 1408
    .line 1409
    if-ne v7, v10, :cond_3d

    .line 1410
    .line 1411
    :cond_3b
    iget v12, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1412
    .line 1413
    if-eq v12, v10, :cond_3d

    .line 1414
    .line 1415
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v12

    .line 1419
    if-nez v12, :cond_3c

    .line 1420
    .line 1421
    new-instance v12, Landroid/os/Bundle;

    .line 1422
    .line 1423
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v3, v12}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 1427
    .line 1428
    .line 1429
    :cond_3c
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v12

    .line 1433
    if-eqz v12, :cond_3d

    .line 1434
    .line 1435
    const-string/jumbo v13, "noti_visiblity"

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1439
    .line 1440
    .line 1441
    :cond_3d
    iget v7, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1442
    .line 1443
    if-eq v7, v9, :cond_3e

    .line 1444
    .line 1445
    const/4 v9, 0x6

    .line 1446
    if-eq v7, v9, :cond_3e

    .line 1447
    .line 1448
    goto :goto_13

    .line 1449
    :cond_3e
    iput v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1450
    .line 1451
    :goto_13
    iget-object v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 1452
    .line 1453
    invoke-virtual {v7, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 1454
    .line 1455
    .line 1456
    iget-object v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 1457
    .line 1458
    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isTextDirty()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v7

    .line 1462
    iput-boolean v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    .line 1463
    .line 1464
    if-nez v7, :cond_40

    .line 1465
    .line 1466
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 1467
    .line 1468
    invoke-static {v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v7

    .line 1472
    if-eqz v7, :cond_40

    .line 1473
    .line 1474
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v7

    .line 1478
    if-nez v7, :cond_3f

    .line 1479
    .line 1480
    new-instance v7, Landroid/os/Bundle;

    .line 1481
    .line 1482
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1483
    .line 1484
    .line 1485
    :cond_3f
    const-string v9, "flag"

    .line 1486
    .line 1487
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1488
    .line 1489
    .line 1490
    move-result v12

    .line 1491
    or-int/lit8 v12, v12, 0x2

    .line 1492
    .line 1493
    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v3, v7}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 1497
    .line 1498
    .line 1499
    :cond_40
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v7

    .line 1503
    if-eqz v7, :cond_41

    .line 1504
    .line 1505
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v7

    .line 1509
    if-nez v7, :cond_41

    .line 1510
    .line 1511
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v7

    .line 1515
    if-eqz v7, :cond_41

    .line 1516
    .line 1517
    const-string v9, "content_intent"

    .line 1518
    .line 1519
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    .line 1520
    .line 1521
    .line 1522
    move-result-object p0

    .line 1523
    invoke-virtual {v7, v9, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1524
    .line 1525
    .line 1526
    :cond_41
    if-eqz v8, :cond_42

    .line 1527
    .line 1528
    new-instance p0, Ljava/lang/StringBuffer;

    .line 1529
    .line 1530
    const-string/jumbo v7, "mergeInfo tick="

    .line 1531
    .line 1532
    .line 1533
    invoke-direct {p0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    iget-object v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 1537
    .line 1538
    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v7

    .line 1542
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v7

    .line 1546
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    .line 1548
    .line 1549
    const-string v7, " dirty="

    .line 1550
    .line 1551
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1552
    .line 1553
    .line 1554
    iget-boolean v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    .line 1555
    .line 1556
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1557
    .line 1558
    .line 1559
    const-string v7, " vis="

    .line 1560
    .line 1561
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 1565
    .line 1566
    .line 1567
    move-result v7

    .line 1568
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object p0

    .line 1575
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .line 1577
    .line 1578
    :cond_42
    :goto_14
    if-eqz v6, :cond_43

    .line 1579
    .line 1580
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1581
    .line 1582
    const-string/jumbo v6, "updateCurrentNoti : "

    .line 1583
    .line 1584
    .line 1585
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1586
    .line 1587
    .line 1588
    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v3

    .line 1592
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1596
    .line 1597
    .line 1598
    move-result-object p0

    .line 1599
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    .line 1601
    .line 1602
    :cond_43
    iput-object p1, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 1603
    .line 1604
    iget-object p0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    .line 1605
    .line 1606
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 1607
    .line 1608
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 1609
    .line 1610
    iget v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 1611
    .line 1612
    if-ne v0, v10, :cond_44

    .line 1613
    .line 1614
    move v0, v10

    .line 1615
    goto :goto_15

    .line 1616
    :cond_44
    const/4 v0, 0x0

    .line 1617
    :goto_15
    if-eqz v0, :cond_45

    .line 1618
    .line 1619
    const-string/jumbo v0, "updateText: restart edge lighting for turn over"

    .line 1620
    .line 1621
    .line 1622
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    .line 1624
    .line 1625
    invoke-static {p0, v10}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    .line 1626
    .line 1627
    .line 1628
    const/4 v10, 0x0

    .line 1629
    goto/16 :goto_22

    .line 1630
    .line 1631
    :cond_45
    iget v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 1632
    .line 1633
    invoke-static {p0, v4, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$misNeedToBlockedByPolicy(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;I)Z

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    if-eqz v0, :cond_46

    .line 1638
    .line 1639
    const-string/jumbo p0, "updateText: skip by Blocking Policy"

    .line 1640
    .line 1641
    .line 1642
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    .line 1644
    .line 1645
    goto/16 :goto_22

    .line 1646
    .line 1647
    :cond_46
    new-instance v0, Ljava/lang/StringBuffer;

    .line 1648
    .line 1649
    const-string/jumbo v2, "updateNotiText: isDirty = "

    .line 1650
    .line 1651
    .line 1652
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    iget-boolean v2, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    .line 1656
    .line 1657
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1658
    .line 1659
    .line 1660
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 1661
    .line 1662
    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 1663
    .line 1664
    .line 1665
    move-result v2

    .line 1666
    new-instance v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 1667
    .line 1668
    invoke-direct {v3}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getActionList()Ljava/util/ArrayList;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v6

    .line 1675
    if-eqz v6, :cond_47

    .line 1676
    .line 1677
    move v6, v10

    .line 1678
    goto :goto_16

    .line 1679
    :cond_47
    const/4 v6, 0x0

    .line 1680
    :goto_16
    iput-boolean v6, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    .line 1681
    .line 1682
    const-string v6, " dur="

    .line 1683
    .line 1684
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 1688
    .line 1689
    .line 1690
    move-result v6

    .line 1691
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1692
    .line 1693
    .line 1694
    iget-object v6, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 1695
    .line 1696
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v7

    .line 1700
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    .line 1701
    .line 1702
    .line 1703
    move-result v8

    .line 1704
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 1705
    .line 1706
    .line 1707
    move-result v9

    .line 1708
    invoke-virtual {v6, v8, v9, v7}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isNeedToSanitized(IILjava/lang/String;)Z

    .line 1709
    .line 1710
    .line 1711
    move-result v6

    .line 1712
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppIcon(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Landroid/graphics/drawable/Drawable;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v7

    .line 1716
    iput-object v7, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 1717
    .line 1718
    invoke-virtual {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isSupportAppIcon(Ljava/lang/String;)Z

    .line 1719
    .line 1720
    .line 1721
    move-result v7

    .line 1722
    iput-boolean v7, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSupportAppIcon:Z

    .line 1723
    .line 1724
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 1725
    .line 1726
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 1727
    .line 1728
    iget-boolean v8, v7, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldShowAppIcon:Z

    .line 1729
    .line 1730
    iput-boolean v8, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mShouldShowAppIcon:Z

    .line 1731
    .line 1732
    sget-boolean v8, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 1733
    .line 1734
    const-string v8, "keyguard"

    .line 1735
    .line 1736
    invoke-virtual {v7, v8}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v7

    .line 1740
    check-cast v7, Landroid/app/KeyguardManager;

    .line 1741
    .line 1742
    if-eqz v7, :cond_48

    .line 1743
    .line 1744
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 1745
    .line 1746
    .line 1747
    move-result v7

    .line 1748
    if-eqz v7, :cond_48

    .line 1749
    .line 1750
    move v7, v10

    .line 1751
    goto :goto_17

    .line 1752
    :cond_48
    const/4 v7, 0x0

    .line 1753
    :goto_17
    if-eqz v7, :cond_52

    .line 1754
    .line 1755
    const-string v7, "+locked"

    .line 1756
    .line 1757
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1758
    .line 1759
    .line 1760
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 1761
    .line 1762
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 1763
    .line 1764
    invoke-virtual {v7}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v7

    .line 1768
    const-string v8, "lock_screen_show_notifications"

    .line 1769
    .line 1770
    const/4 v9, -0x2

    .line 1771
    const/4 v11, 0x0

    .line 1772
    invoke-static {v7, v8, v11, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1773
    .line 1774
    .line 1775
    move-result v7

    .line 1776
    if-ne v7, v10, :cond_49

    .line 1777
    .line 1778
    move v7, v10

    .line 1779
    goto :goto_18

    .line 1780
    :cond_49
    const/4 v7, 0x0

    .line 1781
    :goto_18
    if-eqz v7, :cond_54

    .line 1782
    .line 1783
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 1784
    .line 1785
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 1786
    .line 1787
    invoke-virtual {v7}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v7

    .line 1791
    const-string v8, "lock_screen_allow_private_notifications"

    .line 1792
    .line 1793
    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1794
    .line 1795
    .line 1796
    move-result v7

    .line 1797
    if-nez v7, :cond_4a

    .line 1798
    .line 1799
    move v7, v10

    .line 1800
    goto :goto_19

    .line 1801
    :cond_4a
    const/4 v7, 0x0

    .line 1802
    :goto_19
    iget-object v8, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 1803
    .line 1804
    invoke-virtual {v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v8

    .line 1808
    if-eqz v8, :cond_4b

    .line 1809
    .line 1810
    const-string/jumbo v9, "package_visiblity"

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1814
    .line 1815
    .line 1816
    move-result v8

    .line 1817
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v8

    .line 1821
    if-eqz v8, :cond_4b

    .line 1822
    .line 1823
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1824
    .line 1825
    .line 1826
    move-result v8

    .line 1827
    goto :goto_1a

    .line 1828
    :cond_4b
    const/16 v8, -0x3e8

    .line 1829
    .line 1830
    :goto_1a
    if-nez v8, :cond_4c

    .line 1831
    .line 1832
    move v8, v10

    .line 1833
    goto :goto_1b

    .line 1834
    :cond_4c
    const/4 v8, 0x0

    .line 1835
    :goto_1b
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 1836
    .line 1837
    .line 1838
    move-result v9

    .line 1839
    if-nez v6, :cond_4e

    .line 1840
    .line 1841
    if-eqz v9, :cond_4e

    .line 1842
    .line 1843
    const/4 v6, -0x1

    .line 1844
    if-eq v9, v6, :cond_4e

    .line 1845
    .line 1846
    if-nez v7, :cond_4e

    .line 1847
    .line 1848
    if-eqz v8, :cond_4d

    .line 1849
    .line 1850
    goto :goto_1c

    .line 1851
    :cond_4d
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v2

    .line 1855
    iput-object v2, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 1856
    .line 1857
    goto :goto_1d

    .line 1858
    :cond_4e
    :goto_1c
    invoke-virtual {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v6

    .line 1862
    const/4 v11, 0x0

    .line 1863
    filled-new-array {v6, v11}, [Ljava/lang/String;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v6

    .line 1867
    iput-object v6, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 1868
    .line 1869
    if-eqz v2, :cond_4f

    .line 1870
    .line 1871
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 1872
    .line 1873
    .line 1874
    move-result v2

    .line 1875
    if-nez v2, :cond_4f

    .line 1876
    .line 1877
    const-string p0, "Not showing edgelighting because suppressAwakeHeadsUp is true"

    .line 1878
    .line 1879
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    .line 1881
    .line 1882
    goto/16 :goto_22

    .line 1883
    .line 1884
    :cond_4f
    :goto_1d
    const-string v2, "+notiOn"

    .line 1885
    .line 1886
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1887
    .line 1888
    .line 1889
    const-string v2, " "

    .line 1890
    .line 1891
    if-eqz v7, :cond_50

    .line 1892
    .line 1893
    const-string v6, "+hidePriv"

    .line 1894
    .line 1895
    goto :goto_1e

    .line 1896
    :cond_50
    move-object v6, v2

    .line 1897
    :goto_1e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1898
    .line 1899
    .line 1900
    if-eqz v8, :cond_51

    .line 1901
    .line 1902
    const-string v2, "+hideContentPackageName"

    .line 1903
    .line 1904
    :cond_51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1905
    .line 1906
    .line 1907
    const-string/jumbo v2, "notiVisibility : "

    .line 1908
    .line 1909
    .line 1910
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1914
    .line 1915
    .line 1916
    goto :goto_1f

    .line 1917
    :cond_52
    if-eqz v6, :cond_53

    .line 1918
    .line 1919
    invoke-virtual {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v2

    .line 1923
    const/4 v6, 0x0

    .line 1924
    filled-new-array {v2, v6}, [Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    iput-object v2, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 1929
    .line 1930
    goto :goto_1f

    .line 1931
    :cond_53
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v2

    .line 1935
    iput-object v2, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 1936
    .line 1937
    :cond_54
    :goto_1f
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v2

    .line 1941
    iget-object v6, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 1942
    .line 1943
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 1944
    .line 1945
    invoke-static {v6}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v6

    .line 1949
    iget-object v7, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1950
    .line 1951
    invoke-virtual {v6, v7}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    .line 1952
    .line 1953
    .line 1954
    move-result v6

    .line 1955
    iput-boolean v6, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    .line 1956
    .line 1957
    iget-object v6, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 1958
    .line 1959
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 1960
    .line 1961
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v7

    .line 1965
    iget-object v8, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 1966
    .line 1967
    invoke-virtual {v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    .line 1968
    .line 1969
    .line 1970
    move-result-object v8

    .line 1971
    invoke-static {v6, v7, v4, v8}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getLightingColor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)[I

    .line 1972
    .line 1973
    .line 1974
    move-result-object v6

    .line 1975
    iput-object v6, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 1976
    .line 1977
    iput-object v2, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1978
    .line 1979
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v2

    .line 1983
    iput-object v2, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    .line 1984
    .line 1985
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 1986
    .line 1987
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1988
    .line 1989
    .line 1990
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    .line 1991
    .line 1992
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 1993
    .line 1994
    iget-object v2, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 1995
    .line 1996
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    .line 1997
    .line 1998
    .line 1999
    move-result v2

    .line 2000
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 2001
    .line 2002
    .line 2003
    move-result v2

    .line 2004
    int-to-long v6, v2

    .line 2005
    iput-wide v6, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 2006
    .line 2007
    const/4 v2, 0x0

    .line 2008
    iput-boolean v2, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    .line 2009
    .line 2010
    iput-object v4, v3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    .line 2011
    .line 2012
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 2013
    .line 2014
    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    .line 2015
    .line 2016
    .line 2017
    move-result v4

    .line 2018
    if-eqz v4, :cond_57

    .line 2019
    .line 2020
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 2021
    .line 2022
    invoke-virtual {v4, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v2

    .line 2026
    iget-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    .line 2027
    .line 2028
    iget-object v6, v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2029
    .line 2030
    if-eqz v6, :cond_56

    .line 2031
    .line 2032
    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    .line 2033
    .line 2034
    .line 2035
    move-result v2

    .line 2036
    if-nez v2, :cond_55

    .line 2037
    .line 2038
    const-string v2, "EdgeLightingDialog"

    .line 2039
    .line 2040
    const-string/jumbo v3, "updateNotification not showing"

    .line 2041
    .line 2042
    .line 2043
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    .line 2045
    .line 2046
    goto :goto_21

    .line 2047
    :cond_55
    iget-object v2, v6, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2048
    .line 2049
    if-eqz v2, :cond_57

    .line 2050
    .line 2051
    invoke-virtual {v2, v3}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2052
    .line 2053
    .line 2054
    iget-object v2, v6, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2055
    .line 2056
    invoke-virtual {v2, v4}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->updateText(Z)V

    .line 2057
    .line 2058
    .line 2059
    iget-object v2, v6, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    .line 2060
    .line 2061
    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2062
    .line 2063
    .line 2064
    goto :goto_21

    .line 2065
    :cond_56
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 2066
    .line 2067
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2068
    .line 2069
    .line 2070
    const-string v4, "EffectServiceController"

    .line 2071
    .line 2072
    const-string v6, "dispatchUpdate"

    .line 2073
    .line 2074
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    .line 2076
    .line 2077
    invoke-virtual {v2, v3}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v3

    .line 2081
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    .line 2082
    .line 2083
    iget-object v4, v2, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    .line 2084
    .line 2085
    :try_start_1
    const-string v6, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    .line 2086
    .line 2087
    invoke-static {v6, v10, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2091
    goto :goto_20

    .line 2092
    :catch_0
    move-exception v4

    .line 2093
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 2094
    .line 2095
    .line 2096
    const/4 v4, 0x0

    .line 2097
    :goto_20
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v4

    .line 2101
    iget-object v3, v3, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    .line 2102
    .line 2103
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v3

    .line 2107
    iget-object v6, v2, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    .line 2108
    .line 2109
    const-string/jumbo v7, "update"

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {v2, v6, v7, v4, v3}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    :cond_57
    :goto_21
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2116
    .line 2117
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 2118
    .line 2119
    .line 2120
    move-result v2

    .line 2121
    add-int/lit16 v2, v2, 0x7d0

    .line 2122
    .line 2123
    int-to-long v2, v2

    .line 2124
    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2125
    .line 2126
    .line 2127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 2128
    .line 2129
    .line 2130
    move-result-object p0

    .line 2131
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    .line 2133
    .line 2134
    :goto_22
    if-eqz v10, :cond_63

    .line 2135
    .line 2136
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 2137
    .line 2138
    .line 2139
    move-result p0

    .line 2140
    const/4 v0, -0x1

    .line 2141
    if-eq p0, v0, :cond_58

    .line 2142
    .line 2143
    const/4 p0, 0x0

    .line 2144
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2145
    .line 2146
    .line 2147
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v0

    .line 2151
    invoke-virtual {v1, p0, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2152
    .line 2153
    .line 2154
    move-result-object p0

    .line 2155
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 2156
    .line 2157
    .line 2158
    move-result p1

    .line 2159
    int-to-long v2, p1

    .line 2160
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2161
    .line 2162
    .line 2163
    goto/16 :goto_25

    .line 2164
    .line 2165
    :cond_58
    const/4 p0, 0x0

    .line 2166
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2167
    .line 2168
    .line 2169
    goto/16 :goto_25

    .line 2170
    .line 2171
    :cond_59
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 2172
    .line 2173
    if-eqz p0, :cond_63

    .line 2174
    .line 2175
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 2176
    .line 2177
    monitor-enter v0

    .line 2178
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 2179
    .line 2180
    iget-object v9, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 2181
    .line 2182
    invoke-virtual {v8, v9, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    .line 2184
    .line 2185
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 2186
    .line 2187
    if-nez v8, :cond_5a

    .line 2188
    .line 2189
    const-string p0, "ApplicationLightingScheduler"

    .line 2190
    .line 2191
    const-string/jumbo p1, "putLighting: no listener"

    .line 2192
    .line 2193
    .line 2194
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    .line 2196
    .line 2197
    monitor-exit v0

    .line 2198
    goto/16 :goto_25

    .line 2199
    .line 2200
    :cond_5a
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 2201
    .line 2202
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v8

    .line 2206
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v8

    .line 2210
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 2211
    .line 2212
    .line 2213
    move-result v8

    .line 2214
    if-eqz v8, :cond_62

    .line 2215
    .line 2216
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 2217
    .line 2218
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v8

    .line 2222
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v8

    .line 2226
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v8

    .line 2230
    check-cast v8, Ljava/util/Map$Entry;

    .line 2231
    .line 2232
    iget-object v9, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 2233
    .line 2234
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v8

    .line 2238
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2239
    .line 2240
    .line 2241
    move-result v8

    .line 2242
    if-eqz v8, :cond_62

    .line 2243
    .line 2244
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 2245
    .line 2246
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 2247
    .line 2248
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 2249
    .line 2250
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 2251
    .line 2252
    const/4 v8, 0x0

    .line 2253
    invoke-virtual {p0, v8}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2254
    .line 2255
    .line 2256
    move-result-object p0

    .line 2257
    iget-object p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2258
    .line 2259
    invoke-virtual {p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    .line 2260
    .line 2261
    .line 2262
    move-result-object p1

    .line 2263
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2264
    .line 2265
    if-eqz p0, :cond_62

    .line 2266
    .line 2267
    iput-boolean v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 2268
    .line 2269
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    .line 2270
    .line 2271
    .line 2272
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 2273
    .line 2274
    if-nez v8, :cond_5b

    .line 2275
    .line 2276
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v3

    .line 2280
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2281
    .line 2282
    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 2283
    .line 2284
    :cond_5b
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 2285
    .line 2286
    if-eqz v3, :cond_5d

    .line 2287
    .line 2288
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2289
    .line 2290
    if-eqz v8, :cond_5c

    .line 2291
    .line 2292
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2293
    .line 2294
    .line 2295
    const/4 v3, 0x0

    .line 2296
    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2297
    .line 2298
    :cond_5c
    new-instance v3, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2299
    .line 2300
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v8

    .line 2304
    invoke-direct {v3, v8}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;-><init>(Landroid/content/Context;)V

    .line 2305
    .line 2306
    .line 2307
    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2308
    .line 2309
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 2310
    .line 2311
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2312
    .line 2313
    .line 2314
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2315
    .line 2316
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 2317
    .line 2318
    iput-object v8, v3, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 2319
    .line 2320
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v3

    .line 2324
    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2325
    .line 2326
    .line 2327
    :cond_5d
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2328
    .line 2329
    if-eqz p1, :cond_5e

    .line 2330
    .line 2331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2332
    .line 2333
    .line 2334
    array-length v3, p1

    .line 2335
    if-lez v3, :cond_5e

    .line 2336
    .line 2337
    const/4 v3, 0x0

    .line 2338
    aget v3, p1, v3

    .line 2339
    .line 2340
    or-int/2addr v1, v3

    .line 2341
    aget p1, p1, v10

    .line 2342
    .line 2343
    if-eqz p1, :cond_5f

    .line 2344
    .line 2345
    iget-object v3, v2, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 2346
    .line 2347
    iput p1, v3, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    .line 2348
    .line 2349
    goto :goto_23

    .line 2350
    :cond_5e
    const v1, -0xf0551d

    .line 2351
    .line 2352
    .line 2353
    :cond_5f
    :goto_23
    iget-object p1, v2, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 2354
    .line 2355
    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setMainColor(I)V

    .line 2356
    .line 2357
    .line 2358
    iget-object p1, v2, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 2359
    .line 2360
    const/4 v1, 0x0

    .line 2361
    iput-boolean v1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 2362
    .line 2363
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2364
    .line 2365
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2366
    .line 2367
    .line 2368
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    .line 2369
    .line 2370
    .line 2371
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 2372
    .line 2373
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 2374
    .line 2375
    if-eqz p1, :cond_60

    .line 2376
    .line 2377
    goto :goto_24

    .line 2378
    :cond_60
    iput-boolean v10, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 2379
    .line 2380
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setImageDrawable()V

    .line 2381
    .line 2382
    .line 2383
    iget-wide v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 2384
    .line 2385
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 2386
    .line 2387
    .line 2388
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 2389
    .line 2390
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 2391
    .line 2392
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    .line 2393
    .line 2394
    const-wide/16 v4, 0x3

    .line 2395
    .line 2396
    mul-long/2addr v2, v4

    .line 2397
    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 2398
    .line 2399
    .line 2400
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    .line 2401
    .line 2402
    if-eqz p1, :cond_62

    .line 2403
    .line 2404
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 2405
    .line 2406
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2407
    .line 2408
    if-eqz v2, :cond_61

    .line 2409
    .line 2410
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2411
    .line 2412
    .line 2413
    :cond_61
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    .line 2414
    .line 2415
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2416
    .line 2417
    const-string/jumbo v4, "repeat Color Animation from : "

    .line 2418
    .line 2419
    .line 2420
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2421
    .line 2422
    .line 2423
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2424
    .line 2425
    .line 2426
    const-string v4, " toColor "

    .line 2427
    .line 2428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    .line 2430
    .line 2431
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2432
    .line 2433
    .line 2434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2435
    .line 2436
    .line 2437
    move-result-object v3

    .line 2438
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    .line 2440
    .line 2441
    filled-new-array {v1, p1}, [I

    .line 2442
    .line 2443
    .line 2444
    move-result-object p1

    .line 2445
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    .line 2446
    .line 2447
    .line 2448
    move-result-object p1

    .line 2449
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2450
    .line 2451
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;

    .line 2452
    .line 2453
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;)V

    .line 2454
    .line 2455
    .line 2456
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2457
    .line 2458
    .line 2459
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2460
    .line 2461
    const/4 v1, 0x2

    .line 2462
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2463
    .line 2464
    .line 2465
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2466
    .line 2467
    const/4 v1, -0x1

    .line 2468
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2469
    .line 2470
    .line 2471
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2472
    .line 2473
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2474
    .line 2475
    .line 2476
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2477
    .line 2478
    const-wide/16 v1, 0x2710

    .line 2479
    .line 2480
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2481
    .line 2482
    .line 2483
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 2484
    .line 2485
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 2486
    .line 2487
    .line 2488
    :cond_62
    :goto_24
    monitor-exit v0

    .line 2489
    goto :goto_25

    .line 2490
    :catchall_1
    move-exception p0

    .line 2491
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2492
    throw p0

    .line 2493
    :cond_63
    :goto_25
    return-void
.end method
