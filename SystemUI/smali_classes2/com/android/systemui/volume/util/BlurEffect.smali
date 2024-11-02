.class public final Lcom/android/systemui/volume/util/BlurEffect;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final semWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

.field public final statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/util/BlurEffect$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/BlurEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/util/BlurEffect;->context:Landroid/content/Context;

    .line 5
    .line 6
    check-cast p2, Lcom/android/systemui/volume/VolumeDependency;

    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/volume/util/BlurEffect;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 17
    .line 18
    const-class p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/volume/util/BlurEffect;->semWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    .line 27
    .line 28
    return-void
.end method

.method public static setRealTimeBlur(FILandroid/view/View;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x100

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/16 v0, 0x1e

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x4

    .line 71
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    invoke-virtual {p2, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final setCapturedBlur(Landroid/widget/ImageView;Ljava/util/function/Supplier;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v5}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, [I

    .line 38
    .line 39
    iget-object v6, v0, Lcom/android/systemui/volume/util/BlurEffect;->context:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v8, 0x1

    .line 46
    const/4 v9, 0x0

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_1
    const v10, 0x105025a

    .line 52
    .line 53
    .line 54
    invoke-static {v10, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const v11, 0x7f07154f

    .line 59
    .line 60
    .line 61
    invoke-static {v11, v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    iget-object v12, v0, Lcom/android/systemui/volume/util/BlurEffect;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 66
    .line 67
    invoke-virtual {v12}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 76
    .line 77
    sget v13, Lcom/android/systemui/volume/util/SettingsHelperExt;->$r8$clinit:I

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-nez v13, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v2, v9

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    :goto_0
    move v2, v8

    .line 95
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-nez v13, :cond_5

    .line 100
    .line 101
    invoke-static {v6}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v13, v9

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    :goto_2
    move v13, v8

    .line 111
    :goto_3
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    const/4 v15, 0x3

    .line 116
    if-ne v14, v15, :cond_8

    .line 117
    .line 118
    aget v7, v3, v8

    .line 119
    .line 120
    invoke-static {v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    aget v3, v3, v9

    .line 125
    .line 126
    sub-int/2addr v14, v3

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    sub-int/2addr v14, v3

    .line 132
    add-int/2addr v14, v12

    .line 133
    add-int/2addr v14, v11

    .line 134
    if-nez v13, :cond_6

    .line 135
    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    :cond_6
    move v10, v9

    .line 139
    :cond_7
    add-int/2addr v14, v10

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    add-int/2addr v2, v7

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    goto :goto_5

    .line 150
    :cond_8
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-ne v7, v8, :cond_b

    .line 155
    .line 156
    invoke-static {v6}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    sub-int/2addr v7, v11

    .line 165
    aget v11, v3, v8

    .line 166
    .line 167
    sub-int/2addr v7, v11

    .line 168
    if-nez v13, :cond_a

    .line 169
    .line 170
    if-eqz v2, :cond_9

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_9
    move v10, v9

    .line 174
    :cond_a
    :goto_4
    add-int/2addr v7, v10

    .line 175
    aget v14, v3, v9

    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    add-int/2addr v2, v7

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    goto :goto_5

    .line 187
    :cond_b
    aget v7, v3, v9

    .line 188
    .line 189
    aget v14, v3, v8

    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    add-int/2addr v2, v7

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    :goto_5
    add-int/2addr v3, v14

    .line 201
    new-instance v10, Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-direct {v10, v7, v14, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_c

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    goto :goto_6

    .line 217
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    :goto_6
    move/from16 v20, v2

    .line 222
    .line 223
    invoke-static {v6}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_d

    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    goto :goto_7

    .line 234
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    :goto_7
    move/from16 v21, v2

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/systemui/volume/util/BlurEffect;->semWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-nez v0, :cond_e

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_e
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 257
    .line 258
    .line 259
    move-result v16

    .line 260
    const/16 v17, 0x7f4

    .line 261
    .line 262
    const/16 v18, 0x1

    .line 263
    .line 264
    const/16 v22, 0x1

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    mul-int/lit8 v23, v0, 0x5a

    .line 271
    .line 272
    const/16 v24, 0x1

    .line 273
    .line 274
    move-object/from16 v19, v10

    .line 275
    .line 276
    invoke-virtual/range {v15 .. v24}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    .line 277
    .line 278
    .line 279
    move-result-object v25

    .line 280
    if-nez v25, :cond_f

    .line 281
    .line 282
    :goto_8
    move-object v0, v5

    .line 283
    goto :goto_9

    .line 284
    :cond_f
    const/16 v26, 0x0

    .line 285
    .line 286
    const/16 v27, 0x0

    .line 287
    .line 288
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    .line 289
    .line 290
    .line 291
    move-result v28

    .line 292
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    .line 293
    .line 294
    .line 295
    move-result v29

    .line 296
    new-instance v0, Landroid/graphics/Matrix;

    .line 297
    .line 298
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    mul-int/lit8 v2, v2, 0x5a

    .line 313
    .line 314
    rsub-int v2, v2, 0x168

    .line 315
    .line 316
    int-to-float v2, v2

    .line 317
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 318
    .line 319
    .line 320
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 321
    .line 322
    const/16 v31, 0x1

    .line 323
    .line 324
    move-object/from16 v30, v0

    .line 325
    .line 326
    invoke-static/range {v25 .. v31}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_9
    if-nez v0, :cond_10

    .line 331
    .line 332
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v5}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :cond_10
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 345
    .line 346
    .line 347
    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    .line 348
    .line 349
    invoke-direct {v2, v8}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 350
    .line 351
    .line 352
    const/16 v3, 0x100

    .line 353
    .line 354
    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    const/16 v3, 0x1e

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method
