.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

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
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "com.samsung.pen.INSERT"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const-string/jumbo p1, "penInsert"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, "ACTION_PEN_INSERT intent is received. penInsert="

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const-string v5, "isBoot"

    .line 62
    .line 63
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 68
    .line 69
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v6}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 94
    .line 95
    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 100
    .line 101
    iget-object v8, v0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v8}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_0

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 110
    .line 111
    const-string/jumbo v8, "pen_detachment_option"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    move v0, v2

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    move v0, v3

    .line 127
    :goto_0
    if-eqz v5, :cond_1

    .line 128
    .line 129
    if-nez v4, :cond_1

    .line 130
    .line 131
    if-nez p1, :cond_1

    .line 132
    .line 133
    if-eqz v6, :cond_1

    .line 134
    .line 135
    if-nez p2, :cond_1

    .line 136
    .line 137
    if-nez v7, :cond_1

    .line 138
    .line 139
    if-eqz v0, :cond_1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    move v2, v3

    .line 143
    :goto_1
    if-nez v2, :cond_2

    .line 144
    .line 145
    if-eqz v5, :cond_2

    .line 146
    .line 147
    if-nez v4, :cond_2

    .line 148
    .line 149
    if-nez p1, :cond_2

    .line 150
    .line 151
    if-eqz v6, :cond_2

    .line 152
    .line 153
    const-string p1, "canBeDismissedWhenSpenDetached isBoot="

    .line 154
    .line 155
    const-string v3, ", isScreenOffMemoRunning="

    .line 156
    .line 157
    const-string v4, ", hasPenDetachOpt="

    .line 158
    .line 159
    invoke-static {p1, p2, v3, v7, v4}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    if-eqz v2, :cond_d

    .line 174
    .line 175
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SPEN_DETACHED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 183
    .line 184
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 189
    .line 190
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :cond_3
    const-string v0, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 208
    .line 209
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 210
    .line 211
    invoke-interface {p2, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 215
    .line 216
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 217
    .line 218
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v1, "ACTION_FMM_LOCKED is received isFMMLock : "

    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    if-eqz p1, :cond_d

    .line 245
    .line 246
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fmmLock:Ljava/lang/Object;

    .line 249
    .line 250
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :cond_4
    const-string v0, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    .line 256
    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    const/16 v4, 0x44d

    .line 266
    .line 267
    if-eqz v0, :cond_6

    .line 268
    .line 269
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 270
    .line 271
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 276
    .line 277
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fmmLock:Ljava/lang/Object;

    .line 278
    .line 279
    invoke-virtual {p2, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 283
    .line 284
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 285
    .line 286
    invoke-interface {p2, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 292
    .line 293
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 298
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v1, "ACTION_FMM_UNLOCKED is received isFMMLock : "

    .line 302
    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    if-nez p1, :cond_d

    .line 320
    .line 321
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 322
    .line 323
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_d

    .line 328
    .line 329
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-nez p1, :cond_5

    .line 336
    .line 337
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked()V

    .line 349
    .line 350
    .line 351
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 352
    .line 353
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    .line 354
    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 356
    .line 357
    .line 358
    move-result-wide p1

    .line 359
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_4

    .line 363
    .line 364
    :cond_6
    const-string v0, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    .line 365
    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_7

    .line 375
    .line 376
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 377
    .line 378
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 379
    .line 380
    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCarrierLock(I)Z

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 384
    .line 385
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 386
    .line 387
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCarrierLock()Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 392
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v1, "ACTION_CARRIER_LOCK_SUBSCRIBE is received isCarrierLock : "

    .line 396
    .line 397
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    if-eqz p1, :cond_d

    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 416
    .line 417
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->carrierLock:Ljava/lang/Object;

    .line 418
    .line 419
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_4

    .line 423
    .line 424
    :cond_7
    const-string v0, "com.sec.android.FindingLostPhonePlus.CANCEL"

    .line 425
    .line 426
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_a

    .line 435
    .line 436
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 437
    .line 438
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 439
    .line 440
    .line 441
    move-result-object p2

    .line 442
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 443
    .line 444
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->carrierLock:Ljava/lang/Object;

    .line 445
    .line 446
    invoke-virtual {p2, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 450
    .line 451
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 452
    .line 453
    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCarrierLock(I)Z

    .line 454
    .line 455
    .line 456
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 457
    .line 458
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 459
    .line 460
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCarrierLock()Z

    .line 461
    .line 462
    .line 463
    move-result p2

    .line 464
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 465
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string v4, "ACTION_CARRIER_LOCK_CANCEL is received isCarrierLock : "

    .line 469
    .line 470
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    if-nez p2, :cond_9

    .line 487
    .line 488
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 489
    .line 490
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 491
    .line 492
    invoke-virtual {p2, v2, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 496
    .line 497
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 498
    .line 499
    .line 500
    move-result p1

    .line 501
    if-eqz p1, :cond_d

    .line 502
    .line 503
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 504
    .line 505
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    if-nez p1, :cond_8

    .line 510
    .line 511
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 512
    .line 513
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 514
    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 518
    .line 519
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked()V

    .line 520
    .line 521
    .line 522
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 523
    .line 524
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    .line 525
    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 527
    .line 528
    .line 529
    move-result-wide p1

    .line 530
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 531
    .line 532
    .line 533
    goto :goto_4

    .line 534
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 535
    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    const-string p0, "Carrier Lock is enabled"

    .line 540
    .line 541
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    goto :goto_4

    .line 545
    :cond_a
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_HOMEHUB:Z

    .line 546
    .line 547
    if-eqz v0, :cond_d

    .line 548
    .line 549
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 550
    .line 551
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_d

    .line 560
    .line 561
    const-string/jumbo v0, "pogo_plugged"

    .line 562
    .line 563
    .line 564
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 565
    .line 566
    .line 567
    move-result p2

    .line 568
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 569
    .line 570
    iget v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    .line 571
    .line 572
    if-eq v1, p2, :cond_b

    .line 573
    .line 574
    iput p2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    .line 575
    .line 576
    :cond_b
    iget p2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    .line 577
    .line 578
    if-eqz p2, :cond_d

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 581
    .line 582
    .line 583
    move-result p2

    .line 584
    if-eqz p2, :cond_d

    .line 585
    .line 586
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 587
    .line 588
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 589
    .line 590
    .line 591
    move-result p2

    .line 592
    if-eqz p2, :cond_c

    .line 593
    .line 594
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 595
    .line 596
    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 597
    .line 598
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    if-eqz p1, :cond_d

    .line 603
    .line 604
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 605
    .line 606
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 607
    .line 608
    .line 609
    :cond_d
    :goto_4
    return-void
.end method
