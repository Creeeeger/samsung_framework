.class public Lcom/android/systemui/pluginlock/PluginLockProvider;
.super Landroid/content/ContentProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "onEventReceived, pluginLock:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "PluginLockProvider"

    .line 23
    .line 24
    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "onEventReceived, basicManager:"

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    const-string v0, "call => onEventReceived"

    .line 55
    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v3, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-class v4, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 13
    .line 14
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 19
    .line 20
    const-string v6, "call: method "

    .line 21
    .line 22
    const-string v7, ", arg:"

    .line 23
    .line 24
    const-string v8, "PluginLockProvider"

    .line 25
    .line 26
    invoke-static {v6, v0, v7, v1, v8}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v5, :cond_2c

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sparse-switch v6, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_0
    const-string v6, "get_dls_data"

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v6, 0x5

    .line 52
    goto :goto_1

    .line 53
    :sswitch_1
    const-string v6, "get_lockstar_task_shortcut_state"

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v6, 0x4

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string/jumbo v6, "update_lockstar_task_shortcut_state"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v6, 0x3

    .line 75
    goto :goto_1

    .line 76
    :sswitch_3
    const-string/jumbo v6, "remove_lockstar_task_shortcut_listener"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v6, 0x2

    .line 87
    goto :goto_1

    .line 88
    :sswitch_4
    const-string v6, "fill_wallpaper_data"

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const/4 v6, 0x1

    .line 98
    goto :goto_1

    .line 99
    :sswitch_5
    const-string v6, "get_wallpaper_index"

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    const/4 v6, 0x0

    .line 109
    goto :goto_1

    .line 110
    :goto_0
    const/4 v6, -0x1

    .line 111
    :goto_1
    const-string v7, "PluginWallpaperManagerImpl"

    .line 112
    .line 113
    const-string v9, "call method:"

    .line 114
    .line 115
    const-string v10, "extras"

    .line 116
    .line 117
    const-string v11, "arg"

    .line 118
    .line 119
    const-string v12, "action"

    .line 120
    .line 121
    const-string v13, "PluginLockManagerImpl"

    .line 122
    .line 123
    const-string v14, "PluginLockShortcutFlashLight"

    .line 124
    .line 125
    const-string v15, "Flashlight"

    .line 126
    .line 127
    move-object/from16 p0, v7

    .line 128
    .line 129
    const-string v7, "Dnd"

    .line 130
    .line 131
    const-class v16, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 132
    .line 133
    if-eqz v6, :cond_23

    .line 134
    .line 135
    move-object/from16 v17, v13

    .line 136
    .line 137
    const/4 v13, 0x1

    .line 138
    if-eq v6, v13, :cond_1b

    .line 139
    .line 140
    const/4 v13, 0x2

    .line 141
    if-eq v6, v13, :cond_19

    .line 142
    .line 143
    const/4 v13, 0x3

    .line 144
    if-eq v6, v13, :cond_16

    .line 145
    .line 146
    const/4 v13, 0x4

    .line 147
    if-eq v6, v13, :cond_11

    .line 148
    .line 149
    const/4 v7, 0x5

    .line 150
    if-eq v6, v7, :cond_6

    .line 151
    .line 152
    invoke-virtual {v3, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v10, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v4, "call bundle:"

    .line 164
    .line 165
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const/4 v4, 0x0

    .line 180
    new-array v6, v4, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v8, v2, v6}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-array v2, v4, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-static {v8, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v2, "call arg:"

    .line 197
    .line 198
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-array v1, v4, [Ljava/lang/Object;

    .line 209
    .line 210
    invoke-static {v8, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v5, v3}, Lcom/android/systemui/pluginlock/PluginLockProvider;->onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_d

    .line 217
    .line 218
    :cond_6
    const-string v0, "call: GET_DLS_DATA"

    .line 219
    .line 220
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 228
    .line 229
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 232
    .line 233
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 239
    .line 240
    invoke-direct {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;-><init>()V

    .line 241
    .line 242
    .line 243
    new-instance v2, Landroid/os/Bundle;

    .line 244
    .line 245
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 246
    .line 247
    .line 248
    new-instance v4, Landroid/os/Bundle;

    .line 249
    .line 250
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v5, Landroid/os/Bundle;

    .line 254
    .line 255
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 256
    .line 257
    .line 258
    new-instance v6, Landroid/os/Bundle;

    .line 259
    .line 260
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 261
    .line 262
    .line 263
    new-instance v7, Landroid/os/Bundle;

    .line 264
    .line 265
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 266
    .line 267
    .line 268
    const/4 v8, 0x0

    .line 269
    :goto_2
    iget-object v9, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 270
    .line 271
    check-cast v9, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    const-string v11, "PluginLockMediatorImpl"

    .line 278
    .line 279
    if-ge v8, v10, :cond_a

    .line 280
    .line 281
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 286
    .line 287
    if-eqz v9, :cond_9

    .line 288
    .line 289
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    check-cast v9, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 294
    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v12, "getDynamicLockData() listener: "

    .line 298
    .line 299
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    if-eqz v9, :cond_9

    .line 313
    .line 314
    instance-of v10, v9, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 315
    .line 316
    if-eqz v10, :cond_7

    .line 317
    .line 318
    const/4 v2, 0x0

    .line 319
    invoke-interface {v9, v2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const/4 v6, 0x1

    .line 324
    invoke-interface {v9, v6}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v10, "getDynamicLockData() bottom: "

    .line 331
    .line 332
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    new-instance v9, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v10, "getDynamicLockData() bottom_land: "

    .line 352
    .line 353
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_7
    instance-of v10, v9, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    .line 372
    .line 373
    if-eqz v10, :cond_8

    .line 374
    .line 375
    const/4 v4, 0x1

    .line 376
    invoke-interface {v9, v4}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    new-instance v9, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v10, "getDynamicLockData() faceWidget: "

    .line 383
    .line 384
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    goto :goto_3

    .line 402
    :cond_8
    instance-of v10, v9, Lcom/android/keyguard/SecLockIconViewController;

    .line 403
    .line 404
    if-eqz v10, :cond_9

    .line 405
    .line 406
    const/4 v5, 0x0

    .line 407
    invoke-interface {v9, v5}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    const/4 v7, 0x1

    .line 412
    invoke-interface {v9, v7}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v10, "getDynamicLockData() lockIcon: "

    .line 419
    .line 420
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    new-instance v9, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v10, "getDynamicLockData() lockIcon_land: "

    .line 440
    .line 441
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    const-string/jumbo v8, "shortcut_info"

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setShortcutInfo(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    const-string/jumbo v8, "shortcut_enable"

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v8

    .line 483
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setVisibility(Ljava/lang/Integer;)V

    .line 488
    .line 489
    .line 490
    const-string/jumbo v8, "shortcut_bottom"

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    invoke-virtual {v0, v9}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingBottom(Ljava/lang/Integer;)V

    .line 502
    .line 503
    .line 504
    const-string/jumbo v9, "shortcut_side"

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingSide(Ljava/lang/Integer;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingBottomLand(Ljava/lang/Integer;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    move-result v8

    .line 533
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingSideLand(Ljava/lang/Integer;)V

    .line 538
    .line 539
    .line 540
    const-string/jumbo v8, "shortcut_size"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v8

    .line 547
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setImageSize(Ljava/lang/Integer;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    const-string v8, "finger_print_height"

    .line 559
    .line 560
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setHeight(Ljava/lang/Integer;)V

    .line 569
    .line 570
    .line 571
    const-string v8, "finger_print_image_size"

    .line 572
    .line 573
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    move-result v8

    .line 577
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v8

    .line 581
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setImageSize(Ljava/lang/Integer;)V

    .line 582
    .line 583
    .line 584
    const-string v8, "finger_print_margin"

    .line 585
    .line 586
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setPaddingBottom(Ljava/lang/Integer;)V

    .line 595
    .line 596
    .line 597
    const-string v8, "finger_print_enabled"

    .line 598
    .line 599
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setEnabled(Ljava/lang/Boolean;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    const-string v8, "nio_gravity"

    .line 615
    .line 616
    const/16 v9, 0x11

    .line 617
    .line 618
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    const-string v10, "nio_gravity_land"

    .line 623
    .line 624
    invoke-virtual {v4, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 625
    .line 626
    .line 627
    move-result v9

    .line 628
    const-string v10, "noti_type"

    .line 629
    .line 630
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    move-result v10

    .line 634
    add-int/lit8 v12, v10, 0x1

    .line 635
    .line 636
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 637
    .line 638
    .line 639
    move-result-object v12

    .line 640
    invoke-virtual {v0, v12}, Lcom/android/systemui/pluginlock/model/NotificationData;->setNotiType(Ljava/lang/Integer;)V

    .line 641
    .line 642
    .line 643
    const-string v12, "noti_visibility"

    .line 644
    .line 645
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    move-result v12

    .line 649
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v12

    .line 653
    invoke-virtual {v0, v12}, Lcom/android/systemui/pluginlock/model/NotificationData;->setVisibility(Ljava/lang/Integer;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 657
    .line 658
    .line 659
    move-result-object v12

    .line 660
    const-string v13, "noti_top"

    .line 661
    .line 662
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    move-result v14

    .line 666
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 667
    .line 668
    .line 669
    move-result-object v14

    .line 670
    invoke-virtual {v12, v14}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setTopY(Ljava/lang/Integer;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 674
    .line 675
    .line 676
    move-result-object v12

    .line 677
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    move-result v14

    .line 681
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 682
    .line 683
    .line 684
    move-result-object v14

    .line 685
    invoke-virtual {v12, v14}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setTopYLand(Ljava/lang/Integer;)V

    .line 686
    .line 687
    .line 688
    const-string v12, "noti_number"

    .line 689
    .line 690
    if-nez v10, :cond_b

    .line 691
    .line 692
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 693
    .line 694
    .line 695
    move-result-object v14

    .line 696
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    move-result v15

    .line 700
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v15

    .line 704
    invoke-virtual {v14, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setNotiCardNumbers(Ljava/lang/Integer;)V

    .line 705
    .line 706
    .line 707
    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 708
    .line 709
    .line 710
    move-result-object v14

    .line 711
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    .line 713
    .line 714
    move-result-object v15

    .line 715
    invoke-virtual {v14, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setGravity(Ljava/lang/Integer;)V

    .line 716
    .line 717
    .line 718
    const-string v14, "nio_start"

    .line 719
    .line 720
    const v15, 0x800003

    .line 721
    .line 722
    .line 723
    if-ne v8, v15, :cond_c

    .line 724
    .line 725
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    const/4 v15, 0x0

    .line 730
    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 731
    .line 732
    .line 733
    move-result v14

    .line 734
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 735
    .line 736
    .line 737
    move-result-object v14

    .line 738
    invoke-virtual {v8, v14}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingStart(Ljava/lang/Integer;)V

    .line 739
    .line 740
    .line 741
    goto :goto_4

    .line 742
    :cond_c
    const v15, 0x800005

    .line 743
    .line 744
    .line 745
    if-ne v8, v15, :cond_d

    .line 746
    .line 747
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 748
    .line 749
    .line 750
    move-result-object v8

    .line 751
    const/4 v15, 0x0

    .line 752
    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 753
    .line 754
    .line 755
    move-result v14

    .line 756
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 757
    .line 758
    .line 759
    move-result-object v14

    .line 760
    invoke-virtual {v8, v14}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingEnd(Ljava/lang/Integer;)V

    .line 761
    .line 762
    .line 763
    goto :goto_4

    .line 764
    :cond_d
    const/4 v15, 0x0

    .line 765
    :goto_4
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 766
    .line 767
    .line 768
    move-result-object v8

    .line 769
    invoke-virtual {v2, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 770
    .line 771
    .line 772
    move-result v14

    .line 773
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 774
    .line 775
    .line 776
    move-result-object v14

    .line 777
    invoke-virtual {v8, v14}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setTopY(Ljava/lang/Integer;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    invoke-virtual {v6, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 785
    .line 786
    .line 787
    move-result v13

    .line 788
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 789
    .line 790
    .line 791
    move-result-object v13

    .line 792
    invoke-virtual {v8, v13}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setTopYLand(Ljava/lang/Integer;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 796
    .line 797
    .line 798
    move-result-object v8

    .line 799
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 800
    .line 801
    .line 802
    move-result-object v13

    .line 803
    invoke-virtual {v8, v13}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setGravityLand(Ljava/lang/Integer;)V

    .line 804
    .line 805
    .line 806
    const-string v8, "nio_start_land"

    .line 807
    .line 808
    const v13, 0x800003

    .line 809
    .line 810
    .line 811
    if-ne v9, v13, :cond_e

    .line 812
    .line 813
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 814
    .line 815
    .line 816
    move-result-object v9

    .line 817
    invoke-virtual {v4, v8, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 818
    .line 819
    .line 820
    move-result v8

    .line 821
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    invoke-virtual {v9, v8}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingStartLand(Ljava/lang/Integer;)V

    .line 826
    .line 827
    .line 828
    goto :goto_5

    .line 829
    :cond_e
    const v13, 0x800005

    .line 830
    .line 831
    .line 832
    if-ne v9, v13, :cond_f

    .line 833
    .line 834
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 835
    .line 836
    .line 837
    move-result-object v9

    .line 838
    invoke-virtual {v4, v8, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 839
    .line 840
    .line 841
    move-result v8

    .line 842
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    invoke-virtual {v9, v8}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingEndLand(Ljava/lang/Integer;)V

    .line 847
    .line 848
    .line 849
    :cond_f
    :goto_5
    if-nez v10, :cond_10

    .line 850
    .line 851
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    move-result v8

    .line 859
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setNotiCardNumbersLand(Ljava/lang/Integer;)V

    .line 864
    .line 865
    .line 866
    :cond_10
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    const-string v8, "help_text_height"

    .line 875
    .line 876
    const/4 v9, 0x0

    .line 877
    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 878
    .line 879
    .line 880
    move-result v8

    .line 881
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 882
    .line 883
    .line 884
    move-result-object v8

    .line 885
    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setHeight(Ljava/lang/Integer;)V

    .line 886
    .line 887
    .line 888
    const-string v8, "help_text_margin"

    .line 889
    .line 890
    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 891
    .line 892
    .line 893
    move-result v10

    .line 894
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setPaddingBottom(Ljava/lang/Integer;)V

    .line 899
    .line 900
    .line 901
    const-string v10, "help_text_visibility"

    .line 902
    .line 903
    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setVisibility(Ljava/lang/Integer;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setPaddingBottomLand(Ljava/lang/Integer;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 926
    .line 927
    .line 928
    move-result v2

    .line 929
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    const-string v6, "clock_type"

    .line 945
    .line 946
    const/4 v8, 0x2

    .line 947
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    invoke-virtual {v2, v6}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setClockType(I)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    const-string v6, "clock_gravity"

    .line 959
    .line 960
    const/16 v8, 0x11

    .line 961
    .line 962
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 963
    .line 964
    .line 965
    move-result v6

    .line 966
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 967
    .line 968
    .line 969
    move-result-object v6

    .line 970
    invoke-virtual {v2, v6}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setGravity(Ljava/lang/Integer;)V

    .line 971
    .line 972
    .line 973
    const-string v2, "clock_visibility"

    .line 974
    .line 975
    const/4 v6, 0x0

    .line 976
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setVisibility(Ljava/lang/Integer;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    const-string v8, "clock_scale"

    .line 992
    .line 993
    const/high16 v9, 0x3f800000    # 1.0f

    .line 994
    .line 995
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 996
    .line 997
    .line 998
    move-result v8

    .line 999
    invoke-virtual {v2, v8}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setScale(F)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    const-string v8, "clock_side_padding"

    .line 1007
    .line 1008
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1009
    .line 1010
    .line 1011
    move-result v10

    .line 1012
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v10

    .line 1016
    invoke-virtual {v2, v10}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingStart(Ljava/lang/Integer;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1024
    .line 1025
    .line 1026
    move-result v10

    .line 1027
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v10

    .line 1031
    invoke-virtual {v2, v10}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingEnd(Ljava/lang/Integer;)V

    .line 1032
    .line 1033
    .line 1034
    const-string v2, "clock_top"

    .line 1035
    .line 1036
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1037
    .line 1038
    .line 1039
    move-result v2

    .line 1040
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v2

    .line 1044
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setTopY(Ljava/lang/Integer;)V

    .line 1045
    .line 1046
    .line 1047
    const-string v2, "clock_bottom"

    .line 1048
    .line 1049
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v2

    .line 1057
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setBottomY(Ljava/lang/Integer;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    const-string v10, "clock_gravity_land"

    .line 1065
    .line 1066
    const/16 v12, 0x11

    .line 1067
    .line 1068
    invoke-virtual {v4, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1069
    .line 1070
    .line 1071
    move-result v10

    .line 1072
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v10

    .line 1076
    invoke-virtual {v2, v10}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setGravityLand(Ljava/lang/Integer;)V

    .line 1077
    .line 1078
    .line 1079
    const-string v2, "clock_visibility_land"

    .line 1080
    .line 1081
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1082
    .line 1083
    .line 1084
    move-result v2

    .line 1085
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    const-string v10, "clock_scale_land"

    .line 1097
    .line 1098
    invoke-virtual {v4, v10, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 1099
    .line 1100
    .line 1101
    move-result v9

    .line 1102
    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setScaleLand(F)V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    const-string v9, "clock_side_padding_land"

    .line 1110
    .line 1111
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1112
    .line 1113
    .line 1114
    move-result v10

    .line 1115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v10

    .line 1119
    invoke-virtual {v2, v10}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingStartLand(Ljava/lang/Integer;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1127
    .line 1128
    .line 1129
    move-result v10

    .line 1130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v10

    .line 1134
    invoke-virtual {v2, v10}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingEndLand(Ljava/lang/Integer;)V

    .line 1135
    .line 1136
    .line 1137
    const-string v2, "clock_top_land"

    .line 1138
    .line 1139
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v2

    .line 1147
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setTopYLand(Ljava/lang/Integer;)V

    .line 1148
    .line 1149
    .line 1150
    const-string v2, "clock_bottom_land"

    .line 1151
    .line 1152
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1153
    .line 1154
    .line 1155
    move-result v2

    .line 1156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setBottomYLand(Ljava/lang/Integer;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    const-string v2, "music_top"

    .line 1168
    .line 1169
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1170
    .line 1171
    .line 1172
    move-result v2

    .line 1173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setTopY(Ljava/lang/Integer;)V

    .line 1178
    .line 1179
    .line 1180
    const-string v2, "music_height"

    .line 1181
    .line 1182
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1183
    .line 1184
    .line 1185
    move-result v2

    .line 1186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setHeight(Ljava/lang/Integer;)V

    .line 1191
    .line 1192
    .line 1193
    const-string v2, "music_width"

    .line 1194
    .line 1195
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1196
    .line 1197
    .line 1198
    move-result v2

    .line 1199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v2

    .line 1203
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setWidth(Ljava/lang/Integer;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v2

    .line 1214
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingStart(Ljava/lang/Integer;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingEnd(Ljava/lang/Integer;)V

    .line 1226
    .line 1227
    .line 1228
    const-string v2, "music_gravity"

    .line 1229
    .line 1230
    const/16 v8, 0x11

    .line 1231
    .line 1232
    invoke-virtual {v4, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1233
    .line 1234
    .line 1235
    move-result v2

    .line 1236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setGravity(Ljava/lang/Integer;)V

    .line 1241
    .line 1242
    .line 1243
    const-string v2, "music_visibility"

    .line 1244
    .line 1245
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setVisibility(Ljava/lang/Integer;)V

    .line 1254
    .line 1255
    .line 1256
    const-string v2, "music_top_land"

    .line 1257
    .line 1258
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1259
    .line 1260
    .line 1261
    move-result v2

    .line 1262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setTopYLand(Ljava/lang/Integer;)V

    .line 1267
    .line 1268
    .line 1269
    const-string v2, "music_height_land"

    .line 1270
    .line 1271
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1272
    .line 1273
    .line 1274
    move-result v2

    .line 1275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setHeightLand(Ljava/lang/Integer;)V

    .line 1280
    .line 1281
    .line 1282
    const-string v2, "music_width_land"

    .line 1283
    .line 1284
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1285
    .line 1286
    .line 1287
    move-result v2

    .line 1288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v2

    .line 1292
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setWidthLand(Ljava/lang/Integer;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1296
    .line 1297
    .line 1298
    move-result v2

    .line 1299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingStartLand(Ljava/lang/Integer;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1307
    .line 1308
    .line 1309
    move-result v2

    .line 1310
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v2

    .line 1314
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingEndLand(Ljava/lang/Integer;)V

    .line 1315
    .line 1316
    .line 1317
    const-string v2, "music_gravity_land"

    .line 1318
    .line 1319
    invoke-virtual {v4, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setGravityLand(Ljava/lang/Integer;)V

    .line 1328
    .line 1329
    .line 1330
    const-string v2, "music_visibility_land"

    .line 1331
    .line 1332
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1333
    .line 1334
    .line 1335
    move-result v2

    .line 1336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v2

    .line 1340
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    const-string v2, "lock_icon_visibility"

    .line 1352
    .line 1353
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1354
    .line 1355
    .line 1356
    move-result v4

    .line 1357
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v4

    .line 1361
    invoke-virtual {v0, v4}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->setVisibility(Ljava/lang/Integer;)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    invoke-virtual {v7, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1373
    .line 1374
    .line 1375
    move-result v2

    .line 1376
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v2

    .line 1380
    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 1381
    .line 1382
    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    const-string v2, "getDynamicLockData() dlsData: "

    .line 1386
    .line 1387
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    new-instance v2, Lcom/google/gson/Gson;

    .line 1391
    .line 1392
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v2

    .line 1399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v0

    .line 1406
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    .line 1408
    .line 1409
    new-instance v0, Lcom/google/gson/Gson;

    .line 1410
    .line 1411
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v0

    .line 1418
    const-string v1, "dynamicLockData"

    .line 1419
    .line 1420
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .line 1422
    .line 1423
    goto/16 :goto_d

    .line 1424
    .line 1425
    :cond_11
    move-object v2, v5

    .line 1426
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 1427
    .line 1428
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v4

    .line 1432
    iget-object v6, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 1433
    .line 1434
    iget-object v7, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mContext:Landroid/content/Context;

    .line 1435
    .line 1436
    if-eqz v4, :cond_13

    .line 1437
    .line 1438
    iget-object v4, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1439
    .line 1440
    if-nez v4, :cond_12

    .line 1441
    .line 1442
    new-instance v4, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1443
    .line 1444
    invoke-direct {v4, v7, v6}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    .line 1445
    .line 1446
    .line 1447
    iput-object v4, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1448
    .line 1449
    :cond_12
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1450
    .line 1451
    iget-object v2, v2, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1452
    .line 1453
    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 1454
    .line 1455
    iget v2, v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 1456
    .line 1457
    const/4 v4, 0x1

    .line 1458
    if-ne v2, v4, :cond_15

    .line 1459
    .line 1460
    const/4 v2, 0x1

    .line 1461
    goto :goto_6

    .line 1462
    :cond_13
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1463
    .line 1464
    .line 1465
    move-result v4

    .line 1466
    if-eqz v4, :cond_15

    .line 1467
    .line 1468
    iget-object v4, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1469
    .line 1470
    if-nez v4, :cond_14

    .line 1471
    .line 1472
    new-instance v4, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1473
    .line 1474
    invoke-direct {v4, v7, v6}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    .line 1475
    .line 1476
    .line 1477
    iput-object v4, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1478
    .line 1479
    :cond_14
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1480
    .line 1481
    iget-object v2, v2, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1482
    .line 1483
    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 1484
    .line 1485
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 1486
    .line 1487
    .line 1488
    move-result v2

    .line 1489
    const-string v4, "isEnabled [isEnabled] "

    .line 1490
    .line 1491
    invoke-static {v4, v2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v4

    .line 1495
    const/4 v6, 0x0

    .line 1496
    new-array v6, v6, [Ljava/lang/Object;

    .line 1497
    .line 1498
    invoke-static {v14, v4, v6}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    .line 1500
    .line 1501
    goto :goto_6

    .line 1502
    :cond_15
    const/4 v2, 0x0

    .line 1503
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    const-string v6, "getShortcutTaskState [taskName] "

    .line 1506
    .line 1507
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    .line 1512
    .line 1513
    const-string v6, ",[isEnable] "

    .line 1514
    .line 1515
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v4

    .line 1525
    const/4 v6, 0x0

    .line 1526
    new-array v6, v6, [Ljava/lang/Object;

    .line 1527
    .line 1528
    move-object/from16 v7, v17

    .line 1529
    .line 1530
    invoke-static {v7, v4, v6}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1531
    .line 1532
    .line 1533
    new-instance v4, Landroid/os/Bundle;

    .line 1534
    .line 1535
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1536
    .line 1537
    .line 1538
    const-string v6, "isEnable"

    .line 1539
    .line 1540
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v3, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-static {v5, v3}, Lcom/android/systemui/pluginlock/PluginLockProvider;->onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V

    .line 1553
    .line 1554
    .line 1555
    goto/16 :goto_d

    .line 1556
    .line 1557
    :cond_16
    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 1558
    .line 1559
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1560
    .line 1561
    .line 1562
    move-result v0

    .line 1563
    if-eqz v0, :cond_18

    .line 1564
    .line 1565
    iget-object v0, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1566
    .line 1567
    if-eqz v0, :cond_2c

    .line 1568
    .line 1569
    const/4 v1, 0x0

    .line 1570
    new-array v1, v1, [Ljava/lang/Object;

    .line 1571
    .line 1572
    const-string v2, "PluginLockShortcutDnd"

    .line 1573
    .line 1574
    const-string v4, "excute"

    .line 1575
    .line 1576
    invoke-static {v2, v4, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    .line 1578
    .line 1579
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1580
    .line 1581
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 1582
    .line 1583
    iget v1, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 1584
    .line 1585
    const/4 v2, 0x1

    .line 1586
    if-ne v1, v2, :cond_17

    .line 1587
    .line 1588
    const/4 v1, 0x0

    .line 1589
    goto :goto_7

    .line 1590
    :cond_17
    const/4 v1, 0x1

    .line 1591
    :goto_7
    const-string v2, "Keyguard"

    .line 1592
    .line 1593
    const/4 v4, 0x0

    .line 1594
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    goto/16 :goto_d

    .line 1598
    .line 1599
    :cond_18
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result v0

    .line 1603
    if-eqz v0, :cond_2c

    .line 1604
    .line 1605
    iget-object v0, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1606
    .line 1607
    if-eqz v0, :cond_2c

    .line 1608
    .line 1609
    const/4 v1, 0x0

    .line 1610
    new-array v1, v1, [Ljava/lang/Object;

    .line 1611
    .line 1612
    const-string v2, "excute()"

    .line 1613
    .line 1614
    invoke-static {v14, v2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1618
    .line 1619
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 1620
    .line 1621
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 1622
    .line 1623
    .line 1624
    move-result v1

    .line 1625
    xor-int/lit8 v1, v1, 0x1

    .line 1626
    .line 1627
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 1628
    .line 1629
    .line 1630
    goto/16 :goto_d

    .line 1631
    .line 1632
    :cond_19
    move-object/from16 v7, v17

    .line 1633
    .line 1634
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v0

    .line 1638
    const/4 v1, 0x0

    .line 1639
    new-array v2, v1, [Ljava/lang/Object;

    .line 1640
    .line 1641
    invoke-static {v8, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    .line 1643
    .line 1644
    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 1645
    .line 1646
    new-array v0, v1, [Ljava/lang/Object;

    .line 1647
    .line 1648
    const-string/jumbo v1, "removeShortcutTaskListener"

    .line 1649
    .line 1650
    .line 1651
    invoke-static {v7, v1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    .line 1653
    .line 1654
    iget-object v0, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1655
    .line 1656
    if-eqz v0, :cond_1a

    .line 1657
    .line 1658
    iget-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1659
    .line 1660
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 1661
    .line 1662
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 1663
    .line 1664
    .line 1665
    const/4 v0, 0x0

    .line 1666
    iput-object v0, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 1667
    .line 1668
    :cond_1a
    iget-object v0, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1669
    .line 1670
    if-eqz v0, :cond_2c

    .line 1671
    .line 1672
    iget-object v1, v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1673
    .line 1674
    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 1675
    .line 1676
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 1677
    .line 1678
    monitor-enter v2

    .line 1679
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 1680
    .line 1681
    .line 1682
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    const/4 v0, 0x0

    .line 1684
    iput-object v0, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 1685
    .line 1686
    goto/16 :goto_d

    .line 1687
    .line 1688
    :catchall_0
    move-exception v0

    .line 1689
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1690
    throw v0

    .line 1691
    :cond_1b
    const-string/jumbo v0, "screen"

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1695
    .line 1696
    .line 1697
    move-result v0

    .line 1698
    const-string/jumbo v1, "wallpaper_type"

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1702
    .line 1703
    .line 1704
    move-result v1

    .line 1705
    const-string/jumbo v4, "source_type"

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1709
    .line 1710
    .line 1711
    move-result v4

    .line 1712
    const-string/jumbo v5, "source"

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v2

    .line 1719
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v5

    .line 1723
    check-cast v5, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1724
    .line 1725
    check-cast v5, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 1726
    .line 1727
    iget-object v6, v5, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 1728
    .line 1729
    if-eqz v6, :cond_2c

    .line 1730
    .line 1731
    const-string v7, "fillWallpaperData screen:"

    .line 1732
    .line 1733
    invoke-static {v7, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v7

    .line 1737
    const/4 v8, 0x0

    .line 1738
    new-array v8, v8, [Ljava/lang/Object;

    .line 1739
    .line 1740
    move-object/from16 v9, p0

    .line 1741
    .line 1742
    invoke-static {v9, v7, v8}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1743
    .line 1744
    .line 1745
    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 1746
    .line 1747
    iget-object v6, v6, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 1748
    .line 1749
    if-eqz v6, :cond_2c

    .line 1750
    .line 1751
    iget-object v5, v5, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 1752
    .line 1753
    const/4 v7, 0x1

    .line 1754
    if-ne v0, v7, :cond_1c

    .line 1755
    .line 1756
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 1757
    .line 1758
    .line 1759
    move-result v7

    .line 1760
    if-eqz v7, :cond_1c

    .line 1761
    .line 1762
    goto/16 :goto_d

    .line 1763
    .line 1764
    :cond_1c
    iget-object v6, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 1765
    .line 1766
    check-cast v6, Ljava/util/ArrayList;

    .line 1767
    .line 1768
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v6

    .line 1772
    check-cast v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 1773
    .line 1774
    iget v7, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 1775
    .line 1776
    const/4 v8, -0x2

    .line 1777
    if-eq v7, v8, :cond_1e

    .line 1778
    .line 1779
    iget-object v7, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1780
    .line 1781
    if-nez v7, :cond_1d

    .line 1782
    .line 1783
    iget-object v7, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 1784
    .line 1785
    if-nez v7, :cond_1d

    .line 1786
    .line 1787
    iget-object v7, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 1788
    .line 1789
    if-eqz v7, :cond_1e

    .line 1790
    .line 1791
    :cond_1d
    const/4 v7, 0x1

    .line 1792
    goto :goto_8

    .line 1793
    :cond_1e
    const/4 v7, 0x0

    .line 1794
    :goto_8
    const-string v8, "fillData() screen:"

    .line 1795
    .line 1796
    const-string v9, ", wallpaperType:"

    .line 1797
    .line 1798
    const-string v10, ", sourceType:"

    .line 1799
    .line 1800
    invoke-static {v8, v0, v9, v1, v10}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v0

    .line 1804
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    .line 1807
    const-string v8, ",source:"

    .line 1808
    .line 1809
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    .line 1815
    const-string v8, ", hasData:"

    .line 1816
    .line 1817
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    .line 1820
    const-string v8, "PluginLockWallpaper"

    .line 1821
    .line 1822
    invoke-static {v0, v7, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1823
    .line 1824
    .line 1825
    if-nez v7, :cond_2c

    .line 1826
    .line 1827
    iput v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 1828
    .line 1829
    if-eqz v4, :cond_22

    .line 1830
    .line 1831
    const/4 v0, 0x1

    .line 1832
    if-eq v4, v0, :cond_1f

    .line 1833
    .line 1834
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    .line 1835
    .line 1836
    .line 1837
    goto/16 :goto_d

    .line 1838
    .line 1839
    :cond_1f
    const/4 v0, 0x0

    .line 1840
    :try_start_2
    iput-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 1841
    .line 1842
    iput-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1843
    .line 1844
    iput-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 1845
    .line 1846
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    iget v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 1851
    .line 1852
    if-ne v1, v0, :cond_20

    .line 1853
    .line 1854
    iget-object v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1855
    .line 1856
    if-nez v1, :cond_2c

    .line 1857
    .line 1858
    :cond_20
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v1

    .line 1862
    invoke-static {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v1

    .line 1866
    const/4 v2, 0x0

    .line 1867
    iput-object v2, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 1868
    .line 1869
    iput-object v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1870
    .line 1871
    iput-object v2, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 1872
    .line 1873
    if-nez v1, :cond_21

    .line 1874
    .line 1875
    const/4 v1, 0x0

    .line 1876
    iput v1, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 1877
    .line 1878
    :cond_21
    iput v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1879
    .line 1880
    goto/16 :goto_d

    .line 1881
    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1884
    .line 1885
    const-string v2, "couldn\'t load bitmap:"

    .line 1886
    .line 1887
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1888
    .line 1889
    .line 1890
    invoke-static {v0, v1, v8}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1891
    .line 1892
    .line 1893
    goto/16 :goto_d

    .line 1894
    .line 1895
    :cond_22
    const/4 v0, 0x0

    .line 1896
    iput-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 1897
    .line 1898
    iput-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 1899
    .line 1900
    iput-object v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 1901
    .line 1902
    const/4 v0, 0x0

    .line 1903
    iput v0, v6, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 1904
    .line 1905
    goto/16 :goto_d

    .line 1906
    .line 1907
    :cond_23
    move-object/from16 v9, p0

    .line 1908
    .line 1909
    const/4 v0, 0x0

    .line 1910
    sget-boolean v4, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 1911
    .line 1912
    if-eqz v4, :cond_2b

    .line 1913
    .line 1914
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1915
    .line 1916
    .line 1917
    move-result v5

    .line 1918
    if-nez v5, :cond_2b

    .line 1919
    .line 1920
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1921
    .line 1922
    .line 1923
    move-result v1

    .line 1924
    const/4 v5, 0x1

    .line 1925
    if-ne v1, v5, :cond_2b

    .line 1926
    .line 1927
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v1

    .line 1931
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1932
    .line 1933
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 1934
    .line 1935
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1936
    .line 1937
    .line 1938
    const-string v5, "getWallpaperIndex: strIndex = "

    .line 1939
    .line 1940
    if-eqz v4, :cond_2a

    .line 1941
    .line 1942
    if-eqz v2, :cond_24

    .line 1943
    .line 1944
    const-string v0, "caller"

    .line 1945
    .line 1946
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v0

    .line 1950
    const-string v4, "multi_pack_size"

    .line 1951
    .line 1952
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1953
    .line 1954
    .line 1955
    move-result v2

    .line 1956
    goto :goto_9

    .line 1957
    :cond_24
    const/4 v2, -0x1

    .line 1958
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    const-string v6, "getWallpaperIndex: screen = 1, source = "

    .line 1961
    .line 1962
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1963
    .line 1964
    .line 1965
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    .line 1967
    .line 1968
    const-string v6, ", size = "

    .line 1969
    .line 1970
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v4

    .line 1980
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    .line 1982
    .line 1983
    const/4 v4, 0x1

    .line 1984
    invoke-virtual {v1, v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getHomeWallpaperPath(I)Ljava/lang/String;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v1

    .line 1988
    if-nez v1, :cond_26

    .line 1989
    .line 1990
    :cond_25
    const/4 v0, -0x1

    .line 1991
    goto/16 :goto_c

    .line 1992
    .line 1993
    :cond_26
    :try_start_3
    const-string v6, "/"

    .line 1994
    .line 1995
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1996
    .line 1997
    .line 1998
    move-result v6

    .line 1999
    add-int/2addr v6, v4

    .line 2000
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v1

    .line 2004
    const-string v4, "."

    .line 2005
    .line 2006
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2007
    .line 2008
    .line 2009
    move-result v4

    .line 2010
    if-lez v4, :cond_27

    .line 2011
    .line 2012
    const/4 v6, 0x0

    .line 2013
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v1

    .line 2017
    :cond_27
    const-string v4, "[^0-9]"

    .line 2018
    .line 2019
    const-string v6, ""

    .line 2020
    .line 2021
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v1

    .line 2025
    const-string v4, "^(0|[1-9][0-9]*)$"

    .line 2026
    .line 2027
    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 2028
    .line 2029
    .line 2030
    move-result v4

    .line 2031
    if-eqz v4, :cond_25

    .line 2032
    .line 2033
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2034
    .line 2035
    .line 2036
    move-result v4

    .line 2037
    const-string v6, "Cover"

    .line 2038
    .line 2039
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2040
    .line 2041
    .line 2042
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2043
    if-eqz v0, :cond_28

    .line 2044
    .line 2045
    add-int/lit8 v4, v4, -0x1

    .line 2046
    .line 2047
    const/4 v0, -0x1

    .line 2048
    if-ne v4, v0, :cond_29

    .line 2049
    .line 2050
    add-int/lit8 v2, v2, -0x1

    .line 2051
    .line 2052
    move/from16 v18, v2

    .line 2053
    .line 2054
    move v2, v0

    .line 2055
    move/from16 v0, v18

    .line 2056
    .line 2057
    goto :goto_a

    .line 2058
    :cond_28
    const/4 v0, -0x1

    .line 2059
    :cond_29
    move v2, v0

    .line 2060
    move v0, v4

    .line 2061
    :goto_a
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2062
    .line 2063
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    .line 2068
    .line 2069
    const-string v1, ", index = "

    .line 2070
    .line 2071
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2075
    .line 2076
    .line 2077
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v1

    .line 2081
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2082
    .line 2083
    .line 2084
    goto :goto_c

    .line 2085
    :catch_1
    move-exception v0

    .line 2086
    goto :goto_b

    .line 2087
    :catch_2
    move-exception v0

    .line 2088
    const/4 v2, -0x1

    .line 2089
    :goto_b
    const-string v1, "getWallpaperIndex: "

    .line 2090
    .line 2091
    invoke-static {v1, v0, v9}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2092
    .line 2093
    .line 2094
    move v0, v2

    .line 2095
    goto :goto_c

    .line 2096
    :cond_2a
    const/4 v0, -0x1

    .line 2097
    const-string v1, "getWallpaperIndex: Not supported yet! screen = 1"

    .line 2098
    .line 2099
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    .line 2101
    .line 2102
    goto :goto_c

    .line 2103
    :cond_2b
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v0

    .line 2107
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 2108
    .line 2109
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 2110
    .line 2111
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperIndex()I

    .line 2112
    .line 2113
    .line 2114
    move-result v0

    .line 2115
    :goto_c
    const-string/jumbo v1, "wallpaper_index"

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2119
    .line 2120
    .line 2121
    :cond_2c
    :goto_d
    return-object v3

    .line 2122
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7442f694 -> :sswitch_5
        -0x502191fd -> :sswitch_4
        -0xd3bfee6 -> :sswitch_3
        0x5e253c6 -> :sswitch_2
        0x20434459 -> :sswitch_1
        0x3c1e0147 -> :sswitch_0
    .end sparse-switch
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
    const/4 p0, 0x1

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
