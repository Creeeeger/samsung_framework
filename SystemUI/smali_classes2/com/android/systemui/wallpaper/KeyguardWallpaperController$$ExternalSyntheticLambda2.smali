.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

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
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "KeyguardWallpaperController"

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 24
    .line 25
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v4, :cond_0

    .line 46
    .line 47
    const-string v0, "handleWallpaperResourceUpdated: TransitionView is not added. Add view again."

    .line 48
    .line 49
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 55
    .line 56
    check-cast v1, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 62
    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->update()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 72
    .line 73
    invoke-interface {p0, v4, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setBackDropViewShowing(ZZ)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    .line 91
    iget-boolean v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 92
    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 98
    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v4, v2

    .line 105
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 106
    .line 107
    const/4 v6, 0x4

    .line 108
    if-nez v5, :cond_4

    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    move v5, v6

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :goto_1
    move v5, v2

    .line 116
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v8, "updateVisibility: mIsKeyguardShowing="

    .line 119
    .line 120
    .line 121
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 125
    .line 126
    const-string v9, ", showWallpaperOnAod="

    .line 127
    .line 128
    const-string v10, ", isKeyguardShowing()="

    .line 129
    .line 130
    invoke-static {v7, v8, v9, v4, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 134
    .line 135
    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 136
    .line 137
    const-string v8, ", isAodWithWallpaperEnabled="

    .line 138
    .line 139
    const-string v9, ", mScreenOn="

    .line 140
    .line 141
    invoke-static {v7, v4, v8, v1, v9}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 145
    .line 146
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ", mIsGoingToSleep="

    .line 150
    .line 151
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsGoingToSleep:Z

    .line 155
    .line 156
    const-string v4, ", isAodShown="

    .line 157
    .line 158
    const-string v8, ", mOccluded="

    .line 159
    .line 160
    invoke-static {v7, v1, v4, v0, v8}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 164
    .line 165
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, ", isKeyguardOccluded()="

    .line 169
    .line 170
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 174
    .line 175
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 176
    .line 177
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, " -> decidedVisibility="

    .line 181
    .line 182
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-array v1, v2, [Ljava/lang/Object;

    .line 193
    .line 194
    invoke-static {v3, v0, v1}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 198
    .line 199
    if-eqz v0, :cond_5

    .line 200
    .line 201
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 205
    .line 206
    if-eqz v0, :cond_6

    .line 207
    .line 208
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 215
    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    check-cast v0, Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    :cond_6
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 224
    .line 225
    if-eq v0, v5, :cond_8

    .line 226
    .line 227
    if-nez v5, :cond_7

    .line 228
    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 230
    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsGoingToSleep:Z

    .line 234
    .line 235
    if-nez v0, :cond_7

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 241
    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    iput v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_7
    if-eqz v5, :cond_8

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    .line 250
    .line 251
    .line 252
    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 253
    .line 254
    :cond_8
    :goto_3
    return-void

    .line 255
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 256
    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 261
    .line 262
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 263
    .line 264
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-nez v5, :cond_9

    .line 283
    .line 284
    move v6, v4

    .line 285
    goto :goto_4

    .line 286
    :cond_9
    if-nez v0, :cond_a

    .line 287
    .line 288
    if-nez v1, :cond_a

    .line 289
    .line 290
    if-eqz v3, :cond_b

    .line 291
    .line 292
    :cond_a
    move v6, v2

    .line 293
    :cond_b
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v8, "disableRotateIfNeeded: video = "

    .line 296
    .line 297
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v8, " , rotate support = "

    .line 308
    .line 309
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    sget-boolean v8, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 313
    .line 314
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v9, " , sub = "

    .line 318
    .line 319
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v9, " , enabled = "

    .line 330
    .line 331
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 335
    .line 336
    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v9, " , isUpsMode = "

    .line 344
    .line 345
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v0, " , isEmergencyMode = "

    .line 352
    .line 353
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v0, " , isLiveWallpaperSettingEnabled = "

    .line 357
    .line 358
    const-string v9, " , isLockScreenRotationAllowed = "

    .line 359
    .line 360
    invoke-static {v7, v1, v0, v3, v9}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_WALLPAPER:Z

    .line 374
    .line 375
    if-eqz v0, :cond_e

    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNoSensorConsumer:Ljava/util/function/Consumer;

    .line 378
    .line 379
    if-eqz p0, :cond_e

    .line 380
    .line 381
    if-eqz v6, :cond_d

    .line 382
    .line 383
    if-eqz v8, :cond_c

    .line 384
    .line 385
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_d

    .line 390
    .line 391
    :cond_c
    move v2, v4

    .line 392
    :cond_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    :cond_e
    return-void

    .line 400
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 401
    .line 402
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 403
    .line 404
    if-eqz v0, :cond_f

    .line 405
    .line 406
    sput-boolean v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 407
    .line 408
    invoke-interface {v0, v2}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 412
    .line 413
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onUnlock()V

    .line 414
    .line 415
    .line 416
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 417
    .line 418
    if-eqz v0, :cond_10

    .line 419
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const-string v2, "mOldWallpaperView : "

    .line 423
    .line 424
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 428
    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v2, " is removed"

    .line 433
    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 445
    .line 446
    :cond_10
    return-void

    .line 447
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 448
    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 450
    .line 451
    if-eqz v0, :cond_11

    .line 452
    .line 453
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 454
    .line 455
    if-eqz v0, :cond_11

    .line 456
    .line 457
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 458
    .line 459
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_11

    .line 464
    .line 465
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 466
    .line 467
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    :cond_11
    return-void

    .line 471
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 472
    .line 473
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 474
    .line 475
    if-eqz v0, :cond_12

    .line 476
    .line 477
    invoke-interface {v0, v4}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 478
    .line 479
    .line 480
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 481
    .line 482
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    .line 483
    .line 484
    .line 485
    :cond_12
    return-void

    .line 486
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 487
    .line 488
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 489
    .line 490
    if-eqz v0, :cond_13

    .line 491
    .line 492
    const-string v0, "mSemDisplaySolutionManager is called : true"

    .line 493
    .line 494
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 498
    .line 499
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    .line 500
    .line 501
    .line 502
    :cond_13
    return-void

    .line 503
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 504
    .line 505
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 506
    .line 507
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewMode(IZ)V

    .line 508
    .line 509
    .line 510
    return-void

    .line 511
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredViewOnUiThread()V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 518
    .line 519
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 520
    .line 521
    if-eqz p0, :cond_14

    .line 522
    .line 523
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onBackDropLayoutChange()V

    .line 524
    .line 525
    .line 526
    :cond_14
    return-void

    .line 527
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 528
    .line 529
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 530
    .line 531
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 532
    .line 533
    invoke-virtual {p0, v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onLockWallpaperChanged(I)V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 538
    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->showBlurredViewIfNeededOnUiThread()V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 544
    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    :try_start_0
    const-string/jumbo v0, "setLockWallpaperCallback()"

    .line 549
    .line 550
    .line 551
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 555
    .line 556
    invoke-interface {v0, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .line 558
    .line 559
    goto :goto_5

    .line 560
    :catch_0
    move-exception p0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v1, "System dead?"

    .line 564
    .line 565
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    :goto_5
    return-void

    .line 579
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 580
    .line 581
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 582
    .line 583
    if-nez v0, :cond_15

    .line 584
    .line 585
    const-string/jumbo p0, "removeTransitionView: KeyguardTransitionWallpaper is already gone."

    .line 586
    .line 587
    .line 588
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    goto :goto_9

    .line 592
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 593
    .line 594
    if-eqz v0, :cond_18

    .line 595
    .line 596
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    :cond_16
    :goto_7
    add-int/lit8 v0, v0, -0x1

    .line 601
    .line 602
    if-ltz v0, :cond_18

    .line 603
    .line 604
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 605
    .line 606
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    if-nez v2, :cond_17

    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_17
    instance-of v4, v2, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 614
    .line 615
    if-eqz v4, :cond_16

    .line 616
    .line 617
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 618
    .line 619
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 620
    .line 621
    .line 622
    const-string/jumbo v0, "removeTransitionView: KeyguardTransitionWallpaper is removed."

    .line 623
    .line 624
    .line 625
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    .line 627
    .line 628
    goto :goto_8

    .line 629
    :catchall_0
    move-exception v0

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    const-string/jumbo v4, "removeTransitionView : e = "

    .line 633
    .line 634
    .line 635
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    .line 647
    .line 648
    :cond_18
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 649
    .line 650
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 651
    .line 652
    .line 653
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 654
    .line 655
    const-string/jumbo p0, "removeTransitionView: Completed!"

    .line 656
    .line 657
    .line 658
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    :goto_9
    return-void

    .line 662
    nop

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
