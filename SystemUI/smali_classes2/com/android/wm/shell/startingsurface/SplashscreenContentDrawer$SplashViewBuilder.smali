.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mAllowHandleSolidColor:Z

.field public final mContext:Landroid/content/Context;

.field public mDisplayId:I

.field public mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

.field public mFinalIconSize:I

.field public mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field public mSuggestType:I

.field public mThemeColor:I

.field public mUiThreadInitTask:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 7
    .line 8
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final build(Z)Landroid/window/SplashScreenView;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 4
    .line 5
    const/4 v4, 0x3

    .line 6
    const-string v5, "ShellStartingWindow"

    .line 7
    .line 8
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 9
    .line 10
    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-wide/16 v8, 0x20

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    iget-object v11, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 16
    .line 17
    if-eq v1, v4, :cond_14

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    .line 22
    goto/16 :goto_9

    .line 23
    .line 24
    :cond_0
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mDisplayId:I

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-object v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-boolean v12, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    .line 37
    .line 38
    if-eqz v12, :cond_1

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v4, v1, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v1, v10

    .line 53
    :goto_0
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const-string/jumbo v1, "use preloaded icon"

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    .line 62
    .line 63
    iget v4, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconSize:I

    .line 64
    .line 65
    iput v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 73
    .line 74
    iget-object v4, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    const v12, 0x3f99999a    # 1.2f

    .line 77
    .line 78
    .line 79
    if-eqz v4, :cond_6

    .line 80
    .line 81
    iget v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iget v13, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 86
    .line 87
    if-ne v1, v13, :cond_4

    .line 88
    .line 89
    :cond_3
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 90
    .line 91
    int-to-float v1, v1

    .line 92
    mul-float/2addr v1, v12

    .line 93
    float-to-int v1, v1

    .line 94
    iput v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v0, v4, v10, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 97
    .line 98
    .line 99
    :goto_1
    move-object/from16 v19, v5

    .line 100
    .line 101
    move-object/from16 v20, v6

    .line 102
    .line 103
    move-object/from16 v18, v7

    .line 104
    .line 105
    move v5, v10

    .line 106
    :cond_5
    const/4 v3, 0x1

    .line 107
    goto/16 :goto_a

    .line 108
    .line 109
    :cond_6
    iget v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 110
    .line 111
    int-to-float v1, v1

    .line 112
    iget v4, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 113
    .line 114
    int-to-float v4, v4

    .line 115
    div-float/2addr v1, v4

    .line 116
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 125
    .line 126
    int-to-float v13, v4

    .line 127
    mul-float/2addr v1, v13

    .line 128
    mul-float/2addr v1, v12

    .line 129
    const/high16 v13, 0x3f000000    # 0.5f

    .line 130
    .line 131
    add-float/2addr v1, v13

    .line 132
    float-to-int v1, v1

    .line 133
    const-string v14, "getIcon"

    .line 134
    .line 135
    invoke-static {v8, v9, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v14, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    .line 139
    .line 140
    const/4 v15, 0x2

    .line 141
    iget-object v12, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHighResIconProvider:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;

    .line 142
    .line 143
    if-eqz v14, :cond_7

    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-nez v14, :cond_7

    .line 150
    .line 151
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v6, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    goto :goto_2

    .line 160
    :cond_7
    iget v14, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mDisplayId:I

    .line 161
    .line 162
    if-ne v14, v15, :cond_8

    .line 163
    .line 164
    invoke-virtual {v12, v6, v4, v1, v14}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->getIcon(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    goto :goto_2

    .line 169
    :cond_8
    const/4 v14, -0x1

    .line 170
    invoke-virtual {v12, v6, v4, v1, v14}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->getIcon(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 175
    .line 176
    .line 177
    instance-of v14, v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 178
    .line 179
    if-nez v14, :cond_9

    .line 180
    .line 181
    move-object/from16 v19, v5

    .line 182
    .line 183
    move-object/from16 v20, v6

    .line 184
    .line 185
    move-object/from16 v18, v7

    .line 186
    .line 187
    move-wide v2, v8

    .line 188
    move v5, v10

    .line 189
    goto/16 :goto_8

    .line 190
    .line 191
    :cond_9
    const-string/jumbo v14, "processAdaptiveIcon"

    .line 192
    .line 193
    .line 194
    invoke-static {v8, v9, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    move-object v14, v4

    .line 198
    check-cast v14, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 199
    .line 200
    invoke-virtual {v14}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    iget-object v8, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    .line 205
    .line 206
    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    .line 209
    .line 210
    .line 211
    move-result v17

    .line 212
    iget v13, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mLastPackageContextConfigHash:I

    .line 213
    .line 214
    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    .line 215
    .line 216
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    check-cast v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    .line 221
    .line 222
    mul-int/lit8 v17, v17, 0x1f

    .line 223
    .line 224
    add-int v13, v17, v13

    .line 225
    .line 226
    filled-new-array {v10}, [I

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    if-eqz v2, :cond_a

    .line 231
    .line 232
    iget-object v8, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 233
    .line 234
    invoke-static {v8, v13, v15}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->getCache([Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;I[I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    check-cast v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 239
    .line 240
    if-eqz v8, :cond_b

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_a
    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    .line 244
    .line 245
    invoke-direct {v2, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;-><init>(I)V

    .line 246
    .line 247
    .line 248
    iget-object v8, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    .line 249
    .line 250
    invoke-virtual {v8, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    :cond_b
    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    .line 254
    .line 255
    const/4 v9, 0x2

    .line 256
    invoke-direct {v8, v3, v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 257
    .line 258
    .line 259
    new-instance v9, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    .line 260
    .line 261
    invoke-virtual {v14}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    invoke-direct {v9, v14}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 266
    .line 267
    .line 268
    new-instance v14, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 269
    .line 270
    iget-object v8, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    .line 271
    .line 272
    invoke-interface {v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    .line 273
    .line 274
    .line 275
    move-result v20

    .line 276
    iget-object v9, v9, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    .line 277
    .line 278
    invoke-interface {v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    .line 279
    .line 280
    .line 281
    move-result v21

    .line 282
    invoke-interface {v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->isComplexColor()Z

    .line 283
    .line 284
    .line 285
    move-result v22

    .line 286
    invoke-interface {v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->isGrayscale()Z

    .line 287
    .line 288
    .line 289
    move-result v23

    .line 290
    invoke-interface {v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->passFilterRatio()F

    .line 291
    .line 292
    .line 293
    move-result v24

    .line 294
    move-object/from16 v18, v14

    .line 295
    .line 296
    move/from16 v19, v13

    .line 297
    .line 298
    invoke-direct/range {v18 .. v24}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;-><init>(IIIZZF)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    .line 302
    .line 303
    aget v8, v15, v10

    .line 304
    .line 305
    aput-object v14, v2, v8

    .line 306
    .line 307
    move-object v8, v14

    .line 308
    :goto_3
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 309
    .line 310
    iget v9, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mBgColor:I

    .line 311
    .line 312
    iget v13, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgColor:I

    .line 313
    .line 314
    iget-boolean v14, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgComplex:Z

    .line 315
    .line 316
    if-eqz v2, :cond_d

    .line 317
    .line 318
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v15

    .line 334
    iget v10, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;->mReuseCount:I

    .line 335
    .line 336
    move-object/from16 v18, v7

    .line 337
    .line 338
    if-lez v10, :cond_c

    .line 339
    .line 340
    const/4 v10, 0x1

    .line 341
    goto :goto_4

    .line 342
    :cond_c
    const/4 v10, 0x0

    .line 343
    :goto_4
    iget v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 344
    .line 345
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    move-object/from16 v19, v5

    .line 354
    .line 355
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 356
    .line 357
    move-object/from16 v20, v6

    .line 358
    .line 359
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    filled-new-array {v2, v15, v6, v10, v7}, [Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    const v6, -0x4403dfe6

    .line 372
    .line 373
    .line 374
    const/16 v7, 0xf0

    .line 375
    .line 376
    const/4 v10, 0x0

    .line 377
    invoke-static {v5, v6, v7, v10, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_d
    move-object/from16 v19, v5

    .line 382
    .line 383
    move-object/from16 v20, v6

    .line 384
    .line 385
    move-object/from16 v18, v7

    .line 386
    .line 387
    :goto_5
    if-nez v14, :cond_11

    .line 388
    .line 389
    iget-object v2, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 390
    .line 391
    iget v2, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 392
    .line 393
    if-nez v2, :cond_11

    .line 394
    .line 395
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 396
    .line 397
    invoke-static {v2, v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisRgbSimilarInHsv(II)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-nez v2, :cond_e

    .line 402
    .line 403
    iget-boolean v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgGrayscale:Z

    .line 404
    .line 405
    if-eqz v2, :cond_11

    .line 406
    .line 407
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 408
    .line 409
    invoke-static {v2, v13}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisRgbSimilarInHsv(II)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-nez v2, :cond_11

    .line 414
    .line 415
    :cond_e
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 416
    .line 417
    if-eqz v2, :cond_f

    .line 418
    .line 419
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 420
    .line 421
    const v5, 0x74d3726b

    .line 422
    .line 423
    .line 424
    const/4 v6, 0x0

    .line 425
    const/4 v7, 0x0

    .line 426
    invoke-static {v2, v5, v7, v6, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :cond_f
    iget v2, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgNonTranslucentRatio:F

    .line 430
    .line 431
    const v5, 0x3ee38e39

    .line 432
    .line 433
    .line 434
    cmpg-float v2, v2, v5

    .line 435
    .line 436
    if-gez v2, :cond_10

    .line 437
    .line 438
    const v16, 0x3f99999a    # 1.2f

    .line 439
    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 443
    .line 444
    move/from16 v16, v2

    .line 445
    .line 446
    :goto_6
    iget v2, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 447
    .line 448
    int-to-float v2, v2

    .line 449
    mul-float v2, v2, v16

    .line 450
    .line 451
    const/high16 v5, 0x3f000000    # 0.5f

    .line 452
    .line 453
    add-float/2addr v2, v5

    .line 454
    float-to-int v2, v2

    .line 455
    iput v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 456
    .line 457
    iget-boolean v2, v12, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 458
    .line 459
    const/4 v5, 0x0

    .line 460
    invoke-virtual {v0, v3, v5, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_11
    const/4 v5, 0x0

    .line 465
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 466
    .line 467
    if-eqz v2, :cond_12

    .line 468
    .line 469
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 470
    .line 471
    const v3, 0x4cd0edba    # 1.0953877E8f

    .line 472
    .line 473
    .line 474
    const/4 v6, 0x0

    .line 475
    invoke-static {v2, v3, v5, v6, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :cond_12
    iget-boolean v2, v12, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 479
    .line 480
    invoke-virtual {v0, v4, v5, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 481
    .line 482
    .line 483
    :goto_7
    const-wide/16 v2, 0x20

    .line 484
    .line 485
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 486
    .line 487
    .line 488
    const/4 v10, 0x1

    .line 489
    :goto_8
    if-nez v10, :cond_5

    .line 490
    .line 491
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 492
    .line 493
    if-eqz v6, :cond_13

    .line 494
    .line 495
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 496
    .line 497
    const v7, 0x34f4b3e9

    .line 498
    .line 499
    .line 500
    const/4 v8, 0x0

    .line 501
    invoke-static {v6, v7, v5, v8, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_13
    const-string v6, "legacy_icon_factory"

    .line 505
    .line 506
    invoke-static {v2, v3, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 507
    .line 508
    .line 509
    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder$ShapeIconFactory;

    .line 510
    .line 511
    iget-object v7, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 512
    .line 513
    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 514
    .line 515
    invoke-direct {v6, v0, v7, v1, v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder$ShapeIconFactory;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;Landroid/content/Context;II)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6, v5, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 523
    .line 524
    .line 525
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 526
    .line 527
    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 528
    .line 529
    .line 530
    iget-boolean v1, v12, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    .line 531
    .line 532
    const/4 v3, 0x1

    .line 533
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 534
    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_14
    :goto_9
    move-object/from16 v19, v5

    .line 538
    .line 539
    move-object/from16 v20, v6

    .line 540
    .line 541
    move-object/from16 v18, v7

    .line 542
    .line 543
    move v5, v10

    .line 544
    const/4 v3, 0x1

    .line 545
    iput v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 546
    .line 547
    :goto_a
    iget-object v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHandler:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;

    .line 548
    .line 549
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    .line 553
    .line 554
    if-eqz p1, :cond_15

    .line 555
    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string/jumbo v3, "preload Icon "

    .line 559
    .line 560
    .line 561
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v3, v20

    .line 565
    .line 566
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    move-object/from16 v3, v19

    .line 576
    .line 577
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 581
    .line 582
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 583
    .line 584
    move-object/from16 v3, v18

    .line 585
    .line 586
    iput-object v3, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    .line 587
    .line 588
    iput v2, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconSize:I

    .line 589
    .line 590
    iput-object v0, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    .line 591
    .line 592
    const/4 v0, 0x1

    .line 593
    iput-boolean v0, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    .line 594
    .line 595
    iget-object v1, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mHandler:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;

    .line 596
    .line 597
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    sget v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->CLEAR_PREALOD_ICON_TIMEOUT_MILLIS:I

    .line 602
    .line 603
    int-to-long v2, v2

    .line 604
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 605
    .line 606
    .line 607
    const/4 v10, 0x0

    .line 608
    return-object v10

    .line 609
    :cond_15
    move-object/from16 v3, v18

    .line 610
    .line 611
    const/4 v10, 0x0

    .line 612
    const/4 v2, 0x0

    .line 613
    iput-boolean v2, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    .line 614
    .line 615
    iput-object v10, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    .line 616
    .line 617
    iput-object v10, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    .line 618
    .line 619
    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 620
    .line 621
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 622
    .line 623
    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    .line 624
    .line 625
    if-eqz v4, :cond_18

    .line 626
    .line 627
    array-length v6, v4

    .line 628
    if-lez v6, :cond_16

    .line 629
    .line 630
    aget-object v2, v4, v2

    .line 631
    .line 632
    goto :goto_b

    .line 633
    :cond_16
    move-object v2, v10

    .line 634
    :goto_b
    array-length v6, v4

    .line 635
    const/4 v7, 0x1

    .line 636
    if-le v6, v7, :cond_17

    .line 637
    .line 638
    aget-object v4, v4, v7

    .line 639
    .line 640
    move-object v10, v2

    .line 641
    move-object v2, v4

    .line 642
    goto :goto_c

    .line 643
    :cond_17
    move-object/from16 v25, v10

    .line 644
    .line 645
    move-object v10, v2

    .line 646
    move-object/from16 v2, v25

    .line 647
    .line 648
    goto :goto_c

    .line 649
    :cond_18
    move-object v2, v10

    .line 650
    :goto_c
    const-string v4, "fillViewWithIcon"

    .line 651
    .line 652
    const-wide/16 v6, 0x20

    .line 653
    .line 654
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 655
    .line 656
    .line 657
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 658
    .line 659
    iget-object v6, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 660
    .line 661
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    invoke-direct {v4, v3, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 666
    .line 667
    .line 668
    new-instance v3, Landroid/window/SplashScreenView$Builder;

    .line 669
    .line 670
    invoke-direct {v3, v4}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 671
    .line 672
    .line 673
    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 674
    .line 675
    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView$Builder;->setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 680
    .line 681
    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView$Builder;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    invoke-virtual {v3, v1}, Landroid/window/SplashScreenView$Builder;->setIconSize(I)Landroid/window/SplashScreenView$Builder;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView$Builder;->setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1, v10}, Landroid/window/SplashScreenView$Builder;->setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v1, v5}, Landroid/window/SplashScreenView$Builder;->setUiThreadInitConsumer(Ljava/util/function/Consumer;)Landroid/window/SplashScreenView$Builder;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iget-boolean v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mAllowHandleSolidColor:Z

    .line 702
    .line 703
    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView$Builder;->setAllowHandleSolidColor(Z)Landroid/window/SplashScreenView$Builder;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    iget v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 708
    .line 709
    iget-object v2, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 710
    .line 711
    const/4 v3, 0x1

    .line 712
    if-ne v0, v3, :cond_19

    .line 713
    .line 714
    iget-object v0, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    .line 715
    .line 716
    if-eqz v0, :cond_19

    .line 717
    .line 718
    iget v3, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    .line 719
    .line 720
    iget v4, v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    .line 721
    .line 722
    invoke-virtual {v1, v0, v3, v4}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 723
    .line 724
    .line 725
    :cond_19
    iget-object v0, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 726
    .line 727
    if-eqz v0, :cond_1a

    .line 728
    .line 729
    invoke-virtual {v1, v0}, Landroid/window/SplashScreenView$Builder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 730
    .line 731
    .line 732
    :cond_1a
    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    const-wide/16 v1, 0x20

    .line 737
    .line 738
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 739
    .line 740
    .line 741
    return-object v0
.end method

.method public final createIconDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget v3, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 6
    .line 7
    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 8
    .line 9
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 12
    .line 13
    move-object v1, p2

    .line 14
    move-object v2, p1

    .line 15
    move v5, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    filled-new-array {p2}, [Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_0
    iget-object p2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 27
    .line 28
    iget p2, p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 29
    .line 30
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 31
    .line 32
    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 33
    .line 34
    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconSize:I

    .line 35
    .line 36
    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    if-eq p2, v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v1, v0

    .line 46
    :goto_0
    instance-of v2, p1, Landroid/graphics/drawable/Animatable;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconAnimateListener;

    .line 51
    .line 52
    invoke-direct {p3, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconAnimateListener;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 61
    .line 62
    move-object v2, v1

    .line 63
    move-object v3, p1

    .line 64
    move v6, p3

    .line 65
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    .line 70
    .line 71
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable;

    .line 72
    .line 73
    invoke-direct {v3, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    move-object v2, v0

    .line 77
    move v6, p3

    .line 78
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/os/Handler;)V

    .line 79
    .line 80
    .line 81
    move-object p3, v0

    .line 82
    :goto_1
    move v0, v1

    .line 83
    move-object v1, p3

    .line 84
    :goto_2
    if-eqz v0, :cond_4

    .line 85
    .line 86
    new-instance p1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$MaskBackgroundDrawable;

    .line 87
    .line 88
    invoke-direct {p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$MaskBackgroundDrawable;-><init>(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    const/4 p1, 0x0

    .line 93
    :goto_3
    filled-new-array {v1, p1}, [Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    :goto_4
    return-void
.end method
