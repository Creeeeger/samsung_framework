.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public deviceCount:I

.field public mApLayout:Landroid/widget/LinearLayout;

.field public mConnectedDevices:Ljava/util/List;

.field public mConnectedListContainer:Landroid/view/View;

.field public mItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mMobileApName:Landroid/widget/TextView;

.field public mPassWord:Ljava/lang/String;

.field public mPassWordLayout:Landroid/widget/LinearLayout;

.field public mPassword:Landroid/widget/TextView;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createDetailView convertView="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    move p2, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p2, v1

    .line 15
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, " mState.value "

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget p2, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 26
    .line 27
    iget-object v3, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 28
    .line 29
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 30
    .line 31
    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 32
    .line 33
    const-string v4, "HotspotTile"

    .line 34
    .line 35
    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    .line 40
    iget-object v3, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string/jumbo v5, "wifi"

    .line 43
    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    .line 55
    :cond_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v6, 0x7f0d02ce

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    const v0, 0x7f0a00ca

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApLayout:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    const v0, 0x7f0a07d2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWordLayout:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    const v0, 0x7f0a00cb

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    .line 98
    .line 99
    const v0, 0x7f0a028e

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    .line 107
    .line 108
    const v0, 0x7f0a00cd

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 118
    .line 119
    const v0, 0x7f0a028d

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    .line 128
    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 133
    .line 134
    const-string v6, "HotSpot"

    .line 135
    .line 136
    invoke-virtual {p1, v6}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    const-string/jumbo p1, "updateHotSpotApInfo"

    .line 150
    .line 151
    .line 152
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 156
    .line 157
    if-nez p1, :cond_2

    .line 158
    .line 159
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 164
    .line 165
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 166
    .line 167
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const/4 v0, 0x3

    .line 172
    if-nez p1, :cond_3

    .line 173
    .line 174
    const-string p1, " updateHotSpotApInfo SemWifiManager is null"

    .line 175
    .line 176
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto/16 :goto_6

    .line 180
    .line 181
    :cond_3
    iget-object p1, p2, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    sget-boolean v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 192
    .line 193
    if-eqz v6, :cond_4

    .line 194
    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v7, "mobileAp Name = "

    .line 198
    .line 199
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    if-eqz v5, :cond_b

    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_5

    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :cond_5
    const-string p1, "\tUSER#DEFINED#PWD#\n"

    .line 236
    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_a

    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string/jumbo v5, "wifi_ap_random_password"

    .line 248
    .line 249
    .line 250
    invoke-static {p1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_7

    .line 255
    .line 256
    const-string v6, ""

    .line 257
    .line 258
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_6

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-static {v6, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_5

    .line 279
    .line 280
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v6

    .line 289
    new-instance v8, Ljava/util/Random;

    .line 290
    .line 291
    invoke-direct {v8, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 292
    .line 293
    .line 294
    new-instance v6, Ljava/lang/StringBuffer;

    .line 295
    .line 296
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .line 298
    .line 299
    move v7, v1

    .line 300
    :goto_2
    const/4 v9, 0x4

    .line 301
    if-ge v7, v9, :cond_8

    .line 302
    .line 303
    const/16 v9, 0x1a

    .line 304
    .line 305
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    const-string v10, "abcdefghijklmnopqrstuvwxyz"

    .line 310
    .line 311
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    .line 317
    .line 318
    add-int/lit8 v7, v7, 0x1

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 329
    .line 330
    .line 331
    move-result-wide v6

    .line 332
    const-wide/16 v8, 0x1

    .line 333
    .line 334
    add-long/2addr v6, v8

    .line 335
    new-instance v8, Ljava/util/Random;

    .line 336
    .line 337
    invoke-direct {v8, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 338
    .line 339
    .line 340
    const/16 v6, 0xa

    .line 341
    .line 342
    move v7, v2

    .line 343
    move v9, v6

    .line 344
    :goto_3
    if-ge v7, v0, :cond_9

    .line 345
    .line 346
    mul-int/lit8 v9, v9, 0xa

    .line 347
    .line 348
    add-int/lit8 v7, v7, 0x1

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_9
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 352
    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    const-string v11, "%%0%dd"

    .line 362
    .line 363
    invoke-static {v7, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    sub-int/2addr v9, v2

    .line 368
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 388
    .line 389
    .line 390
    move-result-wide v7

    .line 391
    new-instance v9, Ljava/util/Random;

    .line 392
    .line 393
    invoke-direct {v9, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 394
    .line 395
    .line 396
    new-instance v7, Ljava/lang/StringBuffer;

    .line 397
    .line 398
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v6}, Ljava/util/Random;->nextInt(I)I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    const-string v8, "!@#$/^&*()"

    .line 406
    .line 407
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-static {v6, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    goto :goto_5

    .line 438
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 439
    .line 440
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 445
    .line 446
    const v5, 0x7f1301a6

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 450
    .line 451
    .line 452
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    .line 453
    .line 454
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApLayout:Landroid/widget/LinearLayout;

    .line 463
    .line 464
    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v5, ", "

    .line 470
    .line 471
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 475
    .line 476
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWord:Ljava/lang/String;

    .line 492
    .line 493
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWordLayout:Landroid/widget/LinearLayout;

    .line 494
    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    const v6, 0x7f130b54

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWord:Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 524
    .line 525
    .line 526
    :goto_6
    sget p1, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 527
    .line 528
    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    if-nez p1, :cond_c

    .line 533
    .line 534
    const-string p0, " updateConnectedDeviceList SemWifiManager is null"

    .line 535
    .line 536
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    goto/16 :goto_b

    .line 540
    .line 541
    :cond_c
    iget-object p1, p2, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 542
    .line 543
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    .line 548
    .line 549
    if-eqz p1, :cond_d

    .line 550
    .line 551
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    iput p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    .line 556
    .line 557
    :cond_d
    const-string/jumbo p1, "updateItems"

    .line 558
    .line 559
    .line 560
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 564
    .line 565
    if-nez p1, :cond_e

    .line 566
    .line 567
    goto/16 :goto_8

    .line 568
    .line 569
    :cond_e
    iget p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    .line 570
    .line 571
    new-array v3, p1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 572
    .line 573
    if-eqz p1, :cond_10

    .line 574
    .line 575
    move p1, v1

    .line 576
    :goto_7
    iget v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    .line 577
    .line 578
    if-ge p1, v5, :cond_10

    .line 579
    .line 580
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    .line 581
    .line 582
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    check-cast v5, Ljava/lang/String;

    .line 587
    .line 588
    const-string v6, "\n"

    .line 589
    .line 590
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    const/4 v6, 0x2

    .line 595
    aget-object v6, v5, v6

    .line 596
    .line 597
    aget-object v0, v5, v0

    .line 598
    .line 599
    sget v5, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 600
    .line 601
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 602
    .line 603
    .line 604
    move-result-wide v7

    .line 605
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    iget-object v5, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 610
    .line 611
    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    new-instance v8, Ljava/util/Date;

    .line 616
    .line 617
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 618
    .line 619
    .line 620
    move-result-wide v9

    .line 621
    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    const-string v8, "MMM dd"

    .line 629
    .line 630
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    invoke-static {v9, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v8

    .line 638
    new-instance v9, Ljava/util/Date;

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 641
    .line 642
    .line 643
    move-result-wide v10

    .line 644
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 645
    .line 646
    .line 647
    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v0}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    const v8, 0x7f130354

    .line 660
    .line 661
    .line 662
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const-string v8, " "

    .line 670
    .line 671
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    new-instance v7, Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 682
    .line 683
    invoke-direct {v7}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 684
    .line 685
    .line 686
    const-string v8, "(null)"

    .line 687
    .line 688
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v8

    .line 692
    if-eqz v8, :cond_f

    .line 693
    .line 694
    const v6, 0x7f130b50

    .line 695
    .line 696
    .line 697
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    :cond_f
    iput-boolean v1, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    .line 702
    .line 703
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 704
    .line 705
    .line 706
    move-result-object v8

    .line 707
    const v9, 0x7f071646

    .line 708
    .line 709
    .line 710
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    iput v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    .line 715
    .line 716
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    const v9, 0x7f071648

    .line 721
    .line 722
    .line 723
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 724
    .line 725
    .line 726
    move-result v8

    .line 727
    int-to-float v8, v8

    .line 728
    iput v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    .line 729
    .line 730
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 731
    .line 732
    .line 733
    move-result-object v5

    .line 734
    const v8, 0x7f071647

    .line 735
    .line 736
    .line 737
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    int-to-float v5, v5

    .line 742
    iput v5, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    .line 743
    .line 744
    iput-object v6, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 745
    .line 746
    iput-object v0, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 747
    .line 748
    iput-boolean v1, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 749
    .line 750
    aput-object v7, v3, p1

    .line 751
    .line 752
    add-int/lit8 p1, p1, 0x1

    .line 753
    .line 754
    const/4 v0, 0x3

    .line 755
    goto/16 :goto_7

    .line 756
    .line 757
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 758
    .line 759
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 760
    .line 761
    .line 762
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string v0, " updateConnectedDeviceList mConnectedDevices = "

    .line 765
    .line 766
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    .line 770
    .line 771
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .line 780
    .line 781
    iget-object p1, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 782
    .line 783
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 784
    .line 785
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 786
    .line 787
    if-eqz p1, :cond_11

    .line 788
    .line 789
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    .line 790
    .line 791
    if-eqz p1, :cond_11

    .line 792
    .line 793
    goto :goto_9

    .line 794
    :cond_11
    move v2, v1

    .line 795
    :goto_9
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    .line 796
    .line 797
    if-eqz p0, :cond_13

    .line 798
    .line 799
    if-eqz v2, :cond_12

    .line 800
    .line 801
    goto :goto_a

    .line 802
    :cond_12
    const/16 v1, 0x8

    .line 803
    .line 804
    :goto_a
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 805
    .line 806
    .line 807
    :cond_13
    :goto_b
    return-object p3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x460

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v0, "android.settings.WIFI_AP_SETTINGS"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130b55

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " getToggleEnabled - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 13
    .line 14
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 17
    .line 18
    const-string v2, "HotspotTile"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 24
    .line 25
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 28
    .line 29
    xor-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

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
    .locals 0

    .line 1
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 7

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/HotspotTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "HotspotTile"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string p1, "getSemWifiManager is null"

    .line 14
    .line 15
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v4, "setToggleState:state,"

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, ",apiState:"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 v3, 0xe

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    const/16 v4, 0xb

    .line 69
    .line 70
    if-eq v1, v4, :cond_2

    .line 71
    .line 72
    if-eq v1, v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    const/16 v4, 0xd

    .line 87
    .line 88
    if-eq v1, v4, :cond_2

    .line 89
    .line 90
    if-eq v1, v3, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 105
    .line 106
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_c

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 189
    .line 190
    const/4 v5, 0x1

    .line 191
    if-eqz v3, :cond_7

    .line 192
    .line 193
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_7

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;

    .line 216
    .line 217
    invoke-direct {p1, p0, v5}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 221
    .line 222
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v6, "isShowing() = "

    .line 240
    .line 241
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v6, ", isSecure() = "

    .line 252
    .line 253
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v6, ", canSkipBouncer() = "

    .line 264
    .line 265
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, ", isLockFunctionsEnabled() = "

    .line 280
    .line 281
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    if-eqz p1, :cond_8

    .line 299
    .line 300
    sget-object v1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_8
    const/4 v1, 0x0

    .line 304
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    .line 308
    .line 309
    .line 310
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 311
    .line 312
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 313
    .line 314
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 315
    .line 316
    const/4 v0, 0x0

    .line 317
    if-eqz p1, :cond_9

    .line 318
    .line 319
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    .line 320
    .line 321
    if-eqz p1, :cond_9

    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_9
    move v5, v0

    .line 325
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    .line 326
    .line 327
    if-eqz p0, :cond_b

    .line 328
    .line 329
    if-eqz v5, :cond_a

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_a
    const/16 v0, 0x8

    .line 333
    .line 334
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    :cond_b
    return-void

    .line 338
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 350
    .line 351
    .line 352
    return-void
.end method
