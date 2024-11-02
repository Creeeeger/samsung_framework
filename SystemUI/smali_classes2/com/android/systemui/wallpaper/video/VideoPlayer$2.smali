.class public final Lcom/android/systemui/wallpaper/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 8
    .line 9
    iget-object p2, p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 10
    .line 11
    const-string v2, "VideoPlayer"

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string v3, "onInitComplete!!"

    .line 16
    .line 17
    check-cast p2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 18
    .line 19
    invoke-virtual {p2, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v3, "setLooping() mp = "

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const-string/jumbo p1, "setLooping() mediaPlayer is null"

    .line 48
    .line 49
    .line 50
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    .line 55
    .line 56
    .line 57
    const p2, 0x9089

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    const-string p1, "failed setLooping"

    .line 69
    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mRootView:Landroid/view/View;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    move p1, v0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move p1, v1

    .line 102
    :goto_2
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 103
    .line 104
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 109
    .line 110
    iget-boolean p2, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCarUiMode(Landroid/content/Context;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 121
    .line 122
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 127
    .line 128
    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 129
    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v6, "onInitComplete() p = "

    .line 133
    .line 134
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 138
    .line 139
    iget-boolean v6, v6, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 140
    .line 141
    const-string v7, " , focus = "

    .line 142
    .line 143
    const-string v8, " , isDeviceInteractive = "

    .line 144
    .line 145
    invoke-static {v5, v6, v7, p1, v8}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v6, " , hasSurface = "

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 157
    .line 158
    iget-boolean v6, v6, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v6, " , bouncer = "

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 169
    .line 170
    iget-boolean v6, v6, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v6, " , startPosition = "

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 181
    .line 182
    iget v6, v6, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mStartPosition:I

    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v6, " , isCarUiMode = "

    .line 188
    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v6, " , isDreaming = "

    .line 196
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-static {v5, v4, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 204
    .line 205
    iget-boolean v6, v5, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 206
    .line 207
    if-eqz v6, :cond_4

    .line 208
    .line 209
    iput-boolean v1, v5, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    new-instance v7, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 216
    .line 217
    const v8, 0x493e0

    .line 218
    .line 219
    .line 220
    invoke-direct {v7, v5, v8, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    .line 225
    .line 226
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 227
    .line 228
    iget-boolean v6, v5, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    .line 229
    .line 230
    if-nez v6, :cond_6

    .line 231
    .line 232
    iget-object v5, v5, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 233
    .line 234
    if-eqz v5, :cond_5

    .line 235
    .line 236
    const-string/jumbo v6, "setSurface because it had failed before"

    .line 237
    .line 238
    .line 239
    check-cast v5, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 240
    .line 241
    invoke-virtual {v5, v2, v6}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 245
    .line 246
    iget-object v6, v5, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 249
    .line 250
    .line 251
    :cond_6
    if-eqz p1, :cond_7

    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 254
    .line 255
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 256
    .line 257
    if-nez p1, :cond_7

    .line 258
    .line 259
    if-eqz p2, :cond_7

    .line 260
    .line 261
    if-eqz v3, :cond_a

    .line 262
    .line 263
    if-eqz v4, :cond_a

    .line 264
    .line 265
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 266
    .line 267
    iget-object p2, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 268
    .line 269
    invoke-static {p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    sget v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 274
    .line 275
    invoke-virtual {p2, v3}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    iget v3, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mStartPosition:I

    .line 280
    .line 281
    if-eqz v3, :cond_8

    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    new-instance v2, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 288
    .line 289
    invoke-direct {v2, p1, v3, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    .line 294
    .line 295
    iput v1, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mStartPosition:I

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_8
    iget-object v3, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 299
    .line 300
    if-eqz v3, :cond_9

    .line 301
    .line 302
    invoke-virtual {v3, p2}, Landroid/app/SemWallpaperResourcesInfo;->isBlackFirstFrame(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_9

    .line 307
    .line 308
    iget-boolean v4, p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 309
    .line 310
    if-eqz v4, :cond_9

    .line 311
    .line 312
    invoke-virtual {v3, p2}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-lez p2, :cond_9

    .line 325
    .line 326
    if-lez v3, :cond_9

    .line 327
    .line 328
    if-lt v3, p2, :cond_9

    .line 329
    .line 330
    int-to-float v1, v4

    .line 331
    int-to-float v4, p2

    .line 332
    int-to-float v5, v3

    .line 333
    div-float/2addr v4, v5

    .line 334
    mul-float/2addr v4, v1

    .line 335
    float-to-int v1, v4

    .line 336
    const-string v4, "initSeekTime: "

    .line 337
    .line 338
    const-string v5, " , count = "

    .line 339
    .line 340
    const-string v6, " , requested index = "

    .line 341
    .line 342
    invoke-static {v4, v1, v5, v3, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-static {v3, p2, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getThreadHandler()Landroid/os/Handler;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    new-instance v2, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;

    .line 354
    .line 355
    invoke-direct {v2, p1, v1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    .line 360
    .line 361
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 364
    .line 365
    .line 366
    :cond_a
    return-void
.end method
