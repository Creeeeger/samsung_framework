.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 12
    .line 13
    if-eqz v0, :cond_17

    .line 14
    .line 15
    iget v2, v1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 20
    .line 21
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/4 v7, 0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    const-string v9, "MediaRouteProviderProxy"

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :pswitch_0
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 38
    .line 39
    iget-object v3, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 40
    .line 41
    if-ne v3, v0, :cond_15

    .line 42
    .line 43
    iget-object v0, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 60
    .line 61
    invoke-interface {v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ne v5, v4, :cond_0

    .line 66
    .line 67
    move-object v8, v3

    .line 68
    :cond_1
    iget-object v0, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    instance-of v3, v8, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    move-object v3, v8

    .line 77
    check-cast v3, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    .line 82
    .line 83
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 84
    .line 85
    iget-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 86
    .line 87
    if-ne v4, v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-virtual {v0, v3, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v0, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-interface {v8}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :pswitch_1
    if-eqz v5, :cond_3

    .line 111
    .line 112
    instance-of v2, v5, Landroid/os/Bundle;

    .line 113
    .line 114
    if-eqz v2, :cond_15

    .line 115
    .line 116
    :cond_3
    check-cast v5, Landroid/os/Bundle;

    .line 117
    .line 118
    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 119
    .line 120
    if-eqz v2, :cond_15

    .line 121
    .line 122
    const-string v2, "groupRoute"

    .line 123
    .line 124
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/os/Bundle;

    .line 129
    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    new-instance v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 133
    .line 134
    invoke-direct {v3, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    move-object v3, v8

    .line 139
    :goto_0
    const-string v2, "dynamicRoutes"

    .line 140
    .line 141
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_7

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Landroid/os/Bundle;

    .line 165
    .line 166
    if-nez v6, :cond_5

    .line 167
    .line 168
    move-object v6, v8

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    const-string/jumbo v11, "mrDescriptor"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    if-eqz v11, :cond_6

    .line 178
    .line 179
    new-instance v12, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 180
    .line 181
    invoke-direct {v12, v11}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 182
    .line 183
    .line 184
    move-object v14, v12

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    move-object v14, v8

    .line 187
    :goto_2
    const-string/jumbo v11, "selectionState"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v11, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    const-string v11, "isUnselectable"

    .line 195
    .line 196
    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 197
    .line 198
    .line 199
    move-result v16

    .line 200
    const-string v11, "isGroupable"

    .line 201
    .line 202
    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v17

    .line 206
    const-string v11, "isTransferable"

    .line 207
    .line 208
    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 209
    .line 210
    .line 211
    move-result v18

    .line 212
    new-instance v6, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 213
    .line 214
    move-object v13, v6

    .line 215
    invoke-direct/range {v13 .. v18}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    .line 216
    .line 217
    .line 218
    :goto_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_7
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 223
    .line 224
    iget-object v6, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 225
    .line 226
    if-ne v6, v0, :cond_16

    .line 227
    .line 228
    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    .line 229
    .line 230
    if-eqz v0, :cond_8

    .line 231
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v6, ": DynamicRouteDescriptors changed, descriptors="

    .line 241
    .line 242
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_8
    iget-object v0, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_a

    .line 266
    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 272
    .line 273
    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-ne v6, v4, :cond_9

    .line 278
    .line 279
    move-object v8, v2

    .line 280
    :cond_a
    instance-of v0, v8, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 281
    .line 282
    if-eqz v0, :cond_16

    .line 283
    .line 284
    check-cast v8, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 285
    .line 286
    invoke-virtual {v8, v3, v5}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_7

    .line 290
    .line 291
    :pswitch_2
    instance-of v2, v5, Landroid/os/Bundle;

    .line 292
    .line 293
    if-eqz v2, :cond_c

    .line 294
    .line 295
    check-cast v5, Landroid/os/Bundle;

    .line 296
    .line 297
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 304
    .line 305
    if-eqz v5, :cond_b

    .line 306
    .line 307
    const-string/jumbo v4, "routeId"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_b

    .line 315
    .line 316
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_6

    .line 325
    .line 326
    :cond_b
    const-string v0, "DynamicGroupRouteController is created without valid route id."

    .line 327
    .line 328
    invoke-virtual {v2, v0, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_6

    .line 332
    .line 333
    :cond_c
    const-string v0, "No further information on the dynamic group controller"

    .line 334
    .line 335
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    goto/16 :goto_6

    .line 339
    .line 340
    :pswitch_3
    if-eqz v5, :cond_d

    .line 341
    .line 342
    instance-of v2, v5, Landroid/os/Bundle;

    .line 343
    .line 344
    if-eqz v2, :cond_15

    .line 345
    .line 346
    :cond_d
    check-cast v5, Landroid/os/Bundle;

    .line 347
    .line 348
    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 349
    .line 350
    if-eqz v2, :cond_15

    .line 351
    .line 352
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 353
    .line 354
    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v2, v0, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_7

    .line 362
    .line 363
    :pswitch_4
    if-eqz v5, :cond_e

    .line 364
    .line 365
    instance-of v2, v5, Landroid/os/Bundle;

    .line 366
    .line 367
    if-eqz v2, :cond_15

    .line 368
    .line 369
    :cond_e
    if-nez v6, :cond_f

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_f
    const-string v2, "error"

    .line 373
    .line 374
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    :goto_4
    check-cast v5, Landroid/os/Bundle;

    .line 379
    .line 380
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 381
    .line 382
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 387
    .line 388
    if-eqz v2, :cond_15

    .line 389
    .line 390
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 391
    .line 392
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v8, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_7

    .line 399
    .line 400
    :pswitch_5
    if-eqz v5, :cond_10

    .line 401
    .line 402
    instance-of v2, v5, Landroid/os/Bundle;

    .line 403
    .line 404
    if-eqz v2, :cond_15

    .line 405
    .line 406
    :cond_10
    check-cast v5, Landroid/os/Bundle;

    .line 407
    .line 408
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 409
    .line 410
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 415
    .line 416
    if-eqz v2, :cond_15

    .line 417
    .line 418
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 419
    .line 420
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :pswitch_6
    if-eqz v5, :cond_11

    .line 429
    .line 430
    instance-of v2, v5, Landroid/os/Bundle;

    .line 431
    .line 432
    if-eqz v2, :cond_15

    .line 433
    .line 434
    :cond_11
    check-cast v5, Landroid/os/Bundle;

    .line 435
    .line 436
    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 437
    .line 438
    if-nez v2, :cond_15

    .line 439
    .line 440
    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 441
    .line 442
    if-ne v3, v2, :cond_15

    .line 443
    .line 444
    if-lt v4, v7, :cond_15

    .line 445
    .line 446
    iput v10, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 447
    .line 448
    iput v4, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 449
    .line 450
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 451
    .line 452
    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v2, v0, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 457
    .line 458
    .line 459
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 460
    .line 461
    iget-object v3, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 462
    .line 463
    if-ne v3, v0, :cond_16

    .line 464
    .line 465
    iput-boolean v7, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 466
    .line 467
    iget-object v0, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    :goto_5
    if-ge v10, v0, :cond_12

    .line 474
    .line 475
    iget-object v3, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 482
    .line 483
    iget-object v4, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 484
    .line 485
    invoke-interface {v3, v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 486
    .line 487
    .line 488
    add-int/lit8 v10, v10, 0x1

    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_12
    iget-object v0, v2, Landroidx/mediarouter/media/MediaRouteProvider;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 492
    .line 493
    if-eqz v0, :cond_16

    .line 494
    .line 495
    iget-object v10, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 496
    .line 497
    const/16 v11, 0xa

    .line 498
    .line 499
    iget v12, v10, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 500
    .line 501
    add-int/lit8 v2, v12, 0x1

    .line 502
    .line 503
    iput v2, v10, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 504
    .line 505
    const/4 v13, 0x0

    .line 506
    iget-object v14, v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    .line 507
    .line 508
    const/4 v15, 0x0

    .line 509
    invoke-virtual/range {v10 .. v15}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 510
    .line 511
    .line 512
    goto :goto_7

    .line 513
    :pswitch_7
    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 514
    .line 515
    if-ne v3, v2, :cond_14

    .line 516
    .line 517
    iput v10, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 518
    .line 519
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 520
    .line 521
    iget-object v4, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 522
    .line 523
    if-ne v4, v0, :cond_14

    .line 524
    .line 525
    sget-boolean v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    .line 526
    .line 527
    if-eqz v4, :cond_13

    .line 528
    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v5, ": Service connection error - Registration failed"

    .line 538
    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    :cond_13
    invoke-virtual {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    .line 550
    .line 551
    .line 552
    :cond_14
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 553
    .line 554
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 559
    .line 560
    if-eqz v2, :cond_16

    .line 561
    .line 562
    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 563
    .line 564
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2, v8, v8}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 568
    .line 569
    .line 570
    goto :goto_7

    .line 571
    :cond_15
    :goto_6
    move v7, v10

    .line 572
    :cond_16
    :goto_7
    :pswitch_8
    if-nez v7, :cond_17

    .line 573
    .line 574
    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    .line 575
    .line 576
    if-eqz v0, :cond_17

    .line 577
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string v2, "Unhandled message from server: "

    .line 581
    .line 582
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    :cond_17
    return-void

    .line 596
    nop

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
