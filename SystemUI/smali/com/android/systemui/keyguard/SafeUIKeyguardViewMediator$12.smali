.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

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
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto/16 :goto_2

    .line 9
    .line 10
    :pswitch_1
    const-string p1, "KeyguardViewMediator#handleMessage CANCEL_KEYGUARD_EXIT_ANIM"

    .line 11
    .line 12
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    .line 18
    .line 19
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. There\'s a pending lock, so we were cancelled because the device was locked again during the unlock sequence. We should end up locked."

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->finishSurfaceBehindRemoteAnimation()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->maybeHandlePendingLock()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. No pending lock, we should end up unlocked with the app/launcher visible."

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->showSurfaceBehindKeyguard()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleSystemReady(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleNotifyStartedGoingToSleep(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :pswitch_4
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 66
    .line 67
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 71
    .line 72
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_5
    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 81
    .line 82
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p0, "SafeUIKeyguardViewMediator"

    .line 86
    .line 87
    const-string p1, "Timeout while waiting for activity drawn!"

    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :pswitch_6
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    .line 98
    .line 99
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 103
    .line 104
    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 106
    .line 107
    iput-boolean v2, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    .line 108
    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 113
    .line 114
    iget-object v0, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    .line 115
    .line 116
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 121
    .line 122
    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;)V

    .line 125
    .line 126
    .line 127
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :catchall_0
    move-exception p0

    .line 138
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    throw p0

    .line 140
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    .line 149
    .line 150
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    .line 151
    .line 152
    if-eqz v1, :cond_2

    .line 153
    .line 154
    if-eqz v0, :cond_1

    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 157
    .line 158
    iget-object v1, v1, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 159
    .line 160
    new-instance v2, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 171
    .line 172
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 177
    .line 178
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_2
    if-eqz v0, :cond_7

    .line 184
    .line 185
    new-instance p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 186
    .line 187
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 188
    .line 189
    .line 190
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 191
    .line 192
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :catch_0
    move-exception p0

    .line 198
    const-string p1, "DismissCallbackWrapper"

    .line 199
    .line 200
    const-string v0, "Failed to call callback"

    .line 201
    .line 202
    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 208
    .line 209
    monitor-enter v0

    .line 210
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 211
    .line 212
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p1, Landroid/os/Bundle;

    .line 215
    .line 216
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 217
    .line 218
    .line 219
    monitor-exit v0

    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :catchall_1
    move-exception p0

    .line 223
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    throw p0

    .line 225
    :pswitch_9
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 226
    .line 227
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 231
    .line 232
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 233
    .line 234
    if-eqz v0, :cond_3

    .line 235
    .line 236
    move v0, v2

    .line 237
    goto :goto_1

    .line 238
    :cond_3
    move v0, v1

    .line 239
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 240
    .line 241
    if-eqz p1, :cond_4

    .line 242
    .line 243
    move v1, v2

    .line 244
    :cond_4
    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :pswitch_a
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 253
    .line 254
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 258
    .line 259
    sget-object p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    const-string p0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    .line 265
    .line 266
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    monitor-enter p1

    .line 270
    :try_start_4
    const-string p0, "SafeUIKeyguardViewMediator"

    .line 271
    .line 272
    const-string v0, "handleKeyguardDoneDrawing"

    .line 273
    .line 274
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    iget-boolean p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 278
    .line 279
    if-eqz p0, :cond_5

    .line 280
    .line 281
    const-string p0, "SafeUIKeyguardViewMediator"

    .line 282
    .line 283
    const-string v0, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    .line 284
    .line 285
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    iput-boolean v1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 291
    .line 292
    .line 293
    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    .line 294
    .line 295
    const/16 v0, 0x8

    .line 296
    .line 297
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    .line 299
    .line 300
    :cond_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 301
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :catchall_2
    move-exception p0

    .line 309
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 310
    throw p0

    .line 311
    :pswitch_b
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    .line 312
    .line 313
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 317
    .line 318
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleKeyguardDone(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :pswitch_c
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 326
    .line 327
    sget-object p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 328
    .line 329
    monitor-enter p1

    .line 330
    :try_start_6
    const-string p0, "SafeUIKeyguardViewMediator"

    .line 331
    .line 332
    const-string v0, "handleNotifyFinishedGoingToSleep"

    .line 333
    .line 334
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 338
    .line 339
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 344
    .line 345
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->onFinishedGoingToSleep()V

    .line 346
    .line 347
    .line 348
    monitor-exit p1

    .line 349
    goto :goto_2

    .line 350
    :catchall_3
    move-exception p0

    .line 351
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 352
    throw p0

    .line 353
    :pswitch_d
    const-string p1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 354
    .line 355
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 359
    .line 360
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleVerifyUnlock(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 361
    .line 362
    .line 363
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 368
    .line 369
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 370
    .line 371
    if-eqz p1, :cond_6

    .line 372
    .line 373
    move v1, v2

    .line 374
    :cond_6
    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleReset(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    .line 375
    .line 376
    .line 377
    goto :goto_2

    .line 378
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 379
    .line 380
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleHide(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 381
    .line 382
    .line 383
    goto :goto_2

    .line 384
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 385
    .line 386
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast p1, Landroid/os/Bundle;

    .line 389
    .line 390
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleShow(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 391
    .line 392
    .line 393
    :cond_7
    :goto_2
    return-void

    .line 394
    nop

    .line 395
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
