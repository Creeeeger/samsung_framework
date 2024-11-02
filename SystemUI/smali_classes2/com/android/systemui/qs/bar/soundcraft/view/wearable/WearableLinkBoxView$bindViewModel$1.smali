.class public final Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView$bindViewModel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_1
    if-nez v2, :cond_2

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;->localBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 30
    .line 31
    if-eqz v3, :cond_b

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;->context:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 36
    .line 37
    sget-boolean v4, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    .line 38
    .line 39
    const-string v4, "BluetoothUtils"

    .line 40
    .line 41
    const-string v5, "getA2dpBondDevices() :: cursor count: "

    .line 42
    .line 43
    const-string v9, "bond_state== 2"

    .line 44
    .line 45
    const-string v12, "address"

    .line 46
    .line 47
    const-string v13, "name"

    .line 48
    .line 49
    const-string v14, "cod"

    .line 50
    .line 51
    const-string v15, "bond_state"

    .line 52
    .line 53
    const-string v11, "appearance"

    .line 54
    .line 55
    const-string v10, "manufacturerdata"

    .line 56
    .line 57
    const-string/jumbo v8, "timestamp"

    .line 58
    .line 59
    .line 60
    const-string v7, "linktype"

    .line 61
    .line 62
    const-string/jumbo v6, "uuids"

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v16, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 71
    .line 72
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v16

    .line 76
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v17

    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v19, 0x0

    .line 83
    .line 84
    const-string/jumbo v20, "timestamp DESC"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    .line 86
    .line 87
    move-object/from16 v21, v6

    .line 88
    .line 89
    move-object/from16 v6, v17

    .line 90
    .line 91
    move-object/from16 v22, v7

    .line 92
    .line 93
    move-object/from16 v7, v16

    .line 94
    .line 95
    move-object/from16 v23, v8

    .line 96
    .line 97
    move-object/from16 v8, v18

    .line 98
    .line 99
    move-object/from16 v24, v10

    .line 100
    .line 101
    move-object/from16 v10, v19

    .line 102
    .line 103
    move-object/from16 v16, v2

    .line 104
    .line 105
    move-object v2, v11

    .line 106
    move-object/from16 v11, v20

    .line 107
    .line 108
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 109
    .line 110
    .line 111
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    if-nez v6, :cond_3

    .line 113
    .line 114
    :try_start_2
    const-string v0, "getA2dpBondDevices() :: query return empty list"

    .line 115
    .line 116
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v5, ", Columns : "

    .line 136
    .line 137
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    .line 156
    .line 157
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    move-object/from16 v10, v24

    .line 178
    .line 179
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    move-object/from16 v11, v23

    .line 184
    .line 185
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    move-object/from16 v12, v22

    .line 190
    .line 191
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    move-object/from16 v13, v21

    .line 196
    .line 197
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    .line 202
    .line 203
    .line 204
    move-result v14

    .line 205
    if-nez v14, :cond_6

    .line 206
    .line 207
    new-instance v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    .line 208
    .line 209
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    invoke-direct {v14, v0, v15}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    iput-object v15, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mName:Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    iput v15, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mCod:I

    .line 227
    .line 228
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    iput v15, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mBondState:I

    .line 233
    .line 234
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    iput v15, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAppearance:I

    .line 239
    .line 240
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    invoke-static {v15}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    iput-object v15, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mManufacturerData:[B

    .line 249
    .line 250
    move/from16 p1, v8

    .line 251
    .line 252
    move v15, v9

    .line 253
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 254
    .line 255
    .line 256
    move-result-wide v8

    .line 257
    iput-wide v8, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mTimeStamp:J

    .line 258
    .line 259
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    iput v8, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    .line 264
    .line 265
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    invoke-static {v8}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;)[Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    if-eqz v9, :cond_4

    .line 274
    .line 275
    invoke-static {v9}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    iput-object v9, v14, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mUuids:[Landroid/os/ParcelUuid;

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    goto/16 :goto_a

    .line 284
    .line 285
    :catch_0
    move-exception v0

    .line 286
    goto :goto_5

    .line 287
    :cond_4
    :goto_3
    invoke-static {v8}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;)[Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    if-eqz v8, :cond_5

    .line 292
    .line 293
    invoke-static {v8}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    sget-object v9, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 298
    .line 299
    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-eqz v8, :cond_5

    .line 304
    .line 305
    new-instance v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 306
    .line 307
    invoke-direct {v8, v0, v3, v14}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    new-instance v8, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v9, "getA2dpBondDevices - "

    .line 319
    .line 320
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .line 339
    .line 340
    move/from16 v8, p1

    .line 341
    .line 342
    move v9, v15

    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :catch_1
    move-exception v0

    .line 346
    goto :goto_4

    .line 347
    :catchall_1
    move-exception v0

    .line 348
    const/4 v1, 0x0

    .line 349
    goto :goto_9

    .line 350
    :catch_2
    move-exception v0

    .line 351
    move-object/from16 v16, v2

    .line 352
    .line 353
    :goto_4
    const/4 v6, 0x0

    .line 354
    :goto_5
    :try_start_3
    const-string v2, "getA2dpBondDevices :: Occurs IllegalStateException"

    .line 355
    .line 356
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 360
    .line 361
    .line 362
    if-eqz v6, :cond_7

    .line 363
    .line 364
    :cond_6
    :goto_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    .line 366
    .line 367
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_9

    .line 376
    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    move-object v2, v1

    .line 382
    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    move-object/from16 v3, v16

    .line 389
    .line 390
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_8

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_8
    move-object/from16 v16, v3

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_9
    const/4 v1, 0x0

    .line 401
    :goto_8
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 402
    .line 403
    if-eqz v1, :cond_b

    .line 404
    .line 405
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    const/4 v2, 0x1

    .line 410
    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    .line 411
    .line 412
    .line 413
    goto :goto_b

    .line 414
    :catchall_2
    move-exception v0

    .line 415
    move-object v1, v6

    .line 416
    :goto_9
    move-object v6, v1

    .line 417
    :goto_a
    if-eqz v6, :cond_a

    .line 418
    .line 419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 420
    .line 421
    .line 422
    :cond_a
    throw v0

    .line 423
    :cond_b
    :goto_b
    return-void
.end method
