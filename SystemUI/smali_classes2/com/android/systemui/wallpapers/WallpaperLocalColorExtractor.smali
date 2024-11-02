.class public final Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field static final SMALL_SIDE:I = 0x80


# instance fields
.field public mBitmapHeight:I

.field public mBitmapWidth:I

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public final mLock:Ljava/lang/Object;

.field public final mLongExecutor:Ljava/util/concurrent/Executor;

.field public mMiniBitmap:Landroid/graphics/Bitmap;

.field public mPages:I

.field public final mPendingRegions:Ljava/util/List;

.field public final mProcessedRegions:Ljava/util/Set;

.field public final mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    .line 12
    .line 13
    iput v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public createMiniBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public getLocalWallpaperColors(Landroid/graphics/Rect;)Landroid/app/WallpaperColors;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p0, v0, v1, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 10
    .line 11
    check-cast p0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final processColorsInternal()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    .line 14
    .line 15
    if-ltz v0, :cond_a

    .line 16
    .line 17
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    .line 18
    .line 19
    if-ltz v0, :cond_a

    .line 20
    .line 21
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    const-string v0, "WallpaperLocalColorExtractor#processColorsInternal"

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ge v1, v3, :cond_9

    .line 48
    .line 49
    check-cast v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/graphics/RectF;

    .line 56
    .line 57
    iget v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    .line 58
    .line 59
    int-to-float v3, v3

    .line 60
    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    .line 62
    div-float v3, v4, v3

    .line 63
    .line 64
    iget v5, v2, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    rem-float/2addr v5, v3

    .line 67
    div-float/2addr v5, v3

    .line 68
    iget v6, v2, Landroid/graphics/RectF;->right:F

    .line 69
    .line 70
    rem-float/2addr v6, v3

    .line 71
    div-float/2addr v6, v3

    .line 72
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    div-float/2addr v7, v3

    .line 77
    float-to-double v7, v7

    .line 78
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    double-to-int v3, v7

    .line 83
    iget v7, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    if-lez v7, :cond_4

    .line 87
    .line 88
    iget v7, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    .line 89
    .line 90
    if-gtz v7, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    new-instance v7, Landroid/graphics/RectF;

    .line 94
    .line 95
    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 96
    .line 97
    .line 98
    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    .line 99
    .line 100
    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 101
    .line 102
    iget v9, v2, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 105
    .line 106
    iget v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    .line 107
    .line 108
    int-to-float v9, v9

    .line 109
    iget v10, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    .line 110
    .line 111
    int-to-float v10, v10

    .line 112
    div-float/2addr v9, v10

    .line 113
    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    iget v10, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    .line 118
    .line 119
    int-to-float v10, v10

    .line 120
    mul-float/2addr v10, v9

    .line 121
    iget v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    .line 122
    .line 123
    if-lez v9, :cond_3

    .line 124
    .line 125
    int-to-float v9, v9

    .line 126
    div-float/2addr v10, v9

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move v10, v4

    .line 129
    :goto_1
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    sub-float v10, v4, v9

    .line 134
    .line 135
    iget v11, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    .line 136
    .line 137
    add-int/lit8 v11, v11, -0x1

    .line 138
    .line 139
    int-to-float v11, v11

    .line 140
    div-float/2addr v10, v11

    .line 141
    mul-float/2addr v5, v9

    .line 142
    int-to-float v3, v3

    .line 143
    mul-float/2addr v3, v10

    .line 144
    add-float/2addr v5, v3

    .line 145
    const/4 v10, 0x0

    .line 146
    invoke-static {v5, v10, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iput v5, v7, Landroid/graphics/RectF;->left:F

    .line 151
    .line 152
    mul-float/2addr v6, v9

    .line 153
    add-float/2addr v6, v3

    .line 154
    invoke-static {v6, v10, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    iput v3, v7, Landroid/graphics/RectF;->right:F

    .line 159
    .line 160
    iget v5, v7, Landroid/graphics/RectF;->left:F

    .line 161
    .line 162
    cmpl-float v3, v5, v3

    .line 163
    .line 164
    if-lez v3, :cond_5

    .line 165
    .line 166
    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 167
    .line 168
    iput v4, v7, Landroid/graphics/RectF;->right:F

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    :goto_2
    const-string v3, "WallpaperLocalColorExtractor"

    .line 172
    .line 173
    const-string v4, "Trying to extract colors with invalid display dimensions"

    .line 174
    .line 175
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-object v7, v8

    .line 179
    :cond_5
    :goto_3
    if-eqz v7, :cond_8

    .line 180
    .line 181
    sget-object v3, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 182
    .line 183
    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_6

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    .line 191
    .line 192
    iget v4, v7, Landroid/graphics/RectF;->left:F

    .line 193
    .line 194
    iget-object v5, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    int-to-float v5, v5

    .line 201
    mul-float/2addr v4, v5

    .line 202
    float-to-double v4, v4

    .line 203
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    double-to-int v4, v4

    .line 208
    iget v5, v7, Landroid/graphics/RectF;->top:F

    .line 209
    .line 210
    iget-object v6, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 211
    .line 212
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    int-to-float v6, v6

    .line 217
    mul-float/2addr v5, v6

    .line 218
    float-to-double v5, v5

    .line 219
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    double-to-int v5, v5

    .line 224
    iget v6, v7, Landroid/graphics/RectF;->right:F

    .line 225
    .line 226
    iget-object v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 227
    .line 228
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    int-to-float v9, v9

    .line 233
    mul-float/2addr v6, v9

    .line 234
    float-to-double v9, v6

    .line 235
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 236
    .line 237
    .line 238
    move-result-wide v9

    .line 239
    double-to-int v6, v9

    .line 240
    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 241
    .line 242
    iget-object v9, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 243
    .line 244
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    int-to-float v9, v9

    .line 249
    mul-float/2addr v7, v9

    .line 250
    float-to-double v9, v7

    .line 251
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 252
    .line 253
    .line 254
    move-result-wide v9

    .line 255
    double-to-int v7, v9

    .line 256
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_7

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->getLocalWallpaperColors(Landroid/graphics/Rect;)Landroid/app/WallpaperColors;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 271
    .line 272
    check-cast v3, Landroid/util/ArraySet;

    .line 273
    .line 274
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    add-int/lit8 v1, v1, 0x1

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    .line 288
    .line 289
    check-cast v2, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 295
    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;

    .line 298
    .line 299
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    sget v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    .line 305
    .line 306
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 307
    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :catch_0
    move-exception v0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .line 324
    .line 325
    :cond_a
    :goto_5
    return-void
.end method
