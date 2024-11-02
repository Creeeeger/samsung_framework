.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAvailable:Landroid/view/ViewGroup;

.field public mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mAvailableDevicesTitle:Landroid/view/View;

.field public mItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mMusicShare:Landroid/view/ViewGroup;

.field public mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mMusicShareTitleDivider:Landroid/view/View;

.field public mPairedDevices:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public static -$$Nest$mupdateMusicShareItems(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "SBluetoothTile"

    .line 5
    .line 6
    const-string/jumbo v1, "updateMusicShareItems()"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 13
    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 25
    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v4, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->mCachedCastDevices:Ljava/util/List;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v1

    .line 47
    throw p0

    .line 48
    :cond_1
    move-object v3, v2

    .line 49
    :goto_0
    if-nez v3, :cond_2

    .line 50
    .line 51
    const-string p0, "getCachedCastDevices() is null."

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_e

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 81
    .line 82
    new-instance v4, Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 83
    .line 84
    invoke-direct {v4}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBtCastDrawable()Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iput-object v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iput-object v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getMaxConnectionState()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    iput-boolean v6, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 108
    .line 109
    new-instance v6, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v7, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    .line 115
    .line 116
    monitor-enter v7

    .line 117
    :try_start_1
    iget-object v8, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    .line 118
    .line 119
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const/4 v7, 0x0

    .line 128
    move v8, v7

    .line 129
    move v9, v8

    .line 130
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    const/4 v11, 0x1

    .line 135
    const/4 v12, 0x3

    .line 136
    if-ge v7, v10, :cond_a

    .line 137
    .line 138
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    check-cast v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    .line 143
    .line 144
    if-nez v10, :cond_3

    .line 145
    .line 146
    iget-object v10, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    const-string v11, "getConnectionSummary :: profile is null"

    .line 149
    .line 150
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    invoke-virtual {v3, v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-eqz v13, :cond_8

    .line 159
    .line 160
    if-eq v13, v11, :cond_7

    .line 161
    .line 162
    const/4 v14, 0x2

    .line 163
    if-eq v13, v14, :cond_5

    .line 164
    .line 165
    if-eq v13, v12, :cond_4

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    iget-object v6, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    goto :goto_4

    .line 179
    :cond_5
    instance-of v8, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    .line 180
    .line 181
    if-eqz v8, :cond_6

    .line 182
    .line 183
    move v8, v11

    .line 184
    move v9, v8

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    move v8, v11

    .line 187
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    iget-object v6, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    iget-object v7, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 193
    .line 194
    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    const v8, 0x7f13023c

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    goto :goto_4

    .line 210
    :cond_8
    iget-object v6, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v6, :cond_9

    .line 213
    .line 214
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_9

    .line 219
    .line 220
    iget-object v6, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    iget-object v6, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    iget-object v7, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 226
    .line 227
    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    const v8, 0x7f13023b

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    goto :goto_4

    .line 243
    :cond_a
    if-eqz v8, :cond_b

    .line 244
    .line 245
    if-eqz v9, :cond_b

    .line 246
    .line 247
    iget-object v6, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    iget-object v7, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 250
    .line 251
    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    const v8, 0x7f130238

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    goto :goto_4

    .line 267
    :cond_b
    move-object v6, v2

    .line 268
    :goto_4
    iput-object v6, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 269
    .line 270
    iput-object v3, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 271
    .line 272
    iput-boolean v11, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    .line 273
    .line 274
    if-eq v5, v11, :cond_c

    .line 275
    .line 276
    if-ne v5, v12, :cond_d

    .line 277
    .line 278
    :cond_c
    iput-boolean v11, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    .line 279
    .line 280
    :cond_d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :catchall_1
    move-exception p0

    .line 286
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    throw p0

    .line 288
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-lez v1, :cond_f

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_f

    .line 303
    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 309
    .line 310
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 311
    .line 312
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    new-array v2, v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 329
    .line 330
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 334
    .line 335
    new-instance v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;

    .line 336
    .line 337
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 341
    .line 342
    .line 343
    :cond_10
    :goto_6
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isHavingConvertView:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    if-nez p2, :cond_2

    .line 9
    .line 10
    iget-object p2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v1, 0x7f0d02cc

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const p3, 0x7f0a07b9

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Landroid/view/ViewGroup;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    .line 42
    .line 43
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    const p3, 0x7f0a010e

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Landroid/view/ViewGroup;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 62
    .line 63
    const-string v1, "Bluetooth.Available"

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 71
    .line 72
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 76
    .line 77
    const v1, 0x7f0a0110

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesTitle:Landroid/view/View;

    .line 85
    .line 86
    sget-boolean p3, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 87
    .line 88
    const v1, 0x7f0a0713

    .line 89
    .line 90
    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    check-cast p3, Landroid/view/ViewGroup;

    .line 98
    .line 99
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    .line 100
    .line 101
    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 106
    .line 107
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    .line 113
    .line 114
    const p3, 0x7f0a0714

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareTitleDivider:Landroid/view/View;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/view/ViewGroup;

    .line 129
    .line 130
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    .line 131
    .line 132
    const/16 p3, 0x8

    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    const/4 p1, 0x1

    .line 138
    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isHavingConvertView:Z

    .line 139
    .line 140
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 141
    .line 142
    iget-object p3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 143
    .line 144
    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 145
    .line 146
    iget-boolean p3, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 147
    .line 148
    if-eqz p3, :cond_3

    .line 149
    .line 150
    const p3, 0x7f130d6e

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    const p3, 0x7f130d6b

    .line 155
    .line 156
    .line 157
    :goto_1
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 166
    .line 167
    const-string p3, "Bluetooth"

    .line 168
    .line 169
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 173
    .line 174
    const p3, 0x7f130d68

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 181
    .line 182
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 183
    .line 184
    .line 185
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 186
    .line 187
    if-eqz p1, :cond_4

    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 190
    .line 191
    const-string p3, "Bluetooth.InstantSession"

    .line 192
    .line 193
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    new-instance p1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;

    .line 202
    .line 203
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 204
    .line 205
    .line 206
    iget-object p3, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 207
    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    .line 210
    .line 211
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 212
    .line 213
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 214
    .line 215
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    .line 218
    .line 219
    .line 220
    return-object p2
.end method

.method public final disallowStartSettingsIntent()Z
    .locals 2

    .line 1
    const-string v0, "SBluetoothTile"

    .line 2
    .line 3
    const-string v1, "disallowStartSettingsIntent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    .line 12
    .line 13
    return v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x96

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130d6d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 17
    .line 18
    const/16 v0, 0xc

    .line 19
    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    instance-of v0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 15
    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    check-cast p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->disconnect()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "dexonpc_connection_state"

    .line 38
    .line 39
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 v0, 0x3

    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne p0, v0, :cond_2

    .line 46
    .line 47
    move p0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move p0, v1

    .line 50
    :goto_0
    if-eqz p0, :cond_3

    .line 51
    .line 52
    iget-object p0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "Dex is enabled, so connect request will be rejected"

    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->toastHandler:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;

    .line 62
    .line 63
    iget-object v2, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const v3, 0x7f1302b7

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->dispatchAttributesChanged()V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    iget-object p0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    .line 100
    .line 101
    iget-object v3, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v5, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v5, "/"

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    if-nez v0, :cond_5

    .line 127
    .line 128
    move v5, v2

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move v5, v1

    .line 131
    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    if-eqz v0, :cond_4

    .line 146
    .line 147
    iget-object v3, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 148
    .line 149
    check-cast v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    .line 150
    .line 151
    iget-object v4, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    const-string v5, "connect"

    .line 154
    .line 155
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 159
    .line 160
    if-nez v0, :cond_6

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    invoke-virtual {v0, v3}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->connect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 174
    .line 175
    if-eqz v0, :cond_8

    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 178
    .line 179
    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 182
    .line 183
    if-eqz v0, :cond_9

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_9

    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 199
    .line 200
    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    .line 210
    .line 211
    .line 212
    :cond_9
    :goto_3
    return-void
.end method

.method public final setItemsVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "setItemsVisible = "

    .line 7
    .line 8
    .line 9
    const-string v1, "SBluetoothTile"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 25
    .line 26
    .line 27
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-boolean p1, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const/16 v2, 0x9a

    .line 8
    .line 9
    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "setToggleState state = "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "SBluetoothTile"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 39
    .line 40
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    .line 58
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 59
    .line 60
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 65
    .line 66
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 73
    .line 74
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    iget-object p1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 93
    .line 94
    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    .line 95
    .line 96
    .line 97
    iget-object p1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 98
    .line 99
    new-instance v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    if-nez p1, :cond_2

    .line 122
    .line 123
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 124
    .line 125
    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 126
    .line 127
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    .line 128
    .line 129
    .line 130
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 131
    .line 132
    if-eqz v2, :cond_2

    .line 133
    .line 134
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 135
    .line 136
    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 137
    .line 138
    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 139
    .line 140
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    .line 141
    .line 142
    .line 143
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->onToggleStateChange(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 147
    .line 148
    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 149
    .line 150
    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setBluetoothEnabled(ZZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->onToggleStateChange(Z)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 172
    .line 173
    if-eqz p1, :cond_4

    .line 174
    .line 175
    const p1, 0x7f130d6e

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_4
    const p1, 0x7f130d6b

    .line 180
    .line 181
    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final updateItems()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "SBluetoothTile"

    .line 9
    .line 10
    const-string/jumbo v2, "updateItems"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 29
    .line 30
    check-cast v3, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v3, v4

    .line 45
    :goto_0
    if-eqz v3, :cond_47

    .line 46
    .line 47
    const-string v5, "SBluetoothTile"

    .line 48
    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v7, "mController.getDevices() list: "

    .line 52
    .line 53
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    instance-of v5, v3, Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    move-object v5, v3

    .line 75
    check-cast v5, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_47

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 95
    .line 96
    iget v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 97
    .line 98
    new-instance v7, Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 99
    .line 100
    invoke-direct {v7}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 101
    .line 102
    .line 103
    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 104
    .line 105
    const v9, 0x7f0604cc

    .line 106
    .line 107
    .line 108
    if-eqz v8, :cond_3

    .line 109
    .line 110
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 111
    .line 112
    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v8, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    iput-object v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    iget-object v10, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 121
    .line 122
    iget-object v10, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    iput-object v4, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 139
    .line 140
    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iput-object v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 157
    .line 158
    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 165
    .line 166
    .line 167
    :goto_2
    const/4 v8, 0x1

    .line 168
    iput-boolean v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    .line 169
    .line 170
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    iget-object v11, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    .line 180
    .line 181
    if-nez v11, :cond_4

    .line 182
    .line 183
    const-string v11, ""

    .line 184
    .line 185
    :cond_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    iput-object v10, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 200
    .line 201
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-nez v11, :cond_7

    .line 210
    .line 211
    iget-object v11, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 212
    .line 213
    check-cast v11, Ljava/util/HashSet;

    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-eqz v12, :cond_6

    .line 224
    .line 225
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    check-cast v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 230
    .line 231
    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-eqz v12, :cond_5

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    const/4 v8, 0x0

    .line 239
    :cond_7
    :goto_3
    iput-boolean v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 240
    .line 241
    iget-object v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v8, :cond_8

    .line 244
    .line 245
    move-object/from16 v22, v1

    .line 246
    .line 247
    move-object/from16 v20, v3

    .line 248
    .line 249
    move/from16 v21, v10

    .line 250
    .line 251
    goto/16 :goto_1a

    .line 252
    .line 253
    :cond_8
    iget-object v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 254
    .line 255
    if-nez v8, :cond_9

    .line 256
    .line 257
    const-string v8, "CachedBluetoothDevice"

    .line 258
    .line 259
    const-string v9, "getConnectionSummary :: mDevice is null"

    .line 260
    .line 261
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_9
    iget-boolean v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 266
    .line 267
    const/16 v11, 0xb

    .line 268
    .line 269
    if-eqz v8, :cond_c

    .line 270
    .line 271
    iget v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 272
    .line 273
    if-eq v8, v11, :cond_c

    .line 274
    .line 275
    iget-object v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-eqz v8, :cond_c

    .line 282
    .line 283
    iget-boolean v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 284
    .line 285
    if-eqz v8, :cond_a

    .line 286
    .line 287
    :goto_4
    move-object/from16 v22, v1

    .line 288
    .line 289
    move-object/from16 v20, v3

    .line 290
    .line 291
    move/from16 v21, v10

    .line 292
    .line 293
    goto/16 :goto_7

    .line 294
    .line 295
    :cond_a
    iget-boolean v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    .line 296
    .line 297
    if-eqz v4, :cond_b

    .line 298
    .line 299
    iget-object v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 300
    .line 301
    const v8, 0x7f1302a6

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    goto :goto_4

    .line 309
    :cond_b
    iget-object v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 310
    .line 311
    const v8, 0x7f1302aa

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    goto :goto_4

    .line 319
    :cond_c
    iget-object v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    .line 320
    .line 321
    monitor-enter v4

    .line 322
    :try_start_0
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    const/4 v11, 0x0

    .line 331
    const/4 v12, 0x0

    .line 332
    const/4 v13, 0x0

    .line 333
    const/4 v14, 0x0

    .line 334
    const/4 v15, 0x0

    .line 335
    const/16 v16, 0x0

    .line 336
    .line 337
    const/16 v17, 0x0

    .line 338
    .line 339
    const/16 v18, 0x0

    .line 340
    .line 341
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v19

    .line 345
    if-eqz v19, :cond_25

    .line 346
    .line 347
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v19

    .line 351
    move-object/from16 v20, v3

    .line 352
    .line 353
    move-object/from16 v3, v19

    .line 354
    .line 355
    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 356
    .line 357
    if-nez v3, :cond_d

    .line 358
    .line 359
    const-string v3, "CachedBluetoothDevice"

    .line 360
    .line 361
    move-object/from16 v19, v8

    .line 362
    .line 363
    const-string v8, "getConnectionSummary :: profile is null"

    .line 364
    .line 365
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    :goto_6
    move-object/from16 v22, v1

    .line 369
    .line 370
    move/from16 v21, v10

    .line 371
    .line 372
    goto/16 :goto_d

    .line 373
    .line 374
    :cond_d
    move-object/from16 v19, v8

    .line 375
    .line 376
    instance-of v8, v3, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 377
    .line 378
    if-eqz v8, :cond_e

    .line 379
    .line 380
    const-string v3, "CachedBluetoothDevice"

    .line 381
    .line 382
    const-string v8, "getConnectionSummary :: csip profile is excluded from the summary"

    .line 383
    .line 384
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    goto :goto_6

    .line 388
    :cond_e
    invoke-virtual {v9, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    const-string v0, "CachedBluetoothDevice"

    .line 393
    .line 394
    move/from16 v21, v10

    .line 395
    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    move-object/from16 v22, v1

    .line 402
    .line 403
    const-string v1, "getConnectionSummary :: profile ::"

    .line 404
    .line 405
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v1, "  connectionStatus::"

    .line 412
    .line 413
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    if-eqz v8, :cond_22

    .line 427
    .line 428
    const/4 v0, 0x2

    .line 429
    const/4 v1, 0x1

    .line 430
    if-eq v8, v1, :cond_19

    .line 431
    .line 432
    if-eq v8, v0, :cond_10

    .line 433
    .line 434
    const/4 v0, 0x3

    .line 435
    if-eq v8, v0, :cond_f

    .line 436
    .line 437
    goto/16 :goto_d

    .line 438
    .line 439
    :cond_f
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 440
    .line 441
    invoke-static {v8}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    monitor-exit v4

    .line 450
    move-object v4, v0

    .line 451
    :goto_7
    move-object v8, v4

    .line 452
    goto/16 :goto_15

    .line 453
    .line 454
    :cond_10
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 455
    .line 456
    if-eqz v0, :cond_11

    .line 457
    .line 458
    const/4 v12, 0x1

    .line 459
    :cond_11
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 460
    .line 461
    if-eqz v0, :cond_12

    .line 462
    .line 463
    const/4 v13, 0x1

    .line 464
    :cond_12
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/HidProfile;

    .line 465
    .line 466
    if-eqz v0, :cond_13

    .line 467
    .line 468
    const/4 v15, 0x1

    .line 469
    :cond_13
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 470
    .line 471
    if-eqz v0, :cond_15

    .line 472
    .line 473
    move-object v0, v3

    .line 474
    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 475
    .line 476
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 477
    .line 478
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    if-eqz v8, :cond_14

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Ljava/lang/Integer;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    const/4 v1, 0x1

    .line 497
    if-ne v0, v1, :cond_14

    .line 498
    .line 499
    const/4 v0, 0x1

    .line 500
    goto :goto_8

    .line 501
    :cond_14
    const/4 v0, 0x0

    .line 502
    :goto_8
    if-eqz v0, :cond_15

    .line 503
    .line 504
    const/16 v16, 0x1

    .line 505
    .line 506
    :cond_15
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 507
    .line 508
    if-eqz v0, :cond_16

    .line 509
    .line 510
    const/16 v17, 0x1

    .line 511
    .line 512
    :cond_16
    instance-of v0, v3, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    .line 513
    .line 514
    if-eqz v0, :cond_17

    .line 515
    .line 516
    const/16 v18, 0x1

    .line 517
    .line 518
    :cond_17
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 519
    .line 520
    const/4 v1, 0x1

    .line 521
    if-eqz v0, :cond_18

    .line 522
    .line 523
    const/4 v0, 0x1

    .line 524
    move v14, v0

    .line 525
    :cond_18
    move v11, v1

    .line 526
    goto :goto_d

    .line 527
    :cond_19
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const/4 v1, 0x0

    .line 536
    const/4 v3, 0x0

    .line 537
    :cond_1a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v10

    .line 541
    if-eqz v10, :cond_1e

    .line 542
    .line 543
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    check-cast v10, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 548
    .line 549
    if-eqz v10, :cond_1a

    .line 550
    .line 551
    invoke-virtual {v9, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    .line 552
    .line 553
    .line 554
    move-result v10

    .line 555
    move-object/from16 v23, v0

    .line 556
    .line 557
    const/4 v0, 0x1

    .line 558
    if-eq v10, v0, :cond_1c

    .line 559
    .line 560
    const/4 v0, 0x3

    .line 561
    if-ne v10, v0, :cond_1b

    .line 562
    .line 563
    goto :goto_a

    .line 564
    :cond_1b
    const/4 v0, 0x2

    .line 565
    goto :goto_b

    .line 566
    :cond_1c
    :goto_a
    const/4 v0, 0x2

    .line 567
    const/4 v1, 0x1

    .line 568
    :goto_b
    if-ne v10, v0, :cond_1d

    .line 569
    .line 570
    const/4 v3, 0x1

    .line 571
    :cond_1d
    move-object/from16 v0, v23

    .line 572
    .line 573
    goto :goto_9

    .line 574
    :cond_1e
    if-eqz v1, :cond_1f

    .line 575
    .line 576
    if-eqz v3, :cond_20

    .line 577
    .line 578
    :cond_1f
    iget v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 579
    .line 580
    const/16 v1, 0xb

    .line 581
    .line 582
    if-ne v0, v1, :cond_21

    .line 583
    .line 584
    :cond_20
    const/4 v0, 0x1

    .line 585
    goto :goto_c

    .line 586
    :cond_21
    const/4 v0, 0x0

    .line 587
    :goto_c
    if-eqz v0, :cond_24

    .line 588
    .line 589
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 590
    .line 591
    invoke-static {v8}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    monitor-exit v4

    .line 600
    goto/16 :goto_14

    .line 601
    .line 602
    :cond_22
    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_24

    .line 607
    .line 608
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 609
    .line 610
    if-eqz v0, :cond_23

    .line 611
    .line 612
    goto :goto_d

    .line 613
    :cond_23
    instance-of v0, v3, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 614
    .line 615
    if-eqz v0, :cond_24

    .line 616
    .line 617
    const/4 v0, 0x0

    .line 618
    move v14, v0

    .line 619
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    .line 620
    .line 621
    move-object/from16 v8, v19

    .line 622
    .line 623
    move-object/from16 v3, v20

    .line 624
    .line 625
    move/from16 v10, v21

    .line 626
    .line 627
    move-object/from16 v1, v22

    .line 628
    .line 629
    goto/16 :goto_5

    .line 630
    .line 631
    :cond_25
    move-object/from16 v22, v1

    .line 632
    .line 633
    move-object/from16 v20, v3

    .line 634
    .line 635
    move/from16 v21, v10

    .line 636
    .line 637
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 639
    .line 640
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-eqz v11, :cond_3a

    .line 645
    .line 646
    const v1, 0x7f1302a9

    .line 647
    .line 648
    .line 649
    const v3, 0x7f1302a7

    .line 650
    .line 651
    .line 652
    const/4 v4, -0x1

    .line 653
    if-eqz v12, :cond_2c

    .line 654
    .line 655
    if-eqz v13, :cond_2c

    .line 656
    .line 657
    iget-object v8, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 658
    .line 659
    if-nez v8, :cond_26

    .line 660
    .line 661
    const/4 v8, 0x0

    .line 662
    goto :goto_e

    .line 663
    :cond_26
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 664
    .line 665
    :goto_e
    if-eqz v8, :cond_28

    .line 666
    .line 667
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 668
    .line 669
    if-nez v8, :cond_27

    .line 670
    .line 671
    goto :goto_f

    .line 672
    :cond_27
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    goto :goto_10

    .line 677
    :cond_28
    :goto_f
    const/4 v8, 0x0

    .line 678
    :goto_10
    const v10, 0x7f1302a8

    .line 679
    .line 680
    .line 681
    if-eqz v8, :cond_29

    .line 682
    .line 683
    if-eq v0, v4, :cond_29

    .line 684
    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    iget-object v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 691
    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v4, v10, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 708
    .line 709
    invoke-static {v0, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    goto/16 :goto_14

    .line 714
    .line 715
    :cond_29
    if-eq v0, v4, :cond_2a

    .line 716
    .line 717
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 718
    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-virtual {v1, v10, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    goto/16 :goto_14

    .line 732
    .line 733
    :cond_2a
    if-eqz v8, :cond_2b

    .line 734
    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    iget-object v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 741
    .line 742
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    iget-object v3, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 750
    .line 751
    invoke-static {v3, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    goto/16 :goto_14

    .line 756
    .line 757
    :cond_2b
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 758
    .line 759
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    goto/16 :goto_14

    .line 764
    .line 765
    :cond_2c
    if-eqz v14, :cond_2d

    .line 766
    .line 767
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 768
    .line 769
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    goto/16 :goto_14

    .line 774
    .line 775
    :cond_2d
    if-eqz v12, :cond_32

    .line 776
    .line 777
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 778
    .line 779
    if-nez v0, :cond_2e

    .line 780
    .line 781
    const/4 v0, 0x0

    .line 782
    goto :goto_11

    .line 783
    :cond_2e
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 784
    .line 785
    :goto_11
    if-eqz v0, :cond_30

    .line 786
    .line 787
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 788
    .line 789
    if-nez v0, :cond_2f

    .line 790
    .line 791
    goto :goto_12

    .line 792
    :cond_2f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    goto :goto_13

    .line 797
    :cond_30
    :goto_12
    const/4 v0, 0x0

    .line 798
    :goto_13
    const v3, 0x7f130230

    .line 799
    .line 800
    .line 801
    if-eqz v0, :cond_31

    .line 802
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .line 807
    .line 808
    iget-object v4, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 809
    .line 810
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    iget-object v3, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 818
    .line 819
    invoke-static {v3, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    goto/16 :goto_14

    .line 824
    .line 825
    :cond_31
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 826
    .line 827
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    goto :goto_14

    .line 832
    :cond_32
    if-eqz v13, :cond_34

    .line 833
    .line 834
    if-eq v0, v4, :cond_33

    .line 835
    .line 836
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 837
    .line 838
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    const v3, 0x7f130255

    .line 847
    .line 848
    .line 849
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    goto :goto_14

    .line 854
    :cond_33
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 855
    .line 856
    const v1, 0x7f130254

    .line 857
    .line 858
    .line 859
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    goto :goto_14

    .line 864
    :cond_34
    const v1, 0x7f130ef6

    .line 865
    .line 866
    .line 867
    if-eqz v15, :cond_35

    .line 868
    .line 869
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 870
    .line 871
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    goto :goto_14

    .line 876
    :cond_35
    if-eqz v16, :cond_36

    .line 877
    .line 878
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 879
    .line 880
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    goto :goto_14

    .line 885
    :cond_36
    if-eqz v17, :cond_37

    .line 886
    .line 887
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 888
    .line 889
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    goto :goto_14

    .line 894
    :cond_37
    if-eqz v18, :cond_38

    .line 895
    .line 896
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 897
    .line 898
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    goto :goto_14

    .line 903
    :cond_38
    if-eq v0, v4, :cond_39

    .line 904
    .line 905
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 906
    .line 907
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    const v3, 0x7f13023e

    .line 916
    .line 917
    .line 918
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    goto :goto_14

    .line 923
    :cond_39
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 924
    .line 925
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    :goto_14
    move-object v8, v0

    .line 930
    :goto_15
    const/4 v0, 0x0

    .line 931
    :goto_16
    move-object v4, v0

    .line 932
    goto/16 :goto_1a

    .line 933
    .line 934
    :cond_3a
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 935
    .line 936
    if-eqz v0, :cond_3d

    .line 937
    .line 938
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 939
    .line 940
    .line 941
    move-result v0

    .line 942
    if-nez v0, :cond_3d

    .line 943
    .line 944
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 945
    .line 946
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 947
    .line 948
    const v3, 0x7f1302b5

    .line 949
    .line 950
    .line 951
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    move-result v0

    .line 959
    if-nez v0, :cond_3b

    .line 960
    .line 961
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 962
    .line 963
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 964
    .line 965
    const v3, 0x7f1302b4

    .line 966
    .line 967
    .line 968
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    if-eqz v0, :cond_3c

    .line 977
    .line 978
    :cond_3b
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 979
    .line 980
    const-string v1, "connectivity"

    .line 981
    .line 982
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 987
    .line 988
    const/4 v1, 0x1

    .line 989
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 998
    .line 999
    if-ne v0, v1, :cond_3c

    .line 1000
    .line 1001
    const/4 v0, 0x0

    .line 1002
    iput-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 1003
    .line 1004
    goto :goto_17

    .line 1005
    :cond_3c
    const/4 v0, 0x0

    .line 1006
    :goto_17
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 1007
    .line 1008
    move-object v8, v1

    .line 1009
    goto :goto_16

    .line 1010
    :cond_3d
    const/4 v8, 0x0

    .line 1011
    iget-boolean v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidDeviceByUUID:Z

    .line 1012
    .line 1013
    if-eqz v0, :cond_3e

    .line 1014
    .line 1015
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 1016
    .line 1017
    const v1, 0x7f13025c

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    :goto_18
    move-object/from16 v24, v8

    .line 1025
    .line 1026
    move-object v8, v0

    .line 1027
    move-object/from16 v0, v24

    .line 1028
    .line 1029
    goto :goto_16

    .line 1030
    :cond_3e
    iget v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 1031
    .line 1032
    const/16 v1, 0xa

    .line 1033
    .line 1034
    if-eq v0, v1, :cond_40

    .line 1035
    .line 1036
    const/16 v1, 0xb

    .line 1037
    .line 1038
    if-eq v0, v1, :cond_3f

    .line 1039
    .line 1040
    goto :goto_19

    .line 1041
    :cond_3f
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 1042
    .line 1043
    const v1, 0x7f130269

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    goto :goto_18

    .line 1051
    :cond_40
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1052
    .line 1053
    if-eqz v0, :cond_42

    .line 1054
    .line 1055
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    iget-object v1, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1060
    .line 1061
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    if-eqz v0, :cond_42

    .line 1070
    .line 1071
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1072
    .line 1073
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v0

    .line 1077
    if-eqz v0, :cond_41

    .line 1078
    .line 1079
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 1080
    .line 1081
    const v1, 0x7f130253

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    goto :goto_18

    .line 1089
    :cond_41
    iget-object v0, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 1090
    .line 1091
    const v1, 0x7f13024e

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    goto :goto_18

    .line 1099
    :cond_42
    :goto_19
    move-object v4, v8

    .line 1100
    :goto_1a
    iput-object v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 1101
    .line 1102
    iput-object v5, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 1103
    .line 1104
    const/16 v0, 0xc

    .line 1105
    .line 1106
    if-eq v6, v0, :cond_44

    .line 1107
    .line 1108
    iget-boolean v0, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 1109
    .line 1110
    if-eqz v0, :cond_43

    .line 1111
    .line 1112
    goto :goto_1b

    .line 1113
    :cond_43
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    move-object/from16 v0, v22

    .line 1117
    .line 1118
    goto :goto_1c

    .line 1119
    :cond_44
    :goto_1b
    move-object/from16 v0, v22

    .line 1120
    .line 1121
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    :goto_1c
    const/4 v1, 0x1

    .line 1125
    move/from16 v3, v21

    .line 1126
    .line 1127
    if-eq v3, v1, :cond_45

    .line 1128
    .line 1129
    const/4 v5, 0x3

    .line 1130
    if-ne v3, v5, :cond_46

    .line 1131
    .line 1132
    :cond_45
    iput-boolean v1, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    .line 1133
    .line 1134
    :cond_46
    move-object v1, v0

    .line 1135
    move-object/from16 v3, v20

    .line 1136
    .line 1137
    move-object/from16 v0, p0

    .line 1138
    .line 1139
    goto/16 :goto_1

    .line 1140
    .line 1141
    :catchall_0
    move-exception v0

    .line 1142
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    throw v0

    .line 1144
    :cond_47
    move-object v0, v1

    .line 1145
    move-object/from16 v1, p0

    .line 1146
    .line 1147
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 1148
    .line 1149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1150
    .line 1151
    .line 1152
    move-result v4

    .line 1153
    new-array v4, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 1154
    .line 1155
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v4

    .line 1159
    check-cast v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 1160
    .line 1161
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 1162
    .line 1163
    .line 1164
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 1165
    .line 1166
    new-instance v4, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$4;

    .line 1167
    .line 1168
    invoke-direct {v4, v1}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1172
    .line 1173
    .line 1174
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 1175
    .line 1176
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1177
    .line 1178
    .line 1179
    move-result v4

    .line 1180
    new-array v4, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 1181
    .line 1182
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v4

    .line 1186
    check-cast v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 1187
    .line 1188
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 1189
    .line 1190
    .line 1191
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 1192
    .line 1193
    new-instance v4, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$5;

    .line 1194
    .line 1195
    invoke-direct {v4, v1}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1199
    .line 1200
    .line 1201
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 1202
    .line 1203
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    .line 1204
    .line 1205
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1206
    .line 1207
    .line 1208
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 1209
    .line 1210
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    .line 1211
    .line 1212
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1213
    .line 1214
    .line 1215
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 1216
    .line 1217
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    .line 1218
    .line 1219
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1220
    .line 1221
    .line 1222
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 1223
    .line 1224
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    .line 1225
    .line 1226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1227
    .line 1228
    .line 1229
    return-void
.end method
