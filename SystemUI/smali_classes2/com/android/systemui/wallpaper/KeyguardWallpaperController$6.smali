.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v0, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const-string v3, " , type = "

    .line 14
    .line 15
    const-string v4, ", which = "

    .line 16
    .line 17
    const/16 v5, 0x12

    .line 18
    .line 19
    const/4 v6, 0x6

    .line 20
    const/4 v7, 0x0

    .line 21
    const-string/jumbo v8, "which"

    .line 22
    .line 23
    .line 24
    const-string v9, "KeyguardWallpaperController"

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    const/4 v11, 0x0

    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    const/16 v6, 0x25f

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    packed-switch v0, :pswitch_data_2

    .line 40
    .line 41
    .line 42
    packed-switch v0, :pswitch_data_3

    .line 43
    .line 44
    .line 45
    packed-switch v0, :pswitch_data_4

    .line 46
    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "handleMessage: unsupported command ("

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget p1, p1, Landroid/os/Message;->what:I

    .line 56
    .line 57
    const-string v0, ")"

    .line 58
    .line 59
    invoke-static {p0, p1, v0, v9}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_a

    .line 63
    .line 64
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 69
    .line 70
    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack(I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :pswitch_1
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    xor-int/2addr v0, v10

    .line 88
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 89
    .line 90
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 99
    .line 100
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 105
    .line 106
    if-eqz v4, :cond_0

    .line 107
    .line 108
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_0
    if-eqz v0, :cond_2

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 118
    .line 119
    if-nez v5, :cond_2

    .line 120
    .line 121
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 122
    .line 123
    if-nez v5, :cond_2

    .line 124
    .line 125
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 126
    .line 127
    if-nez v5, :cond_2

    .line 128
    .line 129
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 130
    .line 131
    if-nez v5, :cond_2

    .line 132
    .line 133
    move v5, v10

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    move v5, v11

    .line 136
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 137
    .line 138
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 139
    .line 140
    const-string v6, "handleDisplayChanged: open = "

    .line 141
    .line 142
    const-string v7, " , secure = "

    .line 143
    .line 144
    const-string v8, " , can skip bouncer = "

    .line 145
    .line 146
    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, " , dismissCancelled = "

    .line 154
    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v1, " , showing = "

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, " , occuded = "

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, " , mIsPendingTypeChange = "

    .line 190
    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v5, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 204
    .line 205
    invoke-virtual {v5, v9, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    if-eqz v4, :cond_4

    .line 209
    .line 210
    if-eqz v0, :cond_3f

    .line 211
    .line 212
    invoke-static {v11}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_3

    .line 217
    .line 218
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 219
    .line 220
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_3f

    .line 225
    .line 226
    :cond_3
    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_a

    .line 230
    .line 231
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 232
    .line 233
    if-nez v0, :cond_7

    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 236
    .line 237
    if-eqz v0, :cond_5

    .line 238
    .line 239
    const-string v0, "handleDisplayChanged, remove cleanup runnable"

    .line 240
    .line 241
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    .line 250
    .line 251
    :cond_5
    invoke-static {v10}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_6

    .line 256
    .line 257
    invoke-static {v11}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_6

    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 264
    .line 265
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 266
    .line 267
    const/16 v2, 0xc

    .line 268
    .line 269
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 273
    .line 274
    .line 275
    :cond_6
    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->hideLockOnlyLiveWallpaperImmediately()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUp(Z)V

    .line 283
    .line 284
    .line 285
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 286
    .line 287
    if-eqz p1, :cond_8

    .line 288
    .line 289
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 290
    .line 291
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->forceBroadcastWhiteKeyguardWallpaper(I)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 303
    .line 304
    invoke-virtual {p1, v7, v6}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 305
    .line 306
    .line 307
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 308
    .line 309
    if-eqz p1, :cond_9

    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 312
    .line 313
    invoke-virtual {p1, v7, v5}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 314
    .line 315
    .line 316
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isStartMultipackCondition()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_3f

    .line 321
    .line 322
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 323
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack(I)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_a

    .line 328
    .line 329
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isStartMultipackCondition()Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-eqz p1, :cond_3f

    .line 334
    .line 335
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 336
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack(I)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_a

    .line 341
    .line 342
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    if-nez p1, :cond_a

    .line 347
    .line 348
    const-string p1, "notifyBackupStateChanged: bundle is null."

    .line 349
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_a

    .line 354
    .line 355
    :cond_a
    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    const-string/jumbo v1, "status"

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    const-string v2, "key"

    .line 367
    .line 368
    invoke-virtual {p1, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 373
    .line 374
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 375
    .line 376
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 377
    .line 378
    iget-object v3, v2, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    .line 379
    .line 380
    if-nez v3, :cond_b

    .line 381
    .line 382
    new-instance v3, Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    .line 383
    .line 384
    invoke-direct {v3}, Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;-><init>()V

    .line 385
    .line 386
    .line 387
    iput-object v3, v2, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    .line 388
    .line 389
    :cond_b
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    .line 390
    .line 391
    new-instance v3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;III)V

    .line 394
    .line 395
    .line 396
    iget-object p0, v2, Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 397
    .line 398
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    .line 400
    .line 401
    move-result p0

    .line 402
    if-nez p0, :cond_3f

    .line 403
    .line 404
    const-string p0, "PluginLockUtils"

    .line 405
    .line 406
    const-string p1, "HandlerExecutor execute failed"

    .line 407
    .line 408
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    goto/16 :goto_a

    .line 412
    .line 413
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 418
    .line 419
    .line 420
    if-eqz p1, :cond_10

    .line 421
    .line 422
    const-string/jumbo v0, "wallpaper_colors"

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 430
    .line 431
    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    const-string/jumbo v3, "userid"

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 443
    .line 444
    .line 445
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 446
    .line 447
    if-eqz p1, :cond_e

    .line 448
    .line 449
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 450
    .line 451
    and-int/lit8 v3, p1, 0x10

    .line 452
    .line 453
    const-string v5, ". Return."

    .line 454
    .line 455
    const-string v6, "handleWallpaperColorChanged: currentWhich = "

    .line 456
    .line 457
    if-eqz v3, :cond_d

    .line 458
    .line 459
    and-int/lit8 v3, v1, 0x10

    .line 460
    .line 461
    if-nez v3, :cond_e

    .line 462
    .line 463
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 464
    .line 465
    if-eqz v3, :cond_c

    .line 466
    .line 467
    and-int/lit8 v3, v1, 0x2

    .line 468
    .line 469
    if-eq v3, v2, :cond_e

    .line 470
    .line 471
    :cond_c
    invoke-static {v6, p1, v4, v1, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_a

    .line 479
    .line 480
    :cond_d
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 481
    .line 482
    if-nez v2, :cond_e

    .line 483
    .line 484
    and-int/lit8 v2, v1, 0x10

    .line 485
    .line 486
    if-eqz v2, :cond_e

    .line 487
    .line 488
    invoke-static {v6, p1, v4, v1, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_a

    .line 496
    .line 497
    :cond_e
    if-eqz v0, :cond_f

    .line 498
    .line 499
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 500
    .line 501
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;

    .line 502
    .line 503
    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    .line 504
    .line 505
    .line 506
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_a

    .line 510
    .line 511
    :cond_f
    const-string p1, "handleWallpaperColorChanged: Error - colors is null!"

    .line 512
    .line 513
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_a

    .line 517
    .line 518
    :cond_10
    const-string p1, "handleWallpaperColorChanged: Error - extra is null!"

    .line 519
    .line 520
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_a

    .line 524
    .line 525
    :pswitch_6
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 530
    .line 531
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 532
    .line 533
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;

    .line 534
    .line 535
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    .line 536
    .line 537
    .line 538
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_a

    .line 542
    .line 543
    :pswitch_7
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    const-string v0, "handleDlsWallpaperChanged: wallpaperType = "

    .line 548
    .line 549
    invoke-static {v0, p1, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUPPORT_DLS_SNAPSHOT:Z

    .line 553
    .line 554
    if-eqz v0, :cond_12

    .line 555
    .line 556
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 557
    .line 558
    if-eqz v0, :cond_12

    .line 559
    .line 560
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 561
    .line 562
    if-nez v0, :cond_12

    .line 563
    .line 564
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    const/16 v2, 0x3e8

    .line 569
    .line 570
    if-ne v0, v2, :cond_12

    .line 571
    .line 572
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 573
    .line 574
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 575
    .line 576
    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    if-eqz v0, :cond_12

    .line 581
    .line 582
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    const-string v3, "/"

    .line 591
    .line 592
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    add-int/2addr v0, v10

    .line 597
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v3, "handleDlsWallpaperChanged: subType = "

    .line 604
    .line 605
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    if-nez v2, :cond_12

    .line 623
    .line 624
    const-string/jumbo v2, "sgg"

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_12

    .line 632
    .line 633
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 634
    .line 635
    if-eqz v0, :cond_11

    .line 636
    .line 637
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 638
    .line 639
    if-nez v0, :cond_12

    .line 640
    .line 641
    :cond_11
    const-string p1, "handleDlsWallpaperChanged: Skip event in SGG."

    .line 642
    .line 643
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    goto :goto_4

    .line 647
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 648
    .line 649
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    if-eqz v0, :cond_14

    .line 654
    .line 655
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 656
    .line 657
    .line 658
    move-result p1

    .line 659
    if-eqz p1, :cond_13

    .line 660
    .line 661
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChangeForTransition:Z

    .line 662
    .line 663
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    .line 664
    .line 665
    .line 666
    goto :goto_4

    .line 667
    :cond_14
    const-string v0, "handleDlsWallpaperChanged: Type mismatching. Creating new wallpaper view."

    .line 668
    .line 669
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_15

    .line 677
    .line 678
    if-ne p1, v1, :cond_15

    .line 679
    .line 680
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 681
    .line 682
    if-eqz v0, :cond_15

    .line 683
    .line 684
    move v0, v10

    .line 685
    goto :goto_3

    .line 686
    :cond_15
    move v0, v11

    .line 687
    :goto_3
    if-eqz v0, :cond_16

    .line 688
    .line 689
    const-string v0, "handleDlsWallpaperChanged: Pending rotation."

    .line 690
    .line 691
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    iput-boolean v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPendingRotationForTransitionView:Z

    .line 695
    .line 696
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 697
    .line 698
    .line 699
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChangeNotifier:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    .line 700
    .line 701
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 705
    .line 706
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mContext:Landroid/content/Context;

    .line 707
    .line 708
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    const-string v1, "dls_state"

    .line 713
    .line 714
    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string v2, "checkUpdateAndNotify: mDlsState = "

    .line 721
    .line 722
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    iget v2, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mDlsState:I

    .line 726
    .line 727
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    const-string v2, ", curDlsState = "

    .line 731
    .line 732
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    const-string v2, "WallpaperChangeNotifier"

    .line 743
    .line 744
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-eqz v1, :cond_17

    .line 752
    .line 753
    const/16 v1, 0x7800

    .line 754
    .line 755
    goto :goto_5

    .line 756
    :cond_17
    const/16 v1, 0x7ff

    .line 757
    .line 758
    :goto_5
    iget v2, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mDlsState:I

    .line 759
    .line 760
    and-int/2addr v2, v1

    .line 761
    and-int/2addr v0, v1

    .line 762
    if-eq v2, v0, :cond_3f

    .line 763
    .line 764
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->notify(I)V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_a

    .line 768
    .line 769
    :pswitch_8
    const-string p1, "colorUpdateForModeChange"

    .line 770
    .line 771
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 775
    .line 776
    if-nez p1, :cond_18

    .line 777
    .line 778
    goto :goto_6

    .line 779
    :cond_18
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 780
    .line 781
    .line 782
    move-result-object p1

    .line 783
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 784
    .line 785
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 786
    .line 787
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;

    .line 788
    .line 789
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    .line 790
    .line 791
    .line 792
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 793
    .line 794
    .line 795
    :goto_6
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    .line 796
    .line 797
    .line 798
    move-result p1

    .line 799
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 800
    .line 801
    .line 802
    goto/16 :goto_a

    .line 803
    .line 804
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 805
    .line 806
    .line 807
    move-result-object p1

    .line 808
    const-string v0, "handleWallpaperChanged"

    .line 809
    .line 810
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    if-eqz p1, :cond_19

    .line 814
    .line 815
    const-string v0, "include_dls"

    .line 816
    .line 817
    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 818
    .line 819
    .line 820
    move-result v10

    .line 821
    :cond_19
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 822
    .line 823
    .line 824
    move-result p1

    .line 825
    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 826
    .line 827
    .line 828
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 829
    .line 830
    if-eqz v0, :cond_1a

    .line 831
    .line 832
    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 833
    .line 834
    .line 835
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isStartMultipackCondition()Z

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-nez v0, :cond_1d

    .line 840
    .line 841
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 842
    .line 843
    if-eqz v0, :cond_1d

    .line 844
    .line 845
    iget-object v1, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    .line 846
    .line 847
    if-eqz v1, :cond_1b

    .line 848
    .line 849
    iput-object v7, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    .line 850
    .line 851
    :cond_1b
    iget-object v1, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    .line 852
    .line 853
    if-eqz v1, :cond_1c

    .line 854
    .line 855
    invoke-virtual {v1, v11}, Landroid/os/Handler;->hasMessages(I)Z

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    if-eqz v1, :cond_1c

    .line 860
    .line 861
    iget-object v1, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    .line 862
    .line 863
    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    .line 865
    .line 866
    :cond_1c
    iget-object v0, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 867
    .line 868
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 869
    .line 870
    const-string v1, "MultiPackDispatcher"

    .line 871
    .line 872
    const-string v2, "clear"

    .line 873
    .line 874
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    iput-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 881
    .line 882
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 883
    .line 884
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    if-eqz v0, :cond_1e

    .line 889
    .line 890
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 895
    .line 896
    .line 897
    move-result v0

    .line 898
    if-nez v0, :cond_1e

    .line 899
    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_a

    .line 904
    .line 905
    :cond_1e
    const-string v0, "handleWallpaperChanged: Type mismatching. Creating new wallpaper view."

    .line 906
    .line 907
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 911
    .line 912
    .line 913
    goto/16 :goto_a

    .line 914
    .line 915
    :pswitch_a
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleColorThemeStateChanged(Z)V

    .line 916
    .line 917
    .line 918
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 919
    .line 920
    if-eqz p1, :cond_3f

    .line 921
    .line 922
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleColorThemeStateChanged(Z)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_a

    .line 926
    .line 927
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 928
    .line 929
    invoke-virtual {p0, p1, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewMode(IZ)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_a

    .line 933
    .line 934
    :pswitch_c
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 935
    .line 936
    iput-boolean v11, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 937
    .line 938
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 939
    .line 940
    .line 941
    move-result-object p1

    .line 942
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 943
    .line 944
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 945
    .line 946
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;

    .line 947
    .line 948
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    .line 949
    .line 950
    .line 951
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_a

    .line 955
    .line 956
    :pswitch_d
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 957
    .line 958
    iput-boolean v11, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 959
    .line 960
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 961
    .line 962
    .line 963
    move-result-object p1

    .line 964
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 965
    .line 966
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 967
    .line 968
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;

    .line 969
    .line 970
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    .line 971
    .line 972
    .line 973
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_a

    .line 977
    .line 978
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 979
    .line 980
    iput-boolean v10, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 981
    .line 982
    goto/16 :goto_a

    .line 983
    .line 984
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 985
    .line 986
    if-eqz p0, :cond_3f

    .line 987
    .line 988
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onFaceAuthError()V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_a

    .line 992
    .line 993
    :pswitch_10
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 994
    .line 995
    if-nez p1, :cond_1f

    .line 996
    .line 997
    const-string p1, "onBiometricAuthenticated(): wakeup and unlocked"

    .line 998
    .line 999
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    :cond_1f
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsFingerPrintTouchDown:Z

    .line 1003
    .line 1004
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1005
    .line 1006
    if-eqz p1, :cond_3f

    .line 1007
    .line 1008
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 1009
    .line 1010
    invoke-interface {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onFingerprintAuthSuccess(Z)V

    .line 1011
    .line 1012
    .line 1013
    goto/16 :goto_a

    .line 1014
    .line 1015
    :pswitch_11
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 1016
    .line 1017
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 1018
    .line 1019
    const/16 v1, 0x9

    .line 1020
    .line 1021
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_a

    .line 1028
    .line 1029
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1030
    .line 1031
    check-cast p1, Ljava/lang/Boolean;

    .line 1032
    .line 1033
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1034
    .line 1035
    .line 1036
    move-result p1

    .line 1037
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 1038
    .line 1039
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1040
    .line 1041
    if-eqz v0, :cond_20

    .line 1042
    .line 1043
    invoke-interface {v0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onOccluded(Z)V

    .line 1044
    .line 1045
    .line 1046
    :cond_20
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 1047
    .line 1048
    if-eqz p1, :cond_23

    .line 1049
    .line 1050
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 1051
    .line 1052
    .line 1053
    move-result p1

    .line 1054
    if-eqz p1, :cond_23

    .line 1055
    .line 1056
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1057
    .line 1058
    instance-of p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    .line 1059
    .line 1060
    if-nez p1, :cond_21

    .line 1061
    .line 1062
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 1063
    .line 1064
    .line 1065
    move-result p1

    .line 1066
    if-nez p1, :cond_21

    .line 1067
    .line 1068
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 1069
    .line 1070
    if-nez p1, :cond_21

    .line 1071
    .line 1072
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 1073
    .line 1074
    if-eqz p1, :cond_21

    .line 1075
    .line 1076
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredView()V

    .line 1077
    .line 1078
    .line 1079
    :cond_21
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 1080
    .line 1081
    if-eqz p1, :cond_22

    .line 1082
    .line 1083
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 1084
    .line 1085
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->onOccluded(Z)V

    .line 1086
    .line 1087
    .line 1088
    :cond_22
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 1089
    .line 1090
    if-nez p1, :cond_23

    .line 1091
    .line 1092
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 1093
    .line 1094
    if-nez p1, :cond_23

    .line 1095
    .line 1096
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 1097
    .line 1098
    if-eq p1, v10, :cond_23

    .line 1099
    .line 1100
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurFilter(I)V

    .line 1101
    .line 1102
    .line 1103
    :cond_23
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 1104
    .line 1105
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 1106
    .line 1107
    const/16 v1, 0xb

    .line 1108
    .line 1109
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1113
    .line 1114
    .line 1115
    goto/16 :goto_a

    .line 1116
    .line 1117
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast p1, Ljava/lang/Boolean;

    .line 1120
    .line 1121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1122
    .line 1123
    .line 1124
    move-result p1

    .line 1125
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 1126
    .line 1127
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 1128
    .line 1129
    if-eqz p1, :cond_25

    .line 1130
    .line 1131
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 1132
    .line 1133
    .line 1134
    move-result p1

    .line 1135
    if-eqz p1, :cond_25

    .line 1136
    .line 1137
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1138
    .line 1139
    if-eqz p1, :cond_24

    .line 1140
    .line 1141
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 1142
    .line 1143
    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateBlurState(Z)V

    .line 1144
    .line 1145
    .line 1146
    :cond_24
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 1147
    .line 1148
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    .line 1149
    .line 1150
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1154
    .line 1155
    .line 1156
    :cond_25
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1157
    .line 1158
    if-eqz p1, :cond_3f

    .line 1159
    .line 1160
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 1161
    .line 1162
    invoke-interface {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardBouncerFullyShowingChanged(Z)V

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_a

    .line 1166
    .line 1167
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1168
    .line 1169
    check-cast p1, Ljava/lang/Boolean;

    .line 1170
    .line 1171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1172
    .line 1173
    .line 1174
    move-result p1

    .line 1175
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    .line 1176
    .line 1177
    .line 1178
    goto/16 :goto_a

    .line 1179
    .line 1180
    :pswitch_15
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 1181
    .line 1182
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(ILandroid/content/Context;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    .line 1190
    .line 1191
    .line 1192
    move-result p1

    .line 1193
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-eqz v0, :cond_26

    .line 1198
    .line 1199
    const/4 p1, -0x2

    .line 1200
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    const-string v1, "onBootCompleted: wallpaeprType = "

    .line 1203
    .line 1204
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1218
    .line 1219
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    if-eqz v0, :cond_27

    .line 1224
    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    .line 1226
    .line 1227
    .line 1228
    goto :goto_7

    .line 1229
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 1230
    .line 1231
    .line 1232
    :goto_7
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 1233
    .line 1234
    .line 1235
    goto/16 :goto_a

    .line 1236
    .line 1237
    :pswitch_16
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1238
    .line 1239
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 1240
    .line 1241
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(ILandroid/content/Context;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 1249
    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    const-string/jumbo v3, "onUserSwitchComplete: userId = "

    .line 1253
    .line 1254
    .line 1255
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    .line 1261
    const-string p1, ", wallpaper type = "

    .line 1262
    .line 1263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object p1

    .line 1273
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1277
    .line 1278
    invoke-virtual {p1, v11}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    .line 1279
    .line 1280
    .line 1281
    move-result p1

    .line 1282
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 1283
    .line 1284
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1285
    .line 1286
    invoke-virtual {p1, v5}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    .line 1287
    .line 1288
    .line 1289
    move-result p1

    .line 1290
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 1291
    .line 1292
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 1293
    .line 1294
    iget-object v1, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1295
    .line 1296
    if-eqz v1, :cond_28

    .line 1297
    .line 1298
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v7

    .line 1302
    :cond_28
    invoke-virtual {p1, v11, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 1309
    .line 1310
    .line 1311
    goto/16 :goto_a

    .line 1312
    .line 1313
    :pswitch_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1314
    .line 1315
    const-string/jumbo v0, "onUserSwitching: userId = "

    .line 1316
    .line 1317
    .line 1318
    invoke-static {v0, p1, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 1322
    .line 1323
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1324
    .line 1325
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 1326
    .line 1327
    .line 1328
    move-result v0

    .line 1329
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 1330
    .line 1331
    .line 1332
    move-result p1

    .line 1333
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1334
    .line 1335
    goto/16 :goto_a

    .line 1336
    .line 1337
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1338
    .line 1339
    if-eqz p0, :cond_3f

    .line 1340
    .line 1341
    const-string p1, "android.wallpaper.keyguardgoingaway"

    .line 1342
    .line 1343
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->dispatchWallpaperCommand(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    goto/16 :goto_a

    .line 1347
    .line 1348
    :pswitch_19
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1349
    .line 1350
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    .line 1351
    .line 1352
    .line 1353
    move-result p1

    .line 1354
    if-ne p1, v10, :cond_29

    .line 1355
    .line 1356
    goto/16 :goto_a

    .line 1357
    .line 1358
    :cond_29
    const-string p1, "MSG_FINGERPRINT_TOUCH_UP"

    .line 1359
    .line 1360
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    .line 1362
    .line 1363
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsFingerPrintTouchDown:Z

    .line 1364
    .line 1365
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setThumbnailVisibility(I)V

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_a

    .line 1369
    .line 1370
    :pswitch_1a
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1371
    .line 1372
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    .line 1373
    .line 1374
    .line 1375
    move-result p1

    .line 1376
    if-ne p1, v10, :cond_2a

    .line 1377
    .line 1378
    goto/16 :goto_a

    .line 1379
    .line 1380
    :cond_2a
    const-string p1, "MSG_FINGERPRINT_TOUCH_DOWN"

    .line 1381
    .line 1382
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    .line 1384
    .line 1385
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 1386
    .line 1387
    if-eqz p1, :cond_3f

    .line 1388
    .line 1389
    iput-boolean v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsFingerPrintTouchDown:Z

    .line 1390
    .line 1391
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setThumbnailVisibility(I)V

    .line 1392
    .line 1393
    .line 1394
    goto/16 :goto_a

    .line 1395
    .line 1396
    :pswitch_1b
    iput-boolean v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 1397
    .line 1398
    goto/16 :goto_a

    .line 1399
    .line 1400
    :pswitch_1c
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsGoingToSleep:Z

    .line 1401
    .line 1402
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 1403
    .line 1404
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_a

    .line 1408
    .line 1409
    :pswitch_1d
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1410
    .line 1411
    if-eqz p1, :cond_2b

    .line 1412
    .line 1413
    const-string v0, "android.wallpaper.wakingup"

    .line 1414
    .line 1415
    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->dispatchWallpaperCommand(Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    :cond_2b
    iput-boolean v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsGoingToSleep:Z

    .line 1419
    .line 1420
    iput-boolean v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 1421
    .line 1422
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 1423
    .line 1424
    if-nez p1, :cond_2c

    .line 1425
    .line 1426
    goto/16 :goto_a

    .line 1427
    .line 1428
    :cond_2c
    sput-boolean v10, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 1429
    .line 1430
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1431
    .line 1432
    if-nez p1, :cond_2d

    .line 1433
    .line 1434
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1435
    .line 1436
    if-eqz p1, :cond_2d

    .line 1437
    .line 1438
    invoke-interface {p1, v10}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 1439
    .line 1440
    .line 1441
    :cond_2d
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 1442
    .line 1443
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 1444
    .line 1445
    .line 1446
    move-result p1

    .line 1447
    if-nez p1, :cond_2e

    .line 1448
    .line 1449
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    .line 1450
    .line 1451
    .line 1452
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    const-string v1, "onStartedWakingUp() mWallpaperView:"

    .line 1455
    .line 1456
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1457
    .line 1458
    .line 1459
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1460
    .line 1461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    const-string v1, ", visibility:"

    .line 1465
    .line 1466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    const-string p1, ", mIsKeyguardShowing:"

    .line 1473
    .line 1474
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 1478
    .line 1479
    invoke-static {v0, p1, v9}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1483
    .line 1484
    if-nez p1, :cond_30

    .line 1485
    .line 1486
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1487
    .line 1488
    if-nez p1, :cond_30

    .line 1489
    .line 1490
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 1491
    .line 1492
    .line 1493
    move-result p1

    .line 1494
    if-nez p1, :cond_30

    .line 1495
    .line 1496
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 1497
    .line 1498
    if-eqz p1, :cond_2f

    .line 1499
    .line 1500
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 1501
    .line 1502
    .line 1503
    move-result p1

    .line 1504
    if-nez p1, :cond_30

    .line 1505
    .line 1506
    :cond_2f
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 1507
    .line 1508
    .line 1509
    move-result p1

    .line 1510
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 1511
    .line 1512
    .line 1513
    :cond_30
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onTransitionAod(Z)V

    .line 1514
    .line 1515
    .line 1516
    goto/16 :goto_a

    .line 1517
    .line 1518
    :pswitch_1e
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1519
    .line 1520
    if-eqz p1, :cond_31

    .line 1521
    .line 1522
    const-string v0, "android.wallpaper.goingtosleep"

    .line 1523
    .line 1524
    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->dispatchWallpaperCommand(Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    :cond_31
    iput-boolean v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsGoingToSleep:Z

    .line 1528
    .line 1529
    sput-boolean v11, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 1530
    .line 1531
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1532
    .line 1533
    if-nez p1, :cond_32

    .line 1534
    .line 1535
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1536
    .line 1537
    if-eqz p1, :cond_32

    .line 1538
    .line 1539
    invoke-interface {p1, v11}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 1540
    .line 1541
    .line 1542
    :cond_32
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onTransitionAod(Z)V

    .line 1543
    .line 1544
    .line 1545
    goto/16 :goto_a

    .line 1546
    .line 1547
    :pswitch_1f
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleAdaptiveColorModeChanged(Z)V

    .line 1548
    .line 1549
    .line 1550
    goto/16 :goto_a

    .line 1551
    .line 1552
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p1

    .line 1556
    if-nez p1, :cond_33

    .line 1557
    .line 1558
    const-string p0, "handleColorAreasChanged : extra is null"

    .line 1559
    .line 1560
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    .line 1562
    .line 1563
    goto/16 :goto_a

    .line 1564
    .line 1565
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1566
    .line 1567
    if-nez v0, :cond_34

    .line 1568
    .line 1569
    const-string p0, "handleColorAreasChanged : plugin wallpaper manager is null"

    .line 1570
    .line 1571
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    .line 1573
    .line 1574
    goto/16 :goto_a

    .line 1575
    .line 1576
    :cond_34
    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1577
    .line 1578
    .line 1579
    move-result p1

    .line 1580
    const-string v0, "handleColorAreasChanged : which = "

    .line 1581
    .line 1582
    invoke-static {v0, p1, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 1583
    .line 1584
    .line 1585
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1586
    .line 1587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1588
    .line 1589
    .line 1590
    goto/16 :goto_a

    .line 1591
    .line 1592
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    .line 1593
    .line 1594
    .line 1595
    goto/16 :goto_a

    .line 1596
    .line 1597
    :pswitch_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1598
    .line 1599
    check-cast p1, Ljava/lang/Boolean;

    .line 1600
    .line 1601
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1602
    .line 1603
    .line 1604
    move-result p1

    .line 1605
    if-eqz p1, :cond_35

    .line 1606
    .line 1607
    goto :goto_8

    .line 1608
    :cond_35
    move v5, v6

    .line 1609
    :goto_8
    if-eqz p1, :cond_36

    .line 1610
    .line 1611
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 1612
    .line 1613
    .line 1614
    move-result p1

    .line 1615
    if-eqz p1, :cond_36

    .line 1616
    .line 1617
    goto/16 :goto_a

    .line 1618
    .line 1619
    :cond_36
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    .line 1620
    .line 1621
    or-int/lit8 v0, v5, 0x2

    .line 1622
    .line 1623
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 1624
    .line 1625
    .line 1626
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1627
    .line 1628
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    .line 1629
    .line 1630
    .line 1631
    move-result p1

    .line 1632
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->forceBroadcastWhiteKeyguardWallpaper(I)V

    .line 1633
    .line 1634
    .line 1635
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 1636
    .line 1637
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1638
    .line 1639
    if-eqz p1, :cond_37

    .line 1640
    .line 1641
    invoke-virtual {p1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v7

    .line 1645
    :cond_37
    invoke-virtual {p0, v11, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_a

    .line 1649
    .line 1650
    :pswitch_23
    invoke-virtual {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleAdaptiveColorModeChanged(Z)V

    .line 1651
    .line 1652
    .line 1653
    goto/16 :goto_a

    .line 1654
    .line 1655
    :pswitch_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1656
    .line 1657
    check-cast p1, Ljava/lang/Boolean;

    .line 1658
    .line 1659
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1660
    .line 1661
    .line 1662
    move-result p1

    .line 1663
    const-string v0, "onLiveWallpaperChanged"

    .line 1664
    .line 1665
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    .line 1667
    .line 1668
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 1669
    .line 1670
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 1671
    .line 1672
    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadLiveWallpaperSettings(ILandroid/content/Context;)V

    .line 1673
    .line 1674
    .line 1675
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    .line 1676
    .line 1677
    .line 1678
    move-result v0

    .line 1679
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1680
    .line 1681
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 1682
    .line 1683
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v1

    .line 1687
    if-eqz v1, :cond_38

    .line 1688
    .line 1689
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v1

    .line 1693
    if-eqz v1, :cond_38

    .line 1694
    .line 1695
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 1696
    .line 1697
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 1698
    .line 1699
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->onLockWallpaperChanged(I)V

    .line 1700
    .line 1701
    .line 1702
    :cond_38
    const/16 v1, 0x385

    .line 1703
    .line 1704
    const-string v2, " , old = "

    .line 1705
    .line 1706
    const-string v3, "new = "

    .line 1707
    .line 1708
    if-eqz p1, :cond_39

    .line 1709
    .line 1710
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1711
    .line 1712
    invoke-virtual {p1, v5}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    .line 1713
    .line 1714
    .line 1715
    move-result p1

    .line 1716
    invoke-static {v3, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v2

    .line 1720
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 1721
    .line 1722
    invoke-static {v2, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1723
    .line 1724
    .line 1725
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 1726
    .line 1727
    if-eq v2, p1, :cond_3f

    .line 1728
    .line 1729
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 1730
    .line 1731
    if-eqz v0, :cond_3f

    .line 1732
    .line 1733
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 1734
    .line 1735
    .line 1736
    goto/16 :goto_a

    .line 1737
    .line 1738
    :cond_39
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1739
    .line 1740
    invoke-virtual {p1, v11}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    .line 1741
    .line 1742
    .line 1743
    move-result p1

    .line 1744
    invoke-static {v3, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v2

    .line 1748
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 1749
    .line 1750
    invoke-static {v2, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1751
    .line 1752
    .line 1753
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 1754
    .line 1755
    if-eq v2, p1, :cond_3f

    .line 1756
    .line 1757
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 1758
    .line 1759
    if-nez v0, :cond_3f

    .line 1760
    .line 1761
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 1762
    .line 1763
    .line 1764
    goto/16 :goto_a

    .line 1765
    .line 1766
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperViewType()I

    .line 1767
    .line 1768
    .line 1769
    move-result p1

    .line 1770
    const/4 v0, -0x1

    .line 1771
    if-ne p1, v0, :cond_3a

    .line 1772
    .line 1773
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 1774
    .line 1775
    .line 1776
    move-result v0

    .line 1777
    if-nez v0, :cond_3a

    .line 1778
    .line 1779
    const-string p0, "MSG_WALLPAPER_CHANGED_BY_LIVE_WALLPAPERS canceled."

    .line 1780
    .line 1781
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    .line 1783
    .line 1784
    goto/16 :goto_a

    .line 1785
    .line 1786
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 1787
    .line 1788
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result v0

    .line 1792
    if-eqz v0, :cond_3b

    .line 1793
    .line 1794
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    .line 1795
    .line 1796
    .line 1797
    goto/16 :goto_a

    .line 1798
    .line 1799
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 1800
    .line 1801
    .line 1802
    goto :goto_a

    .line 1803
    :pswitch_26
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperAnalytics:Lcom/android/systemui/wallpaper/WallpaperAnalytics;

    .line 1804
    .line 1805
    if-eqz p0, :cond_3f

    .line 1806
    .line 1807
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1808
    .line 1809
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAnalytics;->updateWallpaperStatus(I)V

    .line 1810
    .line 1811
    .line 1812
    goto :goto_a

    .line 1813
    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1814
    .line 1815
    .line 1816
    move-result-object p1

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsRestoreDispatcher:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 1818
    .line 1819
    if-nez v0, :cond_3c

    .line 1820
    .line 1821
    new-instance v0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 1822
    .line 1823
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 1824
    .line 1825
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 1826
    .line 1827
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 1828
    .line 1829
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    .line 1830
    .line 1831
    .line 1832
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsRestoreDispatcher:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 1833
    .line 1834
    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsRestoreDispatcher:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 1835
    .line 1836
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;

    .line 1837
    .line 1838
    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 1839
    .line 1840
    .line 1841
    iput-object v1, v0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mOnRestoreDlsListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;

    .line 1842
    .line 1843
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsRestoreDispatcher:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 1844
    .line 1845
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1846
    .line 1847
    .line 1848
    new-instance v0, Landroid/os/Message;

    .line 1849
    .line 1850
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1851
    .line 1852
    .line 1853
    iput v11, v0, Landroid/os/Message;->what:I

    .line 1854
    .line 1855
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1856
    .line 1857
    .line 1858
    iget-object p1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mHandler:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

    .line 1859
    .line 1860
    if-nez p1, :cond_3d

    .line 1861
    .line 1862
    new-instance p1, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

    .line 1863
    .line 1864
    invoke-direct {p1, p0, v11}, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;-><init>(Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;I)V

    .line 1865
    .line 1866
    .line 1867
    iput-object p1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mHandler:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

    .line 1868
    .line 1869
    :cond_3d
    iget-object p0, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mHandler:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

    .line 1870
    .line 1871
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1872
    .line 1873
    .line 1874
    goto :goto_a

    .line 1875
    :pswitch_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1876
    .line 1877
    check-cast p1, Ljava/lang/Boolean;

    .line 1878
    .line 1879
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1880
    .line 1881
    .line 1882
    move-result p1

    .line 1883
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 1884
    .line 1885
    if-eqz p1, :cond_3e

    .line 1886
    .line 1887
    or-int/2addr v0, v1

    .line 1888
    and-int/lit8 v0, v0, -0x5

    .line 1889
    .line 1890
    goto :goto_9

    .line 1891
    :cond_3e
    or-int/2addr v0, v6

    .line 1892
    and-int/lit8 v0, v0, -0x9

    .line 1893
    .line 1894
    :goto_9
    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 1895
    .line 1896
    invoke-virtual {p0, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    .line 1897
    .line 1898
    .line 1899
    move-result v1

    .line 1900
    const-string v2, "handleDesktopModeChanged : "

    .line 1901
    .line 1902
    invoke-static {v2, p1, v4, v0, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    .line 1904
    .line 1905
    move-result-object p1

    .line 1906
    invoke-static {p1, v1, v9}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1907
    .line 1908
    .line 1909
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1910
    .line 1911
    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->semRequestWallpaperColorsAnalysis(I)V

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    .line 1915
    .line 1916
    .line 1917
    :cond_3f
    :goto_a
    :pswitch_29
    return-void

    .line 1918
    nop

    .line 1919
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_25
        :pswitch_25
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    :pswitch_data_1
    .packed-switch 0x2cf
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    :pswitch_data_2
    .packed-switch 0x341
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    :pswitch_data_3
    .packed-switch 0x385
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    :pswitch_data_4
    .packed-switch 0x3e8
        :pswitch_28
        :pswitch_27
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method
