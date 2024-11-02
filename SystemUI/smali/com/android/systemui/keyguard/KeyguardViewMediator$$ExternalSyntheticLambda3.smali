.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_8

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$doKeyguardLockedAfterUnlockAnimation$1;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$doKeyguardLockedAfterUnlockAnimation$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationControllerLazy:Ldagger/Lazy;

    .line 22
    .line 23
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->getUnlockAnimationDuration()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isUnlockStartedOrFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    move p0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 48
    .line 49
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setShowingLocked:Lkotlin/jvm/functions/Function2;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-interface {v0, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->onAbortHandleStartKeyguardExitAnimation()V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x2

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move p0, v2

    .line 86
    :goto_0
    if-eqz p0, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "cancel handleCancelKeyguardExitAnimation why="

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move v1, v2

    .line 107
    :goto_1
    return v1

    .line 108
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isUnlockStartedOrFinished()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_3

    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 125
    .line 126
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 131
    .line 132
    check-cast v4, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iget-boolean v4, v4, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 139
    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    move v4, v1

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    move v4, v2

    .line 145
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_4

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 152
    .line 153
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_4

    .line 164
    .line 165
    move p0, v1

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    move p0, v2

    .line 168
    :goto_3
    if-nez v0, :cond_6

    .line 169
    .line 170
    if-eqz v3, :cond_5

    .line 171
    .line 172
    if-nez v4, :cond_5

    .line 173
    .line 174
    if-nez p0, :cond_5

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_5
    move v1, v2

    .line 178
    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 179
    .line 180
    const-string v2, "cancel handleHide "

    .line 181
    .line 182
    const-string v5, " "

    .line 183
    .line 184
    invoke-static {v2, v0, v5, v3, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    return v1

    .line 205
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 206
    .line 207
    new-array v0, v2, [Ljava/lang/Object;

    .line 208
    .line 209
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 210
    .line 211
    const-string/jumbo v4, "onWakeAndUnlocking"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_9

    .line 227
    .line 228
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 229
    .line 230
    if-eqz v0, :cond_8

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 233
    .line 234
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeMaskViewForOpticalFpSensor()V

    .line 235
    .line 236
    .line 237
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 241
    .line 242
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 247
    .line 248
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecViewController;->onWakeAndUnlock()V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    move v1, v2

    .line 253
    :goto_5
    return v1

    .line 254
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_b

    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->activityManager:Landroid/app/ActivityManager;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_a

    .line 269
    .line 270
    move v0, v1

    .line 271
    goto :goto_6

    .line 272
    :cond_a
    move v0, v2

    .line 273
    :goto_6
    if-eqz v0, :cond_c

    .line 274
    .line 275
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 276
    .line 277
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-nez p0, :cond_c

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_c
    move v1, v2

    .line 285
    :goto_7
    return v1

    .line 286
    :goto_8
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 287
    .line 288
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    const-class v3, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 294
    .line 295
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 300
    .line 301
    iget v4, v3, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    .line 302
    .line 303
    if-nez v4, :cond_d

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_d
    move v1, v2

    .line 307
    :goto_9
    if-eqz v1, :cond_e

    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/keyguard/KeyguardDisplayManager;->mVisibilityListener:Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    invoke-virtual {v3, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_e
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 316
    .line 317
    .line 318
    :goto_a
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    .line 319
    .line 320
    if-eqz v0, :cond_f

    .line 321
    .line 322
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodShowStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;

    .line 323
    .line 324
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 327
    .line 328
    .line 329
    :cond_f
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    .line 330
    .line 331
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$registerSysDumpHeap$1;

    .line 332
    .line 333
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$registerSysDumpHeap$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 334
    .line 335
    .line 336
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    .line 337
    .line 338
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 339
    .line 340
    .line 341
    return v2

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
