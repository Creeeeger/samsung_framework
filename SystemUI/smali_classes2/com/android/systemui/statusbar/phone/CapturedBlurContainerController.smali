.class public final Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

.field public mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

.field public final mBouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

.field public final mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

.field public mIsBouncerShowing:Z

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPanelBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

.field public mPrevWallpaper:Landroid/graphics/Bitmap;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSizePoint:Landroid/graphics/Point;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    .line 20
    .line 21
    new-instance p1, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object p6

    .line 27
    invoke-direct {p1, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mMainHandler:Landroid/os/Handler;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsBouncerShowing:Z

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 38
    .line 39
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPanelBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 40
    .line 41
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/blur/QSColorCurve;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 53
    .line 54
    new-instance p1, Lcom/android/systemui/blur/BouncerColorCurve;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/android/systemui/blur/BouncerColorCurve;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 62
    .line 63
    check-cast p1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 64
    .line 65
    new-instance p2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v4

    .line 20
    :goto_0
    if-nez v2, :cond_1a

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    .line 25
    .line 26
    iget-boolean v2, v2, Lcom/android/systemui/blur/SecQpBlurController;->mIsWakingUp:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    sget-object v2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_11

    .line 35
    .line 36
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v5, 0x0

    .line 43
    const/high16 v6, 0x437f0000    # 255.0f

    .line 44
    .line 45
    const/high16 v7, 0x3f800000    # 1.0f

    .line 46
    .line 47
    const-string v8, "CapturedBlurContainerController"

    .line 48
    .line 49
    const/4 v9, 0x2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    sget-object v2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    .line 53
    .line 54
    if-ne v1, v2, :cond_2

    .line 55
    .line 56
    const-string v2, "getShadeScreenshot() SHADE WM screenshot"

    .line 57
    .line 58
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->getWMScreenshot()Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperAppliedOnLock(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    const-string v2, "getLiveWallpaperScreenshot() isExternalLiveWallpaper WM screenshot"

    .line 78
    .line 79
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->getWMScreenshot()Landroid/graphics/Bitmap;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 89
    .line 90
    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 91
    .line 92
    iget-object v10, v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    if-eqz v10, :cond_4

    .line 96
    .line 97
    invoke-interface {v10}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getCapturedWallpaper()Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object v10, v11

    .line 103
    :goto_1
    if-nez v10, :cond_5

    .line 104
    .line 105
    const-string v10, "Try to get wallpaper bitmap"

    .line 106
    .line 107
    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    if-nez v10, :cond_5

    .line 115
    .line 116
    const-string v2, "Wallpaper capture failed."

    .line 117
    .line 118
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-object v2, v11

    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v11, "getNormalWallpaperScreenShot() type == "

    .line 127
    .line 128
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    div-int/2addr v2, v9

    .line 146
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    div-int/2addr v11, v9

    .line 151
    invoke-virtual {v10, v2, v11}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    ushr-int/lit8 v2, v2, 0x18

    .line 160
    .line 161
    int-to-float v2, v2

    .line 162
    mul-float/2addr v2, v7

    .line 163
    div-float/2addr v2, v6

    .line 164
    cmpl-float v2, v2, v5

    .line 165
    .line 166
    if-nez v2, :cond_6

    .line 167
    .line 168
    move v2, v3

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move v2, v4

    .line 171
    :goto_2
    if-eqz v2, :cond_7

    .line 172
    .line 173
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPrevWallpaper:Landroid/graphics/Bitmap;

    .line 174
    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    move-object v10, v2

    .line 178
    :cond_7
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 185
    .line 186
    check-cast v2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    iget-object v11, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 197
    .line 198
    check-cast v11, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 199
    .line 200
    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    invoke-static {v10, v2, v11}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    :cond_8
    move-object v11, v10

    .line 213
    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPrevWallpaper:Landroid/graphics/Bitmap;

    .line 214
    .line 215
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 216
    .line 217
    if-nez v2, :cond_c

    .line 218
    .line 219
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 220
    .line 221
    invoke-virtual {v2, v4}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_c

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget v10, v2, Landroid/content/res/Configuration;->orientation:I

    .line 240
    .line 241
    if-ne v10, v3, :cond_9

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_9
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 245
    .line 246
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eq v2, v3, :cond_b

    .line 251
    .line 252
    const/4 v10, 0x3

    .line 253
    if-eq v2, v10, :cond_a

    .line 254
    .line 255
    move v2, v4

    .line 256
    goto :goto_3

    .line 257
    :cond_a
    const/16 v2, 0x5a

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_b
    const/16 v2, 0x10e

    .line 261
    .line 262
    :goto_3
    new-instance v10, Landroid/graphics/Matrix;

    .line 263
    .line 264
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .line 266
    .line 267
    int-to-float v2, v2

    .line 268
    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 269
    .line 270
    .line 271
    const/4 v12, 0x0

    .line 272
    const/4 v13, 0x0

    .line 273
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 278
    .line 279
    .line 280
    move-result v15

    .line 281
    const/16 v17, 0x1

    .line 282
    .line 283
    move-object/from16 v16, v10

    .line 284
    .line 285
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    :cond_c
    :goto_4
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    div-int/lit8 v2, v2, 0x5

    .line 294
    .line 295
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    div-int/lit8 v10, v10, 0x5

    .line 300
    .line 301
    invoke-static {v11, v2, v10, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    :goto_5
    if-nez v2, :cond_d

    .line 306
    .line 307
    return-void

    .line 308
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string/jumbo v11, "setBlurEffectOnBitmap : "

    .line 311
    .line 312
    .line 313
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    .line 327
    .line 328
    sget-object v8, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;->$SwitchMap$com$android$systemui$statusbar$phone$CapturedBlurContainerController$BlurType:[I

    .line 329
    .line 330
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    aget v1, v8, v1

    .line 335
    .line 336
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 337
    .line 338
    if-eq v1, v9, :cond_15

    .line 339
    .line 340
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 341
    .line 342
    invoke-virtual {v1, v7}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    .line 343
    .line 344
    .line 345
    iget v7, v1, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 346
    .line 347
    invoke-virtual {v8, v7}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 348
    .line 349
    .line 350
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 351
    .line 352
    if-eqz v7, :cond_e

    .line 353
    .line 354
    invoke-virtual {v7}, Lcom/android/systemui/blur/SecQpBlurController$2;->hasCustomColorForPanelBG()Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-eqz v7, :cond_e

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_e
    move v3, v4

    .line 362
    :goto_6
    if-eqz v3, :cond_f

    .line 363
    .line 364
    iget v4, v1, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_f
    move v4, v5

    .line 368
    :goto_7
    invoke-virtual {v8, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 369
    .line 370
    .line 371
    if-eqz v3, :cond_10

    .line 372
    .line 373
    move v4, v5

    .line 374
    goto :goto_8

    .line 375
    :cond_10
    iget v4, v1, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 376
    .line 377
    :goto_8
    invoke-virtual {v8, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 378
    .line 379
    .line 380
    if-eqz v3, :cond_11

    .line 381
    .line 382
    move v4, v5

    .line 383
    goto :goto_9

    .line 384
    :cond_11
    iget v4, v1, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 385
    .line 386
    :goto_9
    invoke-virtual {v8, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 387
    .line 388
    .line 389
    if-eqz v3, :cond_12

    .line 390
    .line 391
    move v4, v6

    .line 392
    goto :goto_a

    .line 393
    :cond_12
    iget v4, v1, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 394
    .line 395
    :goto_a
    invoke-virtual {v8, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 396
    .line 397
    .line 398
    if-eqz v3, :cond_13

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_13
    iget v5, v1, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 402
    .line 403
    :goto_b
    invoke-virtual {v8, v5}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 404
    .line 405
    .line 406
    if-eqz v3, :cond_14

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_14
    iget v6, v1, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 410
    .line 411
    :goto_c
    invoke-virtual {v8, v6}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 412
    .line 413
    .line 414
    goto :goto_10

    .line 415
    :cond_15
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 416
    .line 417
    if-eqz v1, :cond_19

    .line 418
    .line 419
    const-class v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 420
    .line 421
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 426
    .line 427
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-eqz v1, :cond_16

    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    xor-int/2addr v1, v3

    .line 444
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    goto :goto_d

    .line 449
    :cond_16
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    :goto_d
    if-nez v1, :cond_17

    .line 458
    .line 459
    goto :goto_e

    .line 460
    :cond_17
    const-wide/16 v9, 0x200

    .line 461
    .line 462
    invoke-virtual {v1, v9, v10}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-ne v1, v3, :cond_18

    .line 471
    .line 472
    goto :goto_f

    .line 473
    :cond_18
    :goto_e
    move v3, v4

    .line 474
    goto :goto_f

    .line 475
    :cond_19
    const-string v1, "background"

    .line 476
    .line 477
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    :goto_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    .line 482
    .line 483
    invoke-virtual {v1, v7, v3}, Lcom/android/systemui/blur/BouncerColorCurve;->setFraction(FZ)V

    .line 484
    .line 485
    .line 486
    iget v3, v1, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    .line 487
    .line 488
    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v8, v5}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 492
    .line 493
    .line 494
    iget v3, v1, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    .line 495
    .line 496
    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 497
    .line 498
    .line 499
    iget v3, v1, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    .line 500
    .line 501
    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 502
    .line 503
    .line 504
    iget v3, v1, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    .line 505
    .line 506
    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 507
    .line 508
    .line 509
    iget v3, v1, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    .line 510
    .line 511
    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 512
    .line 513
    .line 514
    iget v1, v1, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    .line 515
    .line 516
    invoke-virtual {v8, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 517
    .line 518
    .line 519
    :goto_10
    invoke-virtual {v8, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 524
    .line 525
    check-cast v2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 526
    .line 527
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 528
    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-direct {v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    .line 542
    .line 543
    :cond_1a
    :goto_11
    return-void
.end method

.method public final getWMScreenshot()Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    new-instance v4, Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v4, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "window"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/WindowManager;

    .line 19
    .line 20
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne v2, v3, :cond_0

    .line 44
    .line 45
    move v0, v3

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    .line 47
    .line 48
    iget v2, p0, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    iget v3, p0, Landroid/graphics/Point;->y:I

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_0
    move v5, v2

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 67
    .line 68
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 69
    .line 70
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 76
    .line 77
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 78
    .line 79
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    :goto_1
    move v6, p0

    .line 84
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/16 v2, 0x7d0

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x1

    .line 94
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public final onViewAttached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateContainerVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPanelBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpl-float v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 27
    .line 28
    check-cast p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
