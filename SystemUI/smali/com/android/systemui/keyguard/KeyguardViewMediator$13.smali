.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "KeyguardViewMediator"

    .line 7
    .line 8
    const-string v1, "keyguardGoingAway"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 16
    .line 17
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->keyguardGoingAway()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 29
    .line 30
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 40
    .line 41
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v1, v2

    .line 53
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 54
    .line 55
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isGoingToNotificationShade()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 68
    .line 69
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperSupportsAmbientMode:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    :cond_1
    or-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 82
    .line 83
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isUnlockWithWallpaper()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    or-int/lit8 v1, v1, 0x4

    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 100
    .line 101
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->shouldSubtleWindowAnimationsForUnlock()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 111
    .line 112
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->Companion:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$Companion;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 132
    .line 133
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 138
    .line 139
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 145
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    .line 147
    .line 148
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 149
    .line 150
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 151
    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_6

    .line 171
    .line 172
    :cond_5
    or-int/lit8 v1, v1, 0x2

    .line 173
    .line 174
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

    .line 179
    .line 180
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    or-int/lit16 v1, v1, 0x100

    .line 193
    .line 194
    :cond_7
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 195
    .line 196
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 197
    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 205
    .line 206
    iget v5, v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 207
    .line 208
    if-eqz v5, :cond_8

    .line 209
    .line 210
    or-int/lit16 v1, v1, 0x200

    .line 211
    .line 212
    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_9

    .line 217
    .line 218
    or-int/lit8 v1, v1, 0x20

    .line 219
    .line 220
    :cond_9
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    .line 221
    .line 222
    const-wide/16 v9, 0x1356

    .line 223
    .line 224
    const/4 v8, 0x0

    .line 225
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 226
    .line 227
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-nez v5, :cond_a

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_a
    const-wide/16 v11, -0x1

    .line 235
    .line 236
    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(IJJ)V

    .line 237
    .line 238
    .line 239
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 244
    .line 245
    if-nez v4, :cond_c

    .line 246
    .line 247
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_b

    .line 252
    .line 253
    iget-object v4, v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 254
    .line 255
    sget-object v7, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 256
    .line 257
    if-ne v4, v7, :cond_b

    .line 258
    .line 259
    move v4, v3

    .line 260
    goto :goto_2

    .line 261
    :cond_b
    move v4, v2

    .line 262
    :goto_2
    if-nez v4, :cond_e

    .line 263
    .line 264
    :cond_c
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_d

    .line 269
    .line 270
    iget-object v4, v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 271
    .line 272
    sget-object v7, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 273
    .line 274
    if-ne v4, v7, :cond_d

    .line 275
    .line 276
    move v4, v3

    .line 277
    goto :goto_3

    .line 278
    :cond_d
    move v4, v2

    .line 279
    :goto_3
    if-eqz v4, :cond_10

    .line 280
    .line 281
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 282
    .line 283
    iget-boolean v7, v4, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    .line 284
    .line 285
    if-eqz v7, :cond_f

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_f
    const-string v7, "KeyguardFixedRotation"

    .line 289
    .line 290
    const-string/jumbo v8, "start"

    .line 291
    .line 292
    .line 293
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    iput-boolean v2, v4, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    .line 297
    .line 298
    iget-object v7, v4, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->windowManager:Landroid/view/IWindowManager;

    .line 299
    .line 300
    iget-object v8, v4, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    .line 301
    .line 302
    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    .line 303
    .line 304
    .line 305
    iput-boolean v3, v4, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    .line 306
    .line 307
    :cond_10
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardGoingAway(I)Z

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_11

    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_12

    .line 321
    .line 322
    iget-boolean v1, v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 323
    .line 324
    if-eqz v1, :cond_12

    .line 325
    .line 326
    :cond_11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 330
    .line 331
    .line 332
    move-result-wide v7

    .line 333
    iput-wide v7, v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->goingAwayTime:J

    .line 334
    .line 335
    :cond_12
    if-eqz v0, :cond_14

    .line 336
    .line 337
    iget v0, v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 338
    .line 339
    const/4 v1, 0x3

    .line 340
    if-ne v0, v1, :cond_13

    .line 341
    .line 342
    move v2, v3

    .line 343
    :cond_13
    if-eqz v2, :cond_14

    .line 344
    .line 345
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 346
    .line 347
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 352
    .line 353
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 354
    .line 355
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->setForceInvisible(Z)V

    .line 356
    .line 357
    .line 358
    :cond_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 359
    .line 360
    .line 361
    return-void
.end method
