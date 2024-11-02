.class public final Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mColorDecorFilterData:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCurDensityDpi:I

.field public mDeviceDisplayType:I

.field public final mDisplayId:I

.field public mHighlightFilterAmount:I

.field public final mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field public mIsFolded:Z

.field public mIsNightModeOn:Z

.field public mIsSmartCropAllowed:Z

.field public final mIsVirtualDisplay:Z

.field public mLidState:I

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public mOnBitmapUpdated:Ljava/util/function/Consumer;

.field public mOrientation:I

.field public final mPm:Landroid/os/PowerManager;

.field public final mProgram:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;

.field public mSmartCropYOffset:I

.field public final mSurfaceSize:Landroid/graphics/Rect;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public final mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

.field public final mWallpaper:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsSmartCropAllowed:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 19
    .line 20
    const/high16 v3, 0x3f000000    # 0.5f

    .line 21
    .line 22
    iput v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 25
    .line 26
    iput v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 27
    .line 28
    iput v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    .line 31
    .line 32
    iput v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mHighlightFilterAmount:I

    .line 33
    .line 34
    const-class v1, Landroid/app/WallpaperManager;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/app/WallpaperManager;

    .line 41
    .line 42
    const-string v3, "ImageWallpaperRenderer"

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    const-string v4, "WallpaperManager not available"

    .line 47
    .line 48
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    iput-object p4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 52
    .line 53
    new-instance p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 54
    .line 55
    invoke-direct {p4, v1, p5, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;-><init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;I)V

    .line 56
    .line 57
    .line 58
    iput-object p4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 59
    .line 60
    new-instance p5, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;

    .line 61
    .line 62
    invoke-direct {p5, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iput-object p5, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;

    .line 66
    .line 67
    new-instance v4, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;

    .line 68
    .line 69
    invoke-direct {v4, p5}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;)V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iput-object p3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 77
    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 79
    .line 80
    .line 81
    move-result p5

    .line 82
    iput p5, p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCurrentUserId:I

    .line 83
    .line 84
    const-class p5, Landroid/hardware/display/DisplayManager;

    .line 85
    .line 86
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p5

    .line 90
    check-cast p5, Landroid/hardware/display/DisplayManager;

    .line 91
    .line 92
    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 93
    .line 94
    iput p2, p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    .line 95
    .line 96
    sget-boolean p5, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 97
    .line 98
    if-eqz p5, :cond_1

    .line 99
    .line 100
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 101
    .line 102
    .line 103
    move-result p5

    .line 104
    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    .line 105
    .line 106
    iput-boolean p5, p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mIsVirtualDisplay:Z

    .line 107
    .line 108
    :cond_1
    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 109
    .line 110
    const/4 v4, 0x5

    .line 111
    if-eqz p5, :cond_6

    .line 112
    .line 113
    const/4 v5, 0x2

    .line 114
    if-ne p2, v5, :cond_2

    .line 115
    .line 116
    move v5, v0

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    move v5, v2

    .line 119
    :goto_0
    if-nez v5, :cond_6

    .line 120
    .line 121
    if-eqz p5, :cond_6

    .line 122
    .line 123
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 124
    .line 125
    .line 126
    move-result p5

    .line 127
    const-string v5, "  , "

    .line 128
    .line 129
    iget-object v6, p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 130
    .line 131
    if-eqz p5, :cond_3

    .line 132
    .line 133
    const-string p5, " Already exist in cache :  main "

    .line 134
    .line 135
    invoke-static {v3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget p5, p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCurrentUserId:I

    .line 140
    .line 141
    invoke-virtual {v6, p5, v2, v4, v2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 142
    .line 143
    .line 144
    move-result-object p5

    .line 145
    if-eqz p5, :cond_4

    .line 146
    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v8, "Load main bitmap save in cache "

    .line 150
    .line 151
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {p5, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_1
    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 185
    .line 186
    if-eqz p5, :cond_6

    .line 187
    .line 188
    const/16 p5, 0x11

    .line 189
    .line 190
    invoke-static {p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_5

    .line 195
    .line 196
    const-string p4, " Already exist in cache :  sub"

    .line 197
    .line 198
    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    iget p4, p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCurrentUserId:I

    .line 203
    .line 204
    invoke-virtual {v6, p4, v2, p5, v2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 205
    .line 206
    .line 207
    move-result-object p4

    .line 208
    if-eqz p4, :cond_6

    .line 209
    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v7, "Load sub bitmap save in cache "

    .line 213
    .line 214
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-static {p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 242
    .line 243
    .line 244
    invoke-static {p4, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 245
    .line 246
    .line 247
    :cond_6
    :goto_2
    new-instance p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 248
    .line 249
    invoke-direct {p4, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    .line 250
    .line 251
    .line 252
    iput-object p4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 253
    .line 254
    iput-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 257
    .line 258
    .line 259
    move-result-object p4

    .line 260
    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    iget p4, p4, Landroid/content/res/Configuration;->densityDpi:I

    .line 265
    .line 266
    iput p4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object p4

    .line 272
    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 273
    .line 274
    .line 275
    move-result-object p4

    .line 276
    iget p4, p4, Landroid/content/res/Configuration;->orientation:I

    .line 277
    .line 278
    iput p4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    .line 279
    .line 280
    const p4, -0xf4240

    .line 281
    .line 282
    .line 283
    iput p4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    .line 286
    .line 287
    .line 288
    move-result p4

    .line 289
    invoke-static {p4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 290
    .line 291
    .line 292
    sget-boolean p4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 293
    .line 294
    if-eqz p4, :cond_8

    .line 295
    .line 296
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    .line 297
    .line 298
    .line 299
    move-result p4

    .line 300
    const-string/jumbo p5, "power"

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p5

    .line 307
    check-cast p5, Landroid/os/PowerManager;

    .line 308
    .line 309
    iput-object p5, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mPm:Landroid/os/PowerManager;

    .line 310
    .line 311
    new-instance p5, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v1, " initial lid state : "

    .line 314
    .line 315
    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {p4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v1, " , "

    .line 326
    .line 327
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 339
    .line 340
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p5

    .line 347
    check-cast p3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 348
    .line 349
    invoke-virtual {p3, v3, p5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 353
    .line 354
    .line 355
    move-result-object p3

    .line 356
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 357
    .line 358
    .line 359
    move-result-object p3

    .line 360
    iget p3, p3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 361
    .line 362
    iput p3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    .line 363
    .line 364
    if-ne p3, v4, :cond_7

    .line 365
    .line 366
    if-eqz p4, :cond_7

    .line 367
    .line 368
    invoke-static {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p3

    .line 372
    const-string p4, " flex mode "

    .line 373
    .line 374
    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p3

    .line 378
    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move p4, v2

    .line 382
    :cond_7
    invoke-virtual {p0, p4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 383
    .line 384
    .line 385
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 390
    .line 391
    .line 392
    move-result-object p3

    .line 393
    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    .line 394
    .line 395
    and-int/lit8 p3, p3, 0x20

    .line 396
    .line 397
    if-eqz p3, :cond_9

    .line 398
    .line 399
    move v2, v0

    .line 400
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 401
    .line 402
    invoke-static {p2, p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    .line 403
    .line 404
    .line 405
    move-result p2

    .line 406
    if-ltz p2, :cond_a

    .line 407
    .line 408
    or-int/2addr p2, v0

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 410
    .line 411
    .line 412
    move-result p3

    .line 413
    invoke-static {p2, p1, p3}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->getFilterData(ILandroid/content/Context;I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 418
    .line 419
    .line 420
    move-result p2

    .line 421
    if-nez p2, :cond_a

    .line 422
    .line 423
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mColorDecorFilterData:Ljava/lang/String;

    .line 424
    .line 425
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mColorDecorFilterData:Ljava/lang/String;

    .line 426
    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    xor-int/2addr p1, v0

    .line 432
    if-nez p1, :cond_b

    .line 433
    .line 434
    const/16 p1, 0x3c

    .line 435
    .line 436
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mHighlightFilterAmount:I

    .line 437
    .line 438
    :cond_b
    return-void
.end method

.method public static showLidState(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const-string p0, "LID_OPEN"

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    const-string p0, "LID_CLOSED"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string p0, "LID_UNKNOWN"

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final getCurrentWhich()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/16 p0, 0x9

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x11

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    const/16 p0, 0x21

    .line 39
    .line 40
    return p0

    .line 41
    :cond_3
    return v2
.end method

.method public final onSurfaceCreated()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " onSurfaceCreated "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", colorDecor = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mColorDecorFilterData:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    xor-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", highlightAmount = "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mHighlightFilterAmount:I

    .line 35
    .line 36
    const-string v2, "ImageWallpaperRenderer"

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f120027

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->getShaderResource(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v2, 0x7f120026

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->getShaderResource(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const v3, 0x8b31

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->getShaderHandle(ILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const v3, 0x8b30

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->getShaderHandle(ILjava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_0

    .line 82
    .line 83
    const-string v0, "ImageGLProgram"

    .line 84
    .line 85
    const-string v2, "Can not create OpenGL ES program"

    .line 86
    .line 87
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iput v3, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->mProgramHandle:I

    .line 102
    .line 103
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->use(Ljava/util/function/Consumer;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final reportSurfaceSize()Landroid/util/Size;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->use(Ljava/util/function/Consumer;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/util/Size;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final setLidState(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method
