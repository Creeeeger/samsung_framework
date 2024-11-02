.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "ImageWallpaper[VideoGLEngine]"

    .line 6
    .line 7
    const-string v3, ", current "

    .line 8
    .line 9
    const-string v4, " mPluginHomeWallpaperConsumer "

    .line 10
    .line 11
    const-string v5, ", Dual dex mode . Update Now. "

    .line 12
    .line 13
    const-class v6, Lcom/android/systemui/util/DesktopManager;

    .line 14
    .line 15
    const-string v7, " ,  DeviceDisplay type "

    .line 16
    .line 17
    const-string v8, " isNeedReDraw "

    .line 18
    .line 19
    const-string v9, " onConfigurationChanged  mCurDensityDpi "

    .line 20
    .line 21
    const-string v10, " onConfigurationChanged   "

    .line 22
    .line 23
    const-string v11, " Dark Mode change "

    .line 24
    .line 25
    const-string v12, " , "

    .line 26
    .line 27
    const-string v13, " -> "

    .line 28
    .line 29
    const/4 v14, 0x0

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_21

    .line 34
    .line 35
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v2, "ImageWallpaperVideoRenderer"

    .line 49
    .line 50
    const-string v3, "onSurfaceCreated"

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 56
    .line 57
    invoke-virtual {v2, v0, v14}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;Z)V

    .line 58
    .line 59
    .line 60
    iput-object v0, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Landroid/app/WallpaperManager;

    .line 70
    .line 71
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 74
    .line 75
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/4 v5, 0x3

    .line 86
    if-ne v4, v5, :cond_1

    .line 87
    .line 88
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 91
    .line 92
    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_0

    .line 99
    .line 100
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 103
    .line 104
    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const-string v4, "multiple wallpaper isn\'t ready yet"

    .line 112
    .line 113
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-nez v4, :cond_2

    .line 123
    .line 124
    const-string/jumbo v0, "videoFilePath is NULL"

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto/16 :goto_15

    .line 131
    .line 132
    :cond_2
    :goto_0
    const-string/jumbo v5, "yes"

    .line 133
    .line 134
    .line 135
    const-string v6, "10"

    .line 136
    .line 137
    const-string v7, "isHDRvideo : "

    .line 138
    .line 139
    const/16 v8, 0xa

    .line 140
    .line 141
    const/16 v9, 0xb

    .line 142
    .line 143
    const/16 v10, 0x8

    .line 144
    .line 145
    const/16 v11, 0x403

    .line 146
    .line 147
    const/16 v13, 0x3fe

    .line 148
    .line 149
    const/16 v14, 0x3f7

    .line 150
    .line 151
    const/16 v15, 0x404

    .line 152
    .line 153
    if-eqz v4, :cond_a

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v16

    .line 159
    if-nez v16, :cond_a

    .line 160
    .line 161
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 162
    .line 163
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaPath(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 167
    .line 168
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 169
    .line 170
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8

    .line 190
    :try_start_1
    invoke-virtual {v0, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    .line 194
    :try_start_2
    invoke-virtual {v0, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v13
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    .line 198
    :try_start_3
    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    if-eqz v4, :cond_3

    .line 203
    .line 204
    :try_start_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v13, :cond_4

    .line 209
    .line 210
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    goto :goto_4

    .line 217
    :catch_1
    move-exception v0

    .line 218
    goto :goto_7

    .line 219
    :cond_3
    const/4 v0, -0x1

    .line 220
    :cond_4
    const/4 v14, 0x0

    .line 221
    :goto_1
    if-eqz v0, :cond_5

    .line 222
    .line 223
    if-ne v0, v10, :cond_7

    .line 224
    .line 225
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_7

    .line 230
    .line 231
    if-eq v14, v9, :cond_6

    .line 232
    .line 233
    if-ne v14, v8, :cond_7

    .line 234
    .line 235
    :cond_6
    const/4 v0, 0x1

    .line 236
    goto :goto_9

    .line 237
    :cond_7
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 241
    goto :goto_9

    .line 242
    :catch_2
    move-exception v0

    .line 243
    const/4 v11, 0x0

    .line 244
    goto :goto_4

    .line 245
    :catch_3
    move-exception v0

    .line 246
    const/4 v11, 0x0

    .line 247
    goto :goto_7

    .line 248
    :catch_4
    move-exception v0

    .line 249
    goto :goto_3

    .line 250
    :catch_5
    move-exception v0

    .line 251
    goto :goto_6

    .line 252
    :catch_6
    move-exception v0

    .line 253
    goto :goto_2

    .line 254
    :catch_7
    move-exception v0

    .line 255
    goto :goto_5

    .line 256
    :catch_8
    move-exception v0

    .line 257
    const/4 v1, 0x0

    .line 258
    :goto_2
    const/4 v4, 0x0

    .line 259
    :goto_3
    const/4 v11, 0x0

    .line 260
    const/4 v13, 0x0

    .line 261
    :goto_4
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    goto :goto_8

    .line 265
    :catch_9
    move-exception v0

    .line 266
    const/4 v1, 0x0

    .line 267
    :goto_5
    const/4 v4, 0x0

    .line 268
    :goto_6
    const/4 v11, 0x0

    .line 269
    const/4 v13, 0x0

    .line 270
    :goto_7
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 271
    .line 272
    .line 273
    :goto_8
    const/4 v0, 0x0

    .line 274
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-static {v5, v13, v12, v1, v12}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v5, v11, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 298
    .line 299
    if-eqz v1, :cond_9

    .line 300
    .line 301
    iget-object v1, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 302
    .line 303
    if-nez v1, :cond_8

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_8
    const v2, 0x3fcccccd    # 1.6f

    .line 307
    .line 308
    .line 309
    const v3, 0x3f333333    # 0.7f

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v0, v3, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_15

    .line 316
    .line 317
    :cond_9
    :goto_a
    const-string v0, "ImageWallpaperVideoRenderer"

    .line 318
    .line 319
    const-string v1, "Cannot set hdr mode enabled. Layer is null."

    .line 320
    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    goto/16 :goto_15

    .line 325
    .line 326
    :cond_a
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 327
    .line 328
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v4, v8, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-nez v0, :cond_b

    .line 345
    .line 346
    const-string v0, "fd is NULL"

    .line 347
    .line 348
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    goto/16 :goto_15

    .line 352
    .line 353
    :cond_b
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 354
    .line 355
    invoke-virtual {v3, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaFd(Landroid/content/res/AssetFileDescriptor;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 359
    .line 360
    :try_start_5
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    .line 361
    .line 362
    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 366
    .line 367
    .line 368
    move-result-object v17

    .line 369
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 370
    .line 371
    .line 372
    move-result-wide v18

    .line 373
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 374
    .line 375
    .line 376
    move-result-wide v20

    .line 377
    move-object/from16 v16, v3

    .line 378
    .line 379
    invoke-virtual/range {v16 .. v21}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_12

    .line 386
    :try_start_6
    invoke-virtual {v3, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v8
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_10

    .line 390
    :try_start_7
    invoke-virtual {v3, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v13
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_e

    .line 394
    :try_start_8
    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_c

    .line 398
    if-eqz v8, :cond_c

    .line 399
    .line 400
    :try_start_9
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v13, :cond_d

    .line 405
    .line 406
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v11

    .line 410
    goto :goto_b

    .line 411
    :catch_a
    move-exception v0

    .line 412
    goto :goto_e

    .line 413
    :catch_b
    move-exception v0

    .line 414
    goto :goto_11

    .line 415
    :cond_c
    const/4 v0, -0x1

    .line 416
    :cond_d
    const/4 v11, 0x0

    .line 417
    :goto_b
    if-eqz v0, :cond_e

    .line 418
    .line 419
    if-ne v0, v10, :cond_10

    .line 420
    .line 421
    :cond_e
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_10

    .line 426
    .line 427
    if-eq v11, v9, :cond_f

    .line 428
    .line 429
    const/16 v0, 0xa

    .line 430
    .line 431
    if-ne v11, v0, :cond_10

    .line 432
    .line 433
    :cond_f
    const/4 v0, 0x1

    .line 434
    goto :goto_13

    .line 435
    :cond_10
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_a

    .line 439
    goto :goto_13

    .line 440
    :catch_c
    move-exception v0

    .line 441
    const/4 v3, 0x0

    .line 442
    goto :goto_e

    .line 443
    :catch_d
    move-exception v0

    .line 444
    const/4 v3, 0x0

    .line 445
    goto :goto_11

    .line 446
    :catch_e
    move-exception v0

    .line 447
    goto :goto_d

    .line 448
    :catch_f
    move-exception v0

    .line 449
    goto :goto_10

    .line 450
    :catch_10
    move-exception v0

    .line 451
    goto :goto_c

    .line 452
    :catch_11
    move-exception v0

    .line 453
    goto :goto_f

    .line 454
    :catch_12
    move-exception v0

    .line 455
    const/4 v4, 0x0

    .line 456
    :goto_c
    const/4 v8, 0x0

    .line 457
    :goto_d
    const/4 v3, 0x0

    .line 458
    const/4 v13, 0x0

    .line 459
    :goto_e
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 460
    .line 461
    .line 462
    goto :goto_12

    .line 463
    :catch_13
    move-exception v0

    .line 464
    const/4 v4, 0x0

    .line 465
    :goto_f
    const/4 v8, 0x0

    .line 466
    :goto_10
    const/4 v3, 0x0

    .line 467
    const/4 v13, 0x0

    .line 468
    :goto_11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 469
    .line 470
    .line 471
    :goto_12
    const/4 v0, 0x0

    .line 472
    :goto_13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-static {v5, v13, v12, v4, v12}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-static {v5, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object v2, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 496
    .line 497
    if-eqz v2, :cond_12

    .line 498
    .line 499
    iget-object v1, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 500
    .line 501
    if-nez v1, :cond_11

    .line 502
    .line 503
    goto :goto_14

    .line 504
    :cond_11
    const v2, 0x3fcccccd    # 1.6f

    .line 505
    .line 506
    .line 507
    const v3, 0x3f333333    # 0.7f

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v0, v3, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    .line 511
    .line 512
    .line 513
    goto :goto_15

    .line 514
    :cond_12
    :goto_14
    const-string v0, "ImageWallpaperVideoRenderer"

    .line 515
    .line 516
    const-string v1, "Cannot set hdr mode enabled. Layer is null."

    .line 517
    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    :goto_15
    return-void

    .line 522
    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;

    .line 525
    .line 526
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v0, Ljava/lang/Boolean;

    .line 529
    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v4, " mPluginGifWallpaperConsumer type previous "

    .line 533
    .line 534
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 538
    .line 539
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 540
    .line 541
    iget v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 542
    .line 543
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 550
    .line 551
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 552
    .line 553
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 554
    .line 555
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 556
    .line 557
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    const-string v3, "ImageWallpaper[GifGLEngine]"

    .line 569
    .line 570
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_14

    .line 578
    .line 579
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 580
    .line 581
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 582
    .line 583
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 584
    .line 585
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 586
    .line 587
    const/4 v2, 0x1

    .line 588
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap(Z)Landroid/graphics/Bitmap;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-eqz v0, :cond_13

    .line 593
    .line 594
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    const/16 v3, 0x40

    .line 599
    .line 600
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 613
    .line 614
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    invoke-interface {v4, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 619
    .line 620
    .line 621
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 622
    .line 623
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 624
    .line 625
    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setThumbnail(Landroid/graphics/Bitmap;Landroid/view/SurfaceHolder;)V

    .line 626
    .line 627
    .line 628
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 629
    .line 630
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 631
    .line 632
    new-instance v3, Landroid/graphics/Rect;

    .line 633
    .line 634
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    const/4 v5, 0x0

    .line 643
    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    const-string/jumbo v4, "setBoundRect : "

    .line 652
    .line 653
    .line 654
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    const-string v4, "ImageWallpaperGifRenderer"

    .line 665
    .line 666
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    iput-object v3, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mBoundRect:Landroid/graphics/Rect;

    .line 670
    .line 671
    goto :goto_16

    .line 672
    :cond_13
    const-string v0, " bitmap is null"

    .line 673
    .line 674
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    :goto_16
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 678
    .line 679
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 680
    .line 681
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 682
    .line 683
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 684
    .line 685
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 686
    .line 687
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setMediaPath(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 695
    .line 696
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 697
    .line 698
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->updateGif(Landroid/view/SurfaceHolder;)V

    .line 703
    .line 704
    .line 705
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 706
    .line 707
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 708
    .line 709
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 710
    .line 711
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 712
    .line 713
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    iput v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 718
    .line 719
    goto :goto_18

    .line 720
    :cond_14
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 721
    .line 722
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 723
    .line 724
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 725
    .line 726
    if-nez v1, :cond_15

    .line 727
    .line 728
    goto :goto_18

    .line 729
    :cond_15
    if-nez v1, :cond_16

    .line 730
    .line 731
    goto :goto_17

    .line 732
    :cond_16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 737
    .line 738
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 739
    .line 740
    .line 741
    :goto_17
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 742
    .line 743
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 744
    .line 745
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 750
    .line 751
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    .line 753
    .line 754
    :goto_18
    return-void

    .line 755
    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;

    .line 758
    .line 759
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast v0, Ljava/lang/Boolean;

    .line 762
    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 769
    .line 770
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 771
    .line 772
    iget v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 773
    .line 774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 781
    .line 782
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 783
    .line 784
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 785
    .line 786
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 787
    .line 788
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    const-string v2, "ImageWallpaper[GLEngine]"

    .line 806
    .line 807
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .line 809
    .line 810
    const/16 v0, 0x11

    .line 811
    .line 812
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 813
    .line 814
    .line 815
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 816
    .line 817
    .line 818
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 819
    .line 820
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 821
    .line 822
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 823
    .line 824
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 825
    .line 826
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    iput v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 831
    .line 832
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 833
    .line 834
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 835
    .line 836
    if-eqz v1, :cond_19

    .line 837
    .line 838
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 839
    .line 840
    if-eqz v1, :cond_19

    .line 841
    .line 842
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 843
    .line 844
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 845
    .line 846
    if-nez v1, :cond_17

    .line 847
    .line 848
    goto :goto_1a

    .line 849
    :cond_17
    if-nez v1, :cond_18

    .line 850
    .line 851
    goto :goto_19

    .line 852
    :cond_18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mUpdatePluginTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 857
    .line 858
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    .line 860
    .line 861
    :goto_19
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 862
    .line 863
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 864
    .line 865
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mUpdatePluginTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    .line 870
    .line 871
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 872
    .line 873
    .line 874
    :cond_19
    :goto_1a
    return-void

    .line 875
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 876
    .line 877
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 878
    .line 879
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast v0, Landroid/content/res/Configuration;

    .line 882
    .line 883
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 887
    .line 888
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    iput v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 893
    .line 894
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 895
    .line 896
    if-eqz v3, :cond_23

    .line 897
    .line 898
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 899
    .line 900
    .line 901
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 902
    .line 903
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    .line 907
    .line 908
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .line 910
    .line 911
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 912
    .line 913
    and-int/lit8 v4, v4, 0x20

    .line 914
    .line 915
    if-eqz v4, :cond_1a

    .line 916
    .line 917
    const/4 v4, 0x1

    .line 918
    goto :goto_1b

    .line 919
    :cond_1a
    move v4, v14

    .line 920
    :goto_1b
    iget-boolean v12, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 921
    .line 922
    if-eq v12, v4, :cond_1b

    .line 923
    .line 924
    iput-boolean v4, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 925
    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    .line 927
    .line 928
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    iget-boolean v11, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 932
    .line 933
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v4

    .line 940
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    const/4 v14, 0x1

    .line 944
    :cond_1b
    iget v4, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 945
    .line 946
    iget v11, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 947
    .line 948
    if-eq v4, v11, :cond_1d

    .line 949
    .line 950
    new-instance v4, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    iget v9, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 956
    .line 957
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    iget v9, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 964
    .line 965
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 976
    .line 977
    iput v4, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 978
    .line 979
    const/4 v4, 0x1

    .line 980
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 981
    .line 982
    .line 983
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 984
    .line 985
    .line 986
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 987
    .line 988
    if-eqz v4, :cond_1c

    .line 989
    .line 990
    const/4 v4, 0x5

    .line 991
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 992
    .line 993
    .line 994
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 995
    .line 996
    .line 997
    const/16 v4, 0x11

    .line 998
    .line 999
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1000
    .line 1001
    .line 1002
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1003
    .line 1004
    .line 1005
    :cond_1c
    const/4 v14, 0x1

    .line 1006
    :cond_1d
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1007
    .line 1008
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v9

    .line 1020
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    iget v9, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    .line 1024
    .line 1025
    iget-object v10, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 1026
    .line 1027
    if-eq v9, v4, :cond_1e

    .line 1028
    .line 1029
    iput v4, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    .line 1030
    .line 1031
    if-eqz v10, :cond_1e

    .line 1032
    .line 1033
    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 1034
    .line 1035
    .line 1036
    move-result v4

    .line 1037
    if-eqz v4, :cond_1e

    .line 1038
    .line 1039
    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    .line 1040
    .line 1041
    .line 1042
    sget-object v4, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 1043
    .line 1044
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v4

    .line 1048
    if-eqz v4, :cond_1e

    .line 1049
    .line 1050
    const/4 v14, 0x1

    .line 1051
    :cond_1e
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 1052
    .line 1053
    if-eqz v4, :cond_21

    .line 1054
    .line 1055
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    iget v7, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    .line 1061
    .line 1062
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    iget v7, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1069
    .line 1070
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v7

    .line 1077
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    iget v7, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    .line 1081
    .line 1082
    iget v9, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1083
    .line 1084
    if-eq v7, v9, :cond_21

    .line 1085
    .line 1086
    iget v7, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 1087
    .line 1088
    iget-object v9, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1089
    .line 1090
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    .line 1091
    .line 1092
    .line 1093
    move-result v11

    .line 1094
    if-eq v7, v11, :cond_1f

    .line 1095
    .line 1096
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v6

    .line 1100
    check-cast v6, Lcom/android/systemui/util/DesktopManager;

    .line 1101
    .line 1102
    check-cast v6, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 1103
    .line 1104
    invoke-virtual {v6}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v6

    .line 1108
    if-eqz v6, :cond_1f

    .line 1109
    .line 1110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    iget v5, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 1116
    .line 1117
    invoke-static {v5}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v5

    .line 1121
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    .line 1128
    .line 1129
    .line 1130
    move-result v5

    .line 1131
    invoke-static {v5}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v5

    .line 1135
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v5

    .line 1142
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    .line 1146
    .line 1147
    .line 1148
    move-result v5

    .line 1149
    invoke-virtual {v2, v5}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 1150
    .line 1151
    .line 1152
    const/4 v5, 0x1

    .line 1153
    move v14, v5

    .line 1154
    :cond_1f
    if-eqz v10, :cond_20

    .line 1155
    .line 1156
    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v5

    .line 1160
    if-eqz v5, :cond_20

    .line 1161
    .line 1162
    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_20
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1166
    .line 1167
    iput v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    .line 1168
    .line 1169
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v3

    .line 1178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    iget-object v2, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 1192
    .line 1193
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 1194
    .line 1195
    const-string v3, "ImageWallpaperRenderer"

    .line 1196
    .line 1197
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    if-eqz v14, :cond_23

    .line 1201
    .line 1202
    if-eqz v4, :cond_22

    .line 1203
    .line 1204
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 1205
    .line 1206
    if-nez v0, :cond_22

    .line 1207
    .line 1208
    invoke-virtual {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateSurfaceSizeIfNeed()Z

    .line 1209
    .line 1210
    .line 1211
    move-result v0

    .line 1212
    xor-int/lit8 v0, v0, 0x1

    .line 1213
    .line 1214
    goto :goto_1c

    .line 1215
    :cond_22
    const/4 v0, 0x1

    .line 1216
    :goto_1c
    if-eqz v0, :cond_23

    .line 1217
    .line 1218
    invoke-virtual {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateRendering()V

    .line 1219
    .line 1220
    .line 1221
    :cond_23
    return-void

    .line 1222
    :pswitch_5
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1223
    .line 1224
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;

    .line 1225
    .line 1226
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1227
    .line 1228
    check-cast v0, Ljava/lang/Boolean;

    .line 1229
    .line 1230
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 1231
    .line 1232
    iget-boolean v3, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 1233
    .line 1234
    xor-int/lit8 v3, v3, 0x1

    .line 1235
    .line 1236
    if-eqz v3, :cond_24

    .line 1237
    .line 1238
    iget-object v0, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 1239
    .line 1240
    const-string v1, " mPluginHomeWallpaperConsumer, skip, engine is destroyed"

    .line 1241
    .line 1242
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .line 1244
    .line 1245
    goto/16 :goto_1d

    .line 1246
    .line 1247
    :cond_24
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 1248
    .line 1249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 1255
    .line 1256
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1257
    .line 1258
    iget v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 1259
    .line 1260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 1267
    .line 1268
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1269
    .line 1270
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1271
    .line 1272
    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1273
    .line 1274
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 1275
    .line 1276
    .line 1277
    move-result v4

    .line 1278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    .line 1293
    .line 1294
    const/16 v0, 0x11

    .line 1295
    .line 1296
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1297
    .line 1298
    .line 1299
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1300
    .line 1301
    .line 1302
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 1303
    .line 1304
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1305
    .line 1306
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1307
    .line 1308
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1309
    .line 1310
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 1311
    .line 1312
    .line 1313
    move-result v2

    .line 1314
    iput v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 1315
    .line 1316
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 1317
    .line 1318
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1319
    .line 1320
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1321
    .line 1322
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1323
    .line 1324
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 1325
    .line 1326
    .line 1327
    move-result v1

    .line 1328
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1329
    .line 1330
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1331
    .line 1332
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1333
    .line 1334
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 1335
    .line 1336
    .line 1337
    move-result v2

    .line 1338
    const/16 v3, 0x15

    .line 1339
    .line 1340
    if-eq v2, v3, :cond_25

    .line 1341
    .line 1342
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1343
    .line 1344
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    .line 1353
    .line 1354
    .line 1355
    goto :goto_1d

    .line 1356
    :cond_25
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSizeIfNeed(I)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v2

    .line 1360
    if-nez v2, :cond_26

    .line 1361
    .line 1362
    iget-boolean v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceCreated:Z

    .line 1363
    .line 1364
    if-eqz v2, :cond_26

    .line 1365
    .line 1366
    new-instance v2, Landroid/graphics/Rect;

    .line 1367
    .line 1368
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1369
    .line 1370
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v3

    .line 1374
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1375
    .line 1376
    .line 1377
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 1378
    .line 1379
    monitor-enter v3

    .line 1380
    :try_start_a
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFullQualityFrame(ILandroid/graphics/Rect;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->finishRendering()V

    .line 1384
    .line 1385
    .line 1386
    monitor-exit v3

    .line 1387
    goto :goto_1d

    .line 1388
    :catchall_0
    move-exception v0

    .line 1389
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1390
    throw v0

    .line 1391
    :cond_26
    :goto_1d
    return-void

    .line 1392
    :pswitch_6
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1393
    .line 1394
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 1395
    .line 1396
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1397
    .line 1398
    check-cast v0, Landroid/content/res/Configuration;

    .line 1399
    .line 1400
    iget-boolean v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    .line 1401
    .line 1402
    xor-int/lit8 v2, v2, 0x1

    .line 1403
    .line 1404
    if-eqz v2, :cond_27

    .line 1405
    .line 1406
    goto/16 :goto_20

    .line 1407
    .line 1408
    :cond_27
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1409
    .line 1410
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    iput v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    .line 1415
    .line 1416
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 1417
    .line 1418
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1419
    .line 1420
    .line 1421
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    .line 1425
    .line 1426
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 1427
    .line 1428
    and-int/lit8 v4, v4, 0x20

    .line 1429
    .line 1430
    if-eqz v4, :cond_28

    .line 1431
    .line 1432
    const/4 v4, 0x1

    .line 1433
    goto :goto_1e

    .line 1434
    :cond_28
    move v4, v14

    .line 1435
    :goto_1e
    iget-boolean v12, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    .line 1436
    .line 1437
    if-eq v12, v4, :cond_29

    .line 1438
    .line 1439
    iput-boolean v4, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    .line 1440
    .line 1441
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    iget-boolean v11, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    .line 1447
    .line 1448
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v4

    .line 1455
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    .line 1458
    const/4 v14, 0x1

    .line 1459
    :cond_29
    iget v4, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    .line 1460
    .line 1461
    iget v11, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1462
    .line 1463
    if-eq v4, v11, :cond_2b

    .line 1464
    .line 1465
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    iget v9, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    .line 1471
    .line 1472
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    iget v9, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1479
    .line 1480
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v4

    .line 1487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1491
    .line 1492
    iput v4, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    .line 1493
    .line 1494
    const/4 v4, 0x1

    .line 1495
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1496
    .line 1497
    .line 1498
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1499
    .line 1500
    .line 1501
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 1502
    .line 1503
    if-eqz v4, :cond_2a

    .line 1504
    .line 1505
    const/4 v4, 0x5

    .line 1506
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1510
    .line 1511
    .line 1512
    const/16 v4, 0x11

    .line 1513
    .line 1514
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1515
    .line 1516
    .line 1517
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1518
    .line 1519
    .line 1520
    :cond_2a
    const/4 v14, 0x1

    .line 1521
    :cond_2b
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1522
    .line 1523
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v9

    .line 1535
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    .line 1537
    .line 1538
    iget v9, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    .line 1539
    .line 1540
    iget-object v10, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 1541
    .line 1542
    if-eq v9, v4, :cond_2c

    .line 1543
    .line 1544
    iput v4, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    .line 1545
    .line 1546
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 1547
    .line 1548
    .line 1549
    move-result v4

    .line 1550
    invoke-virtual {v2, v4}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 1551
    .line 1552
    .line 1553
    move-result v4

    .line 1554
    if-nez v4, :cond_2c

    .line 1555
    .line 1556
    if-eqz v10, :cond_2c

    .line 1557
    .line 1558
    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 1559
    .line 1560
    .line 1561
    move-result v4

    .line 1562
    if-eqz v4, :cond_2c

    .line 1563
    .line 1564
    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    .line 1565
    .line 1566
    .line 1567
    const/4 v14, 0x1

    .line 1568
    :cond_2c
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 1569
    .line 1570
    if-eqz v4, :cond_2f

    .line 1571
    .line 1572
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1575
    .line 1576
    .line 1577
    iget v7, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    .line 1578
    .line 1579
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    iget v7, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1586
    .line 1587
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v7

    .line 1594
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    iget v7, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    .line 1598
    .line 1599
    iget v9, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1600
    .line 1601
    if-eq v7, v9, :cond_2f

    .line 1602
    .line 1603
    iget v7, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 1604
    .line 1605
    iget-object v9, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1606
    .line 1607
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    .line 1608
    .line 1609
    .line 1610
    move-result v11

    .line 1611
    if-eq v7, v11, :cond_2d

    .line 1612
    .line 1613
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v6

    .line 1617
    check-cast v6, Lcom/android/systemui/util/DesktopManager;

    .line 1618
    .line 1619
    check-cast v6, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 1620
    .line 1621
    invoke-virtual {v6}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 1622
    .line 1623
    .line 1624
    move-result v6

    .line 1625
    if-eqz v6, :cond_2d

    .line 1626
    .line 1627
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    iget v5, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 1633
    .line 1634
    invoke-static {v5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v5

    .line 1638
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    .line 1645
    .line 1646
    .line 1647
    move-result v5

    .line 1648
    invoke-static {v5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v5

    .line 1652
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v5

    .line 1659
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    .line 1661
    .line 1662
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    .line 1663
    .line 1664
    .line 1665
    move-result v5

    .line 1666
    invoke-virtual {v2, v5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    .line 1667
    .line 1668
    .line 1669
    const/4 v5, 0x1

    .line 1670
    move v14, v5

    .line 1671
    :cond_2d
    if-eqz v10, :cond_2e

    .line 1672
    .line 1673
    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    .line 1674
    .line 1675
    .line 1676
    move-result v5

    .line 1677
    if-eqz v5, :cond_2e

    .line 1678
    .line 1679
    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    .line 1680
    .line 1681
    .line 1682
    :cond_2e
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1683
    .line 1684
    iput v0, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    .line 1685
    .line 1686
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1687
    .line 1688
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v3

    .line 1695
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    iget-object v3, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 1709
    .line 1710
    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 1711
    .line 1712
    iget-object v2, v2, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 1713
    .line 1714
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    .line 1716
    .line 1717
    if-eqz v14, :cond_31

    .line 1718
    .line 1719
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    .line 1720
    .line 1721
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 1722
    .line 1723
    .line 1724
    move-result v0

    .line 1725
    if-eqz v4, :cond_30

    .line 1726
    .line 1727
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 1728
    .line 1729
    if-nez v2, :cond_30

    .line 1730
    .line 1731
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSizeIfNeed(I)Z

    .line 1732
    .line 1733
    .line 1734
    move-result v2

    .line 1735
    xor-int/lit8 v2, v2, 0x1

    .line 1736
    .line 1737
    goto :goto_1f

    .line 1738
    :cond_30
    const/4 v2, 0x1

    .line 1739
    :goto_1f
    if-eqz v2, :cond_31

    .line 1740
    .line 1741
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateRendering(I)V

    .line 1742
    .line 1743
    .line 1744
    :cond_31
    :goto_20
    return-void

    .line 1745
    :pswitch_7
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1746
    .line 1747
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 1748
    .line 1749
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1750
    .line 1751
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 1752
    .line 1753
    iget-boolean v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 1754
    .line 1755
    if-nez v2, :cond_32

    .line 1756
    .line 1757
    const-string v2, "ImageWallpaper#onSurfaceCreated"

    .line 1758
    .line 1759
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 1763
    .line 1764
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->finish()V

    .line 1765
    .line 1766
    .line 1767
    iget-object v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 1768
    .line 1769
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 1770
    .line 1771
    iget-object v3, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 1772
    .line 1773
    iget-boolean v3, v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    .line 1774
    .line 1775
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;Z)V

    .line 1776
    .line 1777
    .line 1778
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 1779
    .line 1780
    invoke-virtual {v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->determineHighlightFilterAmount()I

    .line 1781
    .line 1782
    .line 1783
    move-result v2

    .line 1784
    iput v2, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mHighlightFilterAmount:I

    .line 1785
    .line 1786
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 1787
    .line 1788
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->onSurfaceCreated()V

    .line 1789
    .line 1790
    .line 1791
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1792
    .line 1793
    .line 1794
    :cond_32
    const/4 v0, 0x1

    .line 1795
    iput-boolean v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 1796
    .line 1797
    return-void

    .line 1798
    :goto_21
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1799
    .line 1800
    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;

    .line 1801
    .line 1802
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1803
    .line 1804
    check-cast v0, Ljava/lang/Boolean;

    .line 1805
    .line 1806
    iget-object v4, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1807
    .line 1808
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 1809
    .line 1810
    if-nez v4, :cond_33

    .line 1811
    .line 1812
    const-string v0, " mPluginVideoWallpaperConsumer, skip, renderer is null"

    .line 1813
    .line 1814
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    .line 1816
    .line 1817
    goto/16 :goto_23

    .line 1818
    .line 1819
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1820
    .line 1821
    const-string v5, " mPluginVideoWallpaperConsumer type previous "

    .line 1822
    .line 1823
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1824
    .line 1825
    .line 1826
    iget-object v5, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1827
    .line 1828
    iget-object v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1829
    .line 1830
    iget v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 1831
    .line 1832
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    .line 1838
    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1839
    .line 1840
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1841
    .line 1842
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1843
    .line 1844
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1845
    .line 1846
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 1847
    .line 1848
    .line 1849
    move-result v3

    .line 1850
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v3

    .line 1857
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1861
    .line 1862
    .line 1863
    move-result v0

    .line 1864
    if-eqz v0, :cond_34

    .line 1865
    .line 1866
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1867
    .line 1868
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 1869
    .line 1870
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1871
    .line 1872
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1873
    .line 1874
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1875
    .line 1876
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperRect()Landroid/graphics/Rect;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setBoundRect(Landroid/graphics/Rect;)V

    .line 1881
    .line 1882
    .line 1883
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1884
    .line 1885
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 1886
    .line 1887
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1888
    .line 1889
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1890
    .line 1891
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1892
    .line 1893
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v0

    .line 1897
    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaPath(Ljava/lang/String;)V

    .line 1898
    .line 1899
    .line 1900
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1901
    .line 1902
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1903
    .line 1904
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 1905
    .line 1906
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 1907
    .line 1908
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 1909
    .line 1910
    .line 1911
    move-result v1

    .line 1912
    iput v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 1913
    .line 1914
    goto :goto_23

    .line 1915
    :cond_34
    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 1916
    .line 1917
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1918
    .line 1919
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 1920
    .line 1921
    if-nez v1, :cond_35

    .line 1922
    .line 1923
    goto :goto_23

    .line 1924
    :cond_35
    if-nez v1, :cond_36

    .line 1925
    .line 1926
    goto :goto_22

    .line 1927
    :cond_36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v1

    .line 1931
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 1932
    .line 1933
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1934
    .line 1935
    .line 1936
    :goto_22
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 1937
    .line 1938
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 1939
    .line 1940
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v1

    .line 1944
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 1945
    .line 1946
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1947
    .line 1948
    .line 1949
    :goto_23
    return-void

    .line 1950
    nop

    .line 1951
    :pswitch_data_0
    .packed-switch 0x0
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
