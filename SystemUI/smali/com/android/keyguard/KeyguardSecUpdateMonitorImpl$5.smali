.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "received broadcast "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "KeyguardUpdateMonitor"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 33
    .line 34
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 35
    .line 36
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, -0x1

    .line 40
    const/4 v9, 0x0

    .line 41
    if-nez v2, :cond_b

    .line 42
    .line 43
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_b

    .line 48
    .line 49
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_b

    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_0
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const-string/jumbo v2, "reason"

    .line 70
    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 81
    .line 82
    const/16 p2, 0x51a

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_1
    const-string v0, "com.sec.android.intent.action.BLACK_MEMO"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    const-string/jumbo p1, "state"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string/jumbo p2, "show"

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 122
    .line 123
    const/16 v2, 0x3e9

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v3, "screen off memo state changed, state = "

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, ", running "

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 145
    .line 146
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 147
    .line 148
    const-string v3, " -> "

    .line 149
    .line 150
    invoke-static {v0, p1, v3, p2, v1}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 156
    .line 157
    if-eqz p1, :cond_2

    .line 158
    .line 159
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    .line 160
    .line 161
    if-eqz p1, :cond_2

    .line 162
    .line 163
    if-nez p2, :cond_2

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 166
    .line 167
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-wide/16 v0, 0x258

    .line 172
    .line 173
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setIsRunningBlackMemo(Z)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_3
    const-string v0, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 183
    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 191
    .line 192
    iget-object p2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_4

    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 203
    .line 204
    iget-object p2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 205
    .line 206
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;

    .line 207
    .line 208
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$6;

    .line 216
    .line 217
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :cond_5
    const-string v0, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_6

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 233
    .line 234
    const/16 p1, 0x45f

    .line 235
    .line 236
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :cond_6
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 246
    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_7

    .line 252
    .line 253
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const-string v0, "displayId"

    .line 258
    .line 259
    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    const-string p2, "globalactions"

    .line 263
    .line 264
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_17

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 271
    .line 272
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 273
    .line 274
    const/16 p1, 0x454

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :cond_7
    const-string v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 282
    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const-string v2, "KeyguardFingerprint"

    .line 288
    .line 289
    const-string/jumbo v4, "onReceive : "

    .line 290
    .line 291
    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 310
    .line 311
    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    .line 312
    .line 313
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_4

    .line 317
    .line 318
    :cond_8
    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 319
    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_9

    .line 325
    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 342
    .line 343
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    .line 344
    .line 345
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_4

    .line 349
    .line 350
    :cond_9
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    .line 351
    .line 352
    if-eqz v0, :cond_a

    .line 353
    .line 354
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 355
    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_a

    .line 361
    .line 362
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 371
    .line 372
    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 377
    .line 378
    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 379
    .line 380
    .line 381
    move-result p2

    .line 382
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 386
    .line 387
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 388
    .line 389
    const/16 v1, 0x463

    .line 390
    .line 391
    invoke-virtual {p0, v1, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 396
    .line 397
    .line 398
    goto/16 :goto_4

    .line 399
    .line 400
    :cond_a
    const-string v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 401
    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_17

    .line 407
    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 409
    .line 410
    const-string v2, "kids_home_mode"

    .line 411
    .line 412
    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    iput-boolean p2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    .line 417
    .line 418
    const-string p2, ", isKidsMode : "

    .line 419
    .line 420
    invoke-static {v4, p1, p2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 425
    .line 426
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    .line 427
    .line 428
    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_4

    .line 432
    .line 433
    :cond_b
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-nez v1, :cond_c

    .line 438
    .line 439
    return-void

    .line 440
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    const/4 v2, 0x3

    .line 448
    sparse-switch v1, :sswitch_data_0

    .line 449
    .line 450
    .line 451
    goto :goto_1

    .line 452
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-nez p1, :cond_d

    .line 457
    .line 458
    goto :goto_1

    .line 459
    :cond_d
    move v8, v2

    .line 460
    goto :goto_1

    .line 461
    :sswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-nez p1, :cond_e

    .line 466
    .line 467
    goto :goto_1

    .line 468
    :cond_e
    move v8, v7

    .line 469
    goto :goto_1

    .line 470
    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-nez p1, :cond_f

    .line 475
    .line 476
    goto :goto_1

    .line 477
    :cond_f
    move v8, v3

    .line 478
    goto :goto_1

    .line 479
    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    if-nez p1, :cond_10

    .line 484
    .line 485
    goto :goto_1

    .line 486
    :cond_10
    move v8, v9

    .line 487
    :goto_1
    const/16 p1, 0x517

    .line 488
    .line 489
    if-eqz v8, :cond_14

    .line 490
    .line 491
    if-eq v8, v3, :cond_13

    .line 492
    .line 493
    if-eq v8, v7, :cond_12

    .line 494
    .line 495
    if-eq v8, v2, :cond_11

    .line 496
    .line 497
    return-void

    .line 498
    :cond_11
    const/16 v0, 0x515

    .line 499
    .line 500
    goto :goto_2

    .line 501
    :cond_12
    move v0, p1

    .line 502
    goto :goto_2

    .line 503
    :cond_13
    const/16 v0, 0x519

    .line 504
    .line 505
    goto :goto_2

    .line 506
    :cond_14
    const/16 v0, 0x516

    .line 507
    .line 508
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 517
    .line 518
    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 519
    .line 520
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    if-ne v0, p1, :cond_16

    .line 525
    .line 526
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    if-eqz p1, :cond_15

    .line 531
    .line 532
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    const-string p2, "android.intent.extra.REPLACING"

    .line 537
    .line 538
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 543
    .line 544
    goto :goto_3

    .line 545
    :cond_15
    iput v9, v1, Landroid/os/Message;->arg1:I

    .line 546
    .line 547
    :cond_16
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 548
    .line 549
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 550
    .line 551
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    .line 553
    .line 554
    :cond_17
    :goto_4
    return-void

    .line 555
    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch
.end method
