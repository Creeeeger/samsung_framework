.class public Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const-string p2, "createImage, imageOption.type:"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-boolean v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    sget-boolean v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 22
    .line 23
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 24
    .line 25
    const/4 v5, 0x5

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    if-ne v4, v5, :cond_2

    .line 29
    .line 30
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 31
    .line 32
    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 50
    .line 51
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, ", displayType:"

    .line 55
    .line 56
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 60
    .line 61
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, ", wallpaperType:"

    .line 65
    .line 66
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p2, ", isMultipleWallpaper:"

    .line 73
    .line 74
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->getDlsCoverWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 95
    .line 96
    invoke-virtual {p0, v5, p2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->getCoverWallpaperBitmap(II)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {v0, p2, v6}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->fitToScreen(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object p0

    .line 105
    :catch_0
    move-exception p2

    .line 106
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    const/4 v4, -0x1

    .line 118
    if-nez p2, :cond_b

    .line 119
    .line 120
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PREVIEW_LOCK_ONLY_LIVE_WALLPAPER:Z

    .line 125
    .line 126
    const/4 v8, 0x7

    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    if-ne p2, v8, :cond_3

    .line 130
    .line 131
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 132
    .line 133
    if-eq v5, v4, :cond_3

    .line 134
    .line 135
    iget-boolean v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useThumbnail:Z

    .line 136
    .line 137
    if-nez v4, :cond_3

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iput p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 148
    .line 149
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 150
    .line 151
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 152
    .line 153
    const/16 v6, 0x7f8

    .line 154
    .line 155
    invoke-static {v0, v4, v5, p2, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getScreenShot(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->await()V

    .line 163
    .line 164
    .line 165
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 166
    .line 167
    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_4

    .line 174
    .line 175
    const-string p2, "bitmap from dls"

    .line 176
    .line 177
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->getDlsWallpaperBitmap(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 185
    .line 186
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 187
    .line 188
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 189
    .line 190
    invoke-virtual {p0, p2, v0, v4, v5}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :cond_4
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_8

    .line 200
    .line 201
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    invoke-virtual {v4, v2, v5}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    .line 214
    .line 215
    .line 216
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    const/4 v5, 0x0

    .line 218
    const-string v8, "cropHints"

    .line 219
    .line 220
    if-nez v4, :cond_5

    .line 221
    .line 222
    move-object v4, v5

    .line 223
    goto :goto_1

    .line 224
    :cond_5
    :try_start_2
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    xor-int/2addr v4, v6

    .line 233
    if-eqz v4, :cond_7

    .line 234
    .line 235
    if-eqz p2, :cond_7

    .line 236
    .line 237
    new-instance v4, Landroid/graphics/Point;

    .line 238
    .line 239
    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 240
    .line 241
    iget v9, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 242
    .line 243
    invoke-direct {v4, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    invoke-virtual {v0, v2, v6}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-nez v0, :cond_6

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_6
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    :goto_2
    invoke-static {v5}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_7

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-nez v5, :cond_7

    .line 276
    .line 277
    invoke-static {v4, v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-eqz v0, :cond_7

    .line 282
    .line 283
    new-instance v4, Landroid/graphics/Rect;

    .line 284
    .line 285
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 297
    .line 298
    .line 299
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 300
    .line 301
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-static {p2, v4, v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    :cond_7
    if-eqz p2, :cond_c

    .line 316
    .line 317
    const-string v0, "bitmap from cache"

    .line 318
    .line 319
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 323
    .line 324
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 325
    .line 326
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 327
    .line 328
    invoke-virtual {p0, p2, v0, v4, v5}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 329
    .line 330
    .line 331
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    return-object p0

    .line 333
    :cond_8
    if-eqz p2, :cond_c

    .line 334
    .line 335
    if-eq p2, v8, :cond_c

    .line 336
    .line 337
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 338
    .line 339
    if-eqz p2, :cond_c

    .line 340
    .line 341
    :try_start_3
    move-object v0, p2

    .line 342
    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 343
    .line 344
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 345
    .line 346
    if-nez v4, :cond_9

    .line 347
    .line 348
    move v0, v7

    .line 349
    goto :goto_3

    .line 350
    :cond_9
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 355
    .line 356
    invoke-static {v4, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    :goto_3
    if-eqz v0, :cond_c

    .line 361
    .line 362
    check-cast p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 363
    .line 364
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    if-eqz p2, :cond_a

    .line 369
    .line 370
    const-string v0, "bitmap from view"

    .line 371
    .line 372
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 376
    .line 377
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 378
    .line 379
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 380
    .line 381
    invoke-virtual {p0, p2, v0, v4, v5}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    return-object p0

    .line 386
    :cond_a
    const-string p2, "bitmap from view is null"

    .line 387
    .line 388
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_b
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 393
    .line 394
    if-eq p2, v4, :cond_c

    .line 395
    .line 396
    iget-boolean p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useThumbnail:Z

    .line 397
    .line 398
    if-nez p2, :cond_c

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    .line 405
    .line 406
    .line 407
    move-result p2

    .line 408
    iput p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 409
    .line 410
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 411
    .line 412
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 413
    .line 414
    const/16 v6, 0x7d0

    .line 415
    .line 416
    invoke-static {v0, v4, v5, p2, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getScreenShot(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    .line 417
    .line 418
    .line 419
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    return-object p0

    .line 421
    :catchall_0
    move-exception p2

    .line 422
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 423
    .line 424
    .line 425
    :cond_c
    :goto_4
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 430
    .line 431
    if-eqz v0, :cond_d

    .line 432
    .line 433
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 434
    .line 435
    const-string v0, "bitmap from wallpaper manager"

    .line 436
    .line 437
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 445
    .line 446
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 447
    .line 448
    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 449
    .line 450
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :cond_d
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 456
    .line 457
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 458
    .line 459
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 460
    .line 461
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    if-nez p2, :cond_e

    .line 466
    .line 467
    const-string/jumbo p0, "no bitmap."

    .line 468
    .line 469
    .line 470
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    return-object v0

    .line 474
    :cond_e
    new-instance v1, Landroid/graphics/Canvas;

    .line 475
    .line 476
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    invoke-virtual {p2, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 491
    .line 492
    .line 493
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 494
    .line 495
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 496
    .line 497
    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 498
    .line 499
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 500
    .line 501
    .line 502
    move-result-object p0

    .line 503
    return-object p0

    .line 504
    :cond_f
    :goto_5
    const-string p0, "black bitmap"

    .line 505
    .line 506
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 510
    .line 511
    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 512
    .line 513
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 514
    .line 515
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    new-instance p1, Landroid/graphics/Canvas;

    .line 520
    .line 521
    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 522
    .line 523
    .line 524
    const/high16 p2, -0x1000000

    .line 525
    .line 526
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 527
    .line 528
    .line 529
    return-object p0
.end method

.method public final decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    .line 24
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, "decodeGif() bitmap is null"

    .line 45
    .line 46
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    .line 51
    .line 52
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    :catchall_2
    move-exception p1

    .line 67
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_3
    move-exception v1

    .line 72
    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    const-string v1, "decodeGif() Exception occurs "

    .line 78
    .line 79
    invoke-static {v1, p1, p0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-object v0

    .line 83
    :cond_2
    :goto_3
    const-string p1, "decodeGif() bitmap return null"

    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method public final getCoverWallpaperBitmap(II)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getCoverWallpaperBitmap() wallpaperType:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x5

    .line 12
    if-ne p1, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    const/4 v4, 0x0

    .line 18
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", display:"

    .line 27
    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->getGifWallpaperPath(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v2, p2, p0, p1}, Landroid/app/WallpaperManager;->getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2, v4, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const-string/jumbo p0, "wallpaper is null"

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string p2, "getCoverWallpaperBitmap() "

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :goto_1
    return-object v4
.end method

.method public final getDlsCoverWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0xc

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/16 v3, 0x16

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v2, v5

    .line 24
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/16 v6, 0xd

    .line 29
    .line 30
    if-eq v3, v6, :cond_3

    .line 31
    .line 32
    const/16 v6, 0x17

    .line 33
    .line 34
    if-ne v3, v6, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v3, v4

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    :goto_2
    move v3, v5

    .line 40
    :goto_3
    move-object v6, v0

    .line 41
    check-cast v6, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperIntelligentCrop()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v6}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-lez v6, :cond_4

    .line 58
    .line 59
    move v4, v5

    .line 60
    :cond_4
    const-string v6, "getDlsCoverWallpaperBitmap, isGif:"

    .line 61
    .line 62
    const-string v7, ", isVideo:"

    .line 63
    .line 64
    const-string v8, ", hasDlsCoverCropHints = "

    .line 65
    .line 66
    invoke-static {v6, v2, v7, v3, v8}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v6, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const-wide/16 v11, 0x0

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    move-object v7, p0

    .line 94
    move-object v8, v10

    .line 95
    invoke-static/range {v7 .. v12}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperRect()Landroid/graphics/Rect;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-lez v2, :cond_8

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-lez v2, :cond_8

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    const-string p0, "getCroppedBitmapForCoverScreen: Invalid params."

    .line 126
    .line 127
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_5
    invoke-static {p0, v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    iget v2, p0, Landroid/graphics/Point;->x:I

    .line 137
    .line 138
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 139
    .line 140
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 141
    .line 142
    invoke-static {v2, p0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance v2, Landroid/graphics/Canvas;

    .line 147
    .line 148
    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    int-to-float v3, v3

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    int-to-float v4, v4

    .line 161
    div-float/2addr v3, v4

    .line 162
    const/high16 v4, 0x3f800000    # 1.0f

    .line 163
    .line 164
    div-float/2addr v4, v3

    .line 165
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 166
    .line 167
    .line 168
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 169
    .line 170
    int-to-float v4, v4

    .line 171
    mul-float/2addr v4, v3

    .line 172
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    int-to-float v1, v1

    .line 175
    mul-float/2addr v1, v3

    .line 176
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    .line 178
    .line 179
    const/4 v1, 0x0

    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    .line 186
    .line 187
    move-object v0, p0

    .line 188
    goto :goto_4

    .line 189
    :cond_6
    xor-int/lit8 v2, v4, 0x1

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap(Z)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v4, :cond_7

    .line 196
    .line 197
    invoke-static {p0, v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperIntelligentCrop()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v2, "getDlsCoverWallpaperBitmap: cropRect = "

    .line 218
    .line 219
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    if-eqz p0, :cond_7

    .line 233
    .line 234
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 235
    .line 236
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    invoke-static {v1, v0, v2, v3, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    goto :goto_4

    .line 251
    :cond_7
    move-object v0, v1

    .line 252
    :cond_8
    :goto_4
    return-object v0
.end method

.method public final getDlsWallpaperBitmap(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    const-string v0, "getDlsWallpaperBitmap: src = "

    .line 2
    .line 3
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 8
    .line 9
    check-cast v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "getDlsWallpaperBitmap: iCrops = "

    .line 16
    .line 17
    invoke-static {v3, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-static {v5, v7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v6, Landroid/util/Size;

    .line 44
    .line 45
    iget v8, v3, Landroid/graphics/Point;->x:I

    .line 46
    .line 47
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    invoke-direct {v6, v8, v3}, Landroid/util/Size;-><init>(II)V

    .line 50
    .line 51
    .line 52
    move-object v3, v6

    .line 53
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v8, 0x0

    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    new-instance v6, Landroid/graphics/Point;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    invoke-direct {v6, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v6, v1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v1, v8

    .line 83
    :goto_0
    const/4 v6, 0x1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_2

    .line 91
    .line 92
    move v11, v6

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v11, v7

    .line 95
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isVideoWallpaperEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_7

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-nez v7, :cond_4

    .line 110
    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const-string/jumbo p0, "no video wallpaper data"

    .line 115
    .line 116
    .line 117
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_4
    :goto_2
    const-string v6, "keyguard"

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Landroid/app/KeyguardManager;

    .line 129
    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v10, "getDlsWallpaperBitmap: kgm.semIsKeyguardShowingAndNotOccluded() = "

    .line 133
    .line 134
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_5

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 158
    .line 159
    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    move-object p0, v8

    .line 167
    :goto_3
    if-nez p0, :cond_6

    .line 168
    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v6, "View or player is null, get frame from retriever : path = "

    .line 172
    .line 173
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, " , uri = "

    .line 180
    .line 181
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    const-wide/16 v9, 0x0

    .line 195
    .line 196
    move-object v6, v8

    .line 197
    move-object v8, v2

    .line 198
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    :cond_6
    move-object v8, p0

    .line 203
    goto :goto_6

    .line 204
    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    if-eqz p0, :cond_8

    .line 209
    .line 210
    move p0, v6

    .line 211
    goto :goto_4

    .line 212
    :cond_8
    move p0, v7

    .line 213
    :goto_4
    if-eqz p0, :cond_9

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    xor-int/lit8 v5, v11, 0x1

    .line 220
    .line 221
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {v2, p0, v5, v7}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    goto :goto_6

    .line 228
    :cond_9
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    if-eqz p0, :cond_a

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_a
    move v6, v7

    .line 236
    :goto_5
    if-eqz v6, :cond_b

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperUri()Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    xor-int/lit8 v5, v11, 0x1

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-static {v2, p0, v5, v7}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    goto :goto_6

    .line 254
    :cond_b
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    :goto_6
    if-eqz v8, :cond_c

    .line 259
    .line 260
    if-eqz v11, :cond_c

    .line 261
    .line 262
    :try_start_0
    new-instance p0, Landroid/graphics/Matrix;

    .line 263
    .line 264
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .line 266
    .line 267
    new-instance v2, Landroid/graphics/Paint;

    .line 268
    .line 269
    const/4 v5, 0x2

    .line 270
    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 282
    .line 283
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    new-instance v6, Landroid/graphics/Canvas;

    .line 288
    .line 289
    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    int-to-float v10, v10

    .line 305
    int-to-float v7, v7

    .line 306
    div-float/2addr v10, v7

    .line 307
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    int-to-float v7, v7

    .line 312
    int-to-float v9, v9

    .line 313
    div-float/2addr v7, v9

    .line 314
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 319
    .line 320
    neg-int v9, v9

    .line 321
    int-to-float v9, v9

    .line 322
    mul-float/2addr v9, v7

    .line 323
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 324
    .line 325
    neg-int v10, v10

    .line 326
    int-to-float v10, v10

    .line 327
    mul-float/2addr v10, v7

    .line 328
    invoke-virtual {p0, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 329
    .line 330
    .line 331
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    int-to-float v11, v11

    .line 336
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 337
    .line 338
    .line 339
    move-result v12

    .line 340
    int-to-float v12, v12

    .line 341
    invoke-virtual {p0, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v8, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 345
    .line 346
    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v0, ", dx = "

    .line 356
    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v0, ", dy = "

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v0, ", displaySize.getWidth() = "

    .line 372
    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v0, ", displaySize.getHeight() = "

    .line 384
    .line 385
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v0, ", scale = "

    .line 396
    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .line 412
    .line 413
    return-object v5

    .line 414
    :catch_0
    move-exception p0

    .line 415
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 416
    .line 417
    .line 418
    :cond_c
    if-nez v8, :cond_d

    .line 419
    .line 420
    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 421
    .line 422
    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 423
    .line 424
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 425
    .line 426
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    :cond_d
    return-object v8
.end method

.method public final getGifWallpaperPath(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getGifWallpaperPath() display: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " , gifPath:"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "getGifWallpaperPath() "

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object v2
.end method

.method public final makeResult(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    const-string/jumbo v0, "makeResult, w: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", h: "

    .line 5
    .line 6
    const-string v2, ", rotation: "

    .line 7
    .line 8
    invoke-static {v0, p2, v1, p3, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-static {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 p1, -0x1

    .line 34
    if-eq p4, p1, :cond_1

    .line 35
    .line 36
    if-nez p4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0, p4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_0
    return-object p0
.end method
