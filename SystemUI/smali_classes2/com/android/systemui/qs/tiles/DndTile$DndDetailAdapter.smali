.class public final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/qs/DNDDetailItems$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

.field public final mDndMenuOptions:[Ljava/lang/String;

.field public final mItemsList:Ljava/util/ArrayList;

.field public mMenuOptions:Landroid/view/ViewGroup;

.field public mSummary:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x6

    .line 14
    new-array p1, p1, [Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const v3, 0x7f0d0388

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f0a0684

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v2, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const v3, 0x7f0d037b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const v0, 0x7f0a0358

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/DndTile;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DndTile;->mSettingsObserver:Lcom/android/systemui/qs/tiles/DndTile$2;

    .line 65
    .line 66
    invoke-interface {v3, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 70
    .line 71
    iget-object v0, v3, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 72
    .line 73
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    iget-object v6, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 81
    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    move v6, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move v6, v4

    .line 87
    :goto_0
    if-eqz v6, :cond_1

    .line 88
    .line 89
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 90
    .line 91
    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 92
    .line 93
    if-nez v7, :cond_1

    .line 94
    .line 95
    move v7, v5

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v7, v4

    .line 98
    :goto_1
    if-eqz v6, :cond_2

    .line 99
    .line 100
    iget-object v8, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 101
    .line 102
    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 103
    .line 104
    if-eqz v8, :cond_2

    .line 105
    .line 106
    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_2

    .line 111
    .line 112
    move v8, v5

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    move v8, v4

    .line 115
    :goto_2
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 118
    .line 119
    if-nez v9, :cond_5

    .line 120
    .line 121
    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 122
    .line 123
    if-eqz v9, :cond_5

    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-nez v9, :cond_5

    .line 130
    .line 131
    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-eqz v10, :cond_4

    .line 146
    .line 147
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 152
    .line 153
    invoke-virtual {v10}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_3

    .line 158
    .line 159
    move v9, v5

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    move v9, v4

    .line 162
    :goto_3
    if-eqz v9, :cond_5

    .line 163
    .line 164
    move v9, v5

    .line 165
    goto :goto_4

    .line 166
    :cond_5
    move v9, v4

    .line 167
    :goto_4
    const-string/jumbo v10, "updateZenModeConfigState,isTurnOnAsManualRule: "

    .line 168
    .line 169
    .line 170
    const-string v11, ",isDurationForever: "

    .line 171
    .line 172
    const-string v12, ",isDurationTime: "

    .line 173
    .line 174
    invoke-static {v10, v6, v11, v7, v12}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    const-string v10, ",isAutomaticRule:"

    .line 179
    .line 180
    const-string v11, ",mIsSettingsUpdated:"

    .line 181
    .line 182
    invoke-static {v6, v8, v10, v9, v11}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-boolean v10, v3, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    .line 186
    .line 187
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    const-string v10, "DndTile"

    .line 195
    .line 196
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v10, ""

    .line 205
    .line 206
    iget-object v11, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    if-eqz v7, :cond_8

    .line 209
    .line 210
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 211
    .line 212
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 213
    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/tiles/DndTile;->getApplicationNameFromPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const v0, 0x7f130f9d

    .line 224
    .line 225
    .line 226
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v11, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    goto/16 :goto_18

    .line 235
    .line 236
    :cond_6
    iget-boolean v0, v3, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    .line 237
    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    goto/16 :goto_17

    .line 241
    .line 242
    :cond_7
    const/4 v0, 0x4

    .line 243
    goto/16 :goto_19

    .line 244
    .line 245
    :cond_8
    const v7, 0x7f130f3c

    .line 246
    .line 247
    .line 248
    const v12, 0x7f130f3b

    .line 249
    .line 250
    .line 251
    const/4 v13, -0x1

    .line 252
    if-eqz v8, :cond_20

    .line 253
    .line 254
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 255
    .line 256
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 257
    .line 258
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v8

    .line 262
    invoke-static {v8, v9}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-static {v11, v8, v9, v0, v6}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    if-eqz v0, :cond_9

    .line 275
    .line 276
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v11, v12, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    goto :goto_5

    .line 285
    :cond_9
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-virtual {v11, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    :goto_5
    iget-boolean v8, v3, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    .line 294
    .line 295
    if-eqz v8, :cond_a

    .line 296
    .line 297
    move-object v10, v7

    .line 298
    goto/16 :goto_17

    .line 299
    .line 300
    :cond_a
    iget v8, v3, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    .line 301
    .line 302
    if-ne v8, v13, :cond_1f

    .line 303
    .line 304
    check-cast v6, Ljava/lang/String;

    .line 305
    .line 306
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    invoke-static {v11, v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    const-string/jumbo v8, "pm"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    invoke-static {v11, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    const/16 v15, 0x3c

    .line 334
    .line 335
    if-eqz v12, :cond_b

    .line 336
    .line 337
    goto/16 :goto_d

    .line 338
    .line 339
    :cond_b
    const/16 v12, 0x3a

    .line 340
    .line 341
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    .line 342
    .line 343
    .line 344
    move-result v12

    .line 345
    if-lt v12, v5, :cond_13

    .line 346
    .line 347
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 348
    .line 349
    .line 350
    move-result v16

    .line 351
    add-int/lit8 v14, v16, -0x1

    .line 352
    .line 353
    if-lt v12, v14, :cond_c

    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_c
    if-nez v9, :cond_e

    .line 357
    .line 358
    add-int/lit8 v9, v12, -0x2

    .line 359
    .line 360
    if-ltz v9, :cond_d

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_d
    add-int/lit8 v9, v12, -0x1

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_e
    :goto_6
    add-int/lit8 v9, v12, -0x2

    .line 367
    .line 368
    :goto_7
    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 376
    if-eqz v14, :cond_f

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_f
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 383
    goto :goto_9

    .line 384
    :catch_0
    :goto_8
    move v9, v13

    .line 385
    :goto_9
    add-int/lit8 v14, v12, 0x1

    .line 386
    .line 387
    add-int/lit8 v12, v12, 0x3

    .line 388
    .line 389
    :try_start_2
    invoke-virtual {v6, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v12

    .line 393
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 397
    if-eqz v14, :cond_10

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_10
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v13
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 404
    :catch_1
    :goto_a
    if-ltz v9, :cond_11

    .line 405
    .line 406
    const/16 v12, 0x18

    .line 407
    .line 408
    if-ge v9, v12, :cond_11

    .line 409
    .line 410
    move v12, v5

    .line 411
    goto :goto_b

    .line 412
    :cond_11
    move v12, v4

    .line 413
    :goto_b
    if-eqz v12, :cond_13

    .line 414
    .line 415
    if-ltz v13, :cond_12

    .line 416
    .line 417
    if-ge v13, v15, :cond_12

    .line 418
    .line 419
    move v12, v5

    .line 420
    goto :goto_c

    .line 421
    :cond_12
    move v12, v4

    .line 422
    :goto_c
    if-eqz v12, :cond_13

    .line 423
    .line 424
    :try_start_4
    filled-new-array {v9, v13}, [I

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    goto :goto_e

    .line 429
    :cond_13
    :goto_d
    const/4 v9, 0x0

    .line 430
    :goto_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    const/16 v13, 0xb

    .line 435
    .line 436
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    .line 437
    .line 438
    .line 439
    move-result v13

    .line 440
    const/16 v14, 0xc

    .line 441
    .line 442
    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    mul-int/2addr v13, v15

    .line 447
    add-int/2addr v13, v12

    .line 448
    if-eqz v9, :cond_1a

    .line 449
    .line 450
    aget v6, v9, v4

    .line 451
    .line 452
    mul-int/lit8 v12, v6, 0x3c

    .line 453
    .line 454
    aget v14, v9, v5

    .line 455
    .line 456
    add-int/2addr v12, v14

    .line 457
    if-nez v0, :cond_14

    .line 458
    .line 459
    add-int/lit16 v12, v12, 0x5a0

    .line 460
    .line 461
    :cond_14
    if-ge v12, v13, :cond_15

    .line 462
    .line 463
    if-nez v7, :cond_15

    .line 464
    .line 465
    add-int/lit16 v12, v12, 0x2d0

    .line 466
    .line 467
    :cond_15
    sub-int/2addr v12, v13

    .line 468
    div-int/2addr v12, v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 469
    const/16 v13, 0xa

    .line 470
    .line 471
    const-string v14, "0"

    .line 472
    .line 473
    if-ge v6, v13, :cond_16

    .line 474
    .line 475
    if-eqz v7, :cond_16

    .line 476
    .line 477
    move-object v6, v14

    .line 478
    goto :goto_f

    .line 479
    :cond_16
    move-object v6, v10

    .line 480
    :goto_f
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    aget v6, v9, v4

    .line 489
    .line 490
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v6, ":"

    .line 494
    .line 495
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    new-instance v15, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    aget v6, v9, v5

    .line 511
    .line 512
    if-ge v6, v13, :cond_17

    .line 513
    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    aget v9, v9, v5

    .line 520
    .line 521
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    goto :goto_10

    .line 529
    :cond_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    :goto_10
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    if-nez v7, :cond_19

    .line 549
    .line 550
    if-eqz v8, :cond_18

    .line 551
    .line 552
    const-string v10, " pm"

    .line 553
    .line 554
    goto :goto_11

    .line 555
    :cond_18
    const-string v10, " am"

    .line 556
    .line 557
    :cond_19
    :goto_11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    goto :goto_12

    .line 565
    :cond_1a
    const/4 v12, 0x4

    .line 566
    :goto_12
    if-eqz v0, :cond_1b

    .line 567
    .line 568
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    const v6, 0x7f130f3b

    .line 573
    .line 574
    .line 575
    invoke-virtual {v11, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    iput-object v0, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 580
    .line 581
    goto :goto_13

    .line 582
    :cond_1b
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    const v6, 0x7f130f3c

    .line 587
    .line 588
    .line 589
    invoke-virtual {v11, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    iput-object v0, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 594
    .line 595
    :goto_13
    const/4 v0, 0x2

    .line 596
    if-ge v12, v0, :cond_1c

    .line 597
    .line 598
    goto :goto_14

    .line 599
    :cond_1c
    const/4 v5, 0x4

    .line 600
    if-lt v12, v0, :cond_1d

    .line 601
    .line 602
    if-ge v12, v5, :cond_1d

    .line 603
    .line 604
    const/4 v5, 0x2

    .line 605
    goto :goto_14

    .line 606
    :cond_1d
    if-ne v12, v5, :cond_1e

    .line 607
    .line 608
    const/4 v5, 0x3

    .line 609
    goto :goto_14

    .line 610
    :catch_2
    move-exception v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    .line 613
    .line 614
    :cond_1e
    const/4 v5, 0x5

    .line 615
    :goto_14
    iget-object v10, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 616
    .line 617
    move v0, v5

    .line 618
    goto/16 :goto_19

    .line 619
    .line 620
    :cond_1f
    move-object v10, v7

    .line 621
    move v0, v8

    .line 622
    goto/16 :goto_19

    .line 623
    .line 624
    :cond_20
    if-eqz v9, :cond_24

    .line 625
    .line 626
    iput v13, v3, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    .line 627
    .line 628
    invoke-static {v11, v5, v0, v4}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 633
    .line 634
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v8

    .line 646
    if-eqz v8, :cond_24

    .line 647
    .line 648
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v8

    .line 652
    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 653
    .line 654
    invoke-virtual {v8}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    if-eqz v9, :cond_21

    .line 659
    .line 660
    if-eqz v7, :cond_21

    .line 661
    .line 662
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    if-nez v9, :cond_21

    .line 667
    .line 668
    iget-object v9, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v9

    .line 674
    if-eqz v9, :cond_21

    .line 675
    .line 676
    iget-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 677
    .line 678
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    const-string v9, "\n"

    .line 683
    .line 684
    const v10, 0x7f130f3d

    .line 685
    .line 686
    .line 687
    if-eqz v0, :cond_23

    .line 688
    .line 689
    iget-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 690
    .line 691
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 696
    .line 697
    .line 698
    move-result-wide v12

    .line 699
    invoke-virtual {v0, v12, v13}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    .line 700
    .line 701
    .line 702
    move-result-wide v12

    .line 703
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    invoke-static {v11, v12, v13, v5, v0}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-static {v12, v13}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    .line 712
    .line 713
    .line 714
    move-result v5

    .line 715
    if-eqz v5, :cond_22

    .line 716
    .line 717
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    const v8, 0x7f130f3b

    .line 726
    .line 727
    .line 728
    invoke-virtual {v5, v8, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    goto :goto_15

    .line 736
    :cond_22
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const v8, 0x7f130f3c

    .line 745
    .line 746
    .line 747
    invoke-virtual {v5, v8, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v5

    .line 763
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v6

    .line 777
    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    goto :goto_16

    .line 789
    :cond_23
    iget-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 790
    .line 791
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/tiles/DndTile;->getApplicationNameFromPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    const-string v6, "("

    .line 798
    .line 799
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    const/16 v6, 0x29

    .line 806
    .line 807
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    .line 815
    .line 816
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 820
    .line 821
    .line 822
    move-result-object v7

    .line 823
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v7, v10, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    :goto_16
    move-object v10, v0

    .line 845
    :goto_17
    const/4 v0, 0x5

    .line 846
    goto :goto_19

    .line 847
    :cond_24
    :goto_18
    move v0, v4

    .line 848
    :goto_19
    iput-object v10, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 849
    .line 850
    iput v0, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    .line 851
    .line 852
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 853
    .line 854
    if-eqz v0, :cond_25

    .line 855
    .line 856
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 857
    .line 858
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 859
    .line 860
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    .line 862
    .line 863
    :cond_25
    const v0, 0x7f0a0357

    .line 864
    .line 865
    .line 866
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    check-cast v0, Landroid/view/ViewGroup;

    .line 871
    .line 872
    iput-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mMenuOptions:Landroid/view/ViewGroup;

    .line 873
    .line 874
    sget v3, Lcom/android/systemui/qs/DNDDetailItems;->$r8$clinit:I

    .line 875
    .line 876
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    const v5, 0x7f0d037d

    .line 881
    .line 882
    .line 883
    invoke-virtual {v3, v5, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    check-cast v0, Lcom/android/systemui/qs/DNDDetailItems;

    .line 888
    .line 889
    iput-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 890
    .line 891
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mMenuOptions:Landroid/view/ViewGroup;

    .line 892
    .line 893
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 894
    .line 895
    .line 896
    move v0, v4

    .line 897
    :goto_1a
    const/4 v3, 0x6

    .line 898
    if-ge v0, v3, :cond_29

    .line 899
    .line 900
    if-nez v0, :cond_26

    .line 901
    .line 902
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 903
    .line 904
    sget-object v5, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 905
    .line 906
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 907
    .line 908
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    const v5, 0x7f130f5b

    .line 913
    .line 914
    .line 915
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    goto :goto_1b

    .line 920
    :cond_26
    const/4 v3, 0x4

    .line 921
    if-ge v0, v3, :cond_27

    .line 922
    .line 923
    add-int/lit8 v3, v0, -0x1

    .line 924
    .line 925
    int-to-double v5, v3

    .line 926
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 927
    .line 928
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 929
    .line 930
    .line 931
    move-result-wide v5

    .line 932
    double-to-int v3, v5

    .line 933
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 934
    .line 935
    sget-object v6, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 936
    .line 937
    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 938
    .line 939
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 944
    .line 945
    .line 946
    move-result-object v6

    .line 947
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v6

    .line 951
    const v7, 0x7f11001b

    .line 952
    .line 953
    .line 954
    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    goto :goto_1b

    .line 959
    :cond_27
    if-ne v0, v3, :cond_28

    .line 960
    .line 961
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 962
    .line 963
    sget-object v5, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 964
    .line 965
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 966
    .line 967
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    const v5, 0x7f130f5d

    .line 972
    .line 973
    .line 974
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    goto :goto_1b

    .line 979
    :cond_28
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 980
    .line 981
    sget-object v5, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 982
    .line 983
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 984
    .line 985
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    const v5, 0x7f130f5c

    .line 990
    .line 991
    .line 992
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    :goto_1b
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    .line 997
    .line 998
    aput-object v3, v5, v0

    .line 999
    .line 1000
    add-int/lit8 v0, v0, 0x1

    .line 1001
    .line 1002
    goto :goto_1a

    .line 1003
    :cond_29
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateDndActivationItems(Z)V

    .line 1004
    .line 1005
    .line 1006
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    const-string v3, "DNDDetailItems.Do not disturb"

    .line 1012
    .line 1013
    iput-object v3, v0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    .line 1014
    .line 1015
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 1016
    .line 1017
    iget-object v3, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 1018
    .line 1019
    const/4 v4, 0x2

    .line 1020
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 1024
    .line 1025
    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1030
    .line 1031
    .line 1032
    return-object v2
.end method

.method public final getDetailAdapterSummary()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x95

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130dad

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

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "sec"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/16 v4, 0x258

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v3, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v4, 0x190

    .line 34
    .line 35
    invoke-static {v1, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v4, 0x7f060143

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const v6, 0x7f060144

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const v7, 0x7f060145

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    iget-object v8, p1, Lcom/android/systemui/qs/DNDDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/systemui/qs/DNDDetailItems$Item;->stv:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v10, ""

    .line 73
    .line 74
    if-ne v9, v10, :cond_0

    .line 75
    .line 76
    const/16 v9, 0x8

    .line 77
    .line 78
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :cond_0
    if-eqz v8, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ne v0, v2, :cond_1

    .line 92
    .line 93
    move v0, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move v0, v5

    .line 96
    :goto_0
    invoke-virtual {v8, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    move v7, v4

    .line 102
    :cond_2
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move v4, v6

    .line 109
    :goto_1
    invoke-virtual {v8, v4}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const v4, 0x7f08075d

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-virtual {p1, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    if-eqz p2, :cond_4

    .line 140
    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    move-object v6, p1

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move-object v6, v4

    .line 146
    :goto_2
    if-eqz p2, :cond_5

    .line 147
    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    move-object p1, v4

    .line 152
    :goto_3
    invoke-virtual {v8, v6, v4, p1, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    if-eqz p2, :cond_6

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    move-object v3, v1

    .line 159
    :goto_4
    invoke-virtual {v8, v3}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->getCount()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-lez p1, :cond_8

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_8
    move v2, v5

    .line 174
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 175
    .line 176
    const/4 p2, 0x3

    .line 177
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 181
    .line 182
    invoke-virtual {p0, p2, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final updateDndActivationItems(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget v3, Lcom/android/systemui/qs/DNDDetailItems;->$r8$clinit:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    if-eq v1, v5, :cond_2

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    if-eq v1, v6, :cond_2

    .line 25
    .line 26
    if-eq v1, v3, :cond_2

    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    if-eq v1, v6, :cond_1

    .line 30
    .line 31
    const/4 v6, 0x5

    .line 32
    if-eq v1, v6, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iput-object v2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mSelectedMenu:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->getCount()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-lez v1, :cond_4

    .line 61
    .line 62
    move v1, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v1, v4

    .line 65
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 71
    .line 72
    invoke-virtual {v0, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    .line 78
    .line 79
    if-nez p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 84
    .line 85
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$1;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    new-array v0, v0, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 109
    .line 110
    iget-object v0, p1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 116
    .line 117
    invoke-virtual {p1, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .line 123
    .line 124
    :goto_2
    return-void
.end method
