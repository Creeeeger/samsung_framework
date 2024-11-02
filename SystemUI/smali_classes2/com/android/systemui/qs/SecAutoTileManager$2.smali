.class public final Lcom/android/systemui/qs/SecAutoTileManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.samsung.systemui.qs.action.ACTION_UPDATE_CUSTOMTILE_VISIBILITY"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_9

    .line 12
    .line 13
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string v0, "AutoTileManager"

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p0, "EmergencyMode is enabled : do not change tile list"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string/jumbo p1, "operation"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "componentName"

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "packageName"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string/jumbo v3, "tileName"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "index"

    .line 63
    .line 64
    const/4 v5, -0x1

    .line 65
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    const-string v4, "TileVisibilityUpdate : ["

    .line 70
    .line 71
    const-string v6, "] "

    .line 72
    .line 73
    const-string v7, ":"

    .line 74
    .line 75
    invoke-static {v4, p1, v6, v3, v7}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v6, ", "

    .line 80
    .line 81
    invoke-static {v4, v2, v6, v1, v6}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v4, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v2, :cond_9

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    if-eqz v3, :cond_9

    .line 92
    .line 93
    new-instance v0, Landroid/content/ComponentName;

    .line 94
    .line 95
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v1, "add"

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const-string v2, "SecQQSTileHost"

    .line 105
    .line 106
    const-string v4, "QQsWifiCallingTileIndex"

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const-string v7, "WifiCalling"

    .line 110
    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda13;

    .line 121
    .line 122
    invoke-direct {v1, p1, v0, v3, p2}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p1, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 126
    .line 127
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    const/4 v1, 0x1

    .line 137
    invoke-static {p1, v1, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->-$$Nest$mupdateRemovedTileListByAppIntent(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 152
    .line 153
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_9

    .line 162
    .line 163
    const-string p2, "QQsHasEditedQuickTileList"

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v0, p2, v6}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-static {v0, v4, v5}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    const-class v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 176
    .line 177
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQsTileMinNum(Landroid/content/Context;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    const-string v4, "addTileByIntent hasEdited="

    .line 191
    .line 192
    const-string v7, "  index="

    .line 193
    .line 194
    const-string v8, "  tiles="

    .line 195
    .line 196
    invoke-static {v4, p2, v7, v1, v8}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iget-object v7, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iget-object v2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 217
    .line 218
    const-string/jumbo v4, "sysui_quick_qs_tiles"

    .line 219
    .line 220
    .line 221
    if-nez p2, :cond_5

    .line 222
    .line 223
    if-ne v1, v5, :cond_5

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQQSTileHost;->getQQSDefaultTileList()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v7, ","

    .line 235
    .line 236
    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    array-length v7, p2

    .line 241
    :goto_0
    if-ge v6, v7, :cond_2

    .line 242
    .line 243
    aget-object v8, p2, v6

    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-eqz v9, :cond_1

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    if-eq p2, v5, :cond_9

    .line 267
    .line 268
    if-ge p2, v3, :cond_9

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecQQSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_3

    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQQSTileHost;->refreshTileList()V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :cond_3
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-le p1, v3, :cond_4

    .line 307
    .line 308
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    add-int/2addr p1, v5

    .line 313
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQQSTileHost;->changeTiles(Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    :cond_5
    if-eq v1, v5, :cond_9

    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-ge p2, v3, :cond_9

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 334
    .line 335
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    invoke-static {p2, v4, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/SecQQSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_6

    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQQSTileHost;->refreshTileList()V

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_6
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/SecQQSTileHost;->changeTiles(Ljava/util/List;)V

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_7
    const-string/jumbo p2, "remove"

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_9

    .line 372
    .line 373
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 374
    .line 375
    iget-object p1, p1, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 376
    .line 377
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSTileHost;->removeTileByUser(Landroid/content/ComponentName;)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 381
    .line 382
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-static {p1, v6, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->-$$Nest$mupdateRemovedTileListByAppIntent(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    .line 390
    .line 391
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 392
    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 401
    .line 402
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result p2

    .line 410
    if-eqz p2, :cond_8

    .line 411
    .line 412
    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    if-eq p2, v5, :cond_8

    .line 419
    .line 420
    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    .line 421
    .line 422
    invoke-static {v0, v4, p2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 423
    .line 424
    .line 425
    :cond_8
    const-string/jumbo p2, "removeTileByUser  "

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQQSTileHost;->removeTile(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :cond_9
    :goto_2
    return-void
.end method
