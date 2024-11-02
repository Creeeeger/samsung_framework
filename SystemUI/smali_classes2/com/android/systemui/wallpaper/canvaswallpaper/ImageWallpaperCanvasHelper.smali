.class public final Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapUpdateConsumer:Ljava/util/function/Consumer;

.field public final mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

.field public mColorDecorFilterData:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public mCurDensityDpi:I

.field public mCurrentUserId:I

.field public mDeviceDisplayType:I

.field public final mDimensions:Landroid/graphics/Rect;

.field public mDisplayId:I

.field public final mDownScaledSourceBitmapSet:Ljava/util/HashMap;

.field public mHighlightFilterAmount:I

.field public final mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field public mIsFolded:Z

.field public mIsNightModeOn:Z

.field public mIsSmartCropAllowed:Z

.field public mIsVirtualDisplay:Z

.field public mIsWcgContent:Z

.field public mLidState:I

.field public final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public mOrientation:I

.field public final mPm:Landroid/os/PowerManager;

.field public final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSmartCropYOffset:I

.field public mSubBitmap:Landroid/graphics/Bitmap;

.field public final mSurfaceSize:Landroid/graphics/Rect;

.field public final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;ZLcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p6, "ImageWallpaperCanvasHelper"

    .line 5
    .line 6
    iput-object p6, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p7, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {p7}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    .line 14
    .line 15
    const/4 p7, 0x1

    .line 16
    iput-boolean p7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsSmartCropAllowed:Z

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    .line 23
    .line 24
    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    .line 26
    iput v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mYOffset:F

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    .line 29
    .line 30
    iput v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    .line 35
    .line 36
    iput v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    .line 44
    .line 45
    const-class v0, Landroid/app/WallpaperManager;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/app/WallpaperManager;

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const-string v2, "WallpaperManager not available"

    .line 56
    .line 57
    invoke-static {p6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iput-object p3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 65
    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    iput p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    .line 71
    .line 72
    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    .line 74
    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    new-instance p4, Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    .line 85
    .line 86
    iput-object p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 89
    .line 90
    iput-object p8, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

    .line 91
    .line 92
    new-instance p4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string p5, "ImageWallpaperCanvasHelper_"

    .line 95
    .line 96
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    check-cast p8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;

    .line 100
    .line 101
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget p5, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    .line 105
    .line 106
    iget-object p5, p8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 107
    .line 108
    invoke-virtual {p5}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 109
    .line 110
    .line 111
    move-result p5

    .line 112
    const/4 p6, 0x2

    .line 113
    if-ne p5, p6, :cond_1

    .line 114
    .line 115
    move p5, p6

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move p5, p7

    .line 118
    :goto_0
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    iput-object p4, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    iput p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 128
    .line 129
    sget-boolean p5, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 130
    .line 131
    if-eqz p5, :cond_2

    .line 132
    .line 133
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 134
    .line 135
    .line 136
    move-result p5

    .line 137
    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    .line 138
    .line 139
    :cond_2
    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 140
    .line 141
    const/4 p8, 0x5

    .line 142
    if-eqz p5, :cond_7

    .line 143
    .line 144
    iget v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 145
    .line 146
    if-ne v2, p6, :cond_3

    .line 147
    .line 148
    move p6, p7

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    move p6, v1

    .line 151
    :goto_1
    if-nez p6, :cond_7

    .line 152
    .line 153
    if-eqz p5, :cond_7

    .line 154
    .line 155
    invoke-static {p7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 156
    .line 157
    .line 158
    move-result p5

    .line 159
    const-string p6, "  , "

    .line 160
    .line 161
    if-eqz p5, :cond_4

    .line 162
    .line 163
    const-string p5, " Already exist in cache : main "

    .line 164
    .line 165
    move-object v2, p3

    .line 166
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 167
    .line 168
    invoke-virtual {v2, p4, p5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual {p0, p8}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getBitmapFromWallpaperManager(I)Landroid/graphics/Bitmap;

    .line 173
    .line 174
    .line 175
    move-result-object p5

    .line 176
    if-eqz p5, :cond_5

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v3, "Load main bitmap save in cache "

    .line 181
    .line 182
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    move-object v3, p3

    .line 207
    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 208
    .line 209
    invoke-virtual {v3, p4, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p5, p7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 213
    .line 214
    .line 215
    invoke-static {p7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 216
    .line 217
    .line 218
    :cond_5
    :goto_2
    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 219
    .line 220
    if-eqz p5, :cond_7

    .line 221
    .line 222
    const/16 p5, 0x11

    .line 223
    .line 224
    invoke-static {p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    const-string p5, " Already exist in cache :  sub"

    .line 231
    .line 232
    move-object p6, p3

    .line 233
    check-cast p6, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 234
    .line 235
    invoke-virtual {p6, p4, p5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    invoke-virtual {p0, p5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getBitmapFromWallpaperManager(I)Landroid/graphics/Bitmap;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v4, "Load sub bitmap save in cache "

    .line 248
    .line 249
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 263
    .line 264
    .line 265
    move-result p6

    .line 266
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p6

    .line 273
    move-object v3, p3

    .line 274
    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 275
    .line 276
    invoke-virtual {v3, p4, p6}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v2, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 280
    .line 281
    .line 282
    invoke-static {p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_3
    new-instance p5, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 286
    .line 287
    invoke-direct {p5, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    .line 288
    .line 289
    .line 290
    iput-object p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object p5

    .line 296
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 297
    .line 298
    .line 299
    move-result-object p5

    .line 300
    iget p5, p5, Landroid/content/res/Configuration;->densityDpi:I

    .line 301
    .line 302
    iput p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 305
    .line 306
    .line 307
    move-result-object p5

    .line 308
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 309
    .line 310
    .line 311
    move-result-object p5

    .line 312
    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    .line 313
    .line 314
    iput p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    .line 315
    .line 316
    const p5, -0xf4240

    .line 317
    .line 318
    .line 319
    iput p5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSmartCropYOffset:I

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    .line 322
    .line 323
    .line 324
    move-result p5

    .line 325
    invoke-static {p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 326
    .line 327
    .line 328
    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 329
    .line 330
    if-eqz p5, :cond_9

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 333
    .line 334
    .line 335
    move-result p5

    .line 336
    const-string/jumbo p6, "power"

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p6

    .line 343
    check-cast p6, Landroid/os/PowerManager;

    .line 344
    .line 345
    iput-object p6, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mPm:Landroid/os/PowerManager;

    .line 346
    .line 347
    new-instance p6, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v0, " initial lid state : "

    .line 350
    .line 351
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-static {p5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v0, " , "

    .line 362
    .line 363
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 375
    .line 376
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p6

    .line 383
    check-cast p3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 384
    .line 385
    invoke-virtual {p3, p4, p6}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 389
    .line 390
    .line 391
    move-result-object p3

    .line 392
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 393
    .line 394
    .line 395
    move-result-object p3

    .line 396
    iget p3, p3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 397
    .line 398
    iput p3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    .line 399
    .line 400
    if-ne p3, p8, :cond_8

    .line 401
    .line 402
    if-eqz p5, :cond_8

    .line 403
    .line 404
    invoke-static {v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p3

    .line 408
    const-string p5, " flex mode "

    .line 409
    .line 410
    invoke-virtual {p5, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p3

    .line 414
    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move p5, v1

    .line 418
    :cond_8
    invoke-virtual {p0, p5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    .line 419
    .line 420
    .line 421
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 422
    .line 423
    .line 424
    move-result-object p3

    .line 425
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 426
    .line 427
    .line 428
    move-result-object p3

    .line 429
    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    .line 430
    .line 431
    and-int/lit8 p3, p3, 0x20

    .line 432
    .line 433
    if-eqz p3, :cond_a

    .line 434
    .line 435
    move v1, p7

    .line 436
    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    .line 437
    .line 438
    invoke-static {p2, p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    if-ltz p2, :cond_b

    .line 443
    .line 444
    or-int/2addr p2, p7

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 446
    .line 447
    .line 448
    move-result p3

    .line 449
    invoke-static {p2, p1, p3}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->getFilterData(ILandroid/content/Context;I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 454
    .line 455
    .line 456
    move-result p2

    .line 457
    if-nez p2, :cond_b

    .line 458
    .line 459
    iput-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 460
    .line 461
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 462
    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    xor-int/2addr p1, p7

    .line 468
    if-nez p1, :cond_c

    .line 469
    .line 470
    const/16 p1, 0x3c

    .line 471
    .line 472
    iput p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    .line 473
    .line 474
    :cond_c
    return-void
.end method

.method public static convertLidStateToString(I)Ljava/lang/String;
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
.method public final createDownScaledSourceBitmap(Landroid/graphics/Bitmap;I)Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v2, v0

    .line 26
    const/high16 v3, 0x3f000000    # 0.5f

    .line 27
    .line 28
    mul-float/2addr v2, v3

    .line 29
    const/high16 v3, 0x44800000    # 1024.0f

    .line 30
    .line 31
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    float-to-int v2, v2

    .line 36
    int-to-float v2, v2

    .line 37
    int-to-float v3, v1

    .line 38
    div-float/2addr v2, v3

    .line 39
    const-string v3, "createDownScaledSourceBitmap: longDisplay="

    .line 40
    .line 41
    const-string v4, ", shortBmpLen="

    .line 42
    .line 43
    const-string v5, ", scale="

    .line 44
    .line 45
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    .line 63
    cmpl-float v0, v2, v0

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    if-lez v0, :cond_0

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_0
    if-nez v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    int-to-float v0, v0

    .line 86
    mul-float/2addr v0, v2

    .line 87
    float-to-int v0, v0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-float v3, v3

    .line 93
    mul-float/2addr v3, v2

    .line 94
    float-to-int v3, v3

    .line 95
    const/4 v4, 0x1

    .line 96
    invoke-static {p1, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    if-eqz v0, :cond_3

    .line 101
    .line 102
    if-ne v0, p1, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    .line 106
    .line 107
    invoke-direct {p0, p2, v0, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;-><init>(ILandroid/graphics/Bitmap;F)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "createDownScaledSourceBitmap: Resized bitmap creation failed. org="

    .line 114
    .line 115
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, ", resized="

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return-object v1
.end method

.method public final getBitmapFromWallpaperManager(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    .line 15
    .line 16
    invoke-virtual {v2, p1, v0}, Landroid/app/WallpaperManager;->isWaitingForUnlockUser(II)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "getBitmapFromWallpaperManager: Wallpaper type is not image."

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    .line 38
    .line 39
    invoke-virtual {v2, p1, p0, v3, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZI)Landroid/os/ParcelFileDescriptor;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    .line 59
    .line 60
    invoke-virtual {v2, p0, v3, p1, v3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :catch_0
    :goto_0
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    sget p1, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    .line 71
    .line 72
    if-gt p0, p1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v0, "Wallpaper is too large! w="

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", h="

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_4
    :goto_1
    return-object v1
.end method

.method public final getCurrentWhich()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 11
    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    if-ne v0, v1, :cond_3

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :goto_0
    const/16 v0, 0x10

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 v0, 0x4

    .line 44
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCallback:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$Callback;

    .line 45
    .line 46
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-ne p0, v2, :cond_4

    .line 60
    .line 61
    move v1, v2

    .line 62
    :cond_4
    and-int/lit8 p0, v1, 0x3

    .line 63
    .line 64
    or-int/2addr p0, v0

    .line 65
    return p0
.end method

.method public final getDimFilterColor(I)Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->getColor(I)Landroid/app/SemWallpaperColors;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 23
    .line 24
    if-eq p0, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    :goto_0
    const/4 p0, 0x3

    .line 29
    aget p0, p1, p0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    aget v0, p1, v0

    .line 33
    .line 34
    aget v1, p1, v2

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    aget p1, p1, v2

    .line 38
    .line 39
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(FFFF)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final getDisplaySize()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "display"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 27
    .line 28
    .line 29
    new-instance p0, Landroid/graphics/Point;

    .line 30
    .line 31
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 32
    .line 33
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 34
    .line 35
    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public final getFilterAppliedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "getFilterAppliedBitmap : bitmap == null || mHelper == null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    xor-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    .line 30
    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_2
    :goto_0
    if-eqz p1, :cond_7

    .line 38
    .line 39
    iget v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    const/4 v3, 0x0

    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move v0, v3

    .line 48
    :goto_1
    if-nez v0, :cond_5

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move v0, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_5
    :goto_2
    move v0, v1

    .line 58
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 59
    .line 60
    if-eqz v2, :cond_7

    .line 61
    .line 62
    if-nez v0, :cond_7

    .line 63
    .line 64
    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-direct {p2, v3, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 83
    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v1, p2, p2}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    invoke-virtual {p0, v1, p2, v0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    :cond_7
    :goto_4
    return-object p1
.end method

.method public final getIntelligentCropHints(I)Ljava/util/ArrayList;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    :cond_0
    and-int/lit8 v0, p1, 0x10

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v4, 0x10

    .line 16
    .line 17
    if-ne v0, v4, :cond_1

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_0
    and-int/lit8 v4, p1, 0x20

    .line 23
    .line 24
    const/16 v5, 0x20

    .line 25
    .line 26
    if-ne v4, v5, :cond_2

    .line 27
    .line 28
    move v4, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v4, v1

    .line 31
    :goto_1
    if-nez v0, :cond_4

    .line 32
    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move v0, v1

    .line 37
    goto :goto_3

    .line 38
    :cond_4
    :goto_2
    move v0, v3

    .line 39
    :goto_3
    if-eqz v0, :cond_5

    .line 40
    .line 41
    move-object v0, v2

    .line 42
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    move v1, v3

    .line 51
    :cond_5
    if-eqz v1, :cond_6

    .line 52
    .line 53
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperIntelligentCrop()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "getIntelligentCropHints: From CoverWallpaper. json = "

    .line 60
    .line 61
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 72
    .line 73
    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    .line 74
    .line 75
    invoke-virtual {v0, p1, p0}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-nez p0, :cond_7

    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0

    .line 83
    :cond_7
    const-string p1, "cropHints"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_4
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final hasIntelligentCropHints(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "loadBitmap: displayId="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, " which="

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 37
    .line 38
    if-eqz v2, :cond_6

    .line 39
    .line 40
    and-int/lit8 v2, p1, 0x10

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    const/16 v5, 0x10

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    if-ne v2, v5, :cond_1

    .line 47
    .line 48
    move v2, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v2, v6

    .line 51
    :goto_0
    and-int/lit8 v5, p1, 0x20

    .line 52
    .line 53
    const/16 v7, 0x20

    .line 54
    .line 55
    if-ne v5, v7, :cond_2

    .line 56
    .line 57
    move v5, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v5, v6

    .line 60
    :goto_1
    if-nez v2, :cond_3

    .line 61
    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    :cond_3
    move v6, v4

    .line 65
    :cond_4
    if-eqz v6, :cond_6

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 68
    .line 69
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    const-string v0, "loadCachedBitmapByWhich: from cover wallpaper controller"

    .line 78
    .line 79
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    xor-int/2addr v0, v4

    .line 87
    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap(Z)Landroid/graphics/Bitmap;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v1, p0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-eqz p0, :cond_9

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "loadCachedBitmapByWhich: cropRect = "

    .line 116
    .line 117
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", bitmap w = "

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", h = "

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 159
    .line 160
    if-lt p1, v1, :cond_9

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 167
    .line 168
    if-lt p1, v1, :cond_9

    .line 169
    .line 170
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    invoke-static {v0, p1, v1, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    const/4 v2, 0x3

    .line 192
    if-ne v1, v2, :cond_6

    .line 193
    .line 194
    const-string p0, "loadCachedBitmapByWhich: Just return null in case of custom pack."

    .line 195
    .line 196
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 201
    .line 202
    if-eqz v0, :cond_8

    .line 203
    .line 204
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v0, "loadCachedBitmapByWhich: get cached bitmap "

    .line 213
    .line 214
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    goto :goto_2

    .line 232
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v1, "loadCachedBitmapByWhich: from wallpaper manager "

    .line 235
    .line 236
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getBitmapFromWallpaperManager(I)Landroid/graphics/Bitmap;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getBitmapFromWallpaperManager(I)Landroid/graphics/Bitmap;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    :goto_2
    move-object v0, p0

    .line 265
    :cond_9
    :goto_3
    return-object v0
.end method

.method public final reportSurfaceSize(I)Landroid/util/Size;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getIntelligentCropHints(I)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSurfaceSize:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 25
    .line 26
    check-cast p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getDisplaySize()Landroid/graphics/Point;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    invoke-direct {p1, v2, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-direct {p0, v2, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->useWallpaperBitmap(ILjava/util/function/Consumer;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    new-instance p0, Landroid/util/Size;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    .line 92
    .line 93
    .line 94
    return-object p0
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
    iput p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

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

.method public final useWallpaperBitmap(ILjava/util/function/Consumer;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "useWallpaperBitmap: release 0x"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "useWallpaperBitmap: w="

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "useWallpaperBitmap: mode is missing on which. which="

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    and-int/lit8 v4, p1, 0x3c

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v6, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    const/16 v2, 0x10

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x1

    .line 48
    if-ne v4, v2, :cond_1

    .line 49
    .line 50
    move v2, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v2, v5

    .line 53
    :goto_0
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    .line 60
    :goto_1
    if-nez v7, :cond_d

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->loadBitmap(I)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_3

    .line 71
    .line 72
    iget-object v8, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 73
    .line 74
    check-cast v8, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    iget-object v8, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v8, v7, v6}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->fitToScreen(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    :cond_3
    if-eqz v2, :cond_4

    .line 89
    .line 90
    iput-object v7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    iput-object v7, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    .line 95
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 98
    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    if-eqz v7, :cond_a

    .line 102
    .line 103
    iget-object v8, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", h="

    .line 118
    .line 119
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 137
    .line 138
    invoke-virtual {v1, v7}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDimensions:Landroid/graphics/Rect;

    .line 145
    .line 146
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-virtual {v1, v5, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    move v1, v6

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move v1, v5

    .line 172
    :goto_3
    if-eqz v1, :cond_6

    .line 173
    .line 174
    or-int/lit8 v1, v4, 0x1

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    move v1, p1

    .line 178
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    .line 189
    .line 190
    if-nez v1, :cond_d

    .line 191
    .line 192
    invoke-virtual {p0, v7, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->createDownScaledSourceBitmap(Landroid/graphics/Bitmap;I)Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$DownScaledSourceBitmap;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {p1, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_7

    .line 201
    .line 202
    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_7

    .line 207
    .line 208
    move v5, v6

    .line 209
    :cond_7
    if-eqz v5, :cond_8

    .line 210
    .line 211
    or-int/lit8 p1, v4, 0x1

    .line 212
    .line 213
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    .line 214
    .line 215
    if-nez v1, :cond_9

    .line 216
    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :catchall_0
    move-exception p0

    .line 226
    goto/16 :goto_8

    .line 227
    .line 228
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 237
    .line 238
    const-string/jumbo v8, "useWallpaperBitmap: Can\'t get bitmap"

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsWcgContent:Z

    .line 245
    .line 246
    invoke-static {p1, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_b

    .line 251
    .line 252
    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    move v5, v6

    .line 259
    :cond_b
    if-eqz v5, :cond_c

    .line 260
    .line 261
    or-int/lit8 p1, v4, 0x1

    .line 262
    .line 263
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDownScaledSourceBitmapSet:Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    :cond_d
    :goto_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz p2, :cond_e

    .line 274
    .line 275
    invoke-interface {p2, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 279
    .line 280
    monitor-enter p1

    .line 281
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    if-nez p2, :cond_13

    .line 288
    .line 289
    if-eqz v7, :cond_13

    .line 290
    .line 291
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    .line 292
    .line 293
    if-nez v1, :cond_12

    .line 294
    .line 295
    iget-object v1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 303
    .line 304
    if-eqz v0, :cond_f

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    goto :goto_6

    .line 315
    :cond_f
    const-string v0, "null"

    .line 316
    .line 317
    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v0, " , "

    .line 321
    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 326
    .line 327
    if-eqz v0, :cond_10

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    goto :goto_7

    .line 338
    :cond_10
    const-string v0, "null"

    .line 339
    .line 340
    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v0, ", refCount="

    .line 344
    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 359
    .line 360
    if-eqz p2, :cond_11

    .line 361
    .line 362
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    .line 364
    .line 365
    :cond_11
    iget-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 366
    .line 367
    if-eqz p2, :cond_12

    .line 368
    .line 369
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    .line 371
    .line 372
    :cond_12
    const/4 p2, 0x0

    .line 373
    iput-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 374
    .line 375
    iput-object p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mSubBitmap:Landroid/graphics/Bitmap;

    .line 376
    .line 377
    :cond_13
    monitor-exit p1

    .line 378
    return-void

    .line 379
    :catchall_1
    move-exception p0

    .line 380
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    throw p0

    .line 382
    :goto_8
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    throw p0
.end method
