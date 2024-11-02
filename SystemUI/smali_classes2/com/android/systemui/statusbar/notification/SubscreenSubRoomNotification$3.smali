.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 8
    .line 9
    const-string v3, "S.S.N."

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v2, :cond_17

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-gt v2, v5, :cond_0

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v2, v5, :cond_17

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 46
    .line 47
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    .line 48
    .line 49
    goto/16 :goto_e

    .line 50
    .line 51
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 52
    .line 53
    if-eqz v2, :cond_17

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x0

    .line 69
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    if-eqz v9, :cond_e

    .line 91
    .line 92
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Ljava/util/Map$Entry;

    .line 97
    .line 98
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 107
    .line 108
    if-eqz v11, :cond_3

    .line 109
    .line 110
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const/4 v11, 0x0

    .line 116
    :goto_2
    iget-object v12, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 117
    .line 118
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-static {v11, v12, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-eqz v11, :cond_2

    .line 127
    .line 128
    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    .line 134
    .line 135
    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    check-cast v12, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    .line 140
    .line 141
    if-eqz v12, :cond_4

    .line 142
    .line 143
    new-instance v12, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo v13, "updateGroupListArray parent - already group Item  - mainListItem != null : "

    .line 146
    .line 147
    .line 148
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 166
    .line 167
    if-eqz v12, :cond_5

    .line 168
    .line 169
    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 170
    .line 171
    if-eqz v12, :cond_5

    .line 172
    .line 173
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    const/4 v12, 0x0

    .line 183
    :goto_3
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    move v13, v4

    .line 191
    move v14, v13

    .line 192
    :goto_4
    if-ge v13, v12, :cond_9

    .line 193
    .line 194
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 195
    .line 196
    if-eqz v15, :cond_6

    .line 197
    .line 198
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 199
    .line 200
    if-eqz v15, :cond_6

    .line 201
    .line 202
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 203
    .line 204
    if-eqz v15, :cond_6

    .line 205
    .line 206
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    check-cast v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_6
    const/4 v15, 0x0

    .line 214
    :goto_5
    if-eqz v15, :cond_7

    .line 215
    .line 216
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_7
    const/4 v15, 0x0

    .line 220
    :goto_6
    invoke-static {v15, v11, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 221
    .line 222
    .line 223
    move-result v15

    .line 224
    if-eqz v15, :cond_8

    .line 225
    .line 226
    new-instance v14, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string/jumbo v15, "updateGroupListArray parent - already Item - searchItem : "

    .line 229
    .line 230
    .line 231
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move v14, v5

    .line 248
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_9
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 252
    .line 253
    .line 254
    if-eqz v14, :cond_a

    .line 255
    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :cond_a
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 259
    .line 260
    if-eqz v10, :cond_b

    .line 261
    .line 262
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 263
    .line 264
    if-eqz v10, :cond_b

    .line 265
    .line 266
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 267
    .line 268
    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    goto :goto_7

    .line 273
    :cond_b
    const/4 v9, 0x0

    .line 274
    :goto_7
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 275
    .line 276
    if-eqz v10, :cond_c

    .line 277
    .line 278
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 279
    .line 280
    if-eqz v10, :cond_c

    .line 281
    .line 282
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 283
    .line 284
    if-eqz v10, :cond_c

    .line 285
    .line 286
    invoke-virtual {v10, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_c
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 290
    .line 291
    if-eqz v9, :cond_d

    .line 292
    .line 293
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 294
    .line 295
    if-eqz v9, :cond_d

    .line 296
    .line 297
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 298
    .line 299
    .line 300
    :cond_d
    const-string/jumbo v9, "updateGroupListArray parent - add Item  : "

    .line 301
    .line 302
    .line 303
    invoke-static {v9, v11, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_f

    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    check-cast v6, Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_f
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 329
    .line 330
    if-eqz v2, :cond_10

    .line 331
    .line 332
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 333
    .line 334
    if-eqz v2, :cond_10

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    goto :goto_9

    .line 345
    :cond_10
    const/4 v2, 0x0

    .line 346
    :goto_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    move v6, v4

    .line 354
    :goto_a
    if-ge v6, v2, :cond_17

    .line 355
    .line 356
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 357
    .line 358
    if-eqz v7, :cond_11

    .line 359
    .line 360
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 361
    .line 362
    if-eqz v7, :cond_11

    .line 363
    .line 364
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 365
    .line 366
    if-eqz v7, :cond_11

    .line 367
    .line 368
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_11
    const/4 v7, 0x0

    .line 376
    :goto_b
    if-eqz v7, :cond_12

    .line 377
    .line 378
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 379
    .line 380
    goto :goto_c

    .line 381
    :cond_12
    const/4 v7, 0x0

    .line 382
    :goto_c
    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 387
    .line 388
    if-eqz v8, :cond_16

    .line 389
    .line 390
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 391
    .line 392
    if-eqz v2, :cond_13

    .line 393
    .line 394
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 395
    .line 396
    if-eqz v2, :cond_13

    .line 397
    .line 398
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 399
    .line 400
    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    goto :goto_d

    .line 405
    :cond_13
    const/4 v2, 0x0

    .line 406
    :goto_d
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 407
    .line 408
    if-eqz v9, :cond_14

    .line 409
    .line 410
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 411
    .line 412
    if-eqz v9, :cond_14

    .line 413
    .line 414
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 415
    .line 416
    if-eqz v9, :cond_14

    .line 417
    .line 418
    invoke-virtual {v9, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 423
    .line 424
    :cond_14
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 425
    .line 426
    if-eqz v2, :cond_15

    .line 427
    .line 428
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 429
    .line 430
    if-eqz v2, :cond_15

    .line 431
    .line 432
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 433
    .line 434
    xor-int/2addr v0, v5

    .line 435
    add-int/2addr v6, v0

    .line 436
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 437
    .line 438
    .line 439
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    const-string/jumbo v2, "updateGroupListArray parent - update Item  : "

    .line 442
    .line 443
    .line 444
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    invoke-static {v10}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    goto :goto_e

    .line 467
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_17
    :goto_e
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiShowBlocked:Z

    .line 475
    .line 476
    if-eqz v2, :cond_18

    .line 477
    .line 478
    goto/16 :goto_45

    .line 479
    .line 480
    :cond_18
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    if-eqz v2, :cond_72

    .line 485
    .line 486
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsChangedToFoldState:Z

    .line 487
    .line 488
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    .line 489
    .line 490
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    .line 491
    .line 492
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    .line 493
    .line 494
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    .line 495
    .line 496
    if-eqz v2, :cond_1a

    .line 497
    .line 498
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsKeyguardStateWhenAddLockscreenNotificationInfoArray:Z

    .line 499
    .line 500
    if-eqz v2, :cond_1a

    .line 501
    .line 502
    const-string/jumbo v2, "updateMainListArray - changeFoldState"

    .line 503
    .line 504
    .line 505
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 515
    .line 516
    .line 517
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    .line 518
    .line 519
    if-nez v2, :cond_19

    .line 520
    .line 521
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 522
    .line 523
    .line 524
    :cond_19
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsChangedToFoldState:Z

    .line 525
    .line 526
    :cond_1a
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    if-nez v2, :cond_61

    .line 531
    .line 532
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    .line 533
    .line 534
    if-eqz v2, :cond_1b

    .line 535
    .line 536
    goto/16 :goto_3f

    .line 537
    .line 538
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    new-instance v9, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .line 546
    .line 547
    new-instance v10, Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .line 551
    .line 552
    move v11, v4

    .line 553
    :goto_f
    if-ge v4, v2, :cond_4f

    .line 554
    .line 555
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v12

    .line 559
    check-cast v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 560
    .line 561
    iget-object v13, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 562
    .line 563
    invoke-virtual {v6, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v13

    .line 567
    check-cast v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    .line 568
    .line 569
    if-eqz v13, :cond_1c

    .line 570
    .line 571
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 572
    .line 573
    goto :goto_10

    .line 574
    :cond_1c
    const/4 v13, 0x0

    .line 575
    :goto_10
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 576
    .line 577
    if-nez v13, :cond_3a

    .line 578
    .line 579
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    .line 580
    .line 581
    if-eqz v13, :cond_1d

    .line 582
    .line 583
    iget-object v13, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v7, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v13

    .line 589
    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 590
    .line 591
    if-eqz v13, :cond_1d

    .line 592
    .line 593
    iget-object v11, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 594
    .line 595
    const-string/jumbo v13, "updateMainListArray add Item - mIsNotificationRemoved: "

    .line 596
    .line 597
    .line 598
    invoke-static {v13, v11, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget-object v11, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 602
    .line 603
    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    goto :goto_11

    .line 607
    :cond_1d
    iget-object v13, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 608
    .line 609
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 610
    .line 611
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkBubbleLastHistoryReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 612
    .line 613
    .line 614
    move-result v13

    .line 615
    if-eqz v13, :cond_1e

    .line 616
    .line 617
    iget-object v11, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 618
    .line 619
    const-string/jumbo v13, "updateMainListArray add Item - mBubbleReplyEntry: "

    .line 620
    .line 621
    .line 622
    invoke-static {v13, v11, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    iget-object v11, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 626
    .line 627
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 628
    .line 629
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 630
    .line 631
    .line 632
    goto :goto_11

    .line 633
    :cond_1e
    iget-object v13, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 634
    .line 635
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 636
    .line 637
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isBubbleNotificationSuppressed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 638
    .line 639
    .line 640
    move-result v13

    .line 641
    if-eqz v13, :cond_20

    .line 642
    .line 643
    iget-object v11, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 644
    .line 645
    const-string/jumbo v12, "updateMainListArray add Item - isBubbleNotificationSuppressed: "

    .line 646
    .line 647
    .line 648
    invoke-static {v12, v11, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    :goto_11
    move/from16 p0, v2

    .line 652
    .line 653
    :cond_1f
    :goto_12
    move-object/from16 v17, v7

    .line 654
    .line 655
    goto/16 :goto_35

    .line 656
    .line 657
    :cond_20
    iget-object v13, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 658
    .line 659
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 660
    .line 661
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 662
    .line 663
    .line 664
    move-result-object v13

    .line 665
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 666
    .line 667
    .line 668
    move-result v13

    .line 669
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 670
    .line 671
    .line 672
    move-result v15

    .line 673
    if-nez v15, :cond_2c

    .line 674
    .line 675
    if-nez v13, :cond_2c

    .line 676
    .line 677
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 678
    .line 679
    if-eqz v13, :cond_21

    .line 680
    .line 681
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 682
    .line 683
    if-eqz v13, :cond_21

    .line 684
    .line 685
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 686
    .line 687
    .line 688
    move-result v13

    .line 689
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    goto :goto_13

    .line 694
    :cond_21
    const/4 v13, 0x0

    .line 695
    :goto_13
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 699
    .line 700
    .line 701
    move-result v13

    .line 702
    :goto_14
    if-ge v11, v13, :cond_2b

    .line 703
    .line 704
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 705
    .line 706
    if-eqz v15, :cond_22

    .line 707
    .line 708
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 709
    .line 710
    if-eqz v15, :cond_22

    .line 711
    .line 712
    sget-object v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 713
    .line 714
    if-eqz v15, :cond_22

    .line 715
    .line 716
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v15

    .line 720
    check-cast v15, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 721
    .line 722
    goto :goto_15

    .line 723
    :cond_22
    const/4 v15, 0x0

    .line 724
    :goto_15
    move/from16 p0, v2

    .line 725
    .line 726
    if-eqz v15, :cond_23

    .line 727
    .line 728
    iget-object v2, v15, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 729
    .line 730
    if-eqz v2, :cond_23

    .line 731
    .line 732
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    if-eqz v2, :cond_23

    .line 737
    .line 738
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    goto :goto_16

    .line 747
    :cond_23
    const/4 v2, 0x0

    .line 748
    :goto_16
    if-eqz v2, :cond_29

    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    if-eqz v2, :cond_29

    .line 755
    .line 756
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 757
    .line 758
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    move/from16 v16, v13

    .line 763
    .line 764
    if-eqz v15, :cond_24

    .line 765
    .line 766
    iget-object v13, v15, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 767
    .line 768
    if-eqz v13, :cond_24

    .line 769
    .line 770
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v13

    .line 774
    goto :goto_17

    .line 775
    :cond_24
    const/4 v13, 0x0

    .line 776
    :goto_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    if-eqz v2, :cond_2a

    .line 781
    .line 782
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 783
    .line 784
    const-string/jumbo v13, "updateMainListArray add Item - already group Item: "

    .line 785
    .line 786
    .line 787
    invoke-static {v13, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 791
    .line 792
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    if-eqz v15, :cond_25

    .line 796
    .line 797
    iget-object v2, v15, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 798
    .line 799
    if-eqz v2, :cond_25

    .line 800
    .line 801
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 802
    .line 803
    goto :goto_18

    .line 804
    :cond_25
    const/4 v2, 0x0

    .line 805
    :goto_18
    if-eqz v2, :cond_27

    .line 806
    .line 807
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    if-nez v2, :cond_26

    .line 812
    .line 813
    goto :goto_19

    .line 814
    :cond_26
    const/4 v2, 0x1

    .line 815
    goto :goto_1c

    .line 816
    :cond_27
    :goto_19
    if-eqz v15, :cond_28

    .line 817
    .line 818
    iget-object v2, v15, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 819
    .line 820
    goto :goto_1a

    .line 821
    :cond_28
    const/4 v2, 0x0

    .line 822
    :goto_1a
    new-instance v13, Ljava/lang/StringBuilder;

    .line 823
    .line 824
    const-string/jumbo v15, "updateMainListArray add Item - remove old summary because it is empty: "

    .line 825
    .line 826
    .line 827
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .line 839
    .line 840
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    goto :goto_1b

    .line 848
    :cond_29
    move/from16 v16, v13

    .line 849
    .line 850
    :cond_2a
    add-int/lit8 v11, v11, 0x1

    .line 851
    .line 852
    move/from16 v2, p0

    .line 853
    .line 854
    move/from16 v13, v16

    .line 855
    .line 856
    goto/16 :goto_14

    .line 857
    .line 858
    :cond_2b
    move/from16 p0, v2

    .line 859
    .line 860
    :goto_1b
    const/4 v2, 0x0

    .line 861
    :goto_1c
    if-eqz v2, :cond_2d

    .line 862
    .line 863
    goto/16 :goto_12

    .line 864
    .line 865
    :cond_2c
    move/from16 p0, v2

    .line 866
    .line 867
    :cond_2d
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 868
    .line 869
    const-string/jumbo v11, "updateMainListArray parent add Item: "

    .line 870
    .line 871
    .line 872
    invoke-static {v11, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 876
    .line 877
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 878
    .line 879
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 880
    .line 881
    .line 882
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 890
    .line 891
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    if-eqz v2, :cond_39

    .line 900
    .line 901
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 902
    .line 903
    const-string v11, "add - updateMainListArray parent Group child remove Item: "

    .line 904
    .line 905
    invoke-static {v11, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 909
    .line 910
    if-eqz v2, :cond_2e

    .line 911
    .line 912
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 913
    .line 914
    if-eqz v2, :cond_2e

    .line 915
    .line 916
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 917
    .line 918
    .line 919
    move-result v2

    .line 920
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    goto :goto_1d

    .line 925
    :cond_2e
    const/4 v2, 0x0

    .line 926
    :goto_1d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    const/4 v11, 0x0

    .line 934
    :goto_1e
    if-ge v11, v2, :cond_34

    .line 935
    .line 936
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 937
    .line 938
    if-eqz v13, :cond_2f

    .line 939
    .line 940
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 941
    .line 942
    if-eqz v13, :cond_2f

    .line 943
    .line 944
    sget-object v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 945
    .line 946
    if-eqz v13, :cond_2f

    .line 947
    .line 948
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v13

    .line 952
    check-cast v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 953
    .line 954
    goto :goto_1f

    .line 955
    :cond_2f
    const/4 v13, 0x0

    .line 956
    :goto_1f
    iget-object v15, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 957
    .line 958
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v15

    .line 962
    move/from16 v16, v2

    .line 963
    .line 964
    if-eqz v13, :cond_30

    .line 965
    .line 966
    iget-object v2, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 967
    .line 968
    if-eqz v2, :cond_30

    .line 969
    .line 970
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    goto :goto_20

    .line 975
    :cond_30
    const/4 v2, 0x0

    .line 976
    :goto_20
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    if-eqz v2, :cond_33

    .line 981
    .line 982
    if-eqz v13, :cond_31

    .line 983
    .line 984
    iget-object v2, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 985
    .line 986
    if-eqz v2, :cond_31

    .line 987
    .line 988
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 989
    .line 990
    if-eqz v2, :cond_31

    .line 991
    .line 992
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    if-eqz v2, :cond_31

    .line 997
    .line 998
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 999
    .line 1000
    .line 1001
    move-result v2

    .line 1002
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    goto :goto_21

    .line 1007
    :cond_31
    const/4 v2, 0x0

    .line 1008
    :goto_21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v2

    .line 1015
    if-eqz v2, :cond_32

    .line 1016
    .line 1017
    iget-object v2, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1018
    .line 1019
    const-string v13, "add - updateMainListArray parent Group child important: "

    .line 1020
    .line 1021
    invoke-static {v13, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_22

    .line 1025
    :cond_32
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    :cond_33
    :goto_22
    add-int/lit8 v11, v11, 0x1

    .line 1033
    .line 1034
    move/from16 v2, v16

    .line 1035
    .line 1036
    goto :goto_1e

    .line 1037
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    .line 1038
    .line 1039
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v11

    .line 1046
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v11

    .line 1050
    :cond_35
    :goto_23
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1051
    .line 1052
    .line 1053
    move-result v13

    .line 1054
    if-eqz v13, :cond_38

    .line 1055
    .line 1056
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v13

    .line 1060
    check-cast v13, Ljava/util/Map$Entry;

    .line 1061
    .line 1062
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v13

    .line 1066
    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1067
    .line 1068
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v15

    .line 1072
    if-eqz v15, :cond_35

    .line 1073
    .line 1074
    if-eqz v14, :cond_36

    .line 1075
    .line 1076
    move-object v15, v14

    .line 1077
    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 1078
    .line 1079
    invoke-virtual {v15, v13}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v15

    .line 1083
    if-eqz v15, :cond_36

    .line 1084
    .line 1085
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 1086
    .line 1087
    goto :goto_24

    .line 1088
    :cond_36
    const/4 v15, 0x0

    .line 1089
    :goto_24
    move-object/from16 v16, v11

    .line 1090
    .line 1091
    iget-object v11, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1092
    .line 1093
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v11

    .line 1097
    if-eqz v11, :cond_37

    .line 1098
    .line 1099
    iget-object v11, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 1100
    .line 1101
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1105
    .line 1106
    .line 1107
    :cond_37
    move-object/from16 v11, v16

    .line 1108
    .line 1109
    goto :goto_23

    .line 1110
    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v11

    .line 1118
    if-eqz v11, :cond_39

    .line 1119
    .line 1120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v11

    .line 1124
    check-cast v11, Ljava/lang/String;

    .line 1125
    .line 1126
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    goto :goto_25

    .line 1130
    :cond_39
    if-eqz v8, :cond_1f

    .line 1131
    .line 1132
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1133
    .line 1134
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v2

    .line 1138
    if-eqz v2, :cond_1f

    .line 1139
    .line 1140
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1141
    .line 1142
    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    goto/16 :goto_12

    .line 1146
    .line 1147
    :cond_3a
    move/from16 p0, v2

    .line 1148
    .line 1149
    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 1150
    .line 1151
    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v11

    .line 1155
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1156
    .line 1157
    if-eqz v11, :cond_40

    .line 1158
    .line 1159
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1160
    .line 1161
    if-eqz v13, :cond_3b

    .line 1162
    .line 1163
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1164
    .line 1165
    if-eqz v13, :cond_3b

    .line 1166
    .line 1167
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 1168
    .line 1169
    .line 1170
    move-result v13

    .line 1171
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v13

    .line 1175
    goto :goto_26

    .line 1176
    :cond_3b
    const/4 v13, 0x0

    .line 1177
    :goto_26
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1181
    .line 1182
    .line 1183
    move-result v13

    .line 1184
    const/4 v15, 0x0

    .line 1185
    :goto_27
    if-ge v15, v13, :cond_40

    .line 1186
    .line 1187
    move/from16 v16, v13

    .line 1188
    .line 1189
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1190
    .line 1191
    if-eqz v13, :cond_3c

    .line 1192
    .line 1193
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1194
    .line 1195
    if-eqz v13, :cond_3c

    .line 1196
    .line 1197
    sget-object v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 1198
    .line 1199
    if-eqz v13, :cond_3c

    .line 1200
    .line 1201
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v13

    .line 1205
    check-cast v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 1206
    .line 1207
    goto :goto_28

    .line 1208
    :cond_3c
    const/4 v13, 0x0

    .line 1209
    :goto_28
    if-eqz v13, :cond_3d

    .line 1210
    .line 1211
    iget-object v13, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1212
    .line 1213
    goto :goto_29

    .line 1214
    :cond_3d
    const/4 v13, 0x0

    .line 1215
    :goto_29
    move-object/from16 v17, v7

    .line 1216
    .line 1217
    iget-object v7, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 1218
    .line 1219
    move-object/from16 v18, v11

    .line 1220
    .line 1221
    const/4 v11, 0x0

    .line 1222
    invoke-static {v13, v7, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v7

    .line 1226
    if-eqz v7, :cond_3f

    .line 1227
    .line 1228
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1229
    .line 1230
    if-eqz v7, :cond_3e

    .line 1231
    .line 1232
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 1233
    .line 1234
    if-eqz v7, :cond_3e

    .line 1235
    .line 1236
    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1237
    .line 1238
    .line 1239
    :cond_3e
    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    goto :goto_2a

    .line 1243
    :cond_3f
    add-int/lit8 v15, v15, 0x1

    .line 1244
    .line 1245
    move/from16 v13, v16

    .line 1246
    .line 1247
    move-object/from16 v7, v17

    .line 1248
    .line 1249
    move-object/from16 v11, v18

    .line 1250
    .line 1251
    goto :goto_27

    .line 1252
    :cond_40
    move-object/from16 v17, v7

    .line 1253
    .line 1254
    :goto_2a
    new-instance v7, Ljava/util/ArrayList;

    .line 1255
    .line 1256
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v11

    .line 1263
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v11

    .line 1267
    :cond_41
    :goto_2b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1268
    .line 1269
    .line 1270
    move-result v13

    .line 1271
    if-eqz v13, :cond_44

    .line 1272
    .line 1273
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v13

    .line 1277
    check-cast v13, Ljava/util/Map$Entry;

    .line 1278
    .line 1279
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v13

    .line 1283
    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1284
    .line 1285
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    .line 1286
    .line 1287
    .line 1288
    move-result v15

    .line 1289
    if-eqz v15, :cond_41

    .line 1290
    .line 1291
    if-eqz v14, :cond_42

    .line 1292
    .line 1293
    move-object v15, v14

    .line 1294
    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 1295
    .line 1296
    invoke-virtual {v15, v13}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v15

    .line 1300
    if-eqz v15, :cond_42

    .line 1301
    .line 1302
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 1303
    .line 1304
    goto :goto_2c

    .line 1305
    :cond_42
    const/4 v15, 0x0

    .line 1306
    :goto_2c
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1307
    .line 1308
    .line 1309
    move-result v15

    .line 1310
    if-eqz v15, :cond_41

    .line 1311
    .line 1312
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1313
    .line 1314
    if-eqz v15, :cond_43

    .line 1315
    .line 1316
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 1317
    .line 1318
    if-eqz v15, :cond_43

    .line 1319
    .line 1320
    invoke-virtual {v15, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1321
    .line 1322
    .line 1323
    :cond_43
    iget-object v15, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 1324
    .line 1325
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1329
    .line 1330
    .line 1331
    goto :goto_2b

    .line 1332
    :cond_44
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v2

    .line 1336
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1337
    .line 1338
    .line 1339
    move-result v7

    .line 1340
    if-eqz v7, :cond_45

    .line 1341
    .line 1342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v7

    .line 1346
    check-cast v7, Ljava/lang/String;

    .line 1347
    .line 1348
    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    goto :goto_2d

    .line 1352
    :cond_45
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1353
    .line 1354
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v2

    .line 1362
    if-eqz v2, :cond_4e

    .line 1363
    .line 1364
    iget-object v2, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1365
    .line 1366
    const-string/jumbo v7, "update - updateMainListArray parent Group child remove Item: "

    .line 1367
    .line 1368
    .line 1369
    invoke-static {v7, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1373
    .line 1374
    if-eqz v2, :cond_46

    .line 1375
    .line 1376
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1377
    .line 1378
    if-eqz v2, :cond_46

    .line 1379
    .line 1380
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 1381
    .line 1382
    .line 1383
    move-result v2

    .line 1384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    goto :goto_2e

    .line 1389
    :cond_46
    const/4 v2, 0x0

    .line 1390
    :goto_2e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1394
    .line 1395
    .line 1396
    move-result v2

    .line 1397
    const/4 v7, 0x0

    .line 1398
    const/4 v11, 0x0

    .line 1399
    :goto_2f
    if-ge v11, v2, :cond_4d

    .line 1400
    .line 1401
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1402
    .line 1403
    if-eqz v13, :cond_47

    .line 1404
    .line 1405
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1406
    .line 1407
    if-eqz v13, :cond_47

    .line 1408
    .line 1409
    sget-object v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 1410
    .line 1411
    if-eqz v13, :cond_47

    .line 1412
    .line 1413
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v13

    .line 1417
    check-cast v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 1418
    .line 1419
    goto :goto_30

    .line 1420
    :cond_47
    const/4 v13, 0x0

    .line 1421
    :goto_30
    if-eqz v13, :cond_48

    .line 1422
    .line 1423
    iget-object v14, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1424
    .line 1425
    if-eqz v14, :cond_48

    .line 1426
    .line 1427
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v14

    .line 1431
    if-eqz v14, :cond_48

    .line 1432
    .line 1433
    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    .line 1434
    .line 1435
    .line 1436
    move-result v14

    .line 1437
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v14

    .line 1441
    goto :goto_31

    .line 1442
    :cond_48
    const/4 v14, 0x0

    .line 1443
    :goto_31
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1447
    .line 1448
    .line 1449
    move-result v14

    .line 1450
    if-nez v14, :cond_4c

    .line 1451
    .line 1452
    iget-object v14, v12, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1453
    .line 1454
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v14

    .line 1458
    if-eqz v13, :cond_49

    .line 1459
    .line 1460
    iget-object v15, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1461
    .line 1462
    if-eqz v15, :cond_49

    .line 1463
    .line 1464
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v15

    .line 1468
    goto :goto_32

    .line 1469
    :cond_49
    const/4 v15, 0x0

    .line 1470
    :goto_32
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v14

    .line 1474
    if-eqz v14, :cond_4c

    .line 1475
    .line 1476
    if-eqz v13, :cond_4a

    .line 1477
    .line 1478
    iget-object v14, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1479
    .line 1480
    if-eqz v14, :cond_4a

    .line 1481
    .line 1482
    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1483
    .line 1484
    if-eqz v14, :cond_4a

    .line 1485
    .line 1486
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v14

    .line 1490
    if-eqz v14, :cond_4a

    .line 1491
    .line 1492
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 1493
    .line 1494
    .line 1495
    move-result v14

    .line 1496
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v14

    .line 1500
    goto :goto_33

    .line 1501
    :cond_4a
    const/4 v14, 0x0

    .line 1502
    :goto_33
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1506
    .line 1507
    .line 1508
    move-result v14

    .line 1509
    if-eqz v14, :cond_4b

    .line 1510
    .line 1511
    iget-object v13, v13, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1512
    .line 1513
    const-string/jumbo v14, "update - updateMainListArray parent Group child important: "

    .line 1514
    .line 1515
    .line 1516
    invoke-static {v14, v13, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    goto :goto_34

    .line 1520
    :cond_4b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v7

    .line 1524
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    const/4 v7, 0x1

    .line 1528
    :cond_4c
    :goto_34
    add-int/lit8 v11, v11, 0x1

    .line 1529
    .line 1530
    goto/16 :goto_2f

    .line 1531
    .line 1532
    :cond_4d
    if-eqz v7, :cond_4e

    .line 1533
    .line 1534
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v2

    .line 1538
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    :cond_4e
    :goto_35
    add-int/lit8 v4, v4, 0x1

    .line 1542
    .line 1543
    const/4 v11, 0x0

    .line 1544
    move/from16 v2, p0

    .line 1545
    .line 1546
    move-object/from16 v7, v17

    .line 1547
    .line 1548
    goto/16 :goto_f

    .line 1549
    .line 1550
    :cond_4f
    move-object/from16 v17, v7

    .line 1551
    .line 1552
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    const/4 v4, 0x1

    .line 1557
    if-le v2, v4, :cond_50

    .line 1558
    .line 1559
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1560
    .line 1561
    .line 1562
    :cond_50
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1563
    .line 1564
    .line 1565
    move-result v2

    .line 1566
    sub-int/2addr v2, v4

    .line 1567
    :goto_36
    const/4 v4, -0x1

    .line 1568
    if-ge v4, v2, :cond_55

    .line 1569
    .line 1570
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v4

    .line 1574
    check-cast v4, Ljava/lang/Number;

    .line 1575
    .line 1576
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 1577
    .line 1578
    .line 1579
    move-result v4

    .line 1580
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1581
    .line 1582
    if-eqz v5, :cond_51

    .line 1583
    .line 1584
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1585
    .line 1586
    if-eqz v5, :cond_51

    .line 1587
    .line 1588
    sget-object v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 1589
    .line 1590
    if-eqz v5, :cond_51

    .line 1591
    .line 1592
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v5

    .line 1596
    check-cast v5, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 1597
    .line 1598
    goto :goto_37

    .line 1599
    :cond_51
    const/4 v5, 0x0

    .line 1600
    :goto_37
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1601
    .line 1602
    if-eqz v6, :cond_52

    .line 1603
    .line 1604
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1605
    .line 1606
    if-eqz v6, :cond_52

    .line 1607
    .line 1608
    const-string/jumbo v6, "removeLockscreenNotificationInfoItem : "

    .line 1609
    .line 1610
    .line 1611
    const-string v7, " >>>>> currentThread : "

    .line 1612
    .line 1613
    invoke-static {v6, v4, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v6

    .line 1617
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v7

    .line 1621
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v6

    .line 1628
    const-string v7, "SubscreenNotificationInfoManager"

    .line 1629
    .line 1630
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    .line 1632
    .line 1633
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 1634
    .line 1635
    if-eqz v6, :cond_52

    .line 1636
    .line 1637
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1638
    .line 1639
    .line 1640
    :cond_52
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1641
    .line 1642
    if-eqz v6, :cond_53

    .line 1643
    .line 1644
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 1645
    .line 1646
    if-eqz v6, :cond_53

    .line 1647
    .line 1648
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1649
    .line 1650
    .line 1651
    :cond_53
    if-eqz v5, :cond_54

    .line 1652
    .line 1653
    iget-object v5, v5, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1654
    .line 1655
    goto :goto_38

    .line 1656
    :cond_54
    const/4 v5, 0x0

    .line 1657
    :goto_38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    const-string/jumbo v7, "updateMainListArray parent remove Item: "

    .line 1660
    .line 1661
    .line 1662
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    .line 1668
    const-string v5, ", index : "

    .line 1669
    .line 1670
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v4

    .line 1680
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    .line 1682
    .line 1683
    add-int/lit8 v2, v2, -0x1

    .line 1684
    .line 1685
    goto :goto_36

    .line 1686
    :cond_55
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v2

    .line 1690
    :cond_56
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1691
    .line 1692
    .line 1693
    move-result v4

    .line 1694
    if-eqz v4, :cond_5a

    .line 1695
    .line 1696
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v4

    .line 1700
    check-cast v4, Ljava/lang/Integer;

    .line 1701
    .line 1702
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1703
    .line 1704
    .line 1705
    move-result v5

    .line 1706
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v5

    .line 1710
    check-cast v5, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 1711
    .line 1712
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1713
    .line 1714
    .line 1715
    move-result v6

    .line 1716
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1717
    .line 1718
    if-eqz v7, :cond_57

    .line 1719
    .line 1720
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1721
    .line 1722
    if-eqz v7, :cond_57

    .line 1723
    .line 1724
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 1725
    .line 1726
    .line 1727
    move-result v7

    .line 1728
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v7

    .line 1732
    goto :goto_3a

    .line 1733
    :cond_57
    const/4 v7, 0x0

    .line 1734
    :goto_3a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1738
    .line 1739
    .line 1740
    move-result v7

    .line 1741
    if-le v6, v7, :cond_58

    .line 1742
    .line 1743
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    const-string/jumbo v7, "updateMainListArray parent add Item last postion: "

    .line 1746
    .line 1747
    .line 1748
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v6

    .line 1758
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    .line 1760
    .line 1761
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1762
    .line 1763
    if-eqz v6, :cond_59

    .line 1764
    .line 1765
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1766
    .line 1767
    if-eqz v6, :cond_59

    .line 1768
    .line 1769
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 1770
    .line 1771
    if-eqz v6, :cond_59

    .line 1772
    .line 1773
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    .line 1775
    .line 1776
    goto :goto_3b

    .line 1777
    :cond_58
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1778
    .line 1779
    if-eqz v6, :cond_59

    .line 1780
    .line 1781
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1782
    .line 1783
    if-eqz v6, :cond_59

    .line 1784
    .line 1785
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 1786
    .line 1787
    if-eqz v6, :cond_59

    .line 1788
    .line 1789
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1790
    .line 1791
    .line 1792
    move-result v7

    .line 1793
    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1794
    .line 1795
    .line 1796
    :cond_59
    :goto_3b
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1797
    .line 1798
    if-eqz v5, :cond_56

    .line 1799
    .line 1800
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 1801
    .line 1802
    if-eqz v5, :cond_56

    .line 1803
    .line 1804
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1805
    .line 1806
    .line 1807
    move-result v4

    .line 1808
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 1809
    .line 1810
    .line 1811
    goto :goto_39

    .line 1812
    :cond_5a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 1813
    .line 1814
    .line 1815
    move-result v1

    .line 1816
    if-nez v1, :cond_60

    .line 1817
    .line 1818
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1819
    .line 1820
    if-eqz v1, :cond_60

    .line 1821
    .line 1822
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 1823
    .line 1824
    if-eqz v1, :cond_60

    .line 1825
    .line 1826
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    .line 1827
    .line 1828
    if-eqz v2, :cond_5b

    .line 1829
    .line 1830
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1831
    .line 1832
    .line 1833
    const/4 v2, 0x0

    .line 1834
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    .line 1835
    .line 1836
    :cond_5b
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1837
    .line 1838
    if-eqz v2, :cond_60

    .line 1839
    .line 1840
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1841
    .line 1842
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1843
    .line 1844
    .line 1845
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 1846
    .line 1847
    .line 1848
    move-result v2

    .line 1849
    if-eqz v2, :cond_5e

    .line 1850
    .line 1851
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 1852
    .line 1853
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1854
    .line 1855
    .line 1856
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->checkRemoveNotification()Z

    .line 1857
    .line 1858
    .line 1859
    move-result v2

    .line 1860
    if-nez v2, :cond_5c

    .line 1861
    .line 1862
    goto :goto_3d

    .line 1863
    :cond_5c
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1864
    .line 1865
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1866
    .line 1867
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 1868
    .line 1869
    .line 1870
    move-result v2

    .line 1871
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1872
    .line 1873
    const/16 v4, 0x8

    .line 1874
    .line 1875
    if-ne v2, v4, :cond_5d

    .line 1876
    .line 1877
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 1878
    .line 1879
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1880
    .line 1881
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1882
    .line 1883
    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;

    .line 1884
    .line 1885
    const/4 v2, 0x0

    .line 1886
    const/4 v4, 0x1

    .line 1887
    invoke-direct {v7, v1, v2, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;II)V

    .line 1888
    .line 1889
    .line 1890
    const-wide/16 v8, 0x12c

    .line 1891
    .line 1892
    const/4 v10, 0x0

    .line 1893
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1894
    .line 1895
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v2

    .line 1899
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    .line 1900
    .line 1901
    goto :goto_3c

    .line 1902
    :cond_5d
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1903
    .line 1904
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1905
    .line 1906
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1907
    .line 1908
    .line 1909
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1910
    .line 1911
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1912
    .line 1913
    const/4 v4, 0x0

    .line 1914
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1915
    .line 1916
    .line 1917
    :goto_3c
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1918
    .line 1919
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1920
    .line 1921
    const/4 v4, 0x1

    .line 1922
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1923
    .line 1924
    .line 1925
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1926
    .line 1927
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1928
    .line 1929
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1930
    .line 1931
    .line 1932
    goto :goto_3e

    .line 1933
    :cond_5e
    :goto_3d
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1934
    .line 1935
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1936
    .line 1937
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 1938
    .line 1939
    .line 1940
    move-result v2

    .line 1941
    if-nez v2, :cond_5f

    .line 1942
    .line 1943
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 1944
    .line 1945
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1946
    .line 1947
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1948
    .line 1949
    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;

    .line 1950
    .line 1951
    const/16 v2, 0x8

    .line 1952
    .line 1953
    const/4 v6, 0x0

    .line 1954
    invoke-direct {v5, v1, v2, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;II)V

    .line 1955
    .line 1956
    .line 1957
    const-wide/16 v6, 0x12c

    .line 1958
    .line 1959
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1960
    .line 1961
    const/4 v9, 0x0

    .line 1962
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v2

    .line 1966
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    .line 1967
    .line 1968
    goto :goto_3e

    .line 1969
    :cond_5f
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1970
    .line 1971
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1972
    .line 1973
    const/4 v3, 0x0

    .line 1974
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1975
    .line 1976
    .line 1977
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 1978
    .line 1979
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    .line 1980
    .line 1981
    const/16 v2, 0x8

    .line 1982
    .line 1983
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1984
    .line 1985
    .line 1986
    :cond_60
    :goto_3e
    move-object/from16 v7, v17

    .line 1987
    .line 1988
    goto/16 :goto_44

    .line 1989
    .line 1990
    :cond_61
    :goto_3f
    move-object/from16 v17, v7

    .line 1991
    .line 1992
    const/4 v2, 0x0

    .line 1993
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    .line 1994
    .line 1995
    if-eqz v4, :cond_62

    .line 1996
    .line 1997
    const/4 v4, 0x0

    .line 1998
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    .line 1999
    .line 2000
    :cond_62
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 2001
    .line 2002
    .line 2003
    move-result v4

    .line 2004
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiKeySet:Ljava/util/HashSet;

    .line 2005
    .line 2006
    if-nez v4, :cond_64

    .line 2007
    .line 2008
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2009
    .line 2010
    if-eqz v4, :cond_63

    .line 2011
    .line 2012
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 2013
    .line 2014
    if-eqz v4, :cond_63

    .line 2015
    .line 2016
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    .line 2017
    .line 2018
    .line 2019
    :cond_63
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 2020
    .line 2021
    .line 2022
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2023
    .line 2024
    .line 2025
    :cond_64
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 2026
    .line 2027
    .line 2028
    move-result v4

    .line 2029
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2030
    .line 2031
    if-eqz v7, :cond_65

    .line 2032
    .line 2033
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 2034
    .line 2035
    if-eqz v7, :cond_65

    .line 2036
    .line 2037
    sget-object v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 2038
    .line 2039
    if-eqz v7, :cond_65

    .line 2040
    .line 2041
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2042
    .line 2043
    .line 2044
    :cond_65
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 2045
    .line 2046
    .line 2047
    move-result v6

    .line 2048
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2049
    .line 2050
    const-string/jumbo v9, "updateMainListArray allMap - size : "

    .line 2051
    .line 2052
    .line 2053
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2057
    .line 2058
    .line 2059
    const-string v4, ", isEmpty: "

    .line 2060
    .line 2061
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    .line 2063
    .line 2064
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v4

    .line 2071
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v1

    .line 2078
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2079
    .line 2080
    .line 2081
    move-result v4

    .line 2082
    if-eqz v4, :cond_6e

    .line 2083
    .line 2084
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v4

    .line 2088
    check-cast v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 2089
    .line 2090
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2091
    .line 2092
    iget-object v7, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2093
    .line 2094
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2095
    .line 2096
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2097
    .line 2098
    const-string/jumbo v10, "updateMainListArray allMap - key : "

    .line 2099
    .line 2100
    .line 2101
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    .line 2106
    .line 2107
    const-string v6, ", "

    .line 2108
    .line 2109
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v6

    .line 2119
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    .line 2121
    .line 2122
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2123
    .line 2124
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2125
    .line 2126
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkBubbleLastHistoryReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 2127
    .line 2128
    .line 2129
    move-result v6

    .line 2130
    if-eqz v6, :cond_66

    .line 2131
    .line 2132
    iget-object v4, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2133
    .line 2134
    const-string/jumbo v6, "updateMainListArray allMap - mBubbleReplyEntry: "

    .line 2135
    .line 2136
    .line 2137
    invoke-static {v6, v4, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    .line 2139
    .line 2140
    goto :goto_40

    .line 2141
    :cond_66
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2142
    .line 2143
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2144
    .line 2145
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isBubbleNotificationSuppressed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 2146
    .line 2147
    .line 2148
    move-result v6

    .line 2149
    if-eqz v6, :cond_67

    .line 2150
    .line 2151
    iget-object v4, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2152
    .line 2153
    const-string/jumbo v6, "updateMainListArray allMap - isBubbleNotificationSuppressed: "

    .line 2154
    .line 2155
    .line 2156
    invoke-static {v6, v4, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    .line 2158
    .line 2159
    goto :goto_40

    .line 2160
    :cond_67
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    .line 2161
    .line 2162
    if-eqz v6, :cond_68

    .line 2163
    .line 2164
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2165
    .line 2166
    move-object/from16 v7, v17

    .line 2167
    .line 2168
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v6

    .line 2172
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2173
    .line 2174
    iget-object v9, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2175
    .line 2176
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2177
    .line 2178
    const-string/jumbo v11, "updateMainListArray allMap - mIsNotificationRemoved - key :"

    .line 2179
    .line 2180
    .line 2181
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2182
    .line 2183
    .line 2184
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    .line 2186
    .line 2187
    const-string v9, " ,entry :"

    .line 2188
    .line 2189
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v9

    .line 2199
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    .line 2201
    .line 2202
    if-eqz v6, :cond_69

    .line 2203
    .line 2204
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2205
    .line 2206
    const-string/jumbo v9, "updateMainListArray allMap - mIsNotificationRemoved: "

    .line 2207
    .line 2208
    .line 2209
    invoke-static {v9, v6, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    .line 2211
    .line 2212
    iget-object v4, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2213
    .line 2214
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    .line 2216
    .line 2217
    goto/16 :goto_42

    .line 2218
    .line 2219
    :cond_68
    move-object/from16 v7, v17

    .line 2220
    .line 2221
    :cond_69
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2222
    .line 2223
    if-eqz v6, :cond_6a

    .line 2224
    .line 2225
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 2226
    .line 2227
    if-eqz v6, :cond_6a

    .line 2228
    .line 2229
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 2230
    .line 2231
    if-eqz v6, :cond_6a

    .line 2232
    .line 2233
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    .line 2235
    .line 2236
    :cond_6a
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2237
    .line 2238
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2239
    .line 2240
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 2241
    .line 2242
    .line 2243
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2244
    .line 2245
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2246
    .line 2247
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 2248
    .line 2249
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2250
    .line 2251
    .line 2252
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2253
    .line 2254
    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v6

    .line 2258
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2259
    .line 2260
    if-eqz v6, :cond_6b

    .line 2261
    .line 2262
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 2263
    .line 2264
    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    .line 2266
    .line 2267
    :cond_6b
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2268
    .line 2269
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v6

    .line 2273
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    .line 2274
    .line 2275
    .line 2276
    move-result v6

    .line 2277
    if-eqz v6, :cond_6d

    .line 2278
    .line 2279
    iget-object v6, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2280
    .line 2281
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2282
    .line 2283
    if-eqz v6, :cond_6d

    .line 2284
    .line 2285
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 2286
    .line 2287
    .line 2288
    move-result v9

    .line 2289
    if-lez v9, :cond_6d

    .line 2290
    .line 2291
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 2292
    .line 2293
    .line 2294
    move-result v9

    .line 2295
    const/16 v10, 0x8

    .line 2296
    .line 2297
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 2298
    .line 2299
    .line 2300
    move-result v9

    .line 2301
    const/4 v10, 0x0

    .line 2302
    :goto_41
    if-ge v10, v9, :cond_6d

    .line 2303
    .line 2304
    iget-object v11, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 2305
    .line 2306
    check-cast v11, Ljava/util/ArrayList;

    .line 2307
    .line 2308
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v11

    .line 2312
    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2313
    .line 2314
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2315
    .line 2316
    iget-object v12, v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2317
    .line 2318
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v12

    .line 2322
    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2323
    .line 2324
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v13

    .line 2328
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2329
    .line 2330
    .line 2331
    move-result v12

    .line 2332
    if-eqz v12, :cond_6c

    .line 2333
    .line 2334
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2335
    .line 2336
    const-string/jumbo v13, "updateMainListArray allMap child : "

    .line 2337
    .line 2338
    .line 2339
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2340
    .line 2341
    .line 2342
    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 2343
    .line 2344
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2345
    .line 2346
    .line 2347
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v12

    .line 2351
    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    .line 2353
    .line 2354
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 2355
    .line 2356
    .line 2357
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2358
    .line 2359
    .line 2360
    :cond_6c
    add-int/lit8 v10, v10, 0x1

    .line 2361
    .line 2362
    goto :goto_41

    .line 2363
    :cond_6d
    :goto_42
    move-object/from16 v17, v7

    .line 2364
    .line 2365
    goto/16 :goto_40

    .line 2366
    .line 2367
    :cond_6e
    move-object/from16 v7, v17

    .line 2368
    .line 2369
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2370
    .line 2371
    if-eqz v1, :cond_6f

    .line 2372
    .line 2373
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 2374
    .line 2375
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v2

    .line 2379
    :cond_6f
    if-eqz v2, :cond_71

    .line 2380
    .line 2381
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2382
    .line 2383
    if-eqz v1, :cond_70

    .line 2384
    .line 2385
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 2386
    .line 2387
    const/4 v3, 0x1

    .line 2388
    if-ne v2, v3, :cond_70

    .line 2389
    .line 2390
    goto :goto_43

    .line 2391
    :cond_70
    const/4 v3, 0x0

    .line 2392
    :goto_43
    if-eqz v3, :cond_71

    .line 2393
    .line 2394
    if-eqz v1, :cond_71

    .line 2395
    .line 2396
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 2397
    .line 2398
    if-eqz v1, :cond_71

    .line 2399
    .line 2400
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2401
    .line 2402
    .line 2403
    :cond_71
    :goto_44
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    .line 2404
    .line 2405
    if-eqz v1, :cond_72

    .line 2406
    .line 2407
    const/4 v1, 0x0

    .line 2408
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    .line 2409
    .line 2410
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 2411
    .line 2412
    .line 2413
    :cond_72
    :goto_45
    return-void
.end method

.method public final onNotificationTypeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method
