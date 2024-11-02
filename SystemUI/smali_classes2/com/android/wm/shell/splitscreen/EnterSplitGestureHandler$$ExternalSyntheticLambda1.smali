.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 11
    .line 12
    sget-object v13, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    sget-boolean v14, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    .line 15
    .line 16
    const-string v15, "init"

    .line 17
    .line 18
    if-eqz v14, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v12}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSupportSplitScreen:Z

    .line 33
    .line 34
    if-eqz v14, :cond_1

    .line 35
    .line 36
    const-string v0, "get settings"

    .line 37
    .line 38
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string/jumbo v3, "open_in_split_screen_view"

    .line 46
    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    invoke-static {v2, v3, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v10, 0x1

    .line 54
    if-ne v0, v10, :cond_2

    .line 55
    .line 56
    move v0, v10

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v0, v11

    .line 59
    :goto_0
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    .line 60
    .line 61
    const-string v4, "navigation_mode"

    .line 62
    .line 63
    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    move-object v6, v0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v7, "failed to load nav mode="

    .line 77
    .line 78
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    move v0, v11

    .line 95
    :goto_1
    iput v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    .line 96
    .line 97
    const-string v5, "device_provisioned"

    .line 98
    .line 99
    invoke-static {v2, v5, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    move v0, v10

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move v0, v11

    .line 108
    :goto_2
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    .line 109
    .line 110
    const-string/jumbo v6, "user_setup_complete"

    .line 111
    .line 112
    .line 113
    const/4 v0, -0x2

    .line 114
    invoke-static {v2, v6, v11, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    move v0, v10

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    move v0, v11

    .line 123
    :goto_3
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    .line 124
    .line 125
    :try_start_1
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mAtm:Landroid/app/IActivityTaskManager;

    .line 126
    .line 127
    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :catch_1
    move-exception v0

    .line 135
    if-eqz v14, :cond_5

    .line 136
    .line 137
    const-string v2, "Failed to get lock task mode."

    .line 138
    .line 139
    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_4
    invoke-static {v12, v11}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->getTalkbackComponent()Landroid/content/ComponentName;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_6
    new-instance v2, Landroid/content/ComponentName;

    .line 157
    .line 158
    const-string v7, "com.samsung.android.accessibility.talkback"

    .line 159
    .line 160
    const-string v8, "com.samsung.android.marvin.talkback.TalkBackService"

    .line 161
    .line 162
    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_5
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    .line 170
    .line 171
    if-eqz v14, :cond_7

    .line 172
    .line 173
    const-string/jumbo v0, "register observer"

    .line 174
    .line 175
    .line 176
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v2, "MultiWindow_twoFingerSplitGesture_TestTouchSlop"

    .line 184
    .line 185
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    const-string v2, "MultiWindow_twoFingerSplitGesture_TestFlag"

    .line 190
    .line 191
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    const-string v2, "enabled_accessibility_services"

    .line 208
    .line 209
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 214
    .line 215
    .line 216
    move-result-object v16

    .line 217
    new-instance v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 218
    .line 219
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mHandler:Landroid/os/Handler;

    .line 220
    .line 221
    move-object/from16 v17, v2

    .line 222
    .line 223
    move-object v2, v3

    .line 224
    move-object/from16 p0, v15

    .line 225
    .line 226
    move-object v15, v3

    .line 227
    move-object v3, v1

    .line 228
    move-object/from16 v18, v4

    .line 229
    .line 230
    move-object/from16 v4, v17

    .line 231
    .line 232
    move-object/from16 v17, v5

    .line 233
    .line 234
    move-object v5, v0

    .line 235
    move-object/from16 v19, v6

    .line 236
    .line 237
    move-object/from16 v6, v16

    .line 238
    .line 239
    move-object/from16 v16, v7

    .line 240
    .line 241
    move-object v7, v9

    .line 242
    move-object/from16 v20, v8

    .line 243
    .line 244
    move-object/from16 v21, v13

    .line 245
    .line 246
    move-object v13, v9

    .line 247
    move-object/from16 v9, v16

    .line 248
    .line 249
    move-object/from16 v10, v17

    .line 250
    .line 251
    move/from16 v22, v14

    .line 252
    .line 253
    move v14, v11

    .line 254
    move-object/from16 v11, v19

    .line 255
    .line 256
    move-object/from16 v23, v12

    .line 257
    .line 258
    move-object/from16 v12, v18

    .line 259
    .line 260
    invoke-direct/range {v2 .. v12}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 261
    .line 262
    .line 263
    iput-object v15, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 264
    .line 265
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 270
    .line 271
    invoke-virtual {v2, v0, v14, v3, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 279
    .line 280
    invoke-virtual {v0, v13, v14, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 288
    .line 289
    move-object/from16 v3, v20

    .line 290
    .line 291
    invoke-virtual {v0, v3, v14, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 299
    .line 300
    move-object/from16 v3, v16

    .line 301
    .line 302
    invoke-virtual {v0, v3, v14, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 310
    .line 311
    move-object/from16 v3, v17

    .line 312
    .line 313
    invoke-virtual {v0, v3, v14, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 321
    .line 322
    move-object/from16 v3, v19

    .line 323
    .line 324
    invoke-virtual {v0, v3, v14, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    .line 332
    .line 333
    move-object/from16 v3, v18

    .line 334
    .line 335
    invoke-virtual {v0, v3, v14, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 336
    .line 337
    .line 338
    if-eqz v22, :cond_8

    .line 339
    .line 340
    const-string/jumbo v0, "register broadcast"

    .line 341
    .line 342
    .line 343
    move-object/from16 v2, v21

    .line 344
    .line 345
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    :cond_8
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    .line 349
    .line 350
    new-instance v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;

    .line 351
    .line 352
    invoke-direct {v4, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    .line 353
    .line 354
    .line 355
    new-instance v5, Landroid/content/IntentFilter;

    .line 356
    .line 357
    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 358
    .line 359
    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v6, "com.samsung.android.permission.LOCK_TASK_MODE"

    .line 363
    .line 364
    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mHandler:Landroid/os/Handler;

    .line 365
    .line 366
    const/4 v8, 0x2

    .line 367
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iget v0, v0, Landroid/content/res/Configuration;->dexMode:I

    .line 379
    .line 380
    const/4 v2, 0x1

    .line 381
    if-ne v0, v2, :cond_9

    .line 382
    .line 383
    move v11, v2

    .line 384
    goto :goto_6

    .line 385
    :cond_9
    move v11, v14

    .line 386
    :goto_6
    iput-boolean v11, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    .line 387
    .line 388
    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;

    .line 389
    .line 390
    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    .line 391
    .line 392
    .line 393
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 394
    .line 395
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 396
    .line 397
    .line 398
    move-object/from16 v2, p0

    .line 399
    .line 400
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :goto_7
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 405
    .line 406
    const-string v1, "onSystemUiStateChanged"

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    nop

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
