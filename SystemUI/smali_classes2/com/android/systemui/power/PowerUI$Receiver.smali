.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mHasReceivedBattery:Z

.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string/jumbo v2, "safe mode case : "

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v4, :cond_23

    .line 21
    .line 22
    iput-boolean v5, v1, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 25
    .line 26
    iget v3, v2, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 27
    .line 28
    const-string v4, "level"

    .line 29
    .line 30
    const/16 v7, 0x64

    .line 31
    .line 32
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iput v4, v2, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 39
    .line 40
    iget v4, v2, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 41
    .line 42
    const-string/jumbo v7, "status"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iput v7, v2, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 50
    .line 51
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 52
    .line 53
    iget v7, v2, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 54
    .line 55
    const-string/jumbo v8, "plugged"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    iput v8, v2, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 63
    .line 64
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 65
    .line 66
    iget v8, v2, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 67
    .line 68
    if-eq v7, v8, :cond_0

    .line 69
    .line 70
    iget-object v8, v2, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/PowerUI$11;

    .line 73
    .line 74
    invoke-virtual {v8, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 78
    .line 79
    iput-boolean v6, v2, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 80
    .line 81
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 82
    .line 83
    iget v8, v2, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 84
    .line 85
    const-string v9, "invalid_charger"

    .line 86
    .line 87
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    iput v9, v2, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 92
    .line 93
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 94
    .line 95
    iget-object v9, v2, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 96
    .line 97
    iput-object v9, v2, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 98
    .line 99
    iget v9, v2, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 100
    .line 101
    if-eqz v9, :cond_1

    .line 102
    .line 103
    move v9, v5

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move v9, v6

    .line 106
    :goto_0
    if-eqz v7, :cond_2

    .line 107
    .line 108
    move v10, v5

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    move v10, v6

    .line 111
    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v11, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 116
    .line 117
    iget v12, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 118
    .line 119
    invoke-virtual {v11, v12}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    iget-object v12, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 124
    .line 125
    iget v13, v12, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 126
    .line 127
    iget-boolean v14, v12, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 128
    .line 129
    const-string/jumbo v15, "online"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    iput v15, v12, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 137
    .line 138
    iget-object v12, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 139
    .line 140
    const-string v15, "hv_charger"

    .line 141
    .line 142
    invoke-virtual {v0, v15, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    iput-boolean v15, v12, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 147
    .line 148
    iget-object v12, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 149
    .line 150
    iget-boolean v15, v12, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 151
    .line 152
    if-eqz v15, :cond_5

    .line 153
    .line 154
    const-string v15, "misc_event"

    .line 155
    .line 156
    invoke-virtual {v0, v15, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    and-int/lit8 v15, v15, 0x4

    .line 161
    .line 162
    if-nez v15, :cond_3

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_3
    move v5, v6

    .line 166
    :goto_2
    iput-boolean v5, v12, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 167
    .line 168
    iget-object v5, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 169
    .line 170
    const-string v12, "charge_type"

    .line 171
    .line 172
    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    const/4 v15, 0x2

    .line 177
    if-ne v12, v15, :cond_4

    .line 178
    .line 179
    const/4 v12, 0x1

    .line 180
    goto :goto_3

    .line 181
    :cond_4
    move v12, v6

    .line 182
    :goto_3
    iput-boolean v12, v5, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 183
    .line 184
    :cond_5
    const-string v5, "PowerUI"

    .line 185
    .line 186
    new-instance v12, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v15, "mBootCompleted = "

    .line 189
    .line 190
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 194
    .line 195
    iget-boolean v15, v15, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 196
    .line 197
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v15, " |  mFullyConnected = "

    .line 201
    .line 202
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 206
    .line 207
    iget-boolean v15, v15, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 208
    .line 209
    invoke-static {v12, v15, v5}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v5, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 213
    .line 214
    iget v12, v5, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 215
    .line 216
    iget v15, v5, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 217
    .line 218
    move/from16 p1, v13

    .line 219
    .line 220
    const-string v13, "misc_event"

    .line 221
    .line 222
    invoke-virtual {v0, v13, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    iput v6, v5, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 227
    .line 228
    const-string v5, "health"

    .line 229
    .line 230
    const/4 v6, 0x1

    .line 231
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    const-string v6, "PowerUI"

    .line 236
    .line 237
    const-string v13, "BATTERY_HEALTH_CHECK extraHealth="

    .line 238
    .line 239
    move/from16 v16, v15

    .line 240
    .line 241
    const-string v15, " mBatteryMiscEvent="

    .line 242
    .line 243
    invoke-static {v13, v5, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 248
    .line 249
    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 250
    .line 251
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    const/4 v6, 0x3

    .line 262
    if-ne v5, v6, :cond_6

    .line 263
    .line 264
    iget-object v6, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 265
    .line 266
    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 267
    .line 268
    const/high16 v13, 0x100000

    .line 269
    .line 270
    and-int/2addr v6, v13

    .line 271
    if-eqz v6, :cond_6

    .line 272
    .line 273
    const/16 v5, 0x8

    .line 274
    .line 275
    :cond_6
    iget-object v6, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 276
    .line 277
    iput v5, v6, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 278
    .line 279
    iget v5, v6, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 280
    .line 281
    sget-boolean v6, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    .line 282
    .line 283
    if-eqz v6, :cond_9

    .line 284
    .line 285
    const-string v13, "current_event"

    .line 286
    .line 287
    const/4 v15, 0x0

    .line 288
    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    and-int/lit8 v15, v13, 0x10

    .line 293
    .line 294
    if-eqz v15, :cond_7

    .line 295
    .line 296
    iget-object v13, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 297
    .line 298
    const/4 v15, 0x1

    .line 299
    iput v15, v13, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    and-int/lit8 v13, v13, 0x20

    .line 303
    .line 304
    if-eqz v13, :cond_8

    .line 305
    .line 306
    iget-object v13, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 307
    .line 308
    const/4 v15, 0x2

    .line 309
    iput v15, v13, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_8
    iget-object v13, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 313
    .line 314
    const/4 v15, 0x0

    .line 315
    iput v15, v13, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_9
    :goto_4
    const/4 v15, 0x0

    .line 319
    :goto_5
    iget-object v13, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 320
    .line 321
    move/from16 v17, v5

    .line 322
    .line 323
    const-string v5, "charger_type"

    .line 324
    .line 325
    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    iput v5, v13, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 330
    .line 331
    iget-object v5, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 332
    .line 333
    iget v13, v5, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    .line 334
    .line 335
    sget-boolean v18, Lcom/android/systemui/PowerUiRune;->HV_CHARGER_ENABLE_POPUP:Z

    .line 336
    .line 337
    move/from16 v19, v6

    .line 338
    .line 339
    if-eqz v18, :cond_a

    .line 340
    .line 341
    const-string v6, "current_event"

    .line 342
    .line 343
    invoke-virtual {v0, v6, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iput v0, v5, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    .line 348
    .line 349
    :cond_a
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 350
    .line 351
    iget-object v5, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 352
    .line 353
    iget v6, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 354
    .line 355
    iget v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 356
    .line 357
    iput v6, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStatus:I

    .line 358
    .line 359
    iput v15, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 360
    .line 361
    sget-boolean v5, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 362
    .line 363
    if-eqz v5, :cond_d

    .line 364
    .line 365
    iget v5, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 366
    .line 367
    if-eqz v5, :cond_c

    .line 368
    .line 369
    if-lez v5, :cond_b

    .line 370
    .line 371
    const/4 v5, 0x5

    .line 372
    if-ne v6, v5, :cond_b

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_b
    const/16 v5, 0x64

    .line 376
    .line 377
    if-ne v3, v5, :cond_d

    .line 378
    .line 379
    iget v5, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 380
    .line 381
    if-eq v3, v5, :cond_d

    .line 382
    .line 383
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isSleepChargingOn(Landroid/content/Context;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_d

    .line 390
    .line 391
    const-string v0, "PowerUI"

    .line 392
    .line 393
    const-string/jumbo v5, "show again AdaptiveProtection Notification"

    .line 394
    .line 395
    .line 396
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 400
    .line 401
    iget-object v5, v0, Lcom/android/systemui/power/PowerUI;->mSleepChargingEvent:Ljava/lang/String;

    .line 402
    .line 403
    iget-object v6, v0, Lcom/android/systemui/power/PowerUI;->mChargingStartTime:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/power/PowerUI;->checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_c
    :goto_6
    const/4 v5, 0x0

    .line 410
    iput-boolean v5, v0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->dismissAdaptiveProtectionNotification()V

    .line 413
    .line 414
    .line 415
    :cond_d
    :goto_7
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 416
    .line 417
    if-eqz v0, :cond_e

    .line 418
    .line 419
    const-string v5, "PowerUI"

    .line 420
    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v15, "buckets   ....."

    .line 424
    .line 425
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 429
    .line 430
    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 431
    .line 432
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v15, " .. "

    .line 436
    .line 437
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 441
    .line 442
    iget-object v15, v15, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 443
    .line 444
    const/16 v20, 0x0

    .line 445
    .line 446
    aget v15, v15, v20

    .line 447
    .line 448
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v15, " .. "

    .line 452
    .line 453
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 457
    .line 458
    iget-object v15, v15, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 459
    .line 460
    const/16 v20, 0x1

    .line 461
    .line 462
    aget v15, v15, v20

    .line 463
    .line 464
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    const-string v5, "PowerUI"

    .line 475
    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v15, "level          "

    .line 479
    .line 480
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v15, " --> "

    .line 487
    .line 488
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 492
    .line 493
    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 494
    .line 495
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    const-string v5, "PowerUI"

    .line 506
    .line 507
    new-instance v6, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string/jumbo v15, "status         "

    .line 510
    .line 511
    .line 512
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v15, " --> "

    .line 519
    .line 520
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 524
    .line 525
    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 526
    .line 527
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    const-string v5, "PowerUI"

    .line 538
    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    const-string/jumbo v15, "plugType       "

    .line 542
    .line 543
    .line 544
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v15, " --> "

    .line 551
    .line 552
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 556
    .line 557
    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 558
    .line 559
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v6

    .line 566
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    const-string v5, "PowerUI"

    .line 570
    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string v15, "invalidCharger "

    .line 574
    .line 575
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v15, " --> "

    .line 582
    .line 583
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 587
    .line 588
    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 589
    .line 590
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    const-string v5, "PowerUI"

    .line 601
    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    const-string v15, "bucket         "

    .line 605
    .line 606
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v15, " --> "

    .line 613
    .line 614
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    const-string v5, "PowerUI"

    .line 628
    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    const-string/jumbo v15, "plugged        "

    .line 632
    .line 633
    .line 634
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string v10, " --> "

    .line 641
    .line 642
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    const-string v5, "PowerUI"

    .line 656
    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    const-string v10, "current_Event  "

    .line 660
    .line 661
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const-string v10, " ---> "

    .line 668
    .line 669
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    iget-object v10, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 673
    .line 674
    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    .line 675
    .line 676
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v6

    .line 683
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    const-string v5, "PowerUI"

    .line 687
    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    const-string v10, "health  "

    .line 691
    .line 692
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    const-string v10, " ---> "

    .line 699
    .line 700
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    iget-object v10, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 704
    .line 705
    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 706
    .line 707
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    :cond_e
    iget-object v5, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 718
    .line 719
    iget-object v6, v5, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 720
    .line 721
    iget v5, v5, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 722
    .line 723
    iput v5, v6, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 724
    .line 725
    if-ltz v11, :cond_f

    .line 726
    .line 727
    move v10, v2

    .line 728
    move v5, v3

    .line 729
    const-wide/16 v2, 0x0

    .line 730
    .line 731
    iput-wide v2, v6, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 732
    .line 733
    goto :goto_8

    .line 734
    :cond_f
    move v10, v2

    .line 735
    move v5, v3

    .line 736
    iget v2, v6, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    .line 737
    .line 738
    if-ge v11, v2, :cond_10

    .line 739
    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 741
    .line 742
    .line 743
    move-result-wide v2

    .line 744
    iput-wide v2, v6, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 745
    .line 746
    :cond_10
    :goto_8
    iput v11, v6, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    .line 747
    .line 748
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 749
    .line 750
    iget-object v3, v2, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 751
    .line 752
    iget v2, v2, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 753
    .line 754
    check-cast v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 755
    .line 756
    iput v2, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 757
    .line 758
    if-ltz v11, :cond_11

    .line 759
    .line 760
    move v2, v5

    .line 761
    const-wide/16 v5, 0x0

    .line 762
    .line 763
    iput-wide v5, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 764
    .line 765
    goto :goto_9

    .line 766
    :cond_11
    move v2, v5

    .line 767
    iget v5, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 768
    .line 769
    if-ge v11, v5, :cond_12

    .line 770
    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 772
    .line 773
    .line 774
    move-result-wide v5

    .line 775
    iput-wide v5, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 776
    .line 777
    :cond_12
    :goto_9
    iput v11, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 778
    .line 779
    if-nez v8, :cond_13

    .line 780
    .line 781
    iget-object v3, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 782
    .line 783
    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 784
    .line 785
    if-eqz v3, :cond_13

    .line 786
    .line 787
    const-string v0, "PowerUI"

    .line 788
    .line 789
    const-string/jumbo v2, "showing invalid charger warning"

    .line 790
    .line 791
    .line 792
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 796
    .line 797
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 798
    .line 799
    check-cast v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 800
    .line 801
    const/4 v1, 0x1

    .line 802
    iput-boolean v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 803
    .line 804
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :cond_13
    if-eqz v8, :cond_15

    .line 809
    .line 810
    iget-object v3, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 811
    .line 812
    iget v5, v3, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 813
    .line 814
    if-nez v5, :cond_15

    .line 815
    .line 816
    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 817
    .line 818
    check-cast v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 819
    .line 820
    iget-boolean v5, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 821
    .line 822
    if-eqz v5, :cond_14

    .line 823
    .line 824
    const-string v5, "PowerUI.Notification"

    .line 825
    .line 826
    const-string v6, "dismissing invalid charger notification"

    .line 827
    .line 828
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .line 830
    .line 831
    :cond_14
    const/4 v5, 0x0

    .line 832
    iput-boolean v5, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 833
    .line 834
    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 835
    .line 836
    .line 837
    goto :goto_a

    .line 838
    :cond_15
    iget-object v3, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 839
    .line 840
    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 841
    .line 842
    check-cast v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 843
    .line 844
    iget-boolean v3, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 845
    .line 846
    if-eqz v3, :cond_17

    .line 847
    .line 848
    if-eqz v0, :cond_16

    .line 849
    .line 850
    const-string v0, "PowerUI"

    .line 851
    .line 852
    const-string v1, "Bad Charger"

    .line 853
    .line 854
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    :cond_16
    return-void

    .line 858
    :cond_17
    :goto_a
    iget-object v3, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 859
    .line 860
    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    .line 861
    .line 862
    if-eqz v3, :cond_18

    .line 863
    .line 864
    const/4 v5, 0x1

    .line 865
    invoke-interface {v3, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 866
    .line 867
    .line 868
    if-eqz v0, :cond_18

    .line 869
    .line 870
    const-string v0, "PowerUI"

    .line 871
    .line 872
    const-string v3, "cancelled task"

    .line 873
    .line 874
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    :cond_18
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 878
    .line 879
    new-instance v3, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;

    .line 880
    .line 881
    invoke-direct {v3, v1, v9, v11}, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/PowerUI$Receiver;ZI)V

    .line 882
    .line 883
    .line 884
    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    iput-object v3, v0, Lcom/android/systemui/power/PowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    .line 889
    .line 890
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 891
    .line 892
    invoke-static {v0, v7}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckConnectedChargerStatus(Lcom/android/systemui/power/PowerUI;I)V

    .line 893
    .line 894
    .line 895
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 896
    .line 897
    invoke-static {v7, v4, v0, v14}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mplayChargerConnectionAnimation(IILcom/android/systemui/power/PowerUI;Z)V

    .line 898
    .line 899
    .line 900
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 901
    .line 902
    invoke-static {v7, v4, v0, v14}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mplayChargerConnectionSound(IILcom/android/systemui/power/PowerUI;Z)V

    .line 903
    .line 904
    .line 905
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 906
    .line 907
    move/from16 v3, v16

    .line 908
    .line 909
    invoke-static {v0, v3}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckWirelessMisalign(Lcom/android/systemui/power/PowerUI;I)V

    .line 910
    .line 911
    .line 912
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 913
    .line 914
    invoke-static {v0, v7, v4, v12}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mshowChargingNotice(Lcom/android/systemui/power/PowerUI;III)V

    .line 915
    .line 916
    .line 917
    if-eqz v19, :cond_19

    .line 918
    .line 919
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 920
    .line 921
    move/from16 v5, v17

    .line 922
    .line 923
    invoke-static {v0, v5, v4}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckBatterySwellingStatus(Lcom/android/systemui/power/PowerUI;II)V

    .line 924
    .line 925
    .line 926
    :cond_19
    const-string v0, "PowerUI"

    .line 927
    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    const-string v6, "mBatteryMiscEvent = "

    .line 931
    .line 932
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    iget-object v6, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 936
    .line 937
    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 938
    .line 939
    invoke-static {v5, v6, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 940
    .line 941
    .line 942
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 943
    .line 944
    iget v5, v0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 945
    .line 946
    and-int/lit16 v5, v5, 0x4000

    .line 947
    .line 948
    if-eqz v5, :cond_1a

    .line 949
    .line 950
    const/4 v5, 0x1

    .line 951
    goto :goto_b

    .line 952
    :cond_1a
    const/4 v5, 0x0

    .line 953
    :goto_b
    invoke-static {v12, v0, v5}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckBatteryHealthInterruptionStatus(ILcom/android/systemui/power/PowerUI;Z)V

    .line 954
    .line 955
    .line 956
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    .line 957
    .line 958
    if-eqz v0, :cond_1b

    .line 959
    .line 960
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 961
    .line 962
    move/from16 v5, p1

    .line 963
    .line 964
    invoke-static {v0, v5}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckIncompatibleChargerConnection(Lcom/android/systemui/power/PowerUI;I)V

    .line 965
    .line 966
    .line 967
    :cond_1b
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->FULL_BATTERY_CHECK:Z

    .line 968
    .line 969
    if-eqz v0, :cond_1c

    .line 970
    .line 971
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 972
    .line 973
    invoke-static {v0, v4}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckFullBatteryStatus(Lcom/android/systemui/power/PowerUI;I)V

    .line 974
    .line 975
    .line 976
    :cond_1c
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 977
    .line 978
    invoke-static {v0, v2, v10, v11}, Lcom/android/systemui/power/PowerUI;->-$$Nest$msendLowBatteryDumpIfNeeded(Lcom/android/systemui/power/PowerUI;III)V

    .line 979
    .line 980
    .line 981
    if-eqz v18, :cond_1d

    .line 982
    .line 983
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 984
    .line 985
    invoke-static {v0, v13}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckHVchargerEnableConnection(Lcom/android/systemui/power/PowerUI;I)V

    .line 986
    .line 987
    .line 988
    :cond_1d
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 989
    .line 990
    invoke-static {v0, v3}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckAbnormalChargingPad(Lcom/android/systemui/power/PowerUI;I)V

    .line 991
    .line 992
    .line 993
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    .line 994
    .line 995
    if-eqz v0, :cond_1e

    .line 996
    .line 997
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 998
    .line 999
    invoke-static {v0, v2}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckTipsNotification(Lcom/android/systemui/power/PowerUI;I)V

    .line 1000
    .line 1001
    .line 1002
    :cond_1e
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    .line 1003
    .line 1004
    if-eqz v0, :cond_1f

    .line 1005
    .line 1006
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1007
    .line 1008
    invoke-static {v0, v2}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckTurnOffPsmNotification(Lcom/android/systemui/power/PowerUI;I)V

    .line 1009
    .line 1010
    .line 1011
    :cond_1f
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 1012
    .line 1013
    if-eqz v0, :cond_20

    .line 1014
    .line 1015
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1016
    .line 1017
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckTurnOnProtectBatteryByLongTermCharge(Lcom/android/systemui/power/PowerUI;)V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_c

    .line 1021
    :cond_20
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    .line 1022
    .line 1023
    if-eqz v0, :cond_21

    .line 1024
    .line 1025
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1026
    .line 1027
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckTurnOnProtectBatteryByLongTa(Lcom/android/systemui/power/PowerUI;)V

    .line 1028
    .line 1029
    .line 1030
    :cond_21
    :goto_c
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    .line 1031
    .line 1032
    if-eqz v0, :cond_22

    .line 1033
    .line 1034
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1035
    .line 1036
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->checkBatteryProtectionNotification()V

    .line 1037
    .line 1038
    .line 1039
    :cond_22
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_TIPS_NOTIFICATION:Z

    .line 1040
    .line 1041
    if-eqz v0, :cond_52

    .line 1042
    .line 1043
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1044
    .line 1045
    invoke-static {v0, v7}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckBatteryProtectionTipsNotification(Lcom/android/systemui/power/PowerUI;I)V

    .line 1046
    .line 1047
    .line 1048
    goto/16 :goto_1b

    .line 1049
    .line 1050
    :cond_23
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    .line 1051
    .line 1052
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v4

    .line 1056
    if-eqz v4, :cond_29

    .line 1057
    .line 1058
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1059
    .line 1060
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1061
    .line 1062
    iget-boolean v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 1063
    .line 1064
    const-string v3, "PowerUI"

    .line 1065
    .line 1066
    if-eqz v2, :cond_24

    .line 1067
    .line 1068
    invoke-virtual {v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    .line 1069
    .line 1070
    .line 1071
    const-string v2, "Language is changed so notify LowBatteryNotification again"

    .line 1072
    .line 1073
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .line 1075
    .line 1076
    :cond_24
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 1077
    .line 1078
    if-lez v2, :cond_25

    .line 1079
    .line 1080
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 1081
    .line 1082
    if-nez v2, :cond_25

    .line 1083
    .line 1084
    const/4 v2, 0x0

    .line 1085
    iput-boolean v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 1086
    .line 1087
    iput v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 1088
    .line 1089
    iput v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 1090
    .line 1091
    const-wide/16 v4, 0x0

    .line 1092
    .line 1093
    iput-wide v4, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 1094
    .line 1095
    iput-boolean v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1096
    .line 1097
    invoke-virtual {v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 1098
    .line 1099
    .line 1100
    const-string v2, "SecPowerUI.Notification"

    .line 1101
    .line 1102
    const-string v4, "dismissChargingNotification()"

    .line 1103
    .line 1104
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .line 1106
    .line 1107
    const/4 v2, 0x2

    .line 1108
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 1109
    .line 1110
    .line 1111
    const-string v2, "Language is changed so notify ChargingNotification again"

    .line 1112
    .line 1113
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingNotice()V

    .line 1117
    .line 1118
    .line 1119
    :cond_25
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    .line 1120
    .line 1121
    if-eqz v2, :cond_27

    .line 1122
    .line 1123
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 1124
    .line 1125
    if-nez v2, :cond_27

    .line 1126
    .line 1127
    iget-object v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1128
    .line 1129
    if-eqz v2, :cond_26

    .line 1130
    .line 1131
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1132
    .line 1133
    .line 1134
    :cond_26
    const-string v2, "SecPowerUI.Notification"

    .line 1135
    .line 1136
    const-string v4, "dismissing incompatible charger notification"

    .line 1137
    .line 1138
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    .line 1140
    .line 1141
    const/4 v2, 0x3

    .line 1142
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 1143
    .line 1144
    .line 1145
    const-string v2, "Language is changed so notify incompatible charger again"

    .line 1146
    .line 1147
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showIncompatibleChargerNotice()V

    .line 1151
    .line 1152
    .line 1153
    :cond_27
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 1154
    .line 1155
    if-eqz v1, :cond_28

    .line 1156
    .line 1157
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 1158
    .line 1159
    invoke-static {v1}, Lcom/android/systemui/power/PowerUtils;->isSleepChargingOn(Landroid/content/Context;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    if-eqz v1, :cond_28

    .line 1164
    .line 1165
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mSleepChargingEvent:Ljava/lang/String;

    .line 1166
    .line 1167
    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mChargingStartTime:Ljava/lang/String;

    .line 1168
    .line 1169
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    :cond_28
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    .line 1173
    .line 1174
    if-eqz v1, :cond_52

    .line 1175
    .line 1176
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->checkBatteryProtectionNotification()V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_1b

    .line 1180
    .line 1181
    :cond_29
    const-string v4, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 1182
    .line 1183
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v4

    .line 1187
    const/4 v5, 0x0

    .line 1188
    if-eqz v4, :cond_34

    .line 1189
    .line 1190
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1191
    .line 1192
    iget-boolean v3, v2, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 1193
    .line 1194
    const-string v4, "misc_event"

    .line 1195
    .line 1196
    const/4 v6, 0x0

    .line 1197
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1198
    .line 1199
    .line 1200
    move-result v4

    .line 1201
    const/16 v6, 0x100

    .line 1202
    .line 1203
    and-int/2addr v4, v6

    .line 1204
    if-ne v4, v6, :cond_2a

    .line 1205
    .line 1206
    const/4 v4, 0x1

    .line 1207
    goto :goto_d

    .line 1208
    :cond_2a
    const/4 v4, 0x0

    .line 1209
    :goto_d
    iput-boolean v4, v2, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 1210
    .line 1211
    const-string v4, "SUPPORT_WIRELESS_CHARGER_FOD_POPUP - oldWirelessFodState : "

    .line 1212
    .line 1213
    const-string v6, ", mWirelessFodState : "

    .line 1214
    .line 1215
    invoke-static {v4, v3, v6}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v4

    .line 1219
    iget-boolean v6, v2, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 1220
    .line 1221
    const-string v7, "PowerUI"

    .line 1222
    .line 1223
    invoke-static {v4, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    iget-boolean v4, v2, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 1227
    .line 1228
    if-eq v3, v4, :cond_2c

    .line 1229
    .line 1230
    if-eqz v4, :cond_2c

    .line 1231
    .line 1232
    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1233
    .line 1234
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1235
    .line 1236
    .line 1237
    const-string v3, "SecPowerUI.Notification"

    .line 1238
    .line 1239
    const-string/jumbo v4, "showWirelessFodAlertDialog"

    .line 1240
    .line 1241
    .line 1242
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .line 1244
    .line 1245
    iget-object v3, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1246
    .line 1247
    if-nez v3, :cond_2c

    .line 1248
    .line 1249
    const/16 v3, 0xb

    .line 1250
    .line 1251
    invoke-virtual {v2, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    iput-object v3, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1256
    .line 1257
    if-nez v3, :cond_2b

    .line 1258
    .line 1259
    goto :goto_e

    .line 1260
    :cond_2b
    new-instance v4, Lcom/android/systemui/power/SecPowerNotificationWarnings$14;

    .line 1261
    .line 1262
    invoke-direct {v4, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v2, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1269
    .line 1270
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1271
    .line 1272
    .line 1273
    :cond_2c
    :goto_e
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1274
    .line 1275
    iget-boolean v3, v2, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1276
    .line 1277
    iget-boolean v4, v2, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 1278
    .line 1279
    const-string v6, "misc_event"

    .line 1280
    .line 1281
    const/4 v7, 0x0

    .line 1282
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1283
    .line 1284
    .line 1285
    move-result v8

    .line 1286
    const/4 v9, 0x1

    .line 1287
    and-int/2addr v8, v9

    .line 1288
    if-ne v8, v9, :cond_2d

    .line 1289
    .line 1290
    const/4 v8, 0x1

    .line 1291
    goto :goto_f

    .line 1292
    :cond_2d
    move v8, v7

    .line 1293
    :goto_f
    iput-boolean v8, v2, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1294
    .line 1295
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1296
    .line 1297
    .line 1298
    move-result v6

    .line 1299
    const/16 v7, 0x20

    .line 1300
    .line 1301
    and-int/2addr v6, v7

    .line 1302
    if-ne v6, v7, :cond_2e

    .line 1303
    .line 1304
    const/4 v6, 0x1

    .line 1305
    goto :goto_10

    .line 1306
    :cond_2e
    const/4 v6, 0x0

    .line 1307
    :goto_10
    iput-boolean v6, v2, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 1308
    .line 1309
    iget-object v7, v2, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1310
    .line 1311
    iput-boolean v6, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 1312
    .line 1313
    const-string v6, "SUPPORT_WATER_PROTECTION_POPUP - oldBatteryWaterConnector : "

    .line 1314
    .line 1315
    const-string v8, ", mBatteryWaterConnector : "

    .line 1316
    .line 1317
    invoke-static {v6, v3, v8}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v6

    .line 1321
    iget-boolean v8, v2, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1322
    .line 1323
    const-string v9, ", oldHiccupState : "

    .line 1324
    .line 1325
    const-string v10, ", mIsHiccupState : "

    .line 1326
    .line 1327
    invoke-static {v6, v8, v9, v4, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    iget-boolean v8, v2, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 1331
    .line 1332
    const-string v9, "PowerUI"

    .line 1333
    .line 1334
    invoke-static {v6, v8, v9}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    iget-boolean v6, v2, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 1338
    .line 1339
    const-string v8, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 1340
    .line 1341
    iget-object v10, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 1342
    .line 1343
    if-eq v4, v6, :cond_2f

    .line 1344
    .line 1345
    if-eqz v6, :cond_32

    .line 1346
    .line 1347
    iget-boolean v2, v2, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1348
    .line 1349
    invoke-virtual {v7, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    .line 1350
    .line 1351
    .line 1352
    const-string/jumbo v2, "showWaterProtectionAlertDialog by hiccup state : show and sending intent ACTION_USB_DAMAGE_PROTECTION_POPUP_SHOW"

    .line 1353
    .line 1354
    .line 1355
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    .line 1357
    .line 1358
    new-instance v2, Landroid/content/Intent;

    .line 1359
    .line 1360
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1364
    .line 1365
    .line 1366
    goto :goto_11

    .line 1367
    :cond_2f
    iget-boolean v2, v2, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1368
    .line 1369
    if-eq v3, v2, :cond_32

    .line 1370
    .line 1371
    if-eqz v2, :cond_30

    .line 1372
    .line 1373
    invoke-virtual {v7, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    .line 1374
    .line 1375
    .line 1376
    const-string/jumbo v2, "showWaterProtectionAlertDialog by mBatteryWaterConnector : show and sending intent ACTION_USB_DAMAGE_PROTECTION_POPUP_SHOW"

    .line 1377
    .line 1378
    .line 1379
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    .line 1381
    .line 1382
    new-instance v2, Landroid/content/Intent;

    .line 1383
    .line 1384
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1388
    .line 1389
    .line 1390
    goto :goto_11

    .line 1391
    :cond_30
    const-string v3, "dismiss WaterProtectionAlertDialog - isWaterDetected = "

    .line 1392
    .line 1393
    const-string v4, " mIsWaterDetected = "

    .line 1394
    .line 1395
    invoke-static {v3, v2, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    iget-boolean v4, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    .line 1400
    .line 1401
    const-string v6, "SecPowerUI.Notification"

    .line 1402
    .line 1403
    invoke-static {v3, v4, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    iput-boolean v2, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    .line 1407
    .line 1408
    iget-object v2, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 1409
    .line 1410
    iget-object v3, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    .line 1411
    .line 1412
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1413
    .line 1414
    .line 1415
    iget-object v2, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1416
    .line 1417
    if-eqz v2, :cond_31

    .line 1418
    .line 1419
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1420
    .line 1421
    .line 1422
    iput-object v5, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1423
    .line 1424
    :cond_31
    iget-object v2, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1425
    .line 1426
    if-eqz v2, :cond_32

    .line 1427
    .line 1428
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1429
    .line 1430
    .line 1431
    :cond_32
    :goto_11
    iget-object v1, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1432
    .line 1433
    iget-boolean v2, v1, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 1434
    .line 1435
    const-string v3, "misc_event"

    .line 1436
    .line 1437
    const/4 v4, 0x0

    .line 1438
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1439
    .line 1440
    .line 1441
    move-result v0

    .line 1442
    const/16 v3, 0x2000

    .line 1443
    .line 1444
    and-int/2addr v0, v3

    .line 1445
    if-ne v0, v3, :cond_33

    .line 1446
    .line 1447
    const/4 v0, 0x1

    .line 1448
    goto :goto_12

    .line 1449
    :cond_33
    const/4 v0, 0x0

    .line 1450
    :goto_12
    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 1451
    .line 1452
    const-string v0, "USB damage detection - oldTemperatureHiccupState : "

    .line 1453
    .line 1454
    const-string v3, ", mTemperatureHiccupState : "

    .line 1455
    .line 1456
    invoke-static {v0, v2, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    iget-boolean v3, v1, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 1461
    .line 1462
    const-string v4, "PowerUI"

    .line 1463
    .line 1464
    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    iget-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 1468
    .line 1469
    iget-object v3, v1, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1470
    .line 1471
    iput-boolean v0, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    .line 1472
    .line 1473
    if-eq v2, v0, :cond_52

    .line 1474
    .line 1475
    if-eqz v0, :cond_52

    .line 1476
    .line 1477
    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showUsbDamageProtectionAlertDialog()V

    .line 1478
    .line 1479
    .line 1480
    new-instance v0, Landroid/content/Intent;

    .line 1481
    .line 1482
    const-string v2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 1483
    .line 1484
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 1488
    .line 1489
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1490
    .line 1491
    .line 1492
    goto/16 :goto_1b

    .line 1493
    .line 1494
    :cond_34
    const-string v4, "com.samsung.intent.action.KSO_SHOW_POPUP"

    .line 1495
    .line 1496
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v4

    .line 1500
    if-eqz v4, :cond_3e

    .line 1501
    .line 1502
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1503
    .line 1504
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1505
    .line 1506
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1507
    .line 1508
    .line 1509
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1510
    .line 1511
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v0

    .line 1515
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1516
    .line 1517
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1518
    .line 1519
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1520
    .line 1521
    const-string v2, "SecPowerUI.Notification"

    .line 1522
    .line 1523
    const-string/jumbo v3, "showUnintentionallyLcdOnNotice() - isLock ? "

    .line 1524
    .line 1525
    .line 1526
    invoke-static {v3, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    const-string/jumbo v2, "showUnintentionalLcdOnWindow addview - isCover = "

    .line 1530
    .line 1531
    .line 1532
    monitor-enter v1

    .line 1533
    :try_start_0
    iget-boolean v3, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    .line 1535
    if-eqz v3, :cond_35

    .line 1536
    .line 1537
    monitor-exit v1

    .line 1538
    goto/16 :goto_1b

    .line 1539
    .line 1540
    :cond_35
    :try_start_1
    const-string v3, "SecPowerUI.Notification"

    .line 1541
    .line 1542
    const-string/jumbo v4, "showUnintentionalLcdOnWindow"

    .line 1543
    .line 1544
    .line 1545
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    .line 1547
    .line 1548
    if-eqz v0, :cond_36

    .line 1549
    .line 1550
    iget-object v3, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    .line 1551
    .line 1552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1553
    .line 1554
    .line 1555
    move-result-wide v6

    .line 1556
    const/4 v4, 0x2

    .line 1557
    const/4 v8, 0x0

    .line 1558
    invoke-virtual {v3, v6, v7, v4, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1559
    .line 1560
    .line 1561
    :cond_36
    iget-object v3, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1562
    .line 1563
    if-nez v3, :cond_37

    .line 1564
    .line 1565
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 1566
    .line 1567
    const/4 v7, -0x1

    .line 1568
    const/4 v8, -0x1

    .line 1569
    const/16 v9, 0x7e5

    .line 1570
    .line 1571
    const/16 v10, 0x100

    .line 1572
    .line 1573
    const/4 v11, -0x3

    .line 1574
    move-object v6, v3

    .line 1575
    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1576
    .line 1577
    .line 1578
    iput-object v3, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1579
    .line 1580
    :cond_37
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 1581
    .line 1582
    if-eqz v3, :cond_38

    .line 1583
    .line 1584
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v3

    .line 1588
    invoke-virtual {v3}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 1589
    .line 1590
    .line 1591
    move-result v3

    .line 1592
    if-eqz v3, :cond_38

    .line 1593
    .line 1594
    const/4 v3, 0x1

    .line 1595
    goto :goto_13

    .line 1596
    :cond_38
    const/4 v3, 0x0

    .line 1597
    :goto_13
    if-nez v3, :cond_39

    .line 1598
    .line 1599
    iget-object v4, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1600
    .line 1601
    const/4 v6, 0x1

    .line 1602
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1603
    .line 1604
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1605
    .line 1606
    goto :goto_14

    .line 1607
    :cond_39
    iget-object v4, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1608
    .line 1609
    const/4 v6, 0x3

    .line 1610
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1611
    .line 1612
    :goto_14
    iget-object v4, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1613
    .line 1614
    const/4 v6, 0x0

    .line 1615
    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1616
    .line 1617
    .line 1618
    iget-object v4, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1619
    .line 1620
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1621
    .line 1622
    or-int/lit8 v6, v6, 0x2

    .line 1623
    .line 1624
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1625
    .line 1626
    if-nez v0, :cond_3a

    .line 1627
    .line 1628
    const-wide/16 v6, 0x2710

    .line 1629
    .line 1630
    invoke-virtual {v4, v6, v7}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 1631
    .line 1632
    .line 1633
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1634
    .line 1635
    const-wide/16 v6, 0x0

    .line 1636
    .line 1637
    invoke-virtual {v0, v6, v7}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 1638
    .line 1639
    .line 1640
    :cond_3a
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1641
    .line 1642
    const-string v4, "UnintentionalLcdOn"

    .line 1643
    .line 1644
    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1645
    .line 1646
    .line 1647
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    .line 1648
    .line 1649
    if-eqz v0, :cond_3b

    .line 1650
    .line 1651
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1652
    .line 1653
    if-nez v0, :cond_3d

    .line 1654
    .line 1655
    :cond_3b
    const-string v0, "SecPowerUI.Notification"

    .line 1656
    .line 1657
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1660
    .line 1661
    .line 1662
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v2

    .line 1669
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    .line 1671
    .line 1672
    if-eqz v3, :cond_3c

    .line 1673
    .line 1674
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1675
    .line 1676
    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v0

    .line 1680
    const-string/jumbo v2, "window"

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v2

    .line 1687
    check-cast v2, Landroid/view/WindowManager;

    .line 1688
    .line 1689
    iput-object v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    .line 1690
    .line 1691
    const v2, 0x7f0d0313

    .line 1692
    .line 1693
    .line 1694
    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v0

    .line 1698
    check-cast v0, Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1699
    .line 1700
    iput-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1701
    .line 1702
    goto :goto_15

    .line 1703
    :cond_3c
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1704
    .line 1705
    const-string/jumbo v2, "window"

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v0

    .line 1712
    check-cast v0, Landroid/view/WindowManager;

    .line 1713
    .line 1714
    iput-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    .line 1715
    .line 1716
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1717
    .line 1718
    const v2, 0x7f0d04f9

    .line 1719
    .line 1720
    .line 1721
    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v0

    .line 1725
    check-cast v0, Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1726
    .line 1727
    iput-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1728
    .line 1729
    :goto_15
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1730
    .line 1731
    invoke-virtual {v0, v3}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setCoverState(Z)V

    .line 1732
    .line 1733
    .line 1734
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    .line 1735
    .line 1736
    iget-object v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1737
    .line 1738
    iget-object v3, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 1739
    .line 1740
    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1741
    .line 1742
    .line 1743
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 1744
    .line 1745
    iput-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1746
    .line 1747
    :cond_3d
    const/4 v0, 0x1

    .line 1748
    iput-boolean v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1749
    .line 1750
    monitor-exit v1

    .line 1751
    goto/16 :goto_1b

    .line 1752
    .line 1753
    :catchall_0
    move-exception v0

    .line 1754
    monitor-exit v1

    .line 1755
    throw v0

    .line 1756
    :cond_3e
    const-string v4, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    .line 1757
    .line 1758
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1759
    .line 1760
    .line 1761
    move-result v4

    .line 1762
    if-eqz v4, :cond_3f

    .line 1763
    .line 1764
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1765
    .line 1766
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1767
    .line 1768
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1769
    .line 1770
    .line 1771
    const-string v1, "SecPowerUI.Notification"

    .line 1772
    .line 1773
    const-string v2, "dismissUnintentionallyLcdOnNotice"

    .line 1774
    .line 1775
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissUnintentionalLcdOnWindow()V

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_1b

    .line 1782
    .line 1783
    :cond_3f
    const-string v4, "com.samsung.systemui.power.action.WATER_ALERT_SOUND_TEST"

    .line 1784
    .line 1785
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1786
    .line 1787
    .line 1788
    move-result v4

    .line 1789
    if-eqz v4, :cond_40

    .line 1790
    .line 1791
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1792
    .line 1793
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1794
    .line 1795
    iget-boolean v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    .line 1796
    .line 1797
    if-nez v1, :cond_52

    .line 1798
    .line 1799
    const/16 v1, 0x640

    .line 1800
    .line 1801
    invoke-virtual {v0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 1802
    .line 1803
    .line 1804
    goto/16 :goto_1b

    .line 1805
    .line 1806
    :cond_40
    const-string v4, "com.samsung.CHECK_COOLDOWN_LEVEL"

    .line 1807
    .line 1808
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1809
    .line 1810
    .line 1811
    move-result v4

    .line 1812
    if-eqz v4, :cond_46

    .line 1813
    .line 1814
    const-string v2, "PowerUI"

    .line 1815
    .line 1816
    const-string v3, "PowerUI check cool down level"

    .line 1817
    .line 1818
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    .line 1820
    .line 1821
    iget-object v1, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 1822
    .line 1823
    iget v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1824
    .line 1825
    const-string v3, "battery_overheat_level"

    .line 1826
    .line 1827
    const/4 v4, 0x0

    .line 1828
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1829
    .line 1830
    .line 1831
    move-result v0

    .line 1832
    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1833
    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1835
    .line 1836
    const-string v3, "Battery overheat Level = "

    .line 1837
    .line 1838
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1839
    .line 1840
    .line 1841
    iget v3, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1842
    .line 1843
    const-string v4, "PowerUI"

    .line 1844
    .line 1845
    invoke-static {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1846
    .line 1847
    .line 1848
    iget v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1849
    .line 1850
    if-eq v2, v0, :cond_52

    .line 1851
    .line 1852
    iget-object v3, v1, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Lcom/android/systemui/power/PowerUI$9;

    .line 1853
    .line 1854
    iget-object v5, v1, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 1855
    .line 1856
    const-string v6, "SecPowerUI.Notification"

    .line 1857
    .line 1858
    iget-object v7, v1, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 1859
    .line 1860
    const/4 v8, 0x6

    .line 1861
    const/4 v9, 0x2

    .line 1862
    if-ne v9, v0, :cond_41

    .line 1863
    .line 1864
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1865
    .line 1866
    .line 1867
    const-string v0, "SecPowerUI.Notification"

    .line 1868
    .line 1869
    const-string/jumbo v2, "showOverheatWarning()"

    .line 1870
    .line 1871
    .line 1872
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v7, v8}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 1876
    .line 1877
    .line 1878
    const-wide/16 v9, 0x7530

    .line 1879
    .line 1880
    invoke-virtual {v5, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1881
    .line 1882
    .line 1883
    goto :goto_16

    .line 1884
    :cond_41
    if-le v9, v0, :cond_43

    .line 1885
    .line 1886
    if-gt v9, v2, :cond_43

    .line 1887
    .line 1888
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1889
    .line 1890
    .line 1891
    const-string v0, "dismissWillOverheatShutdownWarning"

    .line 1892
    .line 1893
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    .line 1895
    .line 1896
    iget-object v0, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 1897
    .line 1898
    iget-object v2, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    .line 1899
    .line 1900
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1901
    .line 1902
    .line 1903
    iget-object v0, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1904
    .line 1905
    if-eqz v0, :cond_42

    .line 1906
    .line 1907
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1908
    .line 1909
    .line 1910
    :cond_42
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1911
    .line 1912
    .line 1913
    const-string v0, "Battery overheat level recovered from shutdown"

    .line 1914
    .line 1915
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    .line 1917
    .line 1918
    :cond_43
    :goto_16
    iget v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1919
    .line 1920
    if-nez v0, :cond_45

    .line 1921
    .line 1922
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1923
    .line 1924
    .line 1925
    const-string v0, "dismissOverheatWarning()"

    .line 1926
    .line 1927
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    .line 1929
    .line 1930
    iget-object v0, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1931
    .line 1932
    if-eqz v0, :cond_44

    .line 1933
    .line 1934
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1935
    .line 1936
    .line 1937
    :cond_44
    invoke-virtual {v7, v8}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 1938
    .line 1939
    .line 1940
    goto/16 :goto_1b

    .line 1941
    .line 1942
    :cond_45
    const/4 v1, 0x1

    .line 1943
    if-ne v1, v0, :cond_52

    .line 1944
    .line 1945
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1946
    .line 1947
    .line 1948
    const-string v0, "SecPowerUI.Notification"

    .line 1949
    .line 1950
    const-string/jumbo v1, "showOverheatWarning()"

    .line 1951
    .line 1952
    .line 1953
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    .line 1955
    .line 1956
    invoke-virtual {v7, v8}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 1957
    .line 1958
    .line 1959
    goto/16 :goto_1b

    .line 1960
    .line 1961
    :cond_46
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 1962
    .line 1963
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v4

    .line 1967
    if-nez v4, :cond_4f

    .line 1968
    .line 1969
    const-string v4, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    .line 1970
    .line 1971
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v4

    .line 1975
    if-eqz v4, :cond_47

    .line 1976
    .line 1977
    goto/16 :goto_19

    .line 1978
    .line 1979
    :cond_47
    const-string v2, "com.samsung.android.sm.IGNORE_RUT_TIPS_NOTI"

    .line 1980
    .line 1981
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1982
    .line 1983
    .line 1984
    move-result v2

    .line 1985
    if-nez v2, :cond_4c

    .line 1986
    .line 1987
    const-string v2, "com.samsung.android.sm.CLEAR_TIPS_NOTI"

    .line 1988
    .line 1989
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v2

    .line 1993
    if-nez v2, :cond_4c

    .line 1994
    .line 1995
    const-string v2, "android.intent.action.tips.noti.confirmed"

    .line 1996
    .line 1997
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1998
    .line 1999
    .line 2000
    move-result v2

    .line 2001
    if-eqz v2, :cond_48

    .line 2002
    .line 2003
    goto :goto_18

    .line 2004
    :cond_48
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 2005
    .line 2006
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2007
    .line 2008
    .line 2009
    move-result v2

    .line 2010
    if-nez v2, :cond_4b

    .line 2011
    .line 2012
    const-string v2, "android.intent.action.TIME_SET"

    .line 2013
    .line 2014
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2015
    .line 2016
    .line 2017
    move-result v2

    .line 2018
    if-eqz v2, :cond_49

    .line 2019
    .line 2020
    goto :goto_17

    .line 2021
    :cond_49
    const-string v2, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    .line 2022
    .line 2023
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2024
    .line 2025
    .line 2026
    move-result v2

    .line 2027
    if-eqz v2, :cond_4a

    .line 2028
    .line 2029
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2030
    .line 2031
    const-string/jumbo v3, "sleep_charging_event"

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v3

    .line 2038
    iput-object v3, v2, Lcom/android/systemui/power/PowerUI;->mSleepChargingEvent:Ljava/lang/String;

    .line 2039
    .line 2040
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2041
    .line 2042
    const-string/jumbo v3, "sleep_charging_finish_time"

    .line 2043
    .line 2044
    .line 2045
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v0

    .line 2049
    iput-object v0, v2, Lcom/android/systemui/power/PowerUI;->mChargingStartTime:Ljava/lang/String;

    .line 2050
    .line 2051
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2052
    .line 2053
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mSleepChargingEvent:Ljava/lang/String;

    .line 2054
    .line 2055
    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mChargingStartTime:Ljava/lang/String;

    .line 2056
    .line 2057
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    .line 2059
    .line 2060
    goto/16 :goto_1b

    .line 2061
    .line 2062
    :cond_4a
    const-string v1, "PowerUI"

    .line 2063
    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2065
    .line 2066
    const-string/jumbo v3, "unknown intent: "

    .line 2067
    .line 2068
    .line 2069
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2070
    .line 2071
    .line 2072
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v0

    .line 2079
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    .line 2081
    .line 2082
    goto/16 :goto_1b

    .line 2083
    .line 2084
    :cond_4b
    :goto_17
    const-string v0, "PowerUI"

    .line 2085
    .line 2086
    const-string v2, "Time is changed, so we need to init LTC time"

    .line 2087
    .line 2088
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    .line 2090
    .line 2091
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2092
    .line 2093
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 2094
    .line 2095
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->clearScheduling()V

    .line 2096
    .line 2097
    .line 2098
    goto/16 :goto_1b

    .line 2099
    .line 2100
    :cond_4c
    :goto_18
    const-string v2, "PowerUI"

    .line 2101
    .line 2102
    const-string v4, "get TEST action : "

    .line 2103
    .line 2104
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v4

    .line 2108
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    .line 2110
    .line 2111
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    .line 2112
    .line 2113
    if-eqz v2, :cond_52

    .line 2114
    .line 2115
    const-string v2, "com.samsung.android.sm.IGNORE_RUT_TIPS_NOTI"

    .line 2116
    .line 2117
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2118
    .line 2119
    .line 2120
    move-result v2

    .line 2121
    if-eqz v2, :cond_4d

    .line 2122
    .line 2123
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2124
    .line 2125
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2126
    .line 2127
    const-string v1, "com.android.systemui.power_tips_notification"

    .line 2128
    .line 2129
    const/4 v2, 0x0

    .line 2130
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v0

    .line 2134
    if-eqz v0, :cond_52

    .line 2135
    .line 2136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v0

    .line 2140
    const-string v1, "ignoreRUT"

    .line 2141
    .line 2142
    const/4 v2, 0x1

    .line 2143
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2144
    .line 2145
    .line 2146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2147
    .line 2148
    .line 2149
    goto/16 :goto_1b

    .line 2150
    .line 2151
    :cond_4d
    const-string v2, "com.samsung.android.sm.CLEAR_TIPS_NOTI"

    .line 2152
    .line 2153
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2154
    .line 2155
    .line 2156
    move-result v2

    .line 2157
    if-eqz v2, :cond_4e

    .line 2158
    .line 2159
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2160
    .line 2161
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2162
    .line 2163
    const-string v1, "com.android.systemui.power_tips_notification"

    .line 2164
    .line 2165
    const/4 v2, 0x0

    .line 2166
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v0

    .line 2170
    if-eqz v0, :cond_52

    .line 2171
    .line 2172
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v0

    .line 2176
    const-string/jumbo v1, "tipsNotiConfirmed"

    .line 2177
    .line 2178
    .line 2179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2180
    .line 2181
    .line 2182
    const-string v1, "ignoreRUT"

    .line 2183
    .line 2184
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2185
    .line 2186
    .line 2187
    const-string/jumbo v1, "tipsNotiRegisteredCount"

    .line 2188
    .line 2189
    .line 2190
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2191
    .line 2192
    .line 2193
    const-string/jumbo v1, "tipsNotiLastTime"

    .line 2194
    .line 2195
    .line 2196
    const-wide/16 v2, 0x0

    .line 2197
    .line 2198
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2199
    .line 2200
    .line 2201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2202
    .line 2203
    .line 2204
    goto/16 :goto_1b

    .line 2205
    .line 2206
    :cond_4e
    const-string v2, "android.intent.action.tips.noti.confirmed"

    .line 2207
    .line 2208
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2209
    .line 2210
    .line 2211
    move-result v2

    .line 2212
    if-eqz v2, :cond_52

    .line 2213
    .line 2214
    const-string/jumbo v2, "tips_action_confirmed_id"

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v0

    .line 2221
    iget-object v1, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2222
    .line 2223
    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2224
    .line 2225
    const-string v2, "com.android.systemui.power_tips_notification"

    .line 2226
    .line 2227
    const/4 v3, 0x0

    .line 2228
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v1

    .line 2232
    if-eqz v1, :cond_52

    .line 2233
    .line 2234
    if-eqz v0, :cond_52

    .line 2235
    .line 2236
    const v2, 0x1d8a7

    .line 2237
    .line 2238
    .line 2239
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v2

    .line 2243
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2244
    .line 2245
    .line 2246
    move-result v0

    .line 2247
    if-eqz v0, :cond_52

    .line 2248
    .line 2249
    const-string v0, "PowerUI"

    .line 2250
    .line 2251
    const-string v2, "120999 was clicked, so we set preference !!"

    .line 2252
    .line 2253
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    .line 2255
    .line 2256
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v0

    .line 2260
    const-string/jumbo v1, "tipsNotiConfirmed"

    .line 2261
    .line 2262
    .line 2263
    const/4 v2, 0x1

    .line 2264
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2265
    .line 2266
    .line 2267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2268
    .line 2269
    .line 2270
    goto :goto_1b

    .line 2271
    :cond_4f
    :goto_19
    const-string v0, "PowerUI"

    .line 2272
    .line 2273
    const-string v4, "PowerUI received : "

    .line 2274
    .line 2275
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v4

    .line 2279
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    .line 2281
    .line 2282
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2283
    .line 2284
    iget-boolean v4, v0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 2285
    .line 2286
    if-nez v4, :cond_50

    .line 2287
    .line 2288
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->checkOverheatShutdownHappened()V

    .line 2289
    .line 2290
    .line 2291
    :cond_50
    :try_start_2
    const-string/jumbo v0, "window"

    .line 2292
    .line 2293
    .line 2294
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v0

    .line 2298
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 2299
    .line 2300
    .line 2301
    move-result-object v0

    .line 2302
    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    .line 2303
    .line 2304
    .line 2305
    move-result v0

    .line 2306
    const-string v4, "PowerUI"

    .line 2307
    .line 2308
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2309
    .line 2310
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2314
    .line 2315
    .line 2316
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v2

    .line 2320
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    .line 2322
    .line 2323
    if-eqz v0, :cond_51

    .line 2324
    .line 2325
    const-string v0, "emergency"

    .line 2326
    .line 2327
    const-string/jumbo v2, "persist.sys.emergency_reset"

    .line 2328
    .line 2329
    .line 2330
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v2

    .line 2334
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2335
    .line 2336
    .line 2337
    move-result v0

    .line 2338
    if-nez v0, :cond_51

    .line 2339
    .line 2340
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2341
    .line 2342
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 2343
    .line 2344
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showSafeModeNotice()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2345
    .line 2346
    .line 2347
    goto :goto_1a

    .line 2348
    :catch_0
    move-exception v0

    .line 2349
    const-string v2, "PowerUI"

    .line 2350
    .line 2351
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2352
    .line 2353
    const-string v5, "SAFEMODE Exception occurs! "

    .line 2354
    .line 2355
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2356
    .line 2357
    .line 2358
    invoke-static {v0, v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2359
    .line 2360
    .line 2361
    :cond_51
    :goto_1a
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 2362
    .line 2363
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2364
    .line 2365
    .line 2366
    move-result v0

    .line 2367
    if-eqz v0, :cond_52

    .line 2368
    .line 2369
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2370
    .line 2371
    const/4 v1, 0x1

    .line 2372
    iput-boolean v1, v0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 2373
    .line 2374
    :cond_52
    :goto_1b
    return-void
.end method
