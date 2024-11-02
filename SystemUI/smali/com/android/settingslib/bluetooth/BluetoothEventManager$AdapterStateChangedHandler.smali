.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    .line 1
    const-string p3, "android.bluetooth.adapter.extra.STATE"

    .line 2
    .line 3
    const/high16 v0, -0x80000000

    .line 4
    .line 5
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string p3, "BluetoothEventManager"

    .line 10
    .line 11
    const-string v0, "AdapterStateChangedHandler :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    .line 12
    .line 13
    invoke-static {v0, p2, p3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 17
    .line 18
    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 19
    .line 20
    invoke-virtual {p3, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->updateDeviceName(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 29
    .line 30
    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 47
    .line 48
    invoke-interface {v0, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 53
    .line 54
    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    const/4 v1, 0x0

    .line 58
    const/16 v2, 0xc

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz p3, :cond_b

    .line 62
    .line 63
    monitor-enter p3

    .line 64
    const/16 v4, 0xd

    .line 65
    .line 66
    if-ne p2, v4, :cond_8

    .line 67
    .line 68
    :try_start_0
    iget-object v4, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :cond_1
    :goto_1
    add-int/2addr v4, v0

    .line 75
    if-ltz v4, :cond_7

    .line 76
    .line 77
    iget-object v5, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 84
    .line 85
    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 86
    .line 87
    check-cast v6, Ljava/util/HashSet;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_3

    .line 94
    .line 95
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_4

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 110
    .line 111
    iget v8, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 112
    .line 113
    if-eq v8, v2, :cond_2

    .line 114
    .line 115
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 116
    .line 117
    check-cast v8, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iput-object v1, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 126
    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    iget v6, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 130
    .line 131
    if-eq v6, v2, :cond_4

    .line 132
    .line 133
    iput-object v1, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 134
    .line 135
    :cond_4
    iget v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 136
    .line 137
    if-eq v6, v2, :cond_5

    .line 138
    .line 139
    iget-boolean v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 140
    .line 141
    if-nez v6, :cond_5

    .line 142
    .line 143
    invoke-virtual {v5, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    .line 151
    .line 152
    .line 153
    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 154
    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    .line 161
    .line 162
    if-eqz v5, :cond_1

    .line 163
    .line 164
    iget-boolean v6, v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    .line 165
    .line 166
    if-eqz v6, :cond_1

    .line 167
    .line 168
    iget-object v5, v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateSequeces()V

    .line 175
    .line 176
    .line 177
    iput-object v1, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    .line 178
    .line 179
    iput v0, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    const/16 v4, 0xb

    .line 185
    .line 186
    if-ne p2, v4, :cond_a

    .line 187
    .line 188
    iget-object v4, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    :cond_9
    :goto_3
    add-int/2addr v4, v0

    .line 195
    if-ltz v4, :cond_a

    .line 196
    .line 197
    iget-object v5, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 204
    .line 205
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    .line 206
    .line 207
    .line 208
    iput-object v1, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 211
    .line 212
    if-eqz v5, :cond_9

    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :goto_4
    monitor-exit p3

    .line 219
    throw p0

    .line 220
    :cond_a
    :goto_5
    monitor-exit p3

    .line 221
    :cond_b
    if-ne p2, v2, :cond_10

    .line 222
    .line 223
    sget-boolean p3, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    .line 224
    .line 225
    if-eqz p3, :cond_f

    .line 226
    .line 227
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 228
    .line 229
    .line 230
    move-result-object p3

    .line 231
    if-eqz p3, :cond_e

    .line 232
    .line 233
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    if-nez p3, :cond_e

    .line 238
    .line 239
    new-instance p3, Landroid/content/Intent;

    .line 240
    .line 241
    const-string v2, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    .line 242
    .line 243
    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const/high16 v2, 0x10800000

    .line 247
    .line 248
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    .line 250
    .line 251
    :try_start_1
    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    .line 252
    .line 253
    if-eqz v2, :cond_d

    .line 254
    .line 255
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 256
    .line 257
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    const-string v4, "desktopmode"

    .line 260
    .line 261
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    const/16 v4, 0x66

    .line 276
    .line 277
    if-ne v2, v4, :cond_c

    .line 278
    .line 279
    const/4 v2, 0x2

    .line 280
    goto :goto_6

    .line 281
    :cond_c
    move v2, v3

    .line 282
    :goto_6
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 287
    .line 288
    .line 289
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 290
    .line 291
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 298
    .line 299
    invoke-virtual {v2, p3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_d
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 304
    .line 305
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 308
    .line 309
    invoke-virtual {v2, p3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :catch_0
    move-exception p3

    .line 314
    const-string v2, "BluetoothEventManager"

    .line 315
    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string/jumbo v5, "startActivity() failed: "

    .line 319
    .line 320
    .line 321
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :cond_e
    :goto_7
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->setQuickPannelOn(Z)V

    .line 335
    .line 336
    .line 337
    :cond_f
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 338
    .line 339
    iget-object p3, p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 340
    .line 341
    if-eqz p3, :cond_10

    .line 342
    .line 343
    iput-object v1, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    .line 344
    .line 345
    iput v0, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    .line 346
    .line 347
    :cond_10
    const/16 p3, 0xa

    .line 348
    .line 349
    if-ne p2, p3, :cond_12

    .line 350
    .line 351
    const-string p2, "bluetooth_restart"

    .line 352
    .line 353
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    const-string p2, "key_bluetooth_restart"

    .line 358
    .line 359
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    if-eqz p2, :cond_11

    .line 364
    .line 365
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 366
    .line 367
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 368
    .line 369
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 370
    .line 371
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 372
    .line 373
    .line 374
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    const-string p2, "key_bluetooth_restart"

    .line 379
    .line 380
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    .line 382
    .line 383
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    .line 385
    .line 386
    :cond_11
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 387
    .line 388
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 389
    .line 390
    if-eqz p0, :cond_12

    .line 391
    .line 392
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberPair:Landroid/bluetooth/BluetoothDevice;

    .line 393
    .line 394
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mOngoingSetMemberGroupId:I

    .line 395
    .line 396
    :cond_12
    return-void
.end method
