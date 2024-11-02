.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$12;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 12
    .line 13
    .line 14
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget v0, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x7

    .line 23
    const/4 v3, 0x6

    .line 24
    const/4 v4, 0x3

    .line 25
    const/4 v5, 0x0

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 30
    .line 31
    goto/16 :goto_c

    .line 32
    .line 33
    :pswitch_1
    const-string v0, "KeyguardViewMediator#handleMessage CANCEL_KEYGUARD_EXIT_ANIM"

    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 39
    .line 40
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 41
    .line 42
    const-string v5, "KeyguardViewMediator"

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const-string v1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. There\'s a pending lock, so we were cancelled because the device was locked again during the unlock sequence. We should end up locked."

    .line 47
    .line 48
    invoke-static {v5, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->finishSurfaceBehindRemoteAnimation()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v3, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. No pending lock, we should end up unlocked with the app/launcher visible."

    .line 59
    .line 60
    invoke-static {v5, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 64
    .line 65
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;

    .line 69
    .line 70
    invoke-direct {v5, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->getAsBoolean()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showSurfaceBehindKeyguard()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_d

    .line 90
    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleSystemReady(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_d

    .line 97
    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyStartedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_d

    .line 104
    .line 105
    :pswitch_4
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 106
    .line 107
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_d

    .line 119
    .line 120
    :pswitch_5
    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 121
    .line 122
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "KeyguardViewMediator"

    .line 126
    .line 127
    const-string v1, "Timeout while waiting for activity drawn!"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_d

    .line 136
    .line 137
    :pswitch_6
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    .line 138
    .line 139
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 143
    .line 144
    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 146
    .line 147
    iput-boolean v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 148
    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 153
    .line 154
    iget-object v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    .line 155
    .line 156
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 161
    .line 162
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda16;

    .line 163
    .line 164
    invoke-direct {v3, v4, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_d

    .line 176
    .line 177
    :catchall_0
    move-exception p0

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    throw p0

    .line 180
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 185
    .line 186
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    .line 189
    .line 190
    iget-object v7, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 191
    .line 192
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-nez v8, :cond_2

    .line 197
    .line 198
    goto/16 :goto_5

    .line 199
    .line 200
    :cond_2
    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 201
    .line 202
    iget-object v9, v7, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 203
    .line 204
    if-eqz v8, :cond_4

    .line 205
    .line 206
    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_4

    .line 211
    .line 212
    const-string v4, "dismiss failed. Permanent state."

    .line 213
    .line 214
    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    if-eqz v6, :cond_3

    .line 218
    .line 219
    move v4, v1

    .line 220
    goto :goto_1

    .line 221
    :cond_3
    move v4, v5

    .line 222
    :goto_1
    move v7, v1

    .line 223
    goto :goto_3

    .line 224
    :cond_4
    sget-boolean v8, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 225
    .line 226
    iget-object v10, v7, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 227
    .line 228
    if-eqz v8, :cond_6

    .line 229
    .line 230
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-eqz v8, :cond_6

    .line 235
    .line 236
    iget-object v8, v7, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 237
    .line 238
    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 239
    .line 240
    invoke-virtual {v8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    invoke-virtual {v9, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-nez v8, :cond_6

    .line 249
    .line 250
    iget-object v8, v7, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 251
    .line 252
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    if-nez v8, :cond_6

    .line 257
    .line 258
    if-eqz v6, :cond_5

    .line 259
    .line 260
    iget-object v4, v10, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 261
    .line 262
    new-instance v8, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 263
    .line 264
    invoke-direct {v8, v6}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    iget-object v4, v7, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/android/systemui/subscreen/SubScreenManager;->requestCoverBouncer()V

    .line 273
    .line 274
    .line 275
    :cond_5
    const/4 v4, 0x2

    .line 276
    goto :goto_2

    .line 277
    :cond_6
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-eqz v7, :cond_8

    .line 282
    .line 283
    if-eqz v6, :cond_7

    .line 284
    .line 285
    iget-object v7, v10, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 286
    .line 287
    new-instance v8, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 288
    .line 289
    invoke-direct {v8, v6}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_7
    :goto_2
    move v7, v4

    .line 296
    move v4, v5

    .line 297
    goto :goto_3

    .line 298
    :cond_8
    move v4, v5

    .line 299
    move v7, v4

    .line 300
    :goto_3
    if-eqz v4, :cond_9

    .line 301
    .line 302
    new-instance v4, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 303
    .line 304
    invoke-direct {v4, v6}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 305
    .line 306
    .line 307
    :try_start_2
    iget-object v4, v4, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 308
    .line 309
    invoke-interface {v4}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :catch_0
    move-exception v4

    .line 314
    const-string v8, "DismissCallbackWrapper"

    .line 315
    .line 316
    const-string v9, "Failed to call callback"

    .line 317
    .line 318
    invoke-static {v8, v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .line 320
    .line 321
    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    .line 322
    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v5, "handleDismiss reason="

    .line 326
    .line 327
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_a
    :goto_5
    move v1, v5

    .line 342
    :goto_6
    if-eqz v1, :cond_b

    .line 343
    .line 344
    goto/16 :goto_d

    .line 345
    .line 346
    :cond_b
    iget-boolean v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 347
    .line 348
    if-eqz v1, :cond_d

    .line 349
    .line 350
    if-eqz v6, :cond_c

    .line 351
    .line 352
    iget-object v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 353
    .line 354
    iget-object v1, v1, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 355
    .line 356
    new-instance v4, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 357
    .line 358
    invoke-direct {v4, v6}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    :cond_c
    iput-object v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 365
    .line 366
    iget-boolean v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 367
    .line 368
    if-nez v0, :cond_19

    .line 369
    .line 370
    iget-object v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 371
    .line 372
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 377
    .line 378
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_d

    .line 382
    .line 383
    :cond_d
    if-eqz v6, :cond_19

    .line 384
    .line 385
    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 386
    .line 387
    invoke-direct {v0, v6}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 388
    .line 389
    .line 390
    :try_start_3
    iget-object v0, v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 391
    .line 392
    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 393
    .line 394
    .line 395
    goto/16 :goto_d

    .line 396
    .line 397
    :catch_1
    move-exception v0

    .line 398
    const-string v1, "DismissCallbackWrapper"

    .line 399
    .line 400
    const-string v3, "Failed to call callback"

    .line 401
    .line 402
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .line 404
    .line 405
    goto/16 :goto_d

    .line 406
    .line 407
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 408
    .line 409
    monitor-enter v0

    .line 410
    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 411
    .line 412
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v3, Landroid/os/Bundle;

    .line 415
    .line 416
    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    .line 417
    .line 418
    .line 419
    monitor-exit v0

    .line 420
    goto/16 :goto_d

    .line 421
    .line 422
    :catchall_1
    move-exception p0

    .line 423
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 424
    throw p0

    .line 425
    :pswitch_9
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 426
    .line 427
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 431
    .line 432
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 433
    .line 434
    if-eqz v3, :cond_e

    .line 435
    .line 436
    move v3, v1

    .line 437
    goto :goto_7

    .line 438
    :cond_e
    move v3, v5

    .line 439
    :goto_7
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 440
    .line 441
    if-eqz v4, :cond_f

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_f
    move v1, v5

    .line 445
    :goto_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    .line 447
    if-eqz v4, :cond_10

    .line 448
    .line 449
    check-cast v4, Ljava/lang/Integer;

    .line 450
    .line 451
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    goto :goto_9

    .line 456
    :cond_10
    const/4 v4, -0x1

    .line 457
    :goto_9
    invoke-static {v0, v3, v1, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZI)V

    .line 458
    .line 459
    .line 460
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_d

    .line 464
    .line 465
    :pswitch_a
    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 466
    .line 467
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 471
    .line 472
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 473
    .line 474
    .line 475
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_d

    .line 479
    .line 480
    :pswitch_b
    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    .line 481
    .line 482
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    .line 488
    .line 489
    .line 490
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_d

    .line 494
    .line 495
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 496
    .line 497
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_d

    .line 501
    .line 502
    :pswitch_d
    const-string v0, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 503
    .line 504
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    const-string v3, "KeyguardViewMediator#handleVerifyUnlock"

    .line 513
    .line 514
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    monitor-enter v0

    .line 518
    :try_start_5
    const-string v3, "KeyguardViewMediator"

    .line 519
    .line 520
    const-string v4, "handleVerifyUnlock"

    .line 521
    .line 522
    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 526
    .line 527
    .line 528
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 529
    .line 530
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    .line 535
    .line 536
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    .line 537
    .line 538
    .line 539
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 540
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 541
    .line 542
    .line 543
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_d

    .line 547
    .line 548
    :catchall_2
    move-exception p0

    .line 549
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 550
    throw p0

    .line 551
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 552
    .line 553
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 554
    .line 555
    if-eqz v3, :cond_11

    .line 556
    .line 557
    goto :goto_a

    .line 558
    :cond_11
    move v1, v5

    .line 559
    :goto_a
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleReset(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_d

    .line 563
    .line 564
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_d

    .line 570
    .line 571
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 572
    .line 573
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v4, Landroid/os/Bundle;

    .line 576
    .line 577
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    const-string v6, "KeyguardViewMediator#handleShow"

    .line 581
    .line 582
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 590
    .line 591
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    if-eqz v7, :cond_12

    .line 596
    .line 597
    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 598
    .line 599
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    .line 604
    .line 605
    .line 606
    :cond_12
    monitor-enter v0

    .line 607
    :try_start_7
    iget-boolean v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 608
    .line 609
    if-nez v6, :cond_13

    .line 610
    .line 611
    const-string v1, "KeyguardViewMediator"

    .line 612
    .line 613
    const-string v3, "ignoring handleShow because system is not ready."

    .line 614
    .line 615
    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    monitor-exit v0

    .line 619
    goto/16 :goto_d

    .line 620
    .line 621
    :cond_13
    const-string v6, "KeyguardViewMediator"

    .line 622
    .line 623
    const-string v7, "handleShow"

    .line 624
    .line 625
    invoke-static {v6, v7}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 629
    .line 630
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;

    .line 634
    .line 635
    invoke-direct {v7, v6, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 636
    .line 637
    .line 638
    invoke-static {v7, v1}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 639
    .line 640
    .line 641
    const/4 v3, 0x0

    .line 642
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardExitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    .line 643
    .line 644
    iput-boolean v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 645
    .line 646
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setUnlockAndWakeFromDream(IZ)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    .line 650
    .line 651
    .line 652
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 653
    .line 654
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setShowingOptions(Landroid/os/Bundle;)V

    .line 655
    .line 656
    .line 657
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 658
    .line 659
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 660
    .line 661
    .line 662
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 663
    .line 664
    if-eqz v3, :cond_14

    .line 665
    .line 666
    const-string v3, "KeyguardViewMediator"

    .line 667
    .line 668
    const-string v6, "Forcing setShowingLocked because mHiding=true, which means we\'re showing in the middle of hiding."

    .line 669
    .line 670
    invoke-static {v3, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    :cond_14
    iput-boolean v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 674
    .line 675
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 676
    .line 677
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    .line 682
    .line 683
    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardViewController;->show(Landroid/os/Bundle;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 687
    .line 688
    .line 689
    iput-boolean v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 690
    .line 691
    invoke-virtual {v0, v5, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 692
    .line 693
    .line 694
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 695
    .line 696
    if-eqz v3, :cond_16

    .line 697
    .line 698
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 699
    .line 700
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    if-eqz v3, :cond_15

    .line 705
    .line 706
    iget-boolean v4, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 707
    .line 708
    if-eqz v4, :cond_15

    .line 709
    .line 710
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    if-eqz v3, :cond_17

    .line 715
    .line 716
    :cond_15
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 717
    .line 718
    .line 719
    goto :goto_b

    .line 720
    :cond_16
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 721
    .line 722
    .line 723
    :cond_17
    :goto_b
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 724
    .line 725
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 726
    .line 727
    .line 728
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 729
    .line 730
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    .line 735
    .line 736
    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 737
    .line 738
    .line 739
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 740
    .line 741
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 742
    .line 743
    .line 744
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 745
    .line 746
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;

    .line 750
    .line 751
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 752
    .line 753
    .line 754
    invoke-static {v4, v1}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 755
    .line 756
    .line 757
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 758
    .line 759
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;

    .line 763
    .line 764
    const/16 v5, 0x8

    .line 765
    .line 766
    invoke-direct {v4, v3, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 767
    .line 768
    .line 769
    invoke-static {v4, v1}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    .line 770
    .line 771
    .line 772
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 773
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 774
    .line 775
    if-nez v1, :cond_18

    .line 776
    .line 777
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 778
    .line 779
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 780
    .line 781
    .line 782
    :cond_18
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->scheduleNonStrongBiometricIdleTimeout()V

    .line 783
    .line 784
    .line 785
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 786
    .line 787
    .line 788
    goto :goto_d

    .line 789
    :catchall_3
    move-exception p0

    .line 790
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 791
    throw p0

    .line 792
    :goto_c
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 793
    .line 794
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    .line 798
    .line 799
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    .line 803
    .line 804
    .line 805
    :cond_19
    :goto_d
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 806
    .line 807
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 808
    .line 809
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    .line 813
    .line 814
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    return-void

    .line 821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
