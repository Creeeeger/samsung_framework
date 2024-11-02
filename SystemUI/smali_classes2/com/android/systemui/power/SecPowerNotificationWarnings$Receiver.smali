.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Received "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "SecPowerUI.Notification"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "PNW.batteryInfo"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatterySettings:Landroid/content/Intent;

    .line 37
    .line 38
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 39
    .line 40
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    const-string v0, "PNW.dismissedWarning"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_1
    const-string v0, "PNW.powerMode"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x2

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 71
    .line 72
    iget p2, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 73
    .line 74
    if-ne p2, v3, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget-boolean p2, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    const-string p2, "dismissing low battery notification"

    .line 82
    .line 83
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    .line 96
    .line 97
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 98
    .line 99
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_4
    const-string v0, "PNW.abnormalPadNoThanks"

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v4, 0x1

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-string p1, "handleAbnormalPadNotiNoThanks"

    .line 119
    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    const-string p1, "dismissAbnormalPadNotification"

    .line 124
    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    const/16 p1, 0x8

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const-string p1, "com.android.systemui.abnormal_pad"

    .line 136
    .line 137
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    if-eqz p0, :cond_13

    .line 142
    .line 143
    const-string p1, "User clicked Do_not_show_again, so we set preference."

    .line 144
    .line 145
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const-string p1, "DoNotShowAbnormalPadNoti"

    .line 153
    .line 154
    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    .line 156
    .line 157
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_5
    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_6
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_9

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 186
    .line 187
    iget p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 188
    .line 189
    const-string/jumbo v0, "reason"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    const/4 v0, 0x3

    .line 197
    if-ne p2, v0, :cond_7

    .line 198
    .line 199
    iget-object p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 200
    .line 201
    iput v3, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_7
    const/4 v0, 0x5

    .line 205
    if-ne p2, v0, :cond_8

    .line 206
    .line 207
    iget-object p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 208
    .line 209
    iput v2, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 210
    .line 211
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 212
    .line 213
    iget-boolean p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 214
    .line 215
    if-eqz p2, :cond_13

    .line 216
    .line 217
    iget p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 218
    .line 219
    if-eq p1, p2, :cond_13

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_9
    const-string p2, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_b

    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 235
    .line 236
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 237
    .line 238
    if-nez p1, :cond_13

    .line 239
    .line 240
    const/4 p1, 0x7

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 246
    .line 247
    if-nez p1, :cond_a

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_a
    new-instance p2, Lcom/android/systemui/power/SecPowerNotificationWarnings$8;

    .line 252
    .line 253
    invoke-direct {p2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const/16 p2, 0x7d9

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 268
    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_b
    const-string p2, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    const/16 v0, 0xa

    .line 284
    .line 285
    if-eqz p2, :cond_d

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    const-string/jumbo p1, "showSafeModePopUp()"

    .line 293
    .line 294
    .line 295
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 299
    .line 300
    if-nez p1, :cond_13

    .line 301
    .line 302
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 307
    .line 308
    if-nez p1, :cond_c

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_c
    new-instance p2, Lcom/android/systemui/power/SecPowerNotificationWarnings$12;

    .line 313
    .line 314
    invoke-direct {p2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    .line 319
    .line 320
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

    .line 321
    .line 322
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_d
    const-string p2, "com.sec.factory.app.factorytest.FTA_ON"

    .line 327
    .line 328
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-eqz p2, :cond_e

    .line 333
    .line 334
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 335
    .line 336
    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    .line 337
    .line 338
    const-string p0, "FTA mode ON"

    .line 339
    .line 340
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_e
    const-string p2, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 345
    .line 346
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    if-eqz p2, :cond_f

    .line 351
    .line 352
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 353
    .line 354
    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    .line 355
    .line 356
    const-string p0, "FTA mode OFF"

    .line 357
    .line 358
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    goto :goto_1

    .line 362
    :cond_f
    const-string p2, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON"

    .line 363
    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    if-eqz p2, :cond_10

    .line 369
    .line 370
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 371
    .line 372
    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    .line 373
    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 375
    .line 376
    .line 377
    const-string p0, "Automatic test mode ON"

    .line 378
    .line 379
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_10
    const-string p2, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF"

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-eqz p2, :cond_11

    .line 390
    .line 391
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 392
    .line 393
    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    .line 394
    .line 395
    const-string p0, "Automatic test mode OFF"

    .line 396
    .line 397
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    goto :goto_1

    .line 401
    :cond_11
    const-string p2, "com.samsung.android.systemui.action.DELETED_CHARGING_NOTI"

    .line 402
    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    if-eqz p2, :cond_12

    .line 408
    .line 409
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 410
    .line 411
    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 412
    .line 413
    goto :goto_1

    .line 414
    :cond_12
    const-string p2, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    .line 415
    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_13

    .line 421
    .line 422
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 423
    .line 424
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 425
    .line 426
    .line 427
    const-string p1, ""

    .line 428
    .line 429
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    .line 430
    .line 431
    :cond_13
    :goto_1
    return-void
.end method
