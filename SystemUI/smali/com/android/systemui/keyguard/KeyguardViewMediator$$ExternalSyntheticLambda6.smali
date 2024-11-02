.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final accept$com$android$systemui$keyguard$KeyguardViewMediator$12$$InternalSyntheticLambda$1$a0b69a91035649d75be7d9c1b05e8e4316a3b85b56842dba41aec11ee28c01bc$2(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    check-cast v1, Landroid/os/Message;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v2, v1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/16 v3, 0x44d

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eq v2, v3, :cond_84

    .line 18
    .line 19
    const/16 v3, 0x44e

    .line 20
    .line 21
    if-eq v2, v3, :cond_81

    .line 22
    .line 23
    const/16 v3, 0x4b1

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq v2, v3, :cond_7b

    .line 28
    .line 29
    const/16 v3, 0x515

    .line 30
    .line 31
    if-eq v2, v3, :cond_79

    .line 32
    .line 33
    const/4 v3, 0x6

    .line 34
    const/4 v7, 0x2

    .line 35
    const/4 v8, 0x3

    .line 36
    packed-switch v2, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3a

    .line 40
    .line 41
    :pswitch_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 42
    .line 43
    if-eqz v2, :cond_87

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 46
    .line 47
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    move v1, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v5

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v3, "setCoverOccluded "

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, ", request Cover Bouncer : "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-boolean v3, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    .line 74
    .line 75
    const-string v4, "SubScreenManager"

    .line 76
    .line 77
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 85
    .line 86
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v6, "Current running task: "

    .line 109
    .line 110
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 114
    .line 115
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v6, ", "

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-boolean v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    .line 124
    .line 125
    invoke-static {v3, v6, v4}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 129
    .line 130
    if-eqz v3, :cond_1

    .line 131
    .line 132
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    .line 133
    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object v3, v2

    .line 143
    check-cast v3, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_1

    .line 150
    .line 151
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    if-nez v5, :cond_87

    .line 156
    .line 157
    const-string/jumbo v0, "no running task"

    .line 158
    .line 159
    .line 160
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto/16 :goto_3a

    .line 164
    .line 165
    :cond_3
    check-cast v2, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    const-string/jumbo v1, "no prev occluded app"

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Ljava/lang/String;

    .line 195
    .line 196
    const-string/jumbo v5, "prev occluded app: "

    .line 197
    .line 198
    .line 199
    invoke-static {v5, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    :goto_3
    const-string v1, "com.android.systemui.subscreen.SubHomeActivity"

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    const-string v1, "com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity"

    .line 209
    .line 210
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 217
    .line 218
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 219
    .line 220
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 221
    .line 222
    if-eqz v1, :cond_87

    .line 223
    .line 224
    iget-boolean v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    .line 225
    .line 226
    if-nez v1, :cond_87

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_3a

    .line 232
    .line 233
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 234
    .line 235
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 236
    .line 237
    if-eqz v1, :cond_6

    .line 238
    .line 239
    move v5, v6

    .line 240
    :cond_6
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 241
    .line 242
    invoke-virtual {v0, v5}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyOccluded(Z)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3a

    .line 246
    .line 247
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 256
    .line 257
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Ljava/lang/Number;

    .line 262
    .line 263
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    invoke-virtual {v2, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    const-string v10, "KeyguardViewMediator"

    .line 276
    .line 277
    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 278
    .line 279
    if-eqz v9, :cond_1c

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    iget-object v12, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 286
    .line 287
    if-eqz v9, :cond_a

    .line 288
    .line 289
    iget-boolean v9, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 290
    .line 291
    if-nez v9, :cond_a

    .line 292
    .line 293
    iget-boolean v9, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 294
    .line 295
    if-eqz v9, :cond_7

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_7
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 303
    .line 304
    .line 305
    move-result v13

    .line 306
    if-eqz v13, :cond_8

    .line 307
    .line 308
    sget v13, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    .line 309
    .line 310
    and-int/2addr v9, v13

    .line 311
    if-ne v9, v13, :cond_8

    .line 312
    .line 313
    move v9, v6

    .line 314
    goto :goto_4

    .line 315
    :cond_8
    move v9, v5

    .line 316
    :goto_4
    if-nez v9, :cond_9

    .line 317
    .line 318
    move v9, v6

    .line 319
    goto :goto_6

    .line 320
    :cond_9
    :goto_5
    move v9, v5

    .line 321
    :goto_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 326
    .line 327
    new-instance v14, Lkotlin/Pair;

    .line 328
    .line 329
    invoke-direct {v14, v9, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_c

    .line 333
    .line 334
    :cond_a
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-nez v9, :cond_b

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    if-eqz v9, :cond_15

    .line 345
    .line 346
    iget-boolean v9, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 347
    .line 348
    if-eqz v9, :cond_15

    .line 349
    .line 350
    :cond_b
    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    if-nez v9, :cond_d

    .line 355
    .line 356
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    if-eqz v9, :cond_c

    .line 361
    .line 362
    iget-object v9, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 363
    .line 364
    sget-object v13, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 365
    .line 366
    if-ne v9, v13, :cond_c

    .line 367
    .line 368
    move v9, v6

    .line 369
    goto :goto_7

    .line 370
    :cond_c
    move v9, v5

    .line 371
    :goto_7
    if-nez v9, :cond_f

    .line 372
    .line 373
    :cond_d
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-eqz v9, :cond_e

    .line 378
    .line 379
    iget-object v9, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 380
    .line 381
    sget-object v13, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 382
    .line 383
    if-ne v9, v13, :cond_e

    .line 384
    .line 385
    move v9, v6

    .line 386
    goto :goto_8

    .line 387
    :cond_e
    move v9, v5

    .line 388
    :goto_8
    if-eqz v9, :cond_15

    .line 389
    .line 390
    :cond_f
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 391
    .line 392
    iget-boolean v13, v9, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    .line 393
    .line 394
    if-eqz v13, :cond_10

    .line 395
    .line 396
    iget-boolean v13, v9, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    .line 397
    .line 398
    if-eqz v13, :cond_10

    .line 399
    .line 400
    move v13, v6

    .line 401
    goto :goto_9

    .line 402
    :cond_10
    move v13, v5

    .line 403
    :goto_9
    if-eqz v13, :cond_12

    .line 404
    .line 405
    iget-object v13, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 406
    .line 407
    if-eqz v13, :cond_11

    .line 408
    .line 409
    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;

    .line 410
    .line 411
    invoke-direct {v14, v13, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v14}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->setPendingRunnable(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;)V

    .line 415
    .line 416
    .line 417
    iput-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 418
    .line 419
    iput-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 420
    .line 421
    :cond_11
    move v9, v5

    .line 422
    goto :goto_a

    .line 423
    :cond_12
    move v9, v6

    .line 424
    :goto_a
    sget-boolean v13, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 425
    .line 426
    if-eqz v13, :cond_14

    .line 427
    .line 428
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 429
    .line 430
    .line 431
    move-result v13

    .line 432
    if-eqz v13, :cond_13

    .line 433
    .line 434
    iget-object v13, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 435
    .line 436
    sget-object v14, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 437
    .line 438
    if-ne v13, v14, :cond_13

    .line 439
    .line 440
    move v13, v6

    .line 441
    goto :goto_b

    .line 442
    :cond_13
    move v13, v5

    .line 443
    :goto_b
    if-eqz v13, :cond_14

    .line 444
    .line 445
    iget-object v13, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 446
    .line 447
    invoke-interface {v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeMaskViewForOpticalFpSensor()V

    .line 448
    .line 449
    .line 450
    :cond_14
    invoke-virtual {v12, v4, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setForceInvisible(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 451
    .line 452
    .line 453
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 454
    .line 455
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    new-instance v14, Lkotlin/Pair;

    .line 460
    .line 461
    invoke-direct {v14, v13, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    goto :goto_c

    .line 465
    :cond_15
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 466
    .line 467
    new-instance v14, Lkotlin/Pair;

    .line 468
    .line 469
    invoke-direct {v14, v9, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :goto_c
    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v9

    .line 476
    check-cast v9, Ljava/lang/Boolean;

    .line 477
    .line 478
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v13

    .line 486
    check-cast v13, Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 489
    .line 490
    .line 491
    move-result v13

    .line 492
    if-eqz v13, :cond_17

    .line 493
    .line 494
    iget-object v13, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 495
    .line 496
    if-eqz v13, :cond_16

    .line 497
    .line 498
    :try_start_0
    invoke-interface {v13}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .line 500
    .line 501
    goto :goto_d

    .line 502
    :catch_0
    const-string v13, "RemoteException"

    .line 503
    .line 504
    const-string v14, "KeyguardViewMediator"

    .line 505
    .line 506
    invoke-static {v14, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    sget-object v15, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 510
    .line 511
    invoke-static {v14, v15, v13, v4}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    .line 513
    .line 514
    :goto_d
    iput-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 515
    .line 516
    :cond_16
    iput-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 517
    .line 518
    :cond_17
    iget-object v13, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 519
    .line 520
    invoke-virtual {v13}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    .line 521
    .line 522
    .line 523
    move-result v14

    .line 524
    if-eqz v14, :cond_18

    .line 525
    .line 526
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 527
    .line 528
    .line 529
    move-result v14

    .line 530
    if-eqz v14, :cond_18

    .line 531
    .line 532
    iget-boolean v14, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 533
    .line 534
    if-eqz v14, :cond_18

    .line 535
    .line 536
    invoke-virtual {v13, v6}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->setAODAmbientWallpaperState(Z)V

    .line 537
    .line 538
    .line 539
    :cond_18
    if-eqz v9, :cond_19

    .line 540
    .line 541
    const-string/jumbo v13, "showForegroundImmediatelyIfNeeded returns true"

    .line 542
    .line 543
    .line 544
    invoke-static {v13}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :cond_19
    if-eqz v9, :cond_1c

    .line 548
    .line 549
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOverrideStartKeyguardExitAnimation$1;

    .line 550
    .line 551
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOverrideStartKeyguardExitAnimation$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/os/Message;)V

    .line 552
    .line 553
    .line 554
    iget-object v0, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 555
    .line 556
    if-eqz v0, :cond_1b

    .line 557
    .line 558
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    .line 559
    .line 560
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    .line 561
    .line 562
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    if-eqz v4, :cond_1a

    .line 567
    .line 568
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    .line 570
    .line 571
    :cond_1a
    iput-boolean v6, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    .line 572
    .line 573
    :cond_1b
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 574
    .line 575
    iget-object v2, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 576
    .line 577
    const-wide/16 v3, 0x32

    .line 578
    .line 579
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;J)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->start(Z)V

    .line 583
    .line 584
    .line 585
    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 586
    .line 587
    goto/16 :goto_3a

    .line 588
    .line 589
    :cond_1c
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 590
    .line 591
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    check-cast v9, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 596
    .line 597
    invoke-virtual {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-eqz v9, :cond_1d

    .line 602
    .line 603
    goto/16 :goto_17

    .line 604
    .line 605
    :cond_1d
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->scrimControllerLazy:Ldagger/Lazy;

    .line 606
    .line 607
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    check-cast v9, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 612
    .line 613
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 614
    .line 615
    sget-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 616
    .line 617
    iget-object v13, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 618
    .line 619
    if-eq v9, v12, :cond_1e

    .line 620
    .line 621
    move v3, v6

    .line 622
    goto/16 :goto_12

    .line 623
    .line 624
    :cond_1e
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->centralSurfacesLazy:Ldagger/Lazy;

    .line 625
    .line 626
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 631
    .line 632
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 633
    .line 634
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    check-cast v9, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 639
    .line 640
    iget-boolean v12, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    .line 641
    .line 642
    if-nez v12, :cond_20

    .line 643
    .line 644
    iget-boolean v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 645
    .line 646
    if-eqz v9, :cond_1f

    .line 647
    .line 648
    goto :goto_e

    .line 649
    :cond_1f
    move v9, v5

    .line 650
    goto :goto_f

    .line 651
    :cond_20
    :goto_e
    move v9, v6

    .line 652
    :goto_f
    if-eqz v9, :cond_21

    .line 653
    .line 654
    move v3, v7

    .line 655
    goto :goto_12

    .line 656
    :cond_21
    move-object v9, v13

    .line 657
    check-cast v9, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 658
    .line 659
    iget-boolean v9, v9, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 660
    .line 661
    if-eqz v9, :cond_22

    .line 662
    .line 663
    move v3, v8

    .line 664
    goto :goto_12

    .line 665
    :cond_22
    iget-object v8, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 666
    .line 667
    if-eqz v8, :cond_23

    .line 668
    .line 669
    array-length v8, v8

    .line 670
    if-le v8, v6, :cond_23

    .line 671
    .line 672
    const/4 v3, 0x4

    .line 673
    goto :goto_12

    .line 674
    :cond_23
    iget-boolean v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    .line 675
    .line 676
    if-eqz v8, :cond_24

    .line 677
    .line 678
    const/4 v3, 0x5

    .line 679
    goto :goto_12

    .line 680
    :cond_24
    iget v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastGoingAwayFlags:I

    .line 681
    .line 682
    and-int/2addr v8, v7

    .line 683
    if-ne v8, v7, :cond_25

    .line 684
    .line 685
    move v8, v6

    .line 686
    goto :goto_10

    .line 687
    :cond_25
    move v8, v5

    .line 688
    :goto_10
    if-eqz v8, :cond_26

    .line 689
    .line 690
    goto :goto_12

    .line 691
    :cond_26
    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->getTransitionAnimationScale()F

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    const/4 v8, 0x0

    .line 696
    cmpg-float v3, v3, v8

    .line 697
    .line 698
    if-nez v3, :cond_27

    .line 699
    .line 700
    move v3, v6

    .line 701
    goto :goto_11

    .line 702
    :cond_27
    move v3, v5

    .line 703
    :goto_11
    if-eqz v3, :cond_28

    .line 704
    .line 705
    const/4 v3, 0x7

    .line 706
    goto :goto_12

    .line 707
    :cond_28
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 708
    .line 709
    check-cast v3, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 710
    .line 711
    invoke-virtual {v3}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    if-eqz v3, :cond_29

    .line 716
    .line 717
    const/16 v3, 0x8

    .line 718
    .line 719
    goto :goto_12

    .line 720
    :cond_29
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

    .line 721
    .line 722
    if-eqz v3, :cond_2a

    .line 723
    .line 724
    const/16 v3, 0xff

    .line 725
    .line 726
    goto :goto_12

    .line 727
    :cond_2a
    move v3, v5

    .line 728
    :goto_12
    if-eqz v3, :cond_2b

    .line 729
    .line 730
    new-instance v8, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    const-string v9, "isDisabledUnlockAnimation why="

    .line 733
    .line 734
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    move v3, v6

    .line 748
    goto :goto_13

    .line 749
    :cond_2b
    move v3, v5

    .line 750
    :goto_13
    if-eqz v3, :cond_32

    .line 751
    .line 752
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 753
    .line 754
    if-eqz v3, :cond_31

    .line 755
    .line 756
    array-length v3, v3

    .line 757
    if-nez v3, :cond_2c

    .line 758
    .line 759
    move v3, v6

    .line 760
    goto :goto_14

    .line 761
    :cond_2c
    move v3, v5

    .line 762
    :goto_14
    xor-int/2addr v3, v6

    .line 763
    if-eqz v3, :cond_30

    .line 764
    .line 765
    check-cast v13, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 766
    .line 767
    iget-boolean v3, v13, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 768
    .line 769
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    .line 770
    .line 771
    if-nez v3, :cond_2d

    .line 772
    .line 773
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 778
    .line 779
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardSurfaceController$DefaultImpls;->setKeyguardSurfaceAppearAmount$default(Lcom/android/systemui/keyguard/KeyguardSurfaceController;)V

    .line 780
    .line 781
    .line 782
    :cond_2d
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 783
    .line 784
    array-length v8, v3

    .line 785
    move v9, v5

    .line 786
    :goto_15
    if-ge v9, v8, :cond_30

    .line 787
    .line 788
    aget-object v11, v3, v9

    .line 789
    .line 790
    if-eqz v11, :cond_2f

    .line 791
    .line 792
    iget-object v11, v11, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 793
    .line 794
    if-eqz v11, :cond_2f

    .line 795
    .line 796
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v12

    .line 800
    check-cast v12, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 801
    .line 802
    check-cast v12, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 803
    .line 804
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    const/high16 v13, 0x3f800000    # 1.0f

    .line 808
    .line 809
    invoke-static {v11, v13}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    .line 810
    .line 811
    .line 812
    move-result v14

    .line 813
    if-nez v14, :cond_2e

    .line 814
    .line 815
    goto :goto_16

    .line 816
    :cond_2e
    new-instance v14, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 817
    .line 818
    invoke-direct {v14, v11}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v14, v13}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 822
    .line 823
    .line 824
    move-result-object v11

    .line 825
    invoke-virtual {v11}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 826
    .line 827
    .line 828
    move-result-object v11

    .line 829
    iget-object v12, v12, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    .line 830
    .line 831
    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v12

    .line 835
    check-cast v12, Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 836
    .line 837
    filled-new-array {v11}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 838
    .line 839
    .line 840
    move-result-object v11

    .line 841
    invoke-virtual {v12, v11}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 842
    .line 843
    .line 844
    :cond_2f
    :goto_16
    add-int/lit8 v9, v9, 0x1

    .line 845
    .line 846
    goto :goto_15

    .line 847
    :cond_30
    iput-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 848
    .line 849
    :cond_31
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 850
    .line 851
    if-eqz v3, :cond_32

    .line 852
    .line 853
    :try_start_1
    const-string v6, "keepOrDisableUnlockAnimation disabled"

    .line 854
    .line 855
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-interface {v3}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 859
    .line 860
    .line 861
    :catch_1
    iput-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 862
    .line 863
    :cond_32
    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 864
    .line 865
    .line 866
    move-result-wide v3

    .line 867
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    .line 868
    .line 869
    invoke-virtual {v6, v3, v4, v7, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    if-nez v3, :cond_33

    .line 877
    .line 878
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    .line 879
    .line 880
    if-nez v3, :cond_33

    .line 881
    .line 882
    iget v0, v2, Landroid/os/Message;->what:I

    .line 883
    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    .line 885
    .line 886
    const-string/jumbo v3, "no need to handle msg: "

    .line 887
    .line 888
    .line 889
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    invoke-static {v10, v0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    :try_start_2
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 903
    .line 904
    if-eqz v0, :cond_87

    .line 905
    .line 906
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 907
    .line 908
    .line 909
    goto/16 :goto_3a

    .line 910
    .line 911
    :cond_33
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v0, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_3a

    .line 919
    .line 920
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 921
    .line 922
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    .line 924
    .line 925
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 926
    .line 927
    if-ne v2, v6, :cond_34

    .line 928
    .line 929
    move v2, v6

    .line 930
    goto :goto_18

    .line 931
    :cond_34
    move v2, v5

    .line 932
    :goto_18
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 933
    .line 934
    if-nez v1, :cond_35

    .line 935
    .line 936
    move v1, v6

    .line 937
    goto :goto_19

    .line 938
    :cond_35
    move v1, v5

    .line 939
    :goto_19
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 940
    .line 941
    const-string v9, "KeyguardFoldController"

    .line 942
    .line 943
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 944
    .line 945
    .line 946
    move-result-object v10

    .line 947
    invoke-virtual {v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 948
    .line 949
    .line 950
    move-result v10

    .line 951
    new-instance v11, Ljava/lang/StringBuilder;

    .line 952
    .line 953
    const-string v12, "handleFoldMessage: isOpened="

    .line 954
    .line 955
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    const-string v12, ", showing="

    .line 962
    .line 963
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v10

    .line 973
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 974
    .line 975
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    .line 977
    .line 978
    invoke-static {v9, v10}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    if-nez v1, :cond_42

    .line 982
    .line 983
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 984
    .line 985
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 986
    .line 987
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    .line 989
    .line 990
    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 991
    .line 992
    if-eqz v3, :cond_41

    .line 993
    .line 994
    if-eqz v2, :cond_40

    .line 995
    .line 996
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 997
    .line 998
    .line 999
    move-result-object v3

    .line 1000
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 1001
    .line 1002
    sget-object v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 1003
    .line 1004
    check-cast v9, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 1005
    .line 1006
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    invoke-static {v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 1010
    .line 1011
    .line 1012
    iget-object v9, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1013
    .line 1014
    invoke-virtual {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasShowMsg()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v9

    .line 1018
    if-eqz v9, :cond_36

    .line 1019
    .line 1020
    invoke-virtual {v0, v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1024
    .line 1025
    .line 1026
    goto/16 :goto_1c

    .line 1027
    .line 1028
    :cond_36
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v9

    .line 1032
    if-eqz v9, :cond_3f

    .line 1033
    .line 1034
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 1035
    .line 1036
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 1037
    .line 1038
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 1042
    .line 1043
    if-eqz v3, :cond_37

    .line 1044
    .line 1045
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1046
    .line 1047
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    if-eqz v3, :cond_37

    .line 1052
    .line 1053
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 1054
    .line 1055
    const-string v4, "KeyguardFoldController"

    .line 1056
    .line 1057
    const-string v5, "dismiss failed. Permanent state."

    .line 1058
    .line 1059
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 1060
    .line 1061
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    goto/16 :goto_1c

    .line 1068
    .line 1069
    :cond_37
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    .line 1070
    .line 1071
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 1076
    .line 1077
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1078
    .line 1079
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v4

    .line 1083
    monitor-enter v4

    .line 1084
    :try_start_3
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasOccludedMsg$1()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v9

    .line 1088
    if-eqz v9, :cond_38

    .line 1089
    .line 1090
    iget-boolean v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curIsOccluded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1091
    .line 1092
    if-ne v6, v3, :cond_38

    .line 1093
    .line 1094
    move v3, v6

    .line 1095
    goto :goto_1a

    .line 1096
    :cond_38
    move v3, v5

    .line 1097
    :goto_1a
    monitor-exit v4

    .line 1098
    if-eqz v3, :cond_39

    .line 1099
    .line 1100
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 1101
    .line 1102
    const-string v4, "KeyguardFoldController"

    .line 1103
    .line 1104
    const-string/jumbo v5, "will handle occluded"

    .line 1105
    .line 1106
    .line 1107
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 1108
    .line 1109
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    goto/16 :goto_1c

    .line 1116
    .line 1117
    :cond_39
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    .line 1118
    .line 1119
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v3

    .line 1123
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 1124
    .line 1125
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1126
    .line 1127
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    iget-object v9, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->RESET$delegate:Lkotlin/Lazy;

    .line 1132
    .line 1133
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v9

    .line 1137
    check-cast v9, Ljava/lang/Number;

    .line 1138
    .line 1139
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 1140
    .line 1141
    .line 1142
    move-result v9

    .line 1143
    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingReset:Lkotlin/jvm/functions/Function0;

    .line 1151
    .line 1152
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v3

    .line 1163
    xor-int/2addr v3, v6

    .line 1164
    if-eqz v3, :cond_3a

    .line 1165
    .line 1166
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 1167
    .line 1168
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1169
    .line 1170
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 1171
    .line 1172
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1173
    .line 1174
    .line 1175
    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1176
    .line 1177
    .line 1178
    :cond_3a
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1179
    .line 1180
    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 1181
    .line 1182
    check-cast v9, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 1183
    .line 1184
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1185
    .line 1186
    .line 1187
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 1188
    .line 1189
    .line 1190
    move-result v9

    .line 1191
    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v4

    .line 1195
    if-nez v3, :cond_3c

    .line 1196
    .line 1197
    if-eqz v4, :cond_3b

    .line 1198
    .line 1199
    goto :goto_1b

    .line 1200
    :cond_3b
    invoke-virtual {v0, v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 1204
    .line 1205
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v3

    .line 1209
    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    .line 1210
    .line 1211
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecViewController;->folderOpenAndDismiss()V

    .line 1212
    .line 1213
    .line 1214
    goto/16 :goto_1c

    .line 1215
    .line 1216
    :cond_3c
    :goto_1b
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v3

    .line 1224
    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v3

    .line 1228
    if-eqz v3, :cond_3d

    .line 1229
    .line 1230
    iget v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->wakeReason:I

    .line 1231
    .line 1232
    const/16 v4, 0x9

    .line 1233
    .line 1234
    if-ne v3, v4, :cond_3e

    .line 1235
    .line 1236
    :cond_3d
    move v7, v8

    .line 1237
    :cond_3e
    invoke-virtual {v0, v7}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    .line 1238
    .line 1239
    .line 1240
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    .line 1241
    .line 1242
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v3

    .line 1246
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 1247
    .line 1248
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1249
    .line 1250
    iput-boolean v5, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    .line 1251
    .line 1252
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v3

    .line 1256
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->tryKeyguardDone:Lkotlin/jvm/functions/Function0;

    .line 1257
    .line 1258
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    goto :goto_1c

    .line 1262
    :catchall_0
    move-exception v0

    .line 1263
    monitor-exit v4

    .line 1264
    throw v0

    .line 1265
    :cond_3f
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    .line 1266
    .line 1267
    .line 1268
    iget-object v5, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1269
    .line 1270
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasShowMsg()Z

    .line 1271
    .line 1272
    .line 1273
    move-result v5

    .line 1274
    if-eqz v5, :cond_42

    .line 1275
    .line 1276
    invoke-virtual {v0, v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1280
    .line 1281
    .line 1282
    goto :goto_1c

    .line 1283
    :cond_40
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v3

    .line 1287
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 1288
    .line 1289
    .line 1290
    move-result v4

    .line 1291
    if-eqz v4, :cond_42

    .line 1292
    .line 1293
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    .line 1298
    .line 1299
    .line 1300
    goto :goto_1c

    .line 1301
    :cond_41
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 1302
    .line 1303
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 1304
    .line 1305
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 1309
    .line 1310
    if-eqz v3, :cond_42

    .line 1311
    .line 1312
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    .line 1313
    .line 1314
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v3

    .line 1318
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 1319
    .line 1320
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1321
    .line 1322
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

    .line 1327
    .line 1328
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    :cond_42
    :goto_1c
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->normalRankedStateListeners:Ljava/util/List;

    .line 1332
    .line 1333
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 1334
    .line 1335
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 1336
    .line 1337
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    .line 1338
    .line 1339
    .line 1340
    move-result v4

    .line 1341
    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->onFoldStateChanged(Ljava/util/List;ZZZ)V

    .line 1342
    .line 1343
    .line 1344
    goto/16 :goto_3a

    .line 1345
    .line 1346
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1347
    .line 1348
    if-eqz v1, :cond_43

    .line 1349
    .line 1350
    move-object v4, v1

    .line 1351
    check-cast v4, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1352
    .line 1353
    :cond_43
    const-string v1, "handleNotifyScreenTurningOn fastWakeUnlockMode="

    .line 1354
    .line 1355
    if-nez v4, :cond_48

    .line 1356
    .line 1357
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 1358
    .line 1359
    .line 1360
    move-result v2

    .line 1361
    if-eqz v2, :cond_46

    .line 1362
    .line 1363
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1364
    .line 1365
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 1366
    .line 1367
    .line 1368
    move-result v3

    .line 1369
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 1370
    .line 1371
    .line 1372
    move-result v2

    .line 1373
    if-eqz v2, :cond_44

    .line 1374
    .line 1375
    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    .line 1376
    .line 1377
    and-int/2addr v2, v3

    .line 1378
    if-nez v2, :cond_44

    .line 1379
    .line 1380
    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    .line 1381
    .line 1382
    and-int/2addr v3, v2

    .line 1383
    if-ne v3, v2, :cond_44

    .line 1384
    .line 1385
    move v2, v6

    .line 1386
    goto :goto_1d

    .line 1387
    :cond_44
    move v2, v5

    .line 1388
    :goto_1d
    if-nez v2, :cond_47

    .line 1389
    .line 1390
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1391
    .line 1392
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    .line 1393
    .line 1394
    .line 1395
    move-result v3

    .line 1396
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 1397
    .line 1398
    .line 1399
    move-result v2

    .line 1400
    if-eqz v2, :cond_45

    .line 1401
    .line 1402
    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    .line 1403
    .line 1404
    and-int/2addr v3, v2

    .line 1405
    if-ne v3, v2, :cond_45

    .line 1406
    .line 1407
    move v2, v6

    .line 1408
    goto :goto_1e

    .line 1409
    :cond_45
    move v2, v5

    .line 1410
    :goto_1e
    if-nez v2, :cond_47

    .line 1411
    .line 1412
    :cond_46
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isFastWakeAndUnlockMode()Z

    .line 1413
    .line 1414
    .line 1415
    move-result v2

    .line 1416
    if-nez v2, :cond_48

    .line 1417
    .line 1418
    :cond_47
    const-string v1, "handleNotifyScreenTurningOn"

    .line 1419
    .line 1420
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn()V

    .line 1424
    .line 1425
    .line 1426
    goto/16 :goto_3a

    .line 1427
    .line 1428
    :cond_48
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v2

    .line 1432
    monitor-enter v2

    .line 1433
    :try_start_4
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasShowMsg()Z

    .line 1434
    .line 1435
    .line 1436
    move-result v3

    .line 1437
    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 1438
    .line 1439
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v7

    .line 1443
    check-cast v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 1444
    .line 1445
    iget v7, v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 1446
    .line 1447
    if-eqz v7, :cond_49

    .line 1448
    .line 1449
    move v7, v6

    .line 1450
    goto :goto_1f

    .line 1451
    :cond_49
    move v7, v5

    .line 1452
    :goto_1f
    iget-wide v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastShowingTime:J

    .line 1453
    .line 1454
    const-wide/16 v10, 0x0

    .line 1455
    .line 1456
    cmp-long v8, v8, v10

    .line 1457
    .line 1458
    if-eqz v8, :cond_4a

    .line 1459
    .line 1460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1461
    .line 1462
    .line 1463
    move-result-wide v8

    .line 1464
    iget-wide v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastShowingTime:J

    .line 1465
    .line 1466
    sub-long v10, v8, v10

    .line 1467
    .line 1468
    :cond_4a
    iget-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1469
    .line 1470
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 1471
    .line 1472
    .line 1473
    move-result v8

    .line 1474
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v9

    .line 1478
    iget-object v9, v9, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hasPendingLock:Lkotlin/jvm/functions/Function0;

    .line 1479
    .line 1480
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v9

    .line 1484
    check-cast v9, Ljava/lang/Boolean;

    .line 1485
    .line 1486
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1487
    .line 1488
    .line 1489
    move-result v9

    .line 1490
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasOccludedMsg$1()Z

    .line 1491
    .line 1492
    .line 1493
    move-result v12

    .line 1494
    if-eqz v4, :cond_4b

    .line 1495
    .line 1496
    move v13, v6

    .line 1497
    goto :goto_20

    .line 1498
    :cond_4b
    move v13, v5

    .line 1499
    :goto_20
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    const-string v1, ", bioUnlock="

    .line 1508
    .line 1509
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    const-string v1, " hasShow="

    .line 1516
    .line 1517
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1521
    .line 1522
    .line 1523
    const-string v1, ", pendingLock="

    .line 1524
    .line 1525
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1529
    .line 1530
    .line 1531
    const-string v1, ", hasCb="

    .line 1532
    .line 1533
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    const-string v1, ", interval="

    .line 1540
    .line 1541
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    const-string v1, ", hasOccluded="

    .line 1548
    .line 1549
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v1

    .line 1559
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1560
    .line 1561
    .line 1562
    if-nez v4, :cond_4c

    .line 1563
    .line 1564
    monitor-exit v2

    .line 1565
    goto/16 :goto_3a

    .line 1566
    .line 1567
    :cond_4c
    :try_start_5
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1568
    .line 1569
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 1570
    .line 1571
    if-nez v1, :cond_4d

    .line 1572
    .line 1573
    if-nez v8, :cond_4e

    .line 1574
    .line 1575
    :cond_4d
    if-nez v7, :cond_4f

    .line 1576
    .line 1577
    if-nez v3, :cond_4e

    .line 1578
    .line 1579
    if-eqz v9, :cond_4f

    .line 1580
    .line 1581
    :cond_4e
    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1582
    .line 1583
    goto/16 :goto_22

    .line 1584
    .line 1585
    :cond_4f
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DELAY_NOTIFY_DRAWN_PREMIUM_WATCH:Z

    .line 1586
    .line 1587
    if-eqz v1, :cond_53

    .line 1588
    .line 1589
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 1590
    .line 1591
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 1592
    .line 1593
    .line 1594
    move-result v1

    .line 1595
    if-nez v1, :cond_53

    .line 1596
    .line 1597
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1598
    .line 1599
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 1600
    .line 1601
    const-string/jumbo v3, "premium_watch_switch_onoff"

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v1

    .line 1608
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 1609
    .line 1610
    .line 1611
    move-result v1

    .line 1612
    if-ne v1, v6, :cond_50

    .line 1613
    .line 1614
    move v1, v6

    .line 1615
    goto :goto_21

    .line 1616
    :cond_50
    move v1, v5

    .line 1617
    :goto_21
    if-eqz v1, :cond_53

    .line 1618
    .line 1619
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasOccludedMsg$1()Z

    .line 1620
    .line 1621
    .line 1622
    move-result v1

    .line 1623
    if-nez v1, :cond_51

    .line 1624
    .line 1625
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 1626
    .line 1627
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v1

    .line 1631
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1632
    .line 1633
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 1634
    .line 1635
    .line 1636
    move-result v1

    .line 1637
    if-nez v1, :cond_53

    .line 1638
    .line 1639
    :cond_51
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 1640
    .line 1641
    iget v3, v1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    .line 1642
    .line 1643
    if-nez v3, :cond_52

    .line 1644
    .line 1645
    move v5, v6

    .line 1646
    :cond_52
    if-eqz v5, :cond_53

    .line 1647
    .line 1648
    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1649
    .line 1650
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->visibilityListener:Lkotlin/reflect/KFunction;

    .line 1651
    .line 1652
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt$sam$java_util_function_IntConsumer$0;

    .line 1653
    .line 1654
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1655
    .line 1656
    invoke-direct {v3, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt$sam$java_util_function_IntConsumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 1657
    .line 1658
    .line 1659
    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 1660
    .line 1661
    .line 1662
    const-string v0, "delayed notifyDrawn caused by occluded"

    .line 1663
    .line 1664
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1665
    .line 1666
    .line 1667
    monitor-exit v2

    .line 1668
    goto/16 :goto_3a

    .line 1669
    .line 1670
    :cond_53
    const-wide/16 v5, 0xc8

    .line 1671
    .line 1672
    cmp-long v1, v10, v5

    .line 1673
    .line 1674
    if-gez v1, :cond_54

    .line 1675
    .line 1676
    if-nez v7, :cond_54

    .line 1677
    .line 1678
    :try_start_6
    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1679
    .line 1680
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v1

    .line 1684
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    .line 1685
    .line 1686
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1687
    .line 1688
    .line 1689
    const-string v0, "delayed notifyDrawn"

    .line 1690
    .line 1691
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1692
    .line 1693
    .line 1694
    monitor-exit v2

    .line 1695
    goto/16 :goto_3a

    .line 1696
    .line 1697
    :cond_54
    :try_start_7
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1698
    .line 1699
    .line 1700
    :goto_22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1701
    .line 1702
    monitor-exit v2

    .line 1703
    goto/16 :goto_3a

    .line 1704
    .line 1705
    :catchall_1
    move-exception v0

    .line 1706
    monitor-exit v2

    .line 1707
    throw v0

    .line 1708
    :pswitch_5
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v1

    .line 1712
    const-string v2, "PI"

    .line 1713
    .line 1714
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v2

    .line 1718
    check-cast v2, Landroid/app/PendingIntent;

    .line 1719
    .line 1720
    const-string v7, "FI"

    .line 1721
    .line 1722
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    check-cast v1, Landroid/content/Intent;

    .line 1727
    .line 1728
    if-eqz v1, :cond_55

    .line 1729
    .line 1730
    const-string v7, "ignoreKeyguardState"

    .line 1731
    .line 1732
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1733
    .line 1734
    .line 1735
    move-result v7

    .line 1736
    goto :goto_23

    .line 1737
    :cond_55
    move v7, v5

    .line 1738
    :goto_23
    const-string v8, "ignoreUnlock"

    .line 1739
    .line 1740
    if-eqz v1, :cond_56

    .line 1741
    .line 1742
    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v9

    .line 1746
    goto :goto_24

    .line 1747
    :cond_56
    move v9, v5

    .line 1748
    :goto_24
    if-eqz v1, :cond_57

    .line 1749
    .line 1750
    const-string/jumbo v4, "notificationKey"

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v4

    .line 1757
    :cond_57
    const-string/jumbo v10, "runOnCover"

    .line 1758
    .line 1759
    .line 1760
    if-eqz v1, :cond_58

    .line 1761
    .line 1762
    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v11

    .line 1766
    goto :goto_25

    .line 1767
    :cond_58
    move v11, v5

    .line 1768
    :goto_25
    sget-boolean v12, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 1769
    .line 1770
    iget-object v13, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1771
    .line 1772
    if-eqz v12, :cond_59

    .line 1773
    .line 1774
    invoke-interface {v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    .line 1775
    .line 1776
    .line 1777
    move-result v12

    .line 1778
    if-nez v12, :cond_5a

    .line 1779
    .line 1780
    :cond_59
    sget-boolean v12, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 1781
    .line 1782
    if-eqz v12, :cond_64

    .line 1783
    .line 1784
    iget-object v12, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 1785
    .line 1786
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 1787
    .line 1788
    .line 1789
    move-result v12

    .line 1790
    if-nez v12, :cond_64

    .line 1791
    .line 1792
    :cond_5a
    sget-boolean v12, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 1793
    .line 1794
    if-nez v12, :cond_5b

    .line 1795
    .line 1796
    sget-boolean v14, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 1797
    .line 1798
    if-eqz v14, :cond_5c

    .line 1799
    .line 1800
    :cond_5b
    if-eqz v11, :cond_5c

    .line 1801
    .line 1802
    invoke-interface {v13, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartSubscreenBiometric(Landroid/content/Intent;)V

    .line 1803
    .line 1804
    .line 1805
    :cond_5c
    if-nez v12, :cond_62

    .line 1806
    .line 1807
    if-eqz v1, :cond_5d

    .line 1808
    .line 1809
    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1810
    .line 1811
    .line 1812
    move-result v10

    .line 1813
    goto :goto_26

    .line 1814
    :cond_5d
    move v10, v5

    .line 1815
    :goto_26
    if-eqz v1, :cond_5e

    .line 1816
    .line 1817
    const-string v11, "bio_extend_duration"

    .line 1818
    .line 1819
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1820
    .line 1821
    .line 1822
    move-result v11

    .line 1823
    goto :goto_27

    .line 1824
    :cond_5e
    move v11, v5

    .line 1825
    :goto_27
    if-eqz v1, :cond_5f

    .line 1826
    .line 1827
    const-string/jumbo v12, "showCoverToast"

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1831
    .line 1832
    .line 1833
    move-result v12

    .line 1834
    goto :goto_28

    .line 1835
    :cond_5f
    move v12, v5

    .line 1836
    :goto_28
    if-nez v12, :cond_61

    .line 1837
    .line 1838
    if-nez v11, :cond_61

    .line 1839
    .line 1840
    if-eqz v10, :cond_60

    .line 1841
    .line 1842
    goto :goto_29

    .line 1843
    :cond_60
    move v10, v5

    .line 1844
    goto :goto_2a

    .line 1845
    :cond_61
    :goto_29
    move v10, v6

    .line 1846
    :goto_2a
    if-eqz v10, :cond_64

    .line 1847
    .line 1848
    :cond_62
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 1849
    .line 1850
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 1855
    .line 1856
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1857
    .line 1858
    .line 1859
    const-string v3, "PluginAODManager"

    .line 1860
    .line 1861
    const-string/jumbo v4, "showCoverToast() with FIntent"

    .line 1862
    .line 1863
    .line 1864
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    .line 1866
    .line 1867
    iget-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 1868
    .line 1869
    if-eqz v3, :cond_63

    .line 1870
    .line 1871
    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1872
    .line 1873
    .line 1874
    move-result v3

    .line 1875
    iget-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 1876
    .line 1877
    invoke-interface {v4, v2, v3}, Lcom/android/systemui/plugins/cover/PluginCover;->showCoverToast(Landroid/app/PendingIntent;Z)V

    .line 1878
    .line 1879
    .line 1880
    :cond_63
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 1881
    .line 1882
    if-eqz v0, :cond_87

    .line 1883
    .line 1884
    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->requestOpenAppPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 1885
    .line 1886
    .line 1887
    goto/16 :goto_3a

    .line 1888
    .line 1889
    :cond_64
    if-eqz v9, :cond_65

    .line 1890
    .line 1891
    const-string v3, "handleSetPendingIntentAfterUnlock() ignoreUnlock"

    .line 1892
    .line 1893
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 1897
    .line 1898
    .line 1899
    goto/16 :goto_3a

    .line 1900
    .line 1901
    :cond_65
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v8

    .line 1905
    if-eqz v8, :cond_77

    .line 1906
    .line 1907
    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 1908
    .line 1909
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v7

    .line 1913
    check-cast v7, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1914
    .line 1915
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 1916
    .line 1917
    .line 1918
    move-result v7

    .line 1919
    if-eqz v1, :cond_66

    .line 1920
    .line 1921
    const-string v8, "afterKeyguardGone"

    .line 1922
    .line 1923
    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v8

    .line 1927
    goto :goto_2b

    .line 1928
    :cond_66
    move v8, v5

    .line 1929
    :goto_2b
    if-eqz v4, :cond_67

    .line 1930
    .line 1931
    const-string/jumbo v9, "|"

    .line 1932
    .line 1933
    .line 1934
    filled-new-array {v9}, [Ljava/lang/String;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v9

    .line 1938
    invoke-static {v4, v9, v5, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v3

    .line 1942
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v3

    .line 1946
    check-cast v3, Ljava/lang/String;

    .line 1947
    .line 1948
    if-eqz v3, :cond_67

    .line 1949
    .line 1950
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1951
    .line 1952
    .line 1953
    move-result v3

    .line 1954
    goto :goto_2c

    .line 1955
    :cond_67
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 1956
    .line 1957
    .line 1958
    move-result v3

    .line 1959
    :goto_2c
    if-nez v8, :cond_68

    .line 1960
    .line 1961
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1962
    .line 1963
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 1964
    .line 1965
    invoke-virtual {v4, v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isPersona(I)Z

    .line 1966
    .line 1967
    .line 1968
    move-result v4

    .line 1969
    if-eqz v4, :cond_68

    .line 1970
    .line 1971
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 1972
    .line 1973
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v4

    .line 1977
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1978
    .line 1979
    invoke-virtual {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v3

    .line 1983
    if-eqz v3, :cond_68

    .line 1984
    .line 1985
    move v8, v6

    .line 1986
    :cond_68
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1987
    .line 1988
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 1989
    .line 1990
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 1991
    .line 1992
    .line 1993
    move-result v3

    .line 1994
    invoke-virtual {v13, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 1995
    .line 1996
    .line 1997
    move-result v3

    .line 1998
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    .line 1999
    .line 2000
    if-eqz v4, :cond_6a

    .line 2001
    .line 2002
    if-eqz v7, :cond_69

    .line 2003
    .line 2004
    if-nez v3, :cond_69

    .line 2005
    .line 2006
    goto :goto_2d

    .line 2007
    :cond_69
    move v9, v5

    .line 2008
    goto :goto_2e

    .line 2009
    :cond_6a
    :goto_2d
    move v9, v6

    .line 2010
    :goto_2e
    if-eqz v1, :cond_70

    .line 2011
    .line 2012
    const-string v10, "dismissType"

    .line 2013
    .line 2014
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v10

    .line 2018
    if-eqz v10, :cond_70

    .line 2019
    .line 2020
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 2021
    .line 2022
    .line 2023
    move-result v11

    .line 2024
    const v12, -0x37ba085b

    .line 2025
    .line 2026
    .line 2027
    if-eq v11, v12, :cond_6e

    .line 2028
    .line 2029
    const v12, -0xa17f9aa

    .line 2030
    .line 2031
    .line 2032
    if-eq v11, v12, :cond_6d

    .line 2033
    .line 2034
    const v12, 0x1ea9d7a4

    .line 2035
    .line 2036
    .line 2037
    if-eq v11, v12, :cond_6b

    .line 2038
    .line 2039
    goto :goto_30

    .line 2040
    :cond_6b
    const-string v11, "fingerprinterror"

    .line 2041
    .line 2042
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2043
    .line 2044
    .line 2045
    move-result v10

    .line 2046
    if-nez v10, :cond_6c

    .line 2047
    .line 2048
    goto :goto_30

    .line 2049
    :cond_6c
    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 2050
    .line 2051
    invoke-interface {v13, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    .line 2052
    .line 2053
    .line 2054
    goto :goto_2f

    .line 2055
    :cond_6d
    const-string/jumbo v11, "shutdown"

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v10

    .line 2062
    if-eqz v10, :cond_70

    .line 2063
    .line 2064
    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 2065
    .line 2066
    invoke-interface {v13, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    .line 2067
    .line 2068
    .line 2069
    goto :goto_2f

    .line 2070
    :cond_6e
    const-string/jumbo v11, "reboot"

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2074
    .line 2075
    .line 2076
    move-result v10

    .line 2077
    if-nez v10, :cond_6f

    .line 2078
    .line 2079
    goto :goto_30

    .line 2080
    :cond_6f
    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 2081
    .line 2082
    invoke-interface {v13, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    .line 2083
    .line 2084
    .line 2085
    :goto_2f
    move v9, v6

    .line 2086
    :cond_70
    :goto_30
    sget-object v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2087
    .line 2088
    invoke-static {v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 2089
    .line 2090
    .line 2091
    if-eqz v1, :cond_71

    .line 2092
    .line 2093
    const-string v10, "dismissIfInsecure"

    .line 2094
    .line 2095
    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 2096
    .line 2097
    .line 2098
    move-result v9

    .line 2099
    goto :goto_31

    .line 2100
    :cond_71
    move v9, v5

    .line 2101
    :goto_31
    iget-object v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 2102
    .line 2103
    if-nez v9, :cond_74

    .line 2104
    .line 2105
    if-eqz v7, :cond_72

    .line 2106
    .line 2107
    if-eqz v3, :cond_74

    .line 2108
    .line 2109
    :cond_72
    if-eqz v4, :cond_73

    .line 2110
    .line 2111
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v3

    .line 2115
    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    .line 2116
    .line 2117
    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecViewController;->setShowSwipeBouncer(Z)V

    .line 2118
    .line 2119
    .line 2120
    goto :goto_32

    .line 2121
    :cond_73
    move v3, v5

    .line 2122
    goto :goto_33

    .line 2123
    :cond_74
    :goto_32
    move v3, v6

    .line 2124
    :goto_33
    if-eqz v1, :cond_75

    .line 2125
    .line 2126
    const-string/jumbo v4, "withAnimation"

    .line 2127
    .line 2128
    .line 2129
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 2130
    .line 2131
    .line 2132
    move-result v6

    .line 2133
    :cond_75
    iput-boolean v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    .line 2134
    .line 2135
    if-eqz v1, :cond_76

    .line 2136
    .line 2137
    const-string/jumbo v4, "wakeAndUnlock"

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 2141
    .line 2142
    .line 2143
    move-result v5

    .line 2144
    :cond_76
    iget-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    .line 2145
    .line 2146
    const-string v6, "handleSetPendingIntentAfterUnlock() : afterKeyguardGone="

    .line 2147
    .line 2148
    const-string v7, " isInstantDismiss="

    .line 2149
    .line 2150
    const-string v9, " withAnimation="

    .line 2151
    .line 2152
    invoke-static {v6, v8, v7, v3, v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v6

    .line 2156
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2157
    .line 2158
    .line 2159
    const-string v4, " wakeAndUnlock="

    .line 2160
    .line 2161
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2165
    .line 2166
    .line 2167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v4

    .line 2171
    const-string v6, "KeyguardViewMediator"

    .line 2172
    .line 2173
    invoke-static {v6, v4}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    .line 2175
    .line 2176
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v4

    .line 2180
    move-object v14, v4

    .line 2181
    check-cast v14, Lcom/android/keyguard/KeyguardViewController;

    .line 2182
    .line 2183
    new-instance v15, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;

    .line 2184
    .line 2185
    invoke-direct {v15, v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 2186
    .line 2187
    .line 2188
    const/16 v16, 0x0

    .line 2189
    .line 2190
    move/from16 v17, v8

    .line 2191
    .line 2192
    move/from16 v18, v3

    .line 2193
    .line 2194
    move/from16 v19, v5

    .line 2195
    .line 2196
    invoke-interface/range {v14 .. v19}, Lcom/android/keyguard/KeyguardSecViewController;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    .line 2197
    .line 2198
    .line 2199
    goto/16 :goto_3a

    .line 2200
    .line 2201
    :cond_77
    if-eqz v7, :cond_78

    .line 2202
    .line 2203
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 2204
    .line 2205
    .line 2206
    goto/16 :goto_3a

    .line 2207
    .line 2208
    :cond_78
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v3

    .line 2212
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isExternallyEnabled:Lkotlin/jvm/functions/Function0;

    .line 2213
    .line 2214
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v3

    .line 2218
    check-cast v3, Ljava/lang/Boolean;

    .line 2219
    .line 2220
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2221
    .line 2222
    .line 2223
    move-result v3

    .line 2224
    if-nez v3, :cond_87

    .line 2225
    .line 2226
    if-eqz v4, :cond_87

    .line 2227
    .line 2228
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 2229
    .line 2230
    .line 2231
    goto/16 :goto_3a

    .line 2232
    .line 2233
    :cond_79
    const-string v1, "adjustStatusBarLocked - ADJUST_STATUS_BAR : flags=0x"

    .line 2234
    .line 2235
    :try_start_8
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2236
    .line 2237
    if-nez v2, :cond_7a

    .line 2238
    .line 2239
    const-string/jumbo v2, "statusbar"

    .line 2240
    .line 2241
    .line 2242
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v2

    .line 2246
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v2

    .line 2250
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2251
    .line 2252
    :cond_7a
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2253
    .line 2254
    if-eqz v2, :cond_87

    .line 2255
    .line 2256
    iget v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    .line 2257
    .line 2258
    const/16 v4, 0x10

    .line 2259
    .line 2260
    invoke-static {v4}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    .line 2261
    .line 2262
    .line 2263
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v3

    .line 2267
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v1

    .line 2271
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 2272
    .line 2273
    .line 2274
    iget v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    .line 2275
    .line 2276
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->token:Landroid/os/IBinder;

    .line 2277
    .line 2278
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    .line 2279
    .line 2280
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v0

    .line 2284
    invoke-interface {v2, v1, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 2285
    .line 2286
    .line 2287
    goto/16 :goto_3a

    .line 2288
    .line 2289
    :catch_2
    move-exception v0

    .line 2290
    const-string v1, "adjustStatusBarLocked - ADJUST_STATUS_BAR - disable failed"

    .line 2291
    .line 2292
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2293
    .line 2294
    .line 2295
    goto/16 :goto_3a

    .line 2296
    .line 2297
    :cond_7b
    const-string v1, "handleBootCompleted"

    .line 2298
    .line 2299
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 2300
    .line 2301
    .line 2302
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 2303
    .line 2304
    if-eqz v1, :cond_87

    .line 2305
    .line 2306
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2307
    .line 2308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2309
    .line 2310
    .line 2311
    const-string v1, "SubScreenManager"

    .line 2312
    .line 2313
    const-string/jumbo v2, "onBootCompleted() "

    .line 2314
    .line 2315
    .line 2316
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .line 2318
    .line 2319
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 2320
    .line 2321
    if-nez v2, :cond_87

    .line 2322
    .line 2323
    const-string v2, "init() "

    .line 2324
    .line 2325
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    .line 2327
    .line 2328
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2329
    .line 2330
    const-string v3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 2331
    .line 2332
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v2

    .line 2336
    if-eqz v2, :cond_7f

    .line 2337
    .line 2338
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2339
    .line 2340
    const-string v7, "getSubDisplay() : length "

    .line 2341
    .line 2342
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2343
    .line 2344
    .line 2345
    array-length v7, v2

    .line 2346
    invoke-static {v3, v7, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    array-length v3, v2

    .line 2350
    move v7, v5

    .line 2351
    :goto_34
    if-ge v7, v3, :cond_7f

    .line 2352
    .line 2353
    aget-object v8, v2, v7

    .line 2354
    .line 2355
    if-nez v8, :cond_7c

    .line 2356
    .line 2357
    const-string v9, "Do not show SubScreen UI on null display"

    .line 2358
    .line 2359
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    .line 2361
    .line 2362
    goto :goto_35

    .line 2363
    :cond_7c
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    .line 2364
    .line 2365
    .line 2366
    move-result v9

    .line 2367
    if-ne v9, v6, :cond_7d

    .line 2368
    .line 2369
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2370
    .line 2371
    const-string v10, "Show SubScreen UI on this display "

    .line 2372
    .line 2373
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2374
    .line 2375
    .line 2376
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2377
    .line 2378
    .line 2379
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v9

    .line 2383
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    .line 2385
    .line 2386
    move v9, v6

    .line 2387
    goto :goto_36

    .line 2388
    :cond_7d
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2389
    .line 2390
    const-string v10, "Do not show SubScreen UI on this display "

    .line 2391
    .line 2392
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2393
    .line 2394
    .line 2395
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2396
    .line 2397
    .line 2398
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v9

    .line 2402
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    .line 2404
    .line 2405
    :goto_35
    move v9, v5

    .line 2406
    :goto_36
    if-eqz v9, :cond_7e

    .line 2407
    .line 2408
    move-object v4, v8

    .line 2409
    goto :goto_37

    .line 2410
    :cond_7e
    add-int/lit8 v7, v7, 0x1

    .line 2411
    .line 2412
    goto :goto_34

    .line 2413
    :cond_7f
    :goto_37
    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 2414
    .line 2415
    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->initWindow()V

    .line 2416
    .line 2417
    .line 2418
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 2419
    .line 2420
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 2421
    .line 2422
    .line 2423
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 2424
    .line 2425
    if-eqz v1, :cond_80

    .line 2426
    .line 2427
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$6;

    .line 2428
    .line 2429
    invoke-direct {v1, v0}, Lcom/android/systemui/subscreen/SubScreenManager$6;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    .line 2430
    .line 2431
    .line 2432
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2433
    .line 2434
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 2435
    .line 2436
    .line 2437
    iget-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 2438
    .line 2439
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v1

    .line 2443
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

    .line 2444
    .line 2445
    iget-object v3, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 2446
    .line 2447
    invoke-virtual {v3, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 2448
    .line 2449
    .line 2450
    :cond_80
    iget-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 2451
    .line 2452
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 2453
    .line 2454
    .line 2455
    iget-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2456
    .line 2457
    iget-boolean v2, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 2458
    .line 2459
    iput-boolean v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 2460
    .line 2461
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 2462
    .line 2463
    .line 2464
    iget-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 2465
    .line 2466
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 2467
    .line 2468
    .line 2469
    goto/16 :goto_3a

    .line 2470
    .line 2471
    :cond_81
    const-string v1, "handleLaunchPersoLock"

    .line 2472
    .line 2473
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 2474
    .line 2475
    .line 2476
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v1

    .line 2480
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2481
    .line 2482
    .line 2483
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v1

    .line 2487
    monitor-enter v1

    .line 2488
    :try_start_9
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 2489
    .line 2490
    .line 2491
    move-result v2

    .line 2492
    if-nez v2, :cond_82

    .line 2493
    .line 2494
    const-string v2, "doKeyguardLocked"

    .line 2495
    .line 2496
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 2497
    .line 2498
    .line 2499
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_DRAWING$delegate:Lkotlin/Lazy;

    .line 2500
    .line 2501
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v2

    .line 2505
    check-cast v2, Ljava/lang/Number;

    .line 2506
    .line 2507
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2508
    .line 2509
    .line 2510
    move-result v2

    .line 2511
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    .line 2512
    .line 2513
    .line 2514
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 2515
    .line 2516
    .line 2517
    goto :goto_38

    .line 2518
    :cond_82
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE$delegate:Lkotlin/Lazy;

    .line 2519
    .line 2520
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2521
    .line 2522
    .line 2523
    move-result-object v2

    .line 2524
    check-cast v2, Ljava/lang/Number;

    .line 2525
    .line 2526
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2527
    .line 2528
    .line 2529
    move-result v2

    .line 2530
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    .line 2531
    .line 2532
    .line 2533
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->HIDE$delegate:Lkotlin/Lazy;

    .line 2534
    .line 2535
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v2

    .line 2539
    check-cast v2, Ljava/lang/Number;

    .line 2540
    .line 2541
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2542
    .line 2543
    .line 2544
    move-result v2

    .line 2545
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    .line 2546
    .line 2547
    .line 2548
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 2549
    .line 2550
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v2

    .line 2554
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2555
    .line 2556
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    .line 2557
    .line 2558
    .line 2559
    move-result v2

    .line 2560
    if-eqz v2, :cond_83

    .line 2561
    .line 2562
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 2563
    .line 2564
    .line 2565
    move-result-object v2

    .line 2566
    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setHiding:Lkotlin/jvm/functions/Function1;

    .line 2567
    .line 2568
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2569
    .line 2570
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    .line 2572
    .line 2573
    :cond_83
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked()V

    .line 2574
    .line 2575
    .line 2576
    :goto_38
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2577
    .line 2578
    monitor-exit v1

    .line 2579
    goto :goto_3a

    .line 2580
    :catchall_2
    move-exception v0

    .line 2581
    monitor-exit v1

    .line 2582
    throw v0

    .line 2583
    :cond_84
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2584
    .line 2585
    const-string v2, "handleRemoteLockRequested"

    .line 2586
    .line 2587
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 2588
    .line 2589
    .line 2590
    instance-of v2, v1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 2591
    .line 2592
    if-eqz v2, :cond_85

    .line 2593
    .line 2594
    check-cast v1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 2595
    .line 2596
    iget-boolean v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 2597
    .line 2598
    if-nez v1, :cond_85

    .line 2599
    .line 2600
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2601
    .line 2602
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    .line 2603
    .line 2604
    .line 2605
    move-result v1

    .line 2606
    const/4 v2, -0x1

    .line 2607
    if-ne v1, v2, :cond_87

    .line 2608
    .line 2609
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 2610
    .line 2611
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v1

    .line 2615
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2616
    .line 2617
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 2618
    .line 2619
    .line 2620
    move-result v1

    .line 2621
    if-eqz v1, :cond_87

    .line 2622
    .line 2623
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked()V

    .line 2624
    .line 2625
    .line 2626
    goto :goto_3a

    .line 2627
    :cond_85
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 2628
    .line 2629
    .line 2630
    move-result v1

    .line 2631
    if-nez v1, :cond_86

    .line 2632
    .line 2633
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 2634
    .line 2635
    .line 2636
    goto :goto_39

    .line 2637
    :cond_86
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked()V

    .line 2638
    .line 2639
    .line 2640
    :goto_39
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    .line 2641
    .line 2642
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2643
    .line 2644
    .line 2645
    move-result-wide v1

    .line 2646
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2647
    .line 2648
    .line 2649
    :catch_3
    :cond_87
    :goto_3a
    return-void

    .line 2650
    nop

    .line 2651
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, -0x1

    .line 10
    const-wide/16 v7, 0xbb8

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_d

    .line 16
    .line 17
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 31
    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    iput v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 42
    .line 43
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 48
    .line 49
    check-cast v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 59
    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    check-cast v1, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 73
    .line 74
    move-object/from16 v7, p1

    .line 75
    .line 76
    check-cast v7, Landroid/os/Message;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget v0, v7, Landroid/os/Message;->what:I

    .line 82
    .line 83
    iget-object v8, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SYSTEM_READY$delegate:Lkotlin/Lazy;

    .line 84
    .line 85
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    const/4 v9, 0x2

    .line 96
    if-ne v0, v8, :cond_6

    .line 97
    .line 98
    const-string v2, "KeyguardViewMediator"

    .line 99
    .line 100
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 101
    .line 102
    iget-object v8, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 103
    .line 104
    invoke-virtual {v8, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 105
    .line 106
    .line 107
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 108
    .line 109
    iget-object v10, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 110
    .line 111
    if-nez v0, :cond_0

    .line 112
    .line 113
    sget-boolean v11, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    .line 114
    .line 115
    if-eqz v11, :cond_1

    .line 116
    .line 117
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const-class v11, Landroid/hardware/devicestate/DeviceStateManager;

    .line 121
    .line 122
    iget-object v12, v10, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->context:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v12, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    check-cast v11, Landroid/hardware/devicestate/DeviceStateManager;

    .line 129
    .line 130
    sget-object v13, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$1;

    .line 131
    .line 132
    invoke-static {v13}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    new-instance v14, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 137
    .line 138
    new-instance v15, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;

    .line 139
    .line 140
    invoke-direct {v15, v10}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v14, v12, v15}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v13, v14}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    if-eqz v0, :cond_2

    .line 150
    .line 151
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleSystemReady$1;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleSystemReady$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 154
    .line 155
    .line 156
    const/4 v11, 0x6

    .line 157
    invoke-virtual {v10, v0, v11, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    .line 158
    .line 159
    .line 160
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

    .line 161
    .line 162
    iget-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 163
    .line 164
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 165
    .line 166
    invoke-virtual {v4, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 167
    .line 168
    .line 169
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 170
    .line 171
    if-nez v0, :cond_3

    .line 172
    .line 173
    const-string v0, "lock_settings"

    .line 174
    .line 175
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 184
    .line 185
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 186
    .line 187
    if-eqz v0, :cond_4

    .line 188
    .line 189
    iget-object v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->remoteLockMonitorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

    .line 190
    .line 191
    invoke-interface {v0, v5, v4}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v4, "RemoteLockMonitorCallback regi Failed!"

    .line 197
    .line 198
    const-string v5, "KeyguardViewMediator"

    .line 199
    .line 200
    invoke-static {v5, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    sget-object v10, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 204
    .line 205
    invoke-static {v5, v10, v4, v0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pickupController:Lcom/android/systemui/sensor/PickupController;

    .line 209
    .line 210
    iget-object v4, v0, Lcom/android/systemui/sensor/PickupController;->baseSensorListener:Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    .line 211
    .line 212
    iget-object v5, v0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-nez v5, :cond_5

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_5
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const-string/jumbo v4, "register listener caller="

    .line 230
    .line 231
    .line 232
    const-string v5, "PickupController"

    .line 233
    .line 234
    invoke-static {v4, v0, v5}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 238
    .line 239
    if-eqz v0, :cond_1d

    .line 240
    .line 241
    const-string/jumbo v0, "postHandleSystemReady(). check FBE"

    .line 242
    .line 243
    .line 244
    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 248
    .line 249
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-interface {v8, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateUserUnlockNotification(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-ne v0, v8, :cond_e

    .line 265
    .line 266
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    .line 267
    .line 268
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v8, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    if-eqz v10, :cond_7

    .line 277
    .line 278
    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    monitor-enter v8

    .line 286
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 287
    .line 288
    if-eqz v0, :cond_a

    .line 289
    .line 290
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    iget-object v10, v10, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getDelayedShowingSequence:Lkotlin/jvm/functions/Function0;

    .line 295
    .line 296
    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    check-cast v10, Ljava/lang/Number;

    .line 301
    .line 302
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    if-lt v10, v9, :cond_9

    .line 307
    .line 308
    sget-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 309
    .line 310
    if-eqz v9, :cond_8

    .line 311
    .line 312
    iget v9, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastSleepReason:I

    .line 313
    .line 314
    if-ne v9, v5, :cond_8

    .line 315
    .line 316
    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 317
    .line 318
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_8

    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    .line 330
    .line 331
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_9
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 336
    .line 337
    .line 338
    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 339
    .line 340
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .line 342
    :cond_a
    :goto_2
    monitor-exit v8

    .line 343
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 344
    .line 345
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 358
    .line 359
    .line 360
    move-result-wide v8

    .line 361
    iput-wide v8, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastShowingTime:J

    .line 362
    .line 363
    :cond_b
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 364
    .line 365
    if-eqz v0, :cond_c

    .line 366
    .line 367
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 368
    .line 369
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->resetFoldOpenState(Z)V

    .line 370
    .line 371
    .line 372
    :cond_c
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_d

    .line 377
    .line 378
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 379
    .line 380
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    .line 383
    .line 384
    .line 385
    :cond_d
    iput-boolean v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    .line 386
    .line 387
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_5

    .line 393
    .line 394
    :catchall_0
    move-exception v0

    .line 395
    monitor-exit v8

    .line 396
    throw v0

    .line 397
    :cond_e
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

    .line 398
    .line 399
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    check-cast v2, Ljava/lang/Number;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-ne v0, v2, :cond_17

    .line 410
    .line 411
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    .line 412
    .line 413
    if-eqz v0, :cond_f

    .line 414
    .line 415
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 416
    .line 417
    move-object v10, v0

    .line 418
    check-cast v10, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 419
    .line 420
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    const-wide/16 v14, 0xbb8

    .line 424
    .line 425
    sget-wide v11, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    .line 426
    .line 427
    const-wide/32 v16, 0xf4240

    .line 428
    .line 429
    .line 430
    div-long v12, v11, v16

    .line 431
    .line 432
    const/4 v11, 0x1

    .line 433
    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    .line 434
    .line 435
    .line 436
    :cond_f
    iget v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    .line 437
    .line 438
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 439
    .line 440
    const/16 v5, 0xa

    .line 441
    .line 442
    if-eq v0, v5, :cond_10

    .line 443
    .line 444
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 449
    .line 450
    invoke-virtual {v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setDozing(Z)V

    .line 451
    .line 452
    .line 453
    :cond_10
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 462
    .line 463
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 472
    .line 473
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    sget-boolean v8, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 478
    .line 479
    iget-object v10, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 480
    .line 481
    if-eqz v8, :cond_14

    .line 482
    .line 483
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    iget v11, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    .line 488
    .line 489
    iget v12, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    .line 490
    .line 491
    const/16 v13, 0x67

    .line 492
    .line 493
    if-ne v12, v13, :cond_14

    .line 494
    .line 495
    if-eqz v0, :cond_14

    .line 496
    .line 497
    if-nez v5, :cond_14

    .line 498
    .line 499
    if-eqz v8, :cond_14

    .line 500
    .line 501
    iget-boolean v5, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 502
    .line 503
    if-eqz v5, :cond_14

    .line 504
    .line 505
    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-eqz v5, :cond_14

    .line 510
    .line 511
    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 512
    .line 513
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_14

    .line 518
    .line 519
    if-eq v11, v6, :cond_11

    .line 520
    .line 521
    if-nez v2, :cond_12

    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_11
    if-eqz v2, :cond_13

    .line 525
    .line 526
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 527
    .line 528
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 529
    .line 530
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-eqz v2, :cond_12

    .line 539
    .line 540
    goto :goto_3

    .line 541
    :cond_12
    move v4, v3

    .line 542
    :cond_13
    :goto_3
    if-eqz v4, :cond_14

    .line 543
    .line 544
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->handleHide:Lkotlin/jvm/functions/Function0;

    .line 549
    .line 550
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    :cond_14
    if-nez v0, :cond_15

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasShowMsg()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_15

    .line 560
    .line 561
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->requestSessionClose()V

    .line 562
    .line 563
    .line 564
    goto :goto_4

    .line 565
    :cond_15
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-eqz v0, :cond_16

    .line 570
    .line 571
    invoke-virtual {v10, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 572
    .line 573
    .line 574
    :cond_16
    :goto_4
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;

    .line 575
    .line 576
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 577
    .line 578
    .line 579
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    .line 580
    .line 581
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_5

    .line 585
    .line 586
    :cond_17
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

    .line 587
    .line 588
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    check-cast v2, Ljava/lang/Number;

    .line 593
    .line 594
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-ne v0, v2, :cond_1c

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    monitor-enter v2

    .line 605
    :try_start_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 606
    .line 607
    if-eqz v0, :cond_18

    .line 608
    .line 609
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 610
    .line 611
    .line 612
    move-result-object v8

    .line 613
    iget-object v9, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

    .line 614
    .line 615
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    check-cast v9, Ljava/lang/Number;

    .line 620
    .line 621
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 622
    .line 623
    .line 624
    move-result v9

    .line 625
    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    .line 626
    .line 627
    .line 628
    move-result v8

    .line 629
    if-nez v8, :cond_19

    .line 630
    .line 631
    :cond_18
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    .line 632
    .line 633
    .line 634
    move-result v8

    .line 635
    if-eqz v8, :cond_19

    .line 636
    .line 637
    iget-boolean v8, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    .line 638
    .line 639
    if-nez v8, :cond_19

    .line 640
    .line 641
    const-string v8, "change mHiding = false"

    .line 642
    .line 643
    invoke-static {v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    iget-object v8, v8, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setHiding:Lkotlin/jvm/functions/Function1;

    .line 651
    .line 652
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 653
    .line 654
    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    :cond_19
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 658
    .line 659
    monitor-exit v2

    .line 660
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 661
    .line 662
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    .line 663
    .line 664
    .line 665
    if-eqz v0, :cond_1a

    .line 666
    .line 667
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 668
    .line 669
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->resetFoldOpenState(Z)V

    .line 670
    .line 671
    .line 672
    iget v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastSleepReason:I

    .line 673
    .line 674
    if-ne v0, v5, :cond_1a

    .line 675
    .line 676
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 677
    .line 678
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-nez v0, :cond_1a

    .line 683
    .line 684
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    .line 685
    .line 686
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    .line 691
    .line 692
    check-cast v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 693
    .line 694
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    .line 695
    .line 696
    .line 697
    :cond_1a
    iget-boolean v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    .line 698
    .line 699
    if-nez v0, :cond_1b

    .line 700
    .line 701
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodShowStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;

    .line 702
    .line 703
    const-string v2, "aod_show_state"

    .line 704
    .line 705
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 714
    .line 715
    invoke-virtual {v5, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 716
    .line 717
    .line 718
    :cond_1b
    iput-boolean v4, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    .line 719
    .line 720
    iput-boolean v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    .line 721
    .line 722
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 723
    .line 724
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    .line 725
    .line 726
    .line 727
    goto :goto_5

    .line 728
    :catchall_1
    move-exception v0

    .line 729
    monitor-exit v2

    .line 730
    throw v0

    .line 731
    :cond_1c
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_PENDING_TIMEOUT$delegate:Lkotlin/Lazy;

    .line 732
    .line 733
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    check-cast v2, Ljava/lang/Number;

    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-ne v0, v2, :cond_1d

    .line 744
    .line 745
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isKeyguardDonePending:Lkotlin/jvm/functions/Function0;

    .line 750
    .line 751
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    check-cast v0, Ljava/lang/Boolean;

    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    const-string v4, "handleKeyguardDonePendingTimeout donePending="

    .line 764
    .line 765
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    if-eqz v0, :cond_1d

    .line 779
    .line 780
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 781
    .line 782
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 787
    .line 788
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    .line 793
    .line 794
    .line 795
    :cond_1d
    :goto_5
    iget v0, v7, Landroid/os/Message;->what:I

    .line 796
    .line 797
    iget v7, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    .line 798
    .line 799
    new-instance v9, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;

    .line 800
    .line 801
    invoke-direct {v9, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 802
    .line 803
    .line 804
    const/4 v8, 0x0

    .line 805
    const/4 v10, 0x0

    .line 806
    const/4 v11, 0x0

    .line 807
    new-array v12, v3, [Ljava/lang/Object;

    .line 808
    .line 809
    invoke-static/range {v7 .. v12}, Lcom/android/systemui/util/LogUtil;->internalEndTime(IILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    .line 811
    .line 812
    iput v6, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    .line 813
    .line 814
    return-void

    .line 815
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->accept$com$android$systemui$keyguard$KeyguardViewMediator$12$$InternalSyntheticLambda$1$a0b69a91035649d75be7d9c1b05e8e4316a3b85b56842dba41aec11ee28c01bc$2(Ljava/lang/Object;)V

    .line 816
    .line 817
    .line 818
    return-void

    .line 819
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 820
    .line 821
    move-object/from16 v1, p1

    .line 822
    .line 823
    check-cast v1, Landroid/os/Message;

    .line 824
    .line 825
    iget v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    .line 826
    .line 827
    if-eq v7, v6, :cond_1e

    .line 828
    .line 829
    iget v5, v1, Landroid/os/Message;->what:I

    .line 830
    .line 831
    new-instance v9, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;

    .line 832
    .line 833
    invoke-direct {v9, v0, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    .line 834
    .line 835
    .line 836
    const/4 v8, 0x0

    .line 837
    const/4 v10, 0x0

    .line 838
    const/4 v11, 0x0

    .line 839
    new-array v12, v3, [Ljava/lang/Object;

    .line 840
    .line 841
    invoke-static/range {v7 .. v12}, Lcom/android/systemui/util/LogUtil;->internalEndTime(IILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    iput v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    .line 845
    .line 846
    :cond_1e
    iget v5, v1, Landroid/os/Message;->what:I

    .line 847
    .line 848
    invoke-static {v6}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 849
    .line 850
    .line 851
    move-result v6

    .line 852
    iput v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    .line 853
    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    .line 855
    .line 856
    const-string v7, "handleMessage "

    .line 857
    .line 858
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v5

    .line 868
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    iget v1, v1, Landroid/os/Message;->what:I

    .line 872
    .line 873
    const/16 v5, 0x3ec

    .line 874
    .line 875
    if-ne v1, v5, :cond_20

    .line 876
    .line 877
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 882
    .line 883
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    check-cast v2, Ljava/lang/Number;

    .line 888
    .line 889
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 890
    .line 891
    .line 892
    move-result v2

    .line 893
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    if-eqz v1, :cond_2d

    .line 898
    .line 899
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 904
    .line 905
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    check-cast v2, Ljava/lang/Number;

    .line 910
    .line 911
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 912
    .line 913
    .line 914
    move-result v2

    .line 915
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure()Z

    .line 919
    .line 920
    .line 921
    move-result v1

    .line 922
    if-eqz v1, :cond_1f

    .line 923
    .line 924
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 925
    .line 926
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 927
    .line 928
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 933
    .line 934
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 935
    .line 936
    .line 937
    :cond_1f
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    .line 938
    .line 939
    const-string v0, "cancel CANCEL_KEYGUARD_EXIT_ANIM"

    .line 940
    .line 941
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    goto/16 :goto_c

    .line 945
    .line 946
    :cond_20
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    .line 947
    .line 948
    .line 949
    move-result v5

    .line 950
    if-ne v1, v5, :cond_21

    .line 951
    .line 952
    goto :goto_6

    .line 953
    :cond_21
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

    .line 954
    .line 955
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v5

    .line 959
    check-cast v5, Ljava/lang/Number;

    .line 960
    .line 961
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 962
    .line 963
    .line 964
    move-result v5

    .line 965
    if-ne v1, v5, :cond_22

    .line 966
    .line 967
    :goto_6
    move v5, v4

    .line 968
    goto :goto_7

    .line 969
    :cond_22
    move v5, v3

    .line 970
    :goto_7
    if-eqz v5, :cond_27

    .line 971
    .line 972
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    .line 973
    .line 974
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v5

    .line 978
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 979
    .line 980
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 981
    .line 982
    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 983
    .line 984
    if-nez v5, :cond_23

    .line 985
    .line 986
    goto :goto_8

    .line 987
    :cond_23
    iget-object v5, v5, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 988
    .line 989
    if-eqz v5, :cond_24

    .line 990
    .line 991
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    :cond_24
    xor-int/2addr v4, v3

    .line 996
    :goto_8
    if-nez v4, :cond_25

    .line 997
    .line 998
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 1003
    .line 1004
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 1005
    .line 1006
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->restoreKeyguardSurface()V

    .line 1007
    .line 1008
    .line 1009
    :cond_25
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 1010
    .line 1011
    monitor-enter v1

    .line 1012
    :try_start_3
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 1013
    .line 1014
    if-eqz v0, :cond_26

    .line 1015
    .line 1016
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 1017
    .line 1018
    .line 1019
    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 1020
    .line 1021
    const-string v0, "KeyguardSysDumpTrigger"

    .line 1022
    .line 1023
    const-string v2, "cancel"

    .line 1024
    .line 1025
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1026
    .line 1027
    .line 1028
    :cond_26
    monitor-exit v1

    .line 1029
    goto :goto_c

    .line 1030
    :catchall_2
    move-exception v0

    .line 1031
    monitor-exit v1

    .line 1032
    throw v0

    .line 1033
    :cond_27
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 1034
    .line 1035
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v5

    .line 1039
    check-cast v5, Ljava/lang/Number;

    .line 1040
    .line 1041
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    if-ne v1, v5, :cond_28

    .line 1046
    .line 1047
    goto :goto_9

    .line 1048
    :cond_28
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    .line 1049
    .line 1050
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v5

    .line 1054
    check-cast v5, Ljava/lang/Number;

    .line 1055
    .line 1056
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 1057
    .line 1058
    .line 1059
    move-result v5

    .line 1060
    if-ne v1, v5, :cond_29

    .line 1061
    .line 1062
    :goto_9
    move v5, v4

    .line 1063
    goto :goto_a

    .line 1064
    :cond_29
    move v5, v3

    .line 1065
    :goto_a
    if-eqz v5, :cond_2a

    .line 1066
    .line 1067
    goto :goto_b

    .line 1068
    :cond_2a
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    .line 1069
    .line 1070
    .line 1071
    move-result v5

    .line 1072
    if-ne v1, v5, :cond_2b

    .line 1073
    .line 1074
    :goto_b
    move v3, v4

    .line 1075
    :cond_2b
    if-eqz v3, :cond_2d

    .line 1076
    .line 1077
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 1078
    .line 1079
    monitor-enter v1

    .line 1080
    :try_start_4
    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 1081
    .line 1082
    if-eqz v0, :cond_2c

    .line 1083
    .line 1084
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 1085
    .line 1086
    .line 1087
    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 1088
    .line 1089
    const-string v0, "KeyguardSysDumpTrigger"

    .line 1090
    .line 1091
    const-string v2, "cancel"

    .line 1092
    .line 1093
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1094
    .line 1095
    .line 1096
    :cond_2c
    monitor-exit v1

    .line 1097
    goto :goto_c

    .line 1098
    :catchall_3
    move-exception v0

    .line 1099
    monitor-exit v1

    .line 1100
    throw v0

    .line 1101
    :cond_2d
    :goto_c
    return-void

    .line 1102
    :pswitch_6
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1103
    .line 1104
    move-object/from16 v1, p1

    .line 1105
    .line 1106
    check-cast v1, Ljava/lang/Boolean;

    .line 1107
    .line 1108
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->cancelLockWhenCoverIsOpened(Z)V

    .line 1113
    .line 1114
    .line 1115
    return-void

    .line 1116
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1117
    .line 1118
    move-object/from16 v1, p1

    .line 1119
    .line 1120
    check-cast v1, Ljava/lang/Integer;

    .line 1121
    .line 1122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->extraUserPresentIntent:Landroid/content/Intent;

    .line 1127
    .line 1128
    if-nez v2, :cond_2e

    .line 1129
    .line 1130
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->userPresentIntent:Lkotlin/jvm/functions/Function0;

    .line 1135
    .line 1136
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    check-cast v2, Landroid/content/Intent;

    .line 1141
    .line 1142
    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    check-cast v2, Landroid/content/Intent;

    .line 1147
    .line 1148
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->extraUserPresentIntent:Landroid/content/Intent;

    .line 1149
    .line 1150
    :cond_2e
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->extraUserPresentIntent:Landroid/content/Intent;

    .line 1151
    .line 1152
    if-eqz v2, :cond_30

    .line 1153
    .line 1154
    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_EXTRA_USER_PRESENT:Z

    .line 1155
    .line 1156
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    .line 1157
    .line 1158
    if-eqz v3, :cond_2f

    .line 1159
    .line 1160
    const-string v3, "com.verizon.mips.services"

    .line 1161
    .line 1162
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    .line 1164
    .line 1165
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v3

    .line 1169
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1170
    .line 1171
    .line 1172
    :cond_2f
    const-string v3, "com.sec.android.daemonapp"

    .line 1173
    .line 1174
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    .line 1176
    .line 1177
    const/16 v3, 0x20

    .line 1178
    .line 1179
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1187
    .line 1188
    .line 1189
    :cond_30
    return-void

    .line 1190
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1191
    .line 1192
    move-object/from16 v1, p1

    .line 1193
    .line 1194
    check-cast v1, Landroid/app/PendingIntent;

    .line 1195
    .line 1196
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    .line 1197
    .line 1198
    return-void

    .line 1199
    :pswitch_9
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1200
    .line 1201
    move-object/from16 v1, p1

    .line 1202
    .line 1203
    check-cast v1, Ljava/lang/Integer;

    .line 1204
    .line 1205
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1206
    .line 1207
    .line 1208
    move-result v1

    .line 1209
    const/4 v2, 0x5

    .line 1210
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    .line 1211
    .line 1212
    .line 1213
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastSleepReason:I

    .line 1214
    .line 1215
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 1216
    .line 1217
    if-eqz v1, :cond_31

    .line 1218
    .line 1219
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 1220
    .line 1221
    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v1

    .line 1225
    if-eqz v1, :cond_31

    .line 1226
    .line 1227
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler()Landroid/os/Handler;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;

    .line 1232
    .line 1233
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1237
    .line 1238
    .line 1239
    :cond_31
    return-void

    .line 1240
    :pswitch_a
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1241
    .line 1242
    move-object/from16 v1, p1

    .line 1243
    .line 1244
    check-cast v1, Ljava/lang/Integer;

    .line 1245
    .line 1246
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1247
    .line 1248
    .line 1249
    move-result v15

    .line 1250
    invoke-virtual {v0, v5, v7, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    .line 1251
    .line 1252
    .line 1253
    iput v15, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    .line 1254
    .line 1255
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 1256
    .line 1257
    if-eqz v1, :cond_32

    .line 1258
    .line 1259
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 1260
    .line 1261
    iput v15, v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->wakeReason:I

    .line 1262
    .line 1263
    :cond_32
    const/4 v10, 0x3

    .line 1264
    const/4 v14, 0x1

    .line 1265
    sget-object v9, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    .line 1266
    .line 1267
    const/4 v11, 0x0

    .line 1268
    const/4 v12, 0x0

    .line 1269
    const/4 v13, 0x0

    .line 1270
    const/16 v16, 0xe

    .line 1271
    .line 1272
    invoke-static/range {v9 .. v16}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    .line 1273
    .line 1274
    .line 1275
    return-void

    .line 1276
    :goto_d
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 1277
    .line 1278
    move-object/from16 v1, p1

    .line 1279
    .line 1280
    check-cast v1, Ljava/lang/String;

    .line 1281
    .line 1282
    new-array v2, v3, [Ljava/lang/Object;

    .line 1283
    .line 1284
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1285
    .line 1286
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    return-void

    .line 1290
    nop

    .line 1291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
