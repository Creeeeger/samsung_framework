.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->$r8$classId:I

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
    goto/16 :goto_6

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$3;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    move v0, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v0, v1

    .line 47
    :goto_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "Ignore Waking up when closed in watch face mode. "

    .line 62
    .line 63
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    iget v5, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 77
    .line 78
    iget-object v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eq v5, v7, :cond_3

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v7, "onStartedWakingUp lid state different. so update "

    .line 89
    .line 90
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v7, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 94
    .line 95
    invoke-static {v7}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v7, " , "

    .line 103
    .line 104
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-static {v6}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-boolean v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    iget-object v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 131
    .line 132
    check-cast v6, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 133
    .line 134
    iget-object v7, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    .line 140
    .line 141
    if-eqz v5, :cond_2

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    .line 148
    .line 149
    .line 150
    :goto_1
    move v1, v2

    .line 151
    :cond_3
    if-eqz v1, :cond_5

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    .line 164
    .line 165
    .line 166
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateRendering(I)V

    .line 167
    .line 168
    .line 169
    :cond_5
    :goto_2
    return-void

    .line 170
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 175
    .line 176
    monitor-enter v0

    .line 177
    :try_start_0
    const-string v1, "ImageWallpaper.CanvasEngine#unloadBitmap"

    .line 178
    .line 179
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/view/Surface;->hwuiDestroy()V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 199
    .line 200
    .line 201
    monitor-exit v0

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    throw p0

    .line 206
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;

    .line 209
    .line 210
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_6

    .line 227
    .line 228
    move v0, v2

    .line 229
    goto :goto_3

    .line 230
    :cond_6
    move v0, v1

    .line 231
    :goto_3
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 232
    .line 233
    if-eqz v3, :cond_7

    .line 234
    .line 235
    if-eqz v0, :cond_7

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->getDisplayId()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_7

    .line 242
    .line 243
    const-string p0, "ImageWallpaper[GLEngine]"

    .line 244
    .line 245
    const-string v0, "Ignore Waking up when closed in watch face mode. "

    .line 246
    .line 247
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 252
    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 256
    .line 257
    if-eqz v4, :cond_9

    .line 258
    .line 259
    iget v5, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 260
    .line 261
    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 262
    .line 263
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eq v5, v7, :cond_9

    .line 268
    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v7, "onStartedWakingUp lid state different. so update "

    .line 272
    .line 273
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 277
    .line 278
    invoke-static {v7}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v7, " , "

    .line 286
    .line 287
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    invoke-static {v6}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-boolean v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    .line 305
    .line 306
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 314
    .line 315
    check-cast v6, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 316
    .line 317
    const-string v7, "ImageWallpaperRenderer"

    .line 318
    .line 319
    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    .line 323
    .line 324
    if-eqz v5, :cond_8

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_8
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 331
    .line 332
    .line 333
    :goto_4
    move v1, v2

    .line 334
    :cond_9
    if-eqz v1, :cond_b

    .line 335
    .line 336
    if-eqz v4, :cond_a

    .line 337
    .line 338
    if-nez v3, :cond_a

    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    .line 341
    .line 342
    .line 343
    :cond_a
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 344
    .line 345
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateRendering()V

    .line 349
    .line 350
    .line 351
    :cond_b
    :goto_5
    return-void

    .line 352
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;

    .line 355
    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    const-class v0, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 360
    .line 361
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 366
    .line 367
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 368
    .line 369
    if-eqz v0, :cond_c

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->semIsResumed()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_c

    .line 376
    .line 377
    move v1, v2

    .line 378
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string v2, "onStartedWakingUp : isSubDisplay = "

    .line 381
    .line 382
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v2, " isResumed = "

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v2, " , mIsPauseByCommand = "

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 406
    .line 407
    iget-boolean v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 408
    .line 409
    const-string v3, "ImageWallpaper[VideoGLEngine]"

    .line 410
    .line 411
    invoke-static {v0, v2, v3}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 415
    .line 416
    if-eqz v0, :cond_e

    .line 417
    .line 418
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_e

    .line 423
    .line 424
    if-eqz v1, :cond_e

    .line 425
    .line 426
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 427
    .line 428
    if-nez v0, :cond_e

    .line 429
    .line 430
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 431
    .line 432
    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 433
    .line 434
    if-eqz v0, :cond_d

    .line 435
    .line 436
    const/high16 v1, 0x3f000000    # 0.5f

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    .line 439
    .line 440
    .line 441
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->start()V

    .line 444
    .line 445
    .line 446
    :cond_e
    return-void

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
