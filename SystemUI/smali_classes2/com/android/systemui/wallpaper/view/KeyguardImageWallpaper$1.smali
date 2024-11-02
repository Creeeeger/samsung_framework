.class public final Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final seq:I

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

.field public final synthetic val$currentUser:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->val$currentUser:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    iget p2, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 9
    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    iput p2, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 13
    .line 14
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->seq:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "Bitmap and the path are not matched. loaded path = "

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->val$currentUser:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "loadBitmap: which = "

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 26
    .line 27
    :goto_0
    move v10, v4

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v5, "loadBitmap which = "

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-class v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 52
    .line 53
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iget-boolean v4, v4, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    move v4, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v4, v6

    .line 68
    :goto_1
    const/4 v11, 0x0

    .line 69
    const-string v12, "KeyguardImageWallpaper"

    .line 70
    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    new-instance v4, Ljava/io/File;

    .line 74
    .line 75
    const-string v7, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 76
    .line 77
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_4

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    .line 94
    iget-object v8, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-direct {v4, v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_3

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    const-string v8, "load MDM wallpaper!"

    .line 122
    .line 123
    invoke-static {v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object v8, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 127
    .line 128
    if-eqz v8, :cond_2

    .line 129
    .line 130
    invoke-interface {v8, v4}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    new-instance v8, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    .line 134
    .line 135
    invoke-direct {v8, v5, v4, v6}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .line 137
    .line 138
    goto/16 :goto_12

    .line 139
    .line 140
    :catch_0
    move-exception v8

    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception v4

    .line 143
    move-object v8, v4

    .line 144
    move-object v4, v11

    .line 145
    :goto_2
    const-string v9, "Can\'t load MDM wallpaper!"

    .line 146
    .line 147
    invoke-static {v12, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    :cond_3
    const-string v8, "file problem!"

    .line 151
    .line 152
    invoke-static {v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    move-object v4, v11

    .line 157
    goto :goto_3

    .line 158
    :cond_5
    move-object v4, v11

    .line 159
    move-object v7, v4

    .line 160
    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->getIntelligentCropHints()Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    if-eqz v8, :cond_6

    .line 165
    .line 166
    move v8, v5

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move v8, v6

    .line 169
    :goto_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_7

    .line 174
    .line 175
    move v9, v5

    .line 176
    goto :goto_5

    .line 177
    :cond_7
    move v9, v6

    .line 178
    :goto_5
    if-nez v9, :cond_f

    .line 179
    .line 180
    invoke-static {v10}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getScreenId(I)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    iget-object v13, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 185
    .line 186
    check-cast v13, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 187
    .line 188
    invoke-virtual {v13, v9}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled(I)Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-eqz v13, :cond_d

    .line 193
    .line 194
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 195
    .line 196
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v4, :cond_8

    .line 203
    .line 204
    move v4, v5

    .line 205
    goto :goto_6

    .line 206
    :cond_8
    move v4, v6

    .line 207
    :goto_6
    if-eqz v4, :cond_9

    .line 208
    .line 209
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 210
    .line 211
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v9, "loadBitmap wallpaperBitmap: "

    .line 220
    .line 221
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_9
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 236
    .line 237
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 238
    .line 239
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz v4, :cond_a

    .line 244
    .line 245
    move v4, v5

    .line 246
    goto :goto_7

    .line 247
    :cond_a
    move v4, v6

    .line 248
    :goto_7
    if-eqz v4, :cond_b

    .line 249
    .line 250
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 251
    .line 252
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 253
    .line 254
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    const-string v7, "loadBitmap from DLS path:"

    .line 259
    .line 260
    invoke-static {v7, v4, v12}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v7, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 264
    .line 265
    check-cast v7, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 266
    .line 267
    xor-int/lit8 v9, v8, 0x1

    .line 268
    .line 269
    iget-object v7, v7, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    invoke-static {v7, v4, v9, v6}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    move-object v7, v4

    .line 276
    move-object v4, v6

    .line 277
    goto :goto_8

    .line 278
    :cond_b
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 279
    .line 280
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 281
    .line 282
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v13, "loadBitmap from DLS uri:"

    .line 289
    .line 290
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    iget-object v9, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 304
    .line 305
    check-cast v9, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 306
    .line 307
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    xor-int/lit8 v13, v8, 0x1

    .line 311
    .line 312
    iget-object v9, v9, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 313
    .line 314
    invoke-static {v9, v4, v13, v6}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    :goto_8
    const-string v6, ", from DLS"

    .line 319
    .line 320
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    if-nez v4, :cond_c

    .line 324
    .line 325
    const-string v6, "DLS returns null for ImageWallpaper bitmap."

    .line 326
    .line 327
    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_c
    move v13, v5

    .line 332
    goto :goto_a

    .line 333
    :cond_d
    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 334
    .line 335
    if-eqz v6, :cond_e

    .line 336
    .line 337
    iget-object v6, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 338
    .line 339
    iget v13, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 340
    .line 341
    invoke-virtual {v6, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-nez v6, :cond_e

    .line 346
    .line 347
    invoke-virtual {v0, v9}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isFbeWallpaper(I)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_e

    .line 352
    .line 353
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 354
    .line 355
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 356
    .line 357
    invoke-virtual {v4, v9, v8}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaper(IZ)Landroid/graphics/Bitmap;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    const-string v6, ", from DLS(FBE)"

    .line 362
    .line 363
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_e
    iget-object v6, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 368
    .line 369
    invoke-virtual {v6, v10}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    const/4 v13, 0x3

    .line 374
    if-ne v6, v13, :cond_f

    .line 375
    .line 376
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 377
    .line 378
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 379
    .line 380
    invoke-virtual {v4, v9, v8}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaper(IZ)Landroid/graphics/Bitmap;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const-string v6, ", from DLS(FBE FORCE)"

    .line 385
    .line 386
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    :cond_f
    :goto_9
    const/4 v6, 0x0

    .line 390
    move v13, v6

    .line 391
    :goto_a
    move-object v9, v7

    .line 392
    if-nez v4, :cond_11

    .line 393
    .line 394
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v2, " , user id = "

    .line 403
    .line 404
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 418
    .line 419
    iget v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 420
    .line 421
    xor-int/lit8 v4, v8, 0x1

    .line 422
    .line 423
    invoke-virtual {v1, v2, v10, v4}, Landroid/app/WallpaperManager;->getLockWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;

    .line 424
    .line 425
    .line 426
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    if-eqz v1, :cond_10

    .line 428
    .line 429
    :try_start_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 430
    .line 431
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-static {v4, v11, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    goto :goto_b

    .line 443
    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    if-nez v4, :cond_12

    .line 448
    .line 449
    new-instance v2, Landroid/app/SemWallpaperResourcesInfo;

    .line 450
    .line 451
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 452
    .line 453
    invoke-direct {v2, v4}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v10}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageWallpaper(I)Ljava/io/InputStream;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {v2, v11, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    goto :goto_b

    .line 465
    :catchall_0
    move-exception p0

    .line 466
    goto/16 :goto_19

    .line 467
    .line 468
    :catch_2
    move-object v1, v11

    .line 469
    goto/16 :goto_10

    .line 470
    .line 471
    :cond_11
    move-object v1, v11

    .line 472
    :cond_12
    :goto_b
    iget-object v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 473
    .line 474
    check-cast v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 475
    .line 476
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_13

    .line 481
    .line 482
    const-string v2, "loadBitmap: Skip cropping when dynamic wallpaper is enabled."

    .line 483
    .line 484
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_13
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    .line 489
    .line 490
    if-nez v2, :cond_14

    .line 491
    .line 492
    iget v2, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 493
    .line 494
    iget v6, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 495
    .line 496
    invoke-static {v4, v2, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    if-eqz v2, :cond_15

    .line 501
    .line 502
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    if-nez v6, :cond_15

    .line 507
    .line 508
    if-eqz v4, :cond_15

    .line 509
    .line 510
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    .line 512
    .line 513
    move-object v7, v2

    .line 514
    goto :goto_d

    .line 515
    :cond_14
    const-string v2, "loadBitmap: shouldEnableScreenRotation is true."

    .line 516
    .line 517
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    :cond_15
    :goto_c
    move-object v7, v4

    .line 521
    :goto_d
    if-eqz v7, :cond_19

    .line 522
    .line 523
    const-string v2, "loadBitmap end"

    .line 524
    .line 525
    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    iget-object v2, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 529
    .line 530
    if-eqz v2, :cond_16

    .line 531
    .line 532
    invoke-interface {v2, v7}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;)V

    .line 533
    .line 534
    .line 535
    :cond_16
    const-string v2, ", success"

    .line 536
    .line 537
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    iget-object v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 548
    .line 549
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 554
    .line 555
    invoke-virtual {v2, v12, v4}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 559
    .line 560
    if-nez v2, :cond_18

    .line 561
    .line 562
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-eqz v2, :cond_17

    .line 567
    .line 568
    goto :goto_e

    .line 569
    :cond_17
    new-instance v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    .line 570
    .line 571
    invoke-direct {v2, v5, v7, v13}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;Z)V

    .line 572
    .line 573
    .line 574
    goto :goto_f

    .line 575
    :cond_18
    :goto_e
    new-instance v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    .line 576
    .line 577
    const/4 v6, 0x1

    .line 578
    move-object v5, v2

    .line 579
    move v8, v13

    .line 580
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;ZLjava/lang/String;I)V

    .line 581
    .line 582
    .line 583
    goto :goto_f

    .line 584
    :cond_19
    const-string v2, ", fail"

    .line 585
    .line 586
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    iget-object v2, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 597
    .line 598
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 603
    .line 604
    invoke-virtual {v2, v12, v4}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    new-instance v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    .line 608
    .line 609
    const/4 v4, 0x0

    .line 610
    invoke-direct {v2, v4, v11, v13}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;Z)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 611
    .line 612
    .line 613
    :goto_f
    move-object v8, v2

    .line 614
    goto :goto_11

    .line 615
    :catchall_1
    move-exception p0

    .line 616
    goto/16 :goto_1a

    .line 617
    .line 618
    :catch_3
    :goto_10
    :try_start_4
    const-string v2, ", fail(OOM)"

    .line 619
    .line 620
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 624
    .line 625
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 630
    .line 631
    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    .line 635
    .line 636
    const/4 v2, 0x0

    .line 637
    invoke-direct {v0, v2, v11, v13}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 638
    .line 639
    .line 640
    move-object v8, v0

    .line 641
    :goto_11
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 642
    .line 643
    .line 644
    :goto_12
    iget-boolean v0, v8, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 645
    .line 646
    if-nez v0, :cond_1a

    .line 647
    .line 648
    const-string p0, "doInBackground, result is fail"

    .line 649
    .line 650
    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    goto/16 :goto_18

    .line 654
    .line 655
    :cond_1a
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_1b

    .line 660
    .line 661
    const-string p0, "doInBackground, task is cancelled"

    .line 662
    .line 663
    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    goto/16 :goto_18

    .line 667
    .line 668
    :cond_1b
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->seq:I

    .line 669
    .line 670
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 671
    .line 672
    iget v2, v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 673
    .line 674
    if-eq v0, v2, :cond_1c

    .line 675
    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    const-string v0, "doInBackground, request : "

    .line 679
    .line 680
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->seq:I

    .line 684
    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const-string v0, ", current : "

    .line 689
    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 694
    .line 695
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 696
    .line 697
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p0

    .line 704
    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    goto/16 :goto_18

    .line 708
    .line 709
    :cond_1c
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 710
    .line 711
    iget v2, v8, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    .line 712
    .line 713
    if-eqz v0, :cond_1d

    .line 714
    .line 715
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 716
    .line 717
    if-nez v3, :cond_1d

    .line 718
    .line 719
    sget v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 720
    .line 721
    if-eq v2, v3, :cond_1d

    .line 722
    .line 723
    const-string p0, "Loaded bitmap is not for current display. Just return here."

    .line 724
    .line 725
    invoke-static {v12, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    goto/16 :goto_18

    .line 729
    .line 730
    :cond_1d
    iget-boolean v3, v8, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    .line 731
    .line 732
    if-eqz v0, :cond_22

    .line 733
    .line 734
    if-eqz v3, :cond_22

    .line 735
    .line 736
    and-int/lit8 v0, v2, 0x10

    .line 737
    .line 738
    if-eqz v0, :cond_1e

    .line 739
    .line 740
    iget-object v0, v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 741
    .line 742
    const-string v1, "WPaperChangedByDlsSub"

    .line 743
    .line 744
    const/4 v4, 0x0

    .line 745
    invoke-static {v0, v1, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    goto :goto_13

    .line 750
    :cond_1e
    const/4 v0, 0x0

    .line 751
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 752
    .line 753
    const-string v4, "WPaperChangedByDls"

    .line 754
    .line 755
    invoke-static {v1, v4, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    :goto_13
    const-string/jumbo v1, "wallpaperUpdateFromDls: "

    .line 760
    .line 761
    .line 762
    invoke-static {v1, v0, v12}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 763
    .line 764
    .line 765
    if-nez v0, :cond_1f

    .line 766
    .line 767
    const-string p0, "Image loaded from PluginLock but DynamicWallpaper is not enabled at this moment. Just return here."

    .line 768
    .line 769
    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    goto/16 :goto_18

    .line 773
    .line 774
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 775
    .line 776
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 777
    .line 778
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 779
    .line 780
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    if-eqz v1, :cond_21

    .line 785
    .line 786
    const-string v1, "isDynamicWallpaperEnabled: "

    .line 787
    .line 788
    invoke-static {v1, v0, v12}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 789
    .line 790
    .line 791
    iget-object v0, v8, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    .line 792
    .line 793
    if-nez v0, :cond_20

    .line 794
    .line 795
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 796
    .line 797
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 798
    .line 799
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 800
    .line 801
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    if-nez v1, :cond_20

    .line 806
    .line 807
    const-string p1, "DLS does not have wallpaepr path. Just keep going."

    .line 808
    .line 809
    invoke-static {v12, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    goto :goto_14

    .line 813
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 814
    .line 815
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 816
    .line 817
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 818
    .line 819
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    if-nez v1, :cond_22

    .line 828
    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    const-string p1, ", current path = "

    .line 838
    .line 839
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 843
    .line 844
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 845
    .line 846
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 847
    .line 848
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p1

    .line 859
    invoke-static {v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 860
    .line 861
    .line 862
    goto/16 :goto_18

    .line 863
    .line 864
    :catch_4
    move-exception p1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    const-string v1, "e = "

    .line 868
    .line 869
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-static {p1, v0, v12}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    goto :goto_14

    .line 876
    :cond_21
    const-string p1, "We are fine. Just keep going."

    .line 877
    .line 878
    invoke-static {v12, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .line 880
    .line 881
    :cond_22
    :goto_14
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 882
    .line 883
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 884
    .line 885
    iget-object v1, p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 886
    .line 887
    iget-boolean v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 888
    .line 889
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    .line 890
    .line 891
    .line 892
    move-result v1

    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    const-string v6, "applyOldBitmap: isDeviceInteractive = "

    .line 896
    .line 897
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    const-string v4, " , isUnlocked = "

    .line 904
    .line 905
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    .line 917
    .line 918
    iget-object v4, p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 919
    .line 920
    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 921
    .line 922
    if-eqz v4, :cond_23

    .line 923
    .line 924
    if-nez v1, :cond_23

    .line 925
    .line 926
    iput-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 927
    .line 928
    goto :goto_15

    .line 929
    :cond_23
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 930
    .line 931
    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 932
    .line 933
    .line 934
    iput-object v11, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 935
    .line 936
    :goto_15
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 937
    .line 938
    iget-object v0, v8, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 939
    .line 940
    iput-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 941
    .line 942
    new-instance p1, Ljava/lang/StringBuilder;

    .line 943
    .line 944
    const-string v0, "cache = "

    .line 945
    .line 946
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 950
    .line 951
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 952
    .line 953
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    const-string v0, " , which = "

    .line 957
    .line 958
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object p1

    .line 968
    invoke-static {v12, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 972
    .line 973
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 974
    .line 975
    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 976
    .line 977
    .line 978
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 979
    .line 980
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 981
    .line 982
    if-eqz p1, :cond_24

    .line 983
    .line 984
    invoke-interface {p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 985
    .line 986
    .line 987
    :cond_24
    if-eqz v3, :cond_25

    .line 988
    .line 989
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 990
    .line 991
    iput-object v11, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 992
    .line 993
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 994
    .line 995
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 996
    .line 997
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isCustomPackApplied()Z

    .line 998
    .line 999
    .line 1000
    move-result p1

    .line 1001
    if-eqz p1, :cond_2a

    .line 1002
    .line 1003
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1004
    .line 1005
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 1009
    .line 1010
    .line 1011
    move-result-object p1

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 1013
    .line 1014
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    .line 1015
    .line 1016
    .line 1017
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 1018
    .line 1019
    iget-object p1, p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 1020
    .line 1021
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 1022
    .line 1023
    goto :goto_17

    .line 1024
    :cond_25
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1025
    .line 1026
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 1027
    .line 1028
    if-nez p1, :cond_26

    .line 1029
    .line 1030
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1031
    .line 1032
    .line 1033
    :cond_26
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 1034
    .line 1035
    .line 1036
    move-result-object p1

    .line 1037
    new-instance v0, Landroid/graphics/Rect;

    .line 1038
    .line 1039
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    const/4 v1, 0x0

    .line 1043
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1044
    .line 1045
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1046
    .line 1047
    if-eqz p1, :cond_27

    .line 1048
    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    goto :goto_16

    .line 1054
    :cond_27
    move v3, v1

    .line 1055
    :goto_16
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1056
    .line 1057
    if-eqz p1, :cond_28

    .line 1058
    .line 1059
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    :cond_28
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1064
    .line 1065
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1066
    .line 1067
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    .line 1068
    .line 1069
    .line 1070
    move-result p1

    .line 1071
    if-eqz p1, :cond_29

    .line 1072
    .line 1073
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1074
    .line 1075
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isSmartCropRequired()Z

    .line 1076
    .line 1077
    .line 1078
    move-result p1

    .line 1079
    if-eqz p1, :cond_29

    .line 1080
    .line 1081
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1082
    .line 1083
    invoke-virtual {p1, v2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded(I)V

    .line 1084
    .line 1085
    .line 1086
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1087
    .line 1088
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 1089
    .line 1090
    if-eqz p1, :cond_2a

    .line 1091
    .line 1092
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1093
    .line 1094
    invoke-virtual {p0, v2, v0, p1}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_17

    .line 1098
    :cond_29
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 1099
    .line 1100
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1101
    .line 1102
    invoke-virtual {p0, v2, v0, v0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1103
    .line 1104
    .line 1105
    :cond_2a
    :goto_17
    move-object v11, v8

    .line 1106
    :goto_18
    return-object v11

    .line 1107
    :catchall_2
    move-exception p0

    .line 1108
    move-object v11, v1

    .line 1109
    :goto_19
    move-object v1, v11

    .line 1110
    :goto_1a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1111
    .line 1112
    .line 1113
    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "KeyguardImageWallpaper"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 16
    .line 17
    sget v2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->$r8$clinit:I

    .line 18
    .line 19
    iget p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->init(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateRotationState()V

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v1, "updateWallpaper() DONE, init = "

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const-string/jumbo p0, "return onPostExecute: result is null or fail"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method
