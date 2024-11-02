.class Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;
.super Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->updateSbixbyStateChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/SystemUICommandActionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;->this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppStateRequested()Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/google/gson/JsonParser;

    .line 14
    .line 15
    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/google/gson/JsonArray;

    .line 19
    .line 20
    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/google/gson/JsonArray;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-boolean v5, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    .line 29
    .line 30
    const-string/jumbo v6, "type"

    .line 31
    .line 32
    .line 33
    if-eqz v5, :cond_9

    .line 34
    .line 35
    iget-object v5, v0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;->this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    .line 36
    .line 37
    iget-object v5, v5, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 40
    .line 41
    if-eqz v5, :cond_9

    .line 42
    .line 43
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 44
    .line 45
    if-eqz v5, :cond_9

    .line 46
    .line 47
    new-instance v7, Lcom/google/gson/JsonObject;

    .line 48
    .line 49
    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-boolean v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 53
    .line 54
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const-string v9, "isShowNotiScreen"

    .line 59
    .line 60
    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 64
    .line 65
    if-eqz v8, :cond_0

    .line 66
    .line 67
    const-string v8, "detail"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-boolean v9, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 71
    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    if-nez v8, :cond_1

    .line 75
    .line 76
    const-string v8, "group"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string v8, "list"

    .line 80
    .line 81
    :goto_0
    const-string v9, "currentPageLevel"

    .line 82
    .line 83
    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    new-instance v9, Lcom/google/gson/JsonArray;

    .line 96
    .line 97
    invoke-direct {v9}, Lcom/google/gson/JsonArray;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v12, 0x0

    .line 102
    :goto_1
    if-ge v11, v8, :cond_6

    .line 103
    .line 104
    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    sget-object v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    check-cast v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 116
    .line 117
    iget-object v13, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 118
    .line 119
    iget-object v14, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 120
    .line 121
    invoke-virtual {v14, v13}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    iget-object v14, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationVisible(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    iget-boolean v15, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 132
    .line 133
    const-string/jumbo v10, "notiVisible"

    .line 134
    .line 135
    .line 136
    move/from16 v16, v8

    .line 137
    .line 138
    const-string/jumbo v8, "notiAppname"

    .line 139
    .line 140
    .line 141
    move-object/from16 v17, v3

    .line 142
    .line 143
    const-string/jumbo v3, "notiTitle"

    .line 144
    .line 145
    .line 146
    move-object/from16 v18, v4

    .line 147
    .line 148
    const-string/jumbo v4, "notiID"

    .line 149
    .line 150
    .line 151
    if-eqz v15, :cond_2

    .line 152
    .line 153
    new-instance v15, Lcom/google/gson/JsonObject;

    .line 154
    .line 155
    invoke-direct {v15}, Lcom/google/gson/JsonObject;-><init>()V

    .line 156
    .line 157
    .line 158
    move-object/from16 v19, v2

    .line 159
    .line 160
    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v15, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v15, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v15, v8, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v15, v10, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9, v15}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v12, v12, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_2
    move-object/from16 v19, v2

    .line 191
    .line 192
    :goto_2
    iget-boolean v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    .line 193
    .line 194
    if-eqz v2, :cond_5

    .line 195
    .line 196
    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 197
    .line 198
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    const/4 v15, 0x0

    .line 205
    :goto_3
    if-ge v15, v13, :cond_5

    .line 206
    .line 207
    move/from16 v20, v13

    .line 208
    .line 209
    new-instance v13, Lcom/google/gson/JsonObject;

    .line 210
    .line 211
    invoke-direct {v13}, Lcom/google/gson/JsonObject;-><init>()V

    .line 212
    .line 213
    .line 214
    move/from16 v21, v14

    .line 215
    .line 216
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 217
    .line 218
    check-cast v14, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 225
    .line 226
    move-object/from16 v22, v2

    .line 227
    .line 228
    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 229
    .line 230
    invoke-virtual {v2, v14}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iget-boolean v14, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 235
    .line 236
    if-eqz v14, :cond_4

    .line 237
    .line 238
    iget-boolean v14, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 239
    .line 240
    if-nez v14, :cond_3

    .line 241
    .line 242
    iget-boolean v14, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 243
    .line 244
    if-nez v14, :cond_3

    .line 245
    .line 246
    move-object/from16 v23, v5

    .line 247
    .line 248
    move/from16 v14, v21

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_3
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationVisible(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    move-object/from16 v23, v5

    .line 258
    .line 259
    :goto_4
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v13, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v13, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v13, v8, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v13, v10, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v13}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v12, v12, 0x1

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_4
    move-object/from16 v23, v5

    .line 290
    .line 291
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 292
    .line 293
    move/from16 v13, v20

    .line 294
    .line 295
    move/from16 v14, v21

    .line 296
    .line 297
    move-object/from16 v2, v22

    .line 298
    .line 299
    move-object/from16 v5, v23

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_5
    move-object/from16 v23, v5

    .line 303
    .line 304
    add-int/lit8 v11, v11, 0x1

    .line 305
    .line 306
    move/from16 v8, v16

    .line 307
    .line 308
    move-object/from16 v3, v17

    .line 309
    .line 310
    move-object/from16 v4, v18

    .line 311
    .line 312
    move-object/from16 v2, v19

    .line 313
    .line 314
    move-object/from16 v5, v23

    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :cond_6
    move-object/from16 v19, v2

    .line 319
    .line 320
    move-object/from16 v17, v3

    .line 321
    .line 322
    move-object/from16 v18, v4

    .line 323
    .line 324
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    if-nez v2, :cond_7

    .line 329
    .line 330
    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_7
    new-instance v3, Lcom/google/gson/JsonPrimitive;

    .line 334
    .line 335
    invoke-direct {v3, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    .line 336
    .line 337
    .line 338
    move-object v2, v3

    .line 339
    :goto_6
    const-string/jumbo v3, "notiCount"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 343
    .line 344
    .line 345
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 346
    .line 347
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 348
    .line 349
    .line 350
    new-instance v3, Lcom/google/gson/JsonArray;

    .line 351
    .line 352
    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 353
    .line 354
    .line 355
    new-instance v4, Lcom/google/gson/JsonObject;

    .line 356
    .line 357
    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string/jumbo v5, "viv.systemApp.CoverReplicableNotiList"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance v5, Lcom/google/gson/JsonArray;

    .line 367
    .line 368
    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    .line 369
    .line 370
    .line 371
    new-instance v8, Lcom/google/gson/JsonObject;

    .line 372
    .line 373
    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v10, "coverScreenInfo"

    .line 377
    .line 378
    invoke-virtual {v8, v10, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 379
    .line 380
    .line 381
    const-string v7, "coverNotificationList"

    .line 382
    .line 383
    invoke-virtual {v8, v7, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 387
    .line 388
    .line 389
    const-string/jumbo v7, "values"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v7, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 396
    .line 397
    .line 398
    const-string v4, "concepts"

    .line 399
    .line 400
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 401
    .line 402
    .line 403
    const-string v3, "capsuleId"

    .line 404
    .line 405
    const-string/jumbo v4, "viv.systemApp"

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v3, "appId"

    .line 412
    .line 413
    const-string v4, "com.sec.android.app.system"

    .line 414
    .line 415
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const v3, 0x47869db3

    .line 419
    .line 420
    .line 421
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    if-nez v3, :cond_8

    .line 426
    .line 427
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_8
    new-instance v4, Lcom/google/gson/JsonPrimitive;

    .line 431
    .line 432
    invoke-direct {v4, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    .line 433
    .line 434
    .line 435
    move-object v3, v4

    .line 436
    :goto_7
    const-string v4, "appVersionCode"

    .line 437
    .line 438
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    goto :goto_8

    .line 446
    :cond_9
    move-object/from16 v19, v2

    .line 447
    .line 448
    move-object/from16 v17, v3

    .line 449
    .line 450
    move-object/from16 v18, v4

    .line 451
    .line 452
    const/4 v2, 0x0

    .line 453
    :goto_8
    if-eqz v2, :cond_a

    .line 454
    .line 455
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Lcom/google/gson/JsonObject;

    .line 460
    .line 461
    goto :goto_9

    .line 462
    :cond_a
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 463
    .line 464
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 465
    .line 466
    .line 467
    :goto_9
    const-string v3, "CloseQuickPanelScreen"

    .line 468
    .line 469
    invoke-virtual {v1, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v0, v0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;->this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    .line 473
    .line 474
    invoke-static {v0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->-$$Nest$misPanelBarExpanded(Lcom/android/systemui/bixby2/SystemUICommandActionHandler;)Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const-string/jumbo v3, "panelExpanded"

    .line 483
    .line 484
    .line 485
    move-object/from16 v4, v19

    .line 486
    .line 487
    invoke-virtual {v4, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 488
    .line 489
    .line 490
    move-object/from16 v0, v18

    .line 491
    .line 492
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 493
    .line 494
    .line 495
    const-string/jumbo v3, "value"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 499
    .line 500
    .line 501
    move-object/from16 v0, v17

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 504
    .line 505
    .line 506
    const-string v1, "llmContext"

    .line 507
    .line 508
    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 509
    .line 510
    .line 511
    const-string v0, "llmCapsuleId"

    .line 512
    .line 513
    const-string/jumbo v1, "samsung.systemApp"

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string/jumbo v1, "onAppStateRequested: "

    .line 522
    .line 523
    .line 524
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const-string v1, "SystemUICommandActionHandler"

    .line 535
    .line 536
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    return-object v0
.end method

.method public onCapsuleIdRequested()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "viv.systemApp"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
